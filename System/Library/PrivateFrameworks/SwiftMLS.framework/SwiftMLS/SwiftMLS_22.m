Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RCSFileAttachmentCrypto.RCSFileDecryption.decryptCiphertext()()
{
  v2 = v0;
  v3 = type metadata accessor for RCSFileAttachmentCrypto.RCSFileDecryption(0);
  v4 = v3[20];
  v5 = *(v0 + v4);
  if (v5)
  {
    v6 = *(v0 + v4);
    v7 = sub_26C00A74C();
    *(v7 + 16) = v5;
    bzero((v7 + 32), v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v37 = v7;
  v8 = *(v0 + v3[18]);
  v9 = sub_26C00A88C();
  v10 = [v8 setProperty:v9 forKey:*MEMORY[0x277CBE748]];

  if (!v10)
  {
    sub_26BF7EDDC();
    swift_allocError();
    *v12 = 7;
    swift_willThrow();
    goto LABEL_9;
  }

  sub_26BFA4E10(0);
  if (v1)
  {
LABEL_9:

LABEL_10:
    sub_26BFA51B0(v2);
    return;
  }

  v11 = 0;
  if ([v8 hasBytesAvailable])
  {
    v36 = v8;
    while (1)
    {
      v13 = (v2 + v3[8]);
      if (v13[1])
      {
        break;
      }

      v14 = *v13;
      if (v11 >= v14)
      {
        goto LABEL_43;
      }

      if (v11 < 0)
      {
        __break(1u);
LABEL_47:
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
        break;
      }

      v15 = v14 >= v11;
      v16 = v14 - v11;
      if (!v15)
      {
        goto LABEL_47;
      }

      if (v16 >= v5)
      {
        v17 = v5;
      }

      else
      {
        v17 = v16;
      }

      v18 = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_26BE29A50(0, *(v37 + 16), 0, v37);
      }

      v19 = [v8 read:v18 + 32 maxLength:v17];
      if (v19 != v5)
      {
        v20 = v5 - v19;
        if (__OFSUB__(v5, v19))
        {
          goto LABEL_49;
        }

        if (v20)
        {
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          v21 = *(v18 + 2);
          v22 = v21 - v20;
          if (v21 < v20)
          {
            goto LABEL_52;
          }

          if ((v21 - v20) < 0)
          {
            goto LABEL_53;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v22 > *(v18 + 3) >> 1)
          {
            if (v21 <= v22)
            {
              v24 = v21 - v20;
            }

            else
            {
              v24 = v21;
            }

            v18 = sub_26BE29A50(isUniquelyReferenced_nonNull_native, v24, 1, v18);
          }

          memmove(&v18[v22 + 32], &v18[v21 + 32], *(v18 + 2) - v21);
          *(v18 + 2) -= v20;
          v8 = v36;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_26BE588C0(v18);
      }

      v25 = *(v18 + 2);
      v26 = v2 + v3[14];
      sub_26C009DBC();
      v37 = v18;
      v27 = *(v18 + 2);
      [*(v2 + v3[19]) write:v18 + 32 maxLength:v27];
      v28 = __OFADD__(v11, v27);
      v11 += v27;
      if (v28)
      {
        goto LABEL_48;
      }

      if (v27 < v5)
      {
        v29 = *(v18 + 2);
        v30 = v5 - v29;
        if ((v5 - v29) < 0)
        {
          goto LABEL_50;
        }

        v31 = MEMORY[0x277D84F90];
        if (v5 != v29)
        {
          v32 = sub_26C00A74C();
          *(v32 + 16) = v30;
          bzero((v32 + 32), v30);
          v31 = v32;
        }

        sub_26BE29964(v31);
      }

      if (([v8 hasBytesAvailable] & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
    goto LABEL_55;
  }

LABEL_43:
  v33 = (v2 + v3[8]);
  if ((v33[1] & 1) == 0)
  {
    v34 = *v33;

    if (v11 != v34)
    {
      sub_26BF7EDDC();
      swift_allocError();
      *v35 = 11;
      swift_willThrow();
    }

    goto LABEL_10;
  }

LABEL_55:
  __break(1u);
}

uint64_t sub_26BFA0BD4()
{
  result = sub_26BE12418(&unk_287CBA3C0);
  qword_280478FF8 = result;
  unk_280479000 = v1;
  return result;
}

SwiftMLS::RCSFileAttachmentCrypto::RCSFAError_optional __swiftcall RCSFileAttachmentCrypto.RCSFAError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 17;
  if (rawValue < 0x11)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_26BFA0C24(uint64_t a1)
{
  v2 = sub_26BFA71F8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26BFA0C60(uint64_t a1)
{
  v2 = sub_26BFA71F8();
  v3 = sub_26BFA71A4();
  v4 = sub_26BE8B948();

  return MEMORY[0x28211F498](a1, v2, v3, v4);
}

uint64_t sub_26BFA0CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BFA71A4();
  v5 = sub_26BE8B948();

  return MEMORY[0x28211BAD0](a1, a2, v4, v5);
}

unint64_t RCSFileAttachmentCrypto.RCSFileEncryption.init(key:inputPlaintextFileURL:outputEncryptedFileURL:fileName:internalBufferSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v197 = a1;
  LODWORD(v195) = a6;
  v199 = a5;
  v201 = a4;
  v204 = a3;
  v187 = a7;
  v209 = *MEMORY[0x277D85DE8];
  v192 = sub_26C009DAC();
  v190 = *(v192 - 8);
  v8 = *(v190 + 64);
  MEMORY[0x28223BE20](v192);
  v191 = v168 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_26C009E0C();
  v184 = *(v185 - 8);
  v10 = *(v184 + 64);
  MEMORY[0x28223BE20](v185);
  v189 = v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB50, &unk_26C020ED0);
  v12 = *(*(v193 - 8) + 64);
  MEMORY[0x28223BE20](v193);
  v188 = v168 - v13;
  v14 = sub_26C009D7C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v194 = (v168 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v202 = sub_26C008FDC();
  v198 = *(v202 - 8);
  v17 = *(v198 + 64);
  v18 = MEMORY[0x28223BE20](v202);
  v183 = v168 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v186 = v168 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = v168 - v22;
  v24 = type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = v168 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_26C009C8C();
  v203 = *(v200 - 8);
  v28 = *(v203 + 64);
  v29 = MEMORY[0x28223BE20](v200);
  v31 = v168 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = v168 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = v168 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = (v168 - v39);
  MEMORY[0x28223BE20](v38);
  v42 = v168 - v41;
  v43 = v196;
  v44 = sub_26BFA63D8(a2);
  v196 = v43;
  if (v43)
  {
    sub_26BE00258(v201, v199);
    v45 = v204;
    v46 = v202;
    v47 = v200;
    v48 = v197;
LABEL_3:
    v49 = *(v198 + 8);
    v49(v45, v46);
    v49(a2, v46);
    result = (*(v203 + 8))(v48, v47);
LABEL_4:
    v51 = *MEMORY[0x277D85DE8];
    return result;
  }

  v180 = v44;
  v176 = v23;
  v172 = v31;
  v177 = v40;
  v174 = v34;
  v173 = v37;
  v175 = v24;
  v179 = v42;
  v178 = v27;
  v182 = a2;
  sub_26C008FBC();
  v52 = objc_allocWithZone(MEMORY[0x277CBEAE0]);
  v53 = sub_26C00A45C();

  v54 = [v52 initWithFileAtPath_];

  if (!v54)
  {
    sub_26BF7EDDC();
    swift_allocError();
    *v73 = 13;
    swift_willThrow();
    sub_26BE00258(v201, v199);
    v48 = v197;
    a2 = v182;
    v45 = v204;
    v46 = v202;
    v47 = v200;
    goto LABEL_3;
  }

  [v54 open];
  sub_26C008FBC();
  v55 = objc_allocWithZone(MEMORY[0x277CBEB78]);
  v56 = sub_26C00A45C();

  v57 = [v55 initToFileAtPath:v56 append:0];

  v58 = v57;
  v46 = v202;
  v181 = v54;
  if (!v58)
  {
    sub_26BF7EDDC();
    v74 = swift_allocError();
    *v75 = 12;
    swift_willThrow();
    [v54 close];
    if (qword_28045DF40 != -1)
    {
      swift_once();
    }

    v76 = sub_26C009A5C();
    __swift_project_value_buffer(v76, qword_280478E70);
    v77 = v198;
    v78 = v176;
    v79 = v204;
    (*(v198 + 16))(v176);
    v80 = sub_26C009A3C();
    v81 = sub_26C00AA0C();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v196 = v74;
      v83 = v82;
      v84 = swift_slowAlloc();
      *&v205 = v84;
      *v83 = 136315138;
      sub_26BFA658C(&qword_28045FD20, MEMORY[0x277CC9260]);
      v85 = sub_26C00AEFC();
      v86 = v77;
      v88 = v87;
      (*(v86 + 8))(v78, v46);
      v89 = sub_26BE29740(v85, v88, &v205);

      *(v83 + 4) = v89;
      _os_log_impl(&dword_26BDFE000, v80, v81, "Failed to open output stream for %s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v84);
      v90 = v84;
      v79 = v204;
      MEMORY[0x26D69A4E0](v90, -1, -1);
      MEMORY[0x26D69A4E0](v83, -1, -1);
    }

    else
    {

      (*(v77 + 8))(v78, v46);
    }

    v48 = v197;
    swift_willThrow();
    sub_26BE00258(v201, v199);

    v45 = v79;
    v47 = v200;
    a2 = v182;
    goto LABEL_3;
  }

  [v58 open];
  v59 = v203;
  v60 = v203 + 16;
  v61 = *(v203 + 16);
  v62 = v179;
  v48 = v197;
  v47 = v200;
  v61(v179);
  v63 = v178;
  v178[6] = 0;
  v176 = v58;
  if (v180 >= 0x80000000)
  {
    sub_26BF7EDDC();
    swift_allocError();
    *v91 = 1;
    swift_willThrow();
    (*(v59 + 8))(v62, v47);
    a2 = v182;
    v61 = v201;
LABEL_42:
    [v58 close];
    [v181 close];
    if (qword_28045DF40 != -1)
    {
      swift_once();
    }

    v153 = sub_26C009A5C();
    __swift_project_value_buffer(v153, qword_280478E70);
    v154 = sub_26C009A3C();
    v155 = sub_26C00AA0C();
    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      *v156 = 0;
      _os_log_impl(&dword_26BDFE000, v154, v155, "Failed to open create keys or CTRMode Context", v156, 2u);
      MEMORY[0x26D69A4E0](v156, -1, -1);
    }

    swift_willThrow();
    sub_26BE00258(v61, v199);

    v45 = v204;
    goto LABEL_3;
  }

  v169 = v61;
  v170 = v60;
  v64 = v201;
  if (v180 < 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  v60 = v175;
  v65 = v175[11];
  *v63 = v180;
  v66 = v195;
  *(v63 + v65) = v195;
  v59 = v199;
  v67 = v181;
  v61 = v177;
  if (v66)
  {
    v68 = v58;
    v69 = v66;
    v70 = v68;
    v71 = v67;
    sub_26BE00608(v64, v59);
    v72 = sub_26C00A74C();
    *(v72 + 16) = v69;
    bzero((v72 + 32), v69);
  }

  else
  {
    v92 = v58;
    v93 = v67;
    sub_26BE00608(v64, v59);
    v72 = MEMORY[0x277D84F90];
  }

  *(v63 + *(v60 + 48)) = v72;
  result = sub_26C0092DC();
  v46 = v202;
  if ((v94 & 1) == 0)
  {
    if (!HIDWORD(result))
    {
      v95 = v180;
      v96 = result - v180;
      if (result >= v180)
      {
        v171 = v72;
        v63[1] = v96;
        v97 = v95 + 8;
        v98 = __CFADD__(v97, v96);
        v99 = v97 + v96;
        if (!v98)
        {
          v63[7] = v99;
          sub_26C009D6C();
          sub_26C009C6C();
          v100 = v63;
          v101 = MEMORY[0x277CC9318];
          v102 = v196;
          sub_26C009C3C();
          v194 = *(v203 + 8);
          v195 = v203 + 8;
          v194(v61, v47);
          v103 = v205;
          *(v100 + 2) = v205;
          v208 = v103;
          v206 = v101;
          v207 = MEMORY[0x277CC9300];
          v205 = xmmword_26C01F8F0;
          v104 = __swift_project_boxed_opaque_existential_1(&v205, v101);
          v105 = *v104;
          v106 = v104[1];
          sub_26BE00608(v103, *(&v103 + 1));
          sub_26BE121A0(v105, v106);
          v63 = v102;
          __swift_destroy_boxed_opaque_existential_1(&v205);
          v107 = *(&v208 + 1);
          v48 = v208;
          v108 = v179;
          if (sub_26C009C7C() != 256)
          {
            v58 = v176;

            sub_26BF7EDDC();
            swift_allocError();
            *v111 = 3;
            swift_willThrow();

            v61 = v201;
            sub_26BE00258(v201, v59);
            sub_26BE00258(v48, v107);
            v48 = v197;
            v47 = v200;
            v194(v108, v200);
            goto LABEL_41;
          }

          v180 = v107;
          v109 = v59 >> 62;
          v61 = v201;
          v58 = v176;
          if ((v59 >> 62) > 1)
          {
            v47 = v200;
            v60 = v193;
            if (v109 != 2)
            {
              goto LABEL_33;
            }

            v113 = *(v201 + 16);
            v112 = *(v201 + 24);
            v114 = __OFSUB__(v112, v113);
            v110 = v112 - v113;
            if (!v114)
            {
LABEL_32:
              if (v110 < 0xFFFF)
              {
LABEL_33:
                if (qword_28045DFD8 == -1)
                {
LABEL_34:
                  v205 = xmmword_280478FF8;
                  *&v208 = v61;
                  *(&v208 + 1) = v59;
                  sub_26BE00608(xmmword_280478FF8, *(&xmmword_280478FF8 + 1));
                  v115 = sub_26C00A30C();
                  v116 = sub_26BFA658C(&qword_28045E370, MEMORY[0x277CC5540]);
                  v168[3] = sub_26BE016A8();
                  v117 = v177;
                  v168[2] = v115;
                  v168[1] = v116;
                  sub_26C009E1C();
                  sub_26BE00258(v205, *(&v205 + 1));
                  v118 = v188;
                  sub_26C009C3C();
                  v196 = v63;
                  v47 = v200;
                  v194(v117, v200);
                  v119 = *(v60 + 48);
                  v120 = *(v203 + 32);
                  v121 = v173;
                  v120(v173, v118, v47);
                  v120(v174, &v118[v119], v47);
                  v122 = v169;
                  (v169)(v172, v121, v47);
                  (*(v190 + 104))(v191, *MEMORY[0x277CC53F0], v192);
                  v123 = v180;
                  sub_26BE00608(v48, v180);
                  v124 = v189;
                  v193 = v48;
                  v125 = v196;
                  sub_26C009DDC();
                  if (!v125)
                  {
                    v196 = 0;
                    v127 = v121;
                    v128 = v175;
                    v129 = v178;
                    (*(v184 + 32))(v178 + v175[9], v124, v185);
                    v130 = v174;
                    (v122)(v117, v174, v47);
                    v131 = v128[10];
                    sub_26C009E2C();
                    v132 = *(v129 + 16);
                    *&v205 = *(v129 + 8);
                    *(&v205 + 1) = v132;
                    sub_26BE00608(v205, v132);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
                    sub_26C009E3C();
                    sub_26BE00258(v201, v199);
                    sub_26BE00258(v193, v123);
                    sub_26BE00258(v205, *(&v205 + 1));
                    v133 = v194;
                    v194(v130, v47);
                    v133(v127, v47);
                    v133(v179, v47);
                    *(v129 + v128[13]) = v181;
                    *(v129 + v128[14]) = v176;
                    sub_26BFA72BC(v129, v187, type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption);
                    if (qword_28045DF40 != -1)
                    {
                      swift_once();
                    }

                    v134 = sub_26C009A5C();
                    v135 = __swift_project_value_buffer(v134, qword_280478E70);
                    v136 = v198;
                    v137 = *(v198 + 16);
                    v138 = v186;
                    v139 = v202;
                    v137(v186, v182, v202);
                    v140 = sub_26C009A3C();
                    v141 = sub_26C00AA1C();
                    if (os_log_type_enabled(v140, v141))
                    {
                      v142 = swift_slowAlloc();
                      v203 = v135;
                      v143 = v142;
                      v144 = swift_slowAlloc();
                      *&v205 = v144;
                      *v143 = 136315138;
                      v145 = sub_26C008FCC();
                      v146 = v138;
                      v148 = v147;
                      v149 = *(v136 + 8);
                      v149(v146, v202);
                      v150 = sub_26BE29740(v145, v148, &v205);

                      *(v143 + 4) = v150;
                      _os_log_impl(&dword_26BDFE000, v140, v141, "Input File to encrypt is at %s", v143, 0xCu);
                      __swift_destroy_boxed_opaque_existential_1(v144);
                      v151 = v144;
                      v139 = v202;
                      MEMORY[0x26D69A4E0](v151, -1, -1);
                      MEMORY[0x26D69A4E0](v143, -1, -1);
                    }

                    else
                    {

                      v149 = *(v136 + 8);
                      v149(v138, v139);
                    }

                    v157 = v183;
                    v158 = v204;
                    v137(v183, v204, v139);
                    v159 = sub_26C009A3C();
                    v160 = sub_26C00AA1C();
                    if (os_log_type_enabled(v159, v160))
                    {
                      v161 = swift_slowAlloc();
                      v162 = swift_slowAlloc();
                      *&v205 = v162;
                      *v161 = 136315138;
                      v163 = sub_26C008FCC();
                      v164 = v139;
                      v166 = v165;
                      v149(v157, v164);
                      v167 = sub_26BE29740(v163, v166, &v205);

                      *(v161 + 4) = v167;
                      _os_log_impl(&dword_26BDFE000, v159, v160, "Output File to encrypt is at %s", v161, 0xCu);
                      __swift_destroy_boxed_opaque_existential_1(v162);
                      MEMORY[0x26D69A4E0](v162, -1, -1);
                      MEMORY[0x26D69A4E0](v161, -1, -1);

                      sub_26BE00258(v201, v199);
                      v149(v204, v164);
                      v149(v182, v164);
                      result = (v194)(v197, v200);
                    }

                    else
                    {

                      sub_26BE00258(v201, v199);
                      v149(v158, v139);
                      v149(v182, v139);
                      v194(v197, v200);
                      result = (v149)(v157, v139);
                    }

                    goto LABEL_4;
                  }

                  v58 = v176;
                  v61 = v201;
                  sub_26BE00258(v201, v199);
                  sub_26BE00258(v193, v123);
                  v126 = v194;
                  v194(v174, v47);
                  v126(v121, v47);
                  v48 = v197;
                  v46 = v202;
                  v126(v179, v47);
                  goto LABEL_41;
                }

LABEL_55:
                swift_once();
                goto LABEL_34;
              }

              sub_26BF7EDDC();
              swift_allocError();
              *v152 = 0;
              swift_willThrow();

              sub_26BE00258(v61, v59);
              sub_26BE00258(v48, v180);
              v48 = v197;
              v194(v108, v47);
LABEL_41:
              sub_26BE00258(*(v178 + 1), *(v178 + 2));

              a2 = v182;
              goto LABEL_42;
            }
          }

          else
          {
            v47 = v200;
            v60 = v193;
            if (!v109)
            {
              goto LABEL_33;
            }

            LODWORD(v110) = HIDWORD(v201) - v201;
            if (!__OFSUB__(HIDWORD(v201), v201))
            {
              v110 = v110;
              goto LABEL_32;
            }

            __break(1u);
          }

          __break(1u);
        }

LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  __break(1u);
  return result;
}

id static RCSFileAttachmentCrypto.openFileInputStream(fileURL:)()
{
  sub_26C008FBC();
  v0 = objc_allocWithZone(MEMORY[0x277CBEAE0]);
  v1 = sub_26C00A45C();

  v2 = [v0 initWithFileAtPath_];

  if (v2)
  {
    [v2 open];
  }

  else
  {
    sub_26BF7EDDC();
    swift_allocError();
    *v3 = 13;
    swift_willThrow();
  }

  return v2;
}

id static RCSFileAttachmentCrypto.openFileOutputStream(fileURL:)()
{
  sub_26C008FBC();
  v0 = objc_allocWithZone(MEMORY[0x277CBEB78]);
  v1 = sub_26C00A45C();

  v2 = [v0 initToFileAtPath:v1 append:0];

  if (v2)
  {
    [v2 open];
  }

  else
  {
    sub_26BF7EDDC();
    swift_allocError();
    *v3 = 12;
    swift_willThrow();
  }

  return v2;
}

uint64_t static RCSFileAttachmentCrypto.deriveKeys(primaryKey:fileName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v31 = a2;
  v27 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB50, &unk_26C020ED0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = sub_26C009C8C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_26C009C7C();
  if (result != 256)
  {
    v19 = 3;
    goto LABEL_7;
  }

  v17 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v22 = *(a4 + 16);
      v21 = *(a4 + 24);
      v23 = __OFSUB__(v21, v22);
      v18 = v21 - v22;
      if (!v23)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }
  }

  else if (v17)
  {
    LODWORD(v18) = HIDWORD(a4) - a4;
    if (!__OFSUB__(HIDWORD(a4), a4))
    {
      v18 = v18;
LABEL_10:
      if (v18 <= 65534)
      {
        goto LABEL_11;
      }

      v19 = 0;
LABEL_7:
      sub_26BF7EDDC();
      swift_allocError();
      *v20 = v19;
      return swift_willThrow();
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

LABEL_11:
  if (qword_28045DFD8 != -1)
  {
    swift_once();
  }

  v30 = xmmword_280478FF8;
  v28 = a4;
  v29 = a5;
  sub_26BE00608(xmmword_280478FF8, *(&xmmword_280478FF8 + 1));
  sub_26C00A30C();
  sub_26BFA658C(&qword_28045E370, MEMORY[0x277CC5540]);
  sub_26BE016A8();
  sub_26C009E1C();
  sub_26BE00258(v30, *(&v30 + 1));
  sub_26C009C3C();
  (*(v12 + 8))(v15, v11);
  v24 = *(v7 + 48);
  v25 = *(v12 + 32);
  v25(v27, v10, v11);
  return (v25)(v31, &v10[v24], v11);
}

uint64_t RCSFileAttachmentCrypto.RCSFileEncryption.TagAndIV.tag.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

uint64_t RCSFileAttachmentCrypto.RCSFileEncryption.TagAndIV.iv.getter()
{
  v1 = *(v0 + 16);
  sub_26BE00608(v1, *(v0 + 24));
  return v1;
}

uint64_t RCSFileAttachmentCrypto.RCSFileEncryption.TagAndIV.init(tag:iv:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = result;
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_14;
    }

    v11 = *(result + 16);
    v10 = *(result + 24);
    v12 = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (!v12)
    {
      if (v13 == 32)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v9)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 32)
      {
        goto LABEL_8;
      }

LABEL_14:
      v15 = 4;
LABEL_22:
      sub_26BF7EDDC();
      swift_allocError();
      *v19 = v15;
      swift_willThrow();
      sub_26BE00258(a3, a4);
      return sub_26BE00258(v8, a2);
    }

    goto LABEL_24;
  }

  if (BYTE6(a2) != 32)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_21;
    }

    v17 = *(a3 + 16);
    v16 = *(a3 + 24);
    v12 = __OFSUB__(v16, v17);
    v18 = v16 - v17;
    if (!v12)
    {
      if (v18 == 12)
      {
        goto LABEL_18;
      }

LABEL_21:
      v15 = 6;
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (!v14)
  {
    if (BYTE6(a4) != 12)
    {
      goto LABEL_21;
    }

LABEL_18:
    *a5 = result;
    a5[1] = a2;
    a5[2] = a3;
    a5[3] = a4;
    return result;
  }

  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    if (HIDWORD(a3) - a3 == 12)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_26BFA298C(uint64_t a1)
{
  v2 = type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption(0);
  [*(a1 + *(v2 + 52)) close];
  [*(a1 + *(v2 + 56)) close];
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v3 = sub_26C009A5C();
  __swift_project_value_buffer(v3, qword_280478E70);
  oslog = sub_26C009A3C();
  v4 = sub_26C00AA1C();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26BDFE000, oslog, v4, "RCSFileEncryption: encryptFile complete", v5, 2u);
    MEMORY[0x26D69A4E0](v5, -1, -1);
  }
}

void sub_26BFA2AB0()
{
  v2 = v1;
  v3 = v0;
  if (qword_28045DF40 != -1)
  {
LABEL_57:
    swift_once();
  }

  v4 = sub_26C009A5C();
  v52 = __swift_project_value_buffer(v4, qword_280478E70);
  v5 = sub_26C009A3C();
  v6 = sub_26C00AA1C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26BDFE000, v5, v6, "StartingEncryptAndMacPlaintext", v7, 2u);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v8 = type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption(0);
  v9 = *(v3 + v8[13]);
  if ([v9 hasBytesAvailable])
  {
    LODWORD(v10) = 0;
    v11 = 0;
    v53 = v8;
    v54 = v9;
    while (v10 < *v3)
    {
      v12 = *(v3 + v8[11]);
      v57 = v8[12];
      v13 = *(v3 + v57);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_26BE29A50(0, *(v13 + 2), 0, v13);
      }

      v14 = [v9 read:v13 + 32 maxLength:{v12, v52}];
      if ((v14 & 0x8000000000000000) != 0)
      {
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
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v15 = v14;
      if (HIDWORD(v14))
      {
        goto LABEL_49;
      }

      v16 = __CFADD__(v10, v14);
      v10 = (v10 + v14);
      if (v16)
      {
        goto LABEL_50;
      }

      v17 = v12 - v14;
      v56 = v12;
      if (v12 > v14)
      {
        if ((v12 - v14) < 0)
        {
          goto LABEL_53;
        }

        v18 = v3;
        v3 = v10;
        v10 = v8;
        v19 = v11;
        v20 = v2;
        v21 = *(v13 + 2);
        v2 = (v21 - v17);
        if (v21 < v17)
        {
          goto LABEL_54;
        }

        if ((v21 - v17) < 0)
        {
          goto LABEL_55;
        }

        v55 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v2 > *(v13 + 3) >> 1)
        {
          if (v21 <= v2)
          {
            v23 = v2;
          }

          else
          {
            v23 = v21;
          }

          v13 = sub_26BE29A50(isUniquelyReferenced_nonNull_native, v23, 1, v13);
        }

        memmove(v2 + (v13 + 32), &v13[v21 + 32], *(v13 + 2) - v21);
        *(v13 + 2) -= v55;
        v2 = v20;
        v11 = v19;
        v8 = v10;
        LODWORD(v10) = v3;
        v3 = v18;
      }

      v24 = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + v57) = v13;
      if ((v24 & 1) == 0)
      {
        v13 = sub_26BE588C0(v13);
        *(v3 + v57) = v13;
      }

      v25 = *(v13 + 2);
      v26 = v3 + v8[9];
      v27 = v2;
      sub_26C009DCC();
      *(v3 + v57) = v13;
      if (v2)
      {
        return;
      }

      v28 = *(v3 + v8[14]);
      v29 = [v28 write:v13 + 32 maxLength:*(v13 + 2)];
      v30 = v29;
      if ((v29 & 0x8000000000000000) != 0)
      {
        v41 = [v28 streamError];
        v42 = v41;
        v43 = sub_26C009A3C();
        v44 = sub_26C00AA0C();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *v45 = 134218498;
          *(v45 + 4) = v15;
          *(v45 + 12) = 2048;
          *(v45 + 14) = v30;
          *(v45 + 22) = 2112;
          if (v41)
          {
            v47 = v42;
            v48 = _swift_stdlib_bridgeErrorToNSError();
            v49 = v48;
          }

          else
          {
            v48 = 0;
            v49 = 0;
          }

          *(v45 + 24) = v48;
          *v46 = v49;
          _os_log_impl(&dword_26BDFE000, v43, v44, " OutputStreamError reported (readBytes: %ld writtenBytes %ld) in encryptAndMACPlaintext as: %@", v45, 0x20u);
          sub_26BE2E258(v46, &qword_28045FB40, &unk_26C021280);
          MEMORY[0x26D69A4E0](v46, -1, -1);
          MEMORY[0x26D69A4E0](v45, -1, -1);
        }

        if (!v41)
        {
          v50 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v51 = sub_26C00A45C();
          [v50 initWithDomain:v51 code:1 userInfo:0];
        }

        swift_willThrow();
        return;
      }

      if (HIDWORD(v29))
      {
        goto LABEL_51;
      }

      v16 = __CFADD__(v11, v29);
      v11 += v29;
      if (v16)
      {
        goto LABEL_52;
      }

      v31 = v8[10];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
      v2 = &qword_28045E228;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
      sub_26BE13630(&qword_28045FAA0, &qword_28045E228, &qword_26C00CDD0);
      sub_26C009E3C();
      v32 = *(v13 + 2);
      v33 = v56 - v32;
      v9 = v54;
      if (v56 > v32)
      {
        if ((v56 - v32) < 0)
        {
          goto LABEL_56;
        }

        v34 = sub_26C00A74C();
        *(v34 + 16) = v33;
        bzero((v34 + 32), v33);
        sub_26BE29964(v34);
      }

      v2 = v27;
      v8 = v53;
      if (([v54 hasBytesAvailable] & 1) == 0)
      {
        break;
      }
    }
  }

  else
  {
    v11 = 0;
    LODWORD(v10) = 0;
  }

  v35 = sub_26C009A3C();
  v36 = sub_26C00AA1C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 67109120;
    *(v37 + 4) = v10;
    _os_log_impl(&dword_26BDFE000, v35, v36, "EncryptAndMac Encrypted %u bytes of plaintext read", v37, 8u);
    MEMORY[0x26D69A4E0](v37, -1, -1);
  }

  v38 = sub_26C009A3C();
  v39 = sub_26C00AA1C();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 67109120;
    *(v40 + 4) = v11;
    _os_log_impl(&dword_26BDFE000, v38, v39, "EncryptAndMac Wrote %u bytes to output stream", v40, 8u);
    MEMORY[0x26D69A4E0](v40, -1, -1);
  }
}

void sub_26BFA3124()
{
  v2 = v1;
  v3 = v0;
  if (qword_28045DF40 != -1)
  {
LABEL_49:
    swift_once();
  }

  v4 = sub_26C009A5C();
  __swift_project_value_buffer(v4, qword_280478E70);
  v5 = sub_26C009A3C();
  v6 = sub_26C00AA1C();
  v47 = v2;
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26BDFE000, v5, v6, "StartingEncryptAndMacPadding", v7, 2u);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v2 = *(v3 + 4);
  if (v2)
  {
    v8 = type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption(0);
    v9 = v8[12];
    v10 = *(v3 + v8[11]);
    v46 = v8;
    v44 = v8[9];
    sub_26BE13630(&qword_28045FDA8, &qword_28045E228, &qword_26C00CDD0);
    sub_26BE13630(&qword_28045E280, &qword_28045E270, &unk_26C00E290);
    v11 = 0;
    v12 = 0;
    v42 = v10;
    v43 = v2;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
      sub_26C008F6C();
      v13 = v2 - v12;
      if (v2 < v12)
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v14 = v9;
      v15 = *(v3 + v9);
      v16 = v13 >= v10;
      if (v13 >= v10)
      {
        v13 = v10;
      }

      v45 = v13;
      if (!v16)
      {
        v17 = v10 - v13;
        v18 = *(v15 + 2);
        v2 = v18 - v17;
        if (v18 < v17)
        {
          goto LABEL_47;
        }

        if ((v18 - v17) < 0)
        {
          goto LABEL_48;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v2 > *(v15 + 3) >> 1)
        {
          if (v18 <= v2)
          {
            v20 = v18 - v17;
          }

          else
          {
            v20 = v18;
          }

          v15 = sub_26BE29A50(isUniquelyReferenced_nonNull_native, v20, 1, v15);
        }

        memmove(&v15[v2 + 32], &v15[v18 + 32], *(v15 + 2) - v18);
        *(v15 + 2) -= v17;
        *(v3 + v14) = v15;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_26BE588C0(v15);
      }

      v21 = &v15[*(v15 + 2) + 32];
      sub_26C009DCC();
      *(v3 + v14) = v15;
      if (v47)
      {
        return;
      }

      v22 = *(v3 + v46[14]);
      v23 = [v22 write:v15 + 32 maxLength:*(v15 + 2)];
      v24 = v23;
      if ((v23 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(v23))
      {
        goto LABEL_44;
      }

      v16 = __CFADD__(v11, v23);
      v11 += v23;
      if (v16)
      {
        goto LABEL_45;
      }

      v2 = v46[10];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
      sub_26BE13630(&qword_28045FAA0, &qword_28045E228, &qword_26C00CDD0);
      sub_26C009E3C();
      v16 = __CFADD__(v12, v45);
      v12 += v45;
      if (v16)
      {
        goto LABEL_46;
      }

      v2 = v43;
      v9 = v14;
      v10 = v42;
      if (v12 >= v43)
      {
        goto LABEL_29;
      }
    }

    v31 = [v22 streamError];
    v32 = v31;
    v33 = sub_26C009A3C();
    v34 = sub_26C00AA0C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 134218242;
      *(v35 + 4) = v24;
      *(v35 + 12) = 2112;
      if (v31)
      {
        v37 = v32;
        v38 = _swift_stdlib_bridgeErrorToNSError();
        v39 = v38;
      }

      else
      {
        v38 = 0;
        v39 = 0;
      }

      *(v35 + 14) = v38;
      *v36 = v39;
      _os_log_impl(&dword_26BDFE000, v33, v34, " OutputStreamError reported (writtenBytes %ld)  in encryptAndMACPlaintext as: %@", v35, 0x16u);
      sub_26BE2E258(v36, &qword_28045FB40, &unk_26C021280);
      MEMORY[0x26D69A4E0](v36, -1, -1);
      MEMORY[0x26D69A4E0](v35, -1, -1);
    }

    if (!v31)
    {
      v40 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v41 = sub_26C00A45C();
      [v40 initWithDomain:v41 code:1 userInfo:0];
    }

    swift_willThrow();
  }

  else
  {
    v11 = 0;
    v12 = 0;
LABEL_29:
    v25 = sub_26C009A3C();
    v26 = sub_26C00AA1C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 67109120;
      *(v27 + 4) = v12;
      _os_log_impl(&dword_26BDFE000, v25, v26, "encryptAndMac Padded %u bytes of padding planned", v27, 8u);
      MEMORY[0x26D69A4E0](v27, -1, -1);
    }

    v28 = sub_26C009A3C();
    v29 = sub_26C00AA1C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 67109120;
      *(v30 + 4) = v11;
      _os_log_impl(&dword_26BDFE000, v28, v29, "encryptAndMac Wrote %u bytes", v30, 8u);
      MEMORY[0x26D69A4E0](v30, -1, -1);
    }
  }
}

void sub_26BFA3738()
{
  v2 = v0;
  v3 = sub_26BFA3C78();
  v5 = v4;
  v6 = type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption(0);
  v7 = v0 + v6[9];
  v8 = sub_26C009DFC();
  if (v1)
  {
    sub_26BE00258(v3, v5);
  }

  else
  {
    v10 = v8;
    v11 = v3;
    v12 = v9;
    sub_26BE00258(v11, v5);
    v28 = sub_26BF974A8(v10, v12);
    v13 = v6[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
    sub_26BE13630(&qword_28045FAA0, &qword_28045E228, &qword_26C00CDD0);
    sub_26C009E3C();
    v14 = *(v2 + v6[14]);
    v15 = [v14 write:v28 + 32 maxLength:*(v28 + 16)];

    if (v15 < 1)
    {
      v16 = [v14 streamError];
      if (qword_28045DF40 != -1)
      {
        swift_once();
      }

      v17 = sub_26C009A5C();
      __swift_project_value_buffer(v17, qword_280478E70);
      v18 = v16;
      v19 = sub_26C009A3C();
      v20 = sub_26C00AA0C();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 134218242;
        *(v21 + 4) = v15;
        *(v21 + 12) = 2112;
        if (v16)
        {
          v23 = v18;
          v24 = _swift_stdlib_bridgeErrorToNSError();
          v25 = v24;
        }

        else
        {
          v24 = 0;
          v25 = 0;
        }

        *(v21 + 14) = v24;
        *v22 = v25;
        _os_log_impl(&dword_26BDFE000, v19, v20, " OutputStreamError reported(writtenBytes %ld) in encryptAndMACPlaintext as: %@", v21, 0x16u);
        sub_26BE2E258(v22, &qword_28045FB40, &unk_26C021280);
        MEMORY[0x26D69A4E0](v22, -1, -1);
        MEMORY[0x26D69A4E0](v21, -1, -1);
      }

      if (![v14 streamError])
      {
        v26 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v27 = sub_26C00A45C();
        [v26 initWithDomain:v27 code:1 userInfo:0];
      }

      swift_willThrow();
    }
  }
}

uint64_t sub_26BFA3A6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FD90, &unk_26C021260);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v16 - v3;
  v5 = *(type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
  sub_26C009E4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
  sub_26C009D8C();
  v6 = sub_26BE12418(v16[1]);
  v8 = v7;

  result = (*(v1 + 8))(v4, v0);
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      v13 = __OFSUB__(v11, v12);
      v14 = v11 - v12;
      if (v13)
      {
        __break(1u);
        goto LABEL_14;
      }

      if (v14 == 32)
      {
        return v6;
      }
    }

LABEL_8:
    sub_26BF7EDDC();
    swift_allocError();
    *v15 = 4;
    swift_willThrow();
    sub_26BE00258(v6, v8);
    return v6;
  }

  if (!v10)
  {
    if (BYTE6(v8) == 32)
    {
      return v6;
    }

    goto LABEL_8;
  }

  if (!__OFSUB__(HIDWORD(v6), v6))
  {
    if (HIDWORD(v6) - v6 == 32)
    {
      return v6;
    }

    goto LABEL_8;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_26BFA3C78()
{
  v16 = *MEMORY[0x277D85DE8];
  __src = bswap32(*v0);
  v1 = sub_26BF2EA50(&__src, v13);
  v3 = v2 & 0xFFFFFFFFFFFFFFLL;
  v11 = bswap32(v0[1]);
  v4 = sub_26BF2EA50(&v11, &__src);
  v14 = v1;
  v15 = v3;
  v13[3] = MEMORY[0x277CC9318];
  v13[4] = MEMORY[0x277CC9300];
  v13[0] = v4;
  v13[1] = v5 & 0xFFFFFFFFFFFFFFLL;
  v6 = __swift_project_boxed_opaque_existential_1(v13, MEMORY[0x277CC9318]);
  v7 = *v6;
  v8 = v6[1];
  sub_26BE00608(v1, v3);
  sub_26BE121A0(v7, v8);
  sub_26BE00258(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v13);
  result = v14;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RCSFileAttachmentCrypto.RCSFileDecryption.plaintextCount.setter(uint64_t a1)
{
  result = type metadata accessor for RCSFileAttachmentCrypto.RCSFileDecryption(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t RCSFileAttachmentCrypto.RCSFileDecryption.init(key:iv:tag:inputEncryptedFile:outputDecryptedFile:fileName:plaintextCountHint:internalBufferSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, unint64_t a10, unint64_t a11, int a12)
{
  v56 = a1;
  v57 = a7;
  v53 = a5;
  v54 = a2;
  v55 = a3;
  v51 = a9;
  v16 = sub_26C009C8C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_26BFA63D8(a6);
  v52 = v12;
  if (v12)
  {
    sub_26BE00258(a8, a10);
    sub_26BE00258(a4, v53);
    sub_26BE00258(v54, v55);
    v22 = sub_26C008FDC();
    v23 = *(*(v22 - 8) + 8);
    v23(v57, v22);
    v23(a6, v22);
    return (*(v17 + 8))(v56, v16);
  }

  else
  {
    v44 = v21;
    v45 = v20;
    v46 = a10;
    v47 = a8;
    v48 = a4;
    v49 = v17;
    v50 = v16;
    sub_26C008FBC();
    v25 = objc_allocWithZone(MEMORY[0x277CBEAE0]);
    v26 = sub_26C00A45C();

    v27 = [v25 initWithFileAtPath_];

    if (v27)
    {
      [v27 open];
      sub_26C008FBC();
      v28 = objc_allocWithZone(MEMORY[0x277CBEB78]);
      v29 = sub_26C00A45C();

      v30 = [v28 initToFileAtPath:v29 append:0];

      v31 = v49;
      v32 = v46;
      if (v30)
      {
        [v30 open];
        v33 = v45;
        v34 = v56;
        (*(v31 + 16))(v45, v56, v50);
        v43 = a11 | ((HIDWORD(a11) & 1) << 32);
        sub_26BF9F87C(v33, v54, v55, v48, v53, v27, v44, v30, v51, v47, v32, v43, SBYTE4(v43), a12);
        v35 = sub_26C008FDC();
        v36 = *(*(v35 - 8) + 8);
        v36(v57, v35);
        v36(a6, v35);
        return (*(v31 + 8))(v34, v50);
      }

      else
      {
        sub_26BF7EDDC();
        swift_allocError();
        *v40 = 12;
        swift_willThrow();

        sub_26BE00258(v47, v32);
        sub_26BE00258(v48, v53);
        sub_26BE00258(v54, v55);
        v41 = sub_26C008FDC();
        v42 = *(*(v41 - 8) + 8);
        v42(v57, v41);
        v42(a6, v41);
        return (*(v31 + 8))(v56, v50);
      }
    }

    else
    {
      sub_26BF7EDDC();
      swift_allocError();
      *v37 = 13;
      swift_willThrow();
      sub_26BE00258(v47, v46);
      sub_26BE00258(v48, v53);
      sub_26BE00258(v54, v55);
      v38 = sub_26C008FDC();
      v39 = *(*(v38 - 8) + 8);
      v39(v57, v38);
      v39(a6, v38);
      return (*(v49 + 8))(v56, v50);
    }
  }
}

unint64_t sub_26BFA4308()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FD90, &unk_26C021260);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - v6;
  v42 = type metadata accessor for RCSFileAttachmentCrypto.RCSFileDecryption(0);
  v8 = *(v2 + v42[20]);
  v37 = v8;
  v35 = v7;
  if (v8)
  {
    v9 = sub_26C00A74C();
    *(v9 + 16) = v8;
    bzero((v9 + 32), v8);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v2 + v42[18]);
  v11 = sub_26C00A88C();
  v12 = [v10 setProperty:v11 forKey:*MEMORY[0x277CBE748]];

  if (v12)
  {
    v32 = v1;
    v33 = v4;
    v34 = v3;
    v13 = 0;
    v36 = v10;
    while (1)
    {
      if (![v10 hasBytesAvailable] || v13 >= *v2)
      {
        v25 = v42;
        v26 = v42[16];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
        v27 = v35;
        sub_26C009E4C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
        v28 = v34;
        sub_26C009D8C();
        v29 = sub_26BE12418(v38);
        v31 = v30;

        (*(v33 + 8))(v27, v28);
        LOBYTE(v2) = sub_26BE02DEC(v29, v31, *(v2 + v25[17]), *(v2 + v25[17] + 8));
        sub_26BE00258(v29, v31);

        return v2 & 1;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_26BE29A50(0, *(v9 + 16), 0, v9);
      }

      v14 = v37;
      v15 = v2;
      result = [v10 read:v9 + 32 maxLength:v37];
      v17 = result;
      if (result == v14)
      {
        v38 = v9;
        v18 = v42[16];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
        v19 = &qword_28045E228;
        v20 = &qword_26C00CDD0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
        v21 = &qword_28045FAA0;
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_23;
        }

        if (*(v9 + 16) < result)
        {
          goto LABEL_24;
        }

        v38 = v9;
        v39 = v9 + 32;
        v40 = 0;
        v41 = (2 * result) | 1;
        v22 = v42[16];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
        v19 = &qword_28045E410;
        v20 = &qword_26C021270;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E410, &qword_26C021270);
        v21 = &unk_28045FD98;
      }

      sub_26BE13630(v21, v19, v20);
      v2 = v15;
      result = sub_26C009E3C();
      if (HIDWORD(v17))
      {
        break;
      }

      v23 = __CFADD__(v13, v17);
      v13 += v17;
      v10 = v36;
      if (v23)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_19:
    sub_26BF7EDDC();
    swift_allocError();
    *v24 = 7;
    swift_willThrow();

    return v2 & 1;
  }

  return result;
}

uint64_t sub_26BFA473C()
{
  v4 = type metadata accessor for RCSFileAttachmentCrypto.RCSFileDecryption(0);
  v5 = *v0;
  v6 = (*v0 - 8);
  if (*v0 >= 8u)
  {
    v2 = v4;
    v7 = *(v0 + *(v4 + 72));
    v8 = sub_26C00A88C();
    v9 = [v7 setProperty:v8 forKey:*MEMORY[0x277CBE748]];

    if (v9)
    {
      v3 = v0;
      sub_26BFA4E10(v5 - 8);
      if (v1)
      {
        return v10;
      }

      v6 = sub_26C00A74C();
      *(v6 + 16) = 8;
      *(v6 + 32) = 0;
      if ([v7 read:v6 + 32 maxLength:8] == 8)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_6;
        }

        goto LABEL_25;
      }

      sub_26BF7EDDC();
      swift_allocError();
      v14 = 11;
    }

    else
    {
      sub_26BF7EDDC();
      swift_allocError();
      v14 = 7;
    }

    *v13 = v14;
    swift_willThrow();
    return v10;
  }

  __break(1u);
LABEL_25:
  v6 = sub_26BE588C0(v6);
LABEL_6:
  v11 = *(v6 + 16);
  v12 = v3 + v2[14];
  sub_26C009DBC();
  if (v1)
  {

    return v10;
  }

  v16 = bswap32(*(v6 + 32));
  v17 = v3 + v2[8];
  *v17 = v16;
  v17[4] = 0;
  v18 = bswap32(*(v6 + 36));
  v19 = v3 + v2[10];
  *v19 = v18;
  v19[4] = 0;
  v20 = v3 + v2[9];
  if ((v20[4] & 1) == 0 && *v20 != v16 || (v16 & 0x80000000) != 0)
  {

    return 0;
  }

  result = sub_26C0092DC();
  if ((v21 & 1) == 0)
  {
    v22 = result;

    if (HIDWORD(v22))
    {
      __break(1u);
    }

    else if (v22 >= v16)
    {
      if (v18 == v22 - v16)
      {
        v23 = v16 + v18;
        if (!__CFADD__(v16, v18))
        {
          v24 = __CFADD__(v23, 8);
          v25 = v23 + 8;
          if (!v24)
          {
            return v25 == v5;
          }

          goto LABEL_29;
        }

LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      return 0;
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_26BFA499C()
{
  v3 = v0;
  v4 = type metadata accessor for RCSFileAttachmentCrypto.RCSFileDecryption(0);
  v5 = v4[20];
  v6 = *(v0 + v5);
  if (v6)
  {
    v7 = *(v0 + v5);
    v8 = sub_26C00A74C();
    *(v8 + 16) = v6;
    bzero((v8 + 32), v6);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v42 = v8;
  v9 = v3 + v4[8];
  if (*(v9 + 4))
  {
    sub_26BF7EDDC();
    swift_allocError();
    v11 = 16;
LABEL_13:
    *v10 = v11;
    swift_willThrow();
    goto LABEL_14;
  }

  v12 = *v9;
  v2 = *(v3 + v4[18]);
  v13 = sub_26C00A88C();
  v40 = v2;
  v14 = [v2 setProperty:v13 forKey:*MEMORY[0x277CBE748]];

  if (!v14)
  {
    sub_26BF7EDDC();
    swift_allocError();
    v11 = 7;
    goto LABEL_13;
  }

  sub_26BFA4E10(v12);
  if (v1)
  {
LABEL_14:

    return v2 & 1;
  }

  v15 = v2;
  result = [v2 hasBytesAvailable];
  v17 = 0;
  LOBYTE(v2) = 1;
  if (!result)
  {
LABEL_9:
    v18 = v3 + v4[10];
    if ((*(v18 + 4) & 1) == 0 && v17 == *v18)
    {
      goto LABEL_14;
    }

    sub_26BF7EDDC();
    swift_allocError();
    v11 = 11;
    goto LABEL_13;
  }

  while (1)
  {
    v19 = (v3 + v4[10]);
    if (v19[1])
    {
      break;
    }

    v20 = *v19;
    v21 = v20 >= v17;
    v22 = v20 - v17;
    if (v22 == 0 || !v21)
    {
      goto LABEL_9;
    }

    v41 = v17;
    if (v22 >= v6)
    {
      v23 = v6;
    }

    else
    {
      v23 = v22;
    }

    v24 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_26BE29A50(0, *(v42 + 16), 0, v42);
    }

    result = [v15 read:v24 + 32 maxLength:v23];
    if (result != v6)
    {
      v25 = v6 - result;
      if (__OFSUB__(v6, result))
      {
        goto LABEL_55;
      }

      if (v25)
      {
        if ((v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_57;
        }

        v26 = *(v24 + 2);
        v27 = v26 - v25;
        if (v26 < v25)
        {
          goto LABEL_58;
        }

        if ((v26 - v25) < 0)
        {
          goto LABEL_59;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v27 > *(v24 + 3) >> 1)
        {
          if (v26 <= v27)
          {
            v29 = v26 - v25;
          }

          else
          {
            v29 = v26;
          }

          v24 = sub_26BE29A50(isUniquelyReferenced_nonNull_native, v29, 1, v24);
        }

        memmove(&v24[v27 + 32], &v24[v26 + 32], *(v24 + 2) - v26);
        *(v24 + 2) -= v25;
        v15 = v40;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_26BE588C0(v24);
    }

    v30 = *(v24 + 2);
    v31 = v24 + 32;
    v32 = v3 + v4[14];
    result = sub_26C009DBC();
    v42 = v24;
    v33 = *(v24 + 2);
    if (HIDWORD(v33))
    {
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
      break;
    }

    v17 = v41 + v33;
    if (__CFADD__(v41, v33))
    {
      goto LABEL_54;
    }

    if (v2)
    {
      v34 = 0;
      do
      {
        LOBYTE(v2) = v33 == v34;
        if (v33 == v34)
        {
          break;
        }
      }

      while (!v31[v34++]);
    }

    else
    {
      LOBYTE(v2) = 0;
    }

    if (v6 > v33)
    {
      v36 = v6 - v33;
      if ((v6 - v33) < 0)
      {
        goto LABEL_56;
      }

      v37 = MEMORY[0x277D84F90];
      if (v6 != v33)
      {
        v38 = v41 + v33;
        v39 = sub_26C00A74C();
        *(v39 + 16) = v36;
        bzero((v39 + 32), v36);
        v37 = v39;
        v17 = v38;
      }

      sub_26BE29964(v37);
    }

    result = [v15 hasBytesAvailable];
    if ((result & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void static RCSFileAttachmentCrypto.setPositionInInputStream(_:posn:)(void *a1)
{
  v2 = sub_26C00A88C();
  LODWORD(a1) = [a1 setProperty:v2 forKey:*MEMORY[0x277CBE748]];

  if (!a1)
  {
    sub_26BF7EDDC();
    swift_allocError();
    *v3 = 7;
    swift_willThrow();
  }
}

uint64_t sub_26BFA4E10(unsigned int a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v47 = sub_26C009DAC();
  v45 = *(v47 - 8);
  v3 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v44 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26C009C8C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C009E0C();
  v40 = *(v10 - 8);
  v41 = v10;
  v11 = *(v40 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  v48 = bswap32(a1 >> 4);
  v14 = sub_26BE098EC(&v48, &v49);
  v16 = v15;
  v17 = type metadata accessor for RCSFileAttachmentCrypto.RCSFileDecryption(0);
  (*(v6 + 16))(v9, v1 + v17[6], v5);
  v18 = v17[7];
  v43 = v1;
  v19 = (v1 + v18);
  v20 = v19[1];
  v53 = *v19;
  v21 = v53;
  v54 = v20;
  v51 = MEMORY[0x277CC9318];
  v52 = MEMORY[0x277CC9300];
  v49 = v14;
  v50 = v16;
  v22 = __swift_project_boxed_opaque_existential_1(&v49, MEMORY[0x277CC9318]);
  v24 = *v22;
  v23 = v22[1];
  v25 = v21;
  v26 = v16;
  v27 = v14;
  sub_26BE00608(v25, v20);
  sub_26BE00608(v14, v26);
  v28 = v46;
  sub_26BE121A0(v24, v23);
  __swift_destroy_boxed_opaque_existential_1(&v49);
  (*(v45 + 104))(v44, *MEMORY[0x277CC53E8], v47);
  sub_26C009DDC();
  if (v28 || (v33 = v42 & 0xF, (*(v40 + 40))(v43 + v17[14], v13, v41), !v33))
  {
    v29 = v27;
    v30 = v26;
  }

  else
  {
    v49 = sub_26BE125AC(v33);
    v50 = v34;
    sub_26BFA5C8C(&v49, 0);
    v35 = v49;
    v36 = v50;
    v37 = sub_26C009DEC();
    sub_26BE00258(v37, v38);
    sub_26BE00258(v27, v26);
    v29 = v35;
    v30 = v36;
  }

  result = sub_26BE00258(v29, v30);
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26BFA51B0(uint64_t a1)
{
  v2 = type metadata accessor for RCSFileAttachmentCrypto.RCSFileDecryption(0);
  [*(a1 + *(v2 + 72)) close];
  [*(a1 + *(v2 + 76)) close];
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v3 = sub_26C009A5C();
  __swift_project_value_buffer(v3, qword_280478E70);
  oslog = sub_26C009A3C();
  v4 = sub_26C00AA1C();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26BDFE000, oslog, v4, "exiting decryptCiphertext", v5, 2u);
    MEMORY[0x26D69A4E0](v5, -1, -1);
  }
}

uint64_t sub_26BFA52D4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26C009C8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = sub_26BFA6140(a1, 32);
    v14 = v10;
    sub_26C009C5C();
    v13 = sub_26BFA6140(a1 + 32, 32);
    v14 = v11;
    v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB50, &unk_26C020ED0) + 48);
    sub_26C009C5C();
    return (*(v5 + 32))(a2, v9, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_26BFA5434(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_pos;
  v4 = *(v2 + OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_pos);
  if (__OFADD__(v4, a2))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = *(v2 + OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data);
  v6 = *(v2 + OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data + 8);
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v8 = *(v5 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else if (v7)
  {
    v8 = v5 >> 32;
  }

  else
  {
    v8 = BYTE6(v6);
  }

  if (v8 >= v4 + a2)
  {
    v9 = v4 + a2;
  }

  else
  {
    v9 = v8;
  }

  if (v9 < v4)
  {
    goto LABEL_17;
  }

  sub_26BE00608(*(v2 + OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data), *(v2 + OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data + 8));
  sub_26C0090CC();
  sub_26BE00258(v5, v6);
  v10 = v9 - v4;
  if (__OFSUB__(v9, v4))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = *(v2 + v3);
  v12 = __OFADD__(v11, v10);
  v13 = v11 + v10;
  if (!v12)
  {
    *(v2 + v3) = v13;
    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_26BFA55E0(uint64_t a1)
{
  v3 = *MEMORY[0x277CBE748];
  v4 = sub_26C00A48C();
  v6 = v5;
  if (v4 == sub_26C00A48C() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_26C00AF2C();

    result = 0;
    if ((v9 & 1) == 0)
    {
      return result;
    }
  }

  sub_26BE2E1F0(a1, v12, &qword_28045FB48, &qword_26C01FCF8);
  if (v13)
  {
    if (swift_dynamicCast())
    {
      *(v1 + OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_pos) = v11;
      return 1;
    }
  }

  else
  {
    sub_26BE2E258(v12, &qword_28045FB48, &qword_26C01FCF8);
  }

  return 0;
}

uint64_t sub_26BFA57B8@<X0>(void *a1@<X8>)
{
  v3 = *MEMORY[0x277CBE748];
  v4 = sub_26C00A48C();
  v6 = v5;
  if (v4 == sub_26C00A48C() && v6 == v7)
  {

    goto LABEL_13;
  }

  v9 = sub_26C00AF2C();

  if (v9)
  {
LABEL_13:
    v18 = *(v1 + OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_pos);
    a1[3] = MEMORY[0x277D83B88];
    *a1 = v18;
    return result;
  }

  v11 = *MEMORY[0x277CBE740];
  v12 = sub_26C00A48C();
  v14 = v13;
  if (v12 == sub_26C00A48C() && v14 == v15)
  {
  }

  else
  {
    v17 = sub_26C00AF2C();

    if ((v17 & 1) == 0)
    {
      a1[3] = MEMORY[0x277D839B0];
      *a1 = 0;
      return result;
    }
  }

  v19 = v1 + OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data;
  v20 = *(v1 + OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data);
  v21 = *(v19 + 8);
  v22 = objc_allocWithZone(MEMORY[0x277CBEA90]);
  sub_26BE00608(v20, v21);
  v23 = sub_26C0090DC();
  v24 = [v22 initWithData_];

  sub_26BE00258(v20, v21);
  result = sub_26BFA715C(0, &qword_28045E438, 0x277CBEA90);
  a1[3] = result;
  *a1 = v24;
  return result;
}

id sub_26BFA5BA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCSFileAttachmentCrypto.SeekableDataInputStream();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26BFA5BEC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_26C00AB8C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_26C00AC4C();
  *v1 = result;
  return result;
}

uint64_t *sub_26BFA5C8C(uint64_t *result, int a2)
{
  v3 = result;
  v24 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_26BE00258(v5, v4);
      __b = v5;
      v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_26C00BBD0;
      sub_26BE00258(0, 0xC000000000000000);
      result = sub_26BFA5EF4(&__b, a2);
      v7 = __b;
      v8 = v23 | 0x4000000000000000;
    }

    else
    {
      sub_26BE00258(v5, v4);
      __b = v5;
      LOWORD(v23) = v4;
      BYTE2(v23) = BYTE2(v4);
      BYTE3(v23) = BYTE3(v4);
      BYTE4(v23) = BYTE4(v4);
      BYTE5(v23) = BYTE5(v4);
      BYTE6(v23) = BYTE6(v4);
      result = memset(&__b, a2, BYTE6(v4));
      v7 = __b;
      v8 = v23 | ((WORD2(v23) | (BYTE6(v23) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    goto LABEL_14;
  }

  if (v6 != 2)
  {
LABEL_14:
    v20 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = *result;

  sub_26BE00258(v5, v4);
  __b = v5;
  v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_26C00BBD0;
  sub_26BE00258(0, 0xC000000000000000);
  sub_26C008FEC();
  v10 = v23;
  v11 = *(__b + 16);
  v12 = *(__b + 24);
  result = sub_26C008E9C();
  if (result)
  {
    v13 = result;
    v14 = sub_26C008ECC();
    v15 = v11 - v14;
    if (__OFSUB__(v11, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (!v16)
      {
        v18 = sub_26C008EBC();
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        result = memset(v13 + v15, a2, v19);
        *v3 = __b;
        v3[1] = v10 | 0x8000000000000000;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFA5EF4(int *a1, int a2)
{
  result = sub_26C00900C();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a1 + 1);

  result = sub_26C008E9C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  result = sub_26C008ECC();
  v9 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v6 - v5;
  v11 = sub_26C008EBC();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v8 + v9), a2, v12);
}

uint64_t sub_26BFA5F9C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_26C00AB8C();
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
      result = sub_26C00AB8C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_26BE13630(&qword_28045FDB8, &qword_28045FDB0, &unk_26C021290);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FDB0, &unk_26C021290);
            v9 = sub_26C007760(v13, i, a3);
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
        type metadata accessor for SecCertificate(0);
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

uint64_t sub_26BFA6140(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_26BF2EA50(a1, &a1[a2]);
  }

  v3 = sub_26C008EEC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_26C008E8C();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_26C00904C();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

__int128 *sub_26BFA61F0(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v27 = *a1;
  v10 = a1[2];
  v22 = a1[1];
  v11 = a1[3];
  v12 = a1[4];
  v23 = xmmword_26C00BBD0;
  v24 = 0;
  sub_26BE00608(a2, a3);
  sub_26BE00608(a4, a5);
  v13 = &v23;
  sub_26BFBD380(a2, a3, a4, a5);
  if (!v5)
  {
    v21 = v10;
    v14 = v23;
    v15 = *(&v23 + 1) >> 62;
    if ((*(&v23 + 1) >> 62) > 1)
    {
      if (v15 != 2)
      {
LABEL_11:
        v17 = sub_26C00909C();
        v19 = v18;
        sub_26BE00258(v14, *(&v14 + 1));
        LOBYTE(v23) = v27;
        *(&v23 + 1) = v22;
        v24 = v21;
        v25 = v11;
        v26 = v12;
        v13 = MLS.Cryptography.Ciphersuite.digestHash(_:)(v17, v19);
        sub_26BE00258(v17, v19);
        sub_26BE00258(a2, a3);
        sub_26BE00258(a4, a5);
        return v13;
      }

      v16 = *(v23 + 24);
    }

    else
    {
      if (!v15)
      {
        goto LABEL_11;
      }

      v16 = v23 >> 32;
    }

    if (v16 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  sub_26BE00258(a2, a3);
  sub_26BE00258(a4, a5);
  sub_26BE00258(v23, *(&v23 + 1));
  return v13;
}

uint64_t sub_26BFA63D8(uint64_t a1)
{
  v3 = sub_26C008F5C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FDA0, &qword_26C021278);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C011280;
  v9 = *MEMORY[0x277CBE838];
  *(inited + 32) = *MEMORY[0x277CBE838];
  v10 = v9;
  sub_26BEAF804(inited);
  swift_setDeallocating();
  sub_26BFA7324(inited + 32, type metadata accessor for URLResourceKey);
  sub_26C008F8C();

  if (!v1)
  {
    a1 = sub_26C008F4C();
    v12 = v11;
    (*(v4 + 8))(v7, v3);
    if (v12)
    {
      sub_26BF7EDDC();
      swift_allocError();
      *v13 = 14;
      swift_willThrow();
    }
  }

  return a1;
}

uint64_t sub_26BFA658C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26BFA65D8()
{
  result = qword_28045FD28;
  if (!qword_28045FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FD28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RCSFileAttachmentCrypto.RCSFAError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RCSFileAttachmentCrypto.RCSFAError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26BFA67A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_26C009E0C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[9];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[10];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[12]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_26BFA68CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_26C009E0C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[12]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[10];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_26BFA69DC()
{
  sub_26C009E0C();
  if (v0 <= 0x3F)
  {
    sub_26BFA6B10();
    if (v1 <= 0x3F)
    {
      sub_26BFA70B4(319, &qword_28045FD48, MEMORY[0x277D84B78], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_26BFA715C(319, &qword_28045FD50, 0x277CBEAE0);
        if (v3 <= 0x3F)
        {
          sub_26BFA715C(319, &qword_28045FD58, 0x277CBEB78);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26BFA6B10()
{
  if (!qword_28045FD40)
  {
    sub_26C00A30C();
    sub_26BFA658C(&qword_28045E370, MEMORY[0x277CC5540]);
    v0 = sub_26C009E5C();
    if (!v1)
    {
      atomic_store(v0, &qword_28045FD40);
    }
  }
}

uint64_t sub_26BFA6BC8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_26C009C8C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_9:
    v13 = *(v8 + 48);

    return v13(a1 + v9, a2, v7);
  }

  v10 = sub_26C009E0C();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[14];
    goto LABEL_9;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FD60, &unk_26C021210);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[15];
    goto LABEL_9;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[16];
    goto LABEL_9;
  }

  v15 = *(a1 + a3[18]);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_26BFA6D8C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_26C009C8C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = sub_26C009E0C();
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[14];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FD60, &unk_26C021210);
      if (*(*(v13 - 8) + 84) == a3)
      {
        v9 = v13;
        v10 = *(v13 - 8);
        v11 = a4[15];
      }

      else
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[18]) = (a2 - 1);
          return result;
        }

        v9 = result;
        v10 = *(result - 8);
        v11 = a4[16];
      }
    }
  }

  v15 = *(v10 + 56);

  return v15(a1 + v11, a2, a2, v9);
}

void sub_26BFA6F38()
{
  sub_26C009C8C();
  if (v0 <= 0x3F)
  {
    sub_26BFA70B4(319, &qword_28045FD08, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_26C009E0C();
      if (v2 <= 0x3F)
      {
        sub_26BFA7104();
        if (v3 <= 0x3F)
        {
          sub_26BFA6B10();
          if (v4 <= 0x3F)
          {
            sub_26BFA715C(319, &qword_28045FD50, 0x277CBEAE0);
            if (v5 <= 0x3F)
            {
              sub_26BFA715C(319, &qword_28045FD58, 0x277CBEB78);
              if (v6 <= 0x3F)
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

void sub_26BFA70B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_26BFA7104()
{
  if (!qword_28045FD78)
  {
    sub_26C009E0C();
    v0 = sub_26C00AAAC();
    if (!v1)
    {
      atomic_store(v0, &qword_28045FD78);
    }
  }
}

uint64_t sub_26BFA715C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_26BFA71A4()
{
  result = qword_28045FD80;
  if (!qword_28045FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FD80);
  }

  return result;
}

unint64_t sub_26BFA71F8()
{
  result = qword_28045FD88;
  if (!qword_28045FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FD88);
  }

  return result;
}

uint64_t sub_26BFA724C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E528, &qword_26C00E4B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFA72BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFA7324(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BFA7388@<X0>(unint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26BE58870(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 4 * a1;
    *a2 = *(v9 + 32);
    result = memmove((v9 + 32), (v9 + 36), 4 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26BFA7414@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26BE58898(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = &v5[2 * a1];
    v9 = *(v8 + 8);
    v8 += 4;
    v10 = v7 - 1;
    v11 = v8[1];
    *a2 = v9;
    *(a2 + 8) = v11;
    result = memmove(v8, v8 + 2, 16 * (v10 - a1));
    v5[2] = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26BFA74A8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26BE588D4(v3);
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

size_t sub_26BFA7534@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26BE588FC(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(_s14descr287CB9999C9AttributeVMa() - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_26BFA77EC(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t MLS.FilteredDirectPath.pop()(_DWORD *a1)
{
  if (*(*v1 + 16))
  {
    sub_26BFA7764(&v6);
    result = v7;
    if (v7)
    {
      v4 = v6;
    }

    else
    {

      sub_26BFA7414(*(*v1 + 16) - 1, &v8);
      v4 = v8;
      result = v9;
    }

    *a1 = v4;
  }

  else
  {
    sub_26BE8A8B8();
    swift_allocError();
    *v5 = 28;
    return swift_willThrow();
  }

  return result;
}

uint64_t MLS.FilteredDirectPath.insert(node:resolution:)(int *a1, uint64_t a2)
{
  v3 = *a1;

  sub_26BE59EC8(0, 0, v3, a2);
}

uint64_t sub_26BFA7764@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = v3[2];
    if (v5)
    {
LABEL_3:
      v6 = v5 - 1;
      v7 = &v3[2 * v6];
      v8 = *(v7 + 8);
      v9 = v7[5];
      *a1 = v8;
      *(a1 + 8) = v9;
      v3[2] = v6;
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = sub_26BE58898(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFA77EC(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr287CB9999C9AttributeVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t P256SigningSEPPrivateKey.init(data:ciphersuite:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_26C00A18C();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - v12;
  v14 = type metadata accessor for P256VerificationPublicKey(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26C009D3C();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a3 + 32);
  if (*a3 != 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v37 = 131073;
    *(v37 + 112) = 10;
    swift_willThrow();
    goto LABEL_9;
  }

  v46 = a1;
  v47 = a2;
  v25 = *(a3 + 8);
  v26 = *(a3 + 24);
  if (qword_28045DFE0 != -1)
  {
    v44 = v20;
    v42 = v21;
    v43 = v25;
    swift_once();
    v25 = v43;
    v21 = v42;
    v20 = v44;
  }

  if ((byte_28045FDC0 & 1) == 0)
  {

    sub_26BE01654();
    swift_allocError();
    *v38 = 33;
    *(v38 + 8) = 0u;
    *(v38 + 24) = 0u;
    *(v38 + 40) = 0u;
    *(v38 + 56) = 0u;
    *(v38 + 72) = 0u;
    *(v38 + 88) = 0u;
    *(v38 + 104) = 0;
    *(v38 + 112) = 23;
    swift_willThrow();
    return sub_26BE00258(v46, v47);
  }

  *&v43 = v21;
  v44 = v20;
  *a4 = 1;
  *(a4 + 8) = v25;
  *(a4 + 24) = v26;
  *(a4 + 32) = v24;
  a1 = v46;
  a2 = v47;
  sub_26BE00608(v46, v47);
  v27 = v52;
  sub_26C009D1C();
  if (v27)
  {
LABEL_9:
    sub_26BE00258(a1, a2);
  }

  v28 = type metadata accessor for P256SigningSEPPrivateKey(0);
  (*(v43 + 32))(a4 + v28[5], v23, v44);
  v29 = sub_26C009CAC();
  v30 = MEMORY[0x26D698C20](v29);
  v32 = v31;
  (*(v48 + 8))(v13, v49);
  if (*a4 == 1)
  {
    v33 = *(a4 + 24);
    v34 = *(a4 + 32);
    v35 = &v17[*(v14 + 20)];
    *v35 = 1;
    *(v35 + 8) = *(a4 + 8);
    *(v35 + 3) = v33;
    *(v35 + 4) = v34;
    v50 = v30;
    v51 = v32;

    v36 = v45;
    sub_26C00A17C();
    (*(v48 + 32))(v17, v36, v49);
    sub_26BE00258(v46, v47);
    result = sub_26BFAD6EC(v17, a4 + v28[7], type metadata accessor for P256VerificationPublicKey);
    *(a4 + v28[6]) = 1;
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v39 = 131073;
    *(v39 + 112) = 10;
    swift_willThrow();
    sub_26BE00258(v30, v32);
    sub_26BE00258(v46, v47);
    v40 = *(a4 + 32);

    return (*(v43 + 8))(a4 + v28[5], v44);
  }

  return result;
}

uint64_t P256SigningPrivateKey.init(data:ciphersuite:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = sub_26C00A18C();
  v51 = *(v48 - 8);
  v9 = *(v51 + 64);
  v10 = MEMORY[0x28223BE20](v48);
  v47 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = type metadata accessor for P256VerificationPublicKey(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v46 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26C00A0EC();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a3 + 32);
  if (*a3 != 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v36 = 131073;
    *(v36 + 112) = 10;
    swift_willThrow();
    goto LABEL_6;
  }

  v44 = v20;
  v45 = v19;
  v24 = *(a3 + 24);
  *a4 = 1;
  *(a4 + 8) = *(a3 + 8);
  *(a4 + 24) = v24;
  *(a4 + 32) = v23;
  v49 = a1;
  v50 = a2;
  sub_26BE00608(a1, a2);
  sub_26C00A0CC();
  if (v4)
  {
LABEL_6:
    sub_26BE00258(a1, a2);
  }

  v43 = a2;
  v25 = type metadata accessor for P256SigningPrivateKey(0);
  (*(v44 + 32))(a4 + *(v25 + 20), v22, v45);
  v26 = sub_26C00A04C();
  v27 = MEMORY[0x26D698C20](v26);
  v29 = v28;
  v30 = v48;
  (*(v51 + 8))(v13, v48);
  if (*a4 == 1)
  {
    v42 = v25;
    v31 = *(a4 + 24);
    v32 = *(a4 + 32);
    v33 = v46;
    v34 = &v46[*(v14 + 20)];
    *v34 = 1;
    *(v34 + 8) = *(a4 + 8);
    *(v34 + 3) = v31;
    *(v34 + 4) = v32;
    v49 = v27;
    v50 = v29;

    v35 = v47;
    sub_26C00A17C();
    (*(v51 + 32))(v33, v35, v30);
    sub_26BE00258(a1, v43);
    v39 = v42;
    result = sub_26BFAD6EC(v33, a4 + *(v42 + 28), type metadata accessor for P256VerificationPublicKey);
    *(a4 + *(v39 + 24)) = 0;
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v37 = 131073;
    *(v37 + 112) = 10;
    swift_willThrow();
    sub_26BE00258(v27, v29);
    sub_26BE00258(a1, v43);
    v38 = *(a4 + 32);

    return (*(v44 + 8))(a4 + *(v25 + 20), v45);
  }

  return result;
}

uint64_t P256VerificationPublicKey.init(data:ciphersuite:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_26C00A18C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 + 32);
  if (*a3 == 1)
  {
    v23 = v12;
    v16 = *(a3 + 24);
    v20 = *(a3 + 8);
    v17 = a4 + *(type metadata accessor for P256VerificationPublicKey(0) + 20);
    *v17 = 1;
    *(v17 + 8) = v20;
    *(v17 + 24) = v16;
    *(v17 + 32) = v15;
    v21 = a1;
    v22 = a2;
    sub_26C00A17C();
    if (!v4)
    {
      return (*(v10 + 32))(a4, v14, v23);
    }
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v19 = 131073;
    *(v19 + 112) = 10;
    swift_willThrow();
    sub_26BE00258(a1, a2);
  }
}

uint64_t P256SigningPrivateKey.init(ciphersuite:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26C00A18C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v12 = type metadata accessor for P256VerificationPublicKey(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 32);
  if (*a1 != 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v29 = 131073;
    *(v29 + 112) = 10;
    swift_willThrow();
  }

  v17 = *(a1 + 24);
  *a2 = 1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v17;
  *(a2 + 32) = v16;
  v35 = type metadata accessor for P256SigningPrivateKey(0);
  v18 = *(v35 + 20);
  sub_26C00A0DC();
  v19 = sub_26C00A04C();
  v20 = MEMORY[0x26D698C20](v19);
  v21 = v5;
  v22 = v20;
  v24 = v23;
  v36 = v21;
  (*(v21 + 8))(v11, v4);
  if (*a2 == 1)
  {
    v25 = *(a2 + 24);
    v26 = *(a2 + 32);
    v27 = &v15[*(v12 + 20)];
    *v27 = 1;
    *(v27 + 8) = *(a2 + 8);
    *(v27 + 3) = v25;
    *(v27 + 4) = v26;
    v37 = v22;
    v38 = v24;

    v28 = v39;
    sub_26C00A17C();
    if (!v28)
    {
      (*(v36 + 32))(v15, v9, v4);
      v34 = v35;
      result = sub_26BFAD6EC(v15, a2 + *(v35 + 28), type metadata accessor for P256VerificationPublicKey);
      *(a2 + *(v34 + 24)) = 0;
      return result;
    }
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v31 = 131073;
    *(v31 + 112) = 10;
    swift_willThrow();
    sub_26BE00258(v22, v24);
  }

  v32 = *(a2 + 32);

  v33 = sub_26C00A0EC();
  return (*(*(v33 - 8) + 8))(a2 + v18, v33);
}

uint64_t P256SigningSEPPrivateKey.init(ciphersuite:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v53 = a2;
  v3 = sub_26C00A18C();
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  v10 = type metadata accessor for P256VerificationPublicKey(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26C009D3C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 32);
  if (*a1 != 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v27 = 131073;
    *(v27 + 112) = 10;
    swift_willThrow();
  }

  v21 = *(a1 + 8);
  v22 = *(a1 + 24);
  if (qword_28045DFE0 != -1)
  {
    v48 = v17;
    v47 = v21;
    swift_once();
    v21 = v47;
    v17 = v48;
  }

  if (byte_28045FDC0)
  {
    *&v47 = v15;
    v48 = v17;
    v23 = v53;
    *v53 = 1;
    *(v23 + 8) = v21;
    *(v23 + 3) = v22;
    *(v23 + 4) = v20;
    v24 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0, 0);
    if (!v24)
    {
      sub_26BE01654();
      swift_allocError();
      *v30 = 34;
      *(v30 + 8) = 0u;
      *(v30 + 24) = 0u;
      *(v30 + 40) = 0u;
      *(v30 + 56) = 0u;
      *(v30 + 72) = 0u;
      *(v30 + 88) = 0u;
      *(v30 + 104) = 0;
      *(v30 + 112) = 23;
      swift_willThrow();
      v31 = *(v23 + 4);
    }

    v25 = v24;
    v26 = v50;
    sub_26C009D2C();
    if (v26)
    {
    }

    v46 = v25;
    v50 = type metadata accessor for P256SigningSEPPrivateKey(0);
    v32 = v53;
    (*(v47 + 32))(&v53[*(v50 + 20)], v19, v48);
    v33 = sub_26C009CAC();
    v34 = MEMORY[0x26D698C20](v33);
    v36 = v35;
    v37 = v9;
    v38 = v32;
    (*(v49 + 8))(v37, v3);
    if (*v32 == 1)
    {
      v39 = *(v32 + 3);
      v40 = *(v32 + 4);
      v41 = &v13[*(v10 + 20)];
      *v41 = 1;
      *(v41 + 8) = *(v38 + 8);
      *(v41 + 3) = v39;
      *(v41 + 4) = v40;
      v51 = v34;
      v52 = v36;

      sub_26C00A17C();
      (*(v49 + 32))(v13, v7, v3);

      v44 = v50;
      result = sub_26BFAD6EC(v13, &v38[*(v50 + 28)], type metadata accessor for P256VerificationPublicKey);
      v38[*(v44 + 24)] = 1;
    }

    else
    {
      sub_26BE01654();
      swift_allocError();
      *v42 = 131073;
      *(v42 + 112) = 10;
      swift_willThrow();
      sub_26BE00258(v34, v36);

      v43 = *(v32 + 4);

      return (*(v47 + 8))(&v32[*(v50 + 20)], v48);
    }
  }

  else
  {

    sub_26BE01654();
    swift_allocError();
    *v29 = 33;
    *(v29 + 8) = 0u;
    *(v29 + 24) = 0u;
    *(v29 + 40) = 0u;
    *(v29 + 56) = 0u;
    *(v29 + 72) = 0u;
    *(v29 + 88) = 0u;
    *(v29 + 104) = 0;
    *(v29 + 112) = 23;
    return swift_willThrow();
  }

  return result;
}

uint64_t P256DecryptionPrivateKey.init(data:ciphersuite:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = sub_26C009EEC();
  v50 = *(v52 - 8);
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C009EAC();
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_26C00A02C();
  v47 = *(v49 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for P256EncryptionPublicKey(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v46 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26C00A09C();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a3 + 32);
  if (*a3 != 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v29 = 131073;
    *(v29 + 112) = 10;
    swift_willThrow();
    goto LABEL_5;
  }

  v44 = v23;
  v45 = v22;
  v27 = *(a3 + 24);
  *a4 = 1;
  *(a4 + 8) = *(a3 + 8);
  *(a4 + 24) = v27;
  *(a4 + 32) = v26;
  v53 = a1;
  *&v54 = a2;

  sub_26BE00608(a1, a2);
  v28 = v57;
  sub_26C00A06C();
  if (v28)
  {

LABEL_5:
    sub_26BE00258(a1, a2);
  }

  v43 = a1;
  v57 = a2;
  v31 = type metadata accessor for P256DecryptionPrivateKey(0);
  (*(v44 + 32))(a4 + *(v31 + 20), v25, v45);
  v42 = v31;
  *(a4 + *(v31 + 28)) = 0;
  sub_26C00A04C();
  v32 = v48;
  (*(v48 + 16))(v13, v26 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v10);

  v33 = v51;
  sub_26C009E8C();
  (*(v32 + 8))(v13, v10);
  v34 = sub_26C00A00C();
  v35 = (v47 + 8);
  v36 = v34;
  v38 = v37;
  (*(v50 + 8))(v33, v52);
  (*v35)(v16, v49);
  v40 = *(a4 + 24);
  v39 = *(a4 + 32);
  LOBYTE(v53) = *a4;
  v54 = *(a4 + 8);
  v55 = v40;
  v56 = v39;

  v41 = v46;
  P256EncryptionPublicKey.init(data:ciphersuite:)(v36, v38, &v53, v46);
  sub_26BE00258(v43, v57);
  return sub_26BFAD6EC(v41, a4 + *(v42 + 24), type metadata accessor for P256EncryptionPublicKey);
}

uint64_t P256DecryptionSEPPrivateKey.init(data:ciphersuite:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v58 = a4;
  v7 = sub_26C009EEC();
  v54 = *(v7 - 8);
  v8 = *(v54 + 64);
  MEMORY[0x28223BE20](v7);
  v55 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C009EAC();
  v52 = *(v10 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_26C00A02C();
  v51 = *(v53 - 8);
  v14 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for P256EncryptionPublicKey(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v50 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26C009CEC();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a3 + 32);
  if (*a3 != 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v31 = 131073;
    *(v31 + 112) = 10;
    swift_willThrow();
    goto LABEL_8;
  }

  v56 = a1;
  v57 = a2;
  v27 = *(a3 + 8);
  v28 = *(a3 + 24);
  if (qword_28045DFE8 != -1)
  {
    v49 = v22;
    v45 = v23;
    v48 = v27;
    swift_once();
    v27 = v48;
    v23 = v45;
    v22 = v49;
  }

  a1 = v56;
  if (byte_28045FDC1)
  {
    v47 = v7;
    *&v48 = v23;
    v49 = v22;
    v29 = v58;
    *v58 = 1;
    *(v29 + 8) = v27;
    *(v29 + 3) = v28;
    *(v29 + 4) = v26;

    a2 = v57;
    sub_26BE00608(a1, v57);
    v30 = v63;
    sub_26C009CCC();
    if (v30)
    {

LABEL_8:
      sub_26BE00258(a1, a2);
    }

    v34 = type metadata accessor for P256DecryptionSEPPrivateKey(0);
    (*(v48 + 32))(&v29[*(v34 + 20)], v25, v49);
    v63 = v34;
    v29[*(v34 + 28)] = 1;
    sub_26C009CAC();
    v35 = v52;
    (*(v52 + 16))(v13, v26 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v10);

    v36 = v55;
    sub_26C009E8C();
    (*(v35 + 8))(v13, v10);
    v37 = sub_26C00A00C();
    v38 = (v51 + 8);
    v39 = v37;
    v41 = v40;
    (*(v54 + 8))(v36, v47);
    (*v38)(v16, v53);
    v43 = *(v29 + 3);
    v42 = *(v29 + 4);
    v59[0] = *v29;
    v60 = *(v29 + 8);
    v61 = v43;
    v62 = v42;

    v44 = v50;
    P256EncryptionPublicKey.init(data:ciphersuite:)(v39, v41, v59, v50);
    sub_26BE00258(v56, v57);
    return sub_26BFAD6EC(v44, &v29[*(v63 + 24)], type metadata accessor for P256EncryptionPublicKey);
  }

  else
  {

    sub_26BE01654();
    swift_allocError();
    *v33 = 33;
    *(v33 + 8) = 0u;
    *(v33 + 24) = 0u;
    *(v33 + 40) = 0u;
    *(v33 + 56) = 0u;
    *(v33 + 72) = 0u;
    *(v33 + 88) = 0u;
    *(v33 + 104) = 0;
    *(v33 + 112) = 23;
    swift_willThrow();
    return sub_26BE00258(a1, v57);
  }
}

uint64_t P256EncryptionPublicKey.init(data:ciphersuite:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_26C009EEC();
  v56 = *(v8 - 8);
  v9 = *(v56 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v55 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = sub_26C009EAC();
  v61 = *(v58 - 8);
  v12 = *(v61 + 64);
  v13 = MEMORY[0x28223BE20](v58);
  v54 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - v15;
  v17 = sub_26C00A02C();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a3 + 32);
  if (*a3 == 1)
  {
    v49 = v20;
    v50 = v19;
    v51 = v8;
    v24 = a2;
    v25 = *(a3 + 24);
    v53 = *(a3 + 8);
    v46 = type metadata accessor for P256EncryptionPublicKey(0);
    v26 = a4 + *(v46 + 24);
    *v26 = 1;
    *(v26 + 8) = v53;
    *(v26 + 24) = v25;
    *(v26 + 32) = v23;
    v52 = a4;
    *&v53 = v26;
    v59 = a1;
    v60 = v24;
    v27 = v61;
    v28 = *(v61 + 16);
    v47 = OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke;
    v48 = v28;
    v29 = v58;
    v28(v16, v23 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v58);

    sub_26BE00608(a1, v24);
    sub_26C009E8C();
    v30 = *(v27 + 8);
    v31 = v29;
    v61 = v27 + 8;
    v32 = v30;
    v30(v16, v31);
    v33 = v57;
    sub_26C00A03C();
    if (!v33)
    {
      v45 = a1;
      v57 = v24;
      v35 = v52;
      (*(v49 + 32))(v52, v22, v50);
      v36 = v54;
      v37 = v58;
      v48(v54, v23 + v47, v58);

      v38 = v55;
      sub_26C009E8C();
      v32(v36, v37);
      v40 = sub_26C00A00C();
      v42 = v41;
      (*(v56 + 8))(v38, v51);
      result = sub_26BE00258(v45, v57);
      v44 = (v35 + *(v46 + 20));
      *v44 = v40;
      v44[1] = v42;
      return result;
    }

    sub_26BE00258(a1, v24);
    v39 = *(v53 + 32);
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v34 = 131073;
    *(v34 + 112) = 10;
    swift_willThrow();
    sub_26BE00258(a1, a2);
  }
}

uint64_t P256DecryptionPrivateKey.init(ciphersuite:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26C00A09C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = *(a1 + 32);
  if (*a1 == 1)
  {
    v10 = *(a1 + 24);
    v16 = *(a1 + 8);
    sub_26C00A08C();
    v11 = sub_26C00A05C();
    v13 = v12;
    (*(v5 + 8))(v8, v4);
    v17[0] = 1;
    v18 = v16;
    v19 = v10;
    v20 = v9;
    return P256DecryptionPrivateKey.init(data:ciphersuite:)(v11, v13, v17, a2);
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v15 = 131073;
    *(v15 + 112) = 10;
    swift_willThrow();
  }
}

void P256DecryptionSEPPrivateKey.init(ciphersuite:)(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_26C009CEC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = *(a1 + 32);
  if (*a1 != 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v17 = 131073;
    *(v17 + 112) = 10;
    swift_willThrow();

    return;
  }

  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  if (qword_28045DFE8 != -1)
  {
    v22 = v8;
    swift_once();
    v8 = v22;
  }

  if ((byte_28045FDC1 & 1) == 0)
  {

    sub_26BE01654();
    swift_allocError();
    v19 = 33;
LABEL_12:
    *v18 = v19;
    *(v18 + 8) = 0u;
    *(v18 + 24) = 0u;
    *(v18 + 40) = 0u;
    *(v18 + 56) = 0u;
    *(v18 + 72) = 0u;
    *(v18 + 88) = 0u;
    *(v18 + 104) = 0;
    *(v18 + 112) = 23;
    swift_willThrow();
    return;
  }

  v29 = v8;
  v15 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0, 0);
  if (!v15)
  {

    sub_26BE01654();
    swift_allocError();
    v19 = 34;
    goto LABEL_12;
  }

  v16 = v15;
  sub_26C009CDC();
  if (v2)
  {
  }

  else
  {
    v20 = sub_26C009CBC();
    v24[0] = 1;
    v25 = v12;
    v26 = v13;
    v27 = v14;
    v28 = v11;
    P256DecryptionSEPPrivateKey.init(data:ciphersuite:)(v20, v21, v24, a2);
    (*(v6 + 8))(v10, v29);
  }
}

uint64_t P256VerificationPublicKey.ciphersuite.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for P256VerificationPublicKey(0) + 20);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
}

uint64_t P256VerificationPublicKey.verify(signature:message:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v10 = sub_26C00A12C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = a2;
  sub_26BE00608(a1, a2);
  sub_26BE016A8();
  sub_26C00A10C();
  if (!v5)
  {
    v16 = a3;
    v17 = a4;
    v4 = sub_26C00A13C();
    (*(v11 + 8))(v14, v10);
  }

  return v4 & 1;
}

uint64_t static P256VerificationPublicKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x26D698C20]();
  v6 = v5;
  v7 = MEMORY[0x26D698C20]();
  v9 = v8;
  v10 = sub_26BE02DEC(v4, v6, v7, v8);
  sub_26BE00258(v7, v9);
  sub_26BE00258(v4, v6);
  if (v10)
  {
    v11 = type metadata accessor for P256VerificationPublicKey(0);
    v12 = *(a1 + *(v11 + 20)) ^ *(a2 + *(v11 + 20)) ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t P256VerificationPublicKey.hash(into:)()
{
  v1 = MEMORY[0x26D698C20]();
  v3 = v2;
  sub_26C00911C();
  sub_26BE00258(v1, v3);
  *(v0 + *(type metadata accessor for P256VerificationPublicKey(0) + 20));
  return sub_26C00B08C();
}

uint64_t P256VerificationPublicKey.hashValue.getter()
{
  v1 = sub_26C00B05C();
  v2 = MEMORY[0x26D698C20](v1);
  v4 = v3;
  sub_26C00911C();
  sub_26BE00258(v2, v4);
  *(v0 + *(type metadata accessor for P256VerificationPublicKey(0) + 20));
  sub_26C00B08C();
  return sub_26C00B0CC();
}

uint64_t sub_26BFAA370(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v10 = sub_26C00A12C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = a2;
  sub_26BE00608(a1, a2);
  sub_26BE016A8();
  sub_26C00A10C();
  if (!v5)
  {
    v16 = a3;
    v17 = a4;
    v4 = sub_26C00A13C();
    (*(v11 + 8))(v14, v10);
  }

  return v4 & 1;
}

uint64_t sub_26BFAA4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x26D698C20]();
  v8 = v7;
  v9 = MEMORY[0x26D698C20]();
  v11 = v10;
  v12 = sub_26BE02DEC(v6, v8, v9, v10);
  sub_26BE00258(v9, v11);
  sub_26BE00258(v6, v8);
  if (v12)
  {
    v13 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_26BFAA590(uint64_t a1)
{
  v3 = sub_26C00B05C();
  v4 = MEMORY[0x26D698C20](v3);
  v6 = v5;
  sub_26C00911C();
  sub_26BE00258(v4, v6);
  *(v1 + *(a1 + 20));
  sub_26C00B08C();
  return sub_26C00B0CC();
}

uint64_t sub_26BFAA618(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x26D698C20]();
  v6 = v5;
  sub_26C00911C();
  sub_26BE00258(v4, v6);
  *(v2 + *(a2 + 20));
  return sub_26C00B08C();
}

uint64_t sub_26BFAA690(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C00B05C();
  v5 = MEMORY[0x26D698C20](v4);
  v7 = v6;
  sub_26C00911C();
  sub_26BE00258(v5, v7);
  *(v2 + *(a2 + 20));
  sub_26C00B08C();
  return sub_26C00B0CC();
}

uint64_t P256SigningPrivateKey.deviceConstrained.setter(char a1)
{
  result = type metadata accessor for P256SigningPrivateKey(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_26BFAA9D4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t P256DecryptionPrivateKey.deviceConstrained.setter(char a1)
{
  result = type metadata accessor for P256DecryptionPrivateKey(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_26BFAAE2C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t P256EncryptionPublicKey.key.setter(uint64_t a1)
{
  v3 = sub_26C00A02C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t P256EncryptionPublicKey.data.getter()
{
  v1 = v0 + *(type metadata accessor for P256EncryptionPublicKey(0) + 20);
  v2 = *v1;
  sub_26BE00608(*v1, *(v1 + 8));
  return v2;
}

uint64_t P256EncryptionPublicKey.data.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for P256EncryptionPublicKey(0) + 20);
  result = sub_26BE00258(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t P256EncryptionPublicKey.ciphersuite.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for P256EncryptionPublicKey(0) + 24);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
}

__n128 P256EncryptionPublicKey.ciphersuite.setter(char *a1)
{
  v2 = *a1;
  v8 = *(a1 + 8);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = v1 + *(type metadata accessor for P256EncryptionPublicKey(0) + 24);
  v6 = *(v5 + 32);

  *v5 = v2;
  result = v8;
  *(v5 + 8) = v8;
  *(v5 + 24) = v3;
  *(v5 + 32) = v4;
  return result;
}

uint64_t P256EncryptionPublicKey.encryptWithLabel(label:context:pt:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a6;
  v34 = a5;
  v39 = a4;
  v9 = sub_26C009EAC();
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26C00A02C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26C009F9C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v38 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v42;
  v23 = sub_26BE0FF84(a1, a2, a3, v39);
  if (!v22)
  {
    v25 = v23;
    v39 = v19;
    v42 = v18;
    v26 = v34;
    v27 = v37;
    v28 = v24;
    (*(v14 + 16))(v17, v37, v13);
    v29 = type metadata accessor for P256EncryptionPublicKey(0);
    (*(v35 + 16))(v12, *(v27 + *(v29 + 24) + 32) + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v36);
    sub_26BE00608(v25, v28);
    v30 = v38;
    sub_26C009F5C();
    v40 = v26;
    v41 = v33;
    sub_26BE016A8();
    v13 = sub_26C009F8C();
    sub_26C009F6C();
    sub_26BE00258(v25, v28);
    (*(v39 + 8))(v30, v42);
  }

  return v13;
}

uint64_t P256EncryptionPublicKey.encryptWithInfoAndAAD(info:aad:pt:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a6;
  v31 = a4;
  v28 = a5;
  v29 = a3;
  v32 = a1;
  v33 = a2;
  v7 = sub_26C009EAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26C00A02C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26C009F9C();
  v27 = *(v17 - 8);
  v18 = *(v27 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v6, v12);
  v21 = type metadata accessor for P256EncryptionPublicKey(0);
  (*(v8 + 16))(v11, *(v6 + *(v21 + 24) + 32) + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v7);
  v22 = v33;
  sub_26BE00608(v32, v33);
  v23 = v38;
  sub_26C009F5C();
  if (!v23)
  {
    v24 = v27;
    v36 = v28;
    v37 = v30;
    v34 = v29;
    v35 = v31;
    sub_26BE016A8();
    v22 = sub_26C009F7C();
    sub_26C009F6C();
    (*(v24 + 8))(v20, v17);
  }

  return v22;
}

uint64_t P256EncryptionPublicKey.sendExport(label:outputByteCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v38 = a2;
  v39 = a3;
  v36 = a1;
  v5 = sub_26C00A4EC();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v5);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C009EAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26C00A02C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26C009F9C();
  v43 = *(v18 - 8);
  v19 = *(v43 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v4, v13);
  v22 = type metadata accessor for P256EncryptionPublicKey(0);
  (*(v9 + 16))(v12, *(v4 + *(v22 + 24) + 32) + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v8);
  v23 = v46;
  sub_26C009F5C();
  if (!v23)
  {
    v46 = v18;
    v35 = 0;
    v8 = sub_26C009F6C();
    v25 = v24;
    v44 = 0x20302E3120534C4DLL;
    v45 = 0xE800000000000000;
    MEMORY[0x26D699090](v38, v39);
    v26 = v40;
    sub_26C00A4DC();
    v27 = sub_26C00A49C();
    v29 = v28;

    (*(v41 + 8))(v26, v42);
    if (v29 >> 60 == 15)
    {
      sub_26BE01654();
      swift_allocError();
      *v30 = 5;
      v30[112] = 1;
      swift_willThrow();
      sub_26BE00258(v8, v25);
      (*(v43 + 8))(v21, v46);
    }

    else
    {
      v44 = v27;
      v45 = v29;
      sub_26BE016A8();
      v31 = v35;
      sub_26C009F4C();
      v32 = v46;
      if (v31)
      {
        sub_26BE00258(v8, v25);
      }

      sub_26BE00258(v44, v45);
      (*(v43 + 8))(v21, v32);
    }
  }

  return v8;
}

uint64_t static P256EncryptionPublicKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x26D698AB0]();
  v6 = v5;
  v7 = MEMORY[0x26D698AB0]();
  v9 = v8;
  v10 = sub_26BE02DEC(v4, v6, v7, v8);
  sub_26BE00258(v7, v9);
  sub_26BE00258(v4, v6);
  if (v10)
  {
    v11 = type metadata accessor for P256EncryptionPublicKey(0);
    v12 = *(a1 + *(v11 + 24)) ^ *(a2 + *(v11 + 24)) ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t P256EncryptionPublicKey.hash(into:)()
{
  v1 = MEMORY[0x26D698AD0]();
  v3 = v2;
  sub_26C00911C();
  sub_26BE00258(v1, v3);
  *(v0 + *(type metadata accessor for P256EncryptionPublicKey(0) + 24));
  return sub_26C00B08C();
}

uint64_t P256EncryptionPublicKey.hashValue.getter()
{
  v1 = sub_26C00B05C();
  v2 = MEMORY[0x26D698AD0](v1);
  v4 = v3;
  sub_26C00911C();
  sub_26BE00258(v2, v4);
  *(v0 + *(type metadata accessor for P256EncryptionPublicKey(0) + 24));
  sub_26C00B08C();
  return sub_26C00B0CC();
}

uint64_t sub_26BFABDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void))
{
  result = a9();
  if (v9)
  {
    return v11;
  }

  return result;
}

uint64_t sub_26BFABE14(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  v3 = *v2;
  sub_26BE00608(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_26BFABE68(uint64_t a1)
{
  v3 = sub_26C00B05C();
  v4 = MEMORY[0x26D698AD0](v3);
  v6 = v5;
  sub_26C00911C();
  sub_26BE00258(v4, v6);
  *(v1 + *(a1 + 24));
  sub_26C00B08C();
  return sub_26C00B0CC();
}

uint64_t sub_26BFABEF0(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x26D698AD0]();
  v6 = v5;
  sub_26C00911C();
  sub_26BE00258(v4, v6);
  *(v2 + *(a2 + 24));
  return sub_26C00B08C();
}

uint64_t sub_26BFABF68(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C00B05C();
  v5 = MEMORY[0x26D698AD0](v4);
  v7 = v6;
  sub_26C00911C();
  sub_26BE00258(v5, v7);
  *(v2 + *(a2 + 24));
  sub_26C00B08C();
  return sub_26C00B0CC();
}

uint64_t sub_26BFABFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x26D698AB0]();
  v8 = v7;
  v9 = MEMORY[0x26D698AB0]();
  v11 = v10;
  v12 = sub_26BE02DEC(v6, v8, v9, v10);
  sub_26BE00258(v9, v11);
  sub_26BE00258(v6, v8);
  if (v12)
  {
    v13 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t P256SigningSEPPrivateKey.deviceConstrained.setter(char a1)
{
  result = type metadata accessor for P256SigningSEPPrivateKey(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_26BFAC284()
{
  result = sub_26C009C9C();
  byte_28045FDC0 = result & 1;
  return result;
}

uint64_t sub_26BFAC378(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void *, void, unint64_t))
{
  v10 = sub_26C00A12C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3(0) + 20);
  v19[0] = a1;
  v19[1] = a2;
  v16 = sub_26BE016A8();
  v17 = v4 + v15;
  a4(v19, MEMORY[0x277CC9318], v16);
  if (!v5)
  {
    v17 = sub_26C00A0FC();
    (*(v11 + 8))(v14, v10);
  }

  return v17;
}

uint64_t sub_26BFAC4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, void, unint64_t))
{
  v11 = sub_26C00A12C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 20);
  v20[0] = a1;
  v20[1] = a2;
  v17 = sub_26BE016A8();
  v18 = v5 + v16;
  a5(v20, MEMORY[0x277CC9318], v17);
  if (!v6)
  {
    v18 = sub_26C00A0FC();
    (*(v12 + 8))(v15, v11);
  }

  return v18;
}

__n128 _s8SwiftMLS24P256DecryptionPrivateKeyV11ciphersuiteAA0B0O12CryptographyO11CiphersuiteVvs_0(char *a1)
{
  v2 = *a1;
  v7 = *(a1 + 8);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = *(v1 + 32);

  *v1 = v2;
  result = v7;
  *(v1 + 8) = v7;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t sub_26BFAC754(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = *(a2(0) + 20);
  v7 = a3(0);
  v8 = *(*(v7 - 8) + 40);

  return v8(v3 + v6, a1, v7);
}

uint64_t P256DecryptionSEPPrivateKey.deviceConstrained.setter(char a1)
{
  result = type metadata accessor for P256DecryptionSEPPrivateKey(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_26BFACA08()
{
  result = sub_26C009C9C();
  byte_28045FDC1 = result & 1;
  return result;
}

uint64_t sub_26BFACA50(void *a1, unsigned __int8 *a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_26BFACAE8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t (*a9)(void), uint64_t (*a10)(void), uint64_t a11)
{
  v45 = a7;
  v46 = a8;
  v38 = a5;
  v39 = a6;
  v42 = sub_26C009EAC();
  v40 = *(v42 - 8);
  v15 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a9(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - v20;
  v22 = sub_26C009FEC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v43 = &v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v49;
  v27 = sub_26BE0FF84(a1, a2, a3, a4);
  if (!v26)
  {
    v29 = v27;
    v30 = v28;
    v36 = v23;
    v37 = v22;
    v49 = a11;
    v31 = a10(0);
    v32 = v44;
    (*(v18 + 16))(v21, v44 + *(v31 + 20), v17);
    (*(v40 + 16))(v41, *(v32 + 32) + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v42);
    sub_26BE00608(v29, v30);
    sub_26BE00608(v45, v46);
    v33 = v43;
    sub_26C009FAC();
    v47 = v38;
    v48 = v39;
    sub_26BE016A8();
    a2 = sub_26C009FDC();
    (*(v36 + 8))(v33, v37);
    sub_26BE00258(v29, v30);
  }

  return a2;
}

uint64_t sub_26BFACEA4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t (*a9)(void), uint64_t (*a10)(void), uint64_t a11)
{
  v12 = v11;
  v41 = a7;
  v42 = a8;
  v36 = a6;
  v37 = a4;
  v34 = a5;
  v35 = a3;
  v39 = a1;
  v40 = a2;
  v43 = a11;
  v38 = a10;
  v13 = sub_26C009EAC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a9(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v32 - v21;
  v23 = sub_26C009FEC();
  v33 = *(v23 - 8);
  v24 = *(v33 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v38(0);
  (*(v19 + 16))(v22, v12 + *(v27 + 20), v18);
  (*(v14 + 16))(v17, *(v12 + 32) + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v13);
  sub_26BE00608(v39, v40);
  v28 = v42;
  sub_26BE00608(v41, v42);
  v29 = v48;
  sub_26C009FAC();
  if (!v29)
  {
    v30 = v33;
    v46 = v34;
    v47 = v36;
    v44 = v35;
    v45 = v37;
    sub_26BE016A8();
    v28 = sub_26C009FCC();
    (*(v30 + 8))(v26, v23);
  }

  return v28;
}

uint64_t sub_26BFAD204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v51 = a8;
  v45 = a7;
  v46 = a4;
  v47 = a5;
  v39[2] = a3;
  v40 = a1;
  v41 = a2;
  v39[1] = a9;
  v11 = sub_26C00A4EC();
  v43 = *(v11 - 8);
  v44 = v11;
  v12 = *(v43 + 64);
  MEMORY[0x28223BE20](v11);
  v42 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26C009EAC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a6(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v39 - v22;
  v24 = sub_26C009FEC();
  v39[0] = *(v24 - 8);
  v25 = *(v39[0] + 64);
  MEMORY[0x28223BE20](v24);
  v27 = v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v45(0);
  (*(v20 + 16))(v23, v9 + *(v28 + 20), v19);
  (*(v15 + 16))(v18, *(v9 + 32) + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v14);
  sub_26BE00608(v46, v47);
  v29 = v48;
  result = sub_26C009FAC();
  if (!v29)
  {
    v31 = v39[0];
    v51 = v24;
    v49 = 0x20302E3120534C4DLL;
    v50 = 0xE800000000000000;
    MEMORY[0x26D699090](v40, v41);
    v32 = v42;
    sub_26C00A4DC();
    v33 = sub_26C00A49C();
    v35 = v34;

    (*(v43 + 8))(v32, v44);
    if (v35 >> 60 == 15)
    {
      sub_26BE01654();
      swift_allocError();
      *v36 = 5;
      v36[112] = 1;
      swift_willThrow();
      return (*(v31 + 8))(v27, v51);
    }

    else
    {
      v49 = v33;
      v50 = v35;
      sub_26BE016A8();
      v37 = v27;
      sub_26C009FBC();
      v38 = v51;
      sub_26BE00258(v49, v50);
      return (*(v31 + 8))(v37, v38);
    }
  }

  return result;
}

uint64_t sub_26BFAD6EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFAD774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFAD7DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFAD844(uint64_t a1)
{
  result = sub_26BFAD8F4(&qword_28045FDC8, type metadata accessor for P256VerificationPublicKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26BFAD89C(uint64_t a1)
{
  result = sub_26BFAD8F4(&qword_28045FDD0, type metadata accessor for P256VerificationPublicKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26BFAD8F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BFAD9CC(uint64_t a1)
{
  result = sub_26BFAD8F4(&qword_28045FDE0, type metadata accessor for P256SigningPrivateKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26BFADAB4(uint64_t a1)
{
  result = sub_26BFAD8F4(&qword_28045FDE8, type metadata accessor for P256DecryptionPrivateKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26BFADB54(uint64_t a1)
{
  result = sub_26BFAD8F4(&qword_28045FDF0, type metadata accessor for P256EncryptionPublicKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26BFADBAC(uint64_t a1)
{
  result = sub_26BFAD8F4(&qword_28045FDF8, type metadata accessor for P256EncryptionPublicKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26BFADC4C(uint64_t a1)
{
  result = sub_26BFAD8F4(&qword_28045FE08, type metadata accessor for P256SigningSEPPrivateKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26BFADCA4(uint64_t a1)
{
  result = sub_26BFAD8F4(&qword_28045FE10, type metadata accessor for P256DecryptionSEPPrivateKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26BFADD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C00A18C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 32);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26BFADDE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26C00A18C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 32) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26BFADEA0()
{
  result = sub_26C00A18C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BFAE008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C00A02C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 32);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26BFAE0DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26C00A02C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 32) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26BFAE198()
{
  result = sub_26C00A02C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_20Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for P256VerificationPublicKey(0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_21Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v9 = a5(0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(v10 + 56);
      v13 = v6 + *(a4 + 20);

      return v12(v13, a2, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for P256VerificationPublicKey(0);
      v15 = *(*(v14 - 8) + 56);
      v16 = v6 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_26BFAE4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for P256VerificationPublicKey(319);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_29Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for P256EncryptionPublicKey(0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_30Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v9 = a5(0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(v10 + 56);
      v13 = v6 + *(a4 + 20);

      return v12(v13, a2, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for P256EncryptionPublicKey(0);
      v15 = *(*(v14 - 8) + 56);
      v16 = v6 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_26BFAE83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for P256EncryptionPublicKey(319);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 MLS.AddProposal.init(keyPackage:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v2;
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = *(a1 + 176);
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  v4 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v4;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_26BFAE974(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v6 != 2)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v9 = *(v2 + 16);
  v8 = *(v2 + 24);
  v7 = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v7 = HIDWORD(v2) - v2;
  }

LABEL_11:
  result = sub_26BF30414(v7);
  if (!v1)
  {
    v11 = result;
    sub_26BE11228(v2, v3);
    v12 = __OFADD__(v11, v7);
    v13 = v11 + v7;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      v29 = 256;
      v14 = MEMORY[0x277D838B0];
      v15 = MEMORY[0x277CC9C18];
      v32 = MEMORY[0x277D838B0];
      v33 = MEMORY[0x277CC9C18];
      *&v30 = &v29;
      *(&v30 + 1) = &v30;
      v16 = __swift_project_boxed_opaque_existential_1(&v30, MEMORY[0x277D838B0]);
      v18 = *v16;
      v17 = v16[1];
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v30);
      v12 = __OFADD__(v13, 2);
      v19 = v13 + 2;
      if (!v12)
      {
        v29 = __rev16(v4);
        v32 = v14;
        v33 = v15;
        *&v30 = &v29;
        *(&v30 + 1) = &v30;
        v20 = __swift_project_boxed_opaque_existential_1(&v30, v14);
        v22 = *v20;
        v21 = v20[1];
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v30);
        v23 = v19 + 2;
        if (!__OFADD__(v19, 2))
        {
          v30 = xmmword_26C00BBD0;
          v31 = 0;
          v24 = sub_26BEEAC24(0, v5);
          v25 = v24;
          v27 = sub_26BF30414(v24);
          sub_26BF2A30C(&v30);
          sub_26BE00258(v30, *(&v30 + 1));
          v28 = v27 + v25;
          if (!__OFADD__(v27, v25))
          {
            result = v23 + v28;
            if (!__OFADD__(v23, v28))
            {
              goto LABEL_16;
            }

LABEL_25:
            __break(1u);
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_16:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BFAEB6C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v72 = *MEMORY[0x277D85DE8];
  result = sub_26BF2F7B0();
  if (v2)
  {
    goto LABEL_13;
  }

  v7 = result;
  v8 = v6;
  v9 = sub_26BEE6180();
  if ((v9 & 0x10000) != 0)
  {
    goto LABEL_11;
  }

  if (v9 != 1)
  {
    sub_26BE01600();
    swift_allocError();
    v15 = 5;
LABEL_12:
    *v14 = v15;
    swift_willThrow();
    result = sub_26BE00258(v7, v8);
    goto LABEL_13;
  }

  v10 = sub_26BEE6180();
  if ((v10 & 0x10000) != 0)
  {
LABEL_11:
    sub_26BE01600();
    swift_allocError();
    v15 = 1;
    goto LABEL_12;
  }

  v66 = v10;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  sub_26BE00608(*v1, v12);
  sub_26BE00608(v11, v12);
  sub_26BF30764(v1, &v69);
  if (v70)
  {
    sub_26BE00258(*v1, v1[1]);
    *v1 = v11;
    v1[1] = v12;
    v16 = v12;
    v17 = v11;
    v1[2] = v13;
LABEL_10:
    sub_26BE00258(v17, v16);
    *v3 = v11;
    v3[1] = v12;
    v3[2] = v13;
    goto LABEL_11;
  }

  v19 = v69;
  sub_26BE00258(v11, v12);
  if (v19 <= 100000000)
  {
    v21 = sub_26BF2A44C(v19);
    if (v22 >> 60 == 15)
    {
      v17 = *v3;
      v16 = v3[1];
      goto LABEL_10;
    }

    v69 = v21;
    v70 = v22;
    v24 = v22 >> 62;
    v56 = v21 >> 32;
    v65 = MEMORY[0x277D84F90];
    v57 = BYTE6(v22);
    v58 = v22 >> 62;
    v71 = v23;
    v60 = v12;
    v61 = v13;
    v62 = v11;
    v59 = v21;
    if ((v22 >> 62) > 1)
    {
      goto LABEL_21;
    }

LABEL_19:
    v25 = v57;
    if (v24)
    {
      v25 = v56;
    }

    while (1)
    {
      v26 = __OFSUB__(v25, v23);
      v27 = v25 - v23;
      if (v26)
      {
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
      }

      if (v27 < 1)
      {
        result = v69;
        v52 = v70 >> 62;
        if ((v70 >> 62) > 1)
        {
          if (v52 == 2)
          {
            v53 = *(v69 + 24);
          }

          else
          {
            v53 = 0;
          }
        }

        else if (v52)
        {
          v53 = v69 >> 32;
        }

        else
        {
          v53 = BYTE6(v70);
        }

        if (__OFSUB__(v53, v23))
        {
          __break(1u);
          return result;
        }

        if (v53 != v23)
        {
          sub_26BE01654();
          swift_allocError();
          *v55 = 0;
          v55[112] = 1;
          swift_willThrow();

          sub_26BE00258(v69, v70);
          goto LABEL_6;
        }

        sub_26BE00258(v69, v70);
        result = sub_26BE00258(v11, v12);
        *a1 = v7;
        *(a1 + 8) = v8;
        *(a1 + 16) = v66;
        *(a1 + 24) = v65;
        goto LABEL_13;
      }

      v28 = v23 + 2;
      if (__OFADD__(v23, 2))
      {
        goto LABEL_77;
      }

      v30 = v69;
      v29 = v70;
      v31 = v70 >> 62;
      if ((v70 >> 62) <= 1)
      {
        break;
      }

      if (v31 == 2)
      {
        v32 = *(v69 + 24);
        goto LABEL_33;
      }

      if (v28 > 0)
      {
        goto LABEL_68;
      }

LABEL_36:
      v67 = v69;
      v68 = v70;
      if (v28 < v23)
      {
        goto LABEL_78;
      }

      sub_26BE00608(v69, v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
      v64 = v29;
      sub_26BE016A8();
      v63 = v30;
      sub_26BE016FC();
      v33 = v29;
      sub_26C008E1C();
      sub_26BE00258(v67, v68);
      v71 = v28;
      sub_26BE00608(v30, v29);
      sub_26BE00608(v30, v29);
      sub_26BF30764(&v69, &v67);
      if (v68)
      {
        sub_26BE00258(v69, v70);
        v37 = v29;
        v36 = v30;
LABEL_67:
        sub_26BE00258(v36, v37);
        v69 = v30;
        v70 = v33;
        v71 = v28;
LABEL_68:
        sub_26BE01600();
        swift_allocError();
        *v54 = 1;
        swift_willThrow();

        sub_26BE00258(v69, v70);
        v13 = v61;
        v11 = v62;
        goto LABEL_6;
      }

      v34 = v67;
      sub_26BE00258(v30, v33);
      v26 = __OFADD__(v71, v34);
      v35 = v71 + v34;
      if (v26)
      {
        goto LABEL_79;
      }

      v36 = v69;
      v37 = v70;
      v38 = v70 >> 62;
      if ((v70 >> 62) <= 1)
      {
        if (v38)
        {
          v39 = v69 >> 32;
        }

        else
        {
          v39 = BYTE6(v70);
        }

LABEL_45:
        if (v39 < v35)
        {
          goto LABEL_67;
        }

        goto LABEL_48;
      }

      if (v38 == 2)
      {
        v39 = *(v69 + 24);
        goto LABEL_45;
      }

      if (v35 > 0)
      {
        goto LABEL_67;
      }

LABEL_48:
      if (v35 < v71)
      {
        goto LABEL_80;
      }

      v40 = sub_26C00909C();
      v41 = v40;
      v43 = v42;
      v71 = v35;
      v44 = v42 >> 62;
      if ((v42 >> 62) > 1)
      {
        if (v44 != 2)
        {
          goto LABEL_56;
        }

        v40 = *(v40 + 16);
        v45 = *(v41 + 24);
      }

      else
      {
        if (!v44)
        {
          goto LABEL_56;
        }

        v40 = v40;
        v45 = v41 >> 32;
      }

      if (v45 < v40)
      {
        goto LABEL_81;
      }

LABEL_56:
      v46 = sub_26C00909C();
      v48 = v47;
      sub_26BE00258(v41, v43);
      sub_26BE00258(v63, v64);
      sub_26BE00608(v46, v48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_26BEEBD8C(0, *(v65 + 2) + 1, 1, v65);
      }

      v50 = *(v65 + 2);
      v49 = *(v65 + 3);
      if (v50 >= v49 >> 1)
      {
        v65 = sub_26BEEBD8C((v49 > 1), v50 + 1, 1, v65);
      }

      sub_26BE00258(v46, v48);
      *(v65 + 2) = v50 + 1;
      v51 = &v65[24 * v50];
      *(v51 + 16) = bswap32(0) >> 16;
      *(v51 + 5) = v46;
      *(v51 + 6) = v48;
      v12 = v60;
      v13 = v61;
      v11 = v62;
      v23 = v35;
      LODWORD(v24) = v58;
      v21 = v59;
      if (v58 <= 1)
      {
        goto LABEL_19;
      }

LABEL_21:
      if (v24 == 2)
      {
        v25 = *(v21 + 24);
      }

      else
      {
        v25 = 0;
      }
    }

    if (v31)
    {
      v32 = v69 >> 32;
    }

    else
    {
      v32 = BYTE6(v70);
    }

LABEL_33:
    if (v32 < v28)
    {
      goto LABEL_68;
    }

    goto LABEL_36;
  }

  sub_26BE01600();
  swift_allocError();
  *v20 = 5;
  swift_willThrow();
LABEL_6:
  sub_26BE00258(*v3, v3[1]);
  *v3 = v11;
  v3[1] = v12;
  v3[2] = v13;
  swift_willThrow();
  result = sub_26BE00258(v7, v8);
LABEL_13:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MLS.ReInitProposal.init(groupID:version:ciphersuite:extensions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, __int16 *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v5 = *a3;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = v5;
  *(a5 + 24) = a4;
  return result;
}

uint64_t sub_26BFAF280(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v11 = *(v2 + 16);
  v10 = *(v2 + 24);
  v9 = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v9 = HIDWORD(v2) - v2;
  }

LABEL_11:
  result = sub_26BF30414(v9);
  if (!v1)
  {
    v13 = result;
    sub_26BE11228(v2, v3);
    v14 = __OFADD__(v13, v9);
    v15 = v13 + v9;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      v33 = bswap64(v4);
      v16 = MEMORY[0x277D838B0];
      v17 = MEMORY[0x277CC9C18];
      v36 = MEMORY[0x277D838B0];
      v37 = MEMORY[0x277CC9C18];
      v34 = &v33;
      v35 = &v34;
      v18 = __swift_project_boxed_opaque_existential_1(&v34, MEMORY[0x277D838B0]);
      v20 = *v18;
      v19 = v18[1];
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v34);
      v14 = __OFADD__(v15, 8);
      v21 = v15 + 8;
      if (!v14)
      {
        LOBYTE(v33) = v5;
        v36 = v16;
        v37 = v17;
        v34 = &v33;
        v35 = (&v33 + 1);
        v22 = __swift_project_boxed_opaque_existential_1(&v34, v16);
        v24 = *v22;
        v23 = v22[1];
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v34);
        v25 = v21 + 1;
        if (!__OFADD__(v21, 1))
        {
          v26 = v7 >> 62;
          if ((v7 >> 62) > 1)
          {
            if (v26 != 2)
            {
              v27 = 0;
              goto LABEL_27;
            }

            v29 = *(v6 + 16);
            v28 = *(v6 + 24);
            v27 = v28 - v29;
            if (!__OFSUB__(v28, v29))
            {
              goto LABEL_27;
            }

            __break(1u);
          }

          else if (!v26)
          {
            v27 = BYTE6(v7);
            goto LABEL_27;
          }

          if (__OFSUB__(HIDWORD(v6), v6))
          {
            goto LABEL_36;
          }

          v27 = HIDWORD(v6) - v6;
LABEL_27:
          v31 = sub_26BF30414(v27);
          sub_26BE11228(v6, v7);
          v32 = v31 + v27;
          if (!__OFADD__(v31, v27))
          {
            result = v25 + v32;
            if (!__OFADD__(v25, v32))
            {
              goto LABEL_26;
            }

            goto LABEL_35;
          }

LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
        }

        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_26:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BFAF494(void *a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v48 = a1[5];
  v49 = a1[3];
  v45 = a1[6];
  v46 = a1[7];
  v47 = a1[4];
  v44 = a1[8];
  LOWORD(v50) = 256;
  v5 = MEMORY[0x277D838B0];
  v6 = MEMORY[0x277CC9C18];
  v53 = MEMORY[0x277D838B0];
  v54 = MEMORY[0x277CC9C18];
  *&v51 = &v50;
  *(&v51 + 1) = &v50 + 2;
  v7 = __swift_project_boxed_opaque_existential_1(&v51, MEMORY[0x277D838B0]);
  v9 = *v7;
  v8 = v7[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v51);
  LOWORD(v50) = bswap32(v2) >> 16;
  v53 = v5;
  v54 = v6;
  *&v51 = &v50;
  *(&v51 + 1) = &v50 + 2;
  v10 = __swift_project_boxed_opaque_existential_1(&v51, v5);
  v12 = *v10;
  v11 = v10[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v51);
  v13 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v13)
    {
      v14 = BYTE6(v4);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v13 != 2)
  {
    v14 = 0;
    goto LABEL_11;
  }

  v16 = *(v3 + 16);
  v15 = *(v3 + 24);
  v14 = v15 - v16;
  if (__OFSUB__(v15, v16))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v3), v3))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v14 = HIDWORD(v3) - v3;
  }

LABEL_11:
  result = sub_26BF30414(v14);
  if (!v1)
  {
    v18 = result;
    sub_26BE11228(v3, v4);
    v19 = v18 + v14;
    if (__OFADD__(v18, v14))
    {
      __break(1u);
    }

    else
    {
      v20 = v19 + 4;
      if (!__OFADD__(v19, 4))
      {
        v53 = v5;
        v54 = v6;
        v50 = bswap64(v49);
        *&v51 = &v50;
        *(&v51 + 1) = &v51;
        v21 = __swift_project_boxed_opaque_existential_1(&v51, v5);
        v23 = *v21;
        v22 = v21[1];
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v51);
        v24 = v20 + 8;
        if (!__OFADD__(v20, 8))
        {
          v25 = v48 >> 62;
          if ((v48 >> 62) > 1)
          {
            if (v25 != 2)
            {
              v26 = 0;
              goto LABEL_25;
            }

            v28 = *(v47 + 16);
            v27 = *(v47 + 24);
            v26 = v27 - v28;
            if (!__OFSUB__(v27, v28))
            {
LABEL_25:
              v29 = sub_26BF30414(v26);
              sub_26BE11228(v47, v48);
              v30 = v29 + v26;
              if (!__OFADD__(v29, v26))
              {
                v31 = v24 + v30;
                if (!__OFADD__(v24, v30))
                {
                  v32 = v46 >> 62;
                  if ((v46 >> 62) > 1)
                  {
                    if (v32 != 2)
                    {
                      v33 = 0;
                      goto LABEL_37;
                    }

                    v35 = *(v45 + 16);
                    v34 = *(v45 + 24);
                    v33 = v34 - v35;
                    if (!__OFSUB__(v34, v35))
                    {
LABEL_37:
                      v36 = sub_26BF30414(v33);
                      sub_26BE11228(v45, v46);
                      v37 = v36 + v33;
                      if (!__OFADD__(v36, v33))
                      {
                        v38 = v31 + v37;
                        if (!__OFADD__(v31, v37))
                        {
                          v51 = xmmword_26C00BBD0;
                          v52 = 0;
                          v39 = sub_26BEEAC24(0, v44);
                          v40 = v39;
                          v42 = sub_26BF30414(v39);
                          sub_26BF2A30C(&v51);
                          sub_26BE00258(v51, *(&v51 + 1));
                          v43 = v42 + v40;
                          if (!__OFADD__(v42, v40))
                          {
                            result = v38 + v43;
                            if (!__OFADD__(v38, v43))
                            {
                              goto LABEL_40;
                            }

LABEL_55:
                            __break(1u);
                          }

LABEL_54:
                          __break(1u);
                          goto LABEL_55;
                        }

                        goto LABEL_52;
                      }

LABEL_51:
                      __break(1u);
LABEL_52:
                      __break(1u);
                      goto LABEL_53;
                    }

                    __break(1u);
                  }

                  else if (!v32)
                  {
                    v33 = BYTE6(v46);
                    goto LABEL_37;
                  }

                  if (__OFSUB__(HIDWORD(v45), v45))
                  {
LABEL_53:
                    __break(1u);
                    goto LABEL_54;
                  }

                  v33 = HIDWORD(v45) - v45;
                  goto LABEL_37;
                }

                goto LABEL_49;
              }

LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            __break(1u);
          }

          else if (!v25)
          {
            v26 = BYTE6(v48);
            goto LABEL_25;
          }

          if (__OFSUB__(HIDWORD(v47), v47))
          {
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          v26 = HIDWORD(v47) - v47;
          goto LABEL_25;
        }

        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_40:
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BFAF814@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v87 = *MEMORY[0x277D85DE8];
  v5 = sub_26BEE6180();
  if ((v5 & 0x10000) != 0)
  {
    goto LABEL_7;
  }

  if (v5 != 1)
  {
    sub_26BE01600();
    swift_allocError();
    v16 = 5;
    goto LABEL_9;
  }

  v6 = sub_26BEE6180();
  if ((v6 & 0x10000) != 0)
  {
LABEL_7:
    sub_26BE01600();
    swift_allocError();
    v16 = 1;
LABEL_9:
    *v15 = v16;
    result = swift_willThrow();
    goto LABEL_10;
  }

  v7 = v6;
  result = sub_26BF2F7B0();
  if (!v2)
  {
    v10 = result;
    v11 = v9;
    v12 = sub_26BEEE594();
    if (v13)
    {
      sub_26BE01600();
      swift_allocError();
      *v14 = 1;
      swift_willThrow();
      result = sub_26BE00258(v10, v11);
      goto LABEL_10;
    }

    v18 = v12;
    v80 = sub_26BF2F7B0();
    v81 = v19;
    v77 = v18;
    v78 = sub_26BF2F7B0();
    v79 = v20;
    v21 = *v1;
    v22 = v3[1];
    v23 = v3[2];
    sub_26BE00608(*v3, v22);
    sub_26BE00608(v21, v22);
    sub_26BF30764(v3, &v84);
    v76 = v22;
    v71 = v23;
    if (v85)
    {
      sub_26BE00258(*v3, v3[1]);
      v24 = v22;
      *v3 = v21;
      v3[1] = v22;
      v25 = v22;
      v26 = v21;
      v27 = v23;
      v3[2] = v23;
LABEL_15:
      sub_26BE00258(v26, v25);
      *v3 = v21;
      v3[1] = v24;
      v3[2] = v27;
      sub_26BE01600();
      swift_allocError();
      *v28 = 1;
LABEL_16:
      swift_willThrow();
      sub_26BE00258(v10, v11);
      sub_26BE00258(v78, v79);
      result = sub_26BE00258(v80, v81);
      goto LABEL_10;
    }

    v29 = v21;
    v30 = v84;
    v69 = v29;
    sub_26BE00258(v29, v22);
    if (v30 > 100000000)
    {
      sub_26BE01600();
      swift_allocError();
      *v31 = 5;
      swift_willThrow();
      v32 = v69;
LABEL_12:
      sub_26BE00258(*v3, v3[1]);
      *v3 = v32;
      v3[1] = v22;
      v3[2] = v23;
      goto LABEL_16;
    }

    result = sub_26BF2A44C(v30);
    if (v33 >> 60 == 15)
    {
      v26 = *v3;
      v25 = v3[1];
      v21 = v69;
      v27 = v23;
      v24 = v22;
      goto LABEL_15;
    }

    v84 = result;
    v85 = v33;
    v35 = v33 >> 62;
    v65 = result >> 32;
    v75 = MEMORY[0x277D84F90];
    v66 = BYTE6(v33);
    v67 = v33 >> 62;
    v86 = v34;
    v68 = result;
    if ((v33 >> 62) > 1)
    {
      goto LABEL_24;
    }

LABEL_22:
    v36 = v66;
    if (v35)
    {
      v36 = v65;
    }

    while (1)
    {
      v37 = __OFSUB__(v36, v34);
      v38 = v36 - v34;
      if (v37)
      {
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
        goto LABEL_86;
      }

      if (v38 < 1)
      {
        result = v84;
        v61 = v85 >> 62;
        if ((v85 >> 62) > 1)
        {
          if (v61 == 2)
          {
            v62 = *(v84 + 24);
          }

          else
          {
            v62 = 0;
          }
        }

        else if (v61)
        {
          v62 = v84 >> 32;
        }

        else
        {
          v62 = BYTE6(v85);
        }

        if (!__OFSUB__(v62, v34))
        {
          if (v62 != v34)
          {
            sub_26BE01654();
            swift_allocError();
            *v64 = 0;
            v64[112] = 1;
            swift_willThrow();

            sub_26BE00258(v84, v85);
            v22 = v76;
            goto LABEL_72;
          }

          sub_26BE00258(v84, v85);
          result = sub_26BE00258(v69, v76);
          *a1 = v7;
          *(a1 + 8) = v10;
          *(a1 + 16) = v11;
          *(a1 + 24) = v77;
          *(a1 + 32) = v80;
          *(a1 + 40) = v81;
          *(a1 + 48) = v78;
          *(a1 + 56) = v79;
          *(a1 + 64) = v75;
          goto LABEL_10;
        }

LABEL_86:
        __break(1u);
        return result;
      }

      v39 = v34 + 2;
      if (__OFADD__(v34, 2))
      {
        goto LABEL_81;
      }

      v40 = v84;
      v41 = v85 >> 62;
      if ((v85 >> 62) <= 1)
      {
        break;
      }

      if (v41 == 2)
      {
        v42 = *(v84 + 24);
        goto LABEL_36;
      }

      if (v39 > 0)
      {
        goto LABEL_71;
      }

LABEL_39:
      v82 = v84;
      v83 = v85;
      if (v39 < v34)
      {
        goto LABEL_82;
      }

      v73 = v85;
      sub_26BE00608(v84, v85);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
      sub_26BE016A8();
      v74 = v40;
      sub_26BE016FC();
      v43 = v40;
      sub_26C008E1C();
      sub_26BE00258(v82, v83);
      v86 = v39;
      sub_26BE00608(v40, v73);
      sub_26BE00608(v40, v73);
      sub_26BF30764(&v84, &v82);
      if (v83)
      {
        sub_26BE00258(v84, v85);
        v47 = v73;
        v46 = v40;
LABEL_70:
        sub_26BE00258(v46, v47);
        v84 = v74;
        v85 = v73;
        v86 = v39;
LABEL_71:
        sub_26BE01600();
        swift_allocError();
        *v63 = 1;
        v22 = v76;
        swift_willThrow();

        sub_26BE00258(v84, v85);
LABEL_72:
        v32 = v69;
        v23 = v71;
        goto LABEL_12;
      }

      v44 = v82;
      sub_26BE00258(v43, v73);
      result = v86;
      v37 = __OFADD__(v86, v44);
      v45 = v86 + v44;
      if (v37)
      {
        goto LABEL_83;
      }

      v46 = v84;
      v47 = v85;
      v48 = v85 >> 62;
      if ((v85 >> 62) <= 1)
      {
        if (v48)
        {
          v49 = v84 >> 32;
        }

        else
        {
          v49 = BYTE6(v85);
        }

LABEL_48:
        if (v49 < v45)
        {
          goto LABEL_70;
        }

        goto LABEL_51;
      }

      if (v48 == 2)
      {
        v49 = *(v84 + 24);
        goto LABEL_48;
      }

      if (v45 > 0)
      {
        goto LABEL_70;
      }

LABEL_51:
      if (v45 < v86)
      {
        goto LABEL_84;
      }

      result = sub_26C00909C();
      v50 = result;
      v52 = v51;
      v70 = v45;
      v86 = v45;
      v53 = v51 >> 62;
      if ((v51 >> 62) > 1)
      {
        if (v53 != 2)
        {
          goto LABEL_59;
        }

        result = *(result + 16);
        v54 = *(v50 + 24);
      }

      else
      {
        if (!v53)
        {
          goto LABEL_59;
        }

        result = result;
        v54 = v50 >> 32;
      }

      if (v54 < result)
      {
        goto LABEL_85;
      }

LABEL_59:
      v55 = v52;
      v72 = sub_26C00909C();
      v57 = v56;
      sub_26BE00258(v50, v55);
      sub_26BE00258(v74, v73);
      sub_26BE00608(v72, v57);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_26BEEBD8C(0, *(v75 + 2) + 1, 1, v75);
      }

      v59 = *(v75 + 2);
      v58 = *(v75 + 3);
      if (v59 >= v58 >> 1)
      {
        v75 = sub_26BEEBD8C((v58 > 1), v59 + 1, 1, v75);
      }

      sub_26BE00258(v72, v57);
      *(v75 + 2) = v59 + 1;
      v60 = &v75[24 * v59];
      *(v60 + 16) = bswap32(0) >> 16;
      *(v60 + 5) = v72;
      *(v60 + 6) = v57;
      LODWORD(v35) = v67;
      result = v68;
      v34 = v70;
      if (v67 <= 1)
      {
        goto LABEL_22;
      }

LABEL_24:
      if (v35 == 2)
      {
        v36 = *(result + 24);
      }

      else
      {
        v36 = 0;
      }
    }

    if (v41)
    {
      v42 = v84 >> 32;
    }

    else
    {
      v42 = BYTE6(v85);
    }

LABEL_36:
    if (v42 < v39)
    {
      goto LABEL_71;
    }

    goto LABEL_39;
  }

LABEL_10:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MLS.GroupContext.confirmedTranscriptHash.getter()
{
  v1 = *(v0 + 48);
  sub_26BE00608(v1, *(v0 + 56));
  return v1;
}

uint64_t MLS.GroupContext.confirmedTranscriptHash.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

void MLS.GroupContext.init(version:ciphersuite:groupID:epoch:treeHash:confirmedTranscriptHash:extensions:)(_WORD *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  *a8 = *a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  *(a8 + 56) = a9;
  *(a8 + 64) = a10;
}

uint64_t sub_26BFB0104(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    type metadata accessor for SecCertificate(0);
    v4 = v11;
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x26D6996F0](v13 - 4, v3);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v3 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x26D6996F0](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        sub_26BFB76A0(&qword_28045FB08, type metadata accessor for SecCertificate);
        v19 = sub_26C0092AC();

        if (v19)
        {
          ++v13;
          if (v15 != v5)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v3 + 32);
    v21 = (a2 + 32);
    v22 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    a2 = v5 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v25 = *v20++;
      v24 = v25;
      v26 = *v21++;
      v3 = sub_26BFB76A0(&qword_28045FB08, type metadata accessor for SecCertificate);
      v27 = v24;
      v28 = v26;
      v19 = sub_26C0092AC();

      v30 = a2-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v30)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_26C00AB8C();
  }

  result = sub_26C00AB8C();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_26BFB03C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 32;
  v4 = a2 + 32;
  while (1)
  {
    sub_26BE2DA9C(v3, &v60);
    result = sub_26BE2DA9C(v4, &v55);
    v10 = v60;
    v9 = v61;
    v12 = v55;
    v11 = v56;
    v52 = v4;
    if ((v61 & 0x2000000000000000) != 0)
    {
      if ((v56 & 0x2000000000000000) == 0)
      {
        goto LABEL_74;
      }

      v16 = v3;
      sub_26BE04890(v55, v56);
      sub_26BE04890(v10, v9);
      v19 = sub_26BFB0104(v10, v12);
      sub_26BE0489C(v10, v9);
      sub_26BE0489C(v12, v11);
      if ((v19 & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    else
    {
      if ((v56 & 0x2000000000000000) != 0)
      {
        goto LABEL_74;
      }

      v13 = v61 >> 62;
      v14 = v56 >> 62;
      if (v61 >> 62 == 3)
      {
        v15 = 0;
        if (!v60 && v61 == 0xC000000000000000 && v56 >> 62 == 3)
        {
          v15 = 0;
          if (!v55 && v56 == 0xC000000000000000)
          {
            v16 = v3;
            sub_26BE04890(0, 0xC000000000000000);
            sub_26BE04890(0, 0xC000000000000000);
            sub_26BE0489C(0, 0xC000000000000000);
            v17 = 0;
            v18 = 0xC000000000000000;
            goto LABEL_40;
          }
        }
      }

      else if (v13)
      {
        if (v13 == 1)
        {
          LODWORD(v15) = HIDWORD(v60) - v60;
          if (__OFSUB__(HIDWORD(v60), v60))
          {
            goto LABEL_84;
          }

          v15 = v15;
        }

        else
        {
          v21 = *(v60 + 16);
          v20 = *(v60 + 24);
          v22 = __OFSUB__(v20, v21);
          v15 = v20 - v21;
          if (v22)
          {
            goto LABEL_85;
          }
        }
      }

      else
      {
        v15 = BYTE6(v61);
      }

      if (v14 > 1)
      {
        if (v14 != 2)
        {
          if (v15)
          {
LABEL_74:
            sub_26BE04890(v55, v56);
            sub_26BE04890(v10, v9);
            sub_26BE0489C(v10, v9);
            sub_26BE0489C(v12, v11);
LABEL_76:
            sub_26BE2DAF8(&v55);
            sub_26BE2DAF8(&v60);
            return 0;
          }

LABEL_39:
          v16 = v3;
          sub_26BE04890(v55, v56);
          sub_26BE04890(v10, v9);
          sub_26BE0489C(v10, v9);
          v17 = v12;
          v18 = v11;
LABEL_40:
          sub_26BE0489C(v17, v18);
          goto LABEL_41;
        }

        v25 = *(v55 + 16);
        v24 = *(v55 + 24);
        v22 = __OFSUB__(v24, v25);
        v23 = v24 - v25;
        if (v22)
        {
          goto LABEL_83;
        }
      }

      else if (v14)
      {
        LODWORD(v23) = HIDWORD(v55) - v55;
        if (__OFSUB__(HIDWORD(v55), v55))
        {
          goto LABEL_82;
        }

        v23 = v23;
      }

      else
      {
        v23 = BYTE6(v56);
      }

      if (v15 != v23)
      {
        goto LABEL_74;
      }

      if (v15 < 1)
      {
        goto LABEL_39;
      }

      v16 = v3;
      sub_26BE04890(v55, v56);
      sub_26BE04890(v12, v11);
      sub_26BE04890(v10, v9);
      v26 = sub_26BECB6A4(v10, v9, v12, v11);
      sub_26BE0489C(v10, v9);
      sub_26BE0489C(v12, v11);
      if ((v26 & 1) == 0)
      {
        goto LABEL_76;
      }
    }

LABEL_41:
    v28 = v63;
    v27 = v64;
    __swift_project_boxed_opaque_existential_1(v62, v63);
    (*(*(v27 + 8) + 24))(v54, v28);
    v29 = LOBYTE(v54[0]);

    v31 = v58;
    v30 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    (*(*(v30 + 8) + 24))(v53, v31);
    LODWORD(v30) = LOBYTE(v53[0]);

    if (v29 != v30)
    {
      goto LABEL_76;
    }

    v33 = v63;
    v32 = v64;
    __swift_project_boxed_opaque_existential_1(v62, v63);
    v34 = (*(*(v32 + 8) + 16))(v33);
    v36 = v35;
    v38 = v58;
    v37 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    result = (*(*(v37 + 8) + 16))(v38);
    v40 = v36 >> 62;
    v41 = v39 >> 62;
    if (v36 >> 62 != 3)
    {
      break;
    }

    v42 = 0;
    v43 = v16;
    if (v34)
    {
      v44 = v52;
      if (v41 > 1)
      {
        goto LABEL_53;
      }

      goto LABEL_61;
    }

    v44 = v52;
    if (v36 != 0xC000000000000000)
    {
      goto LABEL_60;
    }

    if (v39 >> 62 != 3)
    {
      goto LABEL_60;
    }

    v42 = 0;
    if (result || v39 != 0xC000000000000000)
    {
      goto LABEL_60;
    }

    sub_26BE00258(0, 0xC000000000000000);
    v45 = 0;
    v46 = 0xC000000000000000;
LABEL_68:
    sub_26BE00258(v45, v46);
    sub_26BE2DAF8(&v55);
    sub_26BE2DAF8(&v60);
LABEL_6:
    v3 = v43 + 56;
    v4 = v44 + 56;
    if (!--v2)
    {
      return 1;
    }
  }

  v43 = v16;
  if (v40 == 2)
  {
    v51 = *(v34 + 16);
    v50 = *(v34 + 24);
    v22 = __OFSUB__(v50, v51);
    v42 = v50 - v51;
    v44 = v52;
    if (v22)
    {
      goto LABEL_81;
    }

LABEL_60:
    if (v41 <= 1)
    {
      goto LABEL_61;
    }

LABEL_53:
    if (v41 == 2)
    {
      v48 = *(result + 16);
      v47 = *(result + 24);
      v22 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v22)
      {
        goto LABEL_79;
      }

      goto LABEL_65;
    }

    if (v42)
    {
      goto LABEL_75;
    }

    goto LABEL_67;
  }

  v44 = v52;
  if (v40 == 1)
  {
    LODWORD(v42) = HIDWORD(v34) - v34;
    if (__OFSUB__(HIDWORD(v34), v34))
    {
      goto LABEL_80;
    }

    v42 = v42;
    if (v41 > 1)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v42 = BYTE6(v36);
    if (v41 > 1)
    {
      goto LABEL_53;
    }
  }

LABEL_61:
  if (!v41)
  {
    v49 = BYTE6(v39);
LABEL_65:
    if (v42 != v49)
    {
LABEL_75:
      sub_26BE00258(result, v39);
      sub_26BE00258(v34, v36);
      goto LABEL_76;
    }

    if (v42 >= 1)
    {
      v5 = result;
      v6 = v39;
      sub_26BE00608(result, v39);
      v7 = sub_26BECB6A4(v34, v36, v5, v6);
      sub_26BE00258(v34, v36);
      sub_26BE00258(v5, v6);
      sub_26BE2DAF8(&v55);
      sub_26BE2DAF8(&v60);
      if ((v7 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_6;
    }

LABEL_67:
    sub_26BE00258(result, v39);
    v45 = v34;
    v46 = v36;
    goto LABEL_68;
  }

  LODWORD(v49) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v49 = v49;
    goto LABEL_65;
  }

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
  return result;
}

uint64_t sub_26BFB0958(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 32;
  for (i = a2 + 32; ; i += 112)
  {
    sub_26BF7ED2C(v3, &v79);
    result = sub_26BF7ED2C(i, &v69);
    v7 = v79;
    v6 = v80;
    v9 = v69;
    v8 = v70;
    if ((v80 & 0x2000000000000000) != 0)
    {
      if ((v70 & 0x2000000000000000) == 0)
      {
        goto LABEL_79;
      }

      sub_26BE04890(v69, v70);
      sub_26BE04890(v7, v6);
      v15 = sub_26BFB0104(v7, v9);
      goto LABEL_34;
    }

    if ((v70 & 0x2000000000000000) != 0)
    {
      goto LABEL_79;
    }

    v10 = v80 >> 62;
    v11 = v70 >> 62;
    if (v80 >> 62 == 3)
    {
      v12 = 0;
      if (!v79 && v80 == 0xC000000000000000 && v70 >> 62 == 3)
      {
        v12 = 0;
        if (!v69 && v70 == 0xC000000000000000)
        {
          sub_26BE04890(0, 0xC000000000000000);
          sub_26BE04890(0, 0xC000000000000000);
          sub_26BE0489C(0, 0xC000000000000000);
          v13 = 0;
          v14 = 0xC000000000000000;
          goto LABEL_38;
        }
      }
    }

    else if (v10)
    {
      if (v10 == 1)
      {
        LODWORD(v12) = HIDWORD(v79) - v79;
        if (__OFSUB__(HIDWORD(v79), v79))
        {
          goto LABEL_86;
        }

        v12 = v12;
      }

      else
      {
        v17 = *(v79 + 16);
        v16 = *(v79 + 24);
        v18 = __OFSUB__(v16, v17);
        v12 = v16 - v17;
        if (v18)
        {
          goto LABEL_87;
        }
      }
    }

    else
    {
      v12 = BYTE6(v80);
    }

    if (v11 > 1)
    {
      if (v11 != 2)
      {
        if (v12)
        {
          goto LABEL_79;
        }

LABEL_37:
        sub_26BE04890(v69, v70);
        sub_26BE04890(v7, v6);
        sub_26BE0489C(v7, v6);
        v13 = v9;
        v14 = v8;
LABEL_38:
        sub_26BE0489C(v13, v14);
        goto LABEL_39;
      }

      v21 = *(v69 + 16);
      v20 = *(v69 + 24);
      v18 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (v18)
      {
        goto LABEL_83;
      }

      goto LABEL_31;
    }

    if (v11)
    {
      break;
    }

    v19 = BYTE6(v70);
LABEL_31:
    if (v12 != v19)
    {
      goto LABEL_79;
    }

    if (v12 < 1)
    {
      goto LABEL_37;
    }

    sub_26BE04890(v69, v70);
    sub_26BE04890(v9, v8);
    sub_26BE04890(v7, v6);
    v15 = sub_26BECB6A4(v7, v6, v9, v8);
LABEL_34:
    v22 = v15;
    sub_26BE0489C(v7, v6);
    sub_26BE0489C(v9, v8);
    if ((v22 & 1) == 0)
    {
      goto LABEL_80;
    }

LABEL_39:
    v24 = v82;
    v23 = v83;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    (*(*(v23 + 8) + 24))(v68, v24);
    v25 = LOBYTE(v68[0]);

    v27 = v72;
    v26 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    (*(*(v26 + 8) + 24))(v67, v27);
    LODWORD(v26) = LOBYTE(v67[0]);

    if (v25 != v26)
    {
      goto LABEL_80;
    }

    v29 = v82;
    v28 = v83;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    v30 = (*(*(v28 + 8) + 16))(v29);
    v32 = v31;
    v34 = v72;
    v33 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    v35 = (*(*(v33 + 8) + 16))(v34);
    v37 = v36;
    v38 = sub_26BE02DEC(v30, v32, v35, v36);
    sub_26BE00258(v35, v37);
    result = sub_26BE00258(v30, v32);
    if ((v38 & 1) == 0)
    {
      goto LABEL_80;
    }

    v7 = v84;
    v6 = v85;
    v9 = v74;
    v8 = v75;
    if ((v85 & 0x2000000000000000) != 0)
    {
      if ((v75 & 0x2000000000000000) == 0)
      {
        goto LABEL_79;
      }

      sub_26BE04890(v74, v75);
      sub_26BE04890(v7, v6);
      v44 = sub_26BFB0104(v7, v9);
      goto LABEL_69;
    }

    if ((v75 & 0x2000000000000000) != 0)
    {
      goto LABEL_79;
    }

    v39 = v85 >> 62;
    v40 = v75 >> 62;
    if (v85 >> 62 == 3)
    {
      v41 = 0;
      if (!v84 && v85 == 0xC000000000000000 && v75 >> 62 == 3)
      {
        v41 = 0;
        if (!v74 && v75 == 0xC000000000000000)
        {
          sub_26BE04890(0, 0xC000000000000000);
          sub_26BE04890(0, 0xC000000000000000);
          sub_26BE0489C(0, 0xC000000000000000);
          v42 = 0;
          v43 = 0xC000000000000000;
          goto LABEL_73;
        }
      }

LABEL_58:
      if (v40 > 1)
      {
        goto LABEL_64;
      }

      goto LABEL_59;
    }

    if (v39 == 2)
    {
      v46 = *(v84 + 16);
      v45 = *(v84 + 24);
      v18 = __OFSUB__(v45, v46);
      v41 = v45 - v46;
      if (v18)
      {
        goto LABEL_89;
      }

      goto LABEL_58;
    }

    if (v39 == 1)
    {
      LODWORD(v41) = HIDWORD(v84) - v84;
      if (__OFSUB__(HIDWORD(v84), v84))
      {
        goto LABEL_88;
      }

      v41 = v41;
      if (v40 > 1)
      {
LABEL_64:
        if (v40 != 2)
        {
          if (v41)
          {
LABEL_79:
            sub_26BE04890(v9, v8);
            sub_26BE04890(v7, v6);
            sub_26BE0489C(v7, v6);
            sub_26BE0489C(v9, v8);
LABEL_80:
            sub_26BF7ED88(&v69);
            sub_26BF7ED88(&v79);
            return 0;
          }

LABEL_72:
          sub_26BE04890(v74, v75);
          sub_26BE04890(v7, v6);
          sub_26BE0489C(v7, v6);
          v42 = v9;
          v43 = v8;
LABEL_73:
          sub_26BE0489C(v42, v43);
          goto LABEL_74;
        }

        v49 = *(v74 + 16);
        v48 = *(v74 + 24);
        v18 = __OFSUB__(v48, v49);
        v47 = v48 - v49;
        if (v18)
        {
          goto LABEL_85;
        }

        goto LABEL_66;
      }
    }

    else
    {
      v41 = BYTE6(v85);
      if (v40 > 1)
      {
        goto LABEL_64;
      }
    }

LABEL_59:
    if (v40)
    {
      LODWORD(v47) = HIDWORD(v74) - v74;
      if (__OFSUB__(HIDWORD(v74), v74))
      {
        goto LABEL_84;
      }

      v47 = v47;
    }

    else
    {
      v47 = BYTE6(v75);
    }

LABEL_66:
    if (v41 != v47)
    {
      goto LABEL_79;
    }

    if (v41 < 1)
    {
      goto LABEL_72;
    }

    sub_26BE04890(v74, v75);
    sub_26BE04890(v9, v8);
    sub_26BE04890(v7, v6);
    v44 = sub_26BECB6A4(v7, v6, v9, v8);
LABEL_69:
    v50 = v44;
    sub_26BE0489C(v7, v6);
    sub_26BE0489C(v9, v8);
    if ((v50 & 1) == 0)
    {
      goto LABEL_80;
    }

LABEL_74:
    v52 = v87;
    v51 = v88;
    __swift_project_boxed_opaque_existential_1(v86, v87);
    (*(*(v51 + 8) + 24))(v68, v52);
    v53 = LOBYTE(v68[0]);

    v55 = v77;
    v54 = v78;
    __swift_project_boxed_opaque_existential_1(v76, v77);
    (*(*(v54 + 8) + 24))(v67, v55);
    LODWORD(v54) = LOBYTE(v67[0]);

    if (v53 != v54)
    {
      goto LABEL_80;
    }

    v57 = v87;
    v56 = v88;
    __swift_project_boxed_opaque_existential_1(v86, v87);
    v58 = (*(*(v56 + 8) + 16))(v57);
    v60 = v59;
    v62 = v77;
    v61 = v78;
    __swift_project_boxed_opaque_existential_1(v76, v77);
    v63 = (*(*(v61 + 8) + 16))(v62);
    v65 = v64;
    v66 = sub_26BE02DEC(v58, v60, v63, v64);
    sub_26BE00258(v63, v65);
    sub_26BE00258(v58, v60);
    sub_26BF7ED88(&v69);
    sub_26BF7ED88(&v79);
    if ((v66 & 1) == 0)
    {
      return 0;
    }

    v3 += 112;
    result = 1;
    if (!--v2)
    {
      return result;
    }
  }

  LODWORD(v19) = HIDWORD(v69) - v69;
  if (!__OFSUB__(HIDWORD(v69), v69))
  {
    v19 = v19;
    goto LABEL_31;
  }

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
  return result;
}

uint64_t sub_26BFB1064(uint64_t a1, uint64_t a2)
{
  v4 = _s9AttributeVMa(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_11:
    v17 = 0;
    return v17 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_26BFB75D8(v14, v11, _s9AttributeVMa);
      sub_26BFB75D8(v15, v8, _s9AttributeVMa);
      if ((sub_26C00945C() & 1) == 0)
      {
        break;
      }

      v17 = sub_26BFCCAA8(&v11[*(v4 + 20)], &v8[*(v4 + 20)]);
      sub_26BFB7640(v8, _s9AttributeVMa);
      sub_26BFB7640(v11, _s9AttributeVMa);
      if (v17)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_26BFB7640(v8, _s9AttributeVMa);
    sub_26BFB7640(v11, _s9AttributeVMa);
    goto LABEL_11;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_26BFB12EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v16 = &v24 - v15;
  v17 = *(a1 + 16);
  if (v17 == *(a2 + 16))
  {
    if (!v17 || a1 == a2)
    {
      v22 = 1;
    }

    else
    {
      v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v19 = a1 + v18;
      v20 = a2 + v18;
      v21 = *(v14 + 72);
      do
      {
        sub_26BFB75D8(v19, v16, a4);
        sub_26BFB75D8(v20, v13, a4);
        v22 = a5(v16, v13);
        sub_26BFB7640(v13, a4);
        sub_26BFB7640(v16, a4);
        if ((v22 & 1) == 0)
        {
          break;
        }

        v20 += v21;
        v19 += v21;
        --v17;
      }

      while (v17);
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_26BFB1488(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v68 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v67 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v62 = &v57 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F0D8, &unk_26C01A530);
  v13 = *(*(v71 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v71);
  v66 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v57 - v16;
  v18 = _s21RCSParticipantKeyRollVMa();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v70 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v74 = &v57 - v23;
  v24 = *(a2 + 16);
  v73 = *(a1 + 16);
  if (v73 != v24)
  {
LABEL_28:
    v55 = 0;
    return v55 & 1;
  }

  if (!v73 || a1 == a2)
  {
    v55 = 1;
    return v55 & 1;
  }

  v61 = v17;
  v25 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v26 = a1 + v25;
  v27 = a2 + v25;
  v69 = (v5 + 48);
  v59 = (v5 + 32);
  v60 = (v5 + 8);
  v58 = *(v22 + 72);
  v28 = v70;
  v63 = v18;
  v72 = v4;
  while (1)
  {
    result = sub_26BFB75D8(v26, v74, _s21RCSParticipantKeyRollVMa);
    if (!v73)
    {
      break;
    }

    v64 = v27;
    sub_26BFB75D8(v27, v28, _s21RCSParticipantKeyRollVMa);
    if ((sub_26C00945C() & 1) == 0)
    {
      goto LABEL_27;
    }

    v65 = type metadata accessor for MLS.AlgorithmIdentifier();
    v30 = *(v65 + 20);
    v31 = *(v71 + 48);
    v32 = v61;
    sub_26BE2E1F0(v74 + v30, v61, &qword_28045EE48, &unk_26C022430);
    sub_26BE2E1F0(v28 + v30, v32 + v31, &qword_28045EE48, &unk_26C022430);
    v33 = *v69;
    if ((*v69)(v32, 1, v4) == 1)
    {
      if (v33(v32 + v31, 1, v4) != 1)
      {
        goto LABEL_26;
      }

      sub_26BE2E258(v32, &qword_28045EE48, &unk_26C022430);
    }

    else
    {
      v34 = v62;
      sub_26BE2E1F0(v32, v62, &qword_28045EE48, &unk_26C022430);
      if (v33(v32 + v31, 1, v4) == 1)
      {
        goto LABEL_24;
      }

      v35 = v68;
      (*v59)(v68, v32 + v31, v4);
      sub_26BFB76A0(&qword_28045F0E0, MEMORY[0x277D6A988]);
      v36 = sub_26C00A43C();
      v37 = *v60;
      v38 = v35;
      v28 = v70;
      (*v60)(v38, v72);
      v39 = v34;
      v18 = v63;
      v37(v39, v72);
      v4 = v72;
      sub_26BE2E258(v32, &qword_28045EE48, &unk_26C022430);
      if ((v36 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v40 = *(v18 + 20);
    if ((sub_26C00956C() & 1) == 0)
    {
      goto LABEL_27;
    }

    v41 = *(v18 + 24);
    v42 = v74 + v41;
    v43 = v28 + v41;
    if ((sub_26C00945C() & 1) == 0)
    {
      goto LABEL_27;
    }

    v44 = v66;
    v45 = *(v65 + 20);
    v46 = *(v71 + 48);
    sub_26BE2E1F0(v42 + v45, v66, &qword_28045EE48, &unk_26C022430);
    sub_26BE2E1F0(v43 + v45, v44 + v46, &qword_28045EE48, &unk_26C022430);
    if (v33(v44, 1, v4) == 1)
    {
      if (v33(v44 + v46, 1, v4) != 1)
      {
        v32 = v44;
        v28 = v70;
LABEL_26:
        sub_26BE2E258(v32, &qword_28045F0D8, &unk_26C01A530);
LABEL_27:
        sub_26BFB7640(v28, _s21RCSParticipantKeyRollVMa);
        sub_26BFB7640(v74, _s21RCSParticipantKeyRollVMa);
        goto LABEL_28;
      }

      sub_26BE2E258(v44, &qword_28045EE48, &unk_26C022430);
      v28 = v70;
      v18 = v63;
    }

    else
    {
      sub_26BE2E1F0(v44, v67, &qword_28045EE48, &unk_26C022430);
      if (v33(v44 + v46, 1, v4) == 1)
      {
        v34 = v67;
        v32 = v44;
        v28 = v70;
LABEL_24:
        (*v60)(v34, v4);
        goto LABEL_26;
      }

      v47 = v68;
      (*v59)(v68, v44 + v46, v4);
      sub_26BFB76A0(&qword_28045F0E0, MEMORY[0x277D6A988]);
      v65 = v26;
      v48 = v67;
      v49 = sub_26C00A43C();
      v4 = v72;
      v50 = v49;
      v51 = v44;
      v52 = *v60;
      (*v60)(v47, v72);
      v53 = v48;
      v26 = v65;
      v52(v53, v4);
      sub_26BE2E258(v51, &qword_28045EE48, &unk_26C022430);
      v28 = v70;
      v18 = v63;
      if ((v50 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v54 = *(type metadata accessor for MLS.SubjectPublicKeyInfo() + 20);
    v55 = sub_26C00956C();
    sub_26BFB7640(v28, _s21RCSParticipantKeyRollVMa);
    sub_26BFB7640(v74, _s21RCSParticipantKeyRollVMa);
    if (v55)
    {
      v56 = v73;
      v27 = v64 + v58;
      v26 += v58;
      --v73;
      if (v56 != 1)
      {
        continue;
      }
    }

    return v55 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFB1C64(uint64_t a1, uint64_t a2)
{
  v32[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = 0;
      v4 = (a1 + 48);
      v5 = (a2 + 48);
      while (1)
      {
        if (*(v4 - 8) != *(v5 - 8))
        {
          goto LABEL_54;
        }

        v7 = *(v4 - 1);
        v6 = *v4;
        v9 = *(v5 - 1);
        v8 = *v5;
        v10 = *v4 >> 62;
        v11 = *v5 >> 62;
        if (v10 == 3)
        {
          break;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v18 = *(v7 + 16);
            v17 = *(v7 + 24);
            v15 = __OFSUB__(v17, v18);
            v12 = v17 - v18;
            if (v15)
            {
              goto LABEL_60;
            }

            goto LABEL_24;
          }

          v12 = 0;
          if (v11 <= 1)
          {
            goto LABEL_25;
          }
        }

        else if (v10)
        {
          LODWORD(v12) = HIDWORD(v7) - v7;
          if (__OFSUB__(HIDWORD(v7), v7))
          {
            goto LABEL_59;
          }

          v12 = v12;
          if (v11 <= 1)
          {
LABEL_25:
            if (v11)
            {
              LODWORD(v16) = HIDWORD(v9) - v9;
              if (__OFSUB__(HIDWORD(v9), v9))
              {
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
LABEL_64:
                __break(1u);
              }

              v16 = v16;
            }

            else
            {
              v16 = BYTE6(v8);
            }

            goto LABEL_29;
          }
        }

        else
        {
          v12 = BYTE6(v6);
          if (v11 <= 1)
          {
            goto LABEL_25;
          }
        }

LABEL_18:
        if (v11 != 2)
        {
          if (v12)
          {
            goto LABEL_54;
          }

          goto LABEL_6;
        }

        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        v15 = __OFSUB__(v13, v14);
        v16 = v13 - v14;
        if (v15)
        {
          goto LABEL_58;
        }

LABEL_29:
        if (v12 != v16)
        {
          goto LABEL_54;
        }

        if (v12 < 1)
        {
          goto LABEL_6;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v30 = v3;
            v19 = *(v7 + 16);
            v29 = *(v7 + 24);
            sub_26BE00608(v7, v6);
            sub_26BE00608(v9, v8);
            v20 = sub_26C008E9C();
            if (v20)
            {
              v21 = sub_26C008ECC();
              if (__OFSUB__(v19, v21))
              {
                goto LABEL_63;
              }

              v20 += v19 - v21;
            }

            if (__OFSUB__(v29, v19))
            {
              goto LABEL_62;
            }

            sub_26C008EBC();
            v22 = v20;
            v23 = v9;
            v24 = v8;
            v3 = v30;
            goto LABEL_50;
          }

          memset(v32, 0, 14);
          sub_26BE00608(v7, v6);
          sub_26BE00608(v9, v8);
        }

        else
        {
          if (v10)
          {
            if (v7 >> 32 < v7)
            {
              goto LABEL_61;
            }

            sub_26BE00608(v7, v6);
            sub_26BE00608(v9, v8);
            v25 = sub_26C008E9C();
            if (v25)
            {
              v26 = sub_26C008ECC();
              if (__OFSUB__(v7, v26))
              {
                goto LABEL_64;
              }

              v25 += v7 - v26;
            }

            sub_26C008EBC();
            v22 = v25;
            v23 = v9;
            v24 = v8;
LABEL_50:
            sub_26BE567B0(v22, v23, v24, v32);
            sub_26BE00258(v9, v8);
            sub_26BE00258(v7, v6);
            if ((v32[0] & 1) == 0)
            {
              goto LABEL_54;
            }

            goto LABEL_6;
          }

          v32[0] = *(v4 - 1);
          LOWORD(v32[1]) = v6;
          BYTE2(v32[1]) = BYTE2(v6);
          BYTE3(v32[1]) = BYTE3(v6);
          BYTE4(v32[1]) = BYTE4(v6);
          BYTE5(v32[1]) = BYTE5(v6);
          sub_26BE00608(v7, v6);
          sub_26BE00608(v9, v8);
        }

        sub_26BE567B0(v32, v9, v8, &v31);
        sub_26BE00258(v9, v8);
        sub_26BE00258(v7, v6);
        if (!v31)
        {
          goto LABEL_54;
        }

LABEL_6:
        v4 += 3;
        v5 += 3;
        if (!--v2)
        {
          goto LABEL_55;
        }
      }

      v12 = 0;
      if (!v7 && v6 == 0xC000000000000000 && *v5 >> 62 == 3)
      {
        v12 = 0;
        if (!v9 && v8 == 0xC000000000000000)
        {
          goto LABEL_6;
        }
      }

LABEL_24:
      if (v11 <= 1)
      {
        goto LABEL_25;
      }

      goto LABEL_18;
    }

LABEL_55:
    result = 1;
  }

  else
  {
LABEL_54:
    result = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BFB20A0(uint64_t result, uint64_t a2)
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

uint64_t sub_26BFB20FC(uint64_t a1, uint64_t a2)
{
  v34[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = 0;
      v4 = (a1 + 40);
      v5 = (a2 + 40);
      while (1)
      {
        v7 = *(v4 - 1);
        v6 = *v4;
        v9 = *(v5 - 1);
        v8 = *v5;
        v10 = *v4 >> 62;
        v11 = *v5 >> 62;
        if (v10 == 3)
        {
          break;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v20 = *(v7 + 16);
            v19 = *(v7 + 24);
            v17 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v17)
            {
              goto LABEL_63;
            }

            goto LABEL_28;
          }

          v13 = 0;
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

        else if (v10)
        {
          LODWORD(v13) = HIDWORD(v7) - v7;
          if (__OFSUB__(HIDWORD(v7), v7))
          {
            goto LABEL_64;
          }

          v13 = v13;
          if (v11 <= 1)
          {
LABEL_29:
            if (v11)
            {
              LODWORD(v18) = HIDWORD(v9) - v9;
              if (__OFSUB__(HIDWORD(v9), v9))
              {
                __break(1u);
LABEL_62:
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
              }

              v18 = v18;
            }

            else
            {
              v18 = BYTE6(v8);
            }

            goto LABEL_33;
          }
        }

        else
        {
          v13 = BYTE6(v6);
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

LABEL_22:
        if (v11 != 2)
        {
          if (v13)
          {
            goto LABEL_58;
          }

          goto LABEL_6;
        }

        v16 = *(v9 + 16);
        v15 = *(v9 + 24);
        v17 = __OFSUB__(v15, v16);
        v18 = v15 - v16;
        if (v17)
        {
          goto LABEL_62;
        }

LABEL_33:
        if (v13 != v18)
        {
          goto LABEL_58;
        }

        if (v13 < 1)
        {
          goto LABEL_6;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v32 = v3;
            v21 = *(v7 + 16);
            v31 = *(v7 + 24);
            sub_26BE00608(v7, v6);
            sub_26BE00608(v9, v8);
            v22 = sub_26C008E9C();
            if (v22)
            {
              v23 = sub_26C008ECC();
              if (__OFSUB__(v21, v23))
              {
                goto LABEL_67;
              }

              v22 += v21 - v23;
            }

            if (__OFSUB__(v31, v21))
            {
              goto LABEL_66;
            }

            sub_26C008EBC();
            v24 = v22;
            v25 = v9;
            v26 = v8;
            v3 = v32;
            goto LABEL_54;
          }

          memset(v34, 0, 14);
          sub_26BE00608(v7, v6);
          sub_26BE00608(v9, v8);
        }

        else
        {
          if (v10)
          {
            if (v7 >> 32 < v7)
            {
              goto LABEL_65;
            }

            sub_26BE00608(v7, v6);
            sub_26BE00608(v9, v8);
            v27 = sub_26C008E9C();
            if (v27)
            {
              v28 = sub_26C008ECC();
              if (__OFSUB__(v7, v28))
              {
                goto LABEL_68;
              }

              v27 += v7 - v28;
            }

            sub_26C008EBC();
            v24 = v27;
            v25 = v9;
            v26 = v8;
LABEL_54:
            sub_26BE567B0(v24, v25, v26, v34);
            sub_26BE00258(v9, v8);
            sub_26BE00258(v7, v6);
            if ((v34[0] & 1) == 0)
            {
              goto LABEL_58;
            }

            goto LABEL_6;
          }

          v34[0] = *(v4 - 1);
          LOWORD(v34[1]) = v6;
          BYTE2(v34[1]) = BYTE2(v6);
          BYTE3(v34[1]) = BYTE3(v6);
          BYTE4(v34[1]) = BYTE4(v6);
          BYTE5(v34[1]) = BYTE5(v6);
          sub_26BE00608(v7, v6);
          sub_26BE00608(v9, v8);
        }

        sub_26BE567B0(v34, v9, v8, &v33);
        sub_26BE00258(v9, v8);
        sub_26BE00258(v7, v6);
        if (!v33)
        {
          goto LABEL_58;
        }

LABEL_6:
        v4 += 2;
        v5 += 2;
        if (!--v2)
        {
          goto LABEL_59;
        }
      }

      if (v7)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6 == 0xC000000000000000;
      }

      v13 = 0;
      v14 = v12 && *v5 >> 62 == 3;
      if (v14 && !v9 && v8 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (v11 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

LABEL_59:
    result = 1;
  }

  else
  {
LABEL_58:
    result = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BFB2508(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_26C00AF2C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_26BFB2598(uint64_t a1, uint64_t a2)
{
  v5 = _s21RCSParticipantKeyRollVMa();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MLS.SubjectPublicKeyInfo();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BFB75D8(a1, v13, type metadata accessor for MLS.SubjectPublicKeyInfo);
  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v16 = *(v6 + 72);
    while (1)
    {
      sub_26BFB75D8(v15, v9, _s21RCSParticipantKeyRollVMa);
      v17 = sub_26BEE1FD8(v13);
      if (v2)
      {
        break;
      }

      if ((v17 & 1) == 0)
      {
        type metadata accessor for MLS.IdentityError();
        sub_26BFB76A0(&qword_28045EB48, type metadata accessor for MLS.IdentityError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        break;
      }

      sub_26BFB7640(v13, type metadata accessor for MLS.SubjectPublicKeyInfo);
      sub_26BFB75D8(&v9[*(v5 + 24)], v13, type metadata accessor for MLS.SubjectPublicKeyInfo);
      sub_26BFB7640(v9, _s21RCSParticipantKeyRollVMa);
      v15 += v16;
      if (!--v14)
      {
        goto LABEL_9;
      }
    }

    sub_26BFB7640(v9, _s21RCSParticipantKeyRollVMa);
  }

LABEL_9:
  sub_26BFB7640(v13, type metadata accessor for MLS.SubjectPublicKeyInfo);
  return 1;
}

uint64_t sub_26BFB281C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_26BFB290C()
{
  v1 = *v0;
  sub_26C00B05C();
  sub_26C007978(v3, v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFB295C()
{
  v1 = *v0;
  sub_26C00B05C();
  sub_26C007978(v3, v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFB29AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _s21RCSParticipantKeyRollVMa();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  sub_26BFB75D8(a1, &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), _s21RCSParticipantKeyRollVMa);
  result = sub_26C00A51C();
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t sub_26BFB2A58()
{
  v3 = *v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EEA0, &unk_26C022440);
  sub_26BED2530();
  v1 = sub_26C00A3EC();

  return v1;
}

unint64_t sub_26BFB2AF4()
{
  sub_26C00AC1C();

  sub_26BFB7498();
  v0 = sub_26C00AEFC();
  MEMORY[0x26D699090](v0);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t sub_26BFB2BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FF30, &qword_26C022460);
  return sub_26C00A70C();
}

uint64_t sub_26BFB2C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  result = sub_26BFD9BBC(a1, a3);
  if (a2 >= 1)
  {
    if (result < 0 || result >= a2)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (result <= 0 && result > a2)
  {
    return 0;
  }

LABEL_8:
  v13 = __OFADD__(a1, a2);
  v12 = a1 + a2;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    sub_26BE2E1F0(v3, v10, &qword_28045E520, &unk_26C016B80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = *(*v10 + 16);
    }

    else
    {
      result = sub_26BE2E258(v10, &qword_28045E520, &unk_26C016B80);
      v14 = 1;
    }

    if (v12 <= v14)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26BFB2DE8(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

size_t sub_26BFB2E54(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_26BE58848(v5);
  v5 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < v5[2])
  {
    v7 = *(_s21RCSParticipantKeyRollVMa() - 8);
    result = sub_26BFB7570(a1, v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v4, _s21RCSParticipantKeyRollVMa);
    *v2 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void (*sub_26BFB2F34(void *a1, unint64_t *a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x38uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *(_s21RCSParticipantKeyRollVMa() - 8);
  v9 = *(v8 + 64);
  if (v5)
  {
    v7[1] = swift_coroFrameAlloc();
    result = swift_coroFrameAlloc();
  }

  else
  {
    v7[1] = malloc(*(v8 + 64));
    result = malloc(v9);
  }

  v11 = *a2;
  v7[2] = result;
  v7[3] = v11;
  v12 = *v2;
  v7[4] = *v2;
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(v12 + 16))
  {
    v13 = *(v8 + 80);
    *(v7 + 12) = v13;
    v14 = v12 + ((v13 + 32) & ~v13);
    v15 = *(v8 + 72);
    v7[5] = v15;
    sub_26BFB75D8(v14 + v15 * v11, result, _s21RCSParticipantKeyRollVMa);
    return sub_26BFB30A0;
  }

  __break(1u);
  return result;
}

void sub_26BFB30A0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {
    sub_26BFB75D8(v2[2], v2[1], _s21RCSParticipantKeyRollVMa);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v2[4];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_26BE58848(v2[4]);
    }

    v6 = v2[3];
    if (v6 < v5[2])
    {
      v8 = v2[1];
      v7 = v2[2];
      v9 = *v2;
      sub_26BFB7570(v8, v5 + ((*(v2 + 48) + 32) & ~*(v2 + 48)) + v2[5] * v6, _s21RCSParticipantKeyRollVMa);
      *v9 = v5;
      sub_26BFB7640(v7, _s21RCSParticipantKeyRollVMa);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_13;
  }

  v10 = *(*a1 + 32);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v5 = v2[4];
  if ((v11 & 1) == 0)
  {
LABEL_13:
    v5 = sub_26BE58848(v5);
  }

  v12 = v2[3];
  if (v12 >= v5[2])
  {
    __break(1u);
    return;
  }

  v8 = v2[1];
  v7 = v2[2];
  v13 = *v2;
  sub_26BFB7570(v7, v5 + ((*(v2 + 48) + 32) & ~*(v2 + 48)) + v2[5] * v12, _s21RCSParticipantKeyRollVMa);
  *v13 = v5;
LABEL_9:
  free(v7);
  free(v8);

  free(v2);
}

uint64_t sub_26BFB3220(int64_t *a1, uint64_t a2)
{
  sub_26BFB5F1C(v2, *a2, *(a2 + 8), *a1, a1[1], a1[2], _s21RCSParticipantKeyRollVMa, sub_26BE58848, _s21RCSParticipantKeyRollVMa, _s21RCSParticipantKeyRollVMa);
}

void (*sub_26BFB32C4(uint64_t *a1, uint64_t *a2))(void *a1)
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
  *(v4 + 32) = sub_26BFB3384(v4, *a2, a2[1]);
  return sub_26BFB333C;
}

void sub_26BFB333C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_26BFB3384(void (**a1)(int64_t **a1, char a2), uint64_t a2, uint64_t a3))(int64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x30uLL);
  }

  v8 = result;
  *a1 = result;
  *(result + 4) = a3;
  *(result + 5) = v3;
  *(result + 3) = a2;
  if (a2 < 0 || (result = *v3, *(*v3 + 2) < a3))
  {
    __break(1u);
  }

  else
  {
    *v8 = a2;
    *(v8 + 1) = a3;
    *(v8 + 2) = result;

    return sub_26BFB3430;
  }

  return result;
}

void (*sub_26BFB3484(void (**a1)(int64_t **a1, char a2), uint64_t a2, uint64_t a3))(int64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x30uLL);
  }

  v8 = result;
  *a1 = result;
  *(result + 4) = a3;
  *(result + 5) = v3;
  *(result + 3) = a2;
  if (a2 < 0 || (result = *v3, *(*v3 + 2) < a3))
  {
    __break(1u);
  }

  else
  {
    *v8 = a2;
    *(v8 + 1) = a3;
    *(v8 + 2) = result;

    return sub_26BFB3530;
  }

  return result;
}

void (*sub_26BFB3584(void (**a1)(int64_t **a1, char a2), uint64_t a2, uint64_t a3))(int64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x30uLL);
  }

  v8 = result;
  *a1 = result;
  *(result + 4) = a3;
  *(result + 5) = v3;
  *(result + 3) = a2;
  if (a2 < 0 || (result = *v3, *(*v3 + 2) < a3))
  {
    __break(1u);
  }

  else
  {
    *v8 = a2;
    *(v8 + 1) = a3;
    *(v8 + 2) = result;

    return sub_26BFB3630;
  }

  return result;
}

void sub_26BFB3684(int64_t **a1, char a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = **a1;
  v11 = (*a1)[1];
  v12 = (*a1)[4];
  v13 = (*a1)[5];
  v15 = (*a1)[2];
  v14 = (*a1)[3];
  if (a2)
  {
    v16 = (*a1)[2];

    sub_26BFB5F1C(v13, v14, v12, v10, v11, v15, a3, a4, a5, a6);
  }

  else
  {
    sub_26BFB5F1C(v13, v14, v12, v10, v11, v15, a3, a4, a5, a6);
  }

  v17 = v9[2];

  free(v9);
}