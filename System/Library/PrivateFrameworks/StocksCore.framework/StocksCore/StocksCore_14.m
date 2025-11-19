unint64_t sub_1DAB8FF40()
{
  result = qword_1EE124CF0[0];
  if (!qword_1EE124CF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE124CF0);
  }

  return result;
}

unint64_t sub_1DAB8FF94()
{
  result = qword_1EE124AE0;
  if (!qword_1EE124AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124AE0);
  }

  return result;
}

uint64_t sub_1DAB8FFEC(void *a1)
{
  sub_1DAB92150(0, &qword_1EE123C08, MEMORY[0x1E69E6F58]);
  v68 = v3;
  v70 = *(v3 - 8);
  v4 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v43 - v5;
  v7 = v1[1];
  v67 = *v1;
  v8 = v1[2];
  v9 = v1[3];
  v11 = v1[4];
  v10 = v1[5];
  v12 = v1[6];
  v64 = v1[7];
  v65 = v12;
  v13 = v1[8];
  v62 = v1[9];
  v63 = v13;
  v14 = v1[10];
  v60 = v1[11];
  v61 = v14;
  v15 = v1[12];
  v58 = v1[13];
  v59 = v15;
  v16 = v1[15];
  v57 = v1[14];
  v56 = v16;
  v17 = v1[17];
  v55 = v1[16];
  v54 = v17;
  v18 = v1[19];
  v48 = v1[18];
  v49 = v18;
  v19 = v1[21];
  v50 = v1[20];
  v51 = v19;
  v20 = v1[23];
  v52 = v1[22];
  v53 = v20;
  v21 = v1[25];
  v44 = v1[24];
  v45 = v21;
  v22 = v1[27];
  v46 = v1[26];
  v47 = v22;
  v23 = v1[29];
  v43[15] = v1[28];
  v43[16] = v23;
  v24 = v1[31];
  v43[14] = v1[30];
  v25 = v1[33];
  v43[13] = v1[32];
  v43[12] = v25;
  v26 = v1[35];
  v43[10] = v1[34];
  v43[11] = v26;
  v27 = v1[37];
  v43[8] = v1[36];
  v43[9] = v27;
  v28 = v1[39];
  v43[6] = v1[38];
  v43[7] = v28;
  v29 = v1[41];
  v43[4] = v1[40];
  v43[5] = v29;
  v30 = v1[43];
  v43[2] = v1[42];
  v43[3] = v30;
  v31 = v1[45];
  v43[0] = v1[44];
  v43[1] = v31;
  v32 = a1[3];
  v66 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  v33 = v67;
  sub_1DAB921B4(v67, v7);
  sub_1DAB8FF40();
  sub_1DACBA304();
  v72 = v33;
  v73 = v7;
  v34 = v68;
  v74 = v8;
  v75 = v9;
  v35 = v6;
  v76 = v11;
  v77 = v10;
  v71 = 0;
  sub_1DAB92204();
  v36 = v69;
  sub_1DACBA074();
  if (v36)
  {
    sub_1DAA88788(v72, v73);
    return (*(v70 + 8))(v6, v34);
  }

  else
  {
    v38 = v55;
    v39 = v56;
    v41 = v57;
    v40 = v58;
    v42 = v59;
    sub_1DAA88788(v72, v73);
    v72 = v65;
    v73 = v64;
    v74 = v63;
    v75 = v62;
    v76 = v61;
    v77 = v60;
    v71 = 1;
    sub_1DAB921B4(v65, v64);
    sub_1DACBA074();
    sub_1DAA88788(v72, v73);
    v72 = v42;
    v73 = v40;
    v74 = v41;
    v75 = v39;
    v76 = v38;
    v77 = v54;
    v71 = 2;
    sub_1DAB921B4(v42, v40);
    sub_1DACBA074();
    sub_1DAA88788(v72, v73);
    v72 = v48;
    v73 = v49;
    v74 = v50;
    v75 = v51;
    v76 = v52;
    v77 = v53;
    v71 = 3;
    sub_1DAB921B4(v48, v49);
    sub_1DACBA074();
    sub_1DAA88788(v72, v73);
    v72 = v44;
    v73 = v45;
    v74 = v46;
    v75 = v47;
    v71 = 4;
    sub_1DAB92258(v44, v45);
    sub_1DAB9229C();
    sub_1DACBA074();
    sub_1DAB907E8(v72, v73);
    LOBYTE(v72) = 5;
    sub_1DACBA094();
    LOBYTE(v72) = 6;
    sub_1DACBA0C4();
    LOBYTE(v72) = 7;
    sub_1DACBA0B4();
    LOBYTE(v72) = 8;
    sub_1DACBA0C4();
    LOBYTE(v72) = 9;
    sub_1DACBA0C4();
    LOBYTE(v72) = 10;
    sub_1DACBA094();
    LOBYTE(v72) = 11;
    sub_1DACBA094();
    LOBYTE(v72) = 12;
    sub_1DACBA094();
    LOBYTE(v72) = 13;
    sub_1DACBA094();
    LOBYTE(v72) = 14;
    sub_1DACBA094();
    LOBYTE(v72) = 15;
    sub_1DACBA094();
    return (*(v70 + 8))(v35, v34);
  }
}

unint64_t sub_1DAB90794()
{
  result = qword_1EE124F78;
  if (!qword_1EE124F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124F78);
  }

  return result;
}

uint64_t sub_1DAB907E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1DAB9082C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v238 = *a1;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v228 = *(a1 + 48);
  v227 = *(a1 + 56);
  v229 = *(a1 + 64);
  v230 = *(a1 + 72);
  v232 = *(a1 + 80);
  v226 = *(a1 + 88);
  v222 = *(a1 + 96);
  v221 = *(a1 + 104);
  v217 = *(a1 + 120);
  v218 = *(a1 + 112);
  v219 = *(a1 + 128);
  v210 = *(a1 + 136);
  v207 = *(a1 + 144);
  v208 = *(a1 + 152);
  v205 = *(a1 + 168);
  v206 = *(a1 + 160);
  v204 = *(a1 + 176);
  v201 = *(a1 + 184);
  v8 = *(a1 + 192);
  v7 = *(a1 + 200);
  v10 = *(a1 + 208);
  v9 = *(a1 + 216);
  v11 = *(a1 + 248);
  v194 = *(a1 + 232);
  v195 = *(a1 + 224);
  v191 = *(a1 + 240);
  v189 = *(a1 + 256);
  v187 = *(a1 + 264);
  v181 = *(a1 + 272);
  v184 = *(a1 + 280);
  v12 = *(a1 + 288);
  v13 = *(a1 + 296);
  v14 = *(a1 + 304);
  v15 = *(a1 + 312);
  v16 = *(a1 + 320);
  v17 = *(a1 + 328);
  v18 = *(a1 + 336);
  v19 = *(a1 + 344);
  v20 = *(a1 + 352);
  v21 = *(a1 + 360);
  v22 = *(a2 + 248);
  v23 = *a2;
  v24 = *(a2 + 8);
  v25 = *(a2 + 16);
  v241 = *(a2 + 32);
  v239 = *(a2 + 24);
  v240 = *(a2 + 40);
  v234 = *(a2 + 48);
  v235 = *(a2 + 56);
  v231 = *(a2 + 64);
  v236 = *(a2 + 72);
  v225 = *(a2 + 80);
  v224 = *(a2 + 88);
  v220 = *(a2 + 96);
  v223 = *(a2 + 104);
  v214 = *(a2 + 120);
  v215 = *(a2 + 112);
  v211 = *(a2 + 128);
  v212 = *(a2 + 136);
  v233 = *(a2 + 144);
  v209 = *(a2 + 152);
  v213 = *(a2 + 168);
  v200 = *(a2 + 176);
  v202 = *(a2 + 184);
  v203 = *(a2 + 160);
  v198 = *(a2 + 200);
  v199 = *(a2 + 192);
  v196 = *(a2 + 208);
  v197 = *(a2 + 216);
  v192 = *(a2 + 232);
  v193 = *(a2 + 224);
  v190 = *(a2 + 240);
  v188 = *(a2 + 256);
  v185 = *(a2 + 264);
  v186 = *(a2 + 272);
  v183 = *(a2 + 280);
  v182 = *(a2 + 288);
  v180 = *(a2 + 296);
  v178 = *(a2 + 312);
  v179 = *(a2 + 304);
  v176 = *(a2 + 328);
  v177 = *(a2 + 320);
  v26 = *(a2 + 336);
  v27 = *(a2 + 344);
  v28 = *(a2 + 352);
  v29 = *(a2 + 360);
  v30 = v2;
  if (!v2)
  {
    v172 = v7;
    v173 = v8;
    v163 = *(a2 + 344);
    v164 = v13;
    v160 = v21;
    v161 = *(a2 + 336);
    v174 = v10;
    v175 = v9;
    v165 = v12;
    v166 = v15;
    v158 = *(a2 + 352);
    v159 = *(a2 + 360);
    v167 = v14;
    v168 = v17;
    v169 = v16;
    v170 = v19;
    v171 = v18;
    v162 = v20;
    v33 = v238;
    v34 = v5;
    sub_1DAB921B4(v238, 0);
    v40 = v24;
    if (!v24)
    {
      sub_1DAB921B4(v23, 0);
      v36 = 0;
      goto LABEL_18;
    }

    v41 = v23;
    v42 = v23;
    v43 = v239;
    v216 = v4;
    v237 = v40;
    v44 = v6;
    v45 = v241;
    sub_1DAB921B4(v42, v40);
    v46 = v240;
LABEL_15:
    v245 = v33;
    v246 = v30;
    v247 = v216;
    v248 = v3;
    v249 = v34;
    v250 = v44;
    v251 = v41;
    v252 = v237;
    v253 = v25;
    v254 = v43;
    v255 = v45;
    v256 = v46;
LABEL_76:
    sub_1DAB92554(&v245);
    return 0;
  }

  v31 = v9;
  v32 = v8;
  v33 = v238;
  v34 = v5;
  v237 = v24;
  if (!v24)
  {
    v47 = v4;
    v44 = v6;
    sub_1DAB921B4(v238, v30);
    v41 = v23;
    v48 = v23;
    v43 = v239;
    v45 = v241;
    sub_1DAB921B4(v48, 0);
    v216 = v47;
    sub_1DAB921B4(v238, v30);

    v46 = v240;
    goto LABEL_15;
  }

  v172 = v7;
  v173 = v32;
  v163 = v27;
  v164 = v13;
  v160 = v21;
  v161 = v26;
  v174 = v10;
  v175 = v31;
  v165 = v12;
  v166 = v15;
  v158 = v28;
  v159 = v29;
  v167 = v14;
  v168 = v17;
  v169 = v16;
  v170 = v19;
  v171 = v18;
  v162 = v20;
  v35 = v4;
  v36 = v30;
  if ((v238 != v23 || v30 != v24) && (v37 = v24, v38 = v35, v39 = sub_1DACBA174(), v35 = v38, v24 = v37, (v39 & 1) == 0) || (v35 != v25 || v3 != v239) && (sub_1DACBA174() & 1) == 0)
  {
    sub_1DAB921B4(v238, v36);
    sub_1DAB921B4(v23, v24);
    sub_1DAB921B4(v238, v36);
    sub_1DAA88788(v23, v237);

    v49 = v238;
    v50 = v36;
LABEL_78:
    sub_1DAA88788(v49, v50);
    return 0;
  }

  if (v34 == v241 && v6 == v240)
  {
    sub_1DAB921B4(v238, v36);
    sub_1DAB921B4(v23, v237);
    sub_1DAB921B4(v238, v36);
    sub_1DAA88788(v23, v237);

LABEL_18:
    sub_1DAA88788(v33, v36);
    v51 = v233;
    v52 = v230;
    v53 = v229;
    v54 = v228;
    v55 = v227;
    v57 = v235;
    v56 = v236;
    goto LABEL_19;
  }

  v157 = sub_1DACBA174();
  sub_1DAB921B4(v238, v36);
  sub_1DAB921B4(v23, v237);
  sub_1DAB921B4(v238, v36);
  sub_1DAA88788(v23, v237);

  sub_1DAA88788(v238, v36);
  v51 = v233;
  v52 = v230;
  v53 = v229;
  v54 = v228;
  v55 = v227;
  v57 = v235;
  v56 = v236;
  if ((v157 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  if (!v55)
  {
    v58 = v226;
    sub_1DAB921B4(v54, 0);
    if (!v57)
    {
      sub_1DAB921B4(v234, 0);
      v55 = 0;
      goto LABEL_38;
    }

    v59 = v234;
    v60 = v57;
    v61 = v231;
    v62 = v53;
    v63 = v57;
    v64 = v225;
    v65 = v224;
    sub_1DAB921B4(v234, v60);
    goto LABEL_35;
  }

  v58 = v226;
  if (!v57)
  {
    sub_1DAB921B4(v54, v55);
    v59 = v234;
    v61 = v231;
    v64 = v225;
    v65 = v224;
    sub_1DAB921B4(v234, 0);
    v62 = v53;
    v63 = v235;
    sub_1DAB921B4(v54, v55);

LABEL_35:
    v245 = v54;
    v246 = v55;
    v247 = v62;
    v248 = v52;
    v249 = v232;
    v250 = v58;
    v251 = v59;
    v252 = v63;
    v253 = v61;
    v254 = v236;
    v255 = v64;
    v256 = v65;
    goto LABEL_76;
  }

  if ((v54 != v234 || v55 != v57) && (sub_1DACBA174() & 1) == 0 || (v53 != v231 || v52 != v56) && (sub_1DACBA174() & 1) == 0)
  {
    sub_1DAB921B4(v54, v55);
    sub_1DAB921B4(v234, v57);
    sub_1DAB921B4(v54, v55);
    sub_1DAA88788(v234, v57);

    v49 = v54;
    v50 = v55;
    goto LABEL_78;
  }

  if (v232 == v225 && v226 == v224)
  {
    sub_1DAB921B4(v54, v55);
    sub_1DAB921B4(v234, v235);
    sub_1DAB921B4(v54, v55);
    sub_1DAA88788(v234, v235);

    v51 = v233;
LABEL_38:
    sub_1DAA88788(v54, v55);
    goto LABEL_39;
  }

  v242 = sub_1DACBA174();
  sub_1DAB921B4(v54, v55);
  sub_1DAB921B4(v234, v235);
  sub_1DAB921B4(v54, v55);
  sub_1DAA88788(v234, v235);

  sub_1DAA88788(v228, v55);
  v51 = v233;
  if ((v242 & 1) == 0)
  {
    return 0;
  }

LABEL_39:
  v66 = v221;
  if (!v221)
  {
    v67 = v210;
    sub_1DAB921B4(v222, 0);
    v68 = v213;
    if (!v223)
    {
      v72 = v203;
      sub_1DAB921B4(v220, 0);
      v71 = 0;
      v70 = v222;
      goto LABEL_58;
    }

    v74 = v214;
    v73 = v215;
    v75 = v211;
    v76 = v212;
    sub_1DAB921B4(v220, v223);
    v78 = v218;
    v77 = v219;
    v79 = v217;
    v80 = v222;
    v66 = 0;
    goto LABEL_55;
  }

  v67 = v210;
  v68 = v213;
  if (!v223)
  {
    v80 = v222;
    v79 = v217;
    v78 = v218;
    v77 = v219;
    sub_1DAB921B4(v222, v221);
    v74 = v214;
    v73 = v215;
    v75 = v211;
    v76 = v212;
    sub_1DAB921B4(v220, 0);
    sub_1DAB921B4(v222, v221);

LABEL_55:
    v245 = v80;
    v246 = v66;
    v247 = v78;
    v248 = v79;
    v249 = v77;
    v250 = v67;
    v251 = v220;
    v252 = v223;
    v253 = v73;
    v254 = v74;
    v255 = v75;
    v256 = v76;
    goto LABEL_76;
  }

  if ((v222 != v220 || v221 != v223) && (v66 = v221, v69 = v223, (sub_1DACBA174() & 1) == 0) || (v218 != v215 || v217 != v214) && (v66 = v221, v69 = v223, (sub_1DACBA174() & 1) == 0))
  {
    sub_1DAB921B4(v222, v66);
    sub_1DAB921B4(v220, v69);
    sub_1DAB921B4(v222, v66);
    sub_1DAA88788(v220, v223);

    v49 = v222;
    v50 = v66;
    goto LABEL_78;
  }

  if (v219 == v211 && v210 == v212)
  {
    v70 = v222;
    sub_1DAB921B4(v222, v221);
    sub_1DAB921B4(v220, v223);
    sub_1DAB921B4(v222, v221);
    sub_1DAA88788(v220, v223);

    v71 = v221;
    v51 = v233;
    v72 = v203;
LABEL_58:
    sub_1DAA88788(v70, v71);
    goto LABEL_59;
  }

  v243 = sub_1DACBA174();
  sub_1DAB921B4(v222, v66);
  sub_1DAB921B4(v220, v223);
  sub_1DAB921B4(v222, v66);
  v68 = v213;
  sub_1DAA88788(v220, v223);

  sub_1DAA88788(v222, v66);
  v51 = v233;
  v72 = v203;
  if ((v243 & 1) == 0)
  {
    return 0;
  }

LABEL_59:
  v81 = v208;
  if (!v208)
  {
    v82 = v201;
    sub_1DAB921B4(v207, 0);
    if (!v209)
    {
      sub_1DAB921B4(v51, 0);
      v90 = 0;
      v89 = v207;
      goto LABEL_82;
    }

    v91 = v200;
    v92 = v202;
    sub_1DAB921B4(v51, v209);
    v93 = v204;
    v94 = v205;
    v84 = v206;
    v95 = v207;
    v81 = 0;
    goto LABEL_75;
  }

  v82 = v201;
  v83 = v205;
  v84 = v206;
  v85 = v207;
  if (!v209)
  {
    v94 = v205;
    v93 = v204;
    v95 = v207;
    sub_1DAB921B4(v207, v208);
    v91 = v200;
    v92 = v202;
    sub_1DAB921B4(v51, 0);
    sub_1DAB921B4(v207, v208);

LABEL_75:
    v245 = v95;
    v246 = v81;
    v247 = v84;
    v248 = v94;
    v249 = v93;
    v250 = v82;
    v251 = v51;
    v252 = v209;
    v253 = v72;
    v254 = v213;
    v255 = v91;
    v256 = v92;
    goto LABEL_76;
  }

  if (v207 != v51 || v208 != v209)
  {
    v86 = sub_1DACBA174();
    v81 = v208;
    v87 = v209;
    v84 = v206;
    v85 = v207;
    v83 = v205;
    if ((v86 & 1) == 0)
    {
      goto LABEL_77;
    }
  }

  if (v84 != v72 || v83 != v68)
  {
    v88 = sub_1DACBA174();
    v81 = v208;
    v87 = v209;
    v85 = v207;
    if ((v88 & 1) == 0)
    {
LABEL_77:
      v96 = v85;
      sub_1DAB921B4(v85, v81);
      sub_1DAB921B4(v51, v87);
      sub_1DAB921B4(v96, v81);
      sub_1DAA88788(v51, v87);

      v49 = v207;
      v50 = v81;
      goto LABEL_78;
    }
  }

  if (v204 == v200 && v201 == v202)
  {
    v89 = v85;
    sub_1DAB921B4(v85, v208);
    sub_1DAB921B4(v51, v209);
    sub_1DAB921B4(v89, v208);
    sub_1DAA88788(v51, v209);

    v90 = v208;
LABEL_82:
    sub_1DAA88788(v89, v90);
    goto LABEL_83;
  }

  v109 = v85;
  v244 = sub_1DACBA174();
  sub_1DAB921B4(v109, v81);
  sub_1DAB921B4(v51, v209);
  sub_1DAB921B4(v109, v81);
  sub_1DAA88788(v233, v209);

  sub_1DAA88788(v109, v81);
  if ((v244 & 1) == 0)
  {
    return 0;
  }

LABEL_83:
  v98 = v172;
  if (!v172)
  {
    v106 = 0;
    sub_1DAB92258(v173, 0);
    v100 = v198;
    if (!v198)
    {
      sub_1DAB92258(v199, 0);
      v105 = 0;
      v103 = v173;
      goto LABEL_100;
    }

    v107 = v199;
    sub_1DAB92258(v199, v198);
    v108 = v173;
LABEL_96:
    sub_1DAB907E8(v108, v106);
    sub_1DAB907E8(v107, v100);
    return 0;
  }

  v99 = v173;
  v100 = v198;
  if (!v198)
  {
    v108 = v173;
    v106 = v172;
    sub_1DAB92258(v173, v172);
    v107 = v199;
    sub_1DAB92258(v199, 0);
    sub_1DAB92258(v173, v172);

    goto LABEL_96;
  }

  if (v173 != v199 || v172 != v198)
  {
    v101 = sub_1DACBA174();
    v98 = v172;
    v99 = v173;
    if ((v101 & 1) == 0)
    {
      sub_1DAB92258(v173, v172);
      sub_1DAB92258(v199, v198);
      sub_1DAB92258(v173, v172);
      sub_1DAB907E8(v199, v198);

      sub_1DAB907E8(v173, v172);
      return 0;
    }
  }

  if (v174 == v196 && v175 == v197)
  {
    v102 = v99;
    v103 = v99;
    v104 = v98;
    sub_1DAB92258(v102, v98);
    sub_1DAB92258(v199, v198);
    sub_1DAB92258(v103, v104);
    sub_1DAB907E8(v199, v198);

    v105 = v104;
LABEL_100:
    sub_1DAB907E8(v103, v105);
    goto LABEL_101;
  }

  v110 = v98;
  v111 = sub_1DACBA174();
  sub_1DAB92258(v99, v110);
  sub_1DAB92258(v199, v198);
  sub_1DAB92258(v99, v110);
  sub_1DAB907E8(v199, v198);

  sub_1DAB907E8(v99, v110);
  if ((v111 & 1) == 0)
  {
    return 0;
  }

LABEL_101:
  if (v195 == v193 && v194 == v192)
  {
    result = 0;
    if (v191 != v190)
    {
      return result;
    }

    v112 = v162;
    v113 = v163;
    v115 = v170;
    v114 = v171;
    v117 = v168;
    v116 = v169;
    v119 = v166;
    v118 = v167;
    v121 = v164;
    v120 = v165;
    if (v11 != v22)
    {
      return result;
    }
  }

  else
  {
    v122 = sub_1DACBA174();
    result = 0;
    if ((v122 & 1) == 0)
    {
      return result;
    }

    v115 = v170;
    v114 = v171;
    v117 = v168;
    v116 = v169;
    v119 = v166;
    v118 = v167;
    v121 = v164;
    v120 = v165;
    v113 = v163;
    if (v191 != v190)
    {
      return result;
    }

    v112 = v162;
    if (v11 != v22)
    {
      return result;
    }
  }

  if (v189 != v188 || v187 != v185)
  {
    return result;
  }

  if (v181 != v186 || v184 != v183)
  {
    v123 = v120;
    v124 = v121;
    v125 = v112;
    v126 = v114;
    v127 = v115;
    v128 = v116;
    v129 = v117;
    v130 = v118;
    v131 = v119;
    v132 = v113;
    v133 = sub_1DACBA174();
    v113 = v132;
    v121 = v124;
    v120 = v123;
    v119 = v131;
    v118 = v130;
    v117 = v129;
    v116 = v128;
    v115 = v127;
    v114 = v126;
    v112 = v125;
    if ((v133 & 1) == 0)
    {
      return 0;
    }
  }

  if (v120 != v182 || v121 != v180)
  {
    v134 = v112;
    v135 = v114;
    v136 = v115;
    v137 = v116;
    v138 = v117;
    v139 = v118;
    v140 = v119;
    v141 = v113;
    v142 = sub_1DACBA174();
    v113 = v141;
    v119 = v140;
    v118 = v139;
    v117 = v138;
    v116 = v137;
    v115 = v136;
    v114 = v135;
    v112 = v134;
    if ((v142 & 1) == 0)
    {
      return 0;
    }
  }

  if (v118 != v179 || v119 != v178)
  {
    v143 = v112;
    v144 = v114;
    v145 = v115;
    v146 = v116;
    v147 = v117;
    v148 = v113;
    v149 = sub_1DACBA174();
    v113 = v148;
    v117 = v147;
    v116 = v146;
    v115 = v145;
    v114 = v144;
    v112 = v143;
    if ((v149 & 1) == 0)
    {
      return 0;
    }
  }

  if (v116 != v177 || v117 != v176)
  {
    v150 = v112;
    v151 = v114;
    v152 = v115;
    v153 = v113;
    v154 = sub_1DACBA174();
    v113 = v153;
    v115 = v152;
    v114 = v151;
    v112 = v150;
    if ((v154 & 1) == 0)
    {
      return 0;
    }
  }

  if (v114 != v161 || v115 != v113)
  {
    v155 = v112;
    v156 = sub_1DACBA174();
    v112 = v155;
    if ((v156 & 1) == 0)
    {
      return 0;
    }
  }

  if (v112 == v158 && v160 == v159)
  {
    return 1;
  }

  return sub_1DACBA174();
}

void sub_1DAB92150(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAB8FF40();
    v7 = a3(a1, &type metadata for PaywallVisualSpec.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DAB921B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1DACB71E4();
    sub_1DACB71E4();

    return sub_1DACB71E4();
  }

  return result;
}

unint64_t sub_1DAB92204()
{
  result = qword_1EE124AE8;
  if (!qword_1EE124AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124AE8);
  }

  return result;
}

uint64_t sub_1DAB92258(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1DACB71E4();

    return sub_1DACB71E4();
  }

  return result;
}

unint64_t sub_1DAB9229C()
{
  result = qword_1EE124F80;
  if (!qword_1EE124F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124F80);
  }

  return result;
}

uint64_t sub_1DAB922F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 368))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 232);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAB92340(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 360) = 0;
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
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 368) = 1;
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
      *(result + 232) = (a2 - 1);
      return result;
    }

    *(result + 368) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAB92404()
{
  result = qword_1ECBE8150;
  if (!qword_1ECBE8150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8150);
  }

  return result;
}

unint64_t sub_1DAB9245C()
{
  result = qword_1EE124CE0;
  if (!qword_1EE124CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124CE0);
  }

  return result;
}

unint64_t sub_1DAB924B4()
{
  result = qword_1EE124CE8;
  if (!qword_1EE124CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124CE8);
  }

  return result;
}

uint64_t sub_1DAB92508()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DAB92554(uint64_t a1)
{
  sub_1DAB925B0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DAB925B0()
{
  if (!qword_1ECBE8158)
  {
    sub_1DAA61590(255, &qword_1EE121830, &type metadata for MultiResolutionImage, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECBE8158);
    }
  }
}

uint64_t sub_1DAB92638()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB92668()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB9269C()
{
  if (*v0)
  {
    result = 0x74754179786F7270;
  }

  else
  {
    result = 0x736F4879786F7270;
  }

  *v0;
  return result;
}

uint64_t sub_1DAB926E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736F4879786F7270 && a2 == 0xE900000000000074;
  if (v6 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74754179786F7270 && a2 == 0xEF6769666E6F436FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();

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

uint64_t sub_1DAB927D4(uint64_t a1)
{
  v2 = sub_1DAB92CBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB92810(uint64_t a1)
{
  v2 = sub_1DAB92CBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB9284C(void *a1)
{
  sub_1DAB92D10(0, &qword_1EE123BE8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v15[1] = v1[3];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB92CBC();
  sub_1DACBA304();
  v17 = 0;
  v13 = v15[3];
  sub_1DACBA024();
  if (!v13)
  {
    v16 = 1;
    sub_1DACBA024();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DAB929CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DAB92D10(0, &qword_1EE123CA0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB92CBC();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v12 = sub_1DACB9F34();
  v14 = v13;
  v20 = v12;
  v21 = 1;
  v15 = sub_1DACB9F34();
  v17 = v16;
  (*(v7 + 8))(v10, v6);
  *a2 = v20;
  a2[1] = v14;
  a2[2] = v15;
  a2[3] = v17;
  sub_1DACB71E4();
  sub_1DACB71E4();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DAB92C10(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (sub_1DACBA174() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1DAB92CBC()
{
  result = qword_1EE124810;
  if (!qword_1EE124810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124810);
  }

  return result;
}

void sub_1DAB92D10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAB92CBC();
    v7 = a3(a1, &type metadata for EmbedProxyConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DAB92D74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1DAB92DEC()
{
  result = qword_1ECBE8160;
  if (!qword_1ECBE8160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8160);
  }

  return result;
}

unint64_t sub_1DAB92E44()
{
  result = qword_1EE124800;
  if (!qword_1EE124800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124800);
  }

  return result;
}

unint64_t sub_1DAB92E9C()
{
  result = qword_1EE124808;
  if (!qword_1EE124808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124808);
  }

  return result;
}

uint64_t sub_1DAB92F2C()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7E44();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1DACB92E4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1DACB7904();
  __swift_allocate_value_buffer(v9, qword_1ECBE8168);
  __swift_project_value_buffer(v9, qword_1ECBE8168);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v4, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t sub_1DAB93144()
{
  sub_1DAB947A8(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1DACB78E4();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7E44();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1DACB92E4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1DACB7904();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = sub_1DACB7084();
  __swift_allocate_value_buffer(v15, qword_1ECBE8180);
  __swift_project_value_buffer(v15, qword_1ECBE8180);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v4 + 104))(v7, *MEMORY[0x1E6968DF0], v17[0]);
  sub_1DACB7914();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_1DACB7094();
}

uint64_t sub_1DAB93494()
{
  v0 = sub_1DACB7284();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E695A508]);
  sub_1DAB947A8(0, &qword_1ECBE8198, MEMORY[0x1E695A298], MEMORY[0x1E69E6F90]);
  v4 = sub_1DACB70E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DACC1D30;
  v9 = v8 + v7;
  v10 = *(v5 + 104);
  v10(v9, *MEMORY[0x1E695A280], v4);
  v10(v9 + v6, *MEMORY[0x1E695A288], v4);
  v10(v9 + 2 * v6, *MEMORY[0x1E695A278], v4);
  v10(v9 + 3 * v6, *MEMORY[0x1E695A290], v4);
  sub_1DAB955E0(0, &qword_1ECBE81A0, MEMORY[0x1E695A488]);
  sub_1DAB93D00();
  sub_1DAB93D54();
  return sub_1DACB7404();
}

uint64_t sub_1DAB93748()
{
  sub_1DAB955E0(0, &qword_1ECBE81A0, MEMORY[0x1E695A488]);
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v0);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  sub_1DAB93D00();
  sub_1DACB7224();
  v9 = sub_1DAB93D54();
  MEMORY[0x1E1274D80](v6, &type metadata for SymbolWidgetConfigurationIntent, v1, v9);
  v10 = *(v2 + 8);
  v10(v6, v1);
  MEMORY[0x1E1274D70](v8, &type metadata for SymbolWidgetConfigurationIntent, v1, v9);
  return (v10)(v8, v1);
}

uint64_t sub_1DAB938D0()
{
  swift_getKeyPath();
  sub_1DAB93D00();
  v0 = sub_1DACB71F4();

  swift_getKeyPath();
  sub_1DACB71F4();
  v1 = sub_1DACB71F4();

  sub_1DAB956A4(0, &qword_1EE11F490, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DACCB1F0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  sub_1DACB71F4();
  v3 = sub_1DACB71E4();

  return v3;
}

uint64_t sub_1DAB93A28@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  sub_1DAB955E0(0, &qword_1ECBE81D0, MEMORY[0x1E695A4A8]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1DAB955E0(0, &qword_1ECBE81D8, MEMORY[0x1E695A4A0]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DAB955E0(0, &qword_1ECBE81A0, MEMORY[0x1E695A488]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v17 - v12;
  sub_1DAB93D00();
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DAB95644();
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  sub_1DACB7204();
  v14 = sub_1DAB93D54();
  MEMORY[0x1E1274D80](v11, &type metadata for SymbolWidgetConfigurationIntent, v6, v14);
  v15 = *(v7 + 8);
  v15(v11, v6);
  MEMORY[0x1E1274D70](v13, &type metadata for SymbolWidgetConfigurationIntent, v6, v14);
  return (v15)(v13, v6);
}

unint64_t sub_1DAB93D00()
{
  result = qword_1EE11D890;
  if (!qword_1EE11D890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D890);
  }

  return result;
}

unint64_t sub_1DAB93D54()
{
  result = qword_1ECBE81A8;
  if (!qword_1ECBE81A8)
  {
    sub_1DAB955E0(255, &qword_1ECBE81A0, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE81A8);
  }

  return result;
}

uint64_t sub_1DAB93DEC(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[1];
  v11[0] = *a1;
  v11[1] = v2;
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  v11[2] = a1[2];
  v11[3] = v3;
  v7 = *a2;
  v6 = a2[1];
  v10[4] = v5;
  v10[5] = v4;
  v8 = a1[3];
  v10[6] = a1[2];
  v10[7] = v8;
  sub_1DAB95504(v11, v10);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
}

uint64_t sub_1DAB93E68(__int128 *a1)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v2 = *v1;
  return sub_1DACB6FC4();
}

uint64_t (*sub_1DAB93EA8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAB93F40(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = *a1;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
}

uint64_t sub_1DAB93F98(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_1DACB6FC4();
}

uint64_t (*sub_1DAB93FD0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_1DACB6FA4();
  return sub_1DAAD9D74;
}

uint64_t sub_1DAB94044@<X0>(uint64_t *a1@<X8>)
{
  v62 = a1;
  v61 = sub_1DACB7274();
  v63 = *(v61 - 8);
  v1 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v60 = v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1E69E6720];
  sub_1DAB947A8(0, &qword_1EE123AA0, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v59 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v57 = v44 - v8;
  sub_1DAB947A8(0, &qword_1EE123A80, MEMORY[0x1E6968E10], v3);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v58 = v44 - v11;
  v12 = sub_1DACB78E4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DACB7E44();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = sub_1DACB92E4();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = sub_1DACB7904();
  v54 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v44[1] = v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB9480C();
  v56 = v25;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v27 = *(v13 + 104);
  v45 = *MEMORY[0x1E6968DF0];
  v26 = v45;
  v46 = v12;
  v27(v16, v45, v12);
  v47 = v27;
  v48 = v13 + 104;
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v27(v16, v26, v12);
  v28 = v58;
  sub_1DACB7914();
  v29 = *(v22 + 56);
  v53 = v22 + 56;
  v55 = v29;
  v29(v28, 0, 1, v21);
  v30 = sub_1DACB6E84();
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v49 = v32;
  v50 = v31 + 56;
  v33 = v57;
  v32(v57, 1, 1, v30);
  v32(v59, 1, 1, v30);
  v51 = *MEMORY[0x1E695A500];
  v34 = *(v63 + 104);
  v63 += 104;
  v52 = v34;
  v34(v60);
  sub_1DAB823B8();
  v35 = v33;
  *v62 = sub_1DACB7014();
  sub_1DAB948C8();
  v56 = v36;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v37 = v45;
  v38 = v46;
  v39 = v47;
  v47(v16, v45, v46);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v39(v16, v37, v38);
  v40 = v58;
  sub_1DACB7914();
  v55(v40, 0, 1, v54);
  LOBYTE(v64) = 0;
  v41 = v35;
  v42 = v49;
  v49(v41, 1, 1, v30);
  v42(v59, 1, 1, v30);
  v52(v60, v51, v61);
  sub_1DAB950C4();
  result = sub_1DACB6FE4();
  v62[1] = result;
  return result;
}

void sub_1DAB947A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DAB9480C()
{
  if (!qword_1EE11F1A8)
  {
    sub_1DAB956A4(255, &qword_1EE11E6D8, &type metadata for SymbolWidgetEntity, MEMORY[0x1E69E6720]);
    sub_1DAB94984(&qword_1EE11E6D0, &qword_1EE11E6D8, &type metadata for SymbolWidgetEntity, sub_1DAADD25C);
    v0 = sub_1DACB7044();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F1A8);
    }
  }
}

void sub_1DAB948C8()
{
  if (!qword_1EE11F198)
  {
    sub_1DAB956A4(255, &qword_1EE11DF80, &type metadata for NewsDisplayConfiguration, MEMORY[0x1E69E6720]);
    sub_1DAB94984(&qword_1EE11DF78, &qword_1EE11DF80, &type metadata for NewsDisplayConfiguration, sub_1DAB94A10);
    v0 = sub_1DACB7044();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F198);
    }
  }
}

uint64_t sub_1DAB94984(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DAB956A4(255, a2, a3, MEMORY[0x1E69E6720]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAB94A10()
{
  result = qword_1EE120DE8;
  if (!qword_1EE120DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120DE8);
  }

  return result;
}

uint64_t sub_1DAB94A64(uint64_t a1)
{
  v2[36] = a1;
  v3 = *(*(type metadata accessor for SymbolEntity() - 8) + 64) + 15;
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[37] = v4;
  v2[38] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1DAB94AF8, 0, 0);
}

uint64_t sub_1DAB94AF8()
{
  v19 = v0;
  v1 = *(v0 + 304);
  sub_1DACB6FB4();
  v2 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v2;
  v3 = *(v0 + 128);
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 64) = v3;
  if (*(v0 + 16))
  {
    v4 = *(v0 + 288);
    v5 = *(v0 + 296);
    v13 = *(v0 + 16);
    v14 = *(v0 + 88);
    v15 = *(v0 + 104);
    v16 = *(v0 + 120);
    v17 = *(v0 + 136);
    v6 = *(v0 + 96);
    *(v0 + 144) = *(v0 + 80);
    *(v0 + 160) = v6;
    v7 = *(v0 + 128);
    *(v0 + 176) = *(v0 + 112);
    *(v0 + 192) = v7;
    sub_1DAB9516C(v0 + 144, v0 + 208);
    sub_1DAB9C4C0(&v13, v18);
    SymbolEntity.init(from:)(v18, v5);
    sub_1DAC45D08(v5, v18);
    *(v0 + 272) = v18[0];
    sub_1DAB951C8();
    sub_1DACB6E94();
    sub_1DAB9521C(v0 + 16);
    v8 = *(v0 + 272);
    v9 = *(v0 + 280);
  }

  else
  {
    v11 = *(v0 + 296);
    sub_1DAB95118();
    swift_allocError();
    swift_willThrow();
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1DAB94C90@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7904();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE8168);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAB94D38(uint64_t a1)
{
  v13[1] = a1;
  v1 = sub_1DACB7284();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  (*(v4 + 104))(v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E695A508]);
  sub_1DAB947A8(0, &qword_1ECBE8198, MEMORY[0x1E695A298], MEMORY[0x1E69E6F90]);
  v5 = sub_1DACB70E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DACC1D30;
  v10 = v9 + v8;
  v11 = *(v6 + 104);
  v11(v10, *MEMORY[0x1E695A280], v5);
  v11(v10 + v7, *MEMORY[0x1E695A288], v5);
  v11(v10 + 2 * v7, *MEMORY[0x1E695A278], v5);
  v11(v10 + 3 * v7, *MEMORY[0x1E695A290], v5);
  sub_1DAB955E0(0, &qword_1ECBE81A0, MEMORY[0x1E695A488]);
  sub_1DAB93D54();
  return sub_1DACB7404();
}

uint64_t sub_1DAB94FEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return sub_1DAB94A64(a1);
}

void sub_1DAB95088()
{
  sub_1DAB9558C();

  JUMPOUT(0x1E12747C0);
}

unint64_t sub_1DAB950C4()
{
  result = qword_1EE120DF8;
  if (!qword_1EE120DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120DF8);
  }

  return result;
}

unint64_t sub_1DAB95118()
{
  result = qword_1ECBE81B0;
  if (!qword_1ECBE81B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE81B0);
  }

  return result;
}

unint64_t sub_1DAB951C8()
{
  result = qword_1EE122A78;
  if (!qword_1EE122A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A78);
  }

  return result;
}

uint64_t sub_1DAB9521C(uint64_t a1)
{
  sub_1DAB956A4(0, &qword_1EE11E6D8, &type metadata for SymbolWidgetEntity, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAB952A0()
{
  result = qword_1EE11D888;
  if (!qword_1EE11D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D888);
  }

  return result;
}

unint64_t sub_1DAB952F8()
{
  result = qword_1EE11D898;
  if (!qword_1EE11D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D898);
  }

  return result;
}

uint64_t sub_1DAB953AC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DAB953F4()
{
  if (!qword_1ECBE81C0)
  {
    sub_1DAB955E0(255, &qword_1ECBE81A0, MEMORY[0x1E695A488]);
    sub_1DAB93D00();
    sub_1DAB93D54();
    v0 = sub_1DACB7424();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE81C0);
    }
  }
}

unint64_t sub_1DAB954B0()
{
  result = qword_1ECBE81C8;
  if (!qword_1ECBE81C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE81C8);
  }

  return result;
}

uint64_t sub_1DAB95504(uint64_t a1, uint64_t a2)
{
  sub_1DAB956A4(0, &qword_1EE11E6D8, &type metadata for SymbolWidgetEntity, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DAB9558C()
{
  result = qword_1EE11D8A0;
  if (!qword_1EE11D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D8A0);
  }

  return result;
}

void sub_1DAB955E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAB93D00();
    v7 = a3(a1, &type metadata for SymbolWidgetConfigurationIntent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1DAB95644()
{
  if (!qword_1ECBE81E0)
  {
    sub_1DAB9480C();
    v0 = sub_1DACBA314();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE81E0);
    }
  }
}

void sub_1DAB956A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_1DAB956F8()
{
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DACB7FE4();

  if (v8)
  {
    v0 = 2;
  }

  else
  {
    v0 = 1;
  }

  if (v8 - 2 >= 6)
  {
    v1 = v0;
  }

  else
  {
    v1 = 2;
  }

  v2 = objc_allocWithZone(MEMORY[0x1E695B8A0]);
  v3 = sub_1DACB92F4();

  v4 = [v2 initWithContainerIdentifier:v3 environment:v1];

  v5 = [objc_allocWithZone(MEMORY[0x1E695B8B0]) init];
  [v5 setUseZoneWidePCS_];
  v6 = [objc_allocWithZone(MEMORY[0x1E695B888]) initWithContainerID:v4 options:v5];

  return v6;
}

uint64_t sub_1DAB9588C()
{
  v0 = sub_1DACB7E44();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1DACB92E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = sub_1DACB9324();
  v12 = v11;
  sub_1DACB9284();
  (*(v3 + 16))(v7, v9, v2);
  if (qword_1EE123DD8 != -1)
  {
    swift_once();
  }

  v13 = qword_1EE13E470;
  sub_1DACB7DF4();
  v14 = sub_1DACB9384();
  v16 = v15;
  (*(v3 + 8))(v9, v2);
  return sub_1DAB95AA4(v10, v12, v14, v16, &qword_1ECBE81E8);
}

uint64_t sub_1DAB95AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v26 = a3;
  v27 = a4;
  v24 = a1;
  v25 = a2;
  v23 = a5;
  v5 = sub_1DACB78E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DACB7E44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1DACB92E4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = sub_1DACB7904();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1DAA8D904(0, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
  sub_1DACB9284();
  sub_1DACB7DF4();
  v16 = *MEMORY[0x1E6968DF0];
  v17 = *(v6 + 104);
  v22[1] = v6 + 104;
  v18 = v5;
  v17(v9, v16, v5);
  sub_1DACB7914();
  v19 = sub_1DACB6F34();
  v20 = v23;
  *v23 = v19;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v17(v9, v16, v18);
  sub_1DACB7914();
  v20[1] = sub_1DACB6F34();
  v28 = v24;
  v29 = v25;
  sub_1DACB6EE4();
  v28 = v26;
  v29 = v27;
  return sub_1DACB6EE4();
}

uint64_t sub_1DAB95DB4@<X0>(void *a1@<X8>)
{
  if (qword_1ECBE5B00 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_1ECBE81F0;
  *a1 = qword_1ECBE81E8;
  a1[1] = v1;
  sub_1DACB71F4();

  return sub_1DACB71F4();
}

uint64_t sub_1DAB95E34()
{
  v1 = *v0;
  sub_1DACB6ED4();
  return v3;
}

uint64_t sub_1DAB95E68(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6EE4();
}

uint64_t (*sub_1DAB95EF8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAAD9D74;
}

uint64_t sub_1DAB95F90()
{
  v1 = *(v0 + 8);
  sub_1DACB6ED4();
  return v3;
}

uint64_t sub_1DAB95FC4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6EE4();
}

uint64_t (*sub_1DAB96054(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAB960EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = a2;
  v3 = sub_1DACB78E4();
  v28 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7E44();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1DACB92E4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1DACB7904();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = a1[1];
  v33 = *a1;
  v15 = a1[3];
  v30 = a1[2];
  v31 = v14;
  v29 = v15;
  v16 = a1[4];
  v32 = *(a1 + 20);
  sub_1DAA8D904(0, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
  sub_1DACB9284();
  sub_1DACB7DF4();
  v17 = *MEMORY[0x1E6968DF0];
  v18 = v4 + 104;
  v19 = *(v4 + 104);
  v27 = v18;
  v19(v7, v17, v3);
  sub_1DACB7914();
  v20 = sub_1DACB6F34();
  v21 = v34;
  *v34 = v20;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v19(v7, v17, v28);
  sub_1DACB7914();
  v21[1] = sub_1DACB6F34();
  v22 = v29;
  v37 = v29;
  v38 = v16;
  sub_1DACB71E4();
  sub_1DACB6EE4();
  v37 = v33;
  v38 = v31;
  v39 = v30;
  v40 = v22;
  v41 = v16;
  v42 = v32;
  v23 = sub_1DAA6BA64();
  v25 = v24;

  v35 = v23;
  v36 = v25;
  return sub_1DACB6EE4();
}

uint64_t sub_1DAB9645C@<X0>(void *a1@<X8>)
{
  if (qword_1EE11E468 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EE11E470;

  return sub_1DACB71F4();
}

uint64_t sub_1DAB964CC@<X0>(void *a1@<X8>)
{
  if (qword_1EE11E468 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EE11E470;

  return sub_1DACB71F4();
}

uint64_t sub_1DAB9653C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1DACB6ED4();
  *a1 = v5;
  a1[1] = v6;
  return result;
}

uint64_t sub_1DAB96578@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5B10 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7354();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE81F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAB96620@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5B10 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7354();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE81F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAB966C8(uint64_t a1)
{
  v2 = sub_1DAB972AC();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1DAB96718()
{
  v1 = MEMORY[0x1E69E6720];
  sub_1DAA8E498(0, &qword_1EE11F170, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  sub_1DAA8E498(0, &qword_1EE123A80, MEMORY[0x1E6968E10], v1);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1DACB7904();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = sub_1DACB92C4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = *(v0 + 8);
  sub_1DACB92B4();
  sub_1DACB92A4();
  sub_1DACB6ED4();
  sub_1DACB9294();

  sub_1DACB92A4();
  sub_1DACB78F4();
  (*(v11 + 56))(v9, 1, 1, v10);
  v16 = sub_1DACB7164();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  return sub_1DACB7174();
}

uint64_t sub_1DAB969C4(uint64_t a1)
{
  v2 = sub_1DAB9715C();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t sub_1DAB96A10()
{
  sub_1DAA8E498(0, &qword_1EE123AB0, sub_1DAADA3B0, MEMORY[0x1E6959D18]);
  sub_1DACB6D94();
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  qword_1EE11E470 = result;
  return result;
}

uint64_t sub_1DAB96AA4()
{
  v22 = MEMORY[0x1E6968E10];
  sub_1DAA8E498(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v21 = &v20 - v2;
  v3 = sub_1DACB78E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7E44();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1DACB92E4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1DACB7904();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = sub_1DACB7354();
  __swift_allocate_value_buffer(v15, qword_1ECBE81F8);
  __swift_project_value_buffer(v15, qword_1ECBE81F8);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v4 + 104))(v7, *MEMORY[0x1E6968DF0], v3);
  sub_1DACB7914();
  v16 = *(v13 + 56);
  v13 += 56;
  v16(v21, 1, 1, v12);
  sub_1DAA8E498(0, &qword_1ECBE6D78, v22, MEMORY[0x1E69E6F90]);
  v17 = *(v13 + 16);
  v18 = (*(v13 + 24) + 32) & ~*(v13 + 24);
  *(swift_allocObject() + 16) = xmmword_1DACC4A00;
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  return sub_1DACB7334();
}

unint64_t sub_1DAB96EFC()
{
  result = qword_1EE11E458;
  if (!qword_1EE11E458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E458);
  }

  return result;
}

unint64_t sub_1DAB96F54()
{
  result = qword_1EE11E440;
  if (!qword_1EE11E440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E440);
  }

  return result;
}

unint64_t sub_1DAB96FAC()
{
  result = qword_1EE11E418;
  if (!qword_1EE11E418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E418);
  }

  return result;
}

unint64_t sub_1DAB97004()
{
  result = qword_1EE11E5D8;
  if (!qword_1EE11E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E5D8);
  }

  return result;
}

unint64_t sub_1DAB9705C()
{
  result = qword_1EE11E438;
  if (!qword_1EE11E438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E438);
  }

  return result;
}

unint64_t sub_1DAB970B0()
{
  result = qword_1EE11E430;
  if (!qword_1EE11E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E430);
  }

  return result;
}

unint64_t sub_1DAB97104()
{
  result = qword_1EE11E448;
  if (!qword_1EE11E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E448);
  }

  return result;
}

unint64_t sub_1DAB9715C()
{
  result = qword_1EE11E428;
  if (!qword_1EE11E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E428);
  }

  return result;
}

unint64_t sub_1DAB971B4()
{
  result = qword_1EE11F148;
  if (!qword_1EE11F148)
  {
    sub_1DAA8D904(255, &qword_1EE11F140, sub_1DAB97104, &type metadata for WatchlistWidgetEntity, MEMORY[0x1E695A570]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F148);
  }

  return result;
}

unint64_t sub_1DAB97248()
{
  result = qword_1EE11E420;
  if (!qword_1EE11E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E420);
  }

  return result;
}

unint64_t sub_1DAB972AC()
{
  result = qword_1EE11E450;
  if (!qword_1EE11E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E450);
  }

  return result;
}

uint64_t sub_1DAB97328()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7E44();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1DACB92E4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1DACB7904();
  __swift_allocate_value_buffer(v9, qword_1ECBE8210);
  __swift_project_value_buffer(v9, qword_1ECBE8210);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v4, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t sub_1DAB97548()
{
  sub_1DAB9A5F4(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1DACB78E4();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7E44();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1DACB92E4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1DACB7904();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = sub_1DACB7084();
  __swift_allocate_value_buffer(v15, qword_1ECBE8228);
  __swift_project_value_buffer(v15, qword_1ECBE8228);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v4 + 104))(v7, *MEMORY[0x1E6968DF0], v17[0]);
  sub_1DACB7914();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_1DACB7094();
}

uint64_t sub_1DAB97898()
{
  v0 = sub_1DACB7284();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E695A508]);
  sub_1DAB9A5F4(0, &qword_1ECBE8198, MEMORY[0x1E695A298], MEMORY[0x1E69E6F90]);
  v4 = sub_1DACB70E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DACC1D40;
  v9 = v8 + v7;
  v10 = *(v5 + 104);
  v10(v9, *MEMORY[0x1E695A288], v4);
  v10(v9 + v6, *MEMORY[0x1E695A278], v4);
  sub_1DAB9A9D4(0, &qword_1ECBE8240, sub_1DAB980E8, &type metadata for WatchlistWidgetConfigurationIntent, MEMORY[0x1E695A488]);
  sub_1DAB9813C();
  sub_1DAB980E8();
  sub_1DAB981FC();
  sub_1DAB9828C(&qword_1ECBE8258, sub_1DAB9813C);
  return sub_1DACB7404();
}

uint64_t sub_1DAB97B74()
{
  swift_getKeyPath();
  sub_1DAB980E8();
  v0 = sub_1DACB71F4();

  swift_getKeyPath();
  sub_1DACB71F4();
  v1 = sub_1DACB71F4();

  swift_getKeyPath();
  sub_1DACB71F4();
  v2 = sub_1DACB71F4();

  swift_getKeyPath();
  sub_1DACB71F4();
  v3 = sub_1DACB71F4();

  sub_1DAB9AA9C(0, &qword_1EE11F490, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DACCC700;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  sub_1DACB71F4();
  v5 = sub_1DACB71E4();

  return v5;
}

uint64_t sub_1DAB97D90@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v1 = sub_1DACB70E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7384();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB9813C();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v23 - v18;
  (*(v7 + 104))(v10, *MEMORY[0x1E695A5A8], v6);
  (*(v2 + 104))(v5, *MEMORY[0x1E695A280], v1);
  sub_1DAB9A9D4(0, &qword_1ECBE8240, sub_1DAB980E8, &type metadata for WatchlistWidgetConfigurationIntent, MEMORY[0x1E695A488]);
  sub_1DAB980E8();
  sub_1DAB981FC();
  sub_1DACB7414();
  v20 = sub_1DAB9828C(&qword_1ECBE8258, sub_1DAB9813C);
  MEMORY[0x1E1274D80](v17, &type metadata for WatchlistWidgetConfigurationIntent, v12, v20);
  v21 = *(v13 + 8);
  v21(v17, v12);
  MEMORY[0x1E1274D70](v19, &type metadata for WatchlistWidgetConfigurationIntent, v12, v20);
  return (v21)(v19, v12);
}

unint64_t sub_1DAB980E8()
{
  result = qword_1EE11D7C8;
  if (!qword_1EE11D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D7C8);
  }

  return result;
}

void sub_1DAB9813C()
{
  if (!qword_1ECBE8248)
  {
    sub_1DAB9A9D4(255, &qword_1ECBE8240, sub_1DAB980E8, &type metadata for WatchlistWidgetConfigurationIntent, MEMORY[0x1E695A488]);
    sub_1DAB980E8();
    sub_1DAB981FC();
    v0 = sub_1DACB7424();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE8248);
    }
  }
}

unint64_t sub_1DAB981FC()
{
  result = qword_1ECBE8250;
  if (!qword_1ECBE8250)
  {
    sub_1DAB9A9D4(255, &qword_1ECBE8240, sub_1DAB980E8, &type metadata for WatchlistWidgetConfigurationIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8250);
  }

  return result;
}

uint64_t sub_1DAB9828C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAB982EC()
{
  sub_1DAB9A9D4(0, &qword_1ECBE8240, sub_1DAB980E8, &type metadata for WatchlistWidgetConfigurationIntent, MEMORY[0x1E695A488]);
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v0);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  sub_1DAB980E8();
  sub_1DACB7224();
  v9 = sub_1DAB981FC();
  MEMORY[0x1E1274D80](v6, &type metadata for WatchlistWidgetConfigurationIntent, v1, v9);
  v10 = *(v2 + 8);
  v10(v6, v1);
  MEMORY[0x1E1274D70](v8, &type metadata for WatchlistWidgetConfigurationIntent, v1, v9);
  return (v10)(v8, v1);
}

uint64_t sub_1DAB98480()
{
  swift_getKeyPath();
  sub_1DAB980E8();
  v0 = sub_1DACB71F4();

  swift_getKeyPath();
  sub_1DACB71F4();
  v1 = sub_1DACB71F4();

  swift_getKeyPath();
  sub_1DACB71F4();
  v2 = sub_1DACB71F4();

  sub_1DAB9AA9C(0, &qword_1EE11F490, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DACCC710;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  sub_1DACB71F4();
  v4 = sub_1DACB71E4();

  return v4;
}

uint64_t sub_1DAB985D4@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  sub_1DAB9A9D4(0, &qword_1ECBE8270, sub_1DAB980E8, &type metadata for WatchlistWidgetConfigurationIntent, MEMORY[0x1E695A4A8]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1DAB9A9D4(0, &qword_1ECBE8278, sub_1DAB980E8, &type metadata for WatchlistWidgetConfigurationIntent, MEMORY[0x1E695A4A0]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DAB9A9D4(0, &qword_1ECBE8240, sub_1DAB980E8, &type metadata for WatchlistWidgetConfigurationIntent, MEMORY[0x1E695A488]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v17 - v12;
  sub_1DAB980E8();
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DAB9AA3C();
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  sub_1DACB7204();
  v14 = sub_1DAB981FC();
  MEMORY[0x1E1274D80](v11, &type metadata for WatchlistWidgetConfigurationIntent, v6, v14);
  v15 = *(v7 + 8);
  v15(v11, v6);
  MEMORY[0x1E1274D70](v13, &type metadata for WatchlistWidgetConfigurationIntent, v6, v14);
  return (v15)(v13, v6);
}

uint64_t sub_1DAB988F4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = a1[1];
  sub_1DAB9A940(*a1);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
}

uint64_t sub_1DAB98984(__int128 *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_1DACB6FC4();
}

uint64_t (*sub_1DAB989BC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAB98A54(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = *a1;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
}

uint64_t sub_1DAB98AD8(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_1DACB6FC4();
}

uint64_t (*sub_1DAB98B10(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_1DACB6FA4();
  return sub_1DAAD9D74;
}

uint64_t sub_1DAB98B84()
{
  v1 = *(v0 + 16);
  sub_1DACB6FB4();
  return v3;
}

uint64_t sub_1DAB98BB8(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = *a1;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
}

uint64_t (*sub_1DAB98C70(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAB98CE4()
{
  v1 = *(v0 + 24);
  sub_1DACB6FB4();
  return v3;
}

uint64_t sub_1DAB98D18(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = *a1;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
}

uint64_t (*sub_1DAB98DD0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAB98E44@<X0>(uint64_t *a1@<X8>)
{
  v76 = a1;
  v1 = MEMORY[0x1E69E6720];
  sub_1DAB9A5F4(0, &qword_1EE11D138, MEMORY[0x1E695A810], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v62 = &v55 - v4;
  v75 = sub_1DACB7274();
  v77 = *(v75 - 8);
  v5 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB9A5F4(0, &qword_1EE123AA0, MEMORY[0x1E6959F70], v1);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v60 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v55 - v11;
  sub_1DAB9A5F4(0, &qword_1EE123A80, MEMORY[0x1E6968E10], v1);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v59 = &v55 - v14;
  v15 = sub_1DACB78E4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DACB7E44();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = sub_1DACB92E4();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = sub_1DACB7904();
  v66 = v24;
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB999B0();
  v56 = v28;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v30 = *(v16 + 104);
  v58 = *MEMORY[0x1E6968DF0];
  v29 = v58;
  v64 = v15;
  v30(v19, v58, v15);
  v63 = v30;
  v65 = v16 + 104;
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v30(v19, v29, v15);
  v31 = v59;
  sub_1DACB7914();
  v68 = *(v25 + 56);
  v73 = v25 + 56;
  v68(v31, 0, 1, v24);
  v32 = sub_1DACB6E84();
  v78 = 0;
  v79 = 0;
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v69 = v34;
  v70 = v33 + 56;
  v34(v67, 1, 1, v32);
  v34(v60, 1, 1, v32);
  v72 = *MEMORY[0x1E695A500];
  v71 = *(v77 + 104);
  v77 += 104;
  v71(v74);
  sub_1DAB972AC();
  *v76 = sub_1DACB7014();
  sub_1DAB948C8();
  v56 = v35;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v36 = v58;
  v38 = v63;
  v37 = v64;
  v63(v19, v58, v64);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v38(v19, v36, v37);
  sub_1DACB7914();
  v68(v31, 0, 1, v66);
  LOBYTE(v78) = 0;
  v39 = v67;
  v61 = v32;
  v40 = v69;
  v69(v67, 1, 1, v32);
  v40(v60, 1, 1, v32);
  (v71)(v74, v72, v75);
  sub_1DAB950C4();
  v41 = v39;
  v76[1] = sub_1DACB6FE4();
  sub_1DAB9A4E4();
  v60 = v42;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v43 = v58;
  v45 = v63;
  v44 = v64;
  v63(v19, v58, v64);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v46 = v43;
  v45(v19, v43, v44);
  v47 = v59;
  sub_1DACB7914();
  v68(v47, 0, 1, v66);
  LOBYTE(v78) = 0;
  v48 = sub_1DACB9734();
  v49 = *(v48 - 8);
  v55 = *(v49 + 56);
  v56 = v49 + 56;
  v55(v62, 1, 1, v48);
  v69(v41, 1, 1, v61);
  (v71)(v74, v72, v75);
  v76[2] = sub_1DACB7034();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v50 = v46;
  v51 = v46;
  v52 = v64;
  v53 = v63;
  v63(v19, v51, v64);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v53(v19, v50, v52);
  sub_1DACB7914();
  v68(v47, 0, 1, v66);
  LOBYTE(v78) = 0;
  v55(v62, 1, 1, v48);
  v69(v67, 1, 1, v61);
  (v71)(v74, v72, v75);
  result = sub_1DACB7034();
  v76[3] = result;
  return result;
}

void sub_1DAB999B0()
{
  if (!qword_1EE11F1A0)
  {
    sub_1DAB9AA9C(255, &qword_1EE11E410, &type metadata for WatchlistWidgetEntity, MEMORY[0x1E69E6720]);
    sub_1DAB99A6C(&qword_1EE11E408, &qword_1EE11E410, &type metadata for WatchlistWidgetEntity, sub_1DAB97104);
    v0 = sub_1DACB7044();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F1A0);
    }
  }
}

uint64_t sub_1DAB99A6C(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DAB9AA9C(255, a2, a3, MEMORY[0x1E69E6720]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAB99AF8(uint64_t a1)
{
  v2[7] = a1;
  sub_1DAB9A5F4(0, qword_1EE11EF28, type metadata accessor for SymbolEntity, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v6 = *v1;
  v2[8] = v5;
  v2[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1DAB99BBC, 0, 0);
}

uint64_t sub_1DAB99BBC()
{
  v19 = v0;
  v1 = *(v0 + 72);
  sub_1DACB6FB4();
  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = *(v0 + 48);
  }

  else
  {
    if (qword_1ECBE5B00 != -1)
    {
      swift_once();
    }

    v2 = qword_1ECBE81E8;
    v3 = unk_1ECBE81F0;
    sub_1DACB71F4();
    sub_1DACB71F4();
  }

  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v17 = v2;
  *&v18 = v3;
  sub_1DAB99D58(&v17, &v15);
  v17 = v15;
  v18 = v16;
  v6 = type metadata accessor for SymbolEntity();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_1DAAF42EC(&v17, v4, &v13);
  v7 = v14;
  *(v0 + 16) = v13;
  *(v0 + 32) = v7;
  sub_1DAAF3184();
  sub_1DACB6E94();
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1DAB99D58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1DACB78E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DACB7E44();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = sub_1DACB92E4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = sub_1DACB7904();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = *a1;
  v16 = a1[1];
  sub_1DACB6ED4();
  v23 = v26;
  v24 = v25;
  sub_1DACB6ED4();

  v17 = v25;
  v18 = v26;
  sub_1DAB9A9D4(0, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v5 + 104))(v8, *MEMORY[0x1E6968DF0], v4);
  sub_1DACB7914();
  v19 = sub_1DACB6F34();
  v25 = v17;
  v26 = v18;
  result = sub_1DACB6EE4();
  v21 = v23;
  *a2 = v24;
  a2[1] = v21;
  a2[2] = v19;
  return result;
}

uint64_t sub_1DAB99FF4()
{
  v1 = *(v0 + 16);
  sub_1DACB6FB4();
  return v3;
}

uint64_t sub_1DAB9A028()
{
  v1 = *(v0 + 24);
  sub_1DACB6FB4();
  return v3;
}

uint64_t sub_1DAB9A09C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5B18 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7904();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE8210);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAB9A144()
{
  v0 = sub_1DACB7284();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E695A508]);
  sub_1DAB9A5F4(0, &qword_1ECBE8198, MEMORY[0x1E695A298], MEMORY[0x1E69E6F90]);
  v4 = sub_1DACB70E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DACC1D40;
  v9 = v8 + v7;
  v10 = *(v5 + 104);
  v10(v9, *MEMORY[0x1E695A288], v4);
  v10(v9 + v6, *MEMORY[0x1E695A278], v4);
  sub_1DAB9A9D4(0, &qword_1ECBE8240, sub_1DAB980E8, &type metadata for WatchlistWidgetConfigurationIntent, MEMORY[0x1E695A488]);
  sub_1DAB9813C();
  sub_1DAB981FC();
  sub_1DAB9828C(&qword_1ECBE8258, sub_1DAB9813C);
  return sub_1DACB7404();
}

uint64_t sub_1DAB9A40C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return sub_1DAB99AF8(a1);
}

void sub_1DAB9A4A8()
{
  sub_1DAB9A980();

  JUMPOUT(0x1E12747C0);
}

void sub_1DAB9A4E4()
{
  if (!qword_1EE11F190)
  {
    v0 = MEMORY[0x1E69E6370];
    sub_1DAB9AA9C(255, &qword_1EE11D130, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    sub_1DAB99A6C(&qword_1EE11D128, &qword_1EE11D130, v0, sub_1DAB9A5A0);
    v1 = sub_1DACB7044();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11F190);
    }
  }
}

unint64_t sub_1DAB9A5A0()
{
  result = qword_1EE11D250;
  if (!qword_1EE11D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D250);
  }

  return result;
}

void sub_1DAB9A5F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1DAB9A658(uint64_t a1)
{
  result = sub_1DAB9A680();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DAB9A680()
{
  result = qword_1EE11D7D0;
  if (!qword_1EE11D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D7D0);
  }

  return result;
}

unint64_t sub_1DAB9A6D8()
{
  result = qword_1EE11D7C0;
  if (!qword_1EE11D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D7C0);
  }

  return result;
}

unint64_t sub_1DAB9A730()
{
  result = qword_1EE11D7D8;
  if (!qword_1EE11D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D7D8);
  }

  return result;
}

void sub_1DAB9A834()
{
  if (!qword_1ECBE8268)
  {
    sub_1DAB9A9D4(255, &qword_1ECBE8240, sub_1DAB980E8, &type metadata for WatchlistWidgetConfigurationIntent, MEMORY[0x1E695A488]);
    sub_1DAB9813C();
    sub_1DAB980E8();
    sub_1DAB981FC();
    sub_1DAB9828C(&qword_1ECBE8258, sub_1DAB9813C);
    v0 = sub_1DACB7424();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE8268);
    }
  }
}

uint64_t sub_1DAB9A940(uint64_t result)
{
  if (result)
  {
    sub_1DACB71F4();

    return sub_1DACB71F4();
  }

  return result;
}

unint64_t sub_1DAB9A980()
{
  result = qword_1EE11D7E0;
  if (!qword_1EE11D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D7E0);
  }

  return result;
}

void sub_1DAB9A9D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1DAB9AA3C()
{
  if (!qword_1ECBE8280)
  {
    sub_1DAB999B0();
    v0 = sub_1DACBA314();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE8280);
    }
  }
}

void sub_1DAB9AA9C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1DAB9AAF0()
{
  sub_1DAA8E560(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1DACB78E4();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7E44();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1DACB92E4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1DACB7904();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = sub_1DACB7354();
  __swift_allocate_value_buffer(v15, qword_1ECBE8288);
  __swift_project_value_buffer(v15, qword_1ECBE8288);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v4 + 104))(v7, *MEMORY[0x1E6968DF0], v17[0]);
  sub_1DACB7914();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_1DACB7344();
}

uint64_t sub_1DAB9ADF4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5B28 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7354();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE8288);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAB9AE9C()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1DAA8E560(0, &qword_1EE11F170, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v56 = &v39 - v3;
  sub_1DAA8E560(0, &qword_1EE123A80, MEMORY[0x1E6968E10], v0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v42 = &v39 - v6;
  v40 = sub_1DACB78E4();
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DACB7E44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1DACB92E4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v55 = sub_1DACB7904();
  v14 = *(v55 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v55);
  sub_1DAA8E560(0, &qword_1ECBE82B8, sub_1DAB9BF68, MEMORY[0x1E69E6F90]);
  sub_1DAB9BF68();
  v17 = v16;
  v46 = v16;
  v18 = *(*(v16 - 8) + 72);
  v19 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
  v44 = 2 * v18;
  v20 = swift_allocObject();
  v45 = v20;
  *(v20 + 16) = xmmword_1DACC2610;
  v21 = (v20 + v19);
  v41 = *(v17 + 48);
  *v21 = 0;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v49 = *MEMORY[0x1E6968DF0];
  v22 = *(v7 + 104);
  v54 = v7 + 104;
  v23 = v43;
  v22(v43);
  v39 = v22;
  sub_1DACB7914();
  v24 = *(v14 + 56);
  v51 = v14 + 56;
  v52 = v24;
  v25 = v42;
  v24(v42, 1, 1, v55);
  v48 = sub_1DACB7164();
  v26 = *(v48 - 8);
  v47 = *(v26 + 56);
  v50 = v26 + 56;
  v47(v56, 1, 1, v48);
  v53 = v21;
  v27 = v25;
  sub_1DACB7174();
  v28 = &v21[v18];
  v29 = v46;
  v41 = *(v46 + 48);
  *v28 = 1;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v30 = v40;
  (v22)(v23, v49, v40);
  v31 = v23;
  sub_1DACB7914();
  v32 = v27;
  v33 = v27;
  v34 = v55;
  v52(v33, 1, 1, v55);
  v35 = v56;
  v47(v56, 1, 1, v48);
  sub_1DACB7174();
  v36 = &v53[v44];
  v44 = *(v29 + 48);
  *v36 = 2;
  sub_1DACB9284();
  sub_1DACB7DF4();
  (v39)(v31, v49, v30);
  sub_1DACB7914();
  v52(v32, 1, 1, v34);
  v47(v35, 1, 1, v48);
  sub_1DACB7174();
  v37 = sub_1DAB68FA4(v45);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1ECBE82A0 = v37;
  return result;
}

uint64_t sub_1DAB9B54C()
{
  if (qword_1ECBE5B30 != -1)
  {
    swift_once();
  }

  return sub_1DACB71E4();
}

uint64_t sub_1DAB9B5A8@<X0>(char *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1DAB9B610()
{
  v1 = 0x737961776C61;
  if (*v0 != 1)
  {
    v1 = 0x726576656ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x756F487265746661;
  }
}

uint64_t sub_1DAB9B668(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C61;
  if (v2 != 1)
  {
    v4 = 0x726576656ELL;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x756F487265746661;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000007372;
  }

  v7 = 0xE600000000000000;
  v8 = 0x737961776C61;
  if (*a2 != 1)
  {
    v8 = 0x726576656ELL;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x756F487265746661;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000007372;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

unint64_t sub_1DAB9B760()
{
  result = qword_1EE120DC8;
  if (!qword_1EE120DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120DC8);
  }

  return result;
}

uint64_t sub_1DAB9B7B4()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB9B854()
{
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAB9B8E0()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB9B97C@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_1DAB9B5A8(a1);
}

void sub_1DAB9B988(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007372;
  v4 = 0xE600000000000000;
  v5 = 0x737961776C61;
  if (v2 != 1)
  {
    v5 = 0x726576656ELL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x756F487265746661;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1DAB9B9E8()
{
  result = qword_1EE120DF0;
  if (!qword_1EE120DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120DF0);
  }

  return result;
}

unint64_t sub_1DAB9BA40()
{
  result = qword_1EE120E00;
  if (!qword_1EE120E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120E00);
  }

  return result;
}

unint64_t sub_1DAB9BA98()
{
  result = qword_1EE120DC0;
  if (!qword_1EE120DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120DC0);
  }

  return result;
}

unint64_t sub_1DAB9BAFC()
{
  result = qword_1EE120DE0;
  if (!qword_1EE120DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120DE0);
  }

  return result;
}

unint64_t sub_1DAB9BB50()
{
  result = qword_1EE120E08;
  if (!qword_1EE120E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120E08);
  }

  return result;
}

unint64_t sub_1DAB9BBA8()
{
  result = qword_1EE120E10;
  if (!qword_1EE120E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120E10);
  }

  return result;
}

uint64_t sub_1DAB9BBFC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5B28 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7354();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE8288);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAB9BCF4(uint64_t a1)
{
  v2 = sub_1DAB950C4();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1DAB9BD44()
{
  result = qword_1EE120DD8;
  if (!qword_1EE120DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120DD8);
  }

  return result;
}

unint64_t sub_1DAB9BD9C()
{
  result = qword_1EE120DB8;
  if (!qword_1EE120DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120DB8);
  }

  return result;
}

uint64_t sub_1DAB9BDF4()
{
  if (qword_1ECBE5B30 != -1)
  {
    swift_once();
  }

  return sub_1DACB71E4();
}

uint64_t sub_1DAB9BE50(uint64_t a1)
{
  v2 = sub_1DAB9BBA8();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1DAB9BEA0()
{
  result = qword_1ECBE82A8;
  if (!qword_1ECBE82A8)
  {
    sub_1DAB9BEF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE82A8);
  }

  return result;
}

void sub_1DAB9BEF8()
{
  if (!qword_1ECBE82B0)
  {
    v0 = sub_1DACB9724();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE82B0);
    }
  }
}

void sub_1DAB9BF68()
{
  if (!qword_1ECBE7E30)
  {
    sub_1DACB7184();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECBE7E30);
    }
  }
}

uint64_t sub_1DAB9BFD8@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1DACB78E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DACB7E44();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = sub_1DACB92E4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = sub_1DACB7904();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = a1[7];
  v38 = a1[6];
  v39 = v15;
  v40 = *(a1 + 16);
  v16 = a1[3];
  v34 = a1[2];
  v35 = v16;
  v17 = a1[5];
  v36 = a1[4];
  v37 = v17;
  v18 = a1[1];
  v32 = *a1;
  v33 = v18;
  sub_1DAA8D96C(0, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
  sub_1DACB9284();
  sub_1DACB7DF4();
  v19 = *MEMORY[0x1E6968DF0];
  v20 = *(v5 + 104);
  v20(v8, v19, v4);
  sub_1DACB7914();
  v30 = sub_1DACB6F34();
  *a2 = v30;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v20(v8, v19, v4);
  sub_1DACB7914();
  v29 = sub_1DACB6F34();
  a2[1] = v29;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v20(v8, v19, v4);
  sub_1DACB7914();
  v28 = sub_1DACB6F34();
  a2[2] = v28;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v20(v8, v19, v4);
  sub_1DACB7914();
  v21 = sub_1DACB6F34();
  v23 = *(&v36 + 1);
  v22 = v37;
  a2[3] = v21;
  a2[4] = v23;
  v24 = *(&v37 + 1);
  v25 = v38;
  a2[5] = v22;
  a2[6] = v24;
  a2[7] = v25;
  v26 = v33;
  v31 = v33;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB6EE4();
  v31 = v26;
  sub_1DACB71E4();
  sub_1DACB6EE4();
  v31 = v34;
  sub_1DACB71E4();
  sub_1DACB6EE4();
  v31 = v35;
  sub_1DACB71E4();
  sub_1DACB6EE4();
  return sub_1DAA9B1C8(&v32);
}

double sub_1DAB9C4C0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = *a1;
  v3 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[7];
  v24 = a1[6];
  v25 = a1[1];
  sub_1DACB6ED4();
  sub_1DACB6ED4();
  sub_1DACB6ED4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20]();
  v8 = qword_1EE122610;
  sub_1DACB71E4();
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16))
  {
    v10 = sub_1DAA4BF3C(v27, v28);
    if (v11)
    {
      v12 = v10;

      v13 = (*(v9 + 56) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
LABEL_8:
      sub_1DACB71E4();
      goto LABEL_9;
    }
  }

  v14 = v28;
  v15 = v27;
  if (!v5)
  {
    goto LABEL_8;
  }

  v15 = v6;
  v14 = v5;
LABEL_9:
  v16 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16) && (v17 = sub_1DAA4BF3C(v27, v28), (v18 & 1) != 0))
  {
    v19 = v17;

    v20 = (*(v16 + 56) + 16 * v19);
    v22 = *v20;
    v21 = v20[1];
    sub_1DACB71E4();

    v7 = v21;
  }

  else
  {

    if (v7)
    {

      v22 = v24;
    }

    else
    {
      v22 = v27;
      v7 = v28;
    }
  }

  *a2 = v27;
  *(a2 + 8) = v28;
  *(a2 + 16) = v27;
  *(a2 + 24) = v28;
  *(a2 + 32) = v27;
  *(a2 + 40) = v28;
  *(a2 + 48) = v27;
  *(a2 + 56) = v28;
  *(a2 + 64) = 0;
  *(a2 + 72) = v15;
  *(a2 + 80) = v14;
  *(a2 + 88) = v22;
  *(a2 + 96) = v7;
  result = 0.0;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  return result;
}

uint64_t sub_1DAB9C76C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[5];
  v7 = a2[7];
  v9 = *a1;
  v10 = a1[1];
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB6EE4();
}

uint64_t (*sub_1DAB9C864(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAAD9D74;
}

uint64_t sub_1DAB9C8FC()
{
  v1 = *(v0 + 8);
  sub_1DACB6ED4();
  return v3;
}

uint64_t sub_1DAB9C930(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[5];
  v7 = a2[7];
  v9 = *a1;
  v10 = a1[1];
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB6EE4();
}

uint64_t (*sub_1DAB9CA2C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAB9CAA0()
{
  v1 = *(v0 + 16);
  sub_1DACB6ED4();
  return v3;
}

uint64_t sub_1DAB9CAD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[5];
  v7 = a2[7];
  v9 = *a1;
  v10 = a1[1];
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB6EE4();
}

uint64_t (*sub_1DAB9CBD0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAB9CC44()
{
  v1 = *(v0 + 24);
  sub_1DACB6ED4();
  return v3;
}

uint64_t sub_1DAB9CC78(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[5];
  v7 = a2[7];
  v9 = *a1;
  v10 = a1[1];
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB6EE4();
}

uint64_t (*sub_1DAB9CD74(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAB9CDE8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB9CE18()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB9CE48@<X0>(void *a1@<X8>)
{
  if (qword_1EE11E728 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EE11E738;
  v2 = qword_1EE11E740;
  *a1 = qword_1EE11E730;
  a1[1] = v1;
  a1[2] = v2;
  sub_1DACB71F4();
  sub_1DACB71F4();

  return sub_1DACB71F4();
}

uint64_t sub_1DAB9CED4@<X0>(void *a1@<X8>)
{
  if (qword_1EE11E728 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EE11E738;
  v2 = qword_1EE11E740;
  *a1 = qword_1EE11E730;
  a1[1] = v1;
  a1[2] = v2;
  sub_1DACB71F4();
  sub_1DACB71F4();

  return sub_1DACB71F4();
}

uint64_t sub_1DAB9CF60@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5B40 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7354();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE82C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAB9D008@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5B40 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7354();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE82C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAB9D0B0(uint64_t a1)
{
  v2 = sub_1DAB823B8();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1DAB9D100@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = MEMORY[0x1E69E6720];
  sub_1DAA8E4FC(0, &qword_1EE11F170, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v26 = v23 - v5;
  sub_1DAA8E4FC(0, &qword_1EE123A80, MEMORY[0x1E6968E10], v2);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v23 - v8;
  v24 = sub_1DACB7904();
  v10 = *(v24 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v25 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DACB92C4();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v16 = v1[1];
  v23[1] = v1[2];
  v18 = v1[4];
  v17 = v1[5];
  v19 = v1[6];
  v20 = v1[7];
  sub_1DACB92B4();
  sub_1DACB92A4();
  if (!v17)
  {
    if (!v20)
    {
      sub_1DACB6ED4();
    }

    sub_1DACB71E4();
  }

  sub_1DACB71E4();
  sub_1DACB9294();

  sub_1DACB92A4();
  sub_1DACB78F4();
  sub_1DACB92B4();
  sub_1DACB92A4();
  sub_1DACB6ED4();
  sub_1DACB9294();

  sub_1DACB92A4();
  sub_1DACB78F4();
  (*(v10 + 56))(v9, 0, 1, v24);
  v21 = sub_1DACB7164();
  (*(*(v21 - 8) + 56))(v26, 1, 1, v21);
  return sub_1DACB7174();
}

uint64_t sub_1DAB9D478(uint64_t a1)
{
  v2 = sub_1DAB9DB2C();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t sub_1DAB9D4D0()
{
  v22 = MEMORY[0x1E6968E10];
  sub_1DAA8E4FC(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v21 = &v20 - v2;
  v3 = sub_1DACB78E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7E44();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1DACB92E4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1DACB7904();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = sub_1DACB7354();
  __swift_allocate_value_buffer(v15, qword_1ECBE82C0);
  __swift_project_value_buffer(v15, qword_1ECBE82C0);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v4 + 104))(v7, *MEMORY[0x1E6968DF0], v3);
  sub_1DACB7914();
  v16 = *(v13 + 56);
  v13 += 56;
  v16(v21, 1, 1, v12);
  sub_1DAA8E4FC(0, &qword_1ECBE6D78, v22, MEMORY[0x1E69E6F90]);
  v17 = *(v13 + 16);
  v18 = (*(v13 + 24) + 32) & ~*(v13 + 24);
  *(swift_allocObject() + 16) = xmmword_1DACCAE40;
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  return sub_1DACB7334();
}

unint64_t sub_1DAB9D974()
{
  result = qword_1EE11E720;
  if (!qword_1EE11E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E720);
  }

  return result;
}

unint64_t sub_1DAB9D9CC()
{
  result = qword_1EE11E708;
  if (!qword_1EE11E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E708);
  }

  return result;
}

unint64_t sub_1DAB9DA24()
{
  result = qword_1EE11E6E0;
  if (!qword_1EE11E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E6E0);
  }

  return result;
}

unint64_t sub_1DAB9DA80()
{
  result = qword_1EE11E700;
  if (!qword_1EE11E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E700);
  }

  return result;
}

unint64_t sub_1DAB9DAD4()
{
  result = qword_1EE11E6F8;
  if (!qword_1EE11E6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E6F8);
  }

  return result;
}

unint64_t sub_1DAB9DB2C()
{
  result = qword_1EE11E6F0;
  if (!qword_1EE11E6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E6F0);
  }

  return result;
}

unint64_t sub_1DAB9DB84()
{
  result = qword_1EE11F158;
  if (!qword_1EE11F158)
  {
    sub_1DAA8D96C(255, &qword_1EE11F150, sub_1DAADD25C, &type metadata for SymbolWidgetEntity, MEMORY[0x1E695A570]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F158);
  }

  return result;
}

unint64_t sub_1DAB9DC18()
{
  result = qword_1EE11E6E8;
  if (!qword_1EE11E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E6E8);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DAB9DC80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1DAB9DCC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAB9DD34@<X0>(uint64_t *a1@<X8>)
{
  sub_1DAB9DDA0();
  sub_1DACB6D94();
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  *a1 = result;
  return result;
}

void sub_1DAB9DDA0()
{
  if (!qword_1EE123AB0)
  {
    sub_1DAADA3B0();
    v0 = sub_1DACB6D64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE123AB0);
    }
  }
}

uint64_t sub_1DAB9DDF8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 88) = a1;
  *(v2 + 96) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DAB9DE1C, 0, 0);
}

uint64_t sub_1DAB9DE1C()
{
  v18 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_1DACB8C94();
  v0[13] = __swift_project_value_buffer(v2, qword_1EE11D390);
  sub_1DACB71E4();
  v3 = sub_1DACB8C74();
  v4 = sub_1DACB9914();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v0[10] = v5;
    sub_1DAA488A4(0, &qword_1EE123EA0);
    sub_1DAA587CC();
    v8 = sub_1DACB9214();
    v10 = sub_1DAA7ABE4(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DAA3F000, v3, v4, "Fetching watchlists for entities with identifiers=[%s]", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E1278C00](v7, -1, -1);
    MEMORY[0x1E1278C00](v6, -1, -1);
  }

  v11 = v0[12];
  sub_1DACB6D24();
  v12 = v0[5];
  v13 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
  v0[14] = (*(v13 + 40))(1, v12, v13);
  v14 = *(MEMORY[0x1E69D6B08] + 4);
  v15 = swift_task_alloc();
  v0[15] = v15;
  *v15 = v0;
  v15[1] = sub_1DAB9E070;

  return MEMORY[0x1EEE44EE0](v0 + 7);
}

uint64_t sub_1DAB9E070()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1DAB7CDDC;
  }

  else
  {
    v5 = *(v2 + 112);

    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v4 = sub_1DAB9E194;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAB9E194()
{
  v64 = v0;
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[7];
  sub_1DACB71E4();
  sub_1DACB71E4();
  v4 = sub_1DACB8C74();
  v5 = sub_1DACB9914();

  v49 = v3;
  v45 = v0;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[11];
    v7 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *&v57 = v54;
    *v7 = 136315394;
    v0[8] = v6;
    sub_1DAA488A4(0, &qword_1EE123EA0);
    sub_1DAA587CC();
    v8 = sub_1DACB9214();
    v10 = sub_1DAA7ABE4(v8, v9, &v57);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = *(v3 + 16);
    v12 = MEMORY[0x1E69E7CC0];
    if (v11)
    {
      v50 = v5;
      v52 = v4;
      *&v58 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v11, 0);
      v12 = v58;
      v13 = *(v58 + 16);
      v14 = 16 * v13;
      v15 = (v3 + 40);
      do
      {
        v16 = *(v15 - 1);
        v17 = *v15;
        *&v58 = v12;
        v18 = v13 + 1;
        v19 = *(v12 + 24);
        sub_1DACB71E4();
        if (v13 >= v19 >> 1)
        {
          sub_1DAA5859C((v19 > 1), v18, 1);
          v12 = v58;
        }

        *(v12 + 16) = v18;
        v20 = v12 + v14;
        *(v20 + 32) = v16;
        *(v20 + 40) = v17;
        v14 += 16;
        v15 += 6;
        ++v13;
        --v11;
      }

      while (v11);
      v0 = v45;
      v3 = v49;
      v4 = v52;
      v5 = v50;
    }

    v0[9] = v12;
    v21 = sub_1DACB9214();
    v23 = v22;

    v24 = sub_1DAA7ABE4(v21, v23, &v57);

    *(v7 + 14) = v24;
    _os_log_impl(&dword_1DAA3F000, v4, v5, "Fetching watchlists for entities with identifiers=[%s], watchlists=[%s]", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v54, -1, -1);
    MEMORY[0x1E1278C00](v7, -1, -1);
  }

  v25 = v0[11];
  v48 = *(v25 + 16);
  if (v48)
  {
    v26 = 0;
    v46 = (v3 + 73);
    v47 = v25 + 32;
    v27 = MEMORY[0x1E69E7CC0];
    do
    {
      v28 = v46;
      v29 = (v47 + 16 * v26);
      v30 = v29[1];
      v53 = v27;
      v55 = *v29;
      v51 = v26 + 1;
      v31 = *(v3 + 16) + 1;
      while (1)
      {
        if (!--v31)
        {
          sub_1DACB71E4();
          sub_1DAB95AA4(v55, v30, 0, 0xE000000000000000, &v58);
          v40 = v58;
          goto LABEL_22;
        }

        v32 = *(v28 - 41);
        v33 = *(v28 - 33);
        v34 = *(v28 - 25);
        v35 = *(v28 - 17);
        v36 = *(v28 - 9);
        v37 = *(v28 - 1);
        v38 = *v28;
        if (v35 == v55 && v36 == v30)
        {
          break;
        }

        v28 += 48;
        if (sub_1DACBA174())
        {
          goto LABEL_21;
        }
      }

      v35 = v55;
LABEL_21:
      *&v58 = v32;
      *(&v58 + 1) = v33;
      v59 = v34;
      v60 = v35;
      v61 = v36;
      v62 = v37;
      v63 = v38;
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DAB960EC(&v58, &v57);
      v40 = v57;
LABEL_22:
      v56 = v40;
      v27 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1DAADC3A8(0, *(v53 + 2) + 1, 1, v53);
      }

      v42 = *(v27 + 2);
      v41 = *(v27 + 3);
      if (v42 >= v41 >> 1)
      {
        v27 = sub_1DAADC3A8((v41 > 1), v42 + 1, 1, v27);
      }

      *(v27 + 2) = v42 + 1;
      *&v27[16 * v42 + 32] = v56;
      v3 = v49;
      v26 = v51;
    }

    while (v51 != v48);
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  v43 = v45[1];

  return v43(v27);
}

uint64_t sub_1DAB9E630()
{
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  v0[10] = __swift_project_value_buffer(v1, qword_1EE11D390);
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetching watchlists for suggested entities.", v4, 2u);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  v5 = v0[9];

  sub_1DACB6D24();
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v0[11] = (*(v7 + 40))(1, v6, v7);
  v8 = *(MEMORY[0x1E69D6B08] + 4);
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_1DAB9E7D0;

  return MEMORY[0x1EEE44EE0](v0 + 7);
}

uint64_t sub_1DAB9E7D0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1DAB9EC40;
  }

  else
  {
    v5 = *(v2 + 88);

    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v4 = sub_1DAB9E8F4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAB9E8F4()
{
  v45 = v0;
  v1 = v0[10];
  v2 = v0[7];
  sub_1DACB71E4();
  v3 = sub_1DACB8C74();
  v4 = sub_1DACB9914();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    v42[0] = v6;
    *v5 = 136315138;
    v8 = *(v2 + 16);
    v9 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      v35 = v6;
      v36 = v5;
      v37 = v4;
      v38 = v3;
      v43[0] = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v8, 0);
      v9 = v43[0];
      v10 = *(v43[0] + 16);
      v11 = 16 * v10;
      v39 = v2;
      v12 = (v2 + 40);
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        v43[0] = v9;
        v15 = v10 + 1;
        v16 = *(v9 + 24);
        sub_1DACB71E4();
        if (v10 >= v16 >> 1)
        {
          sub_1DAA5859C((v16 > 1), v15, 1);
          v9 = v43[0];
        }

        *(v9 + 16) = v15;
        v17 = v9 + v11;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        v11 += 16;
        v12 += 6;
        ++v10;
        --v8;
      }

      while (v8);
      v3 = v38;
      v2 = v39;
      v4 = v37;
      v7 = v35;
      v5 = v36;
    }

    v0[8] = v9;
    sub_1DAA488A4(0, &qword_1EE123EA0);
    sub_1DAA587CC();
    v18 = sub_1DACB9214();
    v20 = v19;

    v21 = sub_1DAA7ABE4(v18, v20, v42);

    *(v5 + 4) = v21;
    _os_log_impl(&dword_1DAA3F000, v3, v4, "Fetched watchlists for suggested entities, watchlists=[%s]", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E1278C00](v7, -1, -1);
    MEMORY[0x1E1278C00](v5, -1, -1);
  }

  v22 = *(v2 + 16);
  if (v22)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1DAB25D98(0, v22, 0);
    v23 = v41;
    v24 = v2 + 73;
    do
    {
      v25 = *(v24 - 33);
      v26 = *(v24 - 25);
      v27 = *(v24 - 17);
      v28 = *(v24 - 9);
      v29 = *(v24 - 1);
      v43[0] = *(v24 - 41);
      v43[1] = v25;
      v43[2] = v26;
      v43[3] = v27;
      v43[4] = v28;
      v44 = v29;
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DAB960EC(v43, v42);
      v30 = *v42;
      v32 = *(v41 + 16);
      v31 = *(v41 + 24);
      if (v32 >= v31 >> 1)
      {
        v40 = *v42;
        sub_1DAB25D98((v31 > 1), v32 + 1, 1);
        v30 = v40;
      }

      v24 += 48;
      *(v41 + 16) = v32 + 1;
      *(v41 + 16 * v32 + 32) = v30;
      --v22;
    }

    while (v22);
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
  }

  v33 = v0[1];

  return v33(v23);
}

uint64_t sub_1DAB9EC40()
{
  v1 = v0[11];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_1DAB9ECCC()
{
  v14 = v0;
  if (qword_1ECBE5B00 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECBE81E8;
  v2 = unk_1ECBE81F0;
  v3 = qword_1EE11D388;
  sub_1DACB71F4();
  sub_1DACB71F4();
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_1DACB8C94();
  __swift_project_value_buffer(v4, qword_1EE11D390);
  sub_1DACB71F4();
  sub_1DACB71F4();
  v5 = sub_1DACB8C74();
  v6 = sub_1DACB9914();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    sub_1DACB6ED4();
    v9 = sub_1DAA7ABE4(v0[2], v0[3], &v13);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_1DAA3F000, v5, v6, "Default watchlist entity requested, returning '%s' watchlist", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E1278C00](v8, -1, -1);
    MEMORY[0x1E1278C00](v7, -1, -1);
  }

  v10 = v0[4];
  *v10 = v1;
  v10[1] = v2;
  v11 = v0[1];

  return v11();
}

uint64_t sub_1DAB9EECC@<X0>(uint64_t *a1@<X8>)
{
  sub_1DAB9DDA0();
  sub_1DACB6D94();
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  *a1 = result;
  return result;
}

uint64_t sub_1DAB9EF38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAB07898;

  return sub_1DAB9DDF8(a1);
}

uint64_t sub_1DAB9EFCC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DAB07890;

  return sub_1DAB9E60C();
}

uint64_t sub_1DAB9F05C(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x1E6959F30] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1DAB97004();
  *v6 = v2;
  v6[1] = sub_1DAA94754;

  return MEMORY[0x1EEDB2ED8](a1, a2, v7);
}

uint64_t sub_1DAB9F110(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return sub_1DAB9ECAC(a1);
}

uint64_t sub_1DAB9F1A8(uint64_t a1, uint64_t a2)
{
  v3[14] = a1;
  v3[15] = a2;
  v3[16] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1DAB9F1D0, 0, 0);
}

uint64_t sub_1DAB9F1D0()
{
  v16 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_1DACB8C94();
  v0[17] = __swift_project_value_buffer(v2, qword_1EE11D390);
  sub_1DACB71E4();
  v3 = sub_1DACB8C74();
  v4 = sub_1DACB9914();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[14];
    v5 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1DAA7ABE4(v6, v5, &v15);
    _os_log_impl(&dword_1DAA3F000, v3, v4, "Querying watchlists matching string=%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E1278C00](v8, -1, -1);
    MEMORY[0x1E1278C00](v7, -1, -1);
  }

  v9 = v0[16];
  sub_1DACB6D24();
  v10 = v0[5];
  v11 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
  v0[18] = (*(v11 + 40))(1, v10, v11);
  v12 = *(MEMORY[0x1E69D6B08] + 4);
  v13 = swift_task_alloc();
  v0[19] = v13;
  *v13 = v0;
  v13[1] = sub_1DAB9F3E0;

  return MEMORY[0x1EEE44EE0](v0 + 11);
}

uint64_t sub_1DAB9F3E0()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_1DAB9FC64;
  }

  else
  {
    v5 = *(v2 + 144);

    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v4 = sub_1DAB9F504;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1DAB9F504()
{
  v97 = v0;
  v1 = v0[17];
  v2 = v0[11];
  sub_1DACB71E4();
  v3 = sub_1DACB8C74();
  v4 = sub_1DACB9914();

  v86 = v2;
  v88 = v0;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *&v94 = v6;
    *v5 = 136315138;
    v8 = *(v2 + 16);
    v9 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      v81 = v6;
      v83 = v5;
      v89 = v4;
      v95[0] = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v8, 0);
      v9 = v95[0];
      v10 = *(v95[0] + 16);
      v11 = 16 * v10;
      v12 = (v2 + 40);
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        v95[0] = v9;
        v15 = v10 + 1;
        v16 = *(v9 + 24);
        sub_1DACB71E4();
        if (v10 >= v16 >> 1)
        {
          sub_1DAA5859C((v16 > 1), v15, 1);
          v9 = v95[0];
        }

        *(v9 + 16) = v15;
        v17 = v9 + v11;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        v11 += 16;
        v12 += 6;
        ++v10;
        --v8;
      }

      while (v8);
      v2 = v86;
      v0 = v88;
      v4 = v89;
      v7 = v81;
      v5 = v83;
    }

    v0[13] = v9;
    sub_1DAA488A4(0, &qword_1EE123EA0);
    sub_1DAA587CC();
    v18 = sub_1DACB9214();
    v20 = v19;

    v21 = sub_1DAA7ABE4(v18, v20, &v94);

    *(v5 + 4) = v21;
    _os_log_impl(&dword_1DAA3F000, v3, v4, "Fetched all watchlists for property query, watchlists=[%s]", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E1278C00](v7, -1, -1);
    MEMORY[0x1E1278C00](v5, -1, -1);
  }

  v22 = *(v2 + 16);
  if (v22)
  {
    v23 = 0;
    v84 = -v22;
    v24 = v2 + 73;
    v77 = v2 + 73;
    v78 = MEMORY[0x1E69E7CC0];
    do
    {
      v25 = (v24 + 48 * v23);
      v26 = v23 + 1;
      while (1)
      {
        if ((v26 - 1) >= *(v2 + 16))
        {
          __break(1u);
          return;
        }

        v90 = v26;
        v28 = v88[14];
        v27 = v88[15];
        v29 = *(v25 - 41);
        v30 = *(v25 - 33);
        v31 = *(v25 - 25);
        v79 = *(v25 - 17);
        v32 = *(v25 - 9);
        v80 = *(v25 - 1);
        v82 = *v25;
        v88[7] = sub_1DACB93A4();
        v88[8] = v33;
        v88[9] = sub_1DACB93A4();
        v88[10] = v34;
        sub_1DAA642D8();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        LOBYTE(v27) = sub_1DACB9B64();

        if (v27)
        {
          break;
        }

        v26 = v90 + 1;
        v2 = v86;
        v25 += 48;
        if (v84 + v90 + 1 == 1)
        {
          goto LABEL_23;
        }
      }

      v35 = v78;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95[0] = v78;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DAB25C88(0, *(v78 + 16) + 1, 1);
        v35 = v95[0];
      }

      v2 = v86;
      v37 = v82;
      v39 = *(v35 + 16);
      v38 = *(v35 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1DAB25C88((v38 > 1), v39 + 1, 1);
        v37 = v82;
        v35 = v95[0];
      }

      *(v35 + 16) = v39 + 1;
      v78 = v35;
      v40 = v35 + 48 * v39;
      *(v40 + 32) = v29;
      *(v40 + 40) = v30;
      *(v40 + 48) = v31;
      *(v40 + 56) = v79;
      *(v40 + 64) = v32;
      *(v40 + 72) = v80;
      *(v40 + 73) = v37;
      v23 = v90;
      v24 = v77;
    }

    while (v84 + v90);
  }

  else
  {
    v78 = MEMORY[0x1E69E7CC0];
  }

LABEL_23:
  v41 = v88;
  v42 = v88[17];
  v43 = v88[15];

  sub_1DACB71E4();
  v44 = v78;
  sub_1DACB71F4();
  v45 = sub_1DACB8C74();
  v46 = sub_1DACB9914();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = v88[14];
    v48 = v88[15];
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v94 = v50;
    *v49 = 136315394;
    *(v49 + 4) = sub_1DAA7ABE4(v47, v48, &v94);
    *(v49 + 12) = 2080;
    v51 = *(v78 + 16);
    v52 = MEMORY[0x1E69E7CC0];
    if (v51)
    {
      v85 = v50;
      v87 = v46;
      v91 = v45;
      v95[0] = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v51, 0);
      v52 = v95[0];
      v53 = *(v95[0] + 16);
      v54 = 16 * v53;
      v55 = (v78 + 40);
      do
      {
        v56 = *(v55 - 1);
        v57 = *v55;
        v95[0] = v52;
        v58 = v53 + 1;
        v59 = *(v52 + 24);
        sub_1DACB71E4();
        if (v53 >= v59 >> 1)
        {
          sub_1DAA5859C((v59 > 1), v58, 1);
          v52 = v95[0];
        }

        *(v52 + 16) = v58;
        v60 = v52 + v54;
        *(v60 + 32) = v56;
        *(v60 + 40) = v57;
        v54 += 16;
        v55 += 6;
        ++v53;
        --v51;
      }

      while (v51);
      v41 = v88;
      v45 = v91;
      v44 = v78;
      v46 = v87;
      v50 = v85;
    }

    v41[12] = v52;
    sub_1DAA488A4(0, &qword_1EE123EA0);
    sub_1DAA587CC();
    v61 = sub_1DACB9214();
    v63 = v62;

    v64 = sub_1DAA7ABE4(v61, v63, &v94);

    *(v49 + 14) = v64;
    _os_log_impl(&dword_1DAA3F000, v45, v46, "Filtered down watchlists matching string=%s, watchlists=[%s]", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v50, -1, -1);
    MEMORY[0x1E1278C00](v49, -1, -1);
  }

  v65 = *(v44 + 16);
  if (v65)
  {
    v93 = MEMORY[0x1E69E7CC0];
    sub_1DAB25D98(0, v65, 0);
    v66 = v93;
    v67 = v44 + 73;
    do
    {
      v68 = *(v67 - 33);
      v69 = *(v67 - 25);
      v70 = *(v67 - 17);
      v71 = *(v67 - 9);
      v72 = *(v67 - 1);
      v95[0] = *(v67 - 41);
      v95[1] = v68;
      v95[2] = v69;
      v95[3] = v70;
      v95[4] = v71;
      v96 = v72;
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DAB960EC(v95, &v94);
      v73 = v94;
      v75 = *(v93 + 16);
      v74 = *(v93 + 24);
      if (v75 >= v74 >> 1)
      {
        v92 = v94;
        sub_1DAB25D98((v74 > 1), v75 + 1, 1);
        v73 = v92;
      }

      v67 += 48;
      *(v93 + 16) = v75 + 1;
      *(v93 + 16 * v75 + 32) = v73;
      --v65;
    }

    while (v65);

    v41 = v88;
  }

  else
  {

    v66 = MEMORY[0x1E69E7CC0];
  }

  v76 = v41[1];

  v76(v66);
}

uint64_t sub_1DAB9FC64()
{
  v1 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];
  v3 = v0[20];

  return v2();
}

uint64_t sub_1DAB9FCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1DAAFF1F4;

  return sub_1DAB9F1A8(a2, a3);
}

unint64_t sub_1DAB9FD7C()
{
  result = qword_1EE11E5C8;
  if (!qword_1EE11E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E5C8);
  }

  return result;
}

unint64_t sub_1DAB9FDD4()
{
  result = qword_1EE11E5C0;
  if (!qword_1EE11E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E5C0);
  }

  return result;
}

unint64_t sub_1DAB9FE30()
{
  result = qword_1EE11E5D0;
  if (!qword_1EE11E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E5D0);
  }

  return result;
}

unint64_t sub_1DAB9FE88()
{
  result = qword_1ECBE82D8;
  if (!qword_1ECBE82D8)
  {
    sub_1DAA488A4(255, &qword_1ECBE82E0);
    sub_1DAB97104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE82D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10StocksCore16SDSQuoteResponseV0cD9ChartItemV14TimeZoneOffsetVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DAB9FF78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1DAB9FFC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10StocksCore16SDSQuoteResponseV0cD9ChartItemVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_10StocksCore16SDSQuoteResponseV18SDSFundCompositionVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_10StocksCore16SDSQuoteResponseV0cD9QuoteItemVSg(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DABA0080(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 776))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 728);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DABA00C8(uint64_t result, int a2, int a3)
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
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 760) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 776) = 1;
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
      *(result + 728) = (a2 - 1);
      return result;
    }

    *(result + 776) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DABA01F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x646174654D736473;
  }

  else
  {
    v4 = 0x7365746F7571;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xEB00000000617461;
  }

  if (*a2)
  {
    v6 = 0x646174654D736473;
  }

  else
  {
    v6 = 0x7365746F7571;
  }

  if (*a2)
  {
    v7 = 0xEB00000000617461;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();
  }

  return v9 & 1;
}

uint64_t sub_1DABA029C()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABA0324()
{
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DABA0398()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

void sub_1DABA0428(uint64_t *a1@<X8>)
{
  v2 = 0x7365746F7571;
  if (*v1)
  {
    v2 = 0x646174654D736473;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000617461;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DABA046C()
{
  if (*v0)
  {
    result = 0x646174654D736473;
  }

  else
  {
    result = 0x7365746F7571;
  }

  *v0;
  return result;
}

uint64_t sub_1DABA04B8(uint64_t a1)
{
  v2 = sub_1DABA6A70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABA04F4(uint64_t a1)
{
  v2 = sub_1DABA6A70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABA0530(void *a1)
{
  v3 = v1;
  sub_1DABAC418(0, &qword_1ECBE8358, sub_1DABA6A70, &type metadata for SDSQuoteResponse.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABA6A70();
  sub_1DACBA304();
  *&v14[0] = *v3;
  v16 = 0;
  sub_1DABABE00(0, &qword_1EE11FB38, &type metadata for SDSQuoteResponse.SDSQuoteResponseItem, MEMORY[0x1E69E62F8]);
  sub_1DABA86B4();
  sub_1DACBA0E4();
  if (!v2)
  {
    v12 = *(v3 + 24);
    v14[0] = *(v3 + 8);
    v14[1] = v12;
    v15 = *(v3 + 40);
    v16 = 1;
    sub_1DAA6EF04();
    sub_1DACBA074();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DABA073C()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABA081C()
{
  *v0;
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DABA08E8()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABA09C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DABA6BB4();
  *a2 = result;
  return result;
}

void sub_1DABA09F4(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000065;
  v3 = 0x676E615265746164;
  v4 = 0xEE00656E6F5A656DLL;
  v5 = 0x695474656B72616DLL;
  if (*v1 != 2)
  {
    v5 = 0x73756F6976657270;
    v4 = 0xED000065736F6C43;
  }

  if (*v1)
  {
    v3 = 0x73656972746E65;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DABA0A90()
{
  v1 = 0x676E615265746164;
  v2 = 0x695474656B72616DLL;
  if (*v0 != 2)
  {
    v2 = 0x73756F6976657270;
  }

  if (*v0)
  {
    v1 = 0x73656972746E65;
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

uint64_t sub_1DABA0B28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DABA6BB4();
  *a1 = result;
  return result;
}

uint64_t sub_1DABA0B50(uint64_t a1)
{
  v2 = sub_1DABA6F74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABA0B8C(uint64_t a1)
{
  v2 = sub_1DABA6F74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABA0BC8(void *a1)
{
  v3 = v1;
  sub_1DABAC418(0, &qword_1ECBE82E8, sub_1DABA6F74, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABA6F74();
  sub_1DACBA304();
  v15[0] = *v3;
  v16 = 0;
  sub_1DABA7160();
  sub_1DACBA0E4();
  if (!v2)
  {
    *&v15[0] = *(v3 + 16);
    v16 = 1;
    sub_1DABABE00(0, &qword_1EE11D188, &type metadata for SDSQuoteResponse.SDSQuoteResponseEntryItem, MEMORY[0x1E69E62F8]);
    sub_1DABA71B4();
    sub_1DACBA0E4();
    v15[0] = *(v3 + 24);
    *(v15 + 9) = *(v3 + 33);
    v16 = 2;
    sub_1DABABE00(0, &qword_1ECBE8308, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem.TimeZoneOffset, MEMORY[0x1E69E6720]);
    sub_1DABA72A4();
    sub_1DACBA0E4();
    v12 = *(v3 + 56);
    v13 = *(v3 + 64);
    LOBYTE(v15[0]) = 3;
    sub_1DACBA044();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DABA0E5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x74657366666FLL;
  }

  else
  {
    v4 = 1701080931;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x74657366666FLL;
  }

  else
  {
    v6 = 1701080931;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();
  }

  return v9 & 1;
}

uint64_t sub_1DABA0EF8()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABA0F70()
{
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DABA0FD4()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

void sub_1DABA1054(uint64_t *a1@<X8>)
{
  v2 = 1701080931;
  if (*v1)
  {
    v2 = 0x74657366666FLL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DABA1088()
{
  if (*v0)
  {
    result = 0x74657366666FLL;
  }

  else
  {
    result = 1701080931;
  }

  *v0;
  return result;
}

uint64_t sub_1DABA10C4(uint64_t a1)
{
  v2 = sub_1DABA9064();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABA1100(uint64_t a1)
{
  v2 = sub_1DABA9064();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABA113C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v19[0] = a4;
  v22 = a5;
  sub_1DABAC418(0, &qword_1ECBE83A0, sub_1DABA9064, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem.TimeZoneOffset.CodingKeys, MEMORY[0x1E69E6F58]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = v19 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABA9064();
  sub_1DACBA304();
  v20 = a2;
  v21 = a3;
  v23 = 0;
  v15 = MEMORY[0x1E69E6158];
  sub_1DABABE00(0, &qword_1EE123FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1DABA90B8(&qword_1ECBE8330, &qword_1EE123FD0, v15);
  v16 = v19[1];
  sub_1DACBA0E4();
  if (!v16)
  {
    v20 = v19[0];
    LOBYTE(v21) = v22 & 1;
    v23 = 1;
    v17 = MEMORY[0x1E69E6530];
    sub_1DABABE00(0, &unk_1EE11F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    sub_1DABA90B8(&qword_1ECBE83A8, &unk_1EE11F970, v17);
    sub_1DACBA0E4();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1DABA13AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DABA7394(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_1DABA1408(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1DACBA174() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

__n128 sub_1DABA1464@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DABA6C00(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1DABA14D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1DABA54D4(v7, v9) & 1;
}

uint64_t sub_1DABA152C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7461447472617473;
  }

  else
  {
    v4 = 0x65746144646E65;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  if (*a2)
  {
    v6 = 0x7461447472617473;
  }

  else
  {
    v6 = 0x65746144646E65;
  }

  if (*a2)
  {
    v7 = 0xE900000000000065;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();
  }

  return v9 & 1;
}

uint64_t sub_1DABA15D8()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABA1660()
{
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DABA16D4()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

void sub_1DABA1764(uint64_t *a1@<X8>)
{
  v2 = 0x65746144646E65;
  if (*v1)
  {
    v2 = 0x7461447472617473;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DABA17A8()
{
  if (*v0)
  {
    result = 0x7461447472617473;
  }

  else
  {
    result = 0x65746144646E65;
  }

  *v0;
  return result;
}

uint64_t sub_1DABA17F4(uint64_t a1)
{
  v2 = sub_1DABA8FBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABA1830(uint64_t a1)
{
  v2 = sub_1DABA8FBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABA186C(void *a1, uint64_t a2, uint64_t a3)
{
  v13[1] = a3;
  sub_1DABAC418(0, &qword_1ECBE8390, sub_1DABA8FBC, &type metadata for SDSQuoteResponse.SDSQuoteResponseDateRange.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABA8FBC();
  sub_1DACBA304();
  v15 = 0;
  sub_1DACBA0C4();
  if (!v3)
  {
    v14 = 1;
    sub_1DACBA0C4();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DABA1A00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DABA75A0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1DABA1A74()
{
  *v0;
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DABA1B58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DABA7778();
  *a2 = result;
  return result;
}

void sub_1DABA1B88(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x65736F6C63;
  v5 = 0xE400000000000000;
  v6 = 1852141679;
  v7 = 0xED00006574614465;
  v8 = 0x636E657265666572;
  if (v2 != 4)
  {
    v8 = 0x656D756C6F76;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1751607656;
  if (v2 != 1)
  {
    v10 = 7827308;
    v9 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1DABA1C34()
{
  v1 = *v0;
  v2 = 0x65736F6C63;
  v3 = 1852141679;
  v4 = 0x636E657265666572;
  if (v1 != 4)
  {
    v4 = 0x656D756C6F76;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1751607656;
  if (v1 != 1)
  {
    v5 = 7827308;
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

uint64_t sub_1DABA1CDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DABA7778();
  *a1 = result;
  return result;
}

uint64_t sub_1DABA1D04(uint64_t a1)
{
  v2 = sub_1DABA9010();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABA1D40(uint64_t a1)
{
  v2 = sub_1DABA9010();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABA1D7C(void *a1)
{
  v3 = v1;
  sub_1DABAC418(0, &qword_1ECBE8398, sub_1DABA9010, &type metadata for SDSQuoteResponse.SDSQuoteResponseEntryItem.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v24 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABA9010();
  sub_1DACBA304();
  v12 = *v3;
  v13 = *(v3 + 8);
  v30 = 0;
  sub_1DACBA044();
  if (!v2)
  {
    v14 = v3[2];
    v15 = *(v3 + 24);
    v29 = 1;
    sub_1DACBA044();
    v16 = v3[4];
    v17 = *(v3 + 40);
    v28 = 2;
    sub_1DACBA044();
    v18 = v3[6];
    v19 = *(v3 + 56);
    v27 = 3;
    sub_1DACBA044();
    v20 = v3[8];
    v26 = 4;
    sub_1DACBA0C4();
    v21 = v3[9];
    v22 = *(v3 + 80);
    v25 = 5;
    sub_1DACBA044();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DABA1F9C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x79546C6F626D7973;
    v6 = 0x4164657461657263;
    if (a1 != 8)
    {
      v6 = 0x7243656372756F73;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x4E746361706D6F63;
    if (a1 != 5)
    {
      v7 = 0x6C6F626D7973;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7472616863;
    v2 = 1701667182;
    v3 = 0x74654465746F7571;
    if (a1 != 3)
    {
      v3 = 0x6D614E74726F6873;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x65676E6168637865;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

double sub_1DABA20F4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DABA77C4(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1DABA2168(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1DABA64F4(v7, v9) & 1;
}

uint64_t sub_1DABA21D4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1DABA1F9C(*a1);
  v5 = v4;
  if (v3 == sub_1DABA1F9C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DABA225C()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DABA1F9C(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABA22C0()
{
  sub_1DABA1F9C(*v0);
  sub_1DACB9404();
}

uint64_t sub_1DABA2314()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DABA1F9C(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABA2374@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DABA7B3C();
  *a2 = result;
  return result;
}

uint64_t sub_1DABA23A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DABA1F9C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DABA23EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DABA7B3C();
  *a1 = result;
  return result;
}

uint64_t sub_1DABA2420(uint64_t a1)
{
  v2 = sub_1DABA82A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABA245C(uint64_t a1)
{
  v2 = sub_1DABA82A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABA2498(void *a1)
{
  v2 = v1;
  sub_1DABAC418(0, &qword_1ECBE8320, sub_1DABA82A4, &type metadata for SDSQuoteResponse.SDSQuoteResponseItem.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v47 = *(v4 - 8);
  v6 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABA82A4();
  sub_1DACBA304();
  v10 = *v2;
  v45[1] = v2[1];
  v11 = v2[1];
  v45[2] = v2[2];
  v12 = v2[2];
  v45[3] = v2[3];
  v45[0] = *v2;
  v13 = v2[3];
  v41 = v12;
  v42 = v13;
  v46 = *(v2 + 64);
  v43 = *(v2 + 64);
  v39 = v10;
  v40 = v11;
  v38 = 0;
  sub_1DABA84B8(v45, v35, &qword_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem);
  sub_1DABA8464();
  v14 = v31;
  sub_1DACBA074();
  if (v14)
  {
    v35[2] = v41;
    v35[3] = v42;
    LOBYTE(v35[4]) = v43;
    v35[0] = v39;
    v35[1] = v40;
    sub_1DABA83A0(v35, &qword_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem);
    return (*(v47 + 8))(v8, v5);
  }

  else
  {
    v16 = v47;
    v36[2] = v41;
    v36[3] = v42;
    v37 = v43;
    v36[0] = v39;
    v36[1] = v40;
    sub_1DABA83A0(v36, &qword_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem);
    v35[0] = *(v2 + 72);
    v34[0] = 1;
    v17 = v8;
    v18 = MEMORY[0x1E69E6158];
    sub_1DABABE00(0, &qword_1EE123FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1DABA90B8(&qword_1ECBE8330, &qword_1EE123FD0, v18);
    sub_1DACBA0E4();
    v19 = *(v2 + 11);
    v20 = *(v2 + 12);
    LOBYTE(v35[0]) = 2;
    sub_1DACBA024();
    memcpy(v44, v2 + 104, sizeof(v44));
    memcpy(v35, v2 + 104, 0x248uLL);
    v34[591] = 3;
    sub_1DABA84B8(v44, v34, &qword_1EE1229D0, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem);
    sub_1DABA8538();
    sub_1DACBA074();
    memcpy(v34, v35, 0x248uLL);
    sub_1DABA83A0(v34, &qword_1EE1229D0, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem);
    v21 = *(v2 + 86);
    v22 = *(v2 + 87);
    v33 = 4;
    sub_1DACBA024();
    v23 = *(v2 + 88);
    v24 = *(v2 + 89);
    v33 = 5;
    sub_1DACBA024();
    v25 = *(v2 + 90);
    v26 = *(v2 + 91);
    v33 = 6;
    sub_1DACBA094();
    v33 = *(v2 + 736);
    v32 = 7;
    sub_1DABA858C();
    sub_1DACBA074();
    v27 = *(v2 + 93);
    v28 = *(v2 + 94);
    v33 = 8;
    sub_1DACBA024();
    v29 = *(v2 + 95);
    v30 = *(v2 + 96);
    v33 = 9;
    sub_1DACBA024();
    return (*(v16 + 8))(v17, 0);
  }
}

void *sub_1DABA2990@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DABA7B88(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x308uLL);
  }

  return result;
}

uint64_t sub_1DABA29F4(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1DABA5DEC(v4) & 1;
}

unint64_t sub_1DABA2A4C(char a1)
{
  result = 0x756F487265746661;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x5665676172657661;
      break;
    case 4:
      result = 1635018082;
      break;
    case 5:
      result = 0x79636E6572727563;
      break;
    case 6:
      result = 0x5068676948796164;
      break;
    case 7:
      result = 0x7250776F4C796164;
      break;
    case 8:
      result = 0x506E65704F796164;
      break;
    case 9:
      result = 0x55736C6961746564;
      break;
    case 10:
      result = 0x646E656469766964;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
    case 13:
    case 15:
      result = 0x65676E6168637865;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0xD000000000000016;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 18:
    case 38:
      result = 0xD000000000000014;
      break;
    case 19:
      result = 0x6563697270;
      break;
    case 20:
      result = 0x6168436563697270;
      break;
    case 21:
      result = 0xD000000000000012;
      break;
    case 22:
      result = 0x756F536563697270;
      break;
    case 23:
      result = 0x656D756C6F76;
      break;
    case 24:
      result = 0x6867694872616579;
      break;
    case 25:
      result = 0x50776F4C72616579;
      break;
    case 26:
      result = 0xD000000000000011;
      break;
    case 27:
      result = 0x73676E696E726165;
      break;
    case 28:
      result = 0xD000000000000010;
      break;
    case 29:
      result = 0x65737341646E7566;
      break;
    case 30:
      result = 0x65746143646E7566;
      break;
    case 31:
      result = 0x75636F46646E7566;
      break;
    case 32:
      result = 0x6863694E646E7566;
      break;
    case 33:
      result = 0x69676552646E7566;
      break;
    case 34:
      result = 0x706D6F43646E7566;
      break;
    case 35:
      result = 0x726F74636573;
      break;
    case 36:
      result = 0x7972747375646E69;
      break;
    case 37:
    case 39:
      result = 0x656B72614D657270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DABA2EF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DABA9130();
  *a2 = result;
  return result;
}

void sub_1DABA2F28(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE500000000000000;
  v6 = 0x5845444E49;
  if (v2 != 6)
  {
    v6 = 0x465F4C415554554DLL;
    v5 = 0xEB00000000444E55;
  }

  v7 = 0xE300000000000000;
  v8 = 4609093;
  if (v2 != 4)
  {
    v8 = 0x53455255545546;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEF59434E45525255;
  v10 = 0x435F4F5450595243;
  if (v2 != 2)
  {
    v10 = 0x595449555145;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x59434E4552525543;
    v3 = 0xE800000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1DABA302C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DABA917C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DABA30A8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1DABA2A4C(*a1);
  v5 = v4;
  if (v3 == sub_1DABA2A4C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DABA3130()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DABA2A4C(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABA3194()
{
  sub_1DABA2A4C(*v0);
  sub_1DACB9404();
}

uint64_t sub_1DABA31E8()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DABA2A4C(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABA3248@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DABA9250();
  *a2 = result;
  return result;
}

unint64_t sub_1DABA3278@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DABA2A4C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DABA32AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DABA9250();
  *a1 = result;
  return result;
}

uint64_t sub_1DABA32E0(uint64_t a1)
{
  v2 = sub_1DABAABBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABA331C(uint64_t a1)
{
  v2 = sub_1DABAABBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABA3358()
{
  sub_1DABAC418(0, &qword_1EE11F618, sub_1DABAABBC, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem.CodingKeys, MEMORY[0x1E69E6F48]);
  result = sub_1DACB9F94();
  if (!v0 && (v2 & 1) == 0 && result < 0)
  {
    sub_1DACB9C94();
    MEMORY[0x1E1276F20](0xD000000000000031, 0x80000001DACEB6A0);
    v3 = sub_1DACBA114();
    MEMORY[0x1E1276F20](v3);

    MEMORY[0x1E1276F20](0xD000000000000026, 0x80000001DACEB6E0);
    sub_1DABAADA0();
    swift_allocError();
    strcpy(v4, "averageVolume");
    *(v4 + 7) = -4864;
    *(v4 + 2) = 0;
    *(v4 + 3) = 0xE000000000000000;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DABA34E4()
{
  sub_1DABAC418(0, &qword_1EE11F618, sub_1DABAABBC, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem.CodingKeys, MEMORY[0x1E69E6F48]);
  result = sub_1DACB9F94();
  if (!v0 && (v2 & 1) == 0 && result < 0)
  {
    sub_1DACB9C94();
    MEMORY[0x1E1276F20](0xD00000000000002ALL, 0x80000001DACEB650);
    v3 = sub_1DACBA114();
    MEMORY[0x1E1276F20](v3);

    MEMORY[0x1E1276F20](0xD00000000000001FLL, 0x80000001DACEB680);
    sub_1DABAADA0();
    swift_allocError();
    *v4 = 0x656D756C6F76;
    v4[1] = 0xE600000000000000;
    v4[2] = 0;
    v4[3] = 0xE000000000000000;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DABA3660(void *a1)
{
  v3 = v1;
  sub_1DABAC418(0, &qword_1ECBE83B8, sub_1DABAABBC, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v81 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABAABBC();
  sub_1DACBA304();
  v12 = *v3;
  v13 = *(v3 + 8);
  LOBYTE(v81) = 0;
  sub_1DACBA044();
  if (!v2)
  {
    v14 = v3[2];
    v15 = *(v3 + 24);
    LOBYTE(v81) = 1;
    sub_1DACBA044();
    LOBYTE(v81) = *(v3 + 25);
    v82 = 2;
    sub_1DABAADF4();
    sub_1DACBA074();
    v17 = v3[4];
    v18 = *(v3 + 40);
    LOBYTE(v81) = 37;
    sub_1DACBA044();
    v19 = v3[6];
    v20 = *(v3 + 56);
    LOBYTE(v81) = 38;
    sub_1DACBA044();
    LOBYTE(v81) = *(v3 + 57);
    v82 = 39;
    sub_1DACBA074();
    v21 = v3[8];
    v22 = *(v3 + 72);
    LOBYTE(v81) = 3;
    sub_1DACBA084();
    v23 = v3[10];
    v24 = *(v3 + 88);
    LOBYTE(v81) = 4;
    sub_1DACBA044();
    v25 = v3[12];
    v26 = v3[13];
    LOBYTE(v81) = 5;
    sub_1DACBA024();
    v27 = v3[14];
    v28 = *(v3 + 120);
    LOBYTE(v81) = 6;
    sub_1DACBA044();
    v29 = v3[16];
    v30 = *(v3 + 136);
    LOBYTE(v81) = 7;
    sub_1DACBA044();
    v31 = v3[18];
    v32 = *(v3 + 152);
    LOBYTE(v81) = 8;
    sub_1DACBA044();
    v33 = v3[20];
    v34 = v3[21];
    LOBYTE(v81) = 9;
    sub_1DACBA024();
    v35 = v3[22];
    v36 = *(v3 + 184);
    LOBYTE(v81) = 10;
    sub_1DACBA044();
    v37 = v3[24];
    v38 = *(v3 + 200);
    LOBYTE(v81) = 11;
    sub_1DACBA044();
    v39 = v3[26];
    v40 = v3[27];
    LOBYTE(v81) = 12;
    sub_1DACBA024();
    v41 = v3[28];
    v42 = v3[29];
    LOBYTE(v81) = 13;
    sub_1DACBA024();
    v43 = v3[30];
    v44 = v3[31];
    LOBYTE(v81) = 14;
    sub_1DACBA024();
    LOBYTE(v81) = *(v3 + 256);
    v82 = 15;
    sub_1DABAAE48();
    sub_1DACBA074();
    v45 = v3[33];
    v46 = *(v3 + 272);
    LOBYTE(v81) = 16;
    sub_1DACBA044();
    v47 = v3[35];
    v48 = v3[36];
    LOBYTE(v81) = 17;
    sub_1DACBA024();
    v49 = v3[37];
    v50 = *(v3 + 304);
    LOBYTE(v81) = 18;
    sub_1DACBA044();
    v51 = v3[39];
    v52 = *(v3 + 320);
    LOBYTE(v81) = 19;
    sub_1DACBA044();
    v53 = v3[41];
    v54 = *(v3 + 336);
    LOBYTE(v81) = 20;
    sub_1DACBA044();
    v55 = v3[43];
    v56 = *(v3 + 352);
    LOBYTE(v81) = 21;
    sub_1DACBA044();
    LOBYTE(v81) = *(v3 + 353);
    v82 = 22;
    sub_1DACBA074();
    v57 = v3[45];
    v58 = *(v3 + 368);
    LOBYTE(v81) = 23;
    sub_1DACBA084();
    v59 = v3[47];
    v60 = *(v3 + 384);
    LOBYTE(v81) = 24;
    sub_1DACBA044();
    v61 = v3[49];
    v62 = *(v3 + 400);
    LOBYTE(v81) = 25;
    sub_1DACBA044();
    v63 = v3[51];
    v64 = v3[52];
    LOBYTE(v81) = 26;
    sub_1DACBA024();
    v65 = v3[53];
    v66 = v3[54];
    LOBYTE(v81) = 27;
    sub_1DACBA024();
    *&v81 = v3[55];
    WORD4(v81) = *(v3 + 224);
    v82 = 28;
    sub_1DABAAE9C();
    sub_1DACBA074();
    v67 = v3[57];
    v68 = v3[58];
    LOBYTE(v81) = 29;
    sub_1DACBA024();
    v69 = v3[59];
    v70 = v3[60];
    LOBYTE(v81) = 30;
    sub_1DACBA024();
    v71 = v3[61];
    v72 = v3[62];
    LOBYTE(v81) = 31;
    sub_1DACBA024();
    v73 = v3[63];
    v74 = v3[64];
    LOBYTE(v81) = 32;
    sub_1DACBA024();
    v75 = v3[65];
    v76 = v3[66];
    LOBYTE(v81) = 33;
    sub_1DACBA024();
    v81 = *(v3 + 67);
    v82 = 34;
    sub_1DABAAEF0();
    sub_1DACBA074();
    v77 = v3[69];
    v78 = v3[70];
    LOBYTE(v81) = 35;
    sub_1DACBA024();
    v79 = v3[71];
    v80 = v3[72];
    LOBYTE(v81) = 36;
    sub_1DACBA024();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DABA3EAC()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABA3F70()
{
  *v0;
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DABA4020()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABA40E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DABAB794();
  *a2 = result;
  return result;
}

void sub_1DABA4110(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1313165391;
  v4 = 0xEA00000000005445;
  v5 = 0x4B52414D5F455250;
  if (*v1 != 2)
  {
    v5 = 0x4F485F5245544641;
    v4 = 0xEB00000000535255;
  }

  if (*v1)
  {
    v3 = 0x4445534F4C43;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DABA4240()
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DABA42A4()
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DABA42F0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DACB9F04();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1DABA4370@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DABA43C8(uint64_t a1)
{
  v2 = sub_1DABAB740();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABA4404(uint64_t a1)
{
  v2 = sub_1DABAB740();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABA4440(void *a1, uint64_t a2, char a3)
{
  sub_1DABAC418(0, &qword_1ECBE8458, sub_1DABAB740, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem.TimeZoneOffset.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABAB740();
  sub_1DACBA304();
  v15 = a2;
  v16 = a3 & 1;
  v13 = MEMORY[0x1E69E6530];
  sub_1DABABE00(0, &unk_1EE11F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  sub_1DABA90B8(&qword_1ECBE83A8, &unk_1EE11F970, v13);
  sub_1DACBA0E4();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1DABA4614(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6, void (*a7)(void))
{
  v18[1] = a3;
  sub_1DABAC418(0, a4, a5, a6, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = v18 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a7();
  sub_1DACBA304();
  v20 = 0;
  v16 = v18[2];
  sub_1DACBA094();
  if (!v16)
  {
    v19 = 1;
    sub_1DACBA0B4();
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1DABA47A4(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  sub_1DABAC418(0, &qword_1ECBE8460, sub_1DABABCBC, &type metadata for SDSQuoteResponse.SDSFundComposition.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABABCBC();
  sub_1DACBA304();
  v16 = a2;
  v15 = 0;
  sub_1DABABE00(0, &qword_1ECBE8428, &type metadata for SDSQuoteResponse.SDSFundComposition.Holding, MEMORY[0x1E69E62F8]);
  sub_1DABABF40();
  sub_1DACBA0E4();
  if (!v3)
  {
    v16 = v14;
    v15 = 1;
    sub_1DABABE00(0, &qword_1ECBE8440, &type metadata for SDSQuoteResponse.SDSFundComposition.Sector, MEMORY[0x1E69E62F8]);
    sub_1DABAC030();
    sub_1DACBA0E4();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1DABA49C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1DABAC418(0, &qword_1EE11F610, sub_1DABAB740, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem.TimeZoneOffset.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABAB740();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v17;
  v12 = sub_1DACB9F64();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v11 = v12;
  *(v11 + 8) = v14 & 1;
  return result;
}

void *sub_1DABA4B9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DABA92A4(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x248uLL);
  }

  return result;
}

uint64_t sub_1DABA4C00(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1DABA55C4(v4, __dst) & 1;
}

uint64_t sub_1DABA4C6C()
{
  *v0;
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DABA4D94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DABAB7E0();
  *a2 = result;
  return result;
}

void sub_1DABA4DC4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF444559414C4544;
  v4 = 0x5F434952454E4547;
  v5 = 0x80000001DACE1C90;
  v6 = 0x80000001DACE1CB0;
  v7 = 0xD000000000000011;
  if (v2 != 4)
  {
    v7 = 0xD000000000000010;
    v6 = 0x80000001DACE1CD0;
  }

  if (v2 == 3)
  {
    v7 = 0xD000000000000012;
  }

  else
  {
    v5 = v6;
  }

  v8 = 0xEF454D49544C4145;
  v9 = 0x525F51414453414ELL;
  if (v2 != 1)
  {
    v9 = 0x4145525F4553594ELL;
    v8 = 0xED0000454D49544CLL;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v7;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_1DABA4F64(uint64_t a1)
{
  v2 = sub_1DABAC370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABA4FA0(uint64_t a1)
{
  v2 = sub_1DABAC370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABA5084(uint64_t a1)
{
  v2 = sub_1DABAC3C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABA50C0(uint64_t a1)
{
  v2 = sub_1DABAC3C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DABA514C(uint64_t *a1@<X0>, unint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X5>, void (*a5)(void)@<X6>, uint64_t a6@<X8>)
{
  v10 = sub_1DABAB82C(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = v8;
    *(a6 + 8) = v9;
    *(a6 + 16) = v10;
  }
}

uint64_t sub_1DABA51E4()
{
  if (*v0)
  {
    result = 0x6F74636553706F74;
  }

  else
  {
    result = 0x69646C6F48706F74;
  }

  *v0;
  return result;
}

uint64_t sub_1DABA522C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69646C6F48706F74 && a2 == 0xEB0000000073676ELL;
  if (v6 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F74636553706F74 && a2 == 0xEA00000000007372)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();

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

uint64_t sub_1DABA5314(uint64_t a1)
{
  v2 = sub_1DABABCBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABA5350(uint64_t a1)
{
  v2 = sub_1DABABCBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABA538C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DABABA2C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1DABA53D4(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1DAC3D734(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1DAC3D734(v2, v3);
}

double sub_1DABA5430@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DABA67F0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_1DABA548C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1DABA65DC(v7, v8) & 1;
}

uint64_t sub_1DABA54D4(double *a1, double *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  if ((sub_1DAC378B0(*(a1 + 2), *(a2 + 2)) & 1) == 0)
  {
    return 0;
  }

  v4 = a1;
  v5 = *(a1 + 4);
  v6 = a2;
  v7 = *(a2 + 4);
  if (v5 == 1)
  {
    if (v7 == 1)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (v7 == 1)
  {
    return 0;
  }

  if (v5)
  {
    if (v7)
    {
      if (*(a1 + 3) == *(a2 + 3) && v5 == v7)
      {
        goto LABEL_6;
      }

      v9 = sub_1DACBA174();
      v6 = a2;
      v4 = a1;
      if (v9)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

  if (v7)
  {
    return 0;
  }

LABEL_6:
  result = *(v6 + 64);
  if ((v4[8] & 1) == 0)
  {
    return (v4[7] == v6[7]) & ~result;
  }

  return result;
}

uint64_t sub_1DABA55C4(uint64_t a1, uint64_t a2)
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

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 25);
  if (*(a1 + 25) == 6)
  {
    if (v4 != 6)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == 6)
    {
      return 0;
    }

    v5 = a1;
    v6 = a2;
    v7 = sub_1DAC39D14(*(a1 + 25), *(a2 + 25));
    a2 = v6;
    v8 = v7;
    a1 = v5;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = *(a2 + 57);
  if (*(a1 + 57) == 6)
  {
    if (v11 != 6)
    {
      return 0;
    }
  }

  else
  {
    if (v11 == 6)
    {
      return 0;
    }

    v12 = a1;
    v13 = a2;
    v14 = sub_1DAC39D14(*(a1 + 57), *(a2 + 57));
    a2 = v13;
    v15 = v14;
    a1 = v12;
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  v16 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 64) != *(a2 + 64))
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  v17 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 80) != *(a2 + 80))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = *(a1 + 104);
  v19 = *(a2 + 104);
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    if (*(a1 + 96) != *(a2 + 96) || v18 != v19)
    {
      v20 = a1;
      v21 = *(a1 + 96);
      v22 = a2;
      v23 = sub_1DACBA174();
      a2 = v22;
      v24 = v23;
      a1 = v20;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  v25 = *(a2 + 120);
  if (*(a1 + 120))
  {
    if (!*(a2 + 120))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 112) != *(a2 + 112))
    {
      v25 = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  v26 = *(a2 + 136);
  if (*(a1 + 136))
  {
    if (!*(a2 + 136))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 128) != *(a2 + 128))
    {
      v26 = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  v27 = *(a2 + 152);
  if (*(a1 + 152))
  {
    if (!*(a2 + 152))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 144) != *(a2 + 144))
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  v28 = a1;
  v29 = *(a1 + 168);
  v30 = a2;
  v31 = *(a2 + 168);
  if (v29)
  {
    if (!v31 || (*(a1 + 160) != *(a2 + 160) || v29 != v31) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  v32 = *(v30 + 184);
  if (*(v28 + 184))
  {
    if (!*(v30 + 184))
    {
      return 0;
    }
  }

  else
  {
    if (*(v28 + 176) != *(v30 + 176))
    {
      v32 = 1;
    }

    if (v32)
    {
      return 0;
    }
  }

  v33 = *(v30 + 200);
  if (*(v28 + 200))
  {
    if (!*(v30 + 200))
    {
      return 0;
    }
  }

  else
  {
    if (*(v28 + 192) != *(v30 + 192))
    {
      v33 = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  v34 = *(v28 + 216);
  v35 = *(v30 + 216);
  if (v34)
  {
    if (!v35 || (*(v28 + 208) != *(v30 + 208) || v34 != v35) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  v36 = *(v28 + 232);
  v37 = *(v30 + 232);
  if (v36)
  {
    if (!v37 || (*(v28 + 224) != *(v30 + 224) || v36 != v37) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  v38 = *(v28 + 248);
  v39 = *(v30 + 248);
  if (v38)
  {
    if (!v39 || (*(v28 + 240) != *(v30 + 240) || v38 != v39) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  v40 = *(v28 + 256);
  v41 = *(v30 + 256);
  if (v40 == 4)
  {
    if (v41 != 4)
    {
      return 0;
    }
  }

  else if (v41 == 4 || (sub_1DAC39BC8(v40, v41) & 1) == 0)
  {
    return 0;
  }

  v42 = *(v30 + 272);
  if (*(v28 + 272))
  {
    if (!*(v30 + 272))
    {
      return 0;
    }
  }

  else
  {
    if (*(v28 + 264) != *(v30 + 264))
    {
      v42 = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  v43 = *(v28 + 288);
  v44 = *(v30 + 288);
  if (v43)
  {
    if (!v44 || (*(v28 + 280) != *(v30 + 280) || v43 != v44) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v44)
  {
    return 0;
  }

  v45 = *(v30 + 304);
  if (*(v28 + 304))
  {
    if (!*(v30 + 304))
    {
      return 0;
    }
  }

  else
  {
    if (*(v28 + 296) != *(v30 + 296))
    {
      v45 = 1;
    }

    if (v45)
    {
      return 0;
    }
  }

  v46 = *(v30 + 320);
  if (*(v28 + 320))
  {
    if (!*(v30 + 320))
    {
      return 0;
    }
  }

  else
  {
    if (*(v28 + 312) != *(v30 + 312))
    {
      v46 = 1;
    }

    if (v46)
    {
      return 0;
    }
  }

  v47 = *(v30 + 336);
  if (*(v28 + 336))
  {
    if (!*(v30 + 336))
    {
      return 0;
    }
  }

  else
  {
    if (*(v28 + 328) != *(v30 + 328))
    {
      v47 = 1;
    }

    if (v47)
    {
      return 0;
    }
  }

  v48 = *(v30 + 352);
  if (*(v28 + 352))
  {
    if (!*(v30 + 352))
    {
      return 0;
    }
  }

  else
  {
    if (*(v28 + 344) != *(v30 + 344))
    {
      v48 = 1;
    }

    if (v48)
    {
      return 0;
    }
  }

  v49 = *(v28 + 353);
  v50 = *(v30 + 353);
  if (v49 == 6)
  {
    if (v50 != 6)
    {
      return 0;
    }
  }

  else if (v50 == 6 || (sub_1DAC39D14(v49, v50) & 1) == 0)
  {
    return 0;
  }

  v51 = *(v30 + 368);
  if (*(v28 + 368))
  {
    if (!*(v30 + 368))
    {
      return 0;
    }
  }

  else
  {
    if (*(v28 + 360) != *(v30 + 360))
    {
      v51 = 1;
    }

    if (v51)
    {
      return 0;
    }
  }

  v52 = *(v30 + 384);
  if (*(v28 + 384))
  {
    if (!*(v30 + 384))
    {
      return 0;
    }
  }

  else
  {
    if (*(v28 + 376) != *(v30 + 376))
    {
      v52 = 1;
    }

    if (v52)
    {
      return 0;
    }
  }

  v53 = *(v30 + 400);
  if (*(v28 + 400))
  {
    if (!*(v30 + 400))
    {
      return 0;
    }
  }

  else
  {
    if (*(v28 + 392) != *(v30 + 392))
    {
      v53 = 1;
    }

    if (v53)
    {
      return 0;
    }
  }

  v54 = *(v28 + 416);
  v55 = *(v30 + 416);
  if (v54)
  {
    if (!v55 || (*(v28 + 408) != *(v30 + 408) || v54 != v55) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v55)
  {
    return 0;
  }

  v56 = *(v28 + 432);
  v57 = *(v30 + 432);
  if (v56)
  {
    if (!v57 || (*(v28 + 424) != *(v30 + 424) || v56 != v57) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v57)
  {
    return 0;
  }

  v58 = *(v30 + 449);
  if (*(v28 + 449))
  {
    if ((*(v30 + 449) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(v30 + 449))
  {
    return 0;
  }

  v59 = *(v28 + 464);
  v60 = *(v30 + 464);
  if (v59)
  {
    if (!v60 || (*(v28 + 456) != *(v30 + 456) || v59 != v60) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v60)
  {
    return 0;
  }

  v61 = *(v28 + 480);
  v62 = *(v30 + 480);
  if (v61)
  {
    if (!v62 || (*(v28 + 472) != *(v30 + 472) || v61 != v62) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v62)
  {
    return 0;
  }

  v63 = *(v28 + 496);
  v64 = *(v30 + 496);
  if (v63)
  {
    if (!v64 || (*(v28 + 488) != *(v30 + 488) || v63 != v64) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v64)
  {
    return 0;
  }

  v65 = *(v28 + 512);
  v66 = *(v30 + 512);
  if (v65)
  {
    if (!v66 || (*(v28 + 504) != *(v30 + 504) || v65 != v66) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v66)
  {
    return 0;
  }

  v67 = *(v28 + 528);
  v68 = *(v30 + 528);
  if (v67)
  {
    if (!v68 || (*(v28 + 520) != *(v30 + 520) || v67 != v68) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v68)
  {
    return 0;
  }

  v69 = *(v28 + 536);
  v70 = *(v30 + 536);
  if (v69)
  {
    if (!v70)
    {
      return 0;
    }

    v71 = *(v28 + 544);
    v72 = *(v30 + 544);
    if ((sub_1DAC3D734(v69, v70) & 1) == 0 || (sub_1DAC3D734(v71, v72) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v70)
  {
    return 0;
  }

  v74 = *(v28 + 560);
  v75 = *(v30 + 560);
  if (!v74)
  {
    if (!v75)
    {
      goto LABEL_245;
    }

    return 0;
  }

  if (!v75 || (*(v28 + 552) != *(v30 + 552) || v74 != v75) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

LABEL_245:
  v76 = *(v28 + 576);
  v77 = *(v30 + 576);
  result = (v76 | v77) == 0;
  if (v76 && v77)
  {
    if (*(v28 + 568) == *(v30 + 568) && v76 == v77)
    {
      return 1;
    }

    else
    {

      return sub_1DACBA174();
    }
  }

  return result;
}

uint64_t sub_1DABA5DEC(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v5 = *v1;
  v51 = *(v1 + 16);
  v6 = *(v1 + 48);
  v52 = *(v1 + 32);
  v53 = v6;
  v50 = v5;
  v7 = *v2;
  v46 = v2[1];
  v8 = v2[3];
  v47 = v2[2];
  v48 = v8;
  v45 = *v2;
  v54 = *(v1 + 64);
  v49 = *(v2 + 64);
  v9 = v51;
  *&v55[7] = v7;
  if (!v51)
  {
    if (!v46)
    {
      __dst[0] = *v1;
      *&__dst[1] = 0;
      *(&__dst[1] + 8) = *(v1 + 24);
      *(&__dst[2] + 8) = *(v1 + 40);
      *(&__dst[3] + 1) = *(v1 + 49);
      sub_1DABA84B8(&v50, v40, &qword_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem);
      sub_1DABA84B8(&v45, v40, &qword_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem);
      sub_1DABA83A0(__dst, &qword_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem);
      goto LABEL_11;
    }

LABEL_6:
    __dst[0] = *v1;
    *(&__dst[1] + 8) = *(v1 + 24);
    *(&__dst[2] + 8) = *(v1 + 40);
    *(&__dst[3] + 1) = *(v1 + 49);
    *(&__dst[4] + 1) = *v55;
    *&__dst[1] = v51;
    *&__dst[5] = *&v55[15];
    *(&__dst[5] + 1) = v46;
    v13 = *(v2 + 40);
    __dst[6] = *(v2 + 24);
    __dst[7] = v13;
    *(&__dst[7] + 9) = *(v2 + 49);
    v14 = &qword_1EE11EAF0;
    v15 = &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem;
    sub_1DABA84B8(&v50, v40, &qword_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem);
    sub_1DABA84B8(&v45, v40, &qword_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem);
    v16 = &unk_1ECBE8348;
    v17 = __dst;
LABEL_7:
    sub_1DABA85E0(v17, v16, v14, v15);
    goto LABEL_8;
  }

  if (!v46)
  {
    goto LABEL_6;
  }

  v40[0] = *v2;
  *&v40[1] = v46;
  *(&v40[1] + 8) = *(v2 + 24);
  *(&v40[2] + 8) = *(v2 + 40);
  *(&v40[3] + 1) = *(v2 + 49);
  v61 = v40[4];
  v60[2] = v40[2];
  v60[3] = v40[3];
  v60[0] = v40[0];
  v60[1] = v40[1];
  v56 = *v1;
  v10 = *(v1 + 24);
  v11 = *(v1 + 40);
  *(v59 + 9) = *(v1 + 49);
  v59[0] = v11;
  v58 = v10;
  v57 = v51;
  v12 = sub_1DABA54D4(&v56, v60);
  sub_1DABA84B8(&v50, __dst, &qword_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem);
  sub_1DABA84B8(&v45, __dst, &qword_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem);
  sub_1DABA83A0(v40, &qword_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem);
  __dst[0] = *v4;
  *&__dst[1] = v9;
  *(&__dst[1] + 8) = *(v4 + 24);
  *(&__dst[2] + 8) = *(v4 + 40);
  *(&__dst[3] + 1) = *(v4 + 49);
  sub_1DABA83A0(__dst, &qword_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem);
  if ((v12 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v20 = *(v4 + 80);
  v21 = *(v3 + 10);
  if (v20)
  {
    if (!v21 || (*(v4 + 72) != *(v3 + 9) || v20 != v21) && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  v22 = *(v4 + 96);
  v23 = *(v3 + 12);
  if (v22)
  {
    if (!v23 || (*(v4 + 88) != *(v3 + 11) || v22 != v23) && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v23)
  {
    goto LABEL_8;
  }

  memcpy(v44, (v4 + 104), sizeof(v44));
  memcpy(v43, v3 + 104, sizeof(v43));
  memcpy(__dst, (v4 + 104), 0x248uLL);
  memcpy(&__dst[36] + 8, v3 + 104, 0x248uLL);
  memcpy(v42, (v4 + 104), sizeof(v42));
  if (sub_1DAAE865C(v42) != 1)
  {
    memcpy(v39, v3 + 104, sizeof(v39));
    if (sub_1DAAE865C(v39) != 1)
    {
      memcpy(v37, v3 + 104, sizeof(v37));
      memcpy(v40, v3 + 104, 0x248uLL);
      memcpy(v55, (v4 + 104), sizeof(v55));
      sub_1DABA84B8(v44, v38, &qword_1EE1229D0, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem);
      sub_1DABA84B8(v43, v38, &qword_1EE1229D0, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem);
      v24 = sub_1DABA55C4(v55, v40);
      sub_1DABA83A0(v37, &qword_1EE1229D0, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem);
      memcpy(v38, (v4 + 104), sizeof(v38));
      sub_1DABA83A0(v38, &qword_1EE1229D0, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem);
      if ((v24 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_31;
    }

    goto LABEL_29;
  }

  memcpy(v40, v3 + 104, 0x248uLL);
  if (sub_1DAAE865C(v40) != 1)
  {
LABEL_29:
    memcpy(v40, __dst, sizeof(v40));
    v14 = &qword_1EE1229D0;
    v15 = &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem;
    sub_1DABA84B8(v44, v55, &qword_1EE1229D0, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem);
    sub_1DABA84B8(v43, v55, &qword_1EE1229D0, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem);
    v16 = &unk_1ECBE8350;
    v17 = v40;
    goto LABEL_7;
  }

  memcpy(v55, (v4 + 104), sizeof(v55));
  sub_1DABA84B8(v44, v39, &qword_1EE1229D0, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem);
  sub_1DABA84B8(v43, v39, &qword_1EE1229D0, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem);
  sub_1DABA83A0(v55, &qword_1EE1229D0, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem);
LABEL_31:
  v25 = *(v4 + 696);
  v26 = *(v3 + 87);
  if (v25)
  {
    if (!v26)
    {
      goto LABEL_8;
    }

    v27 = *(v3 + 86);
    if (*(v4 + 688) != v27 || v25 != v26)
    {
      v28 = *(v3 + 86);
      v29 = *(v3 + 87);
      if ((sub_1DACBA174() & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v30 = *(v4 + 712);
    if (!v30 || (*(v4 + 704) != v27 || v30 != v26) && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v26 || *(v4 + 712))
  {
    goto LABEL_8;
  }

  if ((*(v4 + 720) != *(v3 + 90) || *(v4 + 728) != *(v3 + 91)) && (sub_1DACBA174() & 1) == 0)
  {
    goto LABEL_8;
  }

  v31 = *(v4 + 736);
  v32 = *(v3 + 736);
  if (v31 == 8)
  {
    if (v32 != 8)
    {
      goto LABEL_8;
    }
  }

  else if (v32 == 8 || (sub_1DAC3D738(v31, v32) & 1) == 0)
  {
    goto LABEL_8;
  }

  v33 = *(v4 + 752);
  v34 = *(v3 + 94);
  if (v33)
  {
    if (!v34 || (*(v4 + 744) != *(v3 + 93) || v33 != v34) && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v34)
  {
    goto LABEL_8;
  }

  v35 = *(v4 + 768);
  v36 = *(v3 + 96);
  if (v35)
  {
    if (v36)
    {
      if (*(v4 + 760) != *(v3 + 95) || v35 != v36)
      {
        v18 = sub_1DACBA174();
        return v18 & 1;
      }

LABEL_64:
      v18 = 1;
      return v18 & 1;
    }
  }

  else if (!v36)
  {
    goto LABEL_64;
  }

LABEL_8:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1DABA64F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return v2;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v2 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return v2;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v2 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return v2;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v2 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (*(a2 + 56))
    {
      goto LABEL_25;
    }

    return v2;
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    LOBYTE(v2) = 1;
  }

  if (v2)
  {
    return 0;
  }

LABEL_25:
  if (*(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v2 = *(a2 + 80);
  if (*(a1 + 80))
  {
    return v2;
  }

  return (*(a1 + 72) == *(a2 + 72)) & ~v2;
}

void *sub_1DABA65DC(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

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
LABEL_10:
    v13 = a1[1];
    v12 = a1[2];
    v15 = a1[3];
    v14 = a1[4];
    v16 = a1[5];
    v18 = a2[1];
    v17 = a2[2];
    v19 = a2[3];
    v20 = a2[4];
    v21 = a2[5];
    if (v12)
    {
      if (v17)
      {
        v24[0] = v13;
        v24[1] = v12;
        v24[2] = v15;
        v24[3] = v14;
        v24[4] = v16;
        v23[0] = v18;
        v23[1] = v17;
        v23[2] = v19;
        v23[3] = v20;
        v23[4] = v21;
        sub_1DAAF2954(v18, v17);
        sub_1DAAF2954(v13, v12);
        v22 = sub_1DAC3C194(v24, v23);

        sub_1DAA75E60(v13, v12);
        return v22;
      }
    }

    else if (!v17)
    {
      return 1;
    }

    sub_1DAAF2954(v18, v17);
    sub_1DAAF2954(v13, v12);
    sub_1DAA75E60(v13, v12);
    sub_1DAA75E60(v18, v17);
    return 0;
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (1)
  {
    result = memcpy(__dst, v8, sizeof(__dst));
    if (!v4)
    {
      break;
    }

    memcpy(v26, v9, 0x308uLL);
    sub_1DAAE8548(__dst, v23);
    sub_1DAAE8548(v26, v23);
    v11 = sub_1DABA5DEC(__dst);
    sub_1DAAE85A4(v26);
    sub_1DAAE85A4(__dst);
    if ((v11 & 1) == 0)
    {
      return 0;
    }

    v8 += 776;
    v9 += 776;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DABA67F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_1DABAC418(0, &qword_1EE11F608, sub_1DABA6A70, &type metadata for SDSQuoteResponse.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABA6A70();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  v12 = v19;
  sub_1DABABE00(0, &qword_1EE11FB38, &type metadata for SDSQuoteResponse.SDSQuoteResponseItem, MEMORY[0x1E69E62F8]);
  LOBYTE(v21) = 0;
  sub_1DABA6AC4();
  sub_1DACB9FE4();
  v13 = v24;
  v20 = 1;
  sub_1DAA6EEB0();
  sub_1DACB9F84();
  (*(v11 + 8))(v9, v5);
  v14 = v23;
  v17 = v22;
  v18 = v21;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v12 = v13;
  v16 = v18;
  *(v12 + 24) = v17;
  *(v12 + 8) = v16;
  *(v12 + 40) = v14;
  return result;
}