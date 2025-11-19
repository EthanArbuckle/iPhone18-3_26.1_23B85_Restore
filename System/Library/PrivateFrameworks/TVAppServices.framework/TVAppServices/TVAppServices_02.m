unint64_t sub_26CC43CF0()
{
  result = qword_2804BBFB8;
  if (!qword_2804BBFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBFB8);
  }

  return result;
}

uint64_t sub_26CC43D44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_26CD3AFDC();

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

uint64_t get_enum_tag_for_layout_string_13TVAppServices5VideoVSg(uint64_t a1)
{
  v1 = *(a1 + 72);
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

uint64_t get_enum_tag_for_layout_string_13TVAppServices25UpNextNotificationPayloadV9ItemImageVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26CC43EF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 1481))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_26CC43F4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 1480) = 0;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1481) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1481) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26CC44138(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_26CC44194(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_26CC44204(char a1)
{
  result = 0x64496D616461;
  switch(a1)
  {
    case 1:
      result = 0x756F72676B636162;
      break;
    case 2:
      result = 0x69726F6765746163;
      break;
    case 3:
      result = 0x795465676E616863;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0x747865746E6F63;
      break;
    case 6:
      result = 0x7470697263736564;
      break;
    case 7:
      result = 0x6E6F697461727564;
      break;
    case 8:
      result = 0x4E65646F73697065;
      break;
    case 9:
      result = 0x7365726E6567;
      break;
    case 10:
      result = 25705;
      break;
    case 11:
      result = 0x736567616D69;
      break;
    case 12:
      result = 0x4F656C7070417369;
      break;
    case 13:
      result = 0x444F56457369;
      break;
    case 14:
      result = 0x6168637275507369;
      break;
    case 15:
      result = 0x6C61746E65527369;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    case 17:
    case 18:
      result = 0x656C626179616C70;
      break;
    case 19:
      result = 0x676E69746172;
      break;
    case 20:
      result = 0x44657361656C6572;
      break;
    case 21:
      result = 0x64496E6F73616573;
      break;
    case 22:
      v3 = 0x6E6F73616573;
      goto LABEL_31;
    case 23:
      result = 0x754E6E6F73616573;
      break;
    case 24:
      result = 0x69546E6F73616573;
      break;
    case 25:
      result = 0x6C72556572616873;
      break;
    case 26:
      result = 0x74695474726F6873;
      break;
    case 27:
      result = 0x6449776F6873;
      break;
    case 28:
      result = 0x67616D49776F6873;
      break;
    case 29:
      result = 0x6C746954776F6873;
      break;
    case 30:
      result = 0x6D617473656D6974;
      break;
    case 31:
      result = 0x656C746974;
      break;
    case 32:
      result = 0x7372656C69617274;
      break;
    case 33:
      result = 1701869940;
      break;
    case 34:
      result = 7107189;
      break;
    case 35:
      v3 = 0x746567646977;
LABEL_31:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6D49000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26CC445B0(void *a1)
{
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC068, &qword_26CD3EC08);
  v113 = *(v270 - 8);
  v3 = *(v113 + 64);
  MEMORY[0x28223BE20](v270);
  v115 = v69 - v4;
  v5 = *v1;
  v111 = *(v1 + 8);
  v112 = v5;
  v6 = *(v1 + 96);
  v207 = *(v1 + 80);
  v208 = v6;
  v209 = *(v1 + 112);
  v7 = *(v1 + 128);
  v110 = *(v1 + 136);
  v210 = v7;
  v8 = *(v1 + 32);
  v203 = *(v1 + 16);
  v204 = v8;
  v9 = *(v1 + 64);
  v205 = *(v1 + 48);
  v206 = v9;
  v109 = *(v1 + 144);
  v108 = *(v1 + 152);
  v107 = *(v1 + 160);
  v106 = *(v1 + 161);
  v10 = *(v1 + 168);
  v104 = *(v1 + 176);
  v105 = v10;
  v103 = *(v1 + 184);
  v102 = *(v1 + 192);
  v101 = *(v1 + 200);
  v100 = *(v1 + 208);
  v11 = *(v1 + 216);
  v98 = *(v1 + 224);
  v99 = v11;
  v12 = *(v1 + 232);
  v96 = *(v1 + 240);
  v97 = v12;
  v13 = *(v1 + 248);
  v94 = *(v1 + 256);
  v95 = v13;
  v14 = *(v1 + 408);
  v219 = *(v1 + 392);
  v220 = v14;
  v221[0] = *(v1 + 424);
  *(v221 + 9) = *(v1 + 433);
  v15 = *(v1 + 344);
  v215 = *(v1 + 328);
  v216 = v15;
  v16 = *(v1 + 376);
  v217 = *(v1 + 360);
  v218 = v16;
  v17 = *(v1 + 280);
  v211 = *(v1 + 264);
  v212 = v17;
  v18 = *(v1 + 312);
  v213 = *(v1 + 296);
  v214 = v18;
  LODWORD(v13) = *(v1 + 449);
  v92 = *(v1 + 450);
  v93 = v13;
  LODWORD(v13) = *(v1 + 451);
  v90 = *(v1 + 452);
  v91 = v13;
  v19 = *(v1 + 456);
  v88 = *(v1 + 464);
  v89 = v19;
  v20 = *(v1 + 584);
  v228 = *(v1 + 568);
  v229 = v20;
  v21 = *(v1 + 616);
  v230 = *(v1 + 600);
  v231 = v21;
  v22 = *(v1 + 520);
  v224 = *(v1 + 504);
  v225 = v22;
  v23 = *(v1 + 552);
  v226 = *(v1 + 536);
  v227 = v23;
  v24 = *(v1 + 488);
  v222 = *(v1 + 472);
  v223 = v24;
  v25 = *(v1 + 632);
  v69[2] = *(v1 + 640);
  v69[3] = v25;
  v26 = *(v1 + 696);
  v234 = *(v1 + 680);
  v235 = v26;
  v236 = *(v1 + 712);
  v27 = *(v1 + 648);
  v233 = *(v1 + 664);
  v232 = v27;
  v73 = *(v1 + 720);
  v72 = *(v1 + 728);
  v28 = *(v1 + 921);
  v29 = *(v1 + 1193);
  v30 = *(v1 + 1465);
  v69[4] = *(v1 + 736);
  v31 = *(v1 + 784);
  v240 = *(v1 + 800);
  v239 = v31;
  v32 = *(v1 + 752);
  v238 = *(v1 + 768);
  v237 = v32;
  v33 = *(v1 + 848);
  v244 = *(v1 + 864);
  v243 = v33;
  v34 = *(v1 + 816);
  v242 = *(v1 + 832);
  v241 = v34;
  v35 = *(v1 + 896);
  v36 = *(v1 + 912);
  *(v247 + 9) = v28;
  v247[0] = v36;
  v37 = *(v1 + 880);
  v246 = v35;
  v245 = v37;
  v38 = *(v1 + 1168);
  v256 = *(v1 + 1152);
  v257 = v38;
  v258[0] = *(v1 + 1184);
  *(v258 + 9) = v29;
  v39 = *(v1 + 1104);
  v252 = *(v1 + 1088);
  v253 = v39;
  v40 = *(v1 + 1136);
  v254 = *(v1 + 1120);
  v255 = v40;
  v41 = *(v1 + 1040);
  v248 = *(v1 + 1024);
  v249 = v41;
  v42 = *(v1 + 1072);
  v250 = *(v1 + 1056);
  v251 = v42;
  v43 = *(v1 + 1440);
  v267 = *(v1 + 1424);
  v268 = v43;
  v269[0] = *(v1 + 1456);
  *(v269 + 9) = v30;
  v44 = *(v1 + 1376);
  v263 = *(v1 + 1360);
  v264 = v44;
  v45 = *(v1 + 1408);
  v265 = *(v1 + 1392);
  v266 = v45;
  v46 = *(v1 + 1296);
  v47 = *(v1 + 1312);
  v48 = *(v1 + 1328);
  v49 = *(v1 + 1344);
  v69[1] = *(v1 + 744);
  v71 = *(v1 + 944);
  v70 = *(v1 + 952);
  v50 = *(v1 + 960);
  v74 = *(v1 + 968);
  v75 = v50;
  v51 = *(v1 + 976);
  v76 = *(v1 + 984);
  v77 = v51;
  v52 = *(v1 + 992);
  v78 = *(v1 + 1000);
  v79 = v52;
  v53 = *(v1 + 1008);
  v80 = *(v1 + 1016);
  v81 = v53;
  v54 = *(v1 + 1216);
  v82 = *(v1 + 1224);
  v83 = v54;
  v55 = *(v1 + 1232);
  v84 = *(v1 + 1240);
  v87 = *(v1 + 1248);
  v56 = *(v1 + 1256);
  v85 = v55;
  v86 = v56;
  v57 = *(v1 + 1264);
  v58 = *(v1 + 1272);
  v59 = *(v1 + 1280);
  v60 = *(v1 + 1288);
  v259 = v46;
  v260 = v47;
  v261 = v48;
  v262 = v49;
  v61 = a1;
  v63 = a1[3];
  v62 = a1[4];
  __swift_project_boxed_opaque_existential_1(v61, v63);
  sub_26CC4CBA4();
  v64 = v115;
  sub_26CD3B16C();
  LOBYTE(v181) = 0;
  v65 = v270;
  v66 = v114;
  sub_26CD3AECC();
  if (v66)
  {
    return (*(v113 + 8))(v64, v65);
  }

  v114 = v57;
  v68 = v113;
  v199 = v207;
  v200 = v208;
  v201 = v209;
  v202 = v210;
  v195 = v203;
  v196 = v204;
  v197 = v205;
  v198 = v206;
  v194 = 1;
  sub_26CC1B4DC(&v203, &v181, &qword_2804BC000, &qword_26CD42AE0);
  sub_26CC4CF78();
  sub_26CD3AF1C();
  v192[4] = v199;
  v192[5] = v200;
  v192[6] = v201;
  v193 = v202;
  v192[0] = v195;
  v192[1] = v196;
  v192[2] = v197;
  v192[3] = v198;
  sub_26CC1B544(v192, &qword_2804BC000, &qword_26CD42AE0);
  *&v181 = v110;
  LOBYTE(v178[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  sub_26CC3F22C(&qword_280BB9BE0);
  sub_26CD3AF1C();
  LOBYTE(v181) = v109;
  LOBYTE(v178[0]) = 3;
  sub_26CC4CFCC();
  sub_26CD3AF1C();
  LOBYTE(v181) = 4;
  sub_26CD3AEFC();
  LOBYTE(v181) = v106;
  LOBYTE(v178[0]) = 5;
  sub_26CC4D020();
  sub_26CD3AF1C();
  LOBYTE(v181) = 6;
  sub_26CD3AECC();
  LOBYTE(v181) = 7;
  sub_26CD3AEEC();
  LOBYTE(v181) = 8;
  sub_26CD3AEFC();
  *&v181 = v99;
  *(&v181 + 1) = v98;
  *&v182 = v97;
  *(&v182 + 1) = v96;
  LOBYTE(v178[0]) = 9;
  sub_26CC4D074(v99, v98);
  sub_26CC4D0BC();
  sub_26CD3AF1C();
  sub_26CC1D170(v181, *(&v181 + 1));
  LOBYTE(v181) = 10;
  sub_26CD3AECC();
  v189 = v219;
  v190 = v220;
  v191[0] = v221[0];
  *(v191 + 9) = *(v221 + 9);
  v185 = v215;
  v186 = v216;
  v187 = v217;
  v188 = v218;
  v181 = v211;
  v182 = v212;
  v183 = v213;
  v184 = v214;
  v180 = 11;
  sub_26CC1B4DC(&v211, v178, &qword_2804BC028, &qword_26CD3EBE8);
  v112 = sub_26CC4D110();
  sub_26CD3AF1C();
  v178[8] = v189;
  v178[9] = v190;
  *v179 = v191[0];
  *&v179[9] = *(v191 + 9);
  v178[4] = v185;
  v178[5] = v186;
  v178[6] = v187;
  v178[7] = v188;
  v178[0] = v181;
  v178[1] = v182;
  v178[2] = v183;
  v178[3] = v184;
  sub_26CC1B544(v178, &qword_2804BC028, &qword_26CD3EBE8);
  LOBYTE(v147) = 12;
  sub_26CD3AEDC();
  LOBYTE(v147) = 13;
  sub_26CD3AEDC();
  LOBYTE(v147) = 14;
  sub_26CD3AEDC();
  LOBYTE(v147) = 15;
  sub_26CD3AEDC();
  LOBYTE(v147) = 16;
  sub_26CD3AECC();
  v174 = v228;
  v175 = v229;
  v176 = v230;
  v177 = v231;
  v170 = v224;
  v171 = v225;
  v172 = v226;
  v173 = v227;
  v168 = v222;
  v169 = v223;
  v167 = 17;
  sub_26CC1B4DC(&v222, &v147, &qword_2804BC038, &unk_26CD3EBF0);
  sub_26CC4D164();
  sub_26CD3AF1C();
  v166[6] = v174;
  v166[7] = v175;
  v166[8] = v176;
  v166[9] = v177;
  v166[2] = v170;
  v166[3] = v171;
  v166[4] = v172;
  v166[5] = v173;
  v166[0] = v168;
  v166[1] = v169;
  sub_26CC1B544(v166, &qword_2804BC038, &unk_26CD3EBF0);
  LOBYTE(v147) = 18;
  sub_26CD3AECC();
  v163 = v234;
  v164 = v235;
  v165 = v236;
  v162 = v233;
  v161 = v232;
  v160 = 19;
  sub_26CC1B4DC(&v232, &v147, &qword_2804BC048, &unk_26CD42A90);
  sub_26CC4D1B8();
  sub_26CD3AF1C();
  v158[2] = v163;
  v158[3] = v164;
  v159 = v165;
  v158[1] = v162;
  v158[0] = v161;
  sub_26CC1B544(v158, &qword_2804BC048, &unk_26CD42A90);
  LOBYTE(v147) = 20;
  sub_26CD3AEEC();
  LOBYTE(v147) = 21;
  sub_26CD3AECC();
  v155 = v245;
  v156 = v246;
  v157[0] = v247[0];
  *(v157 + 9) = *(v247 + 9);
  v151 = v241;
  v152 = v242;
  v153 = v243;
  v154 = v244;
  v147 = v237;
  v148 = v238;
  v149 = v239;
  v150 = v240;
  v146 = 22;
  sub_26CC1B4DC(&v237, v144, &qword_2804BC028, &qword_26CD3EBE8);
  sub_26CD3AF1C();
  v144[8] = v155;
  v144[9] = v156;
  *v145 = v157[0];
  *&v145[9] = *(v157 + 9);
  v144[4] = v151;
  v144[5] = v152;
  v144[6] = v153;
  v144[7] = v154;
  v144[0] = v147;
  v144[1] = v148;
  v144[2] = v149;
  v144[3] = v150;
  sub_26CC1B544(v144, &qword_2804BC028, &qword_26CD3EBE8);
  LOBYTE(v133) = 23;
  sub_26CD3AEFC();
  LOBYTE(v133) = 24;
  sub_26CD3AECC();
  LOBYTE(v133) = 25;
  sub_26CD3AECC();
  LOBYTE(v133) = 26;
  sub_26CD3AECC();
  LOBYTE(v133) = 27;
  sub_26CD3AECC();
  v141 = v256;
  v142 = v257;
  v143[0] = v258[0];
  *(v143 + 9) = *(v258 + 9);
  v138 = v253;
  v139 = v254;
  v140 = v255;
  v133 = v248;
  v134 = v249;
  v135 = v250;
  v136 = v251;
  v137 = v252;
  v132 = 28;
  sub_26CC1B4DC(&v248, v130, &qword_2804BC028, &qword_26CD3EBE8);
  sub_26CD3AF1C();
  v130[8] = v141;
  v130[9] = v142;
  *v131 = v143[0];
  *&v131[9] = *(v143 + 9);
  v130[4] = v137;
  v130[5] = v138;
  v130[6] = v139;
  v130[7] = v140;
  v130[0] = v133;
  v130[1] = v134;
  v130[2] = v135;
  v130[3] = v136;
  sub_26CC1B544(v130, &qword_2804BC028, &qword_26CD3EBE8);
  LOBYTE(v119) = 29;
  sub_26CD3AECC();
  LOBYTE(v119) = 30;
  sub_26CD3AEEC();
  LOBYTE(v119) = 31;
  sub_26CD3AECC();
  *&v119 = v114;
  LOBYTE(v116[0]) = 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC050, &qword_26CD3EC00);
  sub_26CC4CE74(&qword_2804BC0A8, sub_26CC4CF78);
  sub_26CD3AF1C();
  LOBYTE(v119) = v58;
  LOBYTE(v116[0]) = 33;
  sub_26CC4D20C();
  sub_26CD3AF1C();
  LOBYTE(v119) = 34;
  sub_26CD3AECC();
  v127 = v267;
  v128 = v268;
  v129[0] = v269[0];
  *(v129 + 9) = *(v269 + 9);
  v123 = v263;
  v124 = v264;
  v125 = v265;
  v126 = v266;
  v119 = v259;
  v120 = v260;
  v121 = v261;
  v122 = v262;
  v118 = 35;
  sub_26CC1B4DC(&v259, v116, &qword_2804BC028, &qword_26CD3EBE8);
  sub_26CD3AF1C();
  v116[8] = v127;
  v116[9] = v128;
  *v117 = v129[0];
  *&v117[9] = *(v129 + 9);
  v116[4] = v123;
  v116[5] = v124;
  v116[6] = v125;
  v116[7] = v126;
  v116[0] = v119;
  v116[1] = v120;
  v116[2] = v121;
  v116[3] = v122;
  sub_26CC1B544(v116, &qword_2804BC028, &qword_26CD3EBE8);
  return (*(v68 + 8))(v115, v270);
}

uint64_t sub_26CC459B8(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v75 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBFE8, &qword_26CD3EBE0);
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = *(v76 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v64 - v6;
  v514 = 1;
  v511 = 1;
  v509 = 1;
  sub_26CC4CB54(&v516);
  v505 = v524;
  v506 = v525;
  v507[0] = v526[0];
  *(v507 + 9) = *(v526 + 9);
  v501 = v520;
  v502 = v521;
  v503 = v522;
  v504 = v523;
  v497 = v516;
  v498 = v517;
  v499 = v518;
  v500 = v519;
  sub_26CC4CB80(v527);
  v491 = v527[6];
  v492 = v527[7];
  v493 = v527[8];
  v494 = v527[9];
  v487 = v527[2];
  v488 = v527[3];
  v489 = v527[4];
  v490 = v527[5];
  v485 = v527[0];
  v486 = v527[1];
  v479 = v524;
  v480 = v525;
  v481[0] = v526[0];
  *(v481 + 9) = *(v526 + 9);
  v475 = v520;
  v476 = v521;
  v477 = v522;
  v478 = v523;
  v471 = v516;
  v472 = v517;
  v473 = v518;
  v474 = v519;
  v465 = v524;
  v466 = v525;
  v467[0] = v526[0];
  *(v467 + 9) = *(v526 + 9);
  v461 = v520;
  v462 = v521;
  v463 = v522;
  v464 = v523;
  v457 = v516;
  v458 = v517;
  v459 = v518;
  v460 = v519;
  v450 = v524;
  v451 = v525;
  *v452 = v526[0];
  *&v452[9] = *(v526 + 9);
  v446 = v520;
  v447 = v521;
  v448 = v522;
  v449 = v523;
  v442 = v516;
  v443 = v517;
  v483 = 1;
  v469 = 1;
  v455 = 1;
  v444 = v518;
  v445 = v519;
  v8 = v2[3];
  v9 = v2[4];
  v78 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v8);
  sub_26CC4CBA4();
  sub_26CD3B15C();
  if (!v1)
  {
    v16 = v76;
    LOBYTE(v299) = 0;
    v73 = sub_26CD3ADDC();
    v74 = v17;
    v283 = 1;
    sub_26CC4CC28();
    sub_26CD3AE2C();
    v125 = v284;
    v131 = v286;
    v132 = v287;
    v133 = v288;
    v18 = v289;
    v19 = v290;
    v140 = v291;
    v141 = v292;
    v71 = v293;
    v130 = v294;
    v128 = v285;
    v129 = v295;
    v126 = v297;
    v127 = v296;
    v124 = v298;
    memset(v277, 0, sizeof(v277));
    v278 = 0;
    v279 = 1;
    v280 = 0u;
    v281 = 0u;
    v282 = 0;
    sub_26CC1B544(v277, &qword_2804BC000, &qword_26CD42AE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    v155[0] = 2;
    sub_26CC3F22C(&qword_2804BBE98);
    v72 = v7;
    sub_26CD3AE2C();
    v135 = v19;
    v134 = v18;
    v123 = v299;
    v155[0] = 3;
    sub_26CC4CC7C();
    sub_26CD3AE2C();
    v22 = v299;
    LOBYTE(v299) = 4;
    v122 = sub_26CD3AE0C();
    v514 = v23 & 1;
    v155[0] = 5;
    sub_26CC4CCD0();
    sub_26CD3AE2C();
    LODWORD(v19) = v299;
    LOBYTE(v299) = 6;
    v24 = sub_26CD3ADDC();
    v121 = v19;
    v119 = v24;
    v120 = v25;
    LOBYTE(v299) = 7;
    v26 = sub_26CD3ADFC();
    v70 = v22;
    v118 = v26;
    v511 = v27 & 1;
    LOBYTE(v299) = 8;
    v28 = sub_26CD3AE0C();
    v528 = 0;
    v116 = v28;
    v29 = v140;
    v30 = v141;
    v509 = v31 & 1;
    v155[0] = 9;
    sub_26CC4CD24();
    v32 = v528;
    sub_26CD3AE2C();
    v528 = v32;
    if (v32)
    {
      (*(v16 + 8))(v72, v77);
      v107 = 0;
      v108 = 0;
      v106 = 0;
      v115 = 0;
      v112 = 0;
      v109 = 0;
      v110 = 0;
      v117 = 0;
      v97 = 0;
      v98 = 0;
      v86 = 0;
      v87 = 0;
      v102 = 0;
      v103 = 0;
      v94 = 0;
      v95 = 0;
      v91 = 0;
      v92 = 0;
      v84 = 0;
      v85 = 0;
      v99 = 0;
      v88 = 0;
      v89 = 0;
      v93 = 0;
      v82 = 0;
      v83 = 0;
      v104 = 0;
      v105 = 0;
      v101 = 0;
      v96 = 0;
      v90 = 0;
      v100 = 0;
      v136 = 0;
      v139 = 0;
      v138 = 0;
      v113 = 0;
      v114 = 0;
      v111 = 0;
      v137 = 2;
      v79 = 5;
      v80 = 1;
      v81 = 0;
      v13 = 2;
      v14 = 1;
      v11 = v73;
      v10 = v74;
      v12 = v71;
      v15 = v70;
      goto LABEL_4;
    }

    v111 = v299;
    v69 = v300;
    v113 = v301;
    v114 = v302;
    sub_26CC1D170(0, 1);
    LOBYTE(v299) = 10;
    v33 = v528;
    v138 = sub_26CD3ADDC();
    v139 = v34;
    v528 = v33;
    if (v33)
    {
      (*(v16 + 8))(v72, v77);
      v107 = 0;
      v108 = 0;
      v106 = 0;
      v115 = 0;
      v112 = 0;
      v109 = 0;
      v110 = 0;
      v117 = 0;
      v97 = 0;
      v98 = 0;
      v86 = 0;
      v87 = 0;
      v102 = 0;
      v103 = 0;
      v94 = 0;
      v95 = 0;
      v91 = 0;
      v92 = 0;
      v84 = 0;
      v85 = 0;
      v99 = 0;
      v88 = 0;
      v89 = 0;
      v93 = 0;
      v82 = 0;
      v83 = 0;
      v104 = 0;
      v105 = 0;
      v101 = 0;
      v81 = 0;
      v96 = 0;
      v90 = 0;
      v100 = 0;
      v136 = 0;
      v139 = 0;
      v138 = 0;
LABEL_13:
      v137 = 2;
      v79 = 5;
      v80 = 1;
      v13 = 2;
      v11 = v73;
      v10 = v74;
      v12 = v71;
      v15 = v70;
      v14 = v69;
      goto LABEL_4;
    }

    v265 = 11;
    v68 = sub_26CC4CD78();
    v35 = v528;
    sub_26CD3AE2C();
    v528 = v35;
    if (v35)
    {
      goto LABEL_12;
    }

    v260 = v274;
    v261 = v275;
    v262[0] = v276[0];
    *(v262 + 9) = *(v276 + 9);
    v256 = v270;
    v257 = v271;
    v258 = v272;
    v259 = v273;
    v252 = v266;
    v253 = v267;
    v254 = v268;
    v255 = v269;
    v263[8] = v505;
    v263[9] = v506;
    *v264 = v507[0];
    *&v264[9] = *(v507 + 9);
    v263[4] = v501;
    v263[5] = v502;
    v263[6] = v503;
    v263[7] = v504;
    v263[0] = v497;
    v263[1] = v498;
    v263[2] = v499;
    v263[3] = v500;
    sub_26CC1B544(v263, &qword_2804BC028, &qword_26CD3EBE8);
    v505 = v260;
    v506 = v261;
    v507[0] = v262[0];
    *(v507 + 9) = *(v262 + 9);
    v501 = v256;
    v502 = v257;
    v503 = v258;
    v504 = v259;
    v497 = v252;
    v498 = v253;
    v499 = v254;
    v500 = v255;
    LOBYTE(v299) = 12;
    v36 = v528;
    v67 = sub_26CD3ADEC();
    v528 = v36;
    if (v36)
    {
LABEL_12:
      (*(v16 + 8))(v72, v77);
      v107 = 0;
      v108 = 0;
      v106 = 0;
      v115 = 0;
      v112 = 0;
      v109 = 0;
      v110 = 0;
      v117 = 0;
      v97 = 0;
      v98 = 0;
      v86 = 0;
      v87 = 0;
      v102 = 0;
      v103 = 0;
      v94 = 0;
      v95 = 0;
      v91 = 0;
      v92 = 0;
      v84 = 0;
      v85 = 0;
      v99 = 0;
      v88 = 0;
      v89 = 0;
      v93 = 0;
      v82 = 0;
      v83 = 0;
      v104 = 0;
      v105 = 0;
      v101 = 0;
      v81 = 0;
      v96 = 0;
      v90 = 0;
      v100 = 0;
      v136 = 0;
      goto LABEL_13;
    }

    LOBYTE(v299) = 13;
    v137 = sub_26CD3ADEC();
    v528 = 0;
    LOBYTE(v299) = 14;
    v136 = sub_26CD3ADEC();
    v528 = 0;
    LOBYTE(v299) = 15;
    v100 = sub_26CD3ADEC();
    v528 = 0;
    LOBYTE(v299) = 16;
    v90 = sub_26CD3ADDC();
    v96 = v37;
    v528 = 0;
    v241 = 17;
    sub_26CC4CDCC();
    v38 = v528;
    sub_26CD3AE2C();
    v528 = v38;
    if (v38)
    {
      goto LABEL_16;
    }

    v236 = v248;
    v237 = v249;
    v238 = v250;
    v239 = v251;
    v232 = v244;
    v233 = v245;
    v234 = v246;
    v235 = v247;
    v230 = v242;
    v231 = v243;
    v240[6] = v491;
    v240[7] = v492;
    v240[8] = v493;
    v240[9] = v494;
    v240[2] = v487;
    v240[3] = v488;
    v240[4] = v489;
    v240[5] = v490;
    v240[0] = v485;
    v240[1] = v486;
    sub_26CC1B544(v240, &qword_2804BC038, &unk_26CD3EBF0);
    v491 = v236;
    v492 = v237;
    v493 = v238;
    v494 = v239;
    v487 = v232;
    v488 = v233;
    v489 = v234;
    v490 = v235;
    v485 = v230;
    v486 = v231;
    LOBYTE(v299) = 18;
    v39 = v528;
    v81 = sub_26CD3ADDC();
    v82 = v40;
    v528 = v39;
    if (v39)
    {
LABEL_16:
      (*(v16 + 8))(v72, v77);
      v107 = 0;
      v108 = 0;
      v106 = 0;
      v115 = 0;
      v112 = 0;
      v109 = 0;
      v110 = 0;
      v117 = 0;
      v97 = 0;
      v98 = 0;
      v86 = 0;
      v87 = 0;
      v102 = 0;
      v103 = 0;
      v94 = 0;
      v95 = 0;
      v91 = 0;
      v92 = 0;
      v84 = 0;
      v85 = 0;
      v99 = 0;
      v88 = 0;
      v89 = 0;
      v93 = 0;
      v82 = 0;
      v83 = 0;
      v104 = 0;
      v105 = 0;
      v101 = 0;
      v81 = 0;
    }

    else
    {
      v220 = 19;
      sub_26CC4CE20();
      v41 = v528;
      sub_26CD3AE2C();
      v528 = v41;
      if (!v41)
      {
        v80 = v222;
        v107 = v223;
        v108 = v221;
        v106 = v224;
        v115 = v225;
        v112 = v226;
        v109 = v228;
        v110 = v227;
        v117 = v229;
        v218[0] = xmmword_26CD3E690;
        memset(&v218[1], 0, 48);
        v219 = 0;
        sub_26CC1B544(v218, &qword_2804BC048, &unk_26CD42A90);
        LOBYTE(v299) = 20;
        v42 = v528;
        v104 = sub_26CD3ADFC();
        v528 = v42;
        if (v42)
        {
          (*(v16 + 8))(v72, v77);
          v97 = 0;
          v98 = 0;
          v86 = 0;
          v87 = 0;
          v102 = 0;
          v103 = 0;
          v94 = 0;
          v95 = 0;
          v91 = 0;
          v92 = 0;
          v84 = 0;
          v85 = 0;
          v99 = 0;
          v88 = 0;
          v89 = 0;
          v93 = 0;
          v83 = 0;
          v104 = 0;
          v105 = 0;
          v101 = 0;
        }

        else
        {
          v483 = v43 & 1;
          LOBYTE(v299) = 21;
          v101 = sub_26CD3ADDC();
          v105 = v44;
          v528 = 0;
          v206 = 22;
          sub_26CD3AE2C();
          v528 = 0;
          v201 = v215;
          v202 = v216;
          v203[0] = v217[0];
          *(v203 + 9) = *(v217 + 9);
          v197 = v211;
          v198 = v212;
          v199 = v213;
          v200 = v214;
          v193 = v207;
          v194 = v208;
          v195 = v209;
          v196 = v210;
          v204[8] = v479;
          v204[9] = v480;
          *v205 = v481[0];
          *&v205[9] = *(v481 + 9);
          v204[4] = v475;
          v204[5] = v476;
          v204[6] = v477;
          v204[7] = v478;
          v204[0] = v471;
          v204[1] = v472;
          v204[2] = v473;
          v204[3] = v474;
          sub_26CC1B544(v204, &qword_2804BC028, &qword_26CD3EBE8);
          v479 = v201;
          v480 = v202;
          v481[0] = v203[0];
          *(v481 + 9) = *(v203 + 9);
          v475 = v197;
          v476 = v198;
          v477 = v199;
          v478 = v200;
          v471 = v193;
          v472 = v194;
          v473 = v195;
          v474 = v196;
          LOBYTE(v299) = 23;
          v45 = v528;
          v84 = sub_26CD3AE0C();
          v528 = v45;
          if (v45)
          {
            (*(v16 + 8))(v72, v77);
            v97 = 0;
            v98 = 0;
            v86 = 0;
            v87 = 0;
            v102 = 0;
            v103 = 0;
            v94 = 0;
            v95 = 0;
            v91 = 0;
            v92 = 0;
            v84 = 0;
            v85 = 0;
            v99 = 0;
            v88 = 0;
            v89 = 0;
            v93 = 0;
            v83 = 0;
          }

          else
          {
            v469 = v46 & 1;
            LOBYTE(v299) = 24;
            v83 = sub_26CD3ADDC();
            v88 = v47;
            v528 = 0;
            LOBYTE(v299) = 25;
            v86 = sub_26CD3ADDC();
            v93 = v48;
            v528 = 0;
            LOBYTE(v299) = 26;
            v89 = sub_26CD3ADDC();
            v99 = v49;
            v528 = 0;
            LOBYTE(v299) = 27;
            v94 = sub_26CD3ADDC();
            v102 = v50;
            v528 = 0;
            v181 = 28;
            sub_26CD3AE2C();
            v528 = 0;
            v176 = v190;
            v177 = v191;
            v178[0] = v192[0];
            *(v178 + 9) = *(v192 + 9);
            v172 = v186;
            v173 = v187;
            v174 = v188;
            v175 = v189;
            v168 = v182;
            v169 = v183;
            v170 = v184;
            v171 = v185;
            v179[8] = v465;
            v179[9] = v466;
            *v180 = v467[0];
            *&v180[9] = *(v467 + 9);
            v179[4] = v461;
            v179[5] = v462;
            v179[6] = v463;
            v179[7] = v464;
            v179[0] = v457;
            v179[1] = v458;
            v179[2] = v459;
            v179[3] = v460;
            sub_26CC1B544(v179, &qword_2804BC028, &qword_26CD3EBE8);
            v465 = v176;
            v466 = v177;
            v467[0] = v178[0];
            *(v467 + 9) = *(v178 + 9);
            v461 = v172;
            v462 = v173;
            v463 = v174;
            v464 = v175;
            v457 = v168;
            v458 = v169;
            v459 = v170;
            v460 = v171;
            LOBYTE(v299) = 29;
            v51 = v528;
            v85 = sub_26CD3ADDC();
            v92 = v52;
            v528 = v51;
            if (v51)
            {
              (*(v16 + 8))(v72, v77);
              v97 = 0;
              v98 = 0;
              v87 = 0;
              v103 = 0;
              v95 = 0;
              v91 = 0;
              v92 = 0;
              v85 = 0;
            }

            else
            {
              LOBYTE(v299) = 30;
              v91 = sub_26CD3ADFC();
              v528 = 0;
              v455 = v53 & 1;
              LOBYTE(v299) = 31;
              v95 = sub_26CD3ADDC();
              v103 = v54;
              v528 = 0;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC050, &qword_26CD3EC00);
              v155[0] = 32;
              sub_26CC4CE74(&qword_2804BC058, sub_26CC4CC28);
              v55 = v528;
              sub_26CD3AE2C();
              v528 = v55;
              if (v55)
              {
                (*(v16 + 8))(v72, v77);
                v97 = 0;
                v98 = 0;
                v87 = 0;
              }

              else
              {
                v98 = v299;
                v155[0] = 33;
                sub_26CC4CEEC();
                v56 = v528;
                sub_26CD3AE2C();
                v528 = v56;
                if (!v56)
                {
                  v79 = v299;
                  LOBYTE(v299) = 34;
                  v87 = sub_26CD3ADDC();
                  v97 = v57;
                  v528 = 0;
                  v156 = 35;
                  sub_26CD3AE2C();
                  v528 = 0;
                  (*(v16 + 8))(v72, v77);
                  v150 = v165;
                  v151 = v166;
                  v152[0] = v167[0];
                  *(v152 + 9) = *(v167 + 9);
                  v146 = v161;
                  v147 = v162;
                  v148 = v163;
                  v149 = v164;
                  v142 = v157;
                  v143 = v158;
                  v144 = v159;
                  v145 = v160;
                  v153[8] = v450;
                  v153[9] = v451;
                  v154[0] = *v452;
                  *(v154 + 9) = *&v452[9];
                  v153[4] = v446;
                  v153[5] = v447;
                  v153[6] = v448;
                  v153[7] = v449;
                  v153[0] = v442;
                  v153[1] = v443;
                  v153[2] = v444;
                  v153[3] = v445;
                  sub_26CC1B544(v153, &qword_2804BC028, &qword_26CD3EBE8);
                  v450 = v150;
                  v451 = v151;
                  *v452 = v152[0];
                  *&v452[9] = *(v152 + 9);
                  v446 = v146;
                  v447 = v147;
                  v448 = v148;
                  v449 = v149;
                  v442 = v142;
                  v443 = v143;
                  v444 = v144;
                  v445 = v145;
                  *&v155[296] = v499;
                  *&v155[312] = v500;
                  *&v155[264] = v497;
                  *&v155[280] = v498;
                  *&v155[360] = v503;
                  *&v155[376] = v504;
                  *&v155[328] = v501;
                  *&v155[344] = v502;
                  *&v155[433] = *(v507 + 9);
                  *&v155[408] = v506;
                  *&v155[424] = v507[0];
                  *&v155[392] = v505;
                  *&v155[568] = v491;
                  *&v155[584] = v492;
                  *&v155[600] = v493;
                  *&v155[616] = v494;
                  *&v155[504] = v487;
                  *&v155[520] = v488;
                  *&v155[536] = v489;
                  *&v155[552] = v490;
                  *&v155[472] = v485;
                  *&v155[488] = v486;
                  *&v155[921] = *(v481 + 9);
                  *&v155[880] = v479;
                  *&v155[896] = v480;
                  *&v155[912] = v481[0];
                  *&v155[816] = v475;
                  *&v155[832] = v476;
                  *&v155[848] = v477;
                  *&v155[864] = v478;
                  *&v155[752] = v471;
                  *&v155[768] = v472;
                  *&v155[784] = v473;
                  *&v155[800] = v474;
                  *&v155[1193] = *(v467 + 9);
                  *&v155[1152] = v465;
                  *&v155[1168] = v466;
                  *&v155[1184] = v467[0];
                  *&v155[1088] = v461;
                  *&v155[1104] = v462;
                  *&v155[1120] = v463;
                  *&v155[1136] = v464;
                  *&v155[1024] = v457;
                  *&v155[1040] = v458;
                  *&v155[1056] = v459;
                  *&v155[1072] = v460;
                  *&v155[1465] = *(v152 + 9);
                  *&v155[1424] = v150;
                  *&v155[1440] = v151;
                  *&v155[1456] = v152[0];
                  *&v155[1360] = v146;
                  *&v155[1376] = v147;
                  *&v155[1392] = v148;
                  *&v155[1408] = v149;
                  *v155 = v73;
                  *&v155[8] = v74;
                  *&v155[16] = v125;
                  *&v155[24] = v128;
                  *&v155[32] = v131;
                  *&v155[40] = v132;
                  *&v155[48] = v133;
                  *&v155[56] = v134;
                  *&v155[64] = v135;
                  *&v155[72] = v29;
                  *&v155[80] = v30;
                  *&v155[88] = v71;
                  *&v155[96] = v130;
                  *&v155[104] = v129;
                  *&v155[112] = v127;
                  *&v155[120] = v126;
                  *&v155[128] = v124;
                  *&v155[136] = v123;
                  v58 = v70;
                  v155[144] = v70;
                  *&v155[145] = *v515;
                  *&v155[148] = *&v515[3];
                  *&v155[152] = v122;
                  LODWORD(v68) = v514;
                  v155[160] = v514;
                  v155[161] = v121;
                  *&v155[162] = v512;
                  *&v155[166] = v513;
                  *&v155[168] = v119;
                  *&v155[176] = v120;
                  *&v155[184] = v118;
                  v66 = v511;
                  v155[192] = v511;
                  *&v155[196] = *&v510[3];
                  *&v155[193] = *v510;
                  *&v155[200] = v116;
                  v65 = v509;
                  v155[208] = v509;
                  *&v155[212] = *&v508[3];
                  *&v155[209] = *v508;
                  *&v155[216] = v111;
                  *&v155[224] = v69;
                  *&v155[232] = v113;
                  *&v155[240] = v114;
                  *&v155[248] = v138;
                  *&v155[256] = v139;
                  v155[449] = v67;
                  v155[450] = v137;
                  v155[451] = v136;
                  v155[452] = v100;
                  *&v155[453] = v495;
                  v155[455] = v496;
                  *&v155[456] = v90;
                  *&v155[464] = v96;
                  *&v155[632] = v81;
                  *&v155[640] = v82;
                  v60 = v108;
                  v59 = v109;
                  *&v155[648] = v108;
                  *&v155[656] = v80;
                  *&v155[664] = v107;
                  *&v155[672] = v106;
                  v61 = v115;
                  *&v155[680] = v115;
                  v62 = v112;
                  *&v155[688] = v112;
                  v63 = v110;
                  *&v155[696] = v110;
                  *&v155[704] = v109;
                  v155[712] = v117;
                  *&v155[713] = *v484;
                  *&v155[716] = *&v484[3];
                  *&v155[720] = v104;
                  *&v155[729] = *v482;
                  *&v155[937] = *v470;
                  *&v155[953] = *v468;
                  *&v155[1209] = *v456;
                  *&v155[1241] = *v454;
                  LODWORD(v72) = v483;
                  v155[728] = v483;
                  *&v155[732] = *&v482[3];
                  *&v155[736] = v101;
                  *&v155[744] = v105;
                  *&v155[940] = *&v470[3];
                  *&v155[944] = v84;
                  *&v155[1273] = *v453;
                  LODWORD(v76) = v469;
                  v155[952] = v469;
                  *&v155[956] = *&v468[3];
                  *&v155[960] = v83;
                  *&v155[968] = v88;
                  *&v155[976] = v86;
                  *&v155[984] = v93;
                  *&v155[992] = v89;
                  *&v155[1000] = v99;
                  *&v155[1008] = v94;
                  *&v155[1016] = v102;
                  *&v155[1212] = *&v456[3];
                  *&v155[1216] = v85;
                  *&v155[1224] = v92;
                  *&v155[1232] = v91;
                  *&v155[1244] = *&v454[3];
                  *&v155[1276] = *&v453[3];
                  LODWORD(v77) = v455;
                  v155[1240] = v455;
                  *&v155[1248] = v95;
                  *&v155[1256] = v103;
                  *&v155[1264] = v98;
                  v155[1272] = v79;
                  *&v155[1280] = v87;
                  *&v155[1288] = v97;
                  *&v155[1296] = v142;
                  *&v155[1312] = v143;
                  *&v155[1328] = v144;
                  *&v155[1344] = v145;
                  memcpy(v75, v155, 0x5C9uLL);
                  sub_26CC4CF40(v155, &v299);
                  __swift_destroy_boxed_opaque_existential_1(v78);
                  v317 = v58;
                  v299 = v73;
                  v300 = v74;
                  v301 = v125;
                  v302 = v128;
                  v303 = v131;
                  v304 = v132;
                  v305 = v133;
                  v306 = v134;
                  v307 = v135;
                  v308 = v140;
                  v309 = v141;
                  v310 = v71;
                  v311 = v130;
                  v312 = v129;
                  v313 = v127;
                  v314 = v126;
                  v315 = v124;
                  v316 = v123;
                  v319 = v122;
                  v320 = v68;
                  v321 = v121;
                  v324 = v119;
                  v325 = v120;
                  v326 = v118;
                  v327 = v66;
                  v329 = v116;
                  v330 = v65;
                  v332 = v111;
                  v333 = v69;
                  v334 = v113;
                  v335 = v114;
                  v336 = v138;
                  v337 = v139;
                  v349 = v67;
                  v350 = v137;
                  v351 = v136;
                  v352 = v100;
                  v355 = v90;
                  v356 = v96;
                  v367 = v81;
                  v368 = v82;
                  v369 = v60;
                  v370 = v80;
                  v371 = v107;
                  v372 = v106;
                  v373 = v61;
                  v374 = v62;
                  v375 = v63;
                  v376 = v59;
                  v353 = v495;
                  *v318 = *v515;
                  *&v318[3] = *&v515[3];
                  v322 = v512;
                  v323 = v513;
                  *v328 = *v510;
                  *&v328[3] = *&v510[3];
                  *&v331[3] = *&v508[3];
                  *v331 = *v508;
                  v340 = v499;
                  v341 = v500;
                  v338 = v497;
                  v339 = v498;
                  v344 = v503;
                  v345 = v504;
                  v342 = v501;
                  v343 = v502;
                  *&v348[9] = *(v507 + 9);
                  v347 = v506;
                  *v348 = v507[0];
                  v346 = v505;
                  v354 = v496;
                  v363 = v491;
                  v364 = v492;
                  v365 = v493;
                  v366 = v494;
                  v359 = v487;
                  v360 = v488;
                  v361 = v489;
                  v362 = v490;
                  v357 = v485;
                  v358 = v486;
                  v377 = v117;
                  *v378 = *v484;
                  *&v378[3] = *&v484[3];
                  v379 = v104;
                  v380 = v72;
                  *v381 = *v482;
                  *&v381[3] = *&v482[3];
                  v382 = v101;
                  v383 = v105;
                  *&v394[9] = *(v481 + 9);
                  v392 = v479;
                  v393 = v480;
                  *v394 = v481[0];
                  v388 = v475;
                  v389 = v476;
                  v390 = v477;
                  v391 = v478;
                  v384 = v471;
                  v385 = v472;
                  v386 = v473;
                  v387 = v474;
                  *v395 = *v470;
                  *&v395[3] = *&v470[3];
                  v396 = v84;
                  v397 = v76;
                  *v398 = *v468;
                  *&v398[3] = *&v468[3];
                  v399 = v83;
                  v400 = v88;
                  v401 = v86;
                  v402 = v93;
                  v403 = v89;
                  v404 = v99;
                  v405 = v94;
                  v406 = v102;
                  *&v417[9] = *(v467 + 9);
                  v415 = v465;
                  v416 = v466;
                  *v417 = v467[0];
                  v411 = v461;
                  v412 = v462;
                  v413 = v463;
                  v414 = v464;
                  v407 = v457;
                  v408 = v458;
                  v409 = v459;
                  v410 = v460;
                  *v418 = *v456;
                  *&v418[3] = *&v456[3];
                  v419 = v85;
                  v420 = v92;
                  v421 = v91;
                  v422 = v77;
                  *v423 = *v454;
                  *&v423[3] = *&v454[3];
                  v424 = v95;
                  v425 = v103;
                  v426 = v98;
                  v427 = v79;
                  *v428 = *v453;
                  *&v428[3] = *&v453[3];
                  v429 = v87;
                  v430 = v97;
                  v20 = *&v452[9];
                  goto LABEL_5;
                }

                (*(v16 + 8))(v72, v77);
                v97 = 0;
                v87 = 0;
              }
            }
          }
        }

        v79 = 5;
        goto LABEL_18;
      }

      (*(v16 + 8))(v72, v77);
      v107 = 0;
      v108 = 0;
      v106 = 0;
      v115 = 0;
      v112 = 0;
      v109 = 0;
      v110 = 0;
      v117 = 0;
      v97 = 0;
      v98 = 0;
      v86 = 0;
      v87 = 0;
      v102 = 0;
      v103 = 0;
      v94 = 0;
      v95 = 0;
      v91 = 0;
      v92 = 0;
      v84 = 0;
      v85 = 0;
      v99 = 0;
      v88 = 0;
      v89 = 0;
      v93 = 0;
      v83 = 0;
      v104 = 0;
      v105 = 0;
      v101 = 0;
    }

    v79 = 5;
    v80 = 1;
LABEL_18:
    v11 = v73;
    v10 = v74;
    v12 = v71;
    v15 = v70;
    v14 = v69;
    v13 = v67;
    goto LABEL_4;
  }

  v528 = v1;
  v141 = 0;
  v140 = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v128 = 0;
  v129 = 0;
  v125 = 0;
  v126 = 0;
  v130 = 0;
  v127 = 0;
  v124 = 0;
  v107 = 0;
  v108 = 0;
  v106 = 0;
  v115 = 0;
  v112 = 0;
  v109 = 0;
  v110 = 0;
  v117 = 0;
  v97 = 0;
  v98 = 0;
  v86 = 0;
  v87 = 0;
  v102 = 0;
  v103 = 0;
  v94 = 0;
  v95 = 0;
  v91 = 0;
  v92 = 0;
  v84 = 0;
  v85 = 0;
  v99 = 0;
  v88 = 0;
  v89 = 0;
  v93 = 0;
  v82 = 0;
  v83 = 0;
  v104 = 0;
  v105 = 0;
  v101 = 0;
  v81 = 0;
  v96 = 0;
  v90 = 0;
  v100 = 0;
  v136 = 0;
  v139 = 0;
  v138 = 0;
  v113 = 0;
  v114 = 0;
  v111 = 0;
  v116 = 0;
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v122 = 0;
  v123 = 0;
  v10 = 0;
  v11 = 0;
  v121 = 13;
  v137 = 2;
  v79 = 5;
  v12 = 1;
  v80 = 1;
  v13 = 2;
  v14 = 1;
  v15 = 2;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v78);
  v299 = v11;
  v300 = v10;
  v301 = v125;
  v302 = v128;
  v303 = v131;
  v304 = v132;
  v305 = v133;
  v306 = v134;
  v307 = v135;
  v308 = v140;
  v309 = v141;
  v310 = v12;
  v311 = v130;
  v312 = v129;
  v313 = v127;
  v314 = v126;
  v315 = v124;
  v316 = v123;
  v317 = v15;
  v319 = v122;
  v321 = v121;
  v324 = v119;
  v325 = v120;
  v326 = v118;
  v329 = v116;
  v332 = v111;
  v333 = v14;
  v334 = v113;
  v335 = v114;
  v336 = v138;
  v337 = v139;
  v349 = v13;
  v350 = v137;
  v351 = v136;
  v352 = v100;
  v355 = v90;
  v356 = v96;
  v367 = v81;
  v368 = v82;
  v369 = v108;
  v370 = v80;
  v371 = v107;
  v372 = v106;
  v353 = v495;
  *v318 = *v515;
  *&v318[3] = *&v515[3];
  v320 = v514;
  v322 = v512;
  v323 = v513;
  v327 = v511;
  *&v328[3] = *&v510[3];
  *v328 = *v510;
  v330 = v509;
  *&v331[3] = *&v508[3];
  *v331 = *v508;
  v340 = v499;
  v341 = v500;
  v338 = v497;
  v339 = v498;
  v344 = v503;
  v345 = v504;
  v342 = v501;
  v343 = v502;
  *&v348[9] = *(v507 + 9);
  v347 = v506;
  *v348 = v507[0];
  v346 = v505;
  v354 = v496;
  v363 = v491;
  v364 = v492;
  v365 = v493;
  v366 = v494;
  v359 = v487;
  v360 = v488;
  v361 = v489;
  v362 = v490;
  v357 = v485;
  v358 = v486;
  v373 = v115;
  v374 = v112;
  v375 = v110;
  v376 = v109;
  v377 = v117;
  *v378 = *v484;
  *&v378[3] = *&v484[3];
  v379 = v104;
  v380 = v483;
  *v381 = *v482;
  *&v381[3] = *&v482[3];
  v382 = v101;
  v383 = v105;
  *&v394[9] = *(v481 + 9);
  v392 = v479;
  v393 = v480;
  *v394 = v481[0];
  v388 = v475;
  v389 = v476;
  v390 = v477;
  v391 = v478;
  v384 = v471;
  v385 = v472;
  v386 = v473;
  v387 = v474;
  *v395 = *v470;
  *&v395[3] = *&v470[3];
  v396 = v84;
  v397 = v469;
  *v398 = *v468;
  *&v398[3] = *&v468[3];
  v399 = v83;
  v400 = v88;
  v401 = v86;
  v402 = v93;
  v403 = v89;
  v404 = v99;
  v405 = v94;
  v406 = v102;
  *&v417[9] = *(v467 + 9);
  v415 = v465;
  v416 = v466;
  *v417 = v467[0];
  v411 = v461;
  v412 = v462;
  v413 = v463;
  v414 = v464;
  v407 = v457;
  v408 = v458;
  v409 = v459;
  v410 = v460;
  *v418 = *v456;
  *&v418[3] = *&v456[3];
  v419 = v85;
  v420 = v92;
  v421 = v91;
  v422 = v455;
  *v423 = *v454;
  *&v423[3] = *&v454[3];
  v424 = v95;
  v425 = v103;
  v426 = v98;
  v427 = v79;
  *v428 = *v453;
  *&v428[3] = *&v453[3];
  v429 = v87;
  v430 = v97;
  v20 = *&v452[9];
LABEL_5:
  *(v441 + 9) = v20;
  v439 = v450;
  v440 = v451;
  v441[0] = *v452;
  v435 = v446;
  v436 = v447;
  v437 = v448;
  v438 = v449;
  v431 = v442;
  v432 = v443;
  v433 = v444;
  v434 = v445;
  return sub_26CC4CBF8(&v299);
}

uint64_t sub_26CC48B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26CC49FF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26CC48B34(uint64_t a1)
{
  v2 = sub_26CC4CBA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC48B70(uint64_t a1)
{
  v2 = sub_26CC4CBA4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_26CC48BDC(char a1)
{
  result = 0x7954676E69726961;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x496C656E6E616863;
      break;
    case 3:
      result = 0x49746E65746E6F63;
      break;
    case 4:
      result = 0x6E6F697461727564;
      break;
    case 5:
      result = 0x6C616E7265747865;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 25705;
      break;
    case 8:
      result = 0x6C7469746E457369;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0x73656E7574497369;
      break;
    case 12:
      result = 0x7469746275537369;
      break;
    case 13:
      result = 0x6C6F436F65646976;
      break;
    case 14:
      result = 0x6175516F65646976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26CC48D94(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC140, &qword_26CD3F000);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC4D9F4();
  sub_26CD3B16C();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v36) = 0;
  sub_26CD3AECC();
  if (!v2)
  {
    v36 = v3[2];
    v35[7] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    sub_26CC3F22C(&qword_280BB9BE0);
    sub_26CD3AF1C();
    v13 = v3[3];
    v14 = v3[4];
    LOBYTE(v36) = 2;
    sub_26CD3AECC();
    v15 = v3[5];
    v16 = v3[6];
    LOBYTE(v36) = 3;
    sub_26CD3AECC();
    v17 = v3[7];
    v18 = *(v3 + 64);
    LOBYTE(v36) = 4;
    sub_26CD3AEEC();
    v19 = v3[9];
    v20 = v3[10];
    LOBYTE(v36) = 5;
    sub_26CD3AECC();
    v21 = v3[11];
    v22 = v3[12];
    LOBYTE(v36) = 6;
    sub_26CD3AECC();
    v23 = v3[13];
    v24 = v3[14];
    LOBYTE(v36) = 7;
    sub_26CD3AECC();
    v25 = *(v3 + 120);
    LOBYTE(v36) = 8;
    sub_26CD3AEDC();
    v26 = *(v3 + 121);
    LOBYTE(v36) = 9;
    sub_26CD3AEDC();
    v27 = *(v3 + 122);
    LOBYTE(v36) = 10;
    sub_26CD3AEDC();
    v28 = *(v3 + 123);
    LOBYTE(v36) = 11;
    sub_26CD3AEDC();
    v29 = *(v3 + 124);
    LOBYTE(v36) = 12;
    sub_26CD3AEDC();
    v30 = v3[16];
    v31 = v3[17];
    LOBYTE(v36) = 13;
    sub_26CD3AECC();
    v32 = v3[18];
    v33 = v3[19];
    LOBYTE(v36) = 14;
    sub_26CD3AECC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26CC4915C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26CC4AAF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26CC49184(uint64_t a1)
{
  v2 = sub_26CC4D9F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC491C0(uint64_t a1)
{
  v2 = sub_26CC4D9F4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26CC491FC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_26CC4AFC4(a1, v10);
  if (!v2)
  {
    v5 = v10[7];
    a2[6] = v10[6];
    a2[7] = v5;
    v6 = v10[9];
    a2[8] = v10[8];
    a2[9] = v6;
    v7 = v10[3];
    a2[2] = v10[2];
    a2[3] = v7;
    v8 = v10[5];
    a2[4] = v10[4];
    a2[5] = v8;
    result = *v10;
    v9 = v10[1];
    *a2 = v10[0];
    a2[1] = v9;
  }

  return result;
}

uint64_t sub_26CC49270(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC130, &qword_26CD3EFF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC4D8E4();
  sub_26CD3B16C();
  v11 = v3[3];
  v12 = v3[1];
  v41 = v3[2];
  v42 = v11;
  v13 = v3[3];
  v43[0] = v3[4];
  *(v43 + 9) = *(v3 + 73);
  v14 = v3[1];
  v40[0] = *v3;
  v40[1] = v14;
  v33 = v41;
  v34 = v13;
  v35[0] = v3[4];
  *(v35 + 9) = *(v3 + 73);
  v31 = v40[0];
  v32 = v12;
  v30 = 0;
  sub_26CC1B4DC(v40, v28, &qword_2804BC118, &qword_26CD3EFE8);
  sub_26CC4DAB0();
  sub_26CD3AF1C();
  v28[2] = v33;
  v28[3] = v34;
  *v29 = v35[0];
  *&v29[9] = *(v35 + 9);
  v28[0] = v31;
  v28[1] = v32;
  sub_26CC1B544(v28, &qword_2804BC118, &qword_26CD3EFE8);
  if (!v2)
  {
    v16 = v3[9];
    v17 = v3[7];
    v37 = v3[8];
    v38 = v16;
    v18 = v3[9];
    v39[0] = v3[10];
    *(v39 + 9) = *(v3 + 169);
    v19 = v3[7];
    v36[0] = v3[6];
    v36[1] = v19;
    v25 = v37;
    v26 = v18;
    v27[0] = v3[10];
    *(v27 + 9) = *(v3 + 169);
    v23 = v36[0];
    v24 = v17;
    v22 = 1;
    sub_26CC1B4DC(v36, v20, &qword_2804BC118, &qword_26CD3EFE8);
    sub_26CD3AF1C();
    v20[2] = v25;
    v20[3] = v26;
    *v21 = v27[0];
    *&v21[9] = *(v27 + 9);
    v20[0] = v23;
    v20[1] = v24;
    sub_26CC1B544(v20, &qword_2804BC118, &qword_26CD3EFE8);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26CC49594()
{
  if (*v0)
  {
    result = 0x616D49666C656873;
  }

  else
  {
    result = 0x656D61724679656BLL;
  }

  *v0;
  return result;
}

uint64_t sub_26CC495E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D61724679656BLL && a2 == 0xEE00736567616D49;
  if (v6 || (sub_26CD3AFDC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x616D49666C656873 && a2 == 0xEA00000000006567)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26CD3AFDC();

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

uint64_t sub_26CC496CC(uint64_t a1)
{
  v2 = sub_26CC4D8E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC49708(uint64_t a1)
{
  v2 = sub_26CC4D8E4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26CC49744@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_26CC4B8D8(a1, v10);
  if (!v2)
  {
    v5 = v18;
    a2[8] = v17;
    a2[9] = v5;
    a2[10] = v19[0];
    *(a2 + 169) = *(v19 + 9);
    v6 = v14;
    a2[4] = v13;
    a2[5] = v6;
    v7 = v16;
    a2[6] = v15;
    a2[7] = v7;
    v8 = v10[1];
    *a2 = v10[0];
    a2[1] = v8;
    result = *&v11;
    v9 = v12;
    a2[2] = v11;
    a2[3] = v9;
  }

  return result;
}

uint64_t sub_26CC497C8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC188, &qword_26CD3F2B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC4DE30();
  sub_26CD3B16C();
  v11 = *v3;
  v12 = v3[1];
  v24[15] = 0;
  sub_26CD3AECC();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = *(v3 + 16);
  v24[14] = 1;
  sub_26CD3AEDC();
  v14 = v3[3];
  v15 = *(v3 + 32);
  v24[13] = 2;
  sub_26CD3AEFC();
  v16 = v3[5];
  v17 = v3[6];
  v24[12] = 3;
  sub_26CD3AECC();
  v18 = *(v3 + 56);
  v24[11] = 4;
  sub_26CD3AEDC();
  v19 = v3[8];
  v20 = v3[9];
  v24[10] = 5;
  sub_26CD3AECC();
  v22 = v3[10];
  v23 = *(v3 + 88);
  v24[9] = 6;
  sub_26CD3AEFC();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26CC499F0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC0B8, &qword_26CD3EC10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC4CAAC();
  sub_26CD3B16C();
  v11 = *v3;
  v12 = *(v3 + 8);
  v24 = 0;
  sub_26CD3AEEC();
  if (!v2)
  {
    v13 = *(v3 + 9);
    v23 = 1;
    sub_26CD3AEDC();
    v14 = v3[2];
    v15 = *(v3 + 24);
    v22 = 2;
    sub_26CD3AEEC();
    v16 = v3[4];
    v17 = v3[5];
    v21 = 3;
    sub_26CD3AECC();
    v20 = v3[6];
    v19[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBFD0, &qword_26CD3EBD8);
    sub_26CC4D260(&qword_2804BC0C0, sub_26CC4D2D8);
    sub_26CD3AF1C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26CC49C5C()
{
  v1 = *v0;
  v2 = 0x74616D726F66;
  v3 = 7107189;
  if (v1 != 5)
  {
    v3 = 0x6874646977;
  }

  v4 = 0x726F6C6F43656F6ALL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6168706C41736168;
  if (v1 != 1)
  {
    v5 = 0x746867696568;
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

uint64_t sub_26CC49D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26CC4BDD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26CC49D50(uint64_t a1)
{
  v2 = sub_26CC4DE30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC49D8C(uint64_t a1)
{
  v2 = sub_26CC4DE30();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26CC49DC8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_26CC4C018(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    a2[2] = v7[2];
    a2[3] = v5;
    a2[4] = v8[0];
    *(a2 + 73) = *(v8 + 9);
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_26CC49E34()
{
  v1 = *v0;
  v2 = 0x4173657269707865;
  v3 = 0x6D617473656D6974;
  v4 = 1701869940;
  if (v1 != 3)
  {
    v4 = 0x68437478654E7075;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6164696C61766E69;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26CC49EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26CC4C5FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26CC49F10(uint64_t a1)
{
  v2 = sub_26CC4CAAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC49F4C(uint64_t a1)
{
  v2 = sub_26CC4CAAC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26CC49F88@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_26CC4C7D0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_26CC49FF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496D616461 && a2 == 0xE600000000000000;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF6F65646956646ELL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x795465676E616863 && a2 == 0xEA00000000006570 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x800000026CD4DE50 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4E65646F73697065 && a2 == 0xED00007265626D75 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7365726E6567 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x736567616D69 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x4F656C7070417369 && a2 == 0xEF6C616E69676972 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x444F56457369 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6168637275507369 && a2 == 0xEA00000000006573 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6C61746E65527369 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026CD4DE70 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x656C626179616C70 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x656C626179616C70 && a2 == 0xEB000000006C7255 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x676E69746172 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x64496E6F73616573 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x6D496E6F73616573 && a2 == 0xEC00000073656761 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x754E6E6F73616573 && a2 == 0xEC0000007265626DLL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x69546E6F73616573 && a2 == 0xEB00000000656C74 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x6C72556572616873 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x74695474726F6873 && a2 == 0xEA0000000000656CLL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6449776F6873 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x67616D49776F6873 && a2 == 0xEA00000000007365 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x6C746954776F6873 && a2 == 0xE900000000000065 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0x7372656C69617274 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x6D49746567646977 && a2 == 0xEC00000073656761)
  {

    return 35;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 35;
    }

    else
    {
      return 36;
    }
  }
}

uint64_t sub_26CC4AAF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7954676E69726961 && a2 == 0xEA00000000006570 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026CD4DE90 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496C656E6E616863 && a2 == 0xE900000000000064 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49746E65746E6F63 && a2 == 0xE900000000000064 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C616E7265747865 && a2 == 0xEA00000000006449 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026CD4DEB0 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C7469746E457369 && a2 == 0xEA00000000006465 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026CD4DED0 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000018 && 0x800000026CD4DEF0 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x73656E7574497369 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7469746275537369 && a2 == 0xEB0000000064656CLL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6C6F436F65646976 && a2 == 0xEF65676E6152726FLL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6175516F65646976 && a2 == 0xEC0000007974696CLL)
  {

    return 14;
  }

  else
  {
    v5 = sub_26CD3AFDC();

    if (v5)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_26CC4AFC4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC120, &qword_26CD3EFF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v100 = 1;
  v10 = a1[3];
  v11 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_26CC4D9F4();
  sub_26CD3B15C();
  if (v2)
  {
    v101 = v2;
    v56 = 0uLL;
    v54 = 0;
    v55 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v14 = 0;
    v15 = 0;
    v57 = 2;
    v58 = 2;
    v59 = 2;
    v60 = 2;
    v53 = 2;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v52);
    *&v72 = v15;
    *(&v72 + 1) = v14;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = v100;
    *v80 = *v99;
    *&v80[3] = *&v99[3];
    v81 = v50;
    v82 = v51;
    v83 = v48;
    v84 = v49;
    v85 = v54;
    v86 = v55;
    v87 = v53;
    v88 = v60;
    v89 = v59;
    v90 = v58;
    v91 = v57;
    v92 = v97;
    v93 = v98;
    v94 = v56;
    v95 = 0;
    v96 = 0;
    return sub_26CC4DA48(&v72);
  }

  LOBYTE(v72) = 0;
  v12 = sub_26CD3ADDC();
  v101 = 0;
  *&v47 = v12;
  *(&v47 + 1) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  LOBYTE(v61) = 1;
  sub_26CC3F22C(&qword_2804BBE98);
  v17 = v101;
  sub_26CD3AE2C();
  if (v17)
  {
    v101 = v17;
    (*(v6 + 8))(v9, v5);
    v56 = 0uLL;
    v54 = 0;
    v55 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v57 = 2;
    v58 = 2;
    v59 = 2;
    v60 = 2;
    v53 = 2;
    v14 = *(&v47 + 1);
    v15 = v47;
    goto LABEL_4;
  }

  v46 = v72;
  LOBYTE(v72) = 2;
  v18 = sub_26CD3ADDC();
  v44 = v19;
  v45 = v18;
  LOBYTE(v72) = 3;
  v42 = sub_26CD3ADDC();
  v43 = v20;
  LOBYTE(v72) = 4;
  v41 = sub_26CD3ADFC();
  v100 = v21 & 1;
  LOBYTE(v72) = 5;
  v50 = sub_26CD3ADDC();
  v51 = v22;
  LOBYTE(v72) = 6;
  v48 = sub_26CD3ADDC();
  v49 = v23;
  LOBYTE(v72) = 7;
  v54 = sub_26CD3ADDC();
  v55 = v24;
  LOBYTE(v72) = 8;
  v25 = sub_26CD3ADEC();
  v101 = 0;
  v53 = v25;
  LOBYTE(v72) = 9;
  v60 = sub_26CD3ADEC();
  v101 = 0;
  LOBYTE(v72) = 10;
  v59 = sub_26CD3ADEC();
  v101 = 0;
  LOBYTE(v72) = 11;
  v58 = sub_26CD3ADEC();
  v101 = 0;
  LOBYTE(v72) = 12;
  v57 = sub_26CD3ADEC();
  v101 = 0;
  LOBYTE(v72) = 13;
  *&v56 = sub_26CD3ADDC();
  *(&v56 + 1) = v26;
  v101 = 0;
  v71 = 14;
  v27 = sub_26CD3ADDC();
  v101 = 0;
  v28 = v27;
  v30 = v29;
  (*(v6 + 8))(v9, v5);
  v31 = v47;
  v61 = v47;
  *&v62 = v46;
  *(&v62 + 1) = v45;
  v32 = v43;
  v33 = v44;
  v34 = v42;
  *&v63 = v44;
  *(&v63 + 1) = v42;
  *&v64 = v43;
  *(&v64 + 1) = v41;
  HIDWORD(v40) = v100;
  LOBYTE(v65) = v100;
  *(&v65 + 1) = v50;
  *&v66 = v51;
  *(&v66 + 1) = v48;
  *&v67 = v49;
  *(&v67 + 1) = v54;
  *&v68 = v55;
  BYTE8(v68) = v53;
  BYTE9(v68) = v60;
  BYTE10(v68) = v59;
  BYTE11(v68) = v58;
  BYTE12(v68) = v57;
  v69 = v56;
  *&v70 = v28;
  *(&v70 + 1) = v30;
  sub_26CC4DA78(&v61, &v72);
  __swift_destroy_boxed_opaque_existential_1(v52);
  v72 = v31;
  v73 = v46;
  v74 = v45;
  v75 = v33;
  v76 = v34;
  v77 = v32;
  v78 = v41;
  v79 = BYTE4(v40);
  *v80 = *v99;
  *&v80[3] = *&v99[3];
  v81 = v50;
  v82 = v51;
  v83 = v48;
  v84 = v49;
  v85 = v54;
  v86 = v55;
  v87 = v53;
  v88 = v60;
  v89 = v59;
  v90 = v58;
  v91 = v57;
  v93 = v98;
  v92 = v97;
  v94 = v56;
  v95 = v28;
  v96 = v30;
  result = sub_26CC4DA48(&v72);
  v35 = v68;
  a2[6] = v67;
  a2[7] = v35;
  v36 = v70;
  a2[8] = v69;
  a2[9] = v36;
  v37 = v64;
  a2[2] = v63;
  a2[3] = v37;
  v38 = v66;
  a2[4] = v65;
  a2[5] = v38;
  v39 = v62;
  *a2 = v61;
  a2[1] = v39;
  return result;
}

uint64_t sub_26CC4B8D8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC100, &qword_26CD3EFE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_26CC4D8E4();
  sub_26CD3B15C();
  if (v2)
  {
    v52 = 0;
    v51 = 0uLL;
    v49 = 0;
    v50 = 0uLL;
    __swift_destroy_boxed_opaque_existential_1(v48);
    v88 = v49;
    v89 = 1;
    v90 = v50;
    v91 = v51;
    v92 = v52;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 0;
    v98 = xmmword_26CD3E690;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    memset(v102, 0, 25);
    return sub_26CC4D938(&v88);
  }

  else
  {
    v46 = a2;
    v47 = v6;
    v105 = 0;
    sub_26CC4D968();
    sub_26CD3AE2C();
    v12 = v79;
    v49 = v78;
    v50 = v80;
    v51 = v81;
    v52 = v82;
    v13 = v84;
    v44 = v85;
    v45 = v83;
    v14 = v86;
    v103 = v87;
    v43 = xmmword_26CD3E690;
    v77[0] = xmmword_26CD3E690;
    memset(&v77[1], 0, 73);
    sub_26CC1B544(v77, &qword_2804BC118, &qword_26CD3EFE8);
    v104 = 1;
    sub_26CD3AE2C();
    (*(v47 + 8))(v9, v5);
    v47 = v65;
    v41 = v67;
    v42 = v66;
    v39 = v69;
    v40 = v68;
    v37 = v71;
    v38 = v70;
    v35 = v73;
    v36 = v72;
    v33 = v75;
    v34 = v74;
    v32 = v76;
    v53[0] = v43;
    memset(&v53[1], 0, 73);
    sub_26CC1B544(v53, &qword_2804BC118, &qword_26CD3EFE8);
    v15 = v14;
    v30 = v12;
    v31 = v14;
    v16 = v49;
    v17 = v50;
    *&v54 = v49;
    *(&v54 + 1) = v12;
    v19 = *(&v50 + 1);
    v18 = v51;
    v55 = v50;
    v20 = *(&v51 + 1);
    v21 = v52;
    v56 = v51;
    *&v57 = v52;
    *(&v57 + 1) = v45;
    *&v58 = v13;
    *(&v58 + 1) = v44;
    *&v59 = v15;
    BYTE8(v59) = v103;
    *&v60 = v47;
    *(&v60 + 1) = v42;
    *&v61 = v41;
    *(&v61 + 1) = v40;
    *&v62 = v39;
    *(&v62 + 1) = v38;
    *&v63 = v37;
    *(&v63 + 1) = v36;
    *&v64[0] = v35;
    *(&v64[0] + 1) = v34;
    *&v64[1] = v33;
    BYTE8(v64[1]) = v32;
    sub_26CC4D9BC(&v54, &v88);
    __swift_destroy_boxed_opaque_existential_1(v48);
    v88 = v16;
    v89 = v30;
    *&v90 = v17;
    *(&v90 + 1) = v19;
    *&v91 = v18;
    *(&v91 + 1) = v20;
    v92 = v21;
    v93 = v45;
    v94 = v13;
    v95 = v44;
    v96 = v31;
    v97 = v103;
    *&v98 = v47;
    *(&v98 + 1) = v42;
    *&v99 = v41;
    *(&v99 + 1) = v40;
    *&v100 = v39;
    *(&v100 + 1) = v38;
    *&v101 = v37;
    *(&v101 + 1) = v36;
    v102[0] = v35;
    v102[1] = v34;
    v102[2] = v33;
    LOBYTE(v102[3]) = v32;
    result = sub_26CC4D938(&v88);
    v23 = v63;
    v24 = v46;
    v46[8] = v62;
    v24[9] = v23;
    v24[10] = v64[0];
    *(v24 + 169) = *(v64 + 9);
    v25 = v59;
    v24[4] = v58;
    v24[5] = v25;
    v26 = v61;
    v24[6] = v60;
    v24[7] = v26;
    v27 = v55;
    *v24 = v54;
    v24[1] = v27;
    v28 = v57;
    v24[2] = v56;
    v24[3] = v28;
  }

  return result;
}

uint64_t sub_26CC4BDD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616D726F66 && a2 == 0xE600000000000000;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6168706C41736168 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F6C6F43656F6ALL && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000026CD4DE30 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_26CC4C018@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC178, &qword_26CD3F2A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v66 = 1;
  v63 = 1;
  v10 = a1[3];
  v11 = a1[4];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_26CC4DE30();
  sub_26CD3B15C();
  if (v2)
  {
    v68 = v2;
    v40 = 0;
    __swift_destroy_boxed_opaque_existential_1(v41);
    v48 = 0;
    v49 = 0;
    v50 = 2;
    *v51 = *v67;
    *&v51[3] = *&v67[3];
    v52 = 0;
    v53 = v66;
    *v54 = *v65;
    *&v54[3] = *&v65[3];
    v55 = 0;
    v56 = 0;
    v57 = 2;
    *&v58[3] = *&v64[3];
    *v58 = *v64;
    v59 = 0;
    v60 = v40;
    v61 = 0;
    v62 = v63;
    return sub_26CC4DE84(&v48);
  }

  else
  {
    LOBYTE(v48) = 0;
    v39 = sub_26CD3ADDC();
    v38 = v13;
    LOBYTE(v48) = 1;
    v14 = sub_26CD3ADEC();
    LOBYTE(v48) = 2;
    v15 = a2;
    v37 = sub_26CD3AE0C();
    v66 = v16 & 1;
    LOBYTE(v48) = 3;
    v17 = sub_26CD3ADDC();
    v36 = v18;
    LOBYTE(v48) = 4;
    v35 = sub_26CD3ADEC();
    LOBYTE(v48) = 5;
    v19 = sub_26CD3ADDC();
    v40 = v20;
    v47 = 6;
    v21 = sub_26CD3AE0C();
    v68 = 0;
    v23 = v22;
    v24 = v21;
    (*(v6 + 8))(v9, v5);
    v25 = v23 & 1;
    v63 = v23 & 1;
    *&v42 = v39;
    v26 = v38;
    *(&v42 + 1) = v38;
    LOBYTE(v43) = v14;
    *(&v43 + 1) = v37;
    v27 = v66;
    LOBYTE(v44) = v66;
    *(&v44 + 1) = v17;
    v34 = v17;
    v33 = v14;
    v28 = v36;
    *&v45 = v36;
    LOBYTE(v17) = v35;
    BYTE8(v45) = v35;
    v29 = v40;
    *v46 = v19;
    *&v46[8] = v40;
    *&v46[16] = v24;
    v46[24] = v25;
    sub_26CC4DEB4(&v42, &v48);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v48 = v39;
    v49 = v26;
    v50 = v33;
    v52 = v37;
    v53 = v27;
    v55 = v34;
    v56 = v28;
    v57 = v17;
    v59 = v19;
    v60 = v29;
    v61 = v24;
    v62 = v25;
    result = sub_26CC4DE84(&v48);
    v30 = v45;
    v15[2] = v44;
    v15[3] = v30;
    v15[4] = *v46;
    *(v15 + 73) = *&v46[9];
    v31 = v43;
    *v15 = v42;
    v15[1] = v31;
  }

  return result;
}

uint64_t sub_26CC4C5FC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4173657269707865 && a2 == 0xE900000000000074 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6164696C61766E69 && a2 == 0xEA00000000006574 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x68437478654E7075 && a2 == 0xED00007365676E61)
  {

    return 4;
  }

  else
  {
    v5 = sub_26CD3AFDC();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_26CC4C7D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBFC0, &qword_26CD3EBD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC4CAAC();
  sub_26CD3B15C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = 0;
  v11 = sub_26CD3ADFC();
  v13 = v12;
  v14 = v11;
  v33 = 1;
  v26 = sub_26CD3ADEC();
  v32 = 2;
  v15 = sub_26CD3ADFC();
  v24 = v16;
  v25 = v15;
  v31 = 3;
  v22 = sub_26CD3ADDC();
  v23 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBFD0, &qword_26CD3EBD8);
  v30 = 4;
  sub_26CC4D260(&qword_2804BBFD8, sub_26CC4CB00);
  sub_26CD3AE2C();
  (*(v6 + 8))(v9, v5);
  v18 = v28;
  v29 = v13 & 1;
  v27 = v24 & 1;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v14;
  *(a2 + 8) = v29;
  *(a2 + 9) = v26;
  *(a2 + 16) = v25;
  *(a2 + 24) = v27;
  v20 = v23;
  *(a2 + 32) = v22;
  *(a2 + 40) = v20;
  *(a2 + 48) = v18;
  return result;
}

unint64_t sub_26CC4CAAC()
{
  result = qword_2804BBFC8;
  if (!qword_2804BBFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBFC8);
  }

  return result;
}

unint64_t sub_26CC4CB00()
{
  result = qword_2804BBFE0;
  if (!qword_2804BBFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBFE0);
  }

  return result;
}

double sub_26CC4CB54(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_26CD3E6A0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  *(a1 + 169) = 0u;
  return result;
}

double sub_26CC4CB80(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_26CD3E690;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  return result;
}

unint64_t sub_26CC4CBA4()
{
  result = qword_2804BBFF0;
  if (!qword_2804BBFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBFF0);
  }

  return result;
}

unint64_t sub_26CC4CC28()
{
  result = qword_2804BBFF8;
  if (!qword_2804BBFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBFF8);
  }

  return result;
}

unint64_t sub_26CC4CC7C()
{
  result = qword_2804BC008;
  if (!qword_2804BC008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC008);
  }

  return result;
}

unint64_t sub_26CC4CCD0()
{
  result = qword_2804BC010;
  if (!qword_2804BC010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC010);
  }

  return result;
}

unint64_t sub_26CC4CD24()
{
  result = qword_2804BC018;
  if (!qword_2804BC018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC018);
  }

  return result;
}

unint64_t sub_26CC4CD78()
{
  result = qword_2804BC020;
  if (!qword_2804BC020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC020);
  }

  return result;
}

unint64_t sub_26CC4CDCC()
{
  result = qword_2804BC030;
  if (!qword_2804BC030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC030);
  }

  return result;
}

unint64_t sub_26CC4CE20()
{
  result = qword_2804BC040;
  if (!qword_2804BC040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC040);
  }

  return result;
}

uint64_t sub_26CC4CE74(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BC050, &qword_26CD3EC00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26CC4CEEC()
{
  result = qword_2804BC060;
  if (!qword_2804BC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC060);
  }

  return result;
}

unint64_t sub_26CC4CF78()
{
  result = qword_2804BC070;
  if (!qword_2804BC070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC070);
  }

  return result;
}

unint64_t sub_26CC4CFCC()
{
  result = qword_2804BC078;
  if (!qword_2804BC078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC078);
  }

  return result;
}

unint64_t sub_26CC4D020()
{
  result = qword_2804BC080;
  if (!qword_2804BC080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC080);
  }

  return result;
}

uint64_t sub_26CC4D074(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_26CC4D0BC()
{
  result = qword_2804BC088;
  if (!qword_2804BC088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC088);
  }

  return result;
}

unint64_t sub_26CC4D110()
{
  result = qword_2804BC090;
  if (!qword_2804BC090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC090);
  }

  return result;
}

unint64_t sub_26CC4D164()
{
  result = qword_2804BC098;
  if (!qword_2804BC098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC098);
  }

  return result;
}

unint64_t sub_26CC4D1B8()
{
  result = qword_2804BC0A0;
  if (!qword_2804BC0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC0A0);
  }

  return result;
}

unint64_t sub_26CC4D20C()
{
  result = qword_2804BC0B0;
  if (!qword_2804BC0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC0B0);
  }

  return result;
}

uint64_t sub_26CC4D260(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BBFD0, &qword_26CD3EBD8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26CC4D2D8()
{
  result = qword_2804BC0C8;
  if (!qword_2804BC0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC0C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UpNextNotificationPayload.ChangeItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDD)
  {
    goto LABEL_17;
  }

  if (a2 + 35 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 35) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 35;
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

      return (*a1 | (v4 << 8)) - 35;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 35;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v8 = v6 - 36;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UpNextNotificationPayload.ChangeItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDD)
  {
    v4 = 0;
  }

  if (a2 > 0xDC)
  {
    v5 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
    *result = a2 + 35;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_26CC4D4B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 160))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_26CC4D514(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy185_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_26CC4D5DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 185))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_26CC4D644(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
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
    *(result + 184) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 185) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 185) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_26CC4D6D8()
{
  result = qword_2804BC0D0;
  if (!qword_2804BC0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC0D0);
  }

  return result;
}

unint64_t sub_26CC4D730()
{
  result = qword_2804BC0D8;
  if (!qword_2804BC0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC0D8);
  }

  return result;
}

unint64_t sub_26CC4D788()
{
  result = qword_2804BC0E0;
  if (!qword_2804BC0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC0E0);
  }

  return result;
}

unint64_t sub_26CC4D7E0()
{
  result = qword_2804BC0E8;
  if (!qword_2804BC0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC0E8);
  }

  return result;
}

unint64_t sub_26CC4D838()
{
  result = qword_2804BC0F0;
  if (!qword_2804BC0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC0F0);
  }

  return result;
}

unint64_t sub_26CC4D890()
{
  result = qword_2804BC0F8;
  if (!qword_2804BC0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC0F8);
  }

  return result;
}

unint64_t sub_26CC4D8E4()
{
  result = qword_2804BC108;
  if (!qword_2804BC108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC108);
  }

  return result;
}

unint64_t sub_26CC4D968()
{
  result = qword_2804BC110;
  if (!qword_2804BC110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC110);
  }

  return result;
}

unint64_t sub_26CC4D9F4()
{
  result = qword_2804BC128;
  if (!qword_2804BC128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC128);
  }

  return result;
}

unint64_t sub_26CC4DAB0()
{
  result = qword_2804BC138;
  if (!qword_2804BC138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC138);
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

uint64_t sub_26CC4DB48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 89))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_26CC4DBA4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_26CC4DC24()
{
  result = qword_2804BC148;
  if (!qword_2804BC148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC148);
  }

  return result;
}

unint64_t sub_26CC4DC7C()
{
  result = qword_2804BC150;
  if (!qword_2804BC150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC150);
  }

  return result;
}

unint64_t sub_26CC4DCD4()
{
  result = qword_2804BC158;
  if (!qword_2804BC158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC158);
  }

  return result;
}

unint64_t sub_26CC4DD2C()
{
  result = qword_2804BC160;
  if (!qword_2804BC160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC160);
  }

  return result;
}

unint64_t sub_26CC4DD84()
{
  result = qword_2804BC168;
  if (!qword_2804BC168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC168);
  }

  return result;
}

unint64_t sub_26CC4DDDC()
{
  result = qword_2804BC170;
  if (!qword_2804BC170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC170);
  }

  return result;
}

unint64_t sub_26CC4DE30()
{
  result = qword_2804BC180;
  if (!qword_2804BC180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC180);
  }

  return result;
}

unint64_t sub_26CC4DF00()
{
  result = qword_2804BC190;
  if (!qword_2804BC190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC190);
  }

  return result;
}

unint64_t sub_26CC4DF58()
{
  result = qword_2804BC198;
  if (!qword_2804BC198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC198);
  }

  return result;
}

unint64_t sub_26CC4DFB0()
{
  result = qword_2804BC1A0;
  if (!qword_2804BC1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC1A0);
  }

  return result;
}

uint64_t sub_26CC4E018(char a1)
{
  sub_26CD3B0FC();
  if (a1)
  {
    v2 = 0x3FF0000000000000;
  }

  else
  {
    v2 = 0x3FFC71C64BA94BBELL;
  }

  MEMORY[0x26D6ADB10](v2);
  return sub_26CD3B13C();
}

uint64_t sub_26CC4E078(uint64_t a1, char a2)
{
  sub_26CD3B0FC();
  if (a2)
  {
    v3 = 0x3FF0000000000000;
  }

  else
  {
    v3 = 0x3FFC71C64BA94BBELL;
  }

  MEMORY[0x26D6ADB10](v3);
  return sub_26CD3B13C();
}

uint64_t sub_26CC4E0D4()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t ImageTemplate.urlTemplate.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ImageTemplate.accessibilityText.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void AspectRatio.init(rawValue:)(char *a1@<X8>, double a2@<D0>)
{
  if (a2 == 1.0)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (a2 == 1.777777)
  {
    v2 = 0;
  }

  *a1 = v2;
}

double AspectRatio.rawValue.getter()
{
  result = 1.777777;
  if (*v0)
  {
    return 1.0;
  }

  return result;
}

BOOL sub_26CC4E2BC(_BYTE *a1, _BYTE *a2)
{
  v2 = 1.777777;
  if (*a1)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 1.777777;
  }

  if (*a2)
  {
    v2 = 1.0;
  }

  return v3 == v2;
}

unint64_t sub_26CC4E2F0()
{
  result = qword_2804BC1A8;
  if (!qword_2804BC1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC1A8);
  }

  return result;
}

uint64_t sub_26CC4E34C()
{
  if (*v0)
  {
    v1 = 0x3FF0000000000000;
  }

  else
  {
    v1 = 0x3FFC71C64BA94BBELL;
  }

  return MEMORY[0x26D6ADB10](v1);
}

double *sub_26CC4E39C@<X0>(double *result@<X0>, _BYTE *a2@<X8>)
{
  if (*result == 1.777777)
  {
    *a2 = 0;
  }

  else if (*result == 1.0)
  {
    *a2 = 1;
  }

  else
  {
    *a2 = 2;
  }

  return result;
}

void sub_26CC4E3DC(double *a1@<X8>)
{
  v2 = 1.777777;
  if (*v1)
  {
    v2 = 1.0;
  }

  *a1 = v2;
}

TVAppServices::VideoItemType_optional __swiftcall VideoItemType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26CD3AFEC();

  v5 = 0;
  v6 = 8;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
LABEL_23:
      v6 = v5;
      break;
    case 8:
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    default:
      v6 = 26;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t VideoItemType.rawValue.getter()
{
  result = 0x6569766F4DLL;
  switch(*v0)
  {
    case 1:
      result = 2003789907;
      break;
    case 2:
      result = 0x65646F73697045;
      break;
    case 3:
      result = 0x6E75426569766F4DLL;
      break;
    case 4:
      result = 0x6E6F73616553;
      break;
    case 5:
      result = 0x6E6F73726550;
      break;
    case 6:
      result = 1701605202;
      break;
    case 7:
      result = 6582102;
      break;
    case 8:
      result = 0x746573786F42;
      break;
    case 9:
      result = 0x767265536576694CLL;
      break;
    case 0xA:
      result = 0xD000000000000012;
      break;
    case 0xB:
      result = 0xD000000000000013;
      break;
    case 0xC:
      result = 0x676E6974726F7053;
      break;
    case 0xD:
      result = 0x61654C74726F7053;
      break;
    case 0xE:
      result = 0x74726F7053;
      break;
    case 0xF:
      result = 0x65756761654CLL;
      break;
    case 0x10:
      result = 1835099476;
      break;
    case 0x11:
      result = 0x77656976657250;
      break;
    case 0x12:
      result = 0x6E6F437373657250;
      break;
    case 0x13:
      result = 0x6569767265746E49;
      break;
    case 0x14:
      result = 0x4D656C6261746F4ELL;
      break;
    case 0x15:
      result = 0x79616C5079654BLL;
      break;
    case 0x16:
      result = 0x73756E6F42;
      break;
    case 0x17:
      result = 0x6F69746F6D6F7250;
      break;
    case 0x18:
      result = 1735290707;
      break;
    case 0x19:
      result = 0x7473696C79616C50;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26CC4E810(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = VideoItemType.rawValue.getter();
  v4 = v3;
  if (v2 == VideoItemType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26CD3AFDC();
  }

  return v7 & 1;
}

unint64_t sub_26CC4E8B0()
{
  result = qword_2804BC1B0;
  if (!qword_2804BC1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC1B0);
  }

  return result;
}

uint64_t sub_26CC4E904()
{
  v1 = *v0;
  sub_26CD3B0FC();
  VideoItemType.rawValue.getter();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CC4E96C()
{
  v2 = *v0;
  VideoItemType.rawValue.getter();
  sub_26CD3A54C();
}

uint64_t sub_26CC4E9D0()
{
  v1 = *v0;
  sub_26CD3B0FC();
  VideoItemType.rawValue.getter();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

unint64_t sub_26CC4EA40@<X0>(unint64_t *a1@<X8>)
{
  result = VideoItemType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for VideoItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VideoItemType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t MovieItem.rating.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v4 = *(v1 + 160);
  v10 = *(v1 + 144);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 176);
  v6 = *(v1 + 112);
  v9[0] = *(v1 + 96);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_26CC42E3C(v9, v8);
}

__n128 MovieItem.rating.setter(uint64_t a1)
{
  v3 = *(v1 + 144);
  v8[2] = *(v1 + 128);
  v8[3] = v3;
  v8[4] = *(v1 + 160);
  v9 = *(v1 + 176);
  v4 = *(v1 + 112);
  v8[0] = *(v1 + 96);
  v8[1] = v4;
  sub_26CC42E74(v8);
  v5 = *(a1 + 48);
  *(v1 + 128) = *(a1 + 32);
  *(v1 + 144) = v5;
  *(v1 + 160) = *(a1 + 64);
  *(v1 + 176) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 96) = *a1;
  *(v1 + 112) = v7;
  return result;
}

uint64_t MovieItem.genres.setter(uint64_t a1)
{
  v3 = *(v1 + 184);

  *(v1 + 184) = a1;
  return result;
}

uint64_t MovieItem.deepLink.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MovieItem(0) + 36);

  return sub_26CC4EDBC(v3, a1);
}

uint64_t sub_26CC4EDBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MovieItem.deepLink.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MovieItem(0) + 36);

  return sub_26CC4EE70(a1, v3);
}

uint64_t sub_26CC4EE70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MovieItem.releaseDate.setter(double a1)
{
  result = type metadata accessor for MovieItem(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t MovieItem.duration.setter(double a1)
{
  result = type metadata accessor for MovieItem(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t MovieItem.isAdultContent.setter(char a1)
{
  result = type metadata accessor for MovieItem(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t MovieItem.isAppleOriginal.setter(char a1)
{
  result = type metadata accessor for MovieItem(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t sub_26CC4F198(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6E6F697461727564;
    v6 = 0x43746C7564417369;
    if (a1 != 8)
    {
      v6 = 0x4F656C7070417369;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6B6E694C70656564;
    if (a1 != 5)
    {
      v7 = 0x44657361656C6572;
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
    v1 = 25705;
    v2 = 0x6567616D69;
    v3 = 0x676E69746172;
    if (a1 != 3)
    {
      v3 = 0x7365726E6567;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x656C746974;
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

uint64_t sub_26CC4F2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26CC52598(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26CC4F314(uint64_t a1)
{
  v2 = sub_26CC4F824();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC4F350(uint64_t a1)
{
  v2 = sub_26CC4F824();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MovieItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC1B8, &qword_26CD3F5F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC4F824();
  sub_26CD3B16C();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v43[0]) = 0;
  sub_26CD3AF2C();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v54 = 1;
    sub_26CD3AF2C();
    v15 = *(v3 + 3);
    v53[0] = *(v3 + 2);
    v53[1] = v15;
    v16 = *(v3 + 5);
    v18 = *(v3 + 2);
    v17 = *(v3 + 3);
    v53[2] = *(v3 + 4);
    v53[3] = v16;
    v49 = v18;
    v50 = v17;
    v19 = *(v3 + 5);
    v51 = *(v3 + 4);
    v52 = v19;
    v48 = 2;
    sub_26CC41E78(v53, v43);
    sub_26CC4F878();
    sub_26CD3AF6C();
    v42[0] = v49;
    v42[1] = v50;
    v42[2] = v51;
    v42[3] = v52;
    sub_26CC41EB0(v42);
    v20 = *(v3 + 9);
    v21 = *(v3 + 7);
    v44 = *(v3 + 8);
    v45 = v20;
    v22 = *(v3 + 9);
    v46 = *(v3 + 10);
    v23 = *(v3 + 7);
    v43[0] = *(v3 + 6);
    v43[1] = v23;
    v38 = v44;
    v39 = v22;
    v40 = *(v3 + 10);
    v47 = v3[22];
    v41 = v3[22];
    v36 = v43[0];
    v37 = v21;
    v35 = 3;
    sub_26CC42E3C(v43, v33);
    sub_26CC4F8CC();
    sub_26CD3AF6C();
    v33[2] = v38;
    v33[3] = v39;
    v33[4] = v40;
    v34 = v41;
    v33[0] = v36;
    v33[1] = v37;
    sub_26CC42E74(v33);
    v32 = v3[23];
    v31[7] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC1D8, &qword_26CD3F600);
    sub_26CC50244(&qword_2804BC1E0, sub_26CC4F920);
    sub_26CD3AF6C();
    v24 = type metadata accessor for MovieItem(0);
    v25 = v24[9];
    LOBYTE(v32) = 5;
    sub_26CD3A07C();
    sub_26CC50310(&qword_2804BC1F0, MEMORY[0x277CC9260]);
    sub_26CD3AF1C();
    v26 = *(v3 + v24[10]);
    LOBYTE(v32) = 6;
    sub_26CD3AF4C();
    v27 = *(v3 + v24[11]);
    LOBYTE(v32) = 7;
    sub_26CD3AF4C();
    v28 = *(v3 + v24[12]);
    LOBYTE(v32) = 8;
    sub_26CD3AF3C();
    v29 = *(v3 + v24[13]);
    LOBYTE(v32) = 9;
    sub_26CD3AF3C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_26CC4F824()
{
  result = qword_2804BC1C0;
  if (!qword_2804BC1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC1C0);
  }

  return result;
}

unint64_t sub_26CC4F878()
{
  result = qword_2804BC1C8;
  if (!qword_2804BC1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC1C8);
  }

  return result;
}

unint64_t sub_26CC4F8CC()
{
  result = qword_2804BC1D0;
  if (!qword_2804BC1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC1D0);
  }

  return result;
}

unint64_t sub_26CC4F920()
{
  result = qword_2804BC1E8;
  if (!qword_2804BC1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC1E8);
  }

  return result;
}

uint64_t MovieItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v40 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC1F8, &qword_26CD3F608);
  v43 = *(v44 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v44);
  v10 = &v40 - v9;
  v11 = type metadata accessor for MovieItem(0);
  v12 = *(*(v11 - 1) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v13 + 36);
  v17 = sub_26CD3A07C();
  v18 = *(*(v17 - 8) + 56);
  v46 = v16;
  v61 = v15;
  v18(v15 + v16, 1, 1, v17);
  v20 = a1[3];
  v19 = a1[4];
  v45 = a1;
  v21 = a1;
  v22 = v10;
  __swift_project_boxed_opaque_existential_1(v21, v20);
  sub_26CC4F824();
  sub_26CD3B15C();
  if (v2)
  {
    v25 = v61;
    __swift_destroy_boxed_opaque_existential_1(v45);
    return sub_26CC3C0E0(v25 + v46);
  }

  else
  {
    v40 = v17;
    v41 = v7;
    v23 = v43;
    LOBYTE(v55) = 0;
    v24 = sub_26CD3AE3C();
    v26 = v61;
    *v61 = v24;
    v26[1] = v27;
    LOBYTE(v55) = 1;
    v26[2] = sub_26CD3AE3C();
    v26[3] = v28;
    v50 = 2;
    sub_26CC5019C();
    sub_26CD3AE7C();
    v29 = v52;
    *(v26 + 2) = v51;
    *(v26 + 3) = v29;
    v30 = v54;
    *(v26 + 4) = v53;
    *(v26 + 5) = v30;
    v49 = 3;
    sub_26CC501F0();
    sub_26CD3AE7C();
    v31 = v58;
    v32 = v59;
    *(v26 + 8) = v57;
    *(v26 + 9) = v31;
    *(v26 + 10) = v32;
    v26[22] = v60;
    v33 = v56;
    *(v26 + 6) = v55;
    *(v26 + 7) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC1D8, &qword_26CD3F600);
    v47 = 4;
    sub_26CC50244(&qword_2804BC210, sub_26CC502BC);
    sub_26CD3AE7C();
    v26[23] = v48;
    LOBYTE(v48) = 5;
    sub_26CC50310(&qword_2804BC220, MEMORY[0x277CC9260]);
    v34 = v41;
    sub_26CD3AE2C();
    sub_26CC4EE70(v34, v26 + v46);
    LOBYTE(v48) = 6;
    sub_26CD3AE5C();
    *(v26 + v11[10]) = v35;
    LOBYTE(v48) = 7;
    sub_26CD3AE5C();
    *(v26 + v11[11]) = v36;
    LOBYTE(v48) = 8;
    *(v26 + v11[12]) = sub_26CD3AE4C() & 1;
    LOBYTE(v48) = 9;
    v37 = sub_26CD3AE4C();
    (*(v23 + 8))(v22, v44);
    v38 = v61;
    *(v61 + v11[13]) = v37 & 1;
    sub_26CC51C0C(v38, v42, type metadata accessor for MovieItem);
    __swift_destroy_boxed_opaque_existential_1(v45);
    return sub_26CC51C74(v38, type metadata accessor for MovieItem);
  }
}

unint64_t sub_26CC5019C()
{
  result = qword_2804BC200;
  if (!qword_2804BC200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC200);
  }

  return result;
}

unint64_t sub_26CC501F0()
{
  result = qword_2804BC208;
  if (!qword_2804BC208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC208);
  }

  return result;
}

uint64_t sub_26CC50244(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BC1D8, &qword_26CD3F600);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26CC502BC()
{
  result = qword_2804BC218;
  if (!qword_2804BC218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC218);
  }

  return result;
}

uint64_t sub_26CC50310(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TVShowItem.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TVShowItem.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TVShowItem.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TVShowItem.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_26CC5049C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v7[0] = v1[2];
  v7[1] = v2;
  v4 = v1[5];
  v8 = v1[4];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_26CC41E78(v7, &v6);
}

__n128 TVShowItem.image.setter(uint64_t a1)
{
  v3 = v1[3];
  v8[0] = v1[2];
  v8[1] = v3;
  v4 = v1[5];
  v8[2] = v1[4];
  v8[3] = v4;
  sub_26CC41EB0(v8);
  v5 = *(a1 + 16);
  v1[2] = *a1;
  v1[3] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[4] = result;
  v1[5] = v7;
  return result;
}

uint64_t TVShowItem.genres.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t TVShowItem.deepLink.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TVShowItem(0) + 32);

  return sub_26CC4EDBC(v3, a1);
}

uint64_t TVShowItem.deepLink.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TVShowItem(0) + 32);

  return sub_26CC4EE70(a1, v3);
}

uint64_t TVShowItem.rating.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TVShowItem(0) + 36);
  v4 = *(v3 + 32);
  v6 = *(v3 + 64);
  v13 = *(v3 + 48);
  v5 = v13;
  v14 = v6;
  v15 = *(v3 + 80);
  v7 = v15;
  v9 = *(v3 + 16);
  v12[0] = *v3;
  v8 = v12[0];
  v12[1] = v9;
  v12[2] = v4;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v8;
  *(a1 + 16) = v9;
  return sub_26CC42E3C(v12, v11);
}

__n128 TVShowItem.rating.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TVShowItem(0) + 36);
  v4 = *(v3 + 48);
  v9[2] = *(v3 + 32);
  v9[3] = v4;
  v9[4] = *(v3 + 64);
  v10 = *(v3 + 80);
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  sub_26CC42E74(v9);
  v6 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v6;
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = *(a1 + 80);
  result = *a1;
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  return result;
}

uint64_t TVShowItem.releaseDate.setter(double a1)
{
  result = type metadata accessor for TVShowItem(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t TVShowItem.duration.setter(double a1)
{
  result = type metadata accessor for TVShowItem(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t TVShowItem.isAdultContent.setter(char a1)
{
  result = type metadata accessor for TVShowItem(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t TVShowItem.seasons.getter()
{
  v1 = *(v0 + *(type metadata accessor for TVShowItem(0) + 52));
}

uint64_t TVShowItem.seasons.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TVShowItem(0) + 52);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t TVShowItem.isAppleOriginal.setter(char a1)
{
  result = type metadata accessor for TVShowItem(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t sub_26CC50B04(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 25705;
    v7 = 0x6567616D69;
    v8 = 0x7365726E6567;
    if (a1 != 3)
    {
      v8 = 0x6B6E694C70656564;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x656C746974;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x43746C7564417369;
    v2 = 0x736E6F73616573;
    if (a1 != 9)
    {
      v2 = 0x4F656C7070417369;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x676E69746172;
    v4 = 0x44657361656C6572;
    if (a1 != 6)
    {
      v4 = 0x6E6F697461727564;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_26CC50C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26CC528C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26CC50CA0(uint64_t a1)
{
  v2 = sub_26CC51244();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC50CDC(uint64_t a1)
{
  v2 = sub_26CC51244();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TVShowItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC228, &qword_26CD3F610);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC51244();
  sub_26CD3B16C();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v43[0]) = 0;
  sub_26CD3AF2C();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v56 = 1;
    sub_26CD3AF2C();
    v15 = *(v3 + 3);
    v55[0] = *(v3 + 2);
    v55[1] = v15;
    v16 = *(v3 + 5);
    v18 = *(v3 + 2);
    v17 = *(v3 + 3);
    v55[2] = *(v3 + 4);
    v55[3] = v16;
    v51 = v18;
    v52 = v17;
    v19 = *(v3 + 5);
    v53 = *(v3 + 4);
    v54 = v19;
    v50 = 2;
    sub_26CC41E78(v55, v43);
    sub_26CC4F878();
    sub_26CD3AF6C();
    v49[0] = v51;
    v49[1] = v52;
    v49[2] = v53;
    v49[3] = v54;
    sub_26CC41EB0(v49);
    *&v43[0] = v3[12];
    LOBYTE(v37) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC1D8, &qword_26CD3F600);
    sub_26CC50244(&qword_2804BC1E0, sub_26CC4F920);
    sub_26CD3AF6C();
    v57 = type metadata accessor for TVShowItem(0);
    v20 = *(v57 + 32);
    v48 = 4;
    sub_26CD3A07C();
    sub_26CC50310(&qword_2804BC1F0, MEMORY[0x277CC9260]);
    sub_26CD3AF1C();
    v21 = v57;
    v22 = v3 + *(v57 + 36);
    v23 = *(v22 + 48);
    v24 = *(v22 + 16);
    v44 = *(v22 + 32);
    v45 = v23;
    v25 = *(v22 + 48);
    v46 = *(v22 + 64);
    v26 = *(v22 + 16);
    v43[0] = *v22;
    v43[1] = v26;
    v39 = v44;
    v40 = v25;
    v41 = *(v22 + 64);
    v47 = *(v22 + 80);
    v42 = *(v22 + 80);
    v37 = v43[0];
    v38 = v24;
    v36 = 5;
    sub_26CC42E3C(v43, v34);
    sub_26CC4F8CC();
    sub_26CD3AF6C();
    v34[2] = v39;
    v34[3] = v40;
    v34[4] = v41;
    v35 = v42;
    v34[0] = v37;
    v34[1] = v38;
    sub_26CC42E74(v34);
    v27 = *(v3 + v21[10]);
    LOBYTE(v33) = 6;
    sub_26CD3AF4C();
    v28 = *(v3 + v21[11]);
    LOBYTE(v33) = 7;
    sub_26CD3AF4C();
    v29 = *(v3 + v21[12]);
    LOBYTE(v33) = 8;
    sub_26CD3AF3C();
    v33 = *(v3 + v21[13]);
    v32[7] = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC238, &qword_26CD3F618);
    sub_26CC51298(&qword_2804BC240, sub_26CC401F8);
    sub_26CD3AF6C();
    v30 = *(v3 + v21[14]);
    LOBYTE(v33) = 10;
    sub_26CD3AF3C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_26CC51244()
{
  result = qword_2804BC230;
  if (!qword_2804BC230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC230);
  }

  return result;
}

uint64_t sub_26CC51298(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BC238, &qword_26CD3F618);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t TVShowItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v38 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC248, &qword_26CD3F620);
  v40 = *(v41 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v41);
  v10 = v38 - v9;
  v11 = type metadata accessor for TVShowItem(0);
  v12 = *(*(v11 - 1) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v13 + 32);
  v17 = sub_26CD3A07C();
  v18 = *(*(v17 - 8) + 56);
  v43 = v15;
  v58 = v16;
  v18(v15 + v16, 1, 1, v17);
  v19 = a1[3];
  v20 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_26CC51244();
  sub_26CD3B15C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
    return sub_26CC3C0E0(v43 + v58);
  }

  else
  {
    v21 = v40;
    LOBYTE(v52) = 0;
    v22 = sub_26CD3AE3C();
    v23 = v43;
    *v43 = v22;
    v23[1] = v24;
    LOBYTE(v52) = 1;
    v23[2] = sub_26CD3AE3C();
    v23[3] = v25;
    v47 = 2;
    sub_26CC5019C();
    v38[1] = 0;
    sub_26CD3AE7C();
    v26 = v49;
    *(v23 + 2) = v48;
    *(v23 + 3) = v26;
    v27 = v51;
    *(v23 + 4) = v50;
    *(v23 + 5) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC1D8, &qword_26CD3F600);
    LOBYTE(v45) = 3;
    sub_26CC50244(&qword_2804BC210, sub_26CC502BC);
    sub_26CD3AE7C();
    v23[12] = v52;
    LOBYTE(v52) = 4;
    sub_26CC50310(&qword_2804BC220, MEMORY[0x277CC9260]);
    sub_26CD3AE2C();
    sub_26CC4EE70(v7, v23 + v58);
    v46 = 5;
    sub_26CC501F0();
    sub_26CD3AE7C();
    v28 = v23 + v11[9];
    v29 = v55;
    v30 = v56;
    *(v28 + 2) = v54;
    *(v28 + 3) = v29;
    *(v28 + 4) = v30;
    *(v28 + 10) = v57;
    v31 = v53;
    *v28 = v52;
    *(v28 + 1) = v31;
    LOBYTE(v45) = 6;
    sub_26CD3AE5C();
    *(v23 + v11[10]) = v32;
    LOBYTE(v45) = 7;
    sub_26CD3AE5C();
    *(v23 + v11[11]) = v33;
    LOBYTE(v45) = 8;
    *(v23 + v11[12]) = sub_26CD3AE4C() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC238, &qword_26CD3F618);
    v44 = 9;
    sub_26CC51298(&qword_2804BC250, sub_26CC401A4);
    sub_26CD3AE7C();
    *(v43 + v11[13]) = v45;
    LOBYTE(v45) = 10;
    v34 = sub_26CD3AE4C();
    (*(v21 + 8))(v10, v41);
    v35 = v11[14];
    v36 = v43;
    *(v43 + v35) = v34 & 1;
    sub_26CC51C0C(v36, v39, type metadata accessor for TVShowItem);
    __swift_destroy_boxed_opaque_existential_1(v42);
    return sub_26CC51C74(v36, type metadata accessor for TVShowItem);
  }
}

uint64_t sub_26CC51C0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26CC51C74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26CC51CD4(uint64_t a1)
{
  *(a1 + 8) = sub_26CC50310(&qword_2804BC258, type metadata accessor for MovieItem);
  result = sub_26CC50310(&qword_2804BC260, type metadata accessor for MovieItem);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26CC51D58(uint64_t a1)
{
  *(a1 + 8) = sub_26CC50310(&qword_2804BC268, type metadata accessor for TVShowItem);
  result = sub_26CC50310(&qword_2804BC270, type metadata accessor for TVShowItem);
  *(a1 + 16) = result;
  return result;
}

void sub_26CC51E48()
{
  sub_26CC5209C(319, &qword_2804BC288);
  if (v0 <= 0x3F)
  {
    sub_26CC51F1C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26CC51F1C()
{
  if (!qword_280BBB1C8)
  {
    sub_26CD3A07C();
    v0 = sub_26CD3AADC();
    if (!v1)
    {
      atomic_store(v0, &qword_280BBB1C8);
    }
  }
}

void sub_26CC51F9C()
{
  sub_26CC5209C(319, &qword_2804BC288);
  if (v0 <= 0x3F)
  {
    sub_26CC51F1C();
    if (v1 <= 0x3F)
    {
      sub_26CC5209C(319, &qword_2804BC2A0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26CC5209C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_26CD3A7EC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for TVShowItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TVShowItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MovieItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MovieItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26CC5238C()
{
  result = qword_2804BC2A8;
  if (!qword_2804BC2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC2A8);
  }

  return result;
}

unint64_t sub_26CC523E4()
{
  result = qword_2804BC2B0;
  if (!qword_2804BC2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC2B0);
  }

  return result;
}

unint64_t sub_26CC5243C()
{
  result = qword_2804BC2B8;
  if (!qword_2804BC2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC2B8);
  }

  return result;
}

unint64_t sub_26CC52494()
{
  result = qword_2804BC2C0;
  if (!qword_2804BC2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC2C0);
  }

  return result;
}

unint64_t sub_26CC524EC()
{
  result = qword_2804BC2C8;
  if (!qword_2804BC2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC2C8);
  }

  return result;
}

unint64_t sub_26CC52544()
{
  result = qword_2804BC2D0;
  if (!qword_2804BC2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC2D0);
  }

  return result;
}

uint64_t sub_26CC52598(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69746172 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7365726E6567 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6B6E694C70656564 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x43746C7564417369 && a2 == 0xEE00746E65746E6FLL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4F656C7070417369 && a2 == 0xEF6C616E69676972)
  {

    return 9;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_26CC528C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365726E6567 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B6E694C70656564 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x676E69746172 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x43746C7564417369 && a2 == 0xEE00746E65746E6FLL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x736E6F73616573 && a2 == 0xE700000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4F656C7070417369 && a2 == 0xEF6C616E69676972)
  {

    return 10;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t Channel.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Channel.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ChannelType.hashValue.getter()
{
  v1 = *v0;
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](v1);
  return sub_26CD3B13C();
}

unint64_t sub_26CC52D60()
{
  result = qword_2804BC2D8;
  if (!qword_2804BC2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC2D8);
  }

  return result;
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26CC52DC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26CC52E10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26CC52E74()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1 != 0);
}

unint64_t sub_26CC52EF4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7374726F70707573;
    v6 = 0xD000000000000010;
    if (a1 != 8)
    {
      v6 = 0x44496D657469;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6D65747379537369;
    if (a1 != 5)
    {
      v7 = 0x70704156547369;
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
    v1 = 0x6E6F6973726576;
    v2 = 0x6C7469746E457369;
    v3 = 0x7041617465427369;
    if (a1 != 3)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000010;
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

uint64_t sub_26CC53058(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC2F8, &unk_26CD3FCA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC547CC();
  sub_26CD3B16C();
  v11 = *v3;
  v12 = v3[1];
  v25[15] = 0;
  sub_26CD3AF2C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v25[14] = 1;
  sub_26CD3AF2C();
  v15 = *(v3 + 32);
  v25[13] = 2;
  sub_26CD3AF3C();
  v16 = *(v3 + 33);
  v25[12] = 3;
  sub_26CD3AF3C();
  v17 = *(v3 + 34);
  v25[11] = 4;
  sub_26CD3AF3C();
  v18 = *(v3 + 35);
  v25[10] = 5;
  sub_26CD3AF3C();
  v19 = *(v3 + 36);
  v25[9] = 6;
  sub_26CD3AF3C();
  v20 = *(v3 + 37);
  v25[8] = 7;
  sub_26CD3AF3C();
  v21 = v3[5];
  v22 = v3[6];
  v25[7] = 8;
  sub_26CD3AECC();
  v24 = v3[7];
  v25[6] = 9;
  sub_26CD3AF7C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26CC532D8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26CD3A54C();
  v3 = v0[2];
  v4 = v0[3];
  sub_26CD3A54C();
  v5 = *(v0 + 32);
  sub_26CD3B11C();
  v6 = *(v0 + 33);
  sub_26CD3B11C();
  v7 = *(v0 + 34);
  sub_26CD3B11C();
  v8 = *(v0 + 35);
  sub_26CD3B11C();
  v9 = *(v0 + 36);
  sub_26CD3B11C();
  v10 = *(v0 + 37);
  sub_26CD3B11C();
  if (v0[6])
  {
    v11 = v0[5];
    sub_26CD3B11C();
    sub_26CD3A54C();
  }

  else
  {
    sub_26CD3B11C();
  }

  return MEMORY[0x26D6ADB10](v0[7]);
}

uint64_t sub_26CC533A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26CC53F90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26CC533C8(uint64_t a1)
{
  v2 = sub_26CC547CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC53404(uint64_t a1)
{
  v2 = sub_26CC547CC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26CC53440@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_26CC542E4(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_26CC5349C()
{
  sub_26CD3B0FC();
  sub_26CC532D8();
  return sub_26CD3B13C();
}

uint64_t sub_26CC534E0()
{
  sub_26CD3B0FC();
  sub_26CC532D8();
  return sub_26CD3B13C();
}

BOOL sub_26CC5351C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_26CC53E74(v7, v8);
}

id sub_26CC53568(void *a1)
{
  v2 = v1;
  v4 = [a1 entitlements];
  v5 = v2[7];
  v6 = v2[8];
  v7 = sub_26CD3A59C();
  sub_26CC54888();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [v4 objectForKey:v7 ofClass:ObjCClassFromMetadata];

  if (v9)
  {
    sub_26CD3AB3C();
    swift_unknownObjectRelease();
  }

  else
  {
    v76 = 0u;
    v77 = 0u;
  }

  v81 = v76;
  v82 = v77;
  if (*(&v77 + 1))
  {
    v10 = swift_dynamicCast() ^ 1;
    if (v72)
    {
      v11 = v10;
    }

    else
    {
      v11 = 1;
    }

    v62 = v10;
    v63 = v11;
  }

  else
  {
    sub_26CC548D4(&v81);
    v62 = 1;
    v63 = 1;
  }

  v12 = [a1 infoDictionary];
  v13 = v2[9];
  v14 = v2[10];
  v15 = sub_26CD3A59C();
  v16 = [v12 objectForKey:v15 ofClass:ObjCClassFromMetadata];

  if (v16)
  {
    sub_26CD3AB3C();
    swift_unknownObjectRelease();
  }

  else
  {
    v76 = 0u;
    v77 = 0u;
  }

  v81 = v76;
  v82 = v77;
  if (*(&v77 + 1))
  {
    v17 = swift_dynamicCast();
    v18 = v17 ^ 1 | v17 & (v72 != 0);
  }

  else
  {
    sub_26CC548D4(&v81);
    v18 = 1;
  }

  v19 = [a1 developerType];
  result = [a1 bundleIdentifier];
  if (result)
  {
    v21 = result;
    v22 = sub_26CD3A5CC();
    v24 = v23;

    v25 = [a1 shortVersionString];
    if (!v25)
    {
    }

    v59 = v18;
    v61 = v19;
    *&v60 = v22;
    *(&v60 + 1) = v24;
    v26 = v25;
    v27 = sub_26CD3A5CC();
    v57 = v28;
    v58 = v27;

    v56 = [a1 isBeta];
    v55 = [a1 isAppStoreVendable];
    v29 = [objc_opt_self() mainBundle];
    v30 = [v29 bundleIdentifier];

    if (v30)
    {
      v31 = sub_26CD3A5CC();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0xE000000000000000;
    }

    v34 = [a1 bundleIdentifier];
    if (v34)
    {
      v35 = v34;
      v36 = sub_26CD3A5CC();
      v38 = v37;

      if (v31 == v36 && v33 == v38)
      {
        v39 = 1;
      }

      else
      {
        v39 = sub_26CD3AFDC();
      }
    }

    else
    {
      v39 = 0;
    }

    v40 = [a1 iTunesMetadata];
    v41 = [v40 storeItemIdentifier];

    v42 = v60;
    v76 = v60;
    *&v77 = v58;
    *(&v77 + 1) = v57;
    LOBYTE(v78) = (v62 | v63 ^ 1) & 1;
    BYTE1(v78) = v56;
    BYTE2(v78) = v55;
    BYTE3(v78) = v61 == 1;
    BYTE4(v78) = v39 & 1;
    BYTE5(v78) = v59 & 1;
    v79 = 0;
    *&v80 = 0;
    *(&v80 + 1) = v41;
    v81 = v60;
    v82 = v77;
    v83 = v78;
    v84 = v80;

    if (((v62 | v63) & 1) == 0)
    {
      if (([a1 isAppStoreVendable] & 1) == 0 && v61 != 1)
      {
        swift_beginAccess();
        sub_26CC54820(&v76, &v72);
        sub_26CCDF294(&v68, &v81);
        swift_endAccess();
        v72 = v68;
        v73 = v69;
        v74 = v70;
        v75 = v71;
        sub_26CC54858(&v72);
      }

      swift_beginAccess();

      sub_26CC197B4(&v68, v60, *(&v60 + 1));
      swift_endAccess();

      swift_beginAccess();
      sub_26CC54820(&v76, &v72);
      sub_26CCDF294(&v72, &v81);
      swift_endAccess();
      v68 = v72;
      v69 = v73;
      v70 = v74;
      v71 = v75;
      sub_26CC54858(&v68);
      swift_beginAccess();
      sub_26CC54820(&v76, &v72);
      sub_26CCDF294(&v64, &v81);
      swift_endAccess();
      v72 = v64;
      v73 = v65;
      v74 = v66;
      v75 = v67;
      v43 = sub_26CC54858(&v72);
    }

    v44 = v2[12];
    v72 = v60;
    MEMORY[0x28223BE20](v43);
    v54 = &v72;
    v46 = sub_26CCF175C(sub_26CC5493C, v53, v45);
    if (v46)
    {
      swift_beginAccess();
      sub_26CC197B4(&v68, v42, *(&v42 + 1));
      swift_endAccess();

      swift_beginAccess();
      sub_26CC54820(&v76, &v72);
      sub_26CCDF294(&v72, &v81);
      swift_endAccess();
      v68 = v72;
      v69 = v73;
      v70 = v74;
      v71 = v75;
      sub_26CC54858(&v68);
      swift_beginAccess();
      sub_26CCDF294(&v64, &v81);
      swift_endAccess();
      v72 = v64;
      v73 = v65;
      v47 = v66;
      v48 = v67;
    }

    else
    {
      v49 = v2[11];
      v72 = v42;
      MEMORY[0x28223BE20](v46);
      v54 = &v72;
      v51 = sub_26CCF175C(sub_26CC54A74, v53, v50);

      if ((v51 & 1) == 0)
      {
        v52 = &v76;
        return sub_26CC54858(v52);
      }

      swift_beginAccess();
      sub_26CCDF294(&v68, &v81);
      swift_endAccess();
      v72 = v68;
      v73 = v69;
      v47 = v70;
      v48 = v71;
    }

    v74 = v47;
    v75 = v48;
    v52 = &v72;
    return sub_26CC54858(v52);
  }

  return result;
}

void *sub_26CC53CC8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[8];

  v7 = v0[10];

  v8 = v0[11];

  v9 = v0[12];

  v10 = v0[13];

  v11 = v0[14];

  return v0;
}

uint64_t sub_26CC53D38()
{
  sub_26CC53CC8();

  return swift_deallocClassInstance();
}

unint64_t sub_26CC53DA4()
{
  result = qword_280BB9C30;
  if (!qword_280BB9C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BB9C30);
  }

  return result;
}

void *sub_26CC53DF8()
{
  result = v0;
  v2 = MEMORY[0x277D84FA0];
  v0[2] = MEMORY[0x277D84FA0];
  v0[3] = v2;
  v0[4] = v2;
  v0[5] = v2;
  v0[6] = v2;
  v0[7] = 0xD000000000000023;
  v0[8] = 0x800000026CD4E0C0;
  v0[9] = 0x726F707075534955;
  v0[10] = 0xEF70704156547374;
  v0[11] = &unk_287DFA6F0;
  v0[12] = &unk_287DFA720;
  v0[13] = v2;
  v0[14] = MEMORY[0x277D84F90];
  return result;
}

BOOL sub_26CC53E74(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_26CD3AFDC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_26CD3AFDC() & 1) == 0 || ((*(a1 + 32) ^ *(a2 + 32)) & 1) != 0 || ((*(a1 + 33) ^ *(a2 + 33)) & 1) != 0 || ((*(a1 + 34) ^ *(a2 + 34)) & 1) != 0 || ((*(a1 + 35) ^ *(a2 + 35)) & 1) != 0 || ((*(a1 + 36) ^ *(a2 + 36)) & 1) != 0 || ((*(a1 + 37) ^ *(a2 + 37)) & 1) != 0)
  {
    return 0;
  }

  v7 = *(a1 + 48);
  v8 = *(a2 + 48);
  if (v7)
  {
    if (!v8 || (*(a1 + 40) != *(a2 + 40) || v7 != v8) && (sub_26CD3AFDC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  return *(a1 + 56) == *(a2 + 56);
}

uint64_t sub_26CC53F90(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000026CD4E0F0 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C7469746E457369 && a2 == 0xEA00000000006465 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7041617465427369 && a2 == 0xE900000000000070 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026CD4E110 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D65747379537369 && a2 == 0xEB00000000707041 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x70704156547369 && a2 == 0xE700000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7374726F70707573 && a2 == 0xED00007070415654 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026CD4E130 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x44496D657469 && a2 == 0xE600000000000000)
  {

    return 9;
  }

  else
  {
    v5 = sub_26CD3AFDC();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_26CC542E4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC2E8, &qword_26CD3FCA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC547CC();
  sub_26CD3B15C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v45[0]) = 0;
  v11 = sub_26CD3AE3C();
  v13 = v12;
  v40 = a2;
  v14 = v11;
  LOBYTE(v45[0]) = 1;
  *&v39 = sub_26CD3AE3C();
  *(&v39 + 1) = v15;
  LOBYTE(v45[0]) = 2;
  v56 = sub_26CD3AE4C();
  LOBYTE(v45[0]) = 3;
  v38 = sub_26CD3AE4C();
  LOBYTE(v45[0]) = 4;
  v37 = sub_26CD3AE4C();
  LOBYTE(v45[0]) = 5;
  v36 = sub_26CD3AE4C();
  LOBYTE(v45[0]) = 6;
  v16 = sub_26CD3AE4C();
  LOBYTE(v45[0]) = 7;
  v33 = sub_26CD3AE4C();
  LOBYTE(v45[0]) = 8;
  v34 = sub_26CD3ADDC();
  v35 = v17;
  v57 = 9;
  v32 = sub_26CD3AE8C();
  v31 = v56 & 1;
  v56 = v38 & 1;
  v18 = v37 & 1;
  v37 = v36 & 1;
  v38 = v18;
  v19 = v16 & 1;
  v30 = v19;
  v20 = v33 & 1;
  v36 = v33 & 1;
  (*(v6 + 8))(v9, v5);
  *&v41 = v14;
  *(&v41 + 1) = v13;
  v21 = v39;
  v42 = v39;
  LOBYTE(v43) = v31;
  BYTE1(v43) = v56;
  BYTE2(v43) = v38;
  BYTE3(v43) = v37;
  BYTE4(v43) = v19;
  BYTE5(v43) = v20;
  v22 = v34;
  v23 = v35;
  *(&v43 + 1) = v34;
  *&v44 = v35;
  v24 = v32;
  *(&v44 + 1) = v32;
  sub_26CC54820(&v41, v45);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v45[0] = v14;
  v45[1] = v13;
  v46 = v21;
  v47 = v31;
  v48 = v56;
  v49 = v38;
  v50 = v37;
  v51 = v30;
  v52 = v36;
  v53 = v22;
  v54 = v23;
  v55 = v24;
  result = sub_26CC54858(v45);
  v26 = v42;
  v27 = v40;
  *v40 = v41;
  v27[1] = v26;
  v28 = v44;
  v27[2] = v43;
  v27[3] = v28;
  return result;
}

unint64_t sub_26CC547CC()
{
  result = qword_2804BC2F0;
  if (!qword_2804BC2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC2F0);
  }

  return result;
}

unint64_t sub_26CC54888()
{
  result = qword_280BB9BA0;
  if (!qword_280BB9BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BB9BA0);
  }

  return result;
}

uint64_t sub_26CC548D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26CC54970()
{
  result = qword_2804BC300;
  if (!qword_2804BC300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC300);
  }

  return result;
}

unint64_t sub_26CC549C8()
{
  result = qword_2804BC308;
  if (!qword_2804BC308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC308);
  }

  return result;
}

unint64_t sub_26CC54A20()
{
  result = qword_2804BC310;
  if (!qword_2804BC310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC310);
  }

  return result;
}

double sub_26CC54A90()
{
  sub_26CC54AD0(v1);
  result = *v1;
  xmmword_280BBACE0 = v1[0];
  unk_280BBACF0 = v1[1];
  qword_280BBAD00 = v2;
  return result;
}

void sub_26CC54AD0(void *a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = sub_26CD3A5CC();
    v6 = v5;

    v7 = 0;
    while (1)
    {
      v8 = (&unk_287DFA218 + 40 * v7);
      v3 = v8[6];
      v9 = v3[2];
      if (v9)
      {
        break;
      }

LABEL_3:
      if (++v7 == 21)
      {

        v15 = 0;
        v10 = 0;
        v3 = 0;
        goto LABEL_15;
      }
    }

    v10 = v8[5];
    v16 = v8[4];
    v11 = v3 + 6;
    v13 = v8[7];
    v12 = v8[8];
    while (1)
    {
      if (!*v11)
      {
        v14 = *(v11 - 2) == v4 && *(v11 - 1) == v6;
        if (v14 || (sub_26CD3AFDC() & 1) != 0)
        {
          break;
        }
      }

      v11 += 24;
      if (!--v9)
      {
        goto LABEL_3;
      }
    }

    v15 = v16;
  }

  else
  {
    v15 = 0;
    v10 = 0;
LABEL_15:
    v13 = 0;
    v12 = 0;
  }

  *a1 = v15;
  a1[1] = v10;
  a1[2] = v3;
  a1[3] = v13;
  a1[4] = v12;
}

uint64_t sub_26CC54C48()
{
  if (qword_280BBACD8 != -1)
  {
    swift_once();
  }

  if (*(&xmmword_280BBACE0 + 1))
  {
    if (xmmword_280BBACE0 == 22100 && *(&xmmword_280BBACE0 + 1) == 0xE200000000000000)
    {
      result = 1;
    }

    else
    {
      result = sub_26CD3AFDC();
    }
  }

  else
  {
    result = 0;
  }

  byte_2804D1490 = result & 1;
  return result;
}

unint64_t sub_26CC54CF4()
{
  result = qword_2804BC318;
  if (!qword_2804BC318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BC320, qword_26CD3FE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC318);
  }

  return result;
}

uint64_t sub_26CC54D58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7368769;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x696B726F7774654ELL;
    }

    else
    {
      v4 = 0x61467374726F7053;
    }

    if (v3 == 2)
    {
      v5 = 0xEA0000000000676ELL;
    }

    else
    {
      v5 = 0xEF73657469726F76;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6465646465626D45;
    }

    else
    {
      v4 = 7368769;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0x696B726F7774654ELL;
  v8 = 0xEA0000000000676ELL;
  if (a2 != 2)
  {
    v7 = 0x61467374726F7053;
    v8 = 0xEF73657469726F76;
  }

  if (a2)
  {
    v2 = 0x6465646465626D45;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26CD3AFDC();
  }

  return v11 & 1;
}

uint64_t sub_26CC54EB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00736569766F4DLL;
  v3 = 0x7463697274736572;
  v4 = a1;
  v5 = 0xEC00000073707041;
  v6 = 0x696D694C73707061;
  if (a1 == 5)
  {
    v6 = 0x7463697274736572;
  }

  else
  {
    v5 = 0xE900000000000074;
  }

  v7 = 0xEF73776F68535654;
  v8 = 0x4C73776F68537674;
  if (a1 == 3)
  {
    v8 = 0x7463697274736572;
  }

  else
  {
    v7 = 0xEC00000074696D69;
  }

  if (a1 > 4u)
  {
    v7 = v5;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0xD000000000000010;
  v10 = 0x800000026CD4BB60;
  v11 = 0x694C736569766F6DLL;
  v12 = 0xEB0000000074696DLL;
  if (a1 == 1)
  {
    v11 = 0x7463697274736572;
    v12 = 0xEE00736569766F4DLL;
  }

  if (a1)
  {
    v9 = v11;
    v10 = v12;
  }

  if (a1 <= 2u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 2)
  {
    v14 = v10;
  }

  else
  {
    v14 = v7;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x800000026CD4BB60;
      if (v13 != 0xD000000000000010)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    if (a2 != 1)
    {
      v2 = 0xEB0000000074696DLL;
      if (v13 != 0x694C736569766F6DLL)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEC00000073707041;
        if (v13 != 0x7463697274736572)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v2 = 0xE900000000000074;
        if (v13 != 0x696D694C73707061)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_36;
    }

    if (a2 == 3)
    {
      v2 = 0xEF73776F68535654;
      if (v13 != 0x7463697274736572)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v3 = 0x4C73776F68537674;
    v2 = 0xEC00000074696D69;
  }

  if (v13 != v3)
  {
LABEL_39:
    v15 = sub_26CD3AFDC();
    goto LABEL_40;
  }

LABEL_36:
  if (v14 != v2)
  {
    goto LABEL_39;
  }

  v15 = 1;
LABEL_40:

  return v15 & 1;
}

uint64_t sub_26CC550E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1684107369;
    }

    else
    {
      v4 = 0x656E6F687069;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x706F746B736564;
  }

  else if (a1 == 3)
  {
    v3 = 0xE300000000000000;
    v4 = 7763041;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x6E6F69736976;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1684107369;
    }

    else
    {
      v9 = 0x656E6F687069;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v6 = 7763041;
    if (a2 != 3)
    {
      v6 = 0x6E6F69736976;
      v5 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x706F746B736564;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_26CD3AFDC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_26CC55248(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x657469726F766166;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xED0000726564724FLL;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x736D616574;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x7365756761656CLL;
    }

    else
    {
      v3 = 0x676E6974726F7073;
    }

    if (v2 == 3)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xEE0073746E657645;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x657469726F766166;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xED0000726564724FLL;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE500000000000000;
    if (v3 != 0x736D616574)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE700000000000000;
    if (v3 != 0x7365756761656CLL)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEE0073746E657645;
    if (v3 != 0x676E6974726F7073)
    {
LABEL_34:
      v7 = sub_26CD3AFDC();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_26CC55404(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6569766F4DLL;
    }

    else
    {
      v4 = 0x65646F73697045;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6E6F73616553;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 2003789907;
  }

  else
  {
    v4 = 0x676E6974726F7053;
    v3 = 0xED0000746E657645;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6569766F4DLL;
    }

    else
    {
      v9 = 0x65646F73697045;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 2003789907;
    if (a2 != 3)
    {
      v6 = 0x676E6974726F7053;
      v5 = 0xED0000746E657645;
    }

    if (a2 == 2)
    {
      v7 = 0x6E6F73616553;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_26CD3AFDC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_26CC55588(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 5522759;
    }

    else
    {
      v4 = 0x4554454C4544;
    }

    if (v2)
    {
      v3 = 0xE300000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x4843544150;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1414745936;
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 5526864;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 5522759;
    }

    else
    {
      v9 = 0x4554454C4544;
    }

    if (a2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1414745936;
    if (a2 != 3)
    {
      v6 = 5526864;
      v5 = 0xE300000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x4843544150;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_26CD3AFDC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_26CC556D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 0x747865746E6F63;
    }

    if (v2)
    {
      v4 = 0x800000026CD4AD30;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x800000026CD4AD50;
    v3 = 0xD000000000000017;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2 == 3)
    {
      v4 = 0x800000026CD4AD70;
    }

    else
    {
      v4 = 0x800000026CD4AD90;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xD000000000000016;
    }

    else
    {
      v7 = 0x747865746E6F63;
    }

    if (a2)
    {
      v6 = 0x800000026CD4AD30;
    }

    else
    {
      v6 = 0xE700000000000000;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0x800000026CD4AD50;
    if (v3 != 0xD000000000000017)
    {
LABEL_37:
      v8 = sub_26CD3AFDC();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD000000000000015;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (a2 == 3)
    {
      v6 = 0x800000026CD4AD70;
    }

    else
    {
      v6 = 0x800000026CD4AD90;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

uint64_t sub_26CC55878()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CC55944()
{
  *v0;
  *v0;
  *v0;
  sub_26CD3A54C();
}

uint64_t sub_26CC559FC()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CC55AC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26CC55BE4();
  *a2 = result;
  return result;
}

void sub_26CC55AF4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F687069;
  v5 = 0xE700000000000000;
  v6 = 0x706F746B736564;
  v7 = 0xE300000000000000;
  v8 = 7763041;
  if (v2 != 3)
  {
    v8 = 0x6E6F69736976;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1684107369;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_26CC55B90()
{
  result = qword_2804BC328;
  if (!qword_2804BC328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC328);
  }

  return result;
}

uint64_t sub_26CC55BE4()
{
  v0 = sub_26CD3AD9C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26CC55C30()
{
  v0 = sub_26CD3A59C();
  MGGetSInt32Answer();

  result = sub_26CC55BE4();
  byte_2804BC330 = result;
  return result;
}

uint64_t static Platform.shared.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_280BB9C28 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = byte_2804BC330;
  return result;
}

Swift::String_optional __swiftcall Platform.getPlatform()()
{
  v0 = sub_26CD3A59C();
  v1 = MGGetSInt32Answer();

  if (v1 == 3)
  {
    v2 = 1684107369;
  }

  else
  {
    v2 = 0x656E6F687069;
  }

  if (v1 == 3)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Platform(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 6;
  if (v6 < 5)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

unint64_t sub_26CC55E40(char a1)
{
  result = 0x654D6E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x736E6F69746361;
      break;
    case 2:
      result = 0x79546E6F69746361;
      break;
    case 3:
      result = 0x52556E6F69746361;
      break;
    case 4:
      result = 2036625250;
      break;
    case 5:
      result = 0x6449646E617262;
      break;
    case 6:
      result = 0x6449656C646E7562;
      break;
    case 7:
      result = 0x79726F6765746163;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x6974617269707865;
      break;
    case 10:
      result = 0x7265746F6F66;
      break;
    case 11:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 0x696669746E656469;
      break;
    case 13:
      result = 0x7461446567616D69;
      break;
    case 14:
      result = 0x6F69737365537369;
      break;
    case 15:
      result = 0x4170704176547369;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0x7363697274656DLL;
      break;
    case 18:
      result = 0x656372756F73;
      break;
    case 19:
      result = 0x4449646165726874;
      break;
    case 20:
      result = 0x656C746974;
      break;
    case 21:
      result = 1701869940;
      break;
    case 22:
      result = 0x6F666E4972657375;
      break;
    case 23:
      result = 0x6E4F72656E6E6162;
      break;
    case 24:
      result = 0x746E656C6973;
      break;
    case 25:
      result = 0x646E756F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26CC56118()
{
  v0 = [objc_opt_self() preferredLanguages];
  v1 = sub_26CD3A7AC();

  if (v1[2])
  {
    v2 = v1[4];
    v3 = v1[5];
  }

  else
  {

    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_26CD3C1E0;
    *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v4 + 64) = sub_26CC2E6E8();
    *(v4 + 32) = &unk_287DFAA88;
    sub_26CD3A3DC();

    return 0;
  }

  return v2;
}

uint64_t sub_26CC56294()
{
  result = sub_26CD3A59C();
  qword_2804BC338 = result;
  return result;
}

id static NSNotificationName.networkReachabilityDidChange.getter()
{
  if (qword_2804BB9F8 != -1)
  {
    swift_once();
  }

  v1 = qword_2804BC338;

  return v1;
}

uint64_t sub_26CC5635C(uint64_t a1, uint64_t a2)
{
  sub_26CC200FC(a1, v12);
  v4 = v13;
  if (v13)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v6 = *(v4 - 8);
    v7 = *(v6 + 64);
    MEMORY[0x28223BE20](v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9);
    v10 = sub_26CD3AFCC();
    (*(v6 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v10 = 0;
  }

  [v2 addNetworkReachableObserver:v10 selector:a2];
  return swift_unknownObjectRelease();
}

uint64_t sub_26CC564C8(uint64_t a1)
{
  sub_26CC200FC(a1, v10);
  v2 = v11;
  if (v11)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v10, v11);
    v4 = *(v2 - 8);
    v5 = *(v4 + 64);
    MEMORY[0x28223BE20](v3);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7);
    v8 = sub_26CD3AFCC();
    (*(v4 + 8))(v7, v2);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v8 = 0;
  }

  [v1 removeNetworkReachableObserver_];
  return swift_unknownObjectRelease();
}

id sub_26CC56624()
{
  type metadata accessor for NetworkReachabilityMonitor();
  swift_allocObject();
  result = sub_26CC56C5C();
  qword_2804BC340 = result;
  return result;
}

uint64_t static NetworkReachabilityMonitor.shared.getter()
{
  if (qword_2804BBA00 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26CC566BC()
{
  v1 = *(v0 + 64);
  sub_26CD3A9EC();
  return v3;
}

uint64_t sub_26CC5671C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26CC56BCC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26CC56750()
{
  v1 = sub_26CD3A49C();
  v17 = *(v1 - 8);
  v2 = *(v17 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26CD3A4CC();
  v5 = *(v16 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC350, &unk_26CD40010);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26CD3C1E0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000026CD4E1D0;
  *(inited + 48) = sub_26CC56BCC() & 1;
  v10 = sub_26CC32398(inited);
  swift_setDeallocating();
  sub_26CC1B544(inited + 32, &qword_2804BC358, &unk_26CD454D0);
  sub_26CC18080(0, &qword_280BBB790, 0x277D85C78);
  v11 = sub_26CD3A9DC();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  *(v12 + 24) = v10;
  aBlock[4] = sub_26CC57A48;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CC1DDD0;
  aBlock[3] = &block_descriptor_16;
  v13 = _Block_copy(aBlock);

  sub_26CD3A4AC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26CC57A50(&qword_280BBB7F0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC40, &unk_26CD45D50);
  sub_26CC1DD84(&qword_280BBB7D0, &unk_2804BCC40, &unk_26CD45D50);
  sub_26CD3AB5C();
  MEMORY[0x26D6AD3E0](0, v8, v4, v13);
  _Block_release(v13);

  (*(v17 + 8))(v4, v1);
  return (*(v5 + 8))(v8, v16);
}

void sub_26CC56AD0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultCenter];
  if (qword_2804BB9F8 != -1)
  {
    swift_once();
  }

  v5 = qword_2804BC338;
  sub_26CCC8088(a2);
  v6 = sub_26CD3A4DC();

  [v4 postNotificationName:v5 object:a1 userInfo:v6];
}

uint64_t sub_26CC56BCC()
{
  LODWORD(v1) = *(v0 + 16);
  if (v1 == 2)
  {
    sub_26CC19A84(v0 + 24, v4);
    v1 = v5;
    v2 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    LOBYTE(v1) = (*(v2 + 24))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v4);
    *(v0 + 16) = v1 & 1;
  }

  return v1 & 1;
}

id sub_26CC56C5C()
{
  v1 = sub_26CD3A9CC();
  v15 = *(v1 - 8);
  v16 = v1;
  v2 = *(v15 + 64);
  MEMORY[0x28223BE20](v1);
  v14 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26CD3AA5C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_26CD3A4CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  *(v0 + 16) = 2;
  result = [objc_opt_self() sharedNetworkObserver];
  if (result)
  {
    v9 = result;
    *(v0 + 48) = sub_26CC18080(0, &qword_2804BC360, 0x277CEC5B8);
    *(v0 + 56) = &off_287DFEE98;
    *(v0 + 24) = v9;
    v13[1] = sub_26CC18080(0, &qword_2804BC368, 0x277D85C90);
    sub_26CD3A4AC();
    v18[0] = MEMORY[0x277D84F90];
    sub_26CC57A50(&qword_2804BC370, MEMORY[0x277D852D8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC378, &unk_26CD40020);
    sub_26CC1DD84(&qword_2804BC380, &qword_2804BC378, &unk_26CD40020);
    sub_26CD3AB5C();
    (*(v15 + 104))(v14, *MEMORY[0x277D85268], v16);
    *(v0 + 64) = sub_26CD3AA6C();
    sub_26CC19A84(v0 + 24, v18);
    v10 = v19;
    v11 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v17[3] = type metadata accessor for NetworkReachabilityMonitor();
    v17[0] = v0;
    v12 = *(v11 + 8);

    v12(v17, sel_handleNetworkReachabilityDidChange_, v10, v11);
    sub_26CC1B544(v17, &qword_2804BBDA8, &qword_26CD3D5F0);
    __swift_destroy_boxed_opaque_existential_1(v18);
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NetworkReachabilityMonitor.deinit()
{
  sub_26CC19A84(v0 + 24, v6);
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v5[3] = type metadata accessor for NetworkReachabilityMonitor();
  v5[0] = v0;
  v3 = *(v2 + 16);

  v3(v5, v1, v2);
  sub_26CC1B544(v5, &qword_2804BBDA8, &qword_26CD3D5F0);
  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return v0;
}

uint64_t NetworkReachabilityMonitor.__deallocating_deinit()
{
  sub_26CC19A84(v0 + 24, v6);
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v5[3] = type metadata accessor for NetworkReachabilityMonitor();
  v5[0] = v0;
  v3 = *(v2 + 16);

  v3(v5, v1, v2);
  sub_26CC1B544(v5, &qword_2804BBDA8, &qword_26CD3D5F0);
  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_26CC571E0()
{
  v1 = v0;
  v2 = sub_26CD3A49C();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26CD3A4CC();
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26CD39DDC();
  if (v10)
  {
    v11 = v10;
    v12 = *MEMORY[0x277CEC510];
    v30 = sub_26CD3A5CC();
    v31 = v13;
    sub_26CD3ABFC();
    if (*(v11 + 16) && (v14 = sub_26CCCA694(&aBlock), (v15 & 1) != 0))
    {
      sub_26CC168C0(*(v11 + 56) + 32 * v14, v32);
      sub_26CC579C4(&aBlock);

      if (swift_dynamicCast())
      {
        v16 = v30;
        v17 = *(v1 + 64);
        v18 = swift_allocObject();
        *(v18 + 16) = v1;
        *(v18 + 24) = v16;
        v37 = sub_26CC57A18;
        v38 = v18;
        aBlock = MEMORY[0x277D85DD0];
        v34 = 1107296256;
        v35 = sub_26CC1DDD0;
        v36 = &block_descriptor_10;
        v19 = _Block_copy(&aBlock);

        sub_26CD3A4AC();
        v32[0] = MEMORY[0x277D84F90];
        sub_26CC57A50(&qword_280BBB7F0, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC40, &unk_26CD45D50);
        sub_26CC1DD84(&qword_280BBB7D0, &unk_2804BCC40, &unk_26CD45D50);
        goto LABEL_10;
      }
    }

    else
    {

      sub_26CC579C4(&aBlock);
    }
  }

  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v20 = swift_allocObject();
  v26 = xmmword_26CD3C1E0;
  *(v20 + 16) = xmmword_26CD3C1E0;
  aBlock = 0;
  v34 = 0xE000000000000000;
  sub_26CD3AC6C();
  MEMORY[0x26D6AD060](0xD000000000000058, 0x800000026CD4E2A0);
  sub_26CD39DEC();
  sub_26CC57A50(&qword_2804BC348, MEMORY[0x277CC8900]);
  v21 = sub_26CD3AF8C();
  MEMORY[0x26D6AD060](v21);

  v22 = v34;
  *(v20 + 32) = aBlock;
  *(v20 + 40) = v22;
  sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v23 = swift_allocObject();
  *(v23 + 16) = v26;
  *(v23 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v23 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
  *(v23 + 32) = v20;
  sub_26CD3A3DC();

  v24 = *(v1 + 64);
  v37 = sub_26CC579BC;
  v38 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_26CC1DDD0;
  v36 = &block_descriptor_1;
  v19 = _Block_copy(&aBlock);

  sub_26CD3A4AC();
  v32[0] = MEMORY[0x277D84F90];
  sub_26CC57A50(&qword_280BBB7F0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC40, &unk_26CD45D50);
  sub_26CC1DD84(&qword_280BBB7D0, &unk_2804BCC40, &unk_26CD45D50);
LABEL_10:
  sub_26CD3AB5C();
  MEMORY[0x26D6AD3E0](0, v9, v5, v19);
  _Block_release(v19);
  (*(v29 + 8))(v5, v2);
  (*(v27 + 8))(v9, v28);
}

uint64_t sub_26CC5784C(uint64_t a1)
{
  sub_26CC19A84(a1 + 24, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  *(a1 + 16) = (*(v3 + 24))(v2, v3) & 1;
  sub_26CC56750();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_26CC57A50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26CC57AC4(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26CC16C10;

  return v9(a1, a2);
}

uint64_t ContentServiceError.hashValue.getter()
{
  v1 = *v0;
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](v1);
  return sub_26CD3B13C();
}

unint64_t sub_26CC57C78()
{
  result = qword_2804BC388;
  if (!qword_2804BC388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC388);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ItemContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ItemContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}