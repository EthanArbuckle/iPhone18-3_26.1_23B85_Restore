_OWORD *sub_1BAAE8B14(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1BAAE8B24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BAAE8B8C(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1BAAE7878(result, a2, a3);
  }

  return result;
}

uint64_t sub_1BAAE8BA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BAAE8C08(uint64_t a1)
{
  v2 = sub_1BABE721C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BAAE8C9C()
{
  v2 = v0;
  v27 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](136);
  MEMORY[0x1BFAFD240](0x200A5443454C4553, 0xEB00000000202020);
  v3 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v3);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v4 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v4);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v5 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v5);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v6 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v7 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v7);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v8 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v8);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v9 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v9);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v10 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v10);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v11 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v11);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v12 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v12);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v13 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v13);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v14 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v14);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v15 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v15);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v16 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v16);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v17 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v17);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v18 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v18);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v19 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v19);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v20 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v20);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v21 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v21);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v22 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v22);

  MEMORY[0x1BFAFD240](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v23 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v23);

  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  if (swift_weakLoadStrong())
  {
    v26[0] = v27;
    v26[1] = 0;
    v27 = 0xE000000000000000;
    v24 = SQLDatabase.perform(_:)(v26);

    if (!v1)
    {
      v2 = sub_1BAAE929C(v24);
    }

    return v2;
  }

  else
  {
    result = sub_1BABE7C9C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAAE929C(uint64_t a1)
{
  result = MEMORY[0x1E69E7CC8];
  v8 = MEMORY[0x1E69E7CC8];
  v5 = *(a1 + 16);
  if (v5)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v7 = *i;

      sub_1BAAE9338(&v8, &v7, v1);

      if (v2)
      {
        break;
      }

      if (!--v5)
      {
        return v8;
      }
    }
  }

  return result;
}

void sub_1BAAE9338(uint64_t a1, uint64_t *a2, void (*a3)(char *, uint64_t, uint64_t))
{
  v252 = a3;
  v231 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12800);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v230 = &v202 - v6;
  v244 = sub_1BABE715C();
  v238 = *(v244 - 8);
  v7 = MEMORY[0x1EEE9AC00](v244);
  v235 = &v202 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v243 = &v202 - v9;
  v237 = sub_1BABE713C();
  v236 = *(v237 - 8);
  v10 = MEMORY[0x1EEE9AC00](v237);
  v229 = &v202 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v245 = (&v202 - v12);
  v242 = sub_1BABE6C8C();
  v241 = *(v242 - 8);
  v13 = MEMORY[0x1EEE9AC00](v242);
  v228 = &v202 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v227 = &v202 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v226 = &v202 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v246 = &v202 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v247 = &v202 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v249 = &v202 - v23;
  v24 = sub_1BABE6F8C();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v233 = &v202 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = sub_1BABE706C();
  v239 = *(v240 - 8);
  v26 = MEMORY[0x1EEE9AC00](v240);
  v225 = &v202 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v248 = &v202 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127F0);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v232 = &v202 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v251 = &v202 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12808);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v202 - v34;
  v36 = sub_1BABE6D4C();
  v37 = *(v36 - 8);
  v254 = v36;
  v255 = v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v202 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v253 = &v202 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  v43 = MEMORY[0x1EEE9AC00](v42 - 8);
  v45 = &v202 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v43);
  v250 = &v202 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v202 - v48;
  v257 = sub_1BABE6CFC();
  v50 = *(v257 - 8);
  v51 = MEMORY[0x1EEE9AC00](v257);
  v234 = &v202 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v256 = &v202 - v53;
  v54 = *a2;
  v55 = sub_1BABE7B0C();
  v259 = v54;
  SQLResult.subscript.getter(v55, v56, &v260);

  v57 = v261;
  if (v261 == 255 || (v224 = v50, v58 = v260, v223 = sub_1BAAF9770(v260, *(&v260 + 1), v261), v60 = v59, sub_1BAAE8B8C(v58, *(&v58 + 1), v57), !v60))
  {
LABEL_14:
    if (qword_1EBC12270 != -1)
    {
      swift_once();
    }

    v86 = sub_1BABE72BC();
    __swift_project_value_buffer(v86, qword_1EBC25018);
    v87 = sub_1BABE729C();
    v88 = sub_1BABE78EC();
    if (!os_log_type_enabled(v87, v88))
    {
      goto LABEL_19;
    }

    v89 = swift_slowAlloc();
    *v89 = 0;
    v90 = "Encountered malformed pairing relationship";
LABEL_18:
    _os_log_impl(&dword_1BAACF000, v87, v88, v90, v89, 2u);
    MEMORY[0x1BFAFE460](v89, -1, -1);
LABEL_19:

    return;
  }

  v61 = sub_1BAB27AAC("RemoteDeviceProtocolMinimum", 27, 2, v54);
  if (v62 & 1) != 0 || (v63 = v61, v64 = sub_1BAB27AAC("RemoteDeviceProtocolCurrent", 27, 2, v54), (v65) || (v66 = v64, v67 = sub_1BAB27AAC("RemoteDeviceType", 16, 2, v54), (v68) || (v221 = v67, v219 = v66, v220 = v63, v69 = sub_1BABE7B0C(), v259 = v54, SQLResult.subscript.getter(v69, v70, &v260), , v71 = v261, v261 == 255) || (v222 = v60, v72 = v260, v218 = sub_1BAAF9770(v260, *(&v260 + 1), v261), v73 = v71, v75 = v74, sub_1BAAE8B8C(v72, *(&v72 + 1), v73), !v75))
  {
LABEL_13:

    goto LABEL_14;
  }

  v76 = sub_1BAB27AB8("LastIncomingConnectionDate", 26, 2, v54);
  if (v77 & 1) != 0 || (v78 = v76, v79 = sub_1BAB27AB8("LastOutgoingConnectionDate", 26, 2, v54), (v80) || (v216 = v79, v217 = v78, v81 = sub_1BAB27AAC("State", 5, 2, v54), (v82) || (v83 = v81, v84 = sub_1BAB27AB8("InitialPairingDate", 18, 2, v54), (v85))
  {

    goto LABEL_13;
  }

  v213 = v84;
  v214 = v83;
  sub_1BABE6C9C();
  v91 = v224;
  v92 = *(v224 + 48);
  v218 = v75;
  v93 = v257;
  if (v92(v49, 1, v257) == 1)
  {

    sub_1BAAD2E14(v49, &qword_1EBC12B60);
    if (qword_1EBC12270 != -1)
    {
      swift_once();
    }

    v94 = sub_1BABE72BC();
    __swift_project_value_buffer(v94, qword_1EBC25018);
    v87 = sub_1BABE729C();
    v88 = sub_1BABE78EC();
    if (!os_log_type_enabled(v87, v88))
    {
      goto LABEL_19;
    }

    v89 = swift_slowAlloc();
    *v89 = 0;
    v90 = "Encountered malformed relationship ID";
    goto LABEL_18;
  }

  (*(v91 + 32))(v256, v49, v93);
  v95 = sub_1BABE7B0C();
  v259 = v54;
  SQLResult.subscript.getter(v95, v96, &v260);

  v97 = v261;
  if (v261 == 255)
  {
    v102 = v254;
    v103 = v255;
  }

  else
  {
    v98 = *(&v260 + 1);
    v99 = v260;
    v212 = sub_1BAAF9770(v260, *(&v260 + 1), v261);
    v101 = v100;
    sub_1BAAE8B8C(v99, v98, v97);
    v102 = v254;
    v103 = v255;
    v215 = v101;
    if (v101)
    {
      goto LABEL_31;
    }
  }

  v212 = 0;
  v215 = 0xE000000000000000;
LABEL_31:
  v104 = v224;
  sub_1BABE6D2C();
  if ((*(v103 + 48))(v35, 1, v102) != 1)
  {
    (*(v103 + 32))(v253, v35, v102);
    v109 = sub_1BAAEB118(v256);
    if (v3)
    {

      (*(v103 + 8))(v253, v102);
      (*(v104 + 8))(v256, v257);
      return;
    }

    v110 = v109;
    v252 = sub_1BAAEB49C(v256);
    v209 = v110;
    v210 = 0;
    v111 = sub_1BAB27AB8("RemoteDeviceScreenScale", 23, 2, v54);
    v113 = v112;
    sub_1BAB27AB8("RemoteDeviceScreenWidth", 23, 2, v54);
    v115 = v114;
    v221 = sub_1BAB27AB8("RemoteDeviceScreenHeight", 24, 2, v54);
    v117 = v116;
    sub_1BAB27AB8("RemoteDeviceScreenCornerRadius", 30, 2, v54);
    v118 = 1;
    if ((v113 & 1) == 0 && (v115 & 1) == 0 && (v117 & 1) == 0)
    {
      sub_1BABE708C();
      v118 = 0;
    }

    v119 = sub_1BABE70BC();
    (*(*(v119 - 8) + 56))(v251, v118, 1, v119);
    v120 = sub_1BABE7B0C();
    *&v260 = v54;
    SQLResult.subscript.getter(v120, v121, &v264);

    if (v265 == 255)
    {
      v211 = 0;
      v122 = 0xF000000000000000;
      goto LABEL_58;
    }

    v123 = v264;
    if (v265 <= 1u)
    {
      if (v265)
      {
        v262 = MEMORY[0x1E69E63B0];
        v263 = &protocol witness table for Double;
        v127 = *(&v264 + 1);
        v126 = v264;
        v128 = 1;
      }

      else
      {
        v262 = MEMORY[0x1E69E7360];
        v263 = &protocol witness table for Int64;
        v127 = *(&v264 + 1);
        v126 = v264;
        v128 = 0;
      }

      sub_1BAAE8B8C(v126, v127, v128);
      *&v260 = v123;
      goto LABEL_56;
    }

    if (v265 == 2)
    {
      v124 = MEMORY[0x1E69E6158];
      v125 = &protocol witness table for String;
    }

    else
    {
      if (v265 != 3)
      {
        v129 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
        v262 = sub_1BAAE7A30();
        v263 = &protocol witness table for NSNull;
        sub_1BAAE8B8C(v123, *(&v123 + 1), 4);
        *&v260 = v129;
        goto LABEL_56;
      }

      v124 = MEMORY[0x1E6969080];
      v125 = &protocol witness table for Data;
    }

    v262 = v124;
    v263 = v125;
    v260 = v264;
LABEL_56:
    sub_1BAAE7A7C(&v260, &v259);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127D8);
    if (!swift_dynamicCast())
    {
      v258 = xmmword_1BABE9A70;
      v221 = 0xF000000000000000;
      sub_1BAADAEE8(0, 0xF000000000000000);
      v211 = 0;
LABEL_60:
      v130 = sub_1BABE7B0C();
      v259 = v54;
      SQLResult.subscript.getter(v130, v131, &v260);

      v132 = v261;
      if (v261 == 255)
      {
        v208 = 0;
        v207 = 0;
      }

      else
      {
        v133 = *(&v260 + 1);
        v111 = v260;
        v208 = sub_1BAAF9770(v260, *(&v260 + 1), v261);
        v207 = v134;
        sub_1BAAE8B8C(v111, v133, v132);
      }

      v135 = sub_1BABE7B0C();
      v259 = v54;
      SQLResult.subscript.getter(v135, v136, &v260);

      v137 = v261;
      if (v261 == 255)
      {
        v206 = 0;
        v205 = 0;
      }

      else
      {
        v138 = *(&v260 + 1);
        v111 = v260;
        v206 = sub_1BAAF9770(v260, *(&v260 + 1), v261);
        v205 = v139;
        sub_1BAAE8B8C(v111, v138, v137);
      }

      v140 = sub_1BABE7B0C();
      v259 = v54;
      SQLResult.subscript.getter(v140, v141, &v260);

      v142 = v261;
      if (v261 == 255)
      {
        v204 = 0;
        v203 = 0;
      }

      else
      {
        v143 = *(&v260 + 1);
        v111 = v260;
        v204 = sub_1BAAF9770(v260, *(&v260 + 1), v261);
        v203 = v144;
        sub_1BAAE8B8C(v111, v143, v142);
      }

      v145 = sub_1BABE7B0C();
      v259 = v54;
      SQLResult.subscript.getter(v145, v146, &v260);

      v147 = v261;
      if (v261 == 255 || (v148 = *(&v260 + 1), v111 = v260, sub_1BAAF9770(v260, *(&v260 + 1), v261), v150 = v149, sub_1BAAE8B8C(v111, v148, v147), !v150))
      {

        (*(v224 + 56))(v250, 1, 1, v257);
      }

      else
      {

        sub_1BABE6C9C();
      }

      if ((v219 | v220) < 0)
      {
        __break(1u);
        goto LABEL_104;
      }

      sub_1BABE6F5C();
      (*(v255 + 16))(v40, v253, v254);
      sub_1BAAD2DAC(v251, v232, &qword_1EBC127F0);
      sub_1BAAD2DAC(v250, v45, &qword_1EBC12B60);

      sub_1BAAF10BC(v211, v221);
      sub_1BABE701C();
      sub_1BABE6BFC();
      sub_1BABE6BFC();
      sub_1BABE6BFC();
      v151 = sub_1BAB97B58(v214);
      if (v151 <= 2)
      {
        if (v151)
        {
          if (v151 == 1)
          {

            v152 = MEMORY[0x1E69C72F0];
          }

          else
          {

            v152 = MEMORY[0x1E69C72E8];
          }
        }

        else
        {

          v152 = MEMORY[0x1E69C72E0];
        }

LABEL_86:
        v161 = v236;
        v162 = v237;
        (*(v236 + 104))(v245, *v152, v237);
        v252 = *(v224 + 16);
        v252(v234, v256, v257);
        (*(v239 + 16))(v225, v248, v240);
        v163 = *(v241 + 16);
        v164 = v242;
        v163(v226, v249, v242);
        v163(v227, v247, v164);
        (*(v161 + 16))(v229, v245, v162);
        v163(v228, v246, v164);
        v165 = v243;
        v166 = v234;
        sub_1BABE712C();
        v167 = v166;
        v252(v166, v256, v257);
        v168 = v238;
        v111 = *(v238 + 16);
        v169 = v230;
        v170 = v244;
        v111(v230, v165, v244);
        (*(v168 + 56))(v169, 0, 1, v170);
        sub_1BAB2F96C(v169, v167);
        if (qword_1EBC12270 == -1)
        {
LABEL_87:
          v171 = sub_1BABE72BC();
          __swift_project_value_buffer(v171, qword_1EBC25018);
          v111(v235, v243, v244);
          v172 = sub_1BABE729C();
          v173 = sub_1BABE790C();
          if (os_log_type_enabled(v172, v173))
          {
            v174 = swift_slowAlloc();
            v252 = swift_slowAlloc();
            *&v260 = v252;
            *v174 = 136315138;
            sub_1BAAF10D0();
            v175 = v235;
            v176 = v244;
            v177 = sub_1BABE7EAC();
            v179 = v178;
            v180 = *(v238 + 8);
            v180(v175, v176);
            v181 = sub_1BAAFA460(v177, v179, &v260);

            *(v174 + 4) = v181;
            _os_log_impl(&dword_1BAACF000, v172, v173, "Parsed stored relationship: %s", v174, 0xCu);
            v182 = v252;
            __swift_destroy_boxed_opaque_existential_1(v252);
            MEMORY[0x1BFAFE460](v182, -1, -1);
            MEMORY[0x1BFAFE460](v174, -1, -1);

            sub_1BAADAEE8(v211, v221);
            v180(v243, v176);
          }

          else
          {

            sub_1BAADAEE8(v211, v221);
            v183 = *(v238 + 8);
            v184 = v244;
            v183(v235, v244);
            v183(v243, v184);
          }

          (*(v236 + 8))(v245, v237);
          goto LABEL_102;
        }

LABEL_104:
        swift_once();
        goto LABEL_87;
      }

      if (v151 == 3)
      {
        v153 = sub_1BABE7B0C();
        v259 = v54;
        SQLResult.subscript.getter(v153, v154, &v260);

        v155 = v261;
        if (v261 != 255)
        {
          v156 = v260;
          v157 = sub_1BAAF9770(v260, *(&v260 + 1), v261);
          v159 = v158;
          sub_1BAAE8B8C(v156, *(&v156 + 1), v155);
          if (v159)
          {

            v160 = v245;
            *v245 = v157;
            v160[1] = v159;
            v152 = MEMORY[0x1E69C7300];
            goto LABEL_86;
          }
        }

        if (qword_1EBC12270 != -1)
        {
          swift_once();
        }

        v195 = sub_1BABE72BC();
        __swift_project_value_buffer(v195, qword_1EBC25018);

        v186 = sub_1BABE729C();
        v196 = sub_1BABE78EC();

        if (os_log_type_enabled(v186, v196))
        {
          v197 = swift_slowAlloc();
          v198 = swift_slowAlloc();
          *&v260 = v198;
          *v197 = 136446210;
          v199 = sub_1BAAFA460(v223, v222, &v260);

          *(v197 + 4) = v199;
          _os_log_impl(&dword_1BAACF000, v186, v196, "No migrating-from ID for %{public}s", v197, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v198);
          MEMORY[0x1BFAFE460](v198, -1, -1);
          v194 = v197;
          goto LABEL_99;
        }
      }

      else
      {
        if (v151 == 4)
        {

          v152 = MEMORY[0x1E69C72F8];
          goto LABEL_86;
        }

        if (qword_1EBC12270 != -1)
        {
          swift_once();
        }

        v185 = sub_1BABE72BC();
        __swift_project_value_buffer(v185, qword_1EBC25018);

        v186 = sub_1BABE729C();
        v187 = sub_1BABE78EC();

        if (os_log_type_enabled(v186, v187))
        {
          v188 = swift_slowAlloc();
          v189 = swift_slowAlloc();
          *&v260 = v189;
          *v188 = 136446466;
          v190 = sub_1BAAFA460(v223, v222, &v260);

          *(v188 + 4) = v190;
          *(v188 + 12) = 2082;
          LOBYTE(v259) = 5;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12810);
          v191 = sub_1BABE755C();
          v193 = sub_1BAAFA460(v191, v192, &v260);

          *(v188 + 14) = v193;
          _os_log_impl(&dword_1BAACF000, v186, v187, "Illegal state for %{public}s: %{public}s", v188, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFAFE460](v189, -1, -1);
          v194 = v188;
LABEL_99:
          MEMORY[0x1BFAFE460](v194, -1, -1);
LABEL_101:

          sub_1BAADAEE8(v211, v221);
LABEL_102:
          v200 = *(v241 + 8);
          v201 = v242;
          v200(v246, v242);
          v200(v247, v201);
          v200(v249, v201);
          (*(v239 + 8))(v248, v240);
          sub_1BAAD2E14(v250, &qword_1EBC12B60);
          sub_1BAAD2E14(v251, &qword_1EBC127F0);
          (*(v255 + 8))(v253, v254);
          (*(v224 + 8))(v256, v257);
          return;
        }
      }

      goto LABEL_101;
    }

    v122 = *(&v258 + 1);
    v211 = v258;
LABEL_58:
    v221 = v122;
    goto LABEL_60;
  }

  sub_1BAAD2E14(v35, &qword_1EBC12808);
  if (qword_1EBC12270 != -1)
  {
    swift_once();
  }

  v105 = sub_1BABE72BC();
  __swift_project_value_buffer(v105, qword_1EBC25018);
  v106 = sub_1BABE729C();
  v107 = sub_1BABE78EC();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    *v108 = 0;
    _os_log_impl(&dword_1BAACF000, v106, v107, "Encountered unknown device type", v108, 2u);
    MEMORY[0x1BFAFE460](v108, -1, -1);
  }

  (*(v224 + 8))(v256, v257);
}

void sub_1BAAEB150(void *a1, uint64_t *a2)
{
  v4 = sub_1BABE6F8C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = *a2;
  v6 = sub_1BABE7B0C();
  v34 = v5;
  SQLResult.subscript.getter(v6, v7, &v31);

  v8 = v33;
  if (v33 == 255)
  {
    goto LABEL_9;
  }

  v10 = v31;
  v9 = v32;
  sub_1BAAF9770(v31, v32, v33);
  v12 = v11;
  sub_1BAAE8B8C(v10, v9, v8);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = sub_1BABE7B0C();
  v34 = v5;
  SQLResult.subscript.getter(v13, v14, &v31);

  v15 = v33;
  if (v33 != 255)
  {
    v30 = a1;
    v17 = v31;
    v16 = v32;
    sub_1BAAF9770(v31, v32, v33);
    v19 = v18;
    sub_1BAAE8B8C(v17, v16, v15);
    if (v19)
    {
      v20 = sub_1BAB27AAC("ProtocolMinimum", 15, 2, v5);
      if (v21 & 1) != 0 || (v22 = v20, v23 = sub_1BAB27AAC("ProtocolCurrent", 15, 2, v5), (v24))
      {

        goto LABEL_8;
      }

      v29 = v23;
      sub_1BABE71AC();
      sub_1BABE719C();

      if ((v29 | v22) < 0)
      {
        __break(1u);
      }

      else
      {
        sub_1BABE6F5C();
        sub_1BABE71DC();
        swift_allocObject();
        sub_1BABE71BC();
        MEMORY[0x1BFAFD300]();
        if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_16:
          sub_1BABE772C();
          return;
        }
      }

      sub_1BABE76EC();
      goto LABEL_16;
    }
  }

LABEL_8:

LABEL_9:
  if (qword_1EBC12270 != -1)
  {
    swift_once();
  }

  v25 = sub_1BABE72BC();
  __swift_project_value_buffer(v25, qword_1EBC25018);
  v26 = sub_1BABE729C();
  v27 = sub_1BABE78EC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1BAACF000, v26, v27, "Encountered malformed pairing relationship zone", v28, 2u);
    MEMORY[0x1BFAFE460](v28, -1, -1);
  }
}

uint64_t sub_1BAAEB4D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t *))
{
  v37 = 0;
  v38 = 0xE000000000000000;
  v4 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v39 = v4;
  MEMORY[0x1BFAFD200](55);
  MEMORY[0x1BFAFD240](0x200A5443454C4553, 0xEB00000000202020);
  v5 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v5);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v6 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v7 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v7);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v8 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v8);

  MEMORY[0x1BFAFD240](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v9 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v9);

  MEMORY[0x1BFAFD240](0x200A45524548570ALL, 0xEB00000000202020);
  v10 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v10);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v11 = sub_1BABE6CAC();
  v35 = MEMORY[0x1E69E6158];
  v36 = &protocol witness table for String;
  v32 = v11;
  v33 = v12;
  sub_1BAAE779C(&v32, &v28);

  SQLValue.init(_:)(&v28, v30);
  v13 = v30[0];
  v14 = v30[1];
  v15 = v31;
  v28 = 0x676E69646E696240;
  v29 = 0xE800000000000000;
  v40 = *(v4 + 16) + 1;
  v16 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v16);

  v17 = v28;
  v18 = v29;
  MEMORY[0x1BFAFD240](v28, v29);
  sub_1BAAE7800(v13, v14, v15);
  v19 = v39;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v19;
  sub_1BAAE5904(v13, v14, v15, v17, v18, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v13, v14, v15);
  v39 = v28;
  __swift_destroy_boxed_opaque_existential_1(&v32);
  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v21 = v37;
  v22 = v38;
  v23 = v39;
  if (swift_weakLoadStrong())
  {
    v32 = v23;
    v33 = v21;
    v34 = v22;
    v24 = SQLDatabase.perform(_:)(&v32);

    if (!v27)
    {
      v23 = sub_1BAAF1004(v24, a4);
    }

    return v23;
  }

  else
  {
    result = sub_1BABE7C9C();
    __break(1u);
  }

  return result;
}

void sub_1BAAEB8BC(void **a1, uint64_t *a2)
{
  v5 = sub_1BABE6F8C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1BABE6DEC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1BABE6E1C();
  v42 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = sub_1BABE7B0C();
  v46 = v12;
  SQLResult.subscript.getter(v13, v14, &v43);

  v15 = v45;
  if (v45 == 255)
  {
    goto LABEL_9;
  }

  v39[3] = v9;
  v40 = a1;
  v17 = v43;
  v16 = v44;
  v41 = sub_1BAAF9770(v43, v44, v45);
  v19 = v18;
  sub_1BAAE8B8C(v17, v16, v15);
  if (!v19)
  {
    goto LABEL_9;
  }

  v20 = sub_1BABE7B0C();
  v46 = v12;
  SQLResult.subscript.getter(v20, v21, &v43);

  v22 = v45;
  if (v45 == 255 || (v39[2] = v2, v24 = v43, v23 = v44, v39[1] = sub_1BAAF9770(v43, v44, v45), v26 = v25, sub_1BAAE8B8C(v24, v23, v22), !v26))
  {
LABEL_8:

LABEL_9:
    if (qword_1EBC12270 != -1)
    {
      swift_once();
    }

    v32 = sub_1BABE72BC();
    __swift_project_value_buffer(v32, qword_1EBC25018);
    v33 = sub_1BABE729C();
    v34 = sub_1BABE78EC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1BAACF000, v33, v34, "Encountered malformed pairing relationship message type", v35, 2u);
      MEMORY[0x1BFAFE460](v35, -1, -1);
    }

    return;
  }

  v27 = sub_1BAB27AAC("ProtocolMinimum", 15, 2, v12);
  if (v28 & 1) != 0 || (v29 = v27, v30 = sub_1BAB27AAC("ProtocolCurrent", 15, 2, v12), (v31))
  {

    goto LABEL_8;
  }

  v36 = v30;
  sub_1BABE6DCC();
  if ((v36 | v29) < 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  sub_1BABE6F5C();
  sub_1BABE6DFC();
  v7 = v40;
  v26 = *v40;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_20:
    v26 = sub_1BAAF9A04(0, v26[2] + 1, 1, v26);
  }

  v38 = v26[2];
  v37 = v26[3];
  if (v38 >= v37 >> 1)
  {
    v26 = sub_1BAAF9A04(v37 > 1, v38 + 1, 1, v26);
  }

  v26[2] = v38 + 1;
  (*(v42 + 32))(v26 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v38, v11);
  *v7 = v26;
}

uint64_t Database.PairingRelationshipStore.__deallocating_deinit()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1BAAEBD5C(uint64_t a1)
{
  v261 = sub_1BABE6C8C();
  v260 = *(v261 - 8);
  MEMORY[0x1EEE9AC00](v261);
  v256 = v237 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v248 = v237 - v4;
  v243 = sub_1BABE6D4C();
  v242 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v240 = v237 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = sub_1BABE6F8C();
  v262 = *(v255 - 8);
  MEMORY[0x1EEE9AC00](v255);
  v254 = v237 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = sub_1BABE6CFC();
  v257 = *(v258 - 8);
  MEMORY[0x1EEE9AC00](v258);
  v253 = v237 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v237 - v9;
  v264 = sub_1BABE706C();
  v266 = *(v264 - 8);
  v11 = MEMORY[0x1EEE9AC00](v264);
  v251 = v237 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v247 = v237 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v246 = v237 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v245 = v237 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v244 = v237 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v259 = v237 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = v237 - v23;
  v25 = sub_1BABE70BC();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v237 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1BABE713C();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (v237 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v265 = a1;
  sub_1BABE714C();
  v33 = (*(v30 + 88))(v32, v29);
  if (v33 == *MEMORY[0x1E69C7300])
  {
    (*(v30 + 96))(v32, v29);
    v34 = v32[1];
    v238 = *v32;
    v250 = v34;
    v35 = 3;
LABEL_3:
    v249 = v35;
    goto LABEL_6;
  }

  if (v33 != *MEMORY[0x1E69C72E0])
  {
    if (v33 == *MEMORY[0x1E69C72F0])
    {
      v238 = 0;
      v250 = 0;
      v35 = 1;
    }

    else if (v33 == *MEMORY[0x1E69C72E8])
    {
      v238 = 0;
      v250 = 0;
      v35 = 2;
    }

    else
    {
      if (v33 != *MEMORY[0x1E69C72F8])
      {
        goto LABEL_65;
      }

      v238 = 0;
      v250 = 0;
      v35 = 4;
    }

    goto LABEL_3;
  }

  v238 = 0;
  v250 = 0;
  v249 = 0;
LABEL_6:
  sub_1BABE70EC();
  sub_1BABE6F9C();
  v263 = *(v266 + 8);
  v266 += 8;
  v263(v24, v264);
  v239 = (*(v26 + 48))(v10, 1, v25);
  if (v239 == 1)
  {
    sub_1BAAD2E14(v10, &qword_1EBC127F0);
    v241 = 1;
    v36 = 0.0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
  }

  else
  {
    (*(v26 + 32))(v28, v10, v25);
    sub_1BABE70AC();
    v37 = v40;
    sub_1BABE709C();
    v39 = v41;
    sub_1BABE709C();
    v38 = v42;
    v43 = COERCE_DOUBLE(sub_1BABE707C());
    v45 = v44;
    (*(v26 + 8))(v28, v25);
    v241 = v45;
    if (v45)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = v43;
    }
  }

  v278 = 0;
  v279 = 0xE000000000000000;
  v46 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v280 = v46;
  MEMORY[0x1BFAFD200](267);
  MEMORY[0x1BFAFD240](0x204543414C504552, 0xED0000204F544E49);
  v47 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v47);

  MEMORY[0x1BFAFD240](0x202020200A2820, 0xE700000000000000);
  v48 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v48);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v49 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v49);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v50 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v50);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v51 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v51);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v52 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v52);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v53 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v53);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v54 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v54);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v55 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v55);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v56 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v56);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v57 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v57);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v58 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v58);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v59 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v59);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v60 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v60);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v61 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v61);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v62 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v62);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v63 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v63);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v64 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v64);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v65 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v65);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v66 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v66);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v67 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v67);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF5800);
  v68 = v253;
  sub_1BABE711C();
  v69 = sub_1BABE6CAC();
  v71 = v70;
  v72 = *(v257 + 8);
  v237[1] = v257 + 8;
  v237[0] = v72;
  v72(v68, v258);
  v276 = MEMORY[0x1E69E6158];
  v277 = &protocol witness table for String;
  v273 = v69;
  v274 = v71;
  sub_1BAAE779C(&v273, &v267);

  SQLValue.init(_:)(&v267, &v270);
  v74 = v270;
  v73 = v271;
  v75 = v272;
  *&v267 = 0x676E69646E696240;
  *(&v267 + 1) = 0xE800000000000000;
  v281 = *(v46 + 16) + 1;
  v76 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v76);

  v77 = v267;
  MEMORY[0x1BFAFD240](v267, *(&v267 + 1));
  sub_1BAAE7800(v74, v73, v75);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v267 = v280;
  sub_1BAAE5904(v74, v73, v75, v77, *(&v77 + 1), isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v74, v73, v75);
  v79 = v267;
  v280 = v267;
  __swift_destroy_boxed_opaque_existential_1(&v273);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v80 = v259;
  sub_1BABE70EC();
  v81 = sub_1BABE702C();
  v83 = v82;
  v263(v80, v264);
  v276 = MEMORY[0x1E69E6158];
  v277 = &protocol witness table for String;
  v273 = v81;
  v274 = v83;
  sub_1BAAE779C(&v273, &v267);

  SQLValue.init(_:)(&v267, &v270);
  v84 = v270;
  v85 = v271;
  LOBYTE(v74) = v272;
  *&v267 = 0x676E69646E696240;
  *(&v267 + 1) = 0xE800000000000000;
  v281 = *(v79 + 16) + 1;
  v86 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v86);

  v87 = v267;
  MEMORY[0x1BFAFD240](v267, *(&v267 + 1));
  sub_1BAAE7800(v84, v85, v74);
  v88 = swift_isUniquelyReferenced_nonNull_native();
  *&v267 = v280;
  sub_1BAAE5904(v84, v85, v74, v87, *(&v87 + 1), v88);

  sub_1BAAE7878(v84, v85, v74);
  v89 = v267;
  v280 = v267;
  __swift_destroy_boxed_opaque_existential_1(&v273);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  sub_1BABE70EC();
  v90 = sub_1BABE703C();
  v92 = v91;
  v263(v80, v264);
  v276 = MEMORY[0x1E69E6158];
  v277 = &protocol witness table for String;
  v273 = v90;
  v274 = v92;
  sub_1BAAE779C(&v273, &v267);

  SQLValue.init(_:)(&v267, &v270);
  v93 = v270;
  v94 = v271;
  LOBYTE(v74) = v272;
  *&v267 = 0x676E69646E696240;
  *(&v267 + 1) = 0xE800000000000000;
  v281 = *(v89 + 16) + 1;
  v95 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v95);

  v96 = v267;
  MEMORY[0x1BFAFD240](v267, *(&v267 + 1));
  sub_1BAAE7800(v93, v94, v74);
  v97 = swift_isUniquelyReferenced_nonNull_native();
  *&v267 = v280;
  sub_1BAAE5904(v93, v94, v74, v96, *(&v96 + 1), v97);

  sub_1BAAE7878(v93, v94, v74);
  v98 = v267;
  v280 = v267;
  __swift_destroy_boxed_opaque_existential_1(&v273);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  sub_1BABE70EC();
  v99 = v254;
  sub_1BABE700C();
  v263(v80, v264);
  v100 = sub_1BABE6F7C();
  v101 = (v262 + 8);
  v102 = *(v262 + 1);
  v103 = v255;
  v102(v99, v255);
  if (v100 < 0)
  {
    __break(1u);
    goto LABEL_64;
  }

  v276 = MEMORY[0x1E69E7360];
  v277 = &protocol witness table for Int64;
  v273 = v100;
  sub_1BAAE779C(&v273, &v267);
  SQLValue.init(_:)(&v267, &v270);
  v262 = v101;
  v253 = v102;
  v104 = v270;
  v105 = v271;
  v106 = v272;
  *&v267 = 0x676E69646E696240;
  *(&v267 + 1) = 0xE800000000000000;
  v281 = *(v98 + 16) + 1;
  v107 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v107);

  v108 = v267;
  MEMORY[0x1BFAFD240](v267, *(&v267 + 1));
  sub_1BAAE7800(v104, v105, v106);
  v109 = swift_isUniquelyReferenced_nonNull_native();
  *&v267 = v280;
  sub_1BAAE5904(v104, v105, v106, v108, *(&v108 + 1), v109);

  v110 = v263;
  sub_1BAAE7878(v104, v105, v106);
  v111 = v267;
  v280 = v267;
  __swift_destroy_boxed_opaque_existential_1(&v273);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v112 = v259;
  sub_1BABE70EC();
  sub_1BABE700C();
  v110(v112, v264);
  v113 = sub_1BABE6F6C();
  (v253)(v99, v103);
  if (v113 < 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v277 = &protocol witness table for Int64;
  v276 = MEMORY[0x1E69E7360];
  v273 = v113;
  sub_1BAAE779C(&v273, &v267);
  SQLValue.init(_:)(&v267, &v270);
  v114 = v270;
  v115 = v271;
  v116 = v272;
  *&v267 = 0x676E69646E696240;
  *(&v267 + 1) = 0xE800000000000000;
  v281 = *(v111 + 16) + 1;
  v117 = v110;
  v118 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v118);

  v119 = v267;
  MEMORY[0x1BFAFD240](v267, *(&v267 + 1));
  sub_1BAAE7800(v114, v115, v116);
  v120 = swift_isUniquelyReferenced_nonNull_native();
  *&v267 = v280;
  sub_1BAAE5904(v114, v115, v116, v119, *(&v119 + 1), v120);
  v121 = v264;

  sub_1BAAE7878(v114, v115, v116);
  v122 = v267;
  v280 = v267;
  __swift_destroy_boxed_opaque_existential_1(&v273);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  sub_1BABE70EC();
  v123 = v240;
  sub_1BABE6FAC();
  v117(v112, v121);
  v124 = sub_1BABE6D3C();
  (*(v242 + 8))(v123, v243);
  v277 = &protocol witness table for Int64;
  v276 = MEMORY[0x1E69E7360];
  v273 = v124;
  sub_1BAAE779C(&v273, &v267);
  SQLValue.init(_:)(&v267, &v270);
  v125 = v270;
  v126 = v271;
  LOBYTE(v115) = v272;
  *&v267 = 0x676E69646E696240;
  *(&v267 + 1) = 0xE800000000000000;
  v281 = *(v122 + 16) + 1;
  v127 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v127);

  v128 = v267;
  MEMORY[0x1BFAFD240](v267, *(&v267 + 1));
  sub_1BAAE7800(v125, v126, v115);
  v129 = swift_isUniquelyReferenced_nonNull_native();
  *&v267 = v280;
  sub_1BAAE5904(v125, v126, v115, v128, *(&v128 + 1), v129);

  sub_1BAAE7878(v125, v126, v115);
  v280 = v267;
  __swift_destroy_boxed_opaque_existential_1(&v273);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v130 = v239;
  if (v239 == 1)
  {
    v269 = 0;
    v267 = 0u;
    v268 = 0u;
    v131 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v276 = sub_1BAAE7A30();
    v277 = &protocol witness table for NSNull;
    v273 = v131;
    v132 = MEMORY[0x1E69E6158];
    if (*(&v268 + 1))
    {
      sub_1BAAD2E14(&v267, &qword_1EBC12770);
    }
  }

  else
  {
    *(&v268 + 1) = MEMORY[0x1E69E63B0];
    v269 = &protocol witness table for Double;
    *&v267 = v39;
    sub_1BAAE7A7C(&v267, &v273);
    v132 = MEMORY[0x1E69E6158];
  }

  v133 = v276;
  v134 = v277;
  v135 = __swift_project_boxed_opaque_existential_1(&v273, v276);
  sub_1BABA876C(v135, &v278, v133, v134);
  __swift_destroy_boxed_opaque_existential_1(&v273);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v136 = v263;
  if (v130 == 1)
  {
    v269 = 0;
    v267 = 0u;
    v268 = 0u;
    v137 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v276 = sub_1BAAE7A30();
    v277 = &protocol witness table for NSNull;
    v273 = v137;
    if (*(&v268 + 1))
    {
      sub_1BAAD2E14(&v267, &qword_1EBC12770);
    }
  }

  else
  {
    *(&v268 + 1) = MEMORY[0x1E69E63B0];
    v269 = &protocol witness table for Double;
    *&v267 = v38;
    sub_1BAAE7A7C(&v267, &v273);
  }

  v138 = v276;
  v139 = v277;
  v140 = __swift_project_boxed_opaque_existential_1(&v273, v276);
  sub_1BABA876C(v140, &v278, v138, v139);
  __swift_destroy_boxed_opaque_existential_1(&v273);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  if (v130 == 1)
  {
    v269 = 0;
    v267 = 0u;
    v268 = 0u;
    v141 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v276 = sub_1BAAE7A30();
    v277 = &protocol witness table for NSNull;
    v273 = v141;
    if (*(&v268 + 1))
    {
      sub_1BAAD2E14(&v267, &qword_1EBC12770);
    }
  }

  else
  {
    *(&v268 + 1) = MEMORY[0x1E69E63B0];
    v269 = &protocol witness table for Double;
    *&v267 = v37;
    sub_1BAAE7A7C(&v267, &v273);
  }

  v142 = v276;
  v143 = v277;
  v144 = __swift_project_boxed_opaque_existential_1(&v273, v276);
  sub_1BABA876C(v144, &v278, v142, v143);
  __swift_destroy_boxed_opaque_existential_1(&v273);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  if (v241)
  {
    v269 = 0;
    v267 = 0u;
    v268 = 0u;
    v145 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v276 = sub_1BAAE7A30();
    v277 = &protocol witness table for NSNull;
    v273 = v145;
    if (*(&v268 + 1))
    {
      sub_1BAAD2E14(&v267, &qword_1EBC12770);
    }
  }

  else
  {
    *(&v268 + 1) = MEMORY[0x1E69E63B0];
    v269 = &protocol witness table for Double;
    *&v267 = v36;
    sub_1BAAE7A7C(&v267, &v273);
  }

  v146 = v276;
  v147 = v277;
  v148 = __swift_project_boxed_opaque_existential_1(&v273, v276);
  sub_1BABA876C(v148, &v278, v146, v147);
  __swift_destroy_boxed_opaque_existential_1(&v273);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v149 = v244;
  sub_1BABE70EC();
  v150 = sub_1BABE6FEC();
  v152 = v151;
  v136(v149, v121);
  if (v152)
  {
    *(&v268 + 1) = v132;
    v269 = &protocol witness table for String;
    *&v267 = v150;
    *(&v267 + 1) = v152;
    sub_1BAAE7A7C(&v267, &v273);
  }

  else
  {
    v269 = 0;
    v267 = 0u;
    v268 = 0u;
    v153 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v276 = sub_1BAAE7A30();
    v277 = &protocol witness table for NSNull;
    v273 = v153;
    if (*(&v268 + 1))
    {
      sub_1BAAD2E14(&v267, &qword_1EBC12770);
    }
  }

  v154 = v276;
  v155 = v277;
  v156 = __swift_project_boxed_opaque_existential_1(&v273, v276);
  sub_1BABA876C(v156, &v278, v154, v155);
  __swift_destroy_boxed_opaque_existential_1(&v273);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v157 = v245;
  sub_1BABE70EC();
  v158 = sub_1BABE6FBC();
  v160 = v159;
  v136(v157, v121);
  if (v160)
  {
    *(&v268 + 1) = v132;
    v269 = &protocol witness table for String;
    *&v267 = v158;
    *(&v267 + 1) = v160;
    sub_1BAAE7A7C(&v267, &v273);
  }

  else
  {
    v269 = 0;
    v267 = 0u;
    v268 = 0u;
    v161 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v276 = sub_1BAAE7A30();
    v277 = &protocol witness table for NSNull;
    v273 = v161;
    if (*(&v268 + 1))
    {
      sub_1BAAD2E14(&v267, &qword_1EBC12770);
    }
  }

  v162 = v276;
  v163 = v277;
  v164 = __swift_project_boxed_opaque_existential_1(&v273, v276);
  sub_1BABA876C(v164, &v278, v162, v163);
  __swift_destroy_boxed_opaque_existential_1(&v273);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v165 = v246;
  sub_1BABE70EC();
  v166 = sub_1BABE705C();
  v168 = v167;
  v136(v165, v121);
  if (v168)
  {
    *(&v268 + 1) = v132;
    v269 = &protocol witness table for String;
    *&v267 = v166;
    *(&v267 + 1) = v168;
    sub_1BAAE7A7C(&v267, &v273);
  }

  else
  {
    v269 = 0;
    v267 = 0u;
    v268 = 0u;
    v169 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v276 = sub_1BAAE7A30();
    v277 = &protocol witness table for NSNull;
    v273 = v169;
    if (*(&v268 + 1))
    {
      sub_1BAAD2E14(&v267, &qword_1EBC12770);
    }
  }

  v170 = v276;
  v171 = v277;
  v172 = __swift_project_boxed_opaque_existential_1(&v273, v276);
  sub_1BABA876C(v172, &v278, v170, v171);
  __swift_destroy_boxed_opaque_existential_1(&v273);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v173 = v247;
  sub_1BABE70EC();
  v174 = v248;
  sub_1BABE6FDC();
  v136(v173, v121);
  v175 = v258;
  if ((*(v257 + 48))(v174, 1, v258) == 1)
  {
    sub_1BAAD2E14(v174, &qword_1EBC12B60);
    v267 = 0u;
    v268 = 0u;
    v269 = 0;
    v176 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v276 = sub_1BAAE7A30();
    v277 = &protocol witness table for NSNull;
    v273 = v176;
    if (*(&v268 + 1))
    {
      sub_1BAAD2E14(&v267, &qword_1EBC12770);
    }
  }

  else
  {
    v177 = sub_1BABE6CAC();
    *(&v268 + 1) = v132;
    v269 = &protocol witness table for String;
    *&v267 = v177;
    *(&v267 + 1) = v178;
    (v237[0])(v174, v175);
    sub_1BAAE7A7C(&v267, &v273);
  }

  v179 = v276;
  v180 = v277;
  v181 = __swift_project_boxed_opaque_existential_1(&v273, v276);
  sub_1BABA876C(v181, &v278, v179, v180);
  __swift_destroy_boxed_opaque_existential_1(&v273);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v182 = v256;
  sub_1BABE70FC();
  sub_1BABE6C0C();
  v184 = v183;
  v186 = v260 + 8;
  v185 = *(v260 + 8);
  v185(v182, v261);
  v276 = MEMORY[0x1E69E63B0];
  v277 = &protocol witness table for Double;
  v273 = v184;
  sub_1BAAE779C(&v273, &v267);
  SQLValue.init(_:)(&v267, &v270);
  v187 = v270;
  v188 = v271;
  v189 = v272;
  *&v267 = 0x676E69646E696240;
  *(&v267 + 1) = 0xE800000000000000;
  v281 = *(v280 + 16) + 1;
  v190 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v190);

  v191 = v267;
  MEMORY[0x1BFAFD240](v267, *(&v267 + 1));
  sub_1BAAE7800(v187, v188, v189);
  v192 = swift_isUniquelyReferenced_nonNull_native();
  *&v267 = v280;
  sub_1BAAE5904(v187, v188, v189, v191, *(&v191 + 1), v192);

  sub_1BAAE7878(v187, v188, v189);
  v193 = v267;
  v280 = v267;
  __swift_destroy_boxed_opaque_existential_1(&v273);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  sub_1BABE710C();
  sub_1BABE6C0C();
  v195 = v194;
  v260 = v186;
  v262 = v185;
  v185(v182, v261);
  v276 = MEMORY[0x1E69E63B0];
  v277 = &protocol witness table for Double;
  v273 = v195;
  sub_1BAAE779C(&v273, &v267);
  SQLValue.init(_:)(&v267, &v270);
  v196 = v270;
  v197 = v271;
  v198 = v272;
  *&v267 = 0x676E69646E696240;
  *(&v267 + 1) = 0xE800000000000000;
  v281 = *(v193 + 16) + 1;
  v199 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v199);

  v200 = v267;
  MEMORY[0x1BFAFD240](v267, *(&v267 + 1));
  sub_1BAAE7800(v196, v197, v198);
  v201 = swift_isUniquelyReferenced_nonNull_native();
  *&v267 = v280;
  sub_1BAAE5904(v196, v197, v198, v200, *(&v200 + 1), v201);

  sub_1BAAE7878(v196, v197, v198);
  v202 = v267;
  v280 = v267;
  __swift_destroy_boxed_opaque_existential_1(&v273);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v277 = &protocol witness table for Int64;
  v276 = MEMORY[0x1E69E7360];
  v273 = v249;
  sub_1BAAE779C(&v273, &v267);
  SQLValue.init(_:)(&v267, &v270);
  v203 = v270;
  v204 = v271;
  v205 = v272;
  *&v267 = 0x676E69646E696240;
  *(&v267 + 1) = 0xE800000000000000;
  v281 = *(v202 + 16) + 1;
  v206 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v206);

  v207 = v267;
  MEMORY[0x1BFAFD240](v267, *(&v267 + 1));
  sub_1BAAE7800(v203, v204, v205);
  v208 = swift_isUniquelyReferenced_nonNull_native();
  *&v267 = v280;
  sub_1BAAE5904(v203, v204, v205, v207, *(&v207 + 1), v208);

  sub_1BAAE7878(v203, v204, v205);
  v280 = v267;
  __swift_destroy_boxed_opaque_existential_1(&v273);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  if (v250)
  {
    *(&v268 + 1) = MEMORY[0x1E69E6158];
    v269 = &protocol witness table for String;
    *&v267 = v238;
    *(&v267 + 1) = v250;
    sub_1BAAE7A7C(&v267, &v273);
    v209 = v264;
  }

  else
  {
    v269 = 0;
    v267 = 0u;
    v268 = 0u;
    v210 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v276 = sub_1BAAE7A30();
    v277 = &protocol witness table for NSNull;
    v273 = v210;
    v209 = v264;
    if (*(&v268 + 1))
    {
      sub_1BAAD2E14(&v267, &qword_1EBC12770);
    }
  }

  v211 = v276;
  v212 = v277;
  v213 = __swift_project_boxed_opaque_existential_1(&v273, v276);
  sub_1BABA876C(v213, &v278, v211, v212);
  __swift_destroy_boxed_opaque_existential_1(&v273);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v214 = v256;
  v215 = v265;
  sub_1BABE70DC();
  sub_1BABE6C0C();
  v217 = v216;
  v262(v214, v261);
  v276 = MEMORY[0x1E69E63B0];
  v277 = &protocol witness table for Double;
  v273 = v217;
  sub_1BAAE779C(&v273, &v267);
  SQLValue.init(_:)(&v267, &v270);
  v218 = v270;
  v219 = v271;
  v220 = v272;
  *&v267 = 0x676E69646E696240;
  *(&v267 + 1) = 0xE800000000000000;
  v281 = *(v280 + 16) + 1;
  v221 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v221);

  v222 = v267;
  MEMORY[0x1BFAFD240](v267, *(&v267 + 1));
  sub_1BAAE7800(v218, v219, v220);
  v223 = swift_isUniquelyReferenced_nonNull_native();
  *&v267 = v280;
  sub_1BAAE5904(v218, v219, v220, v222, *(&v222 + 1), v223);

  sub_1BAAE7878(v218, v219, v220);
  v280 = v267;
  __swift_destroy_boxed_opaque_existential_1(&v273);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v224 = v251;
  sub_1BABE70EC();
  v225 = sub_1BABE6FFC();
  v227 = v226;
  v263(v224, v209);
  if (v227 >> 60 == 15)
  {
    v269 = 0;
    v267 = 0u;
    v268 = 0u;
    v228 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v276 = sub_1BAAE7A30();
    v277 = &protocol witness table for NSNull;
    v273 = v228;
    if (*(&v268 + 1))
    {
      sub_1BAAD2E14(&v267, &qword_1EBC12770);
    }
  }

  else
  {
    *(&v268 + 1) = MEMORY[0x1E6969080];
    v269 = &protocol witness table for Data;
    *&v267 = v225;
    *(&v267 + 1) = v227;
    sub_1BAAE7A7C(&v267, &v273);
  }

  v229 = v276;
  v230 = v277;
  v231 = __swift_project_boxed_opaque_existential_1(&v273, v276);
  sub_1BABA876C(v231, &v278, v229, v230);
  __swift_destroy_boxed_opaque_existential_1(&v273);
  MEMORY[0x1BFAFD240](3877130, 0xE300000000000000);
  v233 = v278;
  v232 = v279;
  v234 = v280;
  if (!swift_weakLoadStrong())
  {
    while (1)
    {
LABEL_65:
      sub_1BABE7C9C();
      __break(1u);
    }
  }

  v273 = v234;
  v274 = v233;
  v275 = v232;
  v235 = v252;
  SQLDatabase.perform(_:)(&v273);

  if (!v235)
  {

    sub_1BAAEE8E0(v215);
    return sub_1BAAEFB00(v215);
  }

  return result;
}

void sub_1BAAEE368()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v1 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v1 + 4);
  sub_1BAAF0E90(&v23);
  if (v0)
  {
LABEL_10:
    os_unfair_lock_unlock(v1 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v1 + 4);
  v3 = v23;

  if (v3 != 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  v4 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v30 = v4;
  MEMORY[0x1BFAFD200](24);
  MEMORY[0x1BFAFD240](0x46204554454C4544, 0xEC000000204D4F52);
  v5 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v5);

  MEMORY[0x1BFAFD240](0x2045524548570ALL, 0xE700000000000000);
  v6 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v7 = sub_1BABE6CAC();
  v26 = MEMORY[0x1E69E6158];
  v27 = &protocol witness table for String;
  v23 = v7;
  v24 = v8;
  sub_1BAAE779C(&v23, &v19);

  SQLValue.init(_:)(&v19, v21);
  v9 = v21[0];
  v1 = v21[1];
  v10 = v22;
  v19 = 0x676E69646E696240;
  v20 = 0xE800000000000000;
  v31 = *(v4 + 16) + 1;
  v11 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v11);

  v12 = v19;
  v13 = v20;
  MEMORY[0x1BFAFD240](v19, v20);
  sub_1BAAE7800(v9, v1, v10);
  v14 = v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v14;
  sub_1BAAE5904(v9, v1, v10, v12, v13, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v9, v1, v10);
  v30 = v19;
  __swift_destroy_boxed_opaque_existential_1(&v23);
  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v17 = v28;
  v16 = v29;
  v18 = v30;
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_10;
  }

  v23 = v18;
  v24 = v17;
  v25 = v16;
  SQLDatabase.perform(_:)(&v23);
}

void sub_1BAAEE6E8()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v1 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v1 + 4);
  sub_1BAAF1130(&v7);
  if (v0)
  {
LABEL_10:
    os_unfair_lock_unlock(v1 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v1 + 4);
  v3 = v7;

  if (v3 != 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = 0;
  v8 = 0xE000000000000000;
  v9 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](13);
  MEMORY[0x1BFAFD240](0x46204554454C4544, 0xEC000000204D4F52);
  v4 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v4);

  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v1 = v7;
  v5 = v8;
  v6 = v9;
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  v8 = v1;
  v9 = v5;
  SQLDatabase.perform(_:)(&v7);
}

uint64_t sub_1BAAEE8E0(uint64_t a1)
{
  v46 = sub_1BABE706C();
  v42 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BABE6CFC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v38 - v11;
  sub_1BABE711C();
  sub_1BAAEED18();
  v47 = v2;
  if (v2)
  {
    return (*(v7 + 8))(v12, v6);
  }

  v39 = v10;
  v45 = v1;
  v41 = *(v7 + 8);
  v41(v12, v6);
  v44 = a1;
  sub_1BABE70EC();
  v14 = sub_1BABE704C();
  result = (*(v42 + 8))(v5, v46);
  v15 = v7 + 8;
  v43 = v6;
  if ((v14 & 0xC000000000000001) != 0)
  {
    result = sub_1BABE7C1C();
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v14 = result | 0x8000000000000000;
  }

  else
  {
    v19 = -1 << *(v14 + 32);
    v16 = v14 + 64;
    v17 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(v14 + 64);
  }

  v22 = v39;
  v38[1] = v17;
  v23 = (v17 + 64) >> 6;
  v42 = v15;
  v24 = 0;
  v46 = 0;
  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v25 = v24;
  v26 = v18;
  if (v18)
  {
LABEL_14:
    v40 = v18;
    v18 = (v26 - 1) & v26;
    v27 = (v24 << 9) | (8 * __clz(__rbit64(v26)));
    v28 = *(*(v14 + 48) + v27);
    v29 = *(*(v14 + 56) + v27);

    if (v28)
    {
      while (1)
      {
        v34 = v14;
        v35 = v22;
        sub_1BABE711C();
        v36 = v22;
        v37 = v47;
        sub_1BAAEF098(v29, v36);
        v47 = v37;
        if (v37)
        {
          break;
        }

        result = (v41)(v35, v43);
        v22 = v35;
        v14 = v34;
        v46 = v24;
        if ((v34 & 0x8000000000000000) == 0)
        {
          goto LABEL_10;
        }

LABEL_16:
        v30 = sub_1BABE7C7C();
        if (v30)
        {
          v32 = v31;
          v48 = v30;
          sub_1BABE71AC();
          swift_dynamicCast();
          v33 = v49;
          v48 = v32;
          sub_1BABE71DC();
          swift_dynamicCast();
          v29 = v49;
          v40 = v18;
          v22 = v39;
          if (v33)
          {
            continue;
          }
        }

        return sub_1BAAF10B4();
      }

      sub_1BAAF10B4();

      return (v41)(v35, v43);
    }

    else
    {
      return sub_1BAAF10B4();
    }
  }

  else
  {
    while (1)
    {
      v24 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v24 >= v23)
      {
        return sub_1BAAF10B4();
      }

      v26 = *(v16 + 8 * v24);
      ++v25;
      if (v26)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1BAAEED18()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v1 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v1 + 4);
  sub_1BAAF1130(&v23);
  if (v0)
  {
LABEL_10:
    os_unfair_lock_unlock(v1 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v1 + 4);
  v3 = v23;

  if (v3 != 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  v4 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v30 = v4;
  MEMORY[0x1BFAFD200](24);
  MEMORY[0x1BFAFD240](0x46204554454C4544, 0xEC000000204D4F52);
  v5 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v5);

  MEMORY[0x1BFAFD240](0x2045524548570ALL, 0xE700000000000000);
  v6 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v7 = sub_1BABE6CAC();
  v26 = MEMORY[0x1E69E6158];
  v27 = &protocol witness table for String;
  v23 = v7;
  v24 = v8;
  sub_1BAAE779C(&v23, &v19);

  SQLValue.init(_:)(&v19, v21);
  v9 = v21[0];
  v1 = v21[1];
  v10 = v22;
  v19 = 0x676E69646E696240;
  v20 = 0xE800000000000000;
  v31 = *(v4 + 16) + 1;
  v11 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v11);

  v12 = v19;
  v13 = v20;
  MEMORY[0x1BFAFD240](v19, v20);
  sub_1BAAE7800(v9, v1, v10);
  v14 = v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v14;
  sub_1BAAE5904(v9, v1, v10, v12, v13, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v9, v1, v10);
  v30 = v19;
  __swift_destroy_boxed_opaque_existential_1(&v23);
  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v17 = v28;
  v16 = v29;
  v18 = v30;
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_10;
  }

  v23 = v18;
  v24 = v17;
  v25 = v16;
  SQLDatabase.perform(_:)(&v23);
}

void sub_1BAAEF098(uint64_t a1, uint64_t a2)
{
  v77 = a2;
  v6 = sub_1BABE6F8C();
  v78 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_13;
  }

  v4 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v4 + 4);
  sub_1BAAF1130(&v86);
  if (v3)
  {
LABEL_14:
    os_unfair_lock_unlock(v4 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v4 + 4);
  v10 = v86;

  if (v10 != 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v75[0] = 0;
  v75[1] = v2;
  v76 = v8;
  v91 = 0;
  v92 = 0xE000000000000000;
  v11 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v93 = v11;
  MEMORY[0x1BFAFD200](87);
  MEMORY[0x1BFAFD240](0x204543414C504552, 0xED0000204F544E49);
  v12 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v12);

  MEMORY[0x1BFAFD240](0x202020200A2820, 0xE700000000000000);
  v13 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v13);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v14 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v14);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v15 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v15);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v16 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v16);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v17 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v17);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF5800);
  sub_1BABE71CC();
  v18 = sub_1BABE718C();
  v20 = v19;

  v89 = MEMORY[0x1E69E6158];
  v90 = &protocol witness table for String;
  v86 = v18;
  v87 = v20;
  sub_1BAAE779C(&v86, &v81);

  SQLValue.init(_:)(&v81, &v83);
  v79 = a1;
  v80 = v6;
  v22 = v83;
  v21 = v84;
  v23 = v85;
  v81 = 0x676E69646E696240;
  v82 = 0xE800000000000000;
  v94 = *(v11 + 16) + 1;
  v24 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v24);

  v26 = v81;
  v25 = v82;
  MEMORY[0x1BFAFD240](v81, v82);
  sub_1BAAE7800(v22, v21, v23);
  v27 = v93;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v81 = v27;
  sub_1BAAE5904(v22, v21, v23, v26, v25, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v22, v21, v23);
  v29 = v81;
  v93 = v81;
  __swift_destroy_boxed_opaque_existential_1(&v86);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  sub_1BABE71CC();
  v30 = sub_1BABE717C();
  v32 = v31;

  v89 = MEMORY[0x1E69E6158];
  v90 = &protocol witness table for String;
  v86 = v30;
  v87 = v32;
  sub_1BAAE779C(&v86, &v81);

  SQLValue.init(_:)(&v81, &v83);
  v33 = v83;
  v34 = v84;
  LOBYTE(v22) = v85;
  v81 = 0x676E69646E696240;
  v82 = 0xE800000000000000;
  v94 = *(v29 + 16) + 1;
  v35 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v35);

  v36 = v81;
  v37 = v82;
  MEMORY[0x1BFAFD240](v81, v82);
  sub_1BAAE7800(v33, v34, v22);
  v38 = v93;
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v81 = v38;
  sub_1BAAE5904(v33, v34, v22, v36, v37, v39);

  sub_1BAAE7878(v33, v34, v22);
  v40 = v81;
  v93 = v81;
  __swift_destroy_boxed_opaque_existential_1(&v86);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v41 = sub_1BABE6CAC();
  v89 = MEMORY[0x1E69E6158];
  v90 = &protocol witness table for String;
  v86 = v41;
  v87 = v42;
  sub_1BAAE779C(&v86, &v81);

  SQLValue.init(_:)(&v81, &v83);
  v43 = v83;
  v44 = v84;
  LOBYTE(v22) = v85;
  v81 = 0x676E69646E696240;
  v82 = 0xE800000000000000;
  v94 = *(v40 + 16) + 1;
  v45 = v80;
  v46 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v46);

  v47 = v81;
  v48 = v82;
  MEMORY[0x1BFAFD240](v81, v82);
  sub_1BAAE7800(v43, v44, v22);
  v49 = v93;
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v81 = v49;
  sub_1BAAE5904(v43, v44, v22, v47, v48, v50);

  sub_1BAAE7878(v43, v44, v22);
  v4 = v81;
  v93 = v81;
  __swift_destroy_boxed_opaque_existential_1(&v86);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v51 = v76;
  sub_1BABE716C();
  v52 = sub_1BABE6F6C();
  v53 = *(v78 + 8);
  v53(v51, v45);
  if (v52 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v89 = MEMORY[0x1E69E7360];
  v90 = &protocol witness table for Int64;
  v86 = v52;
  sub_1BAAE779C(&v86, &v81);
  SQLValue.init(_:)(&v81, &v83);
  v54 = v83;
  v55 = v84;
  v56 = v85;
  v81 = 0x676E69646E696240;
  v82 = 0xE800000000000000;
  v94 = *&v4[4]._os_unfair_lock_opaque + 1;
  v57 = v53;
  v58 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v58);

  v59 = v81;
  v60 = v82;
  MEMORY[0x1BFAFD240](v81, v82);
  sub_1BAAE7800(v54, v55, v56);
  v61 = v93;
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v81 = v61;
  sub_1BAAE5904(v54, v55, v56, v59, v60, v62);

  sub_1BAAE7878(v54, v55, v56);
  v4 = v81;
  v93 = v81;
  __swift_destroy_boxed_opaque_existential_1(&v86);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  sub_1BABE716C();
  v63 = sub_1BABE6F7C();
  v57(v51, v80);
  if (v63 < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v90 = &protocol witness table for Int64;
  v89 = MEMORY[0x1E69E7360];
  v86 = v63;
  sub_1BAAE779C(&v86, &v81);
  SQLValue.init(_:)(&v81, &v83);
  v64 = v83;
  v65 = v84;
  v66 = v85;
  v81 = 0x676E69646E696240;
  v82 = 0xE800000000000000;
  v94 = *&v4[4]._os_unfair_lock_opaque + 1;
  v67 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v67);

  v4 = v81;
  v68 = v82;
  MEMORY[0x1BFAFD240](v81, v82);
  sub_1BAAE7800(v64, v65, v66);
  v69 = v93;
  v70 = swift_isUniquelyReferenced_nonNull_native();
  v81 = v69;
  sub_1BAAE5904(v64, v65, v66, v4, v68, v70);

  sub_1BAAE7878(v64, v65, v66);
  v93 = v81;
  __swift_destroy_boxed_opaque_existential_1(&v86);
  MEMORY[0x1BFAFD240](3877130, 0xE300000000000000);
  v71 = v91;
  v72 = v92;
  v73 = v93;
  if (!swift_weakLoadStrong())
  {
LABEL_13:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_14;
  }

  v86 = v73;
  v87 = v71;
  v88 = v72;
  v74 = v75[0];
  SQLDatabase.perform(_:)(&v86);

  if (!v74)
  {
  }
}

uint64_t sub_1BAAEFB00(uint64_t a1)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127F8);
  v3 = MEMORY[0x1EEE9AC00](v57);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v45 - v6;
  v58 = sub_1BABE706C();
  v55 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BABE6CFC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v45 - v14;
  sub_1BABE711C();
  v16 = v59;
  sub_1BAAF0000();
  if (v16)
  {
    return (*(v10 + 8))(v15, v9);
  }

  v59 = 0;
  v19 = *(v10 + 8);
  v18 = v10 + 8;
  v48 = v19;
  v49 = v13;
  v19(v15, v9);
  sub_1BABE70EC();
  v20 = sub_1BABE6FCC();
  result = (*(v55 + 8))(v8, v58);
  v21 = 0;
  v23 = v20 + 64;
  v22 = *(v20 + 64);
  v54 = v1;
  v55 = v20;
  v24 = 1 << *(v20 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v22;
  v27 = (v24 + 63) >> 6;
  v46 = v27;
  v47 = v23;
  v52 = v5;
  v53 = a1;
  v50 = v18;
  v51 = v9;
  v28 = v56;
  v29 = v57;
  if (v26)
  {
    while (1)
    {
      v30 = v21;
LABEL_10:
      v31 = __clz(__rbit64(v26)) | (v30 << 6);
      v32 = v55;
      v33 = *(v55 + 48);
      v58 = sub_1BABE6DEC();
      v34 = *(v58 - 8);
      (*(v34 + 16))(v28, v33 + *(v34 + 72) * v31, v58);
      v35 = *(v32 + 56);
      v36 = sub_1BABE6E1C();
      v37 = v28;
      v38 = *(v36 - 8);
      v39 = v35 + *(v38 + 72) * v31;
      v40 = *(v29 + 48);
      (*(v38 + 16))(&v37[v40], v39, v36);
      v41 = *(v29 + 48);
      v42 = v52;
      (*(v34 + 32))(v52, v37, v58);
      (*(v38 + 32))(v42 + v41, &v37[v40], v36);
      v43 = v49;
      sub_1BABE711C();
      v44 = v59;
      sub_1BAAF0380(v42 + v41, v43);
      if (v44)
      {
        break;
      }

      v59 = 0;
      v26 &= v26 - 1;
      v48(v43, v51);
      result = sub_1BAAD2E14(v42, &qword_1EBC127F8);
      v21 = v30;
      v27 = v46;
      v23 = v47;
      v28 = v56;
      v29 = v57;
      if (!v26)
      {
        goto LABEL_7;
      }
    }

    v48(v43, v51);
    return sub_1BAAD2E14(v42, &qword_1EBC127F8);
  }

  else
  {
LABEL_7:
    while (1)
    {
      v30 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v30 >= v27)
      {
      }

      v26 = *(v23 + 8 * v30);
      ++v21;
      if (v26)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1BAAF0000()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v1 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v1 + 4);
  sub_1BAAF1130(&v23);
  if (v0)
  {
LABEL_10:
    os_unfair_lock_unlock(v1 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v1 + 4);
  v3 = v23;

  if (v3 != 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  v4 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v30 = v4;
  MEMORY[0x1BFAFD200](24);
  MEMORY[0x1BFAFD240](0x46204554454C4544, 0xEC000000204D4F52);
  v5 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v5);

  MEMORY[0x1BFAFD240](0x2045524548570ALL, 0xE700000000000000);
  v6 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v7 = sub_1BABE6CAC();
  v26 = MEMORY[0x1E69E6158];
  v27 = &protocol witness table for String;
  v23 = v7;
  v24 = v8;
  sub_1BAAE779C(&v23, &v19);

  SQLValue.init(_:)(&v19, v21);
  v9 = v21[0];
  v1 = v21[1];
  v10 = v22;
  v19 = 0x676E69646E696240;
  v20 = 0xE800000000000000;
  v31 = *(v4 + 16) + 1;
  v11 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v11);

  v12 = v19;
  v13 = v20;
  MEMORY[0x1BFAFD240](v19, v20);
  sub_1BAAE7800(v9, v1, v10);
  v14 = v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v14;
  sub_1BAAE5904(v9, v1, v10, v12, v13, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v9, v1, v10);
  v30 = v19;
  __swift_destroy_boxed_opaque_existential_1(&v23);
  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v17 = v28;
  v16 = v29;
  v18 = v30;
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_10;
  }

  v23 = v18;
  v24 = v17;
  v25 = v16;
  SQLDatabase.perform(_:)(&v23);
}

void sub_1BAAF0380(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v81 = a2;
  v7 = sub_1BABE6F8C();
  v86 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v82 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BABE6DEC();
  v84 = *(v9 - 8);
  v85 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_13;
  }

  v4 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock((v4 + 16));
  sub_1BAAF1130(&v92);
  if (v3)
  {
LABEL_14:
    os_unfair_lock_unlock((v4 + 16));
    __break(1u);
    return;
  }

  os_unfair_lock_unlock((v4 + 16));
  v13 = v92;

  if (v13 != 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v79[0] = 0;
  v79[1] = v5;
  v97 = 0;
  v98 = 0xE000000000000000;
  v14 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v99 = v14;
  MEMORY[0x1BFAFD200](87);
  MEMORY[0x1BFAFD240](0x204543414C504552, 0xED0000204F544E49);
  v15 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v15);

  MEMORY[0x1BFAFD240](0x202020200A2820, 0xE700000000000000);
  v16 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v16);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v17 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v17);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v18 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v18);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v19 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v19);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v20 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v20);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF5800);
  sub_1BABE6E0C();
  v21 = sub_1BABE6DDC();
  v23 = v22;
  v80 = *(v84 + 8);
  v80(v11, v85);
  v95 = MEMORY[0x1E69E6158];
  v96 = &protocol witness table for String;
  v92 = v21;
  v93 = v23;
  sub_1BAAE779C(&v92, &v87);

  SQLValue.init(_:)(&v87, &v89);
  v24 = v89;
  v25 = v90;
  v83 = v7;
  v26 = v91;
  v87 = 0x676E69646E696240;
  v88 = 0xE800000000000000;
  v100 = *(v14 + 16) + 1;
  v27 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v27);

  v84 = a1;
  v28 = v87;
  v29 = v88;
  MEMORY[0x1BFAFD240](v87, v88);
  sub_1BAAE7800(v24, v25, v26);
  v30 = v99;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v87 = v30;
  sub_1BAAE5904(v24, v25, v26, v28, v29, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v24, v25, v26);
  v32 = v87;
  v99 = v87;
  __swift_destroy_boxed_opaque_existential_1(&v92);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  sub_1BABE6E0C();
  v33 = sub_1BABE6DBC();
  v35 = v34;
  v80(v11, v85);
  v95 = MEMORY[0x1E69E6158];
  v96 = &protocol witness table for String;
  v92 = v33;
  v93 = v35;
  sub_1BAAE779C(&v92, &v87);

  SQLValue.init(_:)(&v87, &v89);
  v36 = v89;
  v37 = v90;
  LOBYTE(v25) = v91;
  v87 = 0x676E69646E696240;
  v88 = 0xE800000000000000;
  v100 = *(v32 + 16) + 1;
  v38 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v38);

  v39 = v87;
  v40 = v88;
  MEMORY[0x1BFAFD240](v87, v88);
  sub_1BAAE7800(v36, v37, v25);
  v41 = v99;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v87 = v41;
  sub_1BAAE5904(v36, v37, v25, v39, v40, v42);

  sub_1BAAE7878(v36, v37, v25);
  v43 = v87;
  v99 = v87;
  __swift_destroy_boxed_opaque_existential_1(&v92);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v44 = sub_1BABE6CAC();
  v95 = MEMORY[0x1E69E6158];
  v96 = &protocol witness table for String;
  v92 = v44;
  v93 = v45;
  sub_1BAAE779C(&v92, &v87);

  SQLValue.init(_:)(&v87, &v89);
  v46 = v89;
  v47 = v90;
  LOBYTE(v25) = v91;
  v87 = 0x676E69646E696240;
  v88 = 0xE800000000000000;
  v100 = *(v43 + 16) + 1;
  v48 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v48);

  v49 = v87;
  v50 = v88;
  MEMORY[0x1BFAFD240](v87, v88);
  sub_1BAAE7800(v46, v47, v25);
  v51 = v99;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v87 = v51;
  sub_1BAAE5904(v46, v47, v25, v49, v50, v52);

  v53 = v83;

  sub_1BAAE7878(v46, v47, v25);
  v54 = v87;
  v99 = v87;
  __swift_destroy_boxed_opaque_existential_1(&v92);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v55 = v82;
  sub_1BABE6DAC();
  v56 = sub_1BABE6F6C();
  v4 = *(v86 + 8);
  v86 += 8;
  (v4)(v55, v53);
  if (v56 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v95 = MEMORY[0x1E69E7360];
  v96 = &protocol witness table for Int64;
  v92 = v56;
  sub_1BAAE779C(&v92, &v87);
  SQLValue.init(_:)(&v87, &v89);
  v57 = v55;
  v58 = v89;
  v59 = v90;
  v60 = v91;
  v87 = 0x676E69646E696240;
  v88 = 0xE800000000000000;
  v100 = *(v54 + 16) + 1;
  v61 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v61);

  v62 = v87;
  v63 = v88;
  MEMORY[0x1BFAFD240](v87, v88);
  sub_1BAAE7800(v58, v59, v60);
  v64 = v99;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v87 = v64;
  sub_1BAAE5904(v58, v59, v60, v62, v63, v65);

  sub_1BAAE7878(v58, v59, v60);
  v66 = v87;
  v99 = v87;
  __swift_destroy_boxed_opaque_existential_1(&v92);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  sub_1BABE6DAC();
  v67 = sub_1BABE6F7C();
  (v4)(v57, v83);
  if (v67 < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v96 = &protocol witness table for Int64;
  v95 = MEMORY[0x1E69E7360];
  v92 = v67;
  sub_1BAAE779C(&v92, &v87);
  SQLValue.init(_:)(&v87, &v89);
  v68 = v89;
  v69 = v90;
  v70 = v91;
  v87 = 0x676E69646E696240;
  v88 = 0xE800000000000000;
  v100 = *(v66 + 16) + 1;
  v71 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v71);

  v72 = v87;
  v4 = v88;
  MEMORY[0x1BFAFD240](v87, v88);
  sub_1BAAE7800(v68, v69, v70);
  v73 = v99;
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v87 = v73;
  sub_1BAAE5904(v68, v69, v70, v72, v4, v74);

  sub_1BAAE7878(v68, v69, v70);
  v99 = v87;
  __swift_destroy_boxed_opaque_existential_1(&v92);
  MEMORY[0x1BFAFD240](3877130, 0xE300000000000000);
  v75 = v97;
  v76 = v98;
  v77 = v99;
  if (!swift_weakLoadStrong())
  {
LABEL_13:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_14;
  }

  v92 = v77;
  v93 = v75;
  v94 = v76;
  v78 = v79[0];
  SQLDatabase.perform(_:)(&v92);

  if (!v78)
  {
  }
}

uint64_t sub_1BAAF1004(uint64_t a1, void (*a2)(uint64_t *, uint64_t *))
{
  result = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
  v5 = *(a1 + 16);
  if (v5)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v8 = *i;

      a2(&v9, &v8);
      if (v2)
      {
        break;
      }

      if (!--v5)
      {
        return v9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BAAF10BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BAAE7824(a1, a2);
  }

  return a1;
}

unint64_t sub_1BAAF10D0()
{
  result = qword_1EBC12818;
  if (!qword_1EBC12818)
  {
    sub_1BABE715C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12818);
  }

  return result;
}

uint64_t sub_1BAAF1148(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1BABE7C0C();
    v5 = v4;
    v6 = sub_1BABE7C8C();
    v8 = v7;
    v9 = MEMORY[0x1BFAFD8A0](v3, v5, v6, v7);
    sub_1BAADAEFC(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1BAADAEFC(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_1BABE7A0C();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  v11 = sub_1BAAFB6B8(v3, v5, v2 != 0, a1);
  sub_1BAADAEFC(v3, v5, v2 != 0);
  return v11;
}

uint64_t sub_1BAAF1284()
{
  v16 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](70);
  MEMORY[0x1BFAFD240](0x200A5443454C4553, 0xEB00000000202020);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v3 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v3);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v4 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v4);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v5 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v5);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v6 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v7 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v7);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v8 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v8);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v9 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v9);

  MEMORY[0x1BFAFD240](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v10 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v10);

  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v15[0] = v16;
    v15[1] = 0;
    v16 = 0xE000000000000000;
    v13 = SQLDatabase.perform(_:)(v15);

    if (!v0)
    {
      v12 = sub_1BAAFB810(v13);
    }

    return v12;
  }

  else
  {
    result = sub_1BABE7C9C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAAF1618(uint64_t a1, uint64_t a2)
{
  v42 = 0;
  v43 = 0xE000000000000000;
  v4 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v44 = v4;
  MEMORY[0x1BFAFD200](91);
  MEMORY[0x1BFAFD240](0x200A5443454C4553, 0xEB00000000202020);
  v5 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v5);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v6 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v7 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v7);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v8 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v8);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v9 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v9);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v10 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v10);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v11 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v11);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v12 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v12);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v13 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v13);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v14 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v14);

  MEMORY[0x1BFAFD240](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v15 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v15);

  MEMORY[0x1BFAFD240](0x200A45524548570ALL, 0xEB00000000202020);
  v16 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v16);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v40 = MEMORY[0x1E69E6158];
  v41 = &protocol witness table for String;
  v37 = a1;
  v38 = a2;
  sub_1BAAE779C(&v37, &v33);

  SQLValue.init(_:)(&v33, v35);
  v17 = v35[0];
  v18 = v35[1];
  v19 = v36;
  v33 = 0x676E69646E696240;
  v34 = 0xE800000000000000;
  v45 = *(v4 + 16) + 1;
  v20 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v20);

  v21 = v33;
  v22 = v34;
  MEMORY[0x1BFAFD240](v33, v34);
  sub_1BAAE7800(v17, v18, v19);
  v23 = v44;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = v23;
  sub_1BAAE5904(v17, v18, v19, v21, v22, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v17, v18, v19);
  v44 = v33;
  __swift_destroy_boxed_opaque_existential_1(&v37);
  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v25 = v42;
  v26 = v43;
  v27 = v44;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v37 = v27;
    v38 = v25;
    v39 = v26;
    v30 = SQLDatabase.perform(_:)(&v37);

    if (!v32)
    {
      v29 = sub_1BAAFB810(v30);
    }

    return v29;
  }

  else
  {
    result = sub_1BABE7C9C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAAF1B04()
{
  v0 = sub_1BABE721C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v80 = &v77 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1BABE6CFC();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = 0;
  v94 = 0xE000000000000000;
  v3 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v95 = v3;
  MEMORY[0x1BFAFD200](108);
  MEMORY[0x1BFAFD240](0x200A5443454C4553, 0xEB00000000202020);
  v4 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v4);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v5 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v5);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v6 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v7 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v7);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v8 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v8);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v9 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v9);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v10 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v10);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v11 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v11);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v12 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v12);

  MEMORY[0x1BFAFD240](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v13 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v13);

  MEMORY[0x1BFAFD240](0x2045524548570ALL, 0xE700000000000000);
  v14 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v14);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v15 = sub_1BABE71FC();
  v91 = MEMORY[0x1E69E6158];
  v92 = &protocol witness table for String;
  v88 = v15;
  v89 = v16;
  sub_1BAAE779C(&v88, &v83);

  SQLValue.init(_:)(&v83, &v85);
  v17 = v85;
  v18 = v86;
  v19 = v87;
  v83 = 0x676E69646E696240;
  v84 = 0xE800000000000000;
  v96 = *(v3 + 16) + 1;
  v20 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v20);

  v22 = v83;
  v21 = v84;
  MEMORY[0x1BFAFD240](v83, v84);
  sub_1BAAE7800(v17, v18, v19);
  v23 = v95;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v83 = v23;
  sub_1BAAE5904(v17, v18, v19, v22, v21, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v17, v18, v19);
  v25 = v83;
  v95 = v83;
  __swift_destroy_boxed_opaque_existential_1(&v88);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v26 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v26);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  sub_1BABE720C();
  v27 = sub_1BABE718C();
  v29 = v28;

  v91 = MEMORY[0x1E69E6158];
  v92 = &protocol witness table for String;
  v88 = v27;
  v89 = v29;
  sub_1BAAE779C(&v88, &v83);

  SQLValue.init(_:)(&v83, &v85);
  v30 = v85;
  v31 = v86;
  LOBYTE(v22) = v87;
  v83 = 0x676E69646E696240;
  v84 = 0xE800000000000000;
  v96 = *(v25 + 16) + 1;
  v32 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v32);

  v33 = v83;
  v34 = v84;
  MEMORY[0x1BFAFD240](v83, v84);
  sub_1BAAE7800(v30, v31, v22);
  v35 = v95;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v83 = v35;
  sub_1BAAE5904(v30, v31, v22, v33, v34, v36);

  sub_1BAAE7878(v30, v31, v22);
  v37 = v83;
  v95 = v83;
  __swift_destroy_boxed_opaque_existential_1(&v88);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v38 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v38);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  sub_1BABE720C();
  v39 = sub_1BABE717C();
  v41 = v40;

  v91 = MEMORY[0x1E69E6158];
  v92 = &protocol witness table for String;
  v88 = v39;
  v89 = v41;
  sub_1BAAE779C(&v88, &v83);

  SQLValue.init(_:)(&v83, &v85);
  v42 = v85;
  v43 = v86;
  LOBYTE(v22) = v87;
  v83 = 0x676E69646E696240;
  v44 = v78;
  v84 = 0xE800000000000000;
  v96 = *(v37 + 16) + 1;
  v45 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v45);

  v46 = v83;
  v47 = v84;
  MEMORY[0x1BFAFD240](v83, v84);
  sub_1BAAE7800(v42, v43, v22);
  v48 = v95;
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v83 = v48;
  v50 = v46;
  v51 = v79;
  sub_1BAAE5904(v42, v43, v22, v50, v47, v49);

  sub_1BAAE7878(v42, v43, v22);
  v52 = v83;
  v95 = v83;
  __swift_destroy_boxed_opaque_existential_1(&v88);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v53 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v53);
  v54 = v80;

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  sub_1BABE722C();
  if ((*(v44 + 48))(v54, 1, v51) == 1)
  {
    v55 = v81;
    if (qword_1EBC12280 != -1)
    {
      swift_once();
    }

    v56 = __swift_project_value_buffer(v51, qword_1EBC25000);
    (*(v44 + 16))(v55, v56, v51);
  }

  else
  {
    v55 = v81;
    (*(v44 + 32))(v81, v54, v51);
  }

  v57 = sub_1BABE6CAC();
  v59 = v58;
  (*(v44 + 8))(v55, v51);
  v91 = MEMORY[0x1E69E6158];
  v92 = &protocol witness table for String;
  v88 = v57;
  v89 = v59;
  sub_1BAAE779C(&v88, &v83);

  SQLValue.init(_:)(&v83, &v85);
  v60 = v85;
  v61 = v86;
  v62 = v87;
  v83 = 0x676E69646E696240;
  v84 = 0xE800000000000000;
  v96 = *(v52 + 16) + 1;
  v63 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v63);

  v64 = v83;
  v65 = v84;
  MEMORY[0x1BFAFD240](v83, v84);
  sub_1BAAE7800(v60, v61, v62);
  v66 = v95;
  v67 = swift_isUniquelyReferenced_nonNull_native();
  v83 = v66;
  sub_1BAAE5904(v60, v61, v62, v64, v65, v67);

  sub_1BAAE7878(v60, v61, v62);
  v95 = v83;
  __swift_destroy_boxed_opaque_existential_1(&v88);
  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v68 = v93;
  v69 = v94;
  v70 = v95;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v72 = Strong;
    v88 = v70;
    v89 = v68;
    v90 = v69;
    v73 = v82;
    v74 = SQLDatabase.perform(_:)(&v88);

    if (!v73)
    {
      v75 = sub_1BAAFB810(v74);

      v72 = sub_1BAAF1148(v75);
    }

    return v72;
  }

  else
  {
    result = sub_1BABE7C9C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAAF2618()
{
  v49 = 0;
  v50 = 0xE000000000000000;
  v0 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v51 = v0;
  MEMORY[0x1BFAFD200](94);
  MEMORY[0x1BFAFD240](0x200A5443454C4553, 0xEB00000000202020);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v3 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v3);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v4 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v4);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v5 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v5);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v6 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v7 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v7);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v8 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v8);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v9 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v9);

  MEMORY[0x1BFAFD240](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v10 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v10);

  MEMORY[0x1BFAFD240](0x2045524548570ALL, 0xE700000000000000);
  v11 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v11);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v12 = sub_1BABE718C();
  v47 = MEMORY[0x1E69E6158];
  v48 = &protocol witness table for String;
  v44 = v12;
  v45 = v13;
  sub_1BAAE779C(&v44, &v39);

  SQLValue.init(_:)(&v39, &v41);
  v15 = v41;
  v14 = v42;
  v16 = v43;
  v39 = 0x676E69646E696240;
  v40 = 0xE800000000000000;
  v52 = *(v0 + 16) + 1;
  v17 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v17);

  v19 = v39;
  v18 = v40;
  MEMORY[0x1BFAFD240](v39, v40);
  sub_1BAAE7800(v15, v14, v16);
  v20 = v51;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = v20;
  sub_1BAAE5904(v15, v14, v16, v19, v18, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v15, v14, v16);
  v22 = v39;
  v51 = v39;
  __swift_destroy_boxed_opaque_existential_1(&v44);
  MEMORY[0x1BFAFD240](0x444E410A444E4120, 0xE900000000000020);
  v23 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v23);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v24 = sub_1BABE717C();
  v47 = MEMORY[0x1E69E6158];
  v48 = &protocol witness table for String;
  v44 = v24;
  v45 = v25;
  sub_1BAAE779C(&v44, &v39);

  SQLValue.init(_:)(&v39, &v41);
  v26 = v41;
  v27 = v42;
  LOBYTE(v19) = v43;
  v39 = 0x676E69646E696240;
  v40 = 0xE800000000000000;
  v52 = *(v22 + 16) + 1;
  v28 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v28);

  v29 = v39;
  v30 = v40;
  MEMORY[0x1BFAFD240](v39, v40);
  sub_1BAAE7800(v26, v27, v19);
  v31 = v51;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v39 = v31;
  sub_1BAAE5904(v26, v27, v19, v29, v30, v32);

  sub_1BAAE7878(v26, v27, v19);
  v51 = v39;
  __swift_destroy_boxed_opaque_existential_1(&v44);
  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v33 = v49;
  v34 = v50;
  v35 = v51;
  if (swift_weakLoadStrong())
  {
    v44 = v35;
    v45 = v33;
    v46 = v34;
    v36 = SQLDatabase.perform(_:)(&v44);

    if (!v38)
    {
      v35 = sub_1BAAFB810(v36);
    }

    return v35;
  }

  else
  {
    result = sub_1BABE7C9C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAAF2C5C()
{
  v0 = sub_1BABE721C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v82 = &v80 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1BABE6CFC();
  v81 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = 0;
  v98 = 0xE000000000000000;
  v3 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v99 = v3;
  MEMORY[0x1BFAFD200](60);
  MEMORY[0x1BFAFD240](0x200A5443454C4553, 0xEB00000000202020);
  v4 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v4);

  MEMORY[0x1BFAFD240](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v5 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v5);

  MEMORY[0x1BFAFD240](0x2045524548570ALL, 0xE700000000000000);
  v6 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v7 = sub_1BABE71FC();
  v95 = MEMORY[0x1E69E6158];
  v96 = &protocol witness table for String;
  v92 = v7;
  v93 = v8;
  sub_1BAAE779C(&v92, &v87);

  SQLValue.init(_:)(&v87, &v89);
  v9 = v89;
  v10 = v90;
  v11 = v91;
  v87 = 0x676E69646E696240;
  v88 = 0xE800000000000000;
  v100 = *(v3 + 16) + 1;
  v12 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v12);

  v13 = v87;
  v14 = v88;
  MEMORY[0x1BFAFD240](v87, v88);
  sub_1BAAE7800(v9, v10, v11);
  v15 = v99;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v87 = v15;
  sub_1BAAE5904(v9, v10, v11, v13, v14, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v9, v10, v11);
  v17 = v87;
  v99 = v87;
  __swift_destroy_boxed_opaque_existential_1(&v92);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v18 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v18);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  sub_1BABE720C();
  v19 = sub_1BABE718C();
  v21 = v20;

  v95 = MEMORY[0x1E69E6158];
  v96 = &protocol witness table for String;
  v92 = v19;
  v93 = v21;
  sub_1BAAE779C(&v92, &v87);

  SQLValue.init(_:)(&v87, &v89);
  v22 = v89;
  v23 = v90;
  LOBYTE(v10) = v91;
  v87 = 0x676E69646E696240;
  v88 = 0xE800000000000000;
  v100 = *(v17 + 16) + 1;
  v24 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v24);

  v26 = v87;
  v25 = v88;
  MEMORY[0x1BFAFD240](v87, v88);
  sub_1BAAE7800(v22, v23, v10);
  v27 = v99;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v87 = v27;
  sub_1BAAE5904(v22, v23, v10, v26, v25, v28);

  sub_1BAAE7878(v22, v23, v10);
  v29 = v87;
  v99 = v87;
  __swift_destroy_boxed_opaque_existential_1(&v92);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v30 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v30);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  sub_1BABE720C();
  v31 = sub_1BABE717C();
  v33 = v32;

  v95 = MEMORY[0x1E69E6158];
  v96 = &protocol witness table for String;
  v92 = v31;
  v93 = v33;
  sub_1BAAE779C(&v92, &v87);

  SQLValue.init(_:)(&v87, &v89);
  v34 = v89;
  v35 = v90;
  LOBYTE(v10) = v91;
  v87 = 0x676E69646E696240;
  v88 = 0xE800000000000000;
  v100 = *(v29 + 16) + 1;
  v36 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v36);

  v37 = v87;
  v38 = v88;
  MEMORY[0x1BFAFD240](v87, v88);
  sub_1BAAE7800(v34, v35, v10);
  v39 = v99;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v87 = v39;
  sub_1BAAE5904(v34, v35, v10, v37, v38, v40);

  sub_1BAAE7878(v34, v35, v10);
  v41 = v87;
  v99 = v87;
  __swift_destroy_boxed_opaque_existential_1(&v92);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v42 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v42);
  v43 = v82;

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v44 = v81;
  v45 = v83;
  sub_1BABE722C();
  if ((*(v44 + 48))(v43, 1, v45) == 1)
  {
    v46 = v84;
    if (qword_1EBC12280 != -1)
    {
LABEL_32:
      swift_once();
    }

    v47 = __swift_project_value_buffer(v45, qword_1EBC25000);
    (*(v44 + 16))(v46, v47, v45);
  }

  else
  {
    v46 = v84;
    (*(v44 + 32))(v84, v43, v45);
  }

  v48 = MEMORY[0x1E69E6158];
  v49 = sub_1BABE6CAC();
  v51 = v50;
  (*(v44 + 8))(v46, v45);
  v95 = v48;
  v96 = &protocol witness table for String;
  v92 = v49;
  v93 = v51;
  sub_1BAAE779C(&v92, &v87);

  SQLValue.init(_:)(&v87, &v89);
  v52 = v89;
  v53 = v90;
  LOBYTE(v48) = v91;
  v87 = 0x676E69646E696240;
  v88 = 0xE800000000000000;
  v100 = *(v41 + 16) + 1;
  v54 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v54);

  v55 = v87;
  v44 = v88;
  MEMORY[0x1BFAFD240](v87, v88);
  sub_1BAAE7800(v52, v53, v48);
  v56 = v99;
  v57 = swift_isUniquelyReferenced_nonNull_native();
  v87 = v56;
  sub_1BAAE5904(v52, v53, v48, v55, v44, v57);

  sub_1BAAE7878(v52, v53, v48);
  v99 = v87;
  __swift_destroy_boxed_opaque_existential_1(&v92);
  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v58 = v97;
  v59 = v98;
  v60 = v99;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v62 = Strong;
    v92 = v60;
    v93 = v58;
    v94 = v59;
    v63 = v86;
    v46 = SQLDatabase.perform(_:)(&v92);

    if (!v63)
    {
      v64 = *(v46 + 16);
      if (v64)
      {
        v65 = 0;
        v86 = v46 + 32;
        v45 = MEMORY[0x1E69E7CC0];
        v83 = v64 - 1;
        v84 = 0;
        do
        {
          v85 = v45;
          v41 = v65;
          while (1)
          {
            if (v41 >= *(v46 + 16))
            {
              __break(1u);
              goto LABEL_32;
            }

            v66 = *(v86 + 8 * v41);

            v67 = sub_1BABE7B0C();
            v87 = v66;
            SQLResult.subscript.getter(v67, v68, &v92);

            v69 = v94;
            if (v94 != 255)
            {
              v70 = v92;
              v45 = v93;
              v71 = sub_1BAAF9770(v92, v93, v94);
              v44 = v72;
              sub_1BAAE8B8C(v70, v45, v69);
              if (v44)
              {
                break;
              }
            }

            if (qword_1EBC12270 != -1)
            {
              swift_once();
            }

            v73 = sub_1BABE72BC();
            __swift_project_value_buffer(v73, qword_1EBC25018);
            v74 = sub_1BABE729C();
            v44 = sub_1BABE78EC();
            if (os_log_type_enabled(v74, v44))
            {
              v75 = swift_slowAlloc();
              *v75 = 0;
              _os_log_impl(&dword_1BAACF000, v74, v44, "Encountered malformed record metadata", v75, 2u);
              MEMORY[0x1BFAFE460](v75, -1, -1);
            }

            ++v41;

            if (v64 == v41)
            {
              v45 = v85;
              goto LABEL_26;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v85 = sub_1BAAF98F8(0, *(v85 + 2) + 1, 1, v85);
          }

          v77 = *(v85 + 2);
          v76 = *(v85 + 3);
          if (v77 >= v76 >> 1)
          {
            v85 = sub_1BAAF98F8((v76 > 1), v77 + 1, 1, v85);
          }

          v65 = v41 + 1;
          v45 = v85;
          *(v85 + 2) = v77 + 1;
          v78 = &v45[16 * v77];
          *(v78 + 4) = v71;
          *(v78 + 5) = v44;
        }

        while (v83 != v41);
      }

      else
      {
        v45 = MEMORY[0x1E69E7CC0];
      }

LABEL_26:

      if (*(v45 + 2))
      {
        v62 = *(v45 + 4);
      }

      else
      {
        v62 = 0;
      }
    }

    return v62;
  }

  else
  {
    result = sub_1BABE7C9C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAAF3804()
{
  v12 = 0;
  v13 = 0xE000000000000000;
  v14 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](65);
  MEMORY[0x1BFAFD240](0x200A5443454C4553, 0xEB00000000202020);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v3 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v3);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v4 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v4);

  MEMORY[0x1BFAFD240](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v5 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v5);

  MEMORY[0x1BFAFD240](0x200A45524548570ALL, 0xEB00000000202020);
  v6 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](0x4C0A2727203D3D20, 0xEF3B312054494D49);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_15;
  }

  v8 = Strong;
  v12 = v14;
  v13 = 0;
  v14 = 0xE000000000000000;
  v9 = SQLDatabase.perform(_:)(&v12);

  if (v0)
  {
    return v8;
  }

  v10 = sub_1BAAFB8B8(v9);

  if (v10 >> 62)
  {
    if (sub_1BABE7A5C())
    {
      goto LABEL_7;
    }

LABEL_12:

    return 0;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1BFAFD7A0](0, v10);
    goto LABEL_10;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v10 + 32);

LABEL_10:

    return v8;
  }

  __break(1u);
LABEL_15:
  result = sub_1BABE7C9C();
  __break(1u);
  return result;
}

uint64_t sub_1BAAF3B78()
{
  v38 = 0;
  v39 = 0xE000000000000000;
  v1 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v40 = v1;
  MEMORY[0x1BFAFD200](93);
  MEMORY[0x1BFAFD240](0x200A5443454C4553, 0xEB00000000202020);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v3 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v3);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v4 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v4);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v5 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v5);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v6 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v7 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v7);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v8 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v8);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v9 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v9);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v10 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v10);

  MEMORY[0x1BFAFD240](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v11 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v11);

  MEMORY[0x1BFAFD240](0x200A45524548570ALL, 0xEB00000000202020);
  v12 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v12);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v13 = sub_1BABE6CAC();
  v36 = MEMORY[0x1E69E6158];
  v37 = &protocol witness table for String;
  v33 = v13;
  v34 = v14;
  sub_1BAAE779C(&v33, &v29);

  SQLValue.init(_:)(&v29, v31);
  v15 = v31[0];
  v16 = v31[1];
  v17 = v32;
  v29 = 0x676E69646E696240;
  v30 = 0xE800000000000000;
  v41 = *(v1 + 16) + 1;
  v18 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v18);

  v19 = v29;
  v20 = v30;
  MEMORY[0x1BFAFD240](v29, v30);
  sub_1BAAE7800(v15, v16, v17);
  v21 = v40;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v21;
  sub_1BAAE5904(v15, v16, v17, v19, v20, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v15, v16, v17);
  v40 = v29;
  __swift_destroy_boxed_opaque_existential_1(&v33);
  MEMORY[0x1BFAFD240](0x312054494D494C0ALL, 0xE90000000000003BLL);
  v24 = v38;
  v23 = v39;
  v25 = v40;
  if (swift_weakLoadStrong())
  {
    v33 = v25;
    v34 = v24;
    v35 = v23;
    v26 = SQLDatabase.perform(_:)(&v33);

    if (!v0)
    {
      v27 = sub_1BAAFB810(v26);

      v26 = sub_1BAAF1148(v27);
    }

    return v26;
  }

  else
  {
    result = sub_1BABE7C9C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAAF4074()
{
  sub_1BABE7F9C();
  MEMORY[0x1BFAFDC20](0);
  return sub_1BABE7FDC();
}

uint64_t sub_1BAAF40B8()
{
  sub_1BABE7F9C();
  MEMORY[0x1BFAFDC20](0);
  return sub_1BABE7FDC();
}

void sub_1BAAF4108(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v62 - v4;
  v6 = sub_1BABE721C();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v62 - v10;
  v12 = *a1;
  v13 = sub_1BABE7B0C();
  v73 = v12;
  SQLResult.subscript.getter(v13, v14, &v70);

  v15 = v72;
  if (v72 != 255)
  {
    v16 = v70;
    v17 = v71;
    v68 = sub_1BAAF9770(v70, v71, v72);
    v19 = v18;
    sub_1BAAE8B8C(v16, v17, v15);
    if (v19)
    {
      v20 = sub_1BABE7B0C();
      v73 = v12;
      SQLResult.subscript.getter(v20, v21, &v70);

      v22 = v72;
      if (v72 != 255)
      {
        v24 = v70;
        v23 = v71;
        v66 = sub_1BAAF9770(v70, v71, v72);
        v26 = v25;
        sub_1BAAE8B8C(v24, v23, v22);
        v67 = v26;
        if (v26)
        {
          v27 = sub_1BABE7B0C();
          v73 = v12;
          SQLResult.subscript.getter(v27, v28, &v70);

          v29 = v72;
          if (v72 != 255)
          {
            v31 = v70;
            v30 = v71;
            v65 = sub_1BAAF9770(v70, v71, v72);
            v33 = v32;
            sub_1BAAE8B8C(v31, v30, v29);
            if (v33)
            {
              v34 = sub_1BABE7B0C();
              v73 = v12;
              SQLResult.subscript.getter(v34, v35, &v70);

              v36 = v72;
              if (v72 != 255)
              {
                v38 = v70;
                v37 = v71;
                v64 = sub_1BAAF9770(v70, v71, v72);
                v40 = v39;
                sub_1BAAE8B8C(v38, v37, v36);
                if (v40)
                {
                  if (qword_1EBC12280 != -1)
                  {
                    swift_once();
                  }

                  v41 = sub_1BABE6CFC();
                  __swift_project_value_buffer(v41, qword_1EBC25000);
                  if (v64 == sub_1BABE6CAC() && v40 == v42)
                  {
                  }

                  else
                  {
                    v63 = v41;
                    v50 = sub_1BABE7EDC();

                    if ((v50 & 1) == 0)
                    {
                      sub_1BABE6C9C();
                      v51 = v63;
                      v52 = v40;
                      v53 = *(v63 - 8);
                      if ((*(v53 + 48))(v5, 1, v63) == 1)
                      {
                        v54 = v52;

                        sub_1BAAD2E14(v5, &qword_1EBC12B60);
                        if (qword_1EBC12270 != -1)
                        {
                          swift_once();
                        }

                        v55 = sub_1BABE72BC();
                        __swift_project_value_buffer(v55, qword_1EBC25018);

                        v56 = sub_1BABE729C();
                        v57 = sub_1BABE78EC();

                        if (os_log_type_enabled(v56, v57))
                        {
                          v58 = swift_slowAlloc();
                          v59 = swift_slowAlloc();
                          v70 = v59;
                          *v58 = 136446466;
                          v60 = sub_1BAAFA460(v64, v54, &v70);

                          *(v58 + 4) = v60;
                          *(v58 + 12) = 2082;
                          v61 = sub_1BAAFA460(v68, v19, &v70);

                          *(v58 + 14) = v61;
                          _os_log_impl(&dword_1BAACF000, v56, v57, "Malformed relationshipID %{public}s for %{public}s", v58, 0x16u);
                          swift_arrayDestroy();
                          MEMORY[0x1BFAFE460](v59, -1, -1);
                          MEMORY[0x1BFAFE460](v58, -1, -1);
                        }

                        else
                        {
                        }

                        v49 = 0;
                        goto LABEL_29;
                      }

                      (*(v53 + 32))(v11, v5, v51);
                      (*(v53 + 56))(v11, 0, 1, v51);
LABEL_28:
                      sub_1BABE71AC();
                      sub_1BABE719C();

                      sub_1BAAFBF44(v11, v9);
                      sub_1BABE723C();
                      swift_allocObject();
                      v49 = sub_1BABE71EC();
                      sub_1BAAE8C08(v11);
LABEL_29:
                      v47 = v69;
                      goto LABEL_24;
                    }

                    v41 = v63;
                  }

                  (*(*(v41 - 8) + 56))(v11, 1, 1, v41);
                  goto LABEL_28;
                }
              }
            }
          }
        }
      }
    }
  }

  if (qword_1EBC12270 != -1)
  {
    swift_once();
  }

  v43 = sub_1BABE72BC();
  __swift_project_value_buffer(v43, qword_1EBC25018);
  v44 = sub_1BABE729C();
  v45 = sub_1BABE78EC();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v69;
  if (v46)
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_1BAACF000, v44, v45, "Encountered malformed record metadata", v48, 2u);
    MEMORY[0x1BFAFE460](v48, -1, -1);
  }

  v49 = 0;
LABEL_24:
  *v47 = v49;
}

void sub_1BAAF488C(uint64_t *a1, uint64_t *a2)
{
  v194 = a1;
  v195 = sub_1BABE6F1C();
  v193 = *(v195 - 8);
  v3 = MEMORY[0x1EEE9AC00](v195);
  v191 = &v171 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v192 = &v171 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v190 = &v171 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v199 = &v171 - v9;
  v10 = sub_1BABE6CFC();
  v201 = *(v10 - 8);
  v202 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v189 = &v171 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v198 = &v171 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v171 - v15;
  v17 = sub_1BABE70CC();
  v197 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v188 = &v171 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v200 = (&v171 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v196 = &v171 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v171 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v171 - v27;
  v29 = sub_1BABE721C();
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v171 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v171 - v33;
  v35 = *a2;
  v36 = sub_1BABE7B0C();
  v203 = v35;
  SQLResult.subscript.getter(v36, v37, &v205);

  v38 = v207;
  if (v207 != 255)
  {
    v185 = v17;
    v187 = v34;
    v40 = v205;
    v39 = v206;
    v186 = sub_1BAAF9770(v205, v206, v207);
    v42 = v41;
    sub_1BAAE8B8C(v40, v39, v38);
    if (v42)
    {
      v43 = sub_1BABE7B0C();
      v203 = v35;
      SQLResult.subscript.getter(v43, v44, &v205);

      v45 = v207;
      if (v207 == 255)
      {
        goto LABEL_21;
      }

      v183 = v16;
      v47 = v205;
      v46 = v206;
      v182 = sub_1BAAF9770(v205, v206, v207);
      v49 = v48;
      sub_1BAAE8B8C(v47, v46, v45);
      v184 = v49;
      if (!v49)
      {
        goto LABEL_21;
      }

      v50 = sub_1BABE7B0C();
      v203 = v35;
      SQLResult.subscript.getter(v50, v51, &v205);

      v52 = v207;
      if (v207 != 255)
      {
        v54 = v205;
        v53 = v206;
        v181 = sub_1BAAF9770(v205, v206, v207);
        v56 = v55;
        sub_1BAAE8B8C(v54, v53, v52);
        if (v56)
        {
          v57 = sub_1BABE7B0C();
          v203 = v35;
          SQLResult.subscript.getter(v57, v58, &v205);

          v59 = v207;
          if (v207 != 255)
          {
            v180 = v56;
            v61 = v205;
            v60 = v206;
            v178 = sub_1BAAF9770(v205, v206, v207);
            v63 = v62;
            sub_1BAAE8B8C(v61, v60, v59);
            v179 = v63;
            if (v63)
            {
              v64 = sub_1BABE7B0C();
              v203 = v35;
              SQLResult.subscript.getter(v64, v65, &v205);

              v66 = v207;
              if (v207 == 255)
              {
              }

              else
              {
                v68 = v205;
                v67 = v206;
                v177 = sub_1BAAF9770(v205, v206, v207);
                v69 = v66;
                v71 = v70;
                sub_1BAAE8B8C(v68, v67, v69);
                if (v71)
                {
                  v72 = sub_1BAB27AAC("DestinationType", 15, 2, v35);
                  if (v73 & 1) != 0 || (v74 = v72, v75 = sub_1BAB27AAC("Options", 7, 2, v35), (v76))
                  {

                    goto LABEL_21;
                  }

                  v174 = v74;
                  v173 = v75;
                  v176 = v71;
                  v82 = sub_1BABE7B0C();
                  v203 = v35;
                  SQLResult.subscript.getter(v82, v83, &v205);

                  v84 = v207;
                  if (v207 == 255)
                  {
                    v172 = 0;
                    v175 = 0;
                  }

                  else
                  {
                    v86 = v205;
                    v85 = v206;
                    v172 = sub_1BAAF9770(v205, v206, v207);
                    v175 = v87;
                    sub_1BAAE8B8C(v86, v85, v84);
                  }

                  v88 = v178;
                  if (qword_1EBC12280 != -1)
                  {
                    goto LABEL_97;
                  }

                  while (1)
                  {
                    __swift_project_value_buffer(v202, qword_1EBC25000);
                    if (v88 == sub_1BABE6CAC() && v179 == v89)
                    {
                      break;
                    }

                    v90 = sub_1BABE7EDC();

                    if (v90)
                    {
                      goto LABEL_36;
                    }

                    sub_1BABE6C9C();
                    v121 = v201;
                    if ((*(v201 + 48))(v28, 1, v202) == 1)
                    {

                      sub_1BAAD2E14(v28, &qword_1EBC12B60);
                      if (qword_1EBC12270 != -1)
                      {
                        goto LABEL_99;
                      }

                      goto LABEL_66;
                    }

                    v130 = v187;
                    v131 = v28;
                    v132 = v202;
                    (*(v121 + 32))(v187, v131, v202);
                    (*(v121 + 56))(v130, 0, 1, v132);
LABEL_37:
                    sub_1BABE71AC();
                    v91 = sub_1BABE719C();

                    sub_1BAAFBF44(v187, v32);
                    v179 = sub_1BABE723C();
                    swift_allocObject();

                    v181 = v91;
                    v182 = sub_1BABE71EC();
                    v92 = sub_1BABE7B0C();
                    v203 = v35;
                    SQLResult.subscript.getter(v92, v93, &v205);

                    v32 = v207;
                    if (v207 == 255)
                    {
                      v96 = 0;
                      v98 = 0;
                    }

                    else
                    {
                      v95 = v205;
                      v94 = v206;
                      v96 = sub_1BAAF9770(v205, v206, v207);
                      v98 = v97;
                      sub_1BAAE8B8C(v95, v94, v32);
                    }

                    if (v174 == 1)
                    {
                      v99 = 1;
                    }

                    else
                    {
                      v99 = 2;
                    }

                    if (!v174)
                    {
                      v99 = 0;
                    }

                    if (v99 == 2)
                    {

                      if (qword_1EBC12270 != -1)
                      {
                        swift_once();
                      }

                      v100 = sub_1BABE72BC();
                      __swift_project_value_buffer(v100, qword_1EBC25018);
                      v101 = v182;

                      v102 = sub_1BABE729C();
                      v103 = sub_1BABE78EC();

                      if (os_log_type_enabled(v102, v103))
                      {
                        v104 = swift_slowAlloc();
                        v105 = swift_slowAlloc();
                        v205 = v105;
                        *v104 = 136446466;
                        LOBYTE(v203) = 2;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC128B8);
                        v106 = sub_1BABE755C();
                        v108 = sub_1BAAFA460(v106, v107, &v205);

                        *(v104 + 4) = v108;
                        *(v104 + 12) = 2082;
                        v203 = v101;
                        sub_1BAAFC06C(&qword_1EBC12828);
                        v109 = sub_1BABE7EAC();
                        v111 = sub_1BAAFA460(v109, v110, &v205);

                        *(v104 + 14) = v111;
                        _os_log_impl(&dword_1BAACF000, v102, v103, "Illegal destination type %{public}s for %{public}s", v104, 0x16u);
                        swift_arrayDestroy();
                        MEMORY[0x1BFAFE460](v105, -1, -1);
                        v112 = v104;
                        goto LABEL_50;
                      }

LABEL_73:

                      goto LABEL_85;
                    }

                    if ((v99 & 1) == 0)
                    {

                      v129 = v197;
                      (*(v197 + 104))(v200, *MEMORY[0x1E69C72D8], v185);
                      v28 = v202;
                      goto LABEL_77;
                    }

                    v28 = v202;
                    if (!v98)
                    {

                      if (qword_1EBC12270 == -1)
                      {
LABEL_71:
                        v133 = sub_1BABE72BC();
                        __swift_project_value_buffer(v133, qword_1EBC25018);
                        v134 = v182;

                        v102 = sub_1BABE729C();
                        v135 = sub_1BABE78EC();

                        if (!os_log_type_enabled(v102, v135))
                        {
                          goto LABEL_73;
                        }

                        v136 = swift_slowAlloc();
                        v137 = swift_slowAlloc();
                        v205 = v137;
                        *v136 = 136446210;
                        v203 = v134;
                        sub_1BAAFC06C(&qword_1EBC12828);
                        v138 = sub_1BABE7EAC();
                        v140 = sub_1BAAFA460(v138, v139, &v205);

                        *(v136 + 4) = v140;
                        _os_log_impl(&dword_1BAACF000, v102, v135, "Missing destination IDs for %{public}s", v136, 0xCu);
                        __swift_destroy_boxed_opaque_existential_1(v137);
                        MEMORY[0x1BFAFE460](v137, -1, -1);
                        v112 = v136;
LABEL_50:
                        MEMORY[0x1BFAFE460](v112, -1, -1);

LABEL_85:
                        sub_1BAAE8C08(v187);
                        return;
                      }

LABEL_101:
                      swift_once();
                      goto LABEL_71;
                    }

                    v205 = v96;
                    v206 = v98;
                    v203 = 124;
                    v204 = 0xE100000000000000;
                    sub_1BAAFBFA8();
                    v88 = sub_1BABE79AC();

                    v113 = *(v88 + 16);
                    if (!v113)
                    {
                      v42 = MEMORY[0x1E69E7CC0];
LABEL_76:

                      v141 = v200;
                      *v200 = v42;
                      v129 = v197;
                      (*(v197 + 104))(v141, *MEMORY[0x1E69C72D0], v185);
LABEL_77:
                      v42 = v196;
                      sub_1BABE6C9C();
                      v142 = v201;
                      v143 = (*(v201 + 48))(v42, 1, v28);
                      v144 = v199;
                      if (v143 == 1)
                      {

                        sub_1BAAD2E14(v42, &qword_1EBC12B60);
                        if (qword_1EBC12270 != -1)
                        {
                          swift_once();
                        }

                        v145 = sub_1BABE72BC();
                        __swift_project_value_buffer(v145, qword_1EBC25018);
                        v146 = v182;

                        v147 = v176;

                        v148 = v147;
                        v149 = sub_1BABE729C();
                        v150 = sub_1BABE78EC();

                        if (os_log_type_enabled(v149, v150))
                        {
                          v151 = swift_slowAlloc();
                          v152 = swift_slowAlloc();
                          v205 = v152;
                          *v151 = 136446466;
                          v153 = sub_1BAAFA460(v177, v148, &v205);

                          *(v151 + 4) = v153;
                          *(v151 + 12) = 2082;
                          v203 = v146;
                          sub_1BAAFC06C(&qword_1EBC12828);
                          v154 = sub_1BABE7EAC();
                          v156 = v129;
                          v157 = sub_1BAAFA460(v154, v155, &v205);

                          *(v151 + 14) = v157;
                          _os_log_impl(&dword_1BAACF000, v149, v150, "Malformed version %{public}s for %{public}s", v151, 0x16u);
                          swift_arrayDestroy();
                          MEMORY[0x1BFAFE460](v152, -1, -1);
                          MEMORY[0x1BFAFE460](v151, -1, -1);

                          (*(v156 + 8))(v200, v185);
                        }

                        else
                        {

                          (*(v129 + 8))(v200, v185);
                        }

                        goto LABEL_85;
                      }

                      (*(v142 + 32))(v198, v42, v28);
                      sub_1BAB27AB8("ExpirationDate", 14, 2, v35);
                      if (v158)
                      {
                        v159 = 1;
                      }

                      else
                      {
                        sub_1BABE6BFC();
                        v159 = 0;
                      }

                      v161 = v193;
                      v160 = v194;
                      v162 = v192;
                      v163 = sub_1BABE6C8C();
                      (*(*(v163 - 8) + 56))(v144, v159, 1, v163);
                      if ((v173 & 0x8000000000000000) == 0)
                      {
                        sub_1BABE6EFC();
                        (*(v201 + 16))(v189, v198, v202);
                        (*(v129 + 16))(v188, v200, v185);
                        sub_1BAAFBFFC(v144, v190);
                        (*(v161 + 16))(v191, v162, v195);
                        sub_1BABE6F4C();
                        swift_allocObject();

                        v164 = sub_1BABE6ECC();
                        v165 = *v160;
                        if ((*v160 & 0xC000000000000001) != 0)
                        {
                          if (v165 < 0)
                          {
                            v166 = *v160;
                          }

                          else
                          {
                            v166 = v165 & 0xFFFFFFFFFFFFFF8;
                          }

                          v167 = sub_1BABE7A5C();
                          v168 = v187;
                          if (__OFADD__(v167, 1))
                          {
                            __break(1u);
                            goto LABEL_101;
                          }

                          *v160 = sub_1BAAFA864(v166, v167 + 1);
                        }

                        else
                        {
                          v168 = v187;
                        }

                        v169 = v200;
                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        v205 = *v160;
                        sub_1BAAE5C78(v164, v182, isUniquelyReferenced_nonNull_native);

                        *v160 = v205;
                        (*(v161 + 8))(v162, v195);
                        sub_1BAAD2E14(v199, &qword_1EBC132A0);
                        (*(v201 + 8))(v198, v202);
                        (*(v129 + 8))(v169, v185);
                        sub_1BAAE8C08(v168);
                        return;
                      }

                      __break(1u);
LABEL_99:
                      swift_once();
LABEL_66:
                      v122 = sub_1BABE72BC();
                      __swift_project_value_buffer(v122, qword_1EBC25018);
                      v123 = v179;

                      v78 = sub_1BABE729C();
                      v124 = sub_1BABE78EC();

                      if (os_log_type_enabled(v78, v124))
                      {
                        v125 = swift_slowAlloc();
                        v126 = swift_slowAlloc();
                        v205 = v126;
                        *v125 = 136446466;
                        v127 = sub_1BAAFA460(v178, v123, &v205);

                        *(v125 + 4) = v127;
                        *(v125 + 12) = 2082;
                        v128 = sub_1BAAFA460(v186, v42, &v205);

                        *(v125 + 14) = v128;
                        _os_log_impl(&dword_1BAACF000, v78, v124, "Malformed relationshipID %{public}s for %{public}s", v125, 0x16u);
                        swift_arrayDestroy();
                        MEMORY[0x1BFAFE460](v126, -1, -1);
                        v81 = v125;
                        goto LABEL_26;
                      }

                      goto LABEL_27;
                    }

                    v114 = 0;
                    v186 = (v201 + 48);
                    v184 = (v201 + 32);
                    v115 = (v88 + 40);
                    v42 = MEMORY[0x1E69E7CC0];
                    v180 = v113;
                    while (v114 < *(v88 + 16))
                    {
                      v32 = *v115;

                      sub_1BABE6C9C();

                      if ((*v186)(v26, 1, v28) == 1)
                      {
                        sub_1BAAD2E14(v26, &qword_1EBC12B60);
                      }

                      else
                      {
                        v116 = v88;
                        v117 = *v184;
                        (*v184)(v183, v26, v28);
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v42 = sub_1BAAF9DF8(0, v42[2] + 1, 1, v42, &qword_1EBC12CD0, &unk_1BABE9DC0, MEMORY[0x1E69695A8]);
                        }

                        v119 = v42[2];
                        v118 = v42[3];
                        v32 = v119 + 1;
                        if (v119 >= v118 >> 1)
                        {
                          v42 = sub_1BAAF9DF8(v118 > 1, v119 + 1, 1, v42, &qword_1EBC12CD0, &unk_1BABE9DC0, MEMORY[0x1E69695A8]);
                        }

                        v42[2] = v32;
                        v120 = v42 + ((*(v201 + 80) + 32) & ~*(v201 + 80)) + *(v201 + 72) * v119;
                        v28 = v202;
                        v117(v120, v183, v202);
                        v88 = v116;
                        v113 = v180;
                      }

                      ++v114;
                      v115 += 2;
                      if (v113 == v114)
                      {
                        goto LABEL_76;
                      }
                    }

                    __break(1u);
LABEL_97:
                    swift_once();
                  }

LABEL_36:

                  (*(v201 + 56))(v187, 1, 1, v202);
                  goto LABEL_37;
                }
              }
            }
          }
        }
      }

LABEL_21:
    }
  }

  if (qword_1EBC12270 != -1)
  {
    swift_once();
  }

  v77 = sub_1BABE72BC();
  __swift_project_value_buffer(v77, qword_1EBC25018);
  v78 = sub_1BABE729C();
  v79 = sub_1BABE78EC();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&dword_1BAACF000, v78, v79, "Encountered malformed record metadata", v80, 2u);
    v81 = v80;
LABEL_26:
    MEMORY[0x1BFAFE460](v81, -1, -1);
  }

LABEL_27:
}

uint64_t Database.RecordMetadataStore.__deallocating_deinit()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1BAAF609C(uint64_t a1)
{
  v4 = v1;
  v177 = a1;
  v175 = sub_1BABE6F1C();
  v174 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v173 = &v162 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v172 = &v162 - v7;
  v8 = sub_1BABE721C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v170 = &v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_1BABE6CFC();
  v176 = *(v182 - 8);
  v10 = MEMORY[0x1EEE9AC00](v182);
  v171 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v181 = &v162 - v12;
  v13 = sub_1BABE70CC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v162 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_41;
  }

  v3 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock((v3 + 16));
  sub_1BAAF0E90(&v189);
  if (v2)
  {
    goto LABEL_42;
  }

  os_unfair_lock_unlock((v3 + 16));
  v18 = v189;

  if (v18 != 1)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v19 = sub_1BABE6EBC();
  if (v20)
  {
    v166 = v19;
    v167 = v20;
    v3 = 0xD00000000000002FLL;
    sub_1BABE6EAC();
    v21 = (*(v14 + 88))(v16, v13);
    v22 = *MEMORY[0x1E69C72D0];
    v165 = v4;
    v164 = 0;
    v169 = v21;
    v168 = v22;
    if (v21 == v22)
    {
      (*(v14 + 96))(v16, v13);
      v23 = *v16;
      v24 = *(*v16 + 16);
      if (v24)
      {
        v189 = MEMORY[0x1E69E7CC0];
        sub_1BAAFAAC0(0, v24, 0);
        v25 = v189;
        v179 = *(v176 + 16);
        v26 = (*(v176 + 80) + 32) & ~*(v176 + 80);
        v163 = v23;
        v27 = v23 + v26;
        v178 = *(v176 + 72);
        v180 = v176 + 16;
        v28 = (v176 + 8);
        do
        {
          v29 = v181;
          v30 = v182;
          (v179)(v181, v27, v182);
          v31 = sub_1BABE6CAC();
          v33 = v32;
          (*v28)(v29, v30);
          v189 = v25;
          v35 = *(v25 + 16);
          v34 = *(v25 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_1BAAFAAC0((v34 > 1), v35 + 1, 1);
            v25 = v189;
          }

          *(v25 + 16) = v35 + 1;
          v36 = v25 + 16 * v35;
          *(v36 + 32) = v31;
          *(v36 + 40) = v33;
          v27 += v178;
          --v24;
        }

        while (v24);
      }

      else
      {

        v25 = MEMORY[0x1E69E7CC0];
      }

      v189 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12830);
      sub_1BAAFBA1C();
      v163 = sub_1BABE74CC();
      v180 = v47;
    }

    else
    {
      if (v21 != *MEMORY[0x1E69C72D8])
      {
        goto LABEL_41;
      }

      v163 = 0;
      v180 = 0;
    }

    v194 = 0;
    v195 = 0xE000000000000000;
    v48 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
    v196 = v48;
    MEMORY[0x1BFAFD200](147);
    MEMORY[0x1BFAFD240](0x204543414C504552, 0xED0000204F544E49);
    v49 = sub_1BABE7B0C();
    MEMORY[0x1BFAFD240](v49);

    MEMORY[0x1BFAFD240](0x202020200A2820, 0xE700000000000000);
    v50 = sub_1BABE7B0C();
    MEMORY[0x1BFAFD240](v50);

    MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
    v51 = sub_1BABE7B0C();
    MEMORY[0x1BFAFD240](v51);

    MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
    v52 = sub_1BABE7B0C();
    MEMORY[0x1BFAFD240](v52);

    MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
    v53 = sub_1BABE7B0C();
    MEMORY[0x1BFAFD240](v53);

    MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
    v54 = sub_1BABE7B0C();
    MEMORY[0x1BFAFD240](v54);

    MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
    v55 = sub_1BABE7B0C();
    MEMORY[0x1BFAFD240](v55);

    MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
    v56 = sub_1BABE7B0C();
    MEMORY[0x1BFAFD240](v56);

    MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
    v57 = sub_1BABE7B0C();
    MEMORY[0x1BFAFD240](v57);

    MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
    v58 = sub_1BABE7B0C();
    MEMORY[0x1BFAFD240](v58);

    MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
    v59 = sub_1BABE7B0C();
    MEMORY[0x1BFAFD240](v59);

    MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF5800);
    sub_1BABE6EDC();
    v60 = sub_1BABE71FC();
    v62 = v61;

    v192 = MEMORY[0x1E69E6158];
    v193 = &protocol witness table for String;
    v63 = MEMORY[0x1E69E6158];
    v189 = v60;
    v190 = v62;
    sub_1BAAE779C(&v189, &v183);

    SQLValue.init(_:)(&v183, &v186);
    v64 = v186;
    v65 = v187;
    v66 = v188;
    *&v183 = 0x676E69646E696240;
    *(&v183 + 1) = 0xE800000000000000;
    v197 = *(v48 + 16) + 1;
    v67 = sub_1BABE7EAC();
    MEMORY[0x1BFAFD240](v67);

    v68 = v183;
    MEMORY[0x1BFAFD240](v183, *(&v183 + 1));
    sub_1BAAE7800(v64, v65, v66);
    v69 = v196;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v183 = v69;
    sub_1BAAE5904(v64, v65, v66, v68, *(&v68 + 1), isUniquelyReferenced_nonNull_native);

    sub_1BAAE7878(v64, v65, v66);
    v71 = v183;
    v196 = v183;
    __swift_destroy_boxed_opaque_existential_1(&v189);
    MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
    v192 = v63;
    v193 = &protocol witness table for String;
    v189 = v166;
    v190 = v167;
    sub_1BAAE779C(&v189, &v183);

    SQLValue.init(_:)(&v183, &v186);
    v72 = v186;
    v73 = v187;
    v74 = v188;
    *&v183 = 0x676E69646E696240;
    *(&v183 + 1) = 0xE800000000000000;
    v197 = *(v71 + 16) + 1;
    v75 = sub_1BABE7EAC();
    MEMORY[0x1BFAFD240](v75);

    v76 = v183;
    MEMORY[0x1BFAFD240](v183, *(&v183 + 1));
    sub_1BAAE7800(v72, v73, v74);
    v77 = v196;
    v78 = swift_isUniquelyReferenced_nonNull_native();
    *&v183 = v77;
    sub_1BAAE5904(v72, v73, v74, v76, *(&v76 + 1), v78);

    sub_1BAAE7878(v72, v73, v74);
    v79 = v183;
    v196 = v183;
    __swift_destroy_boxed_opaque_existential_1(&v189);
    MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
    sub_1BABE6EDC();
    sub_1BABE720C();

    v80 = sub_1BABE718C();
    v82 = v81;

    v192 = MEMORY[0x1E69E6158];
    v193 = &protocol witness table for String;
    v189 = v80;
    v190 = v82;
    sub_1BAAE779C(&v189, &v183);

    SQLValue.init(_:)(&v183, &v186);
    v83 = v186;
    v84 = v187;
    v85 = v188;
    *&v183 = 0x676E69646E696240;
    *(&v183 + 1) = 0xE800000000000000;
    v197 = *(v79 + 16) + 1;
    v86 = sub_1BABE7EAC();
    MEMORY[0x1BFAFD240](v86);

    v87 = v183;
    MEMORY[0x1BFAFD240](v183, *(&v183 + 1));
    sub_1BAAE7800(v83, v84, v85);
    v88 = v196;
    v89 = swift_isUniquelyReferenced_nonNull_native();
    *&v183 = v88;
    sub_1BAAE5904(v83, v84, v85, v87, *(&v87 + 1), v89);

    sub_1BAAE7878(v83, v84, v85);
    v90 = v183;
    v196 = v183;
    __swift_destroy_boxed_opaque_existential_1(&v189);
    MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
    sub_1BABE6EDC();
    sub_1BABE720C();

    v91 = sub_1BABE717C();
    v93 = v92;

    v192 = MEMORY[0x1E69E6158];
    v193 = &protocol witness table for String;
    v189 = v91;
    v190 = v93;
    sub_1BAAE779C(&v189, &v183);

    SQLValue.init(_:)(&v183, &v186);
    v94 = v186;
    v95 = v187;
    v96 = v188;
    *&v183 = 0x676E69646E696240;
    *(&v183 + 1) = 0xE800000000000000;
    v197 = *(v90 + 16) + 1;
    v97 = sub_1BABE7EAC();
    MEMORY[0x1BFAFD240](v97);

    v98 = v183;
    MEMORY[0x1BFAFD240](v183, *(&v183 + 1));
    sub_1BAAE7800(v94, v95, v96);
    v99 = v196;
    v100 = swift_isUniquelyReferenced_nonNull_native();
    *&v183 = v99;
    sub_1BAAE5904(v94, v95, v96, v98, *(&v98 + 1), v100);

    sub_1BAAE7878(v94, v95, v96);
    v101 = v183;
    v196 = v183;
    __swift_destroy_boxed_opaque_existential_1(&v189);
    MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
    sub_1BABE6EDC();
    v102 = v170;
    sub_1BABE722C();
    v103 = v176;
    v104 = v182;
    if ((*(v176 + 48))(v102, 1, v182) == 1)
    {
      v105 = v171;
      v106 = v168;
      if (qword_1EBC12280 != -1)
      {
        swift_once();
      }

      v107 = __swift_project_value_buffer(v104, qword_1EBC25000);
      (*(v103 + 16))(v105, v107, v104);
    }

    else
    {

      v105 = v171;
      (*(v103 + 32))(v171, v102, v104);
      v106 = v168;
    }

    v108 = MEMORY[0x1E69E6158];
    v179 = v169 == v106;
    v109 = sub_1BABE6CAC();
    v111 = v110;
    v178 = *(v103 + 8);
    v178(v105, v104);
    v192 = v108;
    v193 = &protocol witness table for String;
    v189 = v109;
    v190 = v111;
    sub_1BAAE779C(&v189, &v183);

    SQLValue.init(_:)(&v183, &v186);
    v112 = v186;
    v113 = v187;
    v114 = v188;
    *&v183 = 0x676E69646E696240;
    *(&v183 + 1) = 0xE800000000000000;
    v197 = *(v101 + 16) + 1;
    v115 = sub_1BABE7EAC();
    MEMORY[0x1BFAFD240](v115);

    v116 = v183;
    MEMORY[0x1BFAFD240](v183, *(&v183 + 1));
    sub_1BAAE7800(v112, v113, v114);
    v117 = v196;
    v118 = swift_isUniquelyReferenced_nonNull_native();
    *&v183 = v117;
    sub_1BAAE5904(v112, v113, v114, v116, *(&v116 + 1), v118);

    sub_1BAAE7878(v112, v113, v114);
    v119 = v183;
    v196 = v183;
    __swift_destroy_boxed_opaque_existential_1(&v189);
    MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
    v120 = v181;
    sub_1BABE6F3C();
    v121 = sub_1BABE6CAC();
    v123 = v122;
    v178(v120, v182);
    v192 = MEMORY[0x1E69E6158];
    v193 = &protocol witness table for String;
    v189 = v121;
    v190 = v123;
    sub_1BAAE779C(&v189, &v183);

    SQLValue.init(_:)(&v183, &v186);
    v124 = v186;
    v125 = v187;
    LOBYTE(v112) = v188;
    v3 = 0x676E69646E696240;
    *&v183 = 0x676E69646E696240;
    *(&v183 + 1) = 0xE800000000000000;
    v197 = *(v119 + 16) + 1;
    v126 = sub_1BABE7EAC();
    MEMORY[0x1BFAFD240](v126);

    v127 = v183;
    MEMORY[0x1BFAFD240](v183, *(&v183 + 1));
    sub_1BAAE7800(v124, v125, v112);
    v128 = v196;
    v129 = swift_isUniquelyReferenced_nonNull_native();
    *&v183 = v128;
    sub_1BAAE5904(v124, v125, v112, v127, *(&v127 + 1), v129);

    sub_1BAAE7878(v124, v125, v112);
    v130 = v183;
    v196 = v183;
    __swift_destroy_boxed_opaque_existential_1(&v189);
    MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
    v192 = MEMORY[0x1E69E7360];
    v193 = &protocol witness table for Int64;
    v189 = v179;
    sub_1BAAE779C(&v189, &v183);
    SQLValue.init(_:)(&v183, &v186);
    v131 = v186;
    v132 = v187;
    LOBYTE(v123) = v188;
    *&v183 = 0x676E69646E696240;
    *(&v183 + 1) = 0xE800000000000000;
    v197 = *(v130 + 16) + 1;
    v133 = sub_1BABE7EAC();
    MEMORY[0x1BFAFD240](v133);

    v134 = v183;
    MEMORY[0x1BFAFD240](v183, *(&v183 + 1));
    sub_1BAAE7800(v131, v132, v123);
    v135 = v196;
    v136 = swift_isUniquelyReferenced_nonNull_native();
    *&v183 = v135;
    sub_1BAAE5904(v131, v132, v123, v134, *(&v134 + 1), v136);

    sub_1BAAE7878(v131, v132, v123);
    v196 = v183;
    __swift_destroy_boxed_opaque_existential_1(&v189);
    MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
    if (v180)
    {
      *(&v184 + 1) = MEMORY[0x1E69E6158];
      v185 = &protocol witness table for String;
      *&v183 = v163;
      *(&v183 + 1) = v180;
      sub_1BAAE7A7C(&v183, &v189);
      v137 = v172;
    }

    else
    {
      v185 = 0;
      v183 = 0u;
      v184 = 0u;
      v138 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      v192 = sub_1BAAE7A30();
      v193 = &protocol witness table for NSNull;
      v189 = v138;
      v137 = v172;
      if (*(&v184 + 1))
      {
        sub_1BAAD2E14(&v183, &qword_1EBC12770);
      }
    }

    v139 = v192;
    v140 = v193;
    v141 = __swift_project_boxed_opaque_existential_1(&v189, v192);
    sub_1BABA876C(v141, &v194, v139, v140);
    __swift_destroy_boxed_opaque_existential_1(&v189);
    MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
    sub_1BABE6E9C();
    v142 = sub_1BABE6C8C();
    v143 = *(v142 - 8);
    if ((*(v143 + 48))(v137, 1, v142) == 1)
    {
      sub_1BAAD2E14(v137, &qword_1EBC132A0);
      v183 = 0u;
      v184 = 0u;
      v185 = 0;
      v144 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      v192 = sub_1BAAE7A30();
      v193 = &protocol witness table for NSNull;
      v189 = v144;
      if (*(&v184 + 1))
      {
        sub_1BAAD2E14(&v183, &qword_1EBC12770);
      }
    }

    else
    {
      sub_1BABE6C0C();
      *(&v184 + 1) = MEMORY[0x1E69E63B0];
      v185 = &protocol witness table for Double;
      *&v183 = v145;
      (*(v143 + 8))(v137, v142);
      sub_1BAAE7A7C(&v183, &v189);
    }

    v146 = v192;
    v147 = v193;
    v148 = __swift_project_boxed_opaque_existential_1(&v189, v192);
    sub_1BABA876C(v148, &v194, v146, v147);
    __swift_destroy_boxed_opaque_existential_1(&v189);
    MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
    v149 = v173;
    sub_1BABE6F2C();
    v150 = sub_1BABE6F0C();
    (*(v174 + 8))(v149, v175);
    if ((v150 & 0x8000000000000000) == 0)
    {
      v193 = &protocol witness table for Int64;
      v192 = MEMORY[0x1E69E7360];
      v189 = v150;
      sub_1BAAE779C(&v189, &v183);
      SQLValue.init(_:)(&v183, &v186);
      v151 = v186;
      v152 = v187;
      v153 = v188;
      *&v183 = 0x676E69646E696240;
      *(&v183 + 1) = 0xE800000000000000;
      v197 = *(v196 + 16) + 1;
      v154 = sub_1BABE7EAC();
      MEMORY[0x1BFAFD240](v154);

      v155 = v183;
      MEMORY[0x1BFAFD240](v183, *(&v183 + 1));
      sub_1BAAE7800(v151, v152, v153);
      v156 = v196;
      v157 = swift_isUniquelyReferenced_nonNull_native();
      *&v183 = v156;
      sub_1BAAE5904(v151, v152, v153, v155, *(&v155 + 1), v157);

      sub_1BAAE7878(v151, v152, v153);
      v196 = v183;
      __swift_destroy_boxed_opaque_existential_1(&v189);
      MEMORY[0x1BFAFD240](3877130, 0xE300000000000000);
      v158 = v194;
      v159 = v195;
      v160 = v196;
      if (swift_weakLoadStrong())
      {
        v189 = v160;
        v190 = v158;
        v191 = v159;
        v161 = v164;
        SQLDatabase.perform(_:)(&v189);

        if (!v161)
        {
        }

        return result;
      }

      while (1)
      {
LABEL_41:
        sub_1BABE7C9C();
        __break(1u);
LABEL_42:
        os_unfair_lock_unlock((v3 + 16));
        __break(1u);
      }
    }

    goto LABEL_39;
  }

  if (qword_1EBC12270 != -1)
  {
LABEL_40:
    swift_once();
  }

  v37 = sub_1BABE72BC();
  __swift_project_value_buffer(v37, qword_1EBC25018);

  v38 = sub_1BABE729C();
  v39 = sub_1BABE78EC();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v189 = v41;
    *v40 = 136446210;
    *&v183 = sub_1BABE6EDC();
    sub_1BABE723C();
    sub_1BAAFC06C(&qword_1EBC12828);
    v42 = sub_1BABE7EAC();
    v44 = v43;

    v45 = sub_1BAAFA460(v42, v44, &v189);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_1BAACF000, v38, v39, "Cannot persist record metadata without a client defined ID: %{public}s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1BFAFE460](v41, -1, -1);
    MEMORY[0x1BFAFE460](v40, -1, -1);
  }

  sub_1BAAFB9C8();
  swift_allocError();
  return swift_willThrow();
}

void sub_1BAAF7928(uint64_t a1)
{
  v5 = sub_1BABE721C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v74 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1BABE6CFC();
  v7 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v11 = Strong;
  v12 = &v68;
  v3 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v3 + 4);
  sub_1BAAF1130(&v80);
  if (v2)
  {
LABEL_15:
    os_unfair_lock_unlock(v3 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v3 + 4);
  v13 = v80;

  if (v13 != 1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v70 = v9;
  v71 = 0;
  v72 = v1;
  v85 = 0;
  v86 = 0xE000000000000000;
  v14 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v87 = v14;
  MEMORY[0x1BFAFD200](51);
  MEMORY[0x1BFAFD240](0x46204554454C4544, 0xEC000000204D4F52);
  v15 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v15);

  MEMORY[0x1BFAFD240](0x2045524548570ALL, 0xE700000000000000);
  v16 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v16);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v17 = sub_1BABE71FC();
  v83 = MEMORY[0x1E69E6158];
  v84 = &protocol witness table for String;
  v80 = v17;
  v81 = v18;
  sub_1BAAE779C(&v80, &v75);

  SQLValue.init(_:)(&v75, &v77);
  v19 = v77;
  v20 = v78;
  v21 = v79;
  v75 = 0x676E69646E696240;
  v76 = 0xE800000000000000;
  v88 = *(v14 + 16) + 1;
  v22 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v22);

  v23 = v75;
  v24 = v76;
  MEMORY[0x1BFAFD240](v75, v76);
  sub_1BAAE7800(v19, v20, v21);
  v25 = v87;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v25;
  sub_1BAAE5904(v19, v20, v21, v23, v24, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v19, v20, v21);
  v27 = v75;
  v87 = v75;
  __swift_destroy_boxed_opaque_existential_1(&v80);
  v69 = v7;
  MEMORY[0x1BFAFD240]();
  v28 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v28);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  sub_1BABE720C();
  v29 = sub_1BABE718C();
  v31 = v30;

  v83 = MEMORY[0x1E69E6158];
  v84 = &protocol witness table for String;
  v80 = v29;
  v81 = v31;
  sub_1BAAE779C(&v80, &v75);

  SQLValue.init(_:)(&v75, &v77);
  v32 = v77;
  v33 = v78;
  LOBYTE(v20) = v79;
  v75 = 0x676E69646E696240;
  v76 = 0xE800000000000000;
  v88 = *(v27 + 16) + 1;
  v34 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v34);

  v36 = v75;
  v35 = v76;
  MEMORY[0x1BFAFD240](v75, v76);
  sub_1BAAE7800(v32, v33, v20);
  v37 = v87;
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v75 = v37;
  sub_1BAAE5904(v32, v33, v20, v36, v35, v38);

  sub_1BAAE7878(v32, v33, v20);
  v39 = v75;
  v87 = v75;
  __swift_destroy_boxed_opaque_existential_1(&v80);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v40 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v40);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  sub_1BABE720C();
  v41 = sub_1BABE717C();
  v43 = v42;

  v83 = MEMORY[0x1E69E6158];
  v84 = &protocol witness table for String;
  v80 = v41;
  v81 = v43;
  sub_1BAAE779C(&v80, &v75);

  SQLValue.init(_:)(&v75, &v77);
  v44 = v77;
  v45 = v78;
  LOBYTE(v20) = v79;
  v75 = 0x676E69646E696240;
  v76 = 0xE800000000000000;
  v88 = *(v39 + 16) + 1;
  v46 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v46);

  v47 = v75;
  v48 = v76;
  MEMORY[0x1BFAFD240](v75, v76);
  sub_1BAAE7800(v44, v45, v20);
  v49 = v87;
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v75 = v49;
  sub_1BAAE5904(v44, v45, v20, v47, v48, v50);

  sub_1BAAE7878(v44, v45, v20);
  v3 = v75;
  v87 = v75;
  __swift_destroy_boxed_opaque_existential_1(&v80);
  v12 = v69;
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v51 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v51);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v52 = v74;
  sub_1BABE722C();
  a1 = v73;
  if ((v12[6])(v52, 1, v73) == 1)
  {
    v11 = v70;
    if (qword_1EBC12280 == -1)
    {
LABEL_6:
      v53 = __swift_project_value_buffer(a1, qword_1EBC25000);
      (v12[2])(v11, v53, a1);
      goto LABEL_8;
    }

LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v11 = v70;
  (v12[4])(v70, v52, a1);
LABEL_8:
  v54 = sub_1BABE6CAC();
  v56 = v55;
  (v12[1])(v11, a1);
  v83 = MEMORY[0x1E69E6158];
  v84 = &protocol witness table for String;
  v80 = v54;
  v81 = v56;
  sub_1BAAE779C(&v80, &v75);

  SQLValue.init(_:)(&v75, &v77);
  v57 = v77;
  v58 = v78;
  v59 = v79;
  v75 = 0x676E69646E696240;
  v76 = 0xE800000000000000;
  v88 = *&v3[4]._os_unfair_lock_opaque + 1;
  v60 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v60);

  v3 = v75;
  v61 = v76;
  MEMORY[0x1BFAFD240](v75, v76);
  sub_1BAAE7800(v57, v58, v59);
  v62 = v87;
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v75 = v62;
  sub_1BAAE5904(v57, v58, v59, v3, v61, v63);

  sub_1BAAE7878(v57, v58, v59);
  v87 = v75;
  __swift_destroy_boxed_opaque_existential_1(&v80);
  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v64 = v85;
  v65 = v86;
  v66 = v87;
  if (!swift_weakLoadStrong())
  {
LABEL_14:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_15;
  }

  v80 = v66;
  v81 = v64;
  v82 = v65;
  v67 = v71;
  SQLDatabase.perform(_:)(&v80);

  if (!v67)
  {
  }
}

void sub_1BAAF82E0()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v1 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v1 + 4);
  sub_1BAAF1130(&v7);
  if (v0)
  {
LABEL_10:
    os_unfair_lock_unlock(v1 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v1 + 4);
  v3 = v7;

  if (v3 != 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = 0;
  v8 = 0xE000000000000000;
  v9 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](13);
  MEMORY[0x1BFAFD240](0x46204554454C4544, 0xEC000000204D4F52);
  v4 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v4);

  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v1 = v7;
  v5 = v8;
  v6 = v9;
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  v8 = v1;
  v9 = v5;
  SQLDatabase.perform(_:)(&v7);
}

void sub_1BAAF84D8(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v149 = a2;
  v150 = a1;
  v6 = sub_1BABE721C();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v145 = &v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v144 = &v140 - v9;
  v10 = sub_1BABE6CFC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v146 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v140 - v14);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_19:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_20;
  }

  v17 = &v140;
  v4 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v4 + 4);
  sub_1BAAF1130(&v156);
  if (v3)
  {
LABEL_20:
    os_unfair_lock_unlock(v4 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v4 + 4);
  v18 = v156;

  if (v18 != 1)
  {
    __break(1u);
    goto LABEL_18;
  }

  v141 = v15;
  v142 = 0;
  v143 = v5;
  v161 = 0;
  v162 = 0xE000000000000000;
  v19 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v163 = v19;
  MEMORY[0x1BFAFD200](94);
  MEMORY[0x1BFAFD240](0x20455441445055, 0xE700000000000000);
  v20 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v20);

  MEMORY[0x1BFAFD240](0x2020200A5445530ALL, 0xE900000000000020);
  v21 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v21);

  MEMORY[0x1BFAFD240](2112800, 0xE300000000000000);
  v22 = sub_1BABE71FC();
  v159 = MEMORY[0x1E69E6158];
  v160 = &protocol witness table for String;
  v156 = v22;
  v157 = v23;
  sub_1BAAE779C(&v156, &v151);

  SQLValue.init(_:)(&v151, &v153);
  v147 = v11;
  v148 = v10;
  v25 = v153;
  v24 = v154;
  v26 = v155;
  v151 = 0x676E69646E696240;
  v152 = 0xE800000000000000;
  v164 = *(v19 + 16) + 1;
  v27 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v27);

  v28 = v151;
  v29 = v152;
  MEMORY[0x1BFAFD240](v151, v152);
  sub_1BAAE7800(v25, v24, v26);
  v30 = v163;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v151 = v30;
  sub_1BAAE5904(v25, v24, v26, v28, v29, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v25, v24, v26);
  v32 = v151;
  v163 = v151;
  __swift_destroy_boxed_opaque_existential_1(&v156);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v33 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v33);

  MEMORY[0x1BFAFD240](2112800, 0xE300000000000000);
  v34 = sub_1BABE71FC();
  v159 = MEMORY[0x1E69E6158];
  v160 = &protocol witness table for String;
  v156 = v34;
  v157 = v35;
  sub_1BAAE779C(&v156, &v151);

  SQLValue.init(_:)(&v151, &v153);
  v36 = v153;
  v37 = v154;
  LOBYTE(v28) = v155;
  v151 = 0x676E69646E696240;
  v152 = 0xE800000000000000;
  v164 = *(v32 + 16) + 1;
  v38 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v38);

  v39 = v151;
  v40 = v152;
  MEMORY[0x1BFAFD240](v151, v152);
  sub_1BAAE7800(v36, v37, v28);
  v41 = v163;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v41;
  sub_1BAAE5904(v36, v37, v28, v39, v40, v42);

  sub_1BAAE7878(v36, v37, v28);
  v43 = v151;
  v163 = v151;
  __swift_destroy_boxed_opaque_existential_1(&v156);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v44 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v44);

  MEMORY[0x1BFAFD240](2112800, 0xE300000000000000);
  sub_1BABE720C();
  v45 = sub_1BABE718C();
  v47 = v46;

  v159 = MEMORY[0x1E69E6158];
  v160 = &protocol witness table for String;
  v156 = v45;
  v157 = v47;
  sub_1BAAE779C(&v156, &v151);

  SQLValue.init(_:)(&v151, &v153);
  v48 = v153;
  v49 = v154;
  LOBYTE(v37) = v155;
  v151 = 0x676E69646E696240;
  v152 = 0xE800000000000000;
  v164 = *(v43 + 16) + 1;
  v50 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v50);

  v51 = v151;
  v52 = v152;
  MEMORY[0x1BFAFD240](v151, v152);
  sub_1BAAE7800(v48, v49, v37);
  v53 = v163;
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v53;
  sub_1BAAE5904(v48, v49, v37, v51, v52, v54);

  sub_1BAAE7878(v48, v49, v37);
  v55 = v151;
  v163 = v151;
  __swift_destroy_boxed_opaque_existential_1(&v156);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v56 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v56);

  MEMORY[0x1BFAFD240](2112800, 0xE300000000000000);
  sub_1BABE720C();
  v57 = sub_1BABE717C();
  v59 = v58;

  v159 = MEMORY[0x1E69E6158];
  v160 = &protocol witness table for String;
  v156 = v57;
  v157 = v59;
  sub_1BAAE779C(&v156, &v151);

  SQLValue.init(_:)(&v151, &v153);
  v60 = v153;
  v61 = v154;
  LOBYTE(v37) = v155;
  v151 = 0x676E69646E696240;
  v152 = 0xE800000000000000;
  v11 = v147;
  v164 = *(v55 + 16) + 1;
  v62 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v62);

  v63 = v151;
  v64 = v152;
  MEMORY[0x1BFAFD240](v151, v152);
  sub_1BAAE7800(v60, v61, v37);
  v65 = v163;
  v66 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v65;
  sub_1BAAE5904(v60, v61, v37, v63, v64, v66);
  v10 = v148;

  sub_1BAAE7878(v60, v61, v37);
  v17 = v151;
  v163 = v151;
  __swift_destroy_boxed_opaque_existential_1(&v156);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v67 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v67);

  MEMORY[0x1BFAFD240](2112800, 0xE300000000000000);
  v68 = v144;
  sub_1BABE722C();
  v69 = *(v11 + 48);
  v149 = v11 + 48;
  v140 = v69;
  if (v69(v68, 1, v10) == 1)
  {
    v18 = v141;
    if (qword_1EBC12280 == -1)
    {
LABEL_6:
      v70 = __swift_project_value_buffer(v10, qword_1EBC25000);
      (*(v11 + 16))(v18, v70, v10);
      goto LABEL_8;
    }

LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  v18 = v141;
  (*(v11 + 32))(v141, v68, v10);
LABEL_8:
  v71 = sub_1BABE6CAC();
  v73 = v72;
  v74 = *(v11 + 8);
  v144 = (v11 + 8);
  v141 = v74;
  v74(v18, v10);
  v159 = MEMORY[0x1E69E6158];
  v160 = &protocol witness table for String;
  v156 = v71;
  v157 = v73;
  sub_1BAAE779C(&v156, &v151);

  SQLValue.init(_:)(&v151, &v153);
  v75 = v153;
  v76 = v154;
  v77 = v155;
  v151 = 0x676E69646E696240;
  v152 = 0xE800000000000000;
  v164 = v17[2] + 1;
  v78 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v78);

  v79 = v151;
  v80 = v152;
  MEMORY[0x1BFAFD240](v151, v152);
  sub_1BAAE7800(v75, v76, v77);
  v81 = v163;
  v82 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v81;
  sub_1BAAE5904(v75, v76, v77, v79, v80, v82);

  sub_1BAAE7878(v75, v76, v77);
  v83 = v151;
  v163 = v151;
  __swift_destroy_boxed_opaque_existential_1(&v156);
  MEMORY[0x1BFAFD240](0x2045524548570ALL, 0xE700000000000000);
  v84 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v84);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v85 = sub_1BABE71FC();
  v159 = MEMORY[0x1E69E6158];
  v160 = &protocol witness table for String;
  v156 = v85;
  v157 = v86;
  sub_1BAAE779C(&v156, &v151);

  SQLValue.init(_:)(&v151, &v153);
  v87 = v153;
  v88 = v154;
  v89 = v155;
  v151 = 0x676E69646E696240;
  v152 = 0xE800000000000000;
  v164 = *(v83 + 16) + 1;
  v90 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v90);

  v91 = v151;
  v92 = v152;
  MEMORY[0x1BFAFD240](v151, v152);
  sub_1BAAE7800(v87, v88, v89);
  v93 = v163;
  v94 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v93;
  sub_1BAAE5904(v87, v88, v89, v91, v92, v94);

  sub_1BAAE7878(v87, v88, v89);
  v95 = v151;
  v163 = v151;
  __swift_destroy_boxed_opaque_existential_1(&v156);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v96 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v96);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  sub_1BABE720C();
  v97 = sub_1BABE718C();
  v99 = v98;

  v100 = MEMORY[0x1E69E6158];
  v159 = MEMORY[0x1E69E6158];
  v160 = &protocol witness table for String;
  v156 = v97;
  v157 = v99;
  sub_1BAAE779C(&v156, &v151);

  SQLValue.init(_:)(&v151, &v153);
  v101 = v153;
  v102 = v154;
  LOBYTE(v92) = v155;
  v151 = 0x676E69646E696240;
  v152 = 0xE800000000000000;
  v164 = *(v95 + 16) + 1;
  v103 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v103);

  v105 = v151;
  v104 = v152;
  MEMORY[0x1BFAFD240](v151, v152);
  sub_1BAAE7800(v101, v102, v92);
  v106 = v163;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v106;
  sub_1BAAE5904(v101, v102, v92, v105, v104, v107);

  sub_1BAAE7878(v101, v102, v92);
  v108 = v151;
  v163 = v151;
  __swift_destroy_boxed_opaque_existential_1(&v156);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v109 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v109);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  sub_1BABE720C();
  v110 = sub_1BABE717C();
  v112 = v111;

  v159 = v100;
  v160 = &protocol witness table for String;
  v156 = v110;
  v157 = v112;
  sub_1BAAE779C(&v156, &v151);

  SQLValue.init(_:)(&v151, &v153);
  v113 = v153;
  v114 = v154;
  LOBYTE(v92) = v155;
  v151 = 0x676E69646E696240;
  v152 = 0xE800000000000000;
  v164 = *(v108 + 16) + 1;
  v115 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v115);

  v116 = v151;
  v117 = v152;
  MEMORY[0x1BFAFD240](v151, v152);
  sub_1BAAE7800(v113, v114, v92);
  v118 = v163;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v118;
  sub_1BAAE5904(v113, v114, v92, v116, v117, v119);

  v120 = v148;
  sub_1BAAE7878(v113, v114, v92);
  v121 = v151;
  v163 = v151;
  __swift_destroy_boxed_opaque_existential_1(&v156);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v122 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v122);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v123 = v145;
  sub_1BABE722C();
  if (v140(v123, 1, v120) == 1)
  {
    v124 = v146;
    if (qword_1EBC12280 != -1)
    {
      swift_once();
    }

    v125 = __swift_project_value_buffer(v120, qword_1EBC25000);
    (*(v147 + 16))(v124, v125, v120);
  }

  else
  {
    v124 = v146;
    (*(v147 + 32))(v146, v123, v120);
  }

  v126 = sub_1BABE6CAC();
  v128 = v127;
  v141(v124, v120);
  v159 = MEMORY[0x1E69E6158];
  v160 = &protocol witness table for String;
  v156 = v126;
  v157 = v128;
  sub_1BAAE779C(&v156, &v151);

  SQLValue.init(_:)(&v151, &v153);
  v129 = v153;
  v130 = v154;
  v4 = v155;
  v151 = 0x676E69646E696240;
  v152 = 0xE800000000000000;
  v164 = *(v121 + 16) + 1;
  v131 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v131);

  v132 = v151;
  v133 = v152;
  MEMORY[0x1BFAFD240](v151, v152);
  sub_1BAAE7800(v129, v130, v4);
  v134 = v163;
  v135 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v134;
  sub_1BAAE5904(v129, v130, v4, v132, v133, v135);

  sub_1BAAE7878(v129, v130, v4);
  v163 = v151;
  __swift_destroy_boxed_opaque_existential_1(&v156);
  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v136 = v161;
  v137 = v162;
  v138 = v163;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_19;
  }

  v156 = v138;
  v157 = v136;
  v158 = v137;
  v139 = v142;
  SQLDatabase.perform(_:)(&v156);

  if (!v139)
  {
  }
}

uint64_t sub_1BAAF9770(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      v3 = MEMORY[0x1E69E63B0];
      v4 = &protocol witness table for Double;
    }

    else
    {
      v3 = MEMORY[0x1E69E7360];
      v4 = &protocol witness table for Int64;
    }

    v10 = v3;
    v11 = v4;
    *&v9 = a1;
  }

  else if (a3 == 2)
  {
    v10 = MEMORY[0x1E69E6158];
    v11 = &protocol witness table for String;
    *&v9 = a1;
    *(&v9 + 1) = a2;
  }

  else if (a3 == 3)
  {
    v10 = MEMORY[0x1E6969080];
    v11 = &protocol witness table for Data;
    *&v9 = a1;
    *(&v9 + 1) = a2;
    sub_1BAAE7824(a1, a2);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v10 = sub_1BAAE7A30();
    v11 = &protocol witness table for NSNull;
    *&v9 = v5;
  }

  sub_1BAAE7A7C(&v9, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127D8);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

char *sub_1BAAF98F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12AC0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1BAAF9AA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12850);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1BAAF9BA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12878);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BAAF9CC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12870);
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
    v10 = MEMORY[0x1E69E7CC0];
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

size_t sub_1BAAF9DF8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

void *sub_1BAAF9FD4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC128E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC128E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BAAFA11C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC128C8);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BAAFA228(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12898);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1BAAFA32C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12860);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12868);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1BAAFA460(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BAAFA52C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1BAAFBEE8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1BAAFA52C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1BAAFA638(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1BABE7B5C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1BAAFA638(uint64_t a1, unint64_t a2)
{
  v3 = sub_1BABA17A4(a1, a2);
  sub_1BAAFA684(&unk_1F38BC408);
  return v3;
}

uint64_t sub_1BAAFA684(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1BAAFA770(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1BAAFA770(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC128A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1BAAFA864(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127C8);
    v2 = sub_1BABE7CDC();
    v19 = v2;
    sub_1BABE7C1C();
    v3 = sub_1BABE7C7C();
    if (v3)
    {
      v4 = v3;
      sub_1BABE723C();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1BABE6F4C();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1BABD6E48(v12 + 1, 1);
        }

        v2 = v19;
        sub_1BAAFC06C(&qword_1EBC123D8);
        result = sub_1BABE74AC();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1BABE7C7C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

char *sub_1BAAFAAC0(char *a1, int64_t a2, char a3)
{
  result = sub_1BAAFAD38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BAAFAAE0(size_t a1, int64_t a2, char a3)
{
  result = sub_1BAAFB3D0(a1, a2, a3, *v3, &qword_1EBC12A60, &unk_1BABEA030, type metadata accessor for ReplicatorDevice);
  *v3 = result;
  return result;
}

size_t sub_1BAAFAB24(size_t a1, int64_t a2, char a3)
{
  result = sub_1BAAFB3D0(a1, a2, a3, *v3, &qword_1EBC12848, &unk_1BABE9D48, type metadata accessor for ReplicatorRecordChange);
  *v3 = result;
  return result;
}

size_t sub_1BAAFAB68(size_t a1, int64_t a2, char a3)
{
  result = sub_1BAAFB3D0(a1, a2, a3, *v3, &qword_1EBC12A40, &unk_1BABE9D50, type metadata accessor for ReplicatorRecord.ID);
  *v3 = result;
  return result;
}

size_t sub_1BAAFABAC(size_t a1, int64_t a2, char a3)
{
  result = sub_1BAAFB3D0(a1, a2, a3, *v3, &qword_1EBC12880, &unk_1BABE9D88, type metadata accessor for ReplicatorRecordVersion);
  *v3 = result;
  return result;
}

size_t sub_1BAAFABF0(size_t a1, int64_t a2, char a3)
{
  result = sub_1BAAFB3D0(a1, a2, a3, *v3, &qword_1EBC12CD0, &unk_1BABE9DC0, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

void *sub_1BAAFAC34(void *a1, int64_t a2, char a3)
{
  result = sub_1BAAFAE44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BAAFAC54(char *a1, int64_t a2, char a3)
{
  result = sub_1BAAFAF78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BAAFAC74(void *a1, int64_t a2, char a3)
{
  result = sub_1BAAFB06C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BAAFAC94(char *a1, int64_t a2, char a3)
{
  result = sub_1BAAFB1B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BAAFACB4(char *a1, int64_t a2, char a3)
{
  result = sub_1BAAFB2CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BAAFACD4(size_t a1, int64_t a2, char a3)
{
  result = sub_1BAAFB3D0(a1, a2, a3, *v3, &qword_1EBC12858, &unk_1BABE9D60, type metadata accessor for ReplicatorMessage);
  *v3 = result;
  return result;
}

char *sub_1BAAFAD18(char *a1, int64_t a2, char a3)
{
  result = sub_1BAAFB5AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BAAFAD38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12AC0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1BAAFAE44(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12860);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12868);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BAAFAF78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC128A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1BAAFB06C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC128D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC128D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BAAFB1B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12BE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BAAFB2CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC128A0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

size_t sub_1BAAFB3D0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

char *sub_1BAAFB5AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12890);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1BAAFB6B8(uint64_t result, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_1BABE7C6C();
      sub_1BABE6F4C();
      swift_dynamicCast();
      return v7;
    }

    goto LABEL_19;
  }

  if (a3)
  {
    result = sub_1BABE7C3C();
    if (result == *(a4 + 36))
    {
      sub_1BABE7C4C();
      sub_1BABE723C();
      swift_dynamicCast();
      sub_1BABD5B50(v7);
      v6 = v5;

      if (v6)
      {
      }

      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }
}

uint64_t sub_1BAAFB810(uint64_t a1)
{
  result = MEMORY[0x1E69E7CC8];
  v7 = MEMORY[0x1E69E7CC8];
  v4 = *(a1 + 16);
  if (v4)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v6 = *i;

      sub_1BAAF488C(&v7, &v6);
      if (v1)
      {
        break;
      }

      if (!--v4)
      {
        return v7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BAAFB8B8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2;
  }

  for (i = (a1 + 32); ; ++i)
  {
    v8 = *i;

    sub_1BAAF4108(&v8, &v7);
    if (v1)
    {
      break;
    }

    if (v7)
    {
      MEMORY[0x1BFAFD300](v5);
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BABE76EC();
      }

      sub_1BABE772C();
      v2 = v9;
    }

    if (!--v3)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BAAFB9C8()
{
  result = qword_1EBC12820;
  if (!qword_1EBC12820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12820);
  }

  return result;
}

unint64_t sub_1BAAFBA1C()
{
  result = qword_1EBC12838;
  if (!qword_1EBC12838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC12830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12838);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t dispatch thunk of Database.RecordMetadataStore.recordMetadata(for:)()
{
  return (*(*v0 + 152))();
}

{
  return (*(*v0 + 160))();
}

uint64_t _s19RecordMetadataStoreC24RecordMetadataStoreErrorOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s19RecordMetadataStoreC24RecordMetadataStoreErrorOwst(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1BAAFBE90()
{
  result = qword_1EBC12840;
  if (!qword_1EBC12840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12840);
  }

  return result;
}

uint64_t sub_1BAAFBEE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1BAAFBF44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BABE721C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BAAFBFA8()
{
  result = qword_1EBC12260;
  if (!qword_1EBC12260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12260);
  }

  return result;
}

uint64_t sub_1BAAFBFFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAAFC06C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BABE723C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BAAFC0B8()
{
  v10 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](34);
  MEMORY[0x1BFAFD240](0x200A5443454C4553, 0xEB00000000202020);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v3 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v3);

  MEMORY[0x1BFAFD240](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v4 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v4);

  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v9[0] = v10;
    v9[1] = 0;
    v10 = 0xE000000000000000;
    v7 = SQLDatabase.perform(_:)(v9);

    if (!v0)
    {
      v6 = sub_1BAAFCD70(v7);
    }

    return v6;
  }

  else
  {
    result = sub_1BABE7C9C();
    __break(1u);
  }

  return result;
}

void sub_1BAAFC2FC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = sub_1BABE7B0C();
  SQLResult.subscript.getter(v4, v5, &v23);

  v6 = v25;
  if (v25 != 255)
  {
    v8 = v23;
    v7 = v24;
    v9 = sub_1BAAF9770(v23, v24, v25);
    v11 = v10;
    sub_1BAAE8B8C(v8, v7, v6);
    if (v11)
    {
      v12 = sub_1BAB27AAC("Enabled", 7, 2, v3);
      if ((v13 & 1) == 0)
      {
        v14 = v12;
        v15 = sub_1BAB27AAC("Registered", 10, 2, v3);
        if ((v16 & 1) == 0)
        {
          v21 = v15 == 1;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v23 = *a1;
          sub_1BAAE5DA4(v9, v11, (v14 == 1) | (v21 << 8), v9, v11, isUniquelyReferenced_nonNull_native);

          *a1 = v23;
          return;
        }
      }
    }
  }

  if (qword_1EBC12270 != -1)
  {
    swift_once();
  }

  v17 = sub_1BABE72BC();
  __swift_project_value_buffer(v17, qword_1EBC25018);
  v18 = sub_1BABE729C();
  v19 = sub_1BABE78EC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1BAACF000, v18, v19, "Encountered malformed client settings", v20, 2u);
    MEMORY[0x1BFAFE460](v20, -1, -1);
  }
}

uint64_t Database.ClientSettingsStore.__deallocating_deinit()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1BAAFC560(uint64_t a1)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v29 = *(a1 + 16);
  v5 = *(a1 + 17);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_13:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_14;
  }

  v2 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v2 + 4);
  sub_1BAAF0E90(&v34);
  if (!v1)
  {
    os_unfair_lock_unlock(v2 + 4);
    v7 = LOBYTE(v34);

    if (v7 == 1)
    {
      v28 = v5;
      v39 = 0;
      v40 = 0xE000000000000000;
      v8 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
      v41 = v8;
      MEMORY[0x1BFAFD200](63);
      MEMORY[0x1BFAFD240](0x204543414C504552, 0xED0000204F544E49);
      v9 = sub_1BABE7B0C();
      MEMORY[0x1BFAFD240](v9);

      MEMORY[0x1BFAFD240](0x202020200A2820, 0xE700000000000000);
      v10 = sub_1BABE7B0C();
      MEMORY[0x1BFAFD240](v10);

      MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
      v11 = sub_1BABE7B0C();
      MEMORY[0x1BFAFD240](v11);

      MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
      v12 = sub_1BABE7B0C();
      MEMORY[0x1BFAFD240](v12);

      MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF5800);
      v37 = MEMORY[0x1E69E6158];
      v38 = &protocol witness table for String;
      v34 = *&v4;
      v35 = v3;
      sub_1BAAE779C(&v34, &v30);

      SQLValue.init(_:)(&v30, v32);
      v13 = v32[0];
      v2 = v32[1];
      v14 = v33;
      v30 = 0x676E69646E696240;
      v31 = 0xE800000000000000;
      v42 = *(v8 + 16) + 1;
      v15 = sub_1BABE7EAC();
      MEMORY[0x1BFAFD240](v15);

      v16 = v30;
      v17 = v31;
      MEMORY[0x1BFAFD240](v30, v31);
      sub_1BAAE7800(v13, v2, v14);
      v18 = v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v18;
      sub_1BAAE5904(v13, v2, v14, v16, v17, isUniquelyReferenced_nonNull_native);

      sub_1BAAE7878(v13, v2, v14);
      v41 = v30;
      __swift_destroy_boxed_opaque_existential_1(&v34);
      MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
      v20 = MEMORY[0x1E69E63B0];
      if (v29)
      {
        v21 = 1.0;
      }

      else
      {
        v21 = 0.0;
      }

      v37 = MEMORY[0x1E69E63B0];
      v38 = &protocol witness table for Double;
      v34 = v21;
      v22 = __swift_project_boxed_opaque_existential_1(&v34, MEMORY[0x1E69E63B0]);
      sub_1BABA876C(v22, &v39, v20, &protocol witness table for Double);
      __swift_destroy_boxed_opaque_existential_1(&v34);
      MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
      if (v28)
      {
        v23 = 1.0;
      }

      else
      {
        v23 = 0.0;
      }

      v37 = v20;
      v38 = &protocol witness table for Double;
      v34 = v23;
      v24 = __swift_project_boxed_opaque_existential_1(&v34, v20);
      sub_1BABA876C(v24, &v39, v20, &protocol witness table for Double);
      __swift_destroy_boxed_opaque_existential_1(&v34);
      MEMORY[0x1BFAFD240](3877130, 0xE300000000000000);
      v26 = v39;
      v25 = v40;
      v27 = v41;
      if (swift_weakLoadStrong())
      {
        v34 = *&v27;
        v35 = v26;
        v36 = v25;
        SQLDatabase.perform(_:)(&v34);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    goto LABEL_13;
  }

LABEL_14:
  os_unfair_lock_unlock(v2 + 4);
  __break(1u);
}

void sub_1BAAFCA08(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v3 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v3 + 4);
  sub_1BAAF1130(&v24);
  if (v2)
  {
LABEL_10:
    os_unfair_lock_unlock(v3 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v3 + 4);
  v7 = v24;

  if (v7 != 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v29 = 0;
  v30 = 0xE000000000000000;
  v31 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](24);
  MEMORY[0x1BFAFD240](0x46204554454C4544, 0xEC000000204D4F52);
  v8 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v8);

  MEMORY[0x1BFAFD240](0x2045524548570ALL, 0xE700000000000000);
  v9 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v9);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v27 = MEMORY[0x1E69E6158];
  v28 = &protocol witness table for String;
  v24 = a1;
  v25 = a2;
  sub_1BAAE779C(&v24, &v20);

  SQLValue.init(_:)(&v20, v22);
  v10 = v22[0];
  v11 = v22[1];
  v12 = v23;
  v20 = 0x676E69646E696240;
  v21 = 0xE800000000000000;
  v13 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v13);

  v14 = v20;
  v3 = v21;
  MEMORY[0x1BFAFD240](v20, v21);
  sub_1BAAE7800(v10, v11, v12);
  v15 = v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v15;
  sub_1BAAE5904(v10, v11, v12, v14, v3, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v10, v11, v12);
  v31 = v20;
  __swift_destroy_boxed_opaque_existential_1(&v24);
  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v18 = v29;
  v17 = v30;
  v19 = v31;
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_10;
  }

  v24 = v19;
  v25 = v18;
  v26 = v17;
  SQLDatabase.perform(_:)(&v24);
}

uint64_t sub_1BAAFCD70(uint64_t a1)
{
  result = MEMORY[0x1E69E7CC8];
  v7 = MEMORY[0x1E69E7CC8];
  v4 = *(a1 + 16);
  if (v4)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v6 = *i;

      sub_1BAAFC2FC(&v7, &v6);
      if (v1)
      {
        break;
      }

      if (!--v4)
      {
        return v7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BAAFCF40()
{
  v11 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](40);
  MEMORY[0x1BFAFD240](0x200A5443454C4553, 0xEB00000000202020);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v3 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v3);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v4 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v4);

  MEMORY[0x1BFAFD240](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v5 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v5);

  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v10[0] = v11;
    v10[1] = 0;
    v11 = 0xE000000000000000;
    v8 = SQLDatabase.perform(_:)(v10);

    if (!v0)
    {
      v7 = sub_1BAAFEEEC(v8);
    }

    return v7;
  }

  else
  {
    result = sub_1BABE7C9C();
    __break(1u);
  }

  return result;
}

void sub_1BAAFD1BC(uint64_t *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v100 - v8;
  v10 = sub_1BABE6CFC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v108 = v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v100 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v109 = v100 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v110 = v100 - v19;
  v20 = *a2;
  v21 = sub_1BABE7B0C();
  v114 = v20;
  SQLResult.subscript.getter(v21, v22, &v111);

  v23 = v113;
  if (v113 != 255)
  {
    v106 = v11;
    v107 = v10;
    v25 = v111;
    v24 = v112;
    v105 = sub_1BAAF9770(v111, v112, v113);
    v27 = v26;
    sub_1BAAE8B8C(v25, v24, v23);
    if (v27)
    {
      v28 = sub_1BABE7B0C();
      v114 = v20;
      SQLResult.subscript.getter(v28, v29, &v111);

      v30 = v113;
      if (v113 != 255)
      {
        v102 = a1;
        v32 = v111;
        v31 = v112;
        v103 = sub_1BAAF9770(v111, v112, v113);
        v34 = v33;
        sub_1BAAE8B8C(v32, v31, v30);
        v104 = v34;
        if (v34)
        {
          v35 = sub_1BABE7B0C();
          v114 = v20;
          SQLResult.subscript.getter(v35, v36, &v111);

          v37 = v113;
          if (v113 == 255 || (v39 = v111, v38 = v112, v101 = sub_1BAAF9770(v111, v112, v113), v41 = v40, sub_1BAAE8B8C(v39, v38, v37), !v41))
          {
          }

          else
          {
            v42 = sub_1BABE7B0C();
            v114 = v20;
            SQLResult.subscript.getter(v42, v43, &v111);

            v44 = v113;
            if (v113 != 255)
            {
              v46 = v111;
              v45 = v112;
              v100[1] = sub_1BAAF9770(v111, v112, v113);
              v48 = v47;
              sub_1BAAE8B8C(v46, v45, v44);
              if (v48)
              {
                v100[0] = v48;
                sub_1BABE6C9C();
                v49 = v106;
                v50 = v107;
                v51 = *(v106 + 48);
                if (v51(v9, 1, v107) == 1)
                {

                  sub_1BAAFF124(v9);
                  if (qword_1EBC12270 != -1)
                  {
                    swift_once();
                  }

                  v52 = sub_1BABE72BC();
                  __swift_project_value_buffer(v52, qword_1EBC25018);
                  v53 = v104;

                  v54 = sub_1BABE729C();
                  v55 = sub_1BABE78EC();

                  if (os_log_type_enabled(v54, v55))
                  {
                    v56 = swift_slowAlloc();
                    v57 = swift_slowAlloc();
                    v111 = v57;
                    *v56 = 136446722;
                    v58 = sub_1BAAFA460(v105, v27, &v111);

                    *(v56 + 4) = v58;
                    *(v56 + 12) = 2082;
                    v59 = sub_1BAAFA460(v103, v53, &v111);

                    *(v56 + 14) = v59;
                    *(v56 + 22) = 2082;
                    v60 = sub_1BAAFA460(v101, v41, &v111);

                    *(v56 + 24) = v60;
                    _os_log_impl(&dword_1BAACF000, v54, v55, "Could not parse relationship ID: %{public}s; %{public}s; %{public}s", v56, 0x20u);
                    swift_arrayDestroy();
                    MEMORY[0x1BFAFE460](v57, -1, -1);
                    MEMORY[0x1BFAFE460](v56, -1, -1);
                  }

                  else
                  {
                  }
                }

                else
                {

                  v65 = *(v49 + 32);
                  v65(v110, v9, v50);
                  sub_1BABE6C9C();

                  if (v51(v7, 1, v50) == 1)
                  {
                    sub_1BAAFF124(v7);
                    v66 = v104;
                    if (qword_1EBC12270 != -1)
                    {
                      swift_once();
                    }

                    v67 = sub_1BABE72BC();
                    __swift_project_value_buffer(v67, qword_1EBC25018);
                    v69 = v106;
                    v68 = v107;
                    v70 = v108;
                    v71 = v110;
                    (*(v106 + 16))(v108, v110, v107);

                    v72 = sub_1BABE729C();
                    v73 = sub_1BABE78EC();

                    if (os_log_type_enabled(v72, v73))
                    {
                      v74 = v70;
                      v75 = swift_slowAlloc();
                      v76 = swift_slowAlloc();
                      v105 = v41;
                      v109 = v76;
                      v111 = v76;
                      *v75 = 136446722;
                      sub_1BAAFF18C();
                      v77 = sub_1BABE7EAC();
                      v79 = v78;
                      v80 = *(v69 + 8);
                      v80(v74, v68);
                      v81 = sub_1BAAFA460(v77, v79, &v111);

                      *(v75 + 4) = v81;
                      *(v75 + 12) = 2082;
                      v82 = sub_1BAAFA460(v103, v66, &v111);

                      *(v75 + 14) = v82;
                      *(v75 + 22) = 2082;
                      v83 = sub_1BAAFA460(v101, v105, &v111);

                      *(v75 + 24) = v83;
                      _os_log_impl(&dword_1BAACF000, v72, v73, "Could not parse zone version: %{public}s; %{public}s; %{public}s", v75, 0x20u);
                      v84 = v109;
                      swift_arrayDestroy();
                      MEMORY[0x1BFAFE460](v84, -1, -1);
                      MEMORY[0x1BFAFE460](v75, -1, -1);

                      v80(v110, v107);
                    }

                    else
                    {

                      v99 = *(v69 + 8);
                      v99(v70, v68);
                      v99(v71, v68);
                    }
                  }

                  else
                  {
                    v65(v109, v7, v50);
                    sub_1BABE71AC();
                    v85 = sub_1BABE719C();

                    v86 = v102;
                    v87 = *v102;
                    v88 = v110;
                    if (*(*v102 + 16) && (v89 = sub_1BAAD37E8(v110), (v90 & 1) != 0))
                    {
                      v91 = *(*(v87 + 56) + 8 * v89);
                    }

                    else
                    {
                      v91 = sub_1BAAE7E64(MEMORY[0x1E69E7CC0]);
                    }

                    v92 = v107;
                    v93 = v109;
                    v94 = v106;
                    (*(v106 + 16))(v16, v109, v107);

                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v111 = v91;
                    sub_1BAAE60EC(v16, v85, isUniquelyReferenced_nonNull_native);

                    v96 = v111;
                    v97 = swift_isUniquelyReferenced_nonNull_native();
                    v111 = *v86;
                    sub_1BAAE5F20(v96, v88, v97);

                    *v86 = v111;
                    v98 = *(v94 + 8);
                    v98(v93, v92);
                    v98(v88, v92);
                  }
                }

                return;
              }
            }
          }
        }
      }
    }
  }

  if (qword_1EBC12270 != -1)
  {
    swift_once();
  }

  v61 = sub_1BABE72BC();
  __swift_project_value_buffer(v61, qword_1EBC25018);
  v62 = sub_1BABE729C();
  v63 = sub_1BABE78EC();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_1BAACF000, v62, v63, "Encountered zone version", v64, 2u);
    MEMORY[0x1BFAFE460](v64, -1, -1);
  }
}

uint64_t Database.ZoneVersionStore.__deallocating_deinit()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1BAAFDC74()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v1 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v1 + 4);
  sub_1BAAF0E90(&v58);
  if (v0)
  {
LABEL_10:
    os_unfair_lock_unlock(v1 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v1 + 4);
  v3 = v58;

  if (v3 != 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v63 = 0;
  v64 = 0xE000000000000000;
  v4 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v65 = v4;
  MEMORY[0x1BFAFD200](75);
  MEMORY[0x1BFAFD240](0x204543414C504552, 0xED0000204F544E49);
  v5 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v5);

  MEMORY[0x1BFAFD240](0x202020200A2820, 0xE700000000000000);
  v6 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v7 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v7);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v8 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v8);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v9 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v9);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF5800);
  v10 = sub_1BABE6CAC();
  v61 = MEMORY[0x1E69E6158];
  v62 = &protocol witness table for String;
  v58 = v10;
  v59 = v11;
  sub_1BAAE779C(&v58, &v53);

  SQLValue.init(_:)(&v53, &v55);
  v13 = v55;
  v12 = v56;
  v14 = v57;
  v53 = 0x676E69646E696240;
  v54 = 0xE800000000000000;
  v66 = *(v4 + 16) + 1;
  v15 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v15);

  v16 = v53;
  v17 = v54;
  MEMORY[0x1BFAFD240](v53, v54);
  sub_1BAAE7800(v13, v12, v14);
  v18 = v65;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = v18;
  sub_1BAAE5904(v13, v12, v14, v16, v17, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v13, v12, v14);
  v20 = v53;
  v65 = v53;
  __swift_destroy_boxed_opaque_existential_1(&v58);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v21 = sub_1BABE717C();
  v61 = MEMORY[0x1E69E6158];
  v62 = &protocol witness table for String;
  v58 = v21;
  v59 = v22;
  sub_1BAAE779C(&v58, &v53);

  SQLValue.init(_:)(&v53, &v55);
  v23 = v55;
  v24 = v56;
  LOBYTE(v13) = v57;
  v53 = 0x676E69646E696240;
  v54 = 0xE800000000000000;
  v66 = *(v20 + 16) + 1;
  v25 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v25);

  v26 = v53;
  v27 = v54;
  MEMORY[0x1BFAFD240](v53, v54);
  sub_1BAAE7800(v23, v24, v13);
  v28 = v65;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v53 = v28;
  sub_1BAAE5904(v23, v24, v13, v26, v27, v29);

  sub_1BAAE7878(v23, v24, v13);
  v30 = v53;
  v65 = v53;
  __swift_destroy_boxed_opaque_existential_1(&v58);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v31 = sub_1BABE718C();
  v61 = MEMORY[0x1E69E6158];
  v62 = &protocol witness table for String;
  v58 = v31;
  v59 = v32;
  sub_1BAAE779C(&v58, &v53);

  SQLValue.init(_:)(&v53, &v55);
  v33 = v55;
  v34 = v56;
  LOBYTE(v13) = v57;
  v53 = 0x676E69646E696240;
  v54 = 0xE800000000000000;
  v66 = *(v30 + 16) + 1;
  v35 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v35);

  v36 = v53;
  v37 = v54;
  MEMORY[0x1BFAFD240](v53, v54);
  sub_1BAAE7800(v33, v34, v13);
  v38 = v65;
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v53 = v38;
  sub_1BAAE5904(v33, v34, v13, v36, v37, v39);

  sub_1BAAE7878(v33, v34, v13);
  v40 = v53;
  v65 = v53;
  __swift_destroy_boxed_opaque_existential_1(&v58);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v41 = sub_1BABE6CAC();
  v61 = MEMORY[0x1E69E6158];
  v62 = &protocol witness table for String;
  v58 = v41;
  v59 = v42;
  sub_1BAAE779C(&v58, &v53);

  SQLValue.init(_:)(&v53, &v55);
  v43 = v55;
  v44 = v56;
  v1 = v57;
  v53 = 0x676E69646E696240;
  v54 = 0xE800000000000000;
  v66 = *(v40 + 16) + 1;
  v45 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v45);

  v46 = v53;
  v47 = v54;
  MEMORY[0x1BFAFD240](v53, v54);
  sub_1BAAE7800(v43, v44, v1);
  v48 = v65;
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v53 = v48;
  sub_1BAAE5904(v43, v44, v1, v46, v47, v49);

  sub_1BAAE7878(v43, v44, v1);
  v65 = v53;
  __swift_destroy_boxed_opaque_existential_1(&v58);
  MEMORY[0x1BFAFD240](3877130, 0xE300000000000000);
  v50 = v63;
  v51 = v64;
  v52 = v65;
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_10;
  }

  v58 = v52;
  v59 = v50;
  v60 = v51;
  SQLDatabase.perform(_:)(&v58);
}

void sub_1BAAFE474()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v1 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v1 + 4);
  sub_1BAAF1130(&v23);
  if (v0)
  {
LABEL_10:
    os_unfair_lock_unlock(v1 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v1 + 4);
  v3 = v23;

  if (v3 != 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  v4 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v30 = v4;
  MEMORY[0x1BFAFD200](24);
  MEMORY[0x1BFAFD240](0x46204554454C4544, 0xEC000000204D4F52);
  v5 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v5);

  MEMORY[0x1BFAFD240](0x2045524548570ALL, 0xE700000000000000);
  v6 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v7 = sub_1BABE6CAC();
  v26 = MEMORY[0x1E69E6158];
  v27 = &protocol witness table for String;
  v23 = v7;
  v24 = v8;
  sub_1BAAE779C(&v23, &v19);

  SQLValue.init(_:)(&v19, v21);
  v9 = v21[0];
  v1 = v21[1];
  v10 = v22;
  v19 = 0x676E69646E696240;
  v20 = 0xE800000000000000;
  v31 = *(v4 + 16) + 1;
  v11 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v11);

  v12 = v19;
  v13 = v20;
  MEMORY[0x1BFAFD240](v19, v20);
  sub_1BAAE7800(v9, v1, v10);
  v14 = v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v14;
  sub_1BAAE5904(v9, v1, v10, v12, v13, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v9, v1, v10);
  v30 = v19;
  __swift_destroy_boxed_opaque_existential_1(&v23);
  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v17 = v28;
  v16 = v29;
  v18 = v30;
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_10;
  }

  v23 = v18;
  v24 = v17;
  v25 = v16;
  SQLDatabase.perform(_:)(&v23);
}

void sub_1BAAFE7F4()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v1 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v1 + 4);
  sub_1BAAF1130(&v36);
  if (v0)
  {
LABEL_10:
    os_unfair_lock_unlock(v1 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v1 + 4);
  v3 = v36;

  if (v3 != 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v41 = 0;
  v42 = 0xE000000000000000;
  v4 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v43 = v4;
  MEMORY[0x1BFAFD200](33);
  MEMORY[0x1BFAFD240](0x46204554454C4544, 0xEC000000204D4F52);
  v5 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v5);

  MEMORY[0x1BFAFD240](0x2045524548570ALL, 0xE700000000000000);
  v6 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v7 = sub_1BABE717C();
  v39 = MEMORY[0x1E69E6158];
  v40 = &protocol witness table for String;
  v36 = v7;
  v37 = v8;
  sub_1BAAE779C(&v36, &v31);

  SQLValue.init(_:)(&v31, &v33);
  v9 = v33;
  v10 = v34;
  v11 = v35;
  v31 = 0x676E69646E696240;
  v32 = 0xE800000000000000;
  v44 = *(v4 + 16) + 1;
  v1 = MEMORY[0x1E69E6590];
  v12 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v12);

  v13 = v31;
  v14 = v32;
  MEMORY[0x1BFAFD240](v31, v32);
  sub_1BAAE7800(v9, v10, v11);
  v15 = v43;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v15;
  sub_1BAAE5904(v9, v10, v11, v13, v14, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v9, v10, v11);
  v17 = v31;
  v43 = v31;
  __swift_destroy_boxed_opaque_existential_1(&v36);
  MEMORY[0x1BFAFD240](0x20444E410ALL, 0xE500000000000000);
  v18 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v18);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v19 = sub_1BABE718C();
  v39 = MEMORY[0x1E69E6158];
  v40 = &protocol witness table for String;
  v36 = v19;
  v37 = v20;
  sub_1BAAE779C(&v36, &v31);

  SQLValue.init(_:)(&v31, &v33);
  v21 = v33;
  v22 = v34;
  LOBYTE(v9) = v35;
  v31 = 0x676E69646E696240;
  v32 = 0xE800000000000000;
  v44 = *(v17 + 16) + 1;
  v23 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v23);

  v24 = v31;
  v25 = v32;
  MEMORY[0x1BFAFD240](v31, v32);
  sub_1BAAE7800(v21, v22, v9);
  v26 = v43;
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v31 = v26;
  sub_1BAAE5904(v21, v22, v9, v24, v25, v27);

  sub_1BAAE7878(v21, v22, v9);
  v43 = v31;
  __swift_destroy_boxed_opaque_existential_1(&v36);
  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v28 = v41;
  v29 = v42;
  v30 = v43;
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_10;
  }

  v36 = v30;
  v37 = v28;
  v38 = v29;
  SQLDatabase.perform(_:)(&v36);
}