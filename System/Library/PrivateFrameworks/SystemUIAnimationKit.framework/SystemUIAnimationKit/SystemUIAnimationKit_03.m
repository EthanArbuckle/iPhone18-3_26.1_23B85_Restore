unint64_t sub_26C60F4D0()
{
  result = qword_2804A5908;
  if (!qword_2804A5908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A5908);
  }

  return result;
}

SystemUIAnimationKit::ScanwaveImageConfiguration __swiftcall ScanwaveImageConfiguration.init(image:depthImage:)(UIImage image, UIImage depthImage)
{
  v2->super.isa = image.super.isa;
  v2[1].super.isa = depthImage.super.isa;
  result.depthImage = depthImage;
  result.image = image;
  return result;
}

uint64_t sub_26C60F5D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26C60F61C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_26C60F668()
{
  v0 = sub_26C608FE8(0, 49, 0, MEMORY[0x277D84F90]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = sub_26C608FE8((v1 > 1), v2 + 1, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[40 * v2];
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 8) = 0x3FE0000000000000;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v0 = sub_26C608FE8((v1 > 1), v2 + 2, 1, v0);
  }

  *(v0 + 2) = v6;
  v7 = &v0[40 * v4];
  *(v7 + 2) = xmmword_26C618520;
  *(v7 + 3) = xmmword_26C618520;
  *(v7 + 8) = 0x3FE0000000000000;
  v8 = *(v0 + 3);
  v9 = v2 + 3;
  if ((v2 + 3) > (v8 >> 1))
  {
    v0 = sub_26C608FE8((v8 > 1), v2 + 3, 1, v0);
  }

  *(v0 + 2) = v9;
  v10 = &v0[40 * v6];
  *(v10 + 2) = xmmword_26C6184C0;
  *(v10 + 3) = xmmword_26C6184C0;
  *(v10 + 8) = 0x3FE0000000000000;
  v11 = *(v0 + 3);
  v12 = v2 + 4;
  if ((v2 + 4) > (v11 >> 1))
  {
    v0 = sub_26C608FE8((v11 > 1), v2 + 4, 1, v0);
  }

  *(v0 + 2) = v12;
  v13 = &v0[40 * v9];
  *(v13 + 4) = 0x3FE0000000000000;
  v14 = xmmword_26C6184B0;
  *(v13 + 40) = xmmword_26C6184B0;
  *(v13 + 56) = xmmword_26C6184B0;
  v15 = *(v0 + 3);
  v16 = v2 + 5;
  if ((v2 + 5) > (v15 >> 1))
  {
    v277 = sub_26C608FE8((v15 > 1), v2 + 5, 1, v0);
    v14 = xmmword_26C6184B0;
    v0 = v277;
  }

  *(v0 + 2) = v16;
  v17 = &v0[40 * v12];
  *(v17 + 2) = xmmword_26C6184D0;
  *(v17 + 3) = xmmword_26C6184D0;
  *(v17 + 8) = 0x3FE0000000000000;
  v18 = *(v0 + 3);
  v19 = v2 + 6;
  if ((v2 + 6) > (v18 >> 1))
  {
    v313 = v14;
    v278 = sub_26C608FE8((v18 > 1), v2 + 6, 1, v0);
    v14 = v313;
    v0 = v278;
  }

  *(v0 + 2) = v19;
  v20 = &v0[40 * v16];
  *(v20 + 2) = xmmword_26C6186E0;
  *(v20 + 3) = xmmword_26C6186E0;
  *(v20 + 8) = 0x3FE0000000000000;
  v21 = *(v0 + 3);
  v22 = v2 + 7;
  if ((v2 + 7) > (v21 >> 1))
  {
    v314 = v14;
    v279 = sub_26C608FE8((v21 > 1), v2 + 7, 1, v0);
    v14 = v314;
    v0 = v279;
  }

  *(v0 + 2) = v22;
  v23 = &v0[40 * v19];
  *(v23 + 2) = xmmword_26C618500;
  *(v23 + 3) = xmmword_26C618500;
  *(v23 + 8) = 0x3FE0000000000000;
  v24 = *(v0 + 3);
  v25 = v2 + 8;
  if ((v2 + 8) > (v24 >> 1))
  {
    v315 = v14;
    v280 = sub_26C608FE8((v24 > 1), v2 + 8, 1, v0);
    v14 = v315;
    v0 = v280;
  }

  *(v0 + 2) = v25;
  v26 = &v0[40 * v22];
  *(v26 + 2) = xmmword_26C6184A0;
  *(v26 + 3) = xmmword_26C6184A0;
  *(v26 + 8) = 0x3FE0000000000000;
  v27 = *(v0 + 3);
  v28 = v2 + 9;
  if ((v2 + 9) > (v27 >> 1))
  {
    v316 = v14;
    v281 = sub_26C608FE8((v27 > 1), v2 + 9, 1, v0);
    v14 = v316;
    v0 = v281;
  }

  *(v0 + 2) = v28;
  v29 = &v0[40 * v25];
  v30 = vdupq_n_s64(0x3FC555555FFDF467uLL);
  v29[2] = v30;
  v29[3] = v30;
  v29[4].i64[0] = 0x3FE0000000000000;
  v31 = *(v0 + 3);
  v32 = v2 + 10;
  if ((v2 + 10) > (v31 >> 1))
  {
    v317 = v14;
    v282 = sub_26C608FE8((v31 > 1), v2 + 10, 1, v0);
    v14 = v317;
    v0 = v282;
  }

  *(v0 + 2) = v32;
  v33 = &v0[40 * v28];
  *(v33 + 2) = xmmword_26C6185C0;
  *(v33 + 3) = xmmword_26C6185C0;
  *(v33 + 8) = 0x3FE0000000000000;
  v34 = *(v0 + 3);
  v35 = v2 + 11;
  if ((v2 + 11) > (v34 >> 1))
  {
    v318 = v14;
    v283 = sub_26C608FE8((v34 > 1), v2 + 11, 1, v0);
    v14 = v318;
    v0 = v283;
  }

  *(v0 + 2) = v35;
  v36 = &v0[40 * v32];
  *(v36 + 4) = 0x3FE0000000000000;
  v37 = xmmword_26C618530;
  *(v36 + 40) = xmmword_26C618530;
  *(v36 + 56) = xmmword_26C618530;
  v38 = *(v0 + 3);
  v39 = v2 + 12;
  if ((v2 + 12) > (v38 >> 1))
  {
    v319 = v14;
    v284 = sub_26C608FE8((v38 > 1), v2 + 12, 1, v0);
    v37 = xmmword_26C618530;
    v14 = v319;
    v0 = v284;
  }

  *(v0 + 2) = v39;
  v40 = &v0[40 * v35];
  *(v40 + 2) = xmmword_26C618690;
  *(v40 + 3) = xmmword_26C618690;
  *(v40 + 8) = 0x3FE0000000000000;
  v41 = *(v0 + 3);
  v42 = v2 + 13;
  if ((v2 + 13) > (v41 >> 1))
  {
    v302 = v37;
    v320 = v14;
    v285 = sub_26C608FE8((v41 > 1), v2 + 13, 1, v0);
    v37 = v302;
    v14 = v320;
    v0 = v285;
  }

  *(v0 + 2) = v42;
  v43 = &v0[40 * v39];
  *(v43 + 2) = xmmword_26C618580;
  *(v43 + 3) = xmmword_26C618580;
  *(v43 + 8) = 0x3FE0000000000000;
  v44 = *(v0 + 3);
  v45 = v2 + 14;
  if ((v2 + 14) > (v44 >> 1))
  {
    v303 = v37;
    v321 = v14;
    v286 = sub_26C608FE8((v44 > 1), v2 + 14, 1, v0);
    v37 = v303;
    v14 = v321;
    v0 = v286;
  }

  *(v0 + 2) = v45;
  v46 = &v0[40 * v42];
  *(v46 + 2) = xmmword_26C618740;
  *(v46 + 3) = xmmword_26C618740;
  *(v46 + 8) = 0x3FE0000000000000;
  v47 = *(v0 + 3);
  v48 = v2 + 15;
  if ((v2 + 15) > (v47 >> 1))
  {
    v304 = v37;
    v322 = v14;
    v287 = sub_26C608FE8((v47 > 1), v2 + 15, 1, v0);
    v37 = v304;
    v14 = v322;
    v0 = v287;
  }

  *(v0 + 2) = v48;
  v49 = &v0[40 * v45];
  *(v49 + 2) = xmmword_26C6185B0;
  *(v49 + 3) = xmmword_26C6185B0;
  *(v49 + 8) = 0x3FE0000000000000;
  v50 = *(v0 + 3);
  v51 = v2 + 16;
  if ((v2 + 16) > (v50 >> 1))
  {
    v305 = v37;
    v323 = v14;
    v288 = sub_26C608FE8((v50 > 1), v2 + 16, 1, v0);
    v37 = v305;
    v14 = v323;
    v0 = v288;
  }

  *(v0 + 2) = v51;
  v52 = &v0[40 * v48];
  *(v52 + 2) = xmmword_26C618550;
  *(v52 + 3) = xmmword_26C618550;
  *(v52 + 8) = 0x3FE0000000000000;
  v53 = *(v0 + 3);
  v54 = v2 + 17;
  if ((v2 + 17) > (v53 >> 1))
  {
    v306 = v37;
    v324 = v14;
    v289 = sub_26C608FE8((v53 > 1), v2 + 17, 1, v0);
    v37 = v306;
    v14 = v324;
    v0 = v289;
  }

  *(v0 + 2) = v54;
  v55 = &v0[40 * v51];
  v56 = vdupq_n_s64(0x3FD555556000B417uLL);
  v55[2] = v56;
  v55[3] = v56;
  v55[4].i64[0] = 0x3FE0000000000000;
  v57 = *(v0 + 3);
  v58 = v2 + 18;
  if ((v2 + 18) > (v57 >> 1))
  {
    v307 = v37;
    v325 = v14;
    v290 = sub_26C608FE8((v57 > 1), v2 + 18, 1, v0);
    v37 = v307;
    v14 = v325;
    v0 = v290;
  }

  *(v0 + 2) = v58;
  v59 = &v0[40 * v54];
  *(v59 + 4) = 0x3FE0000000000000;
  v60 = xmmword_26C6185D0;
  *(v59 + 40) = xmmword_26C6185D0;
  *(v59 + 56) = xmmword_26C6185D0;
  v61 = *(v0 + 3);
  v62 = v2 + 19;
  if ((v2 + 19) > (v61 >> 1))
  {
    v308 = v37;
    v326 = v14;
    v291 = sub_26C608FE8((v61 > 1), v2 + 19, 1, v0);
    v60 = xmmword_26C6185D0;
    v37 = v308;
    v14 = v326;
    v0 = v291;
  }

  *(v0 + 2) = v62;
  v63 = &v0[40 * v58];
  *(v63 + 2) = xmmword_26C618600;
  *(v63 + 3) = xmmword_26C618600;
  *(v63 + 8) = 0x3FE0000000000000;
  v64 = *(v0 + 3);
  v65 = v2 + 20;
  if ((v2 + 20) > (v64 >> 1))
  {
    v309 = v37;
    v327 = v14;
    v297 = v60;
    v292 = sub_26C608FE8((v64 > 1), v2 + 20, 1, v0);
    v60 = v297;
    v37 = v309;
    v14 = v327;
    v0 = v292;
  }

  *(v0 + 2) = v65;
  v66 = &v0[40 * v62];
  *(v66 + 2) = xmmword_26C618700;
  *(v66 + 3) = xmmword_26C618700;
  *(v66 + 8) = 0x3FE0000000000000;
  v67 = *(v0 + 3);
  v68 = v2 + 21;
  if ((v2 + 21) > (v67 >> 1))
  {
    v310 = v37;
    v328 = v14;
    v298 = v60;
    v293 = sub_26C608FE8((v67 > 1), v2 + 21, 1, v0);
    v60 = v298;
    v37 = v310;
    v14 = v328;
    v0 = v293;
  }

  *(v0 + 2) = v68;
  v69 = &v0[40 * v65];
  *(v69 + 2) = xmmword_26C618620;
  *(v69 + 3) = xmmword_26C618620;
  *(v69 + 8) = 0x3FE0000000000000;
  v70 = *(v0 + 3);
  v71 = v2 + 22;
  if ((v2 + 22) > (v70 >> 1))
  {
    v311 = v37;
    v329 = v14;
    v299 = v60;
    v294 = sub_26C608FE8((v70 > 1), v2 + 22, 1, v0);
    v60 = v299;
    v37 = v311;
    v14 = v329;
    v0 = v294;
  }

  *(v0 + 2) = v71;
  v72 = &v0[40 * v68];
  *(v72 + 2) = v14;
  *(v72 + 3) = v14;
  *(v72 + 8) = 0x3FE0000000000000;
  v73 = *(v0 + 3);
  v74 = v2 + 23;
  if ((v2 + 23) > (v73 >> 1))
  {
    v300 = v60;
    v312 = v37;
    v295 = sub_26C608FE8((v73 > 1), v2 + 23, 1, v0);
    v60 = v300;
    v37 = v312;
    v0 = v295;
  }

  *(v0 + 2) = v74;
  v75 = &v0[40 * v71];
  *(v75 + 2) = v37;
  *(v75 + 3) = xmmword_26C61B630;
  *(v75 + 8) = 0x3FE0000000000000;
  v76 = *(v0 + 3);
  v77 = v2 + 24;
  if ((v2 + 24) > (v76 >> 1))
  {
    v301 = v60;
    v296 = sub_26C608FE8((v76 > 1), v2 + 24, 1, v0);
    v60 = v301;
    v0 = v296;
  }

  *(v0 + 2) = v77;
  v78 = &v0[40 * v74];
  *(v78 + 2) = v60;
  *(v78 + 6) = 0x3FD298E6FFFF8346;
  *(v78 + 56) = xmmword_26C61B640;
  v79 = *(v0 + 3);
  v80 = v2 + 25;
  if ((v2 + 25) > (v79 >> 1))
  {
    v0 = sub_26C608FE8((v79 > 1), v2 + 25, 1, v0);
  }

  *(v0 + 2) = v80;
  v81 = &v0[40 * v77];
  __asm { FMOV            V0.2D, #0.5 }

  *(v81 + 2) = _Q0;
  *(v81 + 3) = _Q0;
  *(v81 + 8) = 0x407EE725600002CBLL;
  v87 = *(v0 + 3);
  v88 = v2 + 26;
  if ((v2 + 26) > (v87 >> 1))
  {
    v0 = sub_26C608FE8((v87 > 1), v2 + 26, 1, v0);
  }

  *(v0 + 2) = v88;
  v89 = &v0[40 * v80];
  *(v89 + 2) = xmmword_26C6186A0;
  *(v89 + 3) = xmmword_26C61B650;
  *(v89 + 8) = 0x407B60BC20000181;
  v90 = *(v0 + 3);
  v91 = v2 + 27;
  if ((v2 + 27) > (v90 >> 1))
  {
    v0 = sub_26C608FE8((v90 > 1), v2 + 27, 1, v0);
  }

  *(v0 + 2) = v91;
  v92 = &v0[40 * v88];
  *(v92 + 2) = xmmword_26C618670;
  *(v92 + 3) = xmmword_26C61B660;
  *(v92 + 8) = 0x3FE0000000000000;
  v93 = *(v0 + 3);
  v94 = v2 + 28;
  if ((v2 + 28) > (v93 >> 1))
  {
    v0 = sub_26C608FE8((v93 > 1), v2 + 28, 1, v0);
  }

  *(v0 + 2) = v94;
  v95 = &v0[40 * v91];
  *(v95 + 2) = xmmword_26C618750;
  *(v95 + 3) = xmmword_26C618750;
  *(v95 + 8) = 0x3FE0000000000000;
  v96 = *(v0 + 3);
  v97 = v2 + 29;
  if ((v2 + 29) > (v96 >> 1))
  {
    v0 = sub_26C608FE8((v96 > 1), v2 + 29, 1, v0);
  }

  *(v0 + 2) = v97;
  v98 = &v0[40 * v94];
  *(v98 + 2) = xmmword_26C618680;
  *(v98 + 3) = xmmword_26C618680;
  *(v98 + 8) = 0x3FE0000000000000;
  v99 = *(v0 + 3);
  v100 = v2 + 30;
  if ((v2 + 30) > (v99 >> 1))
  {
    v0 = sub_26C608FE8((v99 > 1), v2 + 30, 1, v0);
  }

  *(v0 + 2) = v100;
  v101 = &v0[40 * v97];
  *(v101 + 2) = xmmword_26C618570;
  *(v101 + 3) = xmmword_26C61B670;
  *(v101 + 8) = 0x3FE0000000000000;
  v102 = *(v0 + 3);
  v103 = v2 + 31;
  if ((v2 + 31) > (v102 >> 1))
  {
    v0 = sub_26C608FE8((v102 > 1), v2 + 31, 1, v0);
  }

  *(v0 + 2) = v103;
  v104 = &v0[40 * v100];
  *(v104 + 2) = xmmword_26C6186B0;
  *(v104 + 3) = xmmword_26C6186B0;
  *(v104 + 8) = 0x3FE0000000000000;
  v105 = *(v0 + 3);
  v106 = v2 + 32;
  if ((v2 + 32) > (v105 >> 1))
  {
    v0 = sub_26C608FE8((v105 > 1), v2 + 32, 1, v0);
  }

  *(v0 + 2) = v106;
  v107 = &v0[40 * v103];
  *(v107 + 2) = xmmword_26C618560;
  *(v107 + 3) = xmmword_26C618560;
  *(v107 + 8) = 0x3FE0000000000000;
  v108 = *(v0 + 3);
  v109 = v2 + 33;
  if ((v2 + 33) > (v108 >> 1))
  {
    v0 = sub_26C608FE8((v108 > 1), v2 + 33, 1, v0);
  }

  *(v0 + 2) = v109;
  v110 = &v0[40 * v106];
  v111 = vdupq_n_s64(0x3FE555555FFF543FuLL);
  v110[2] = v111;
  v110[3] = v111;
  v110[4].i64[0] = 0x3FE0000000000000;
  v112 = *(v0 + 3);
  v113 = v2 + 34;
  if ((v2 + 34) > (v112 >> 1))
  {
    v0 = sub_26C608FE8((v112 > 1), v2 + 34, 1, v0);
  }

  *(v0 + 2) = v113;
  v114 = &v0[40 * v109];
  *(v114 + 2) = xmmword_26C618710;
  *(v114 + 3) = xmmword_26C61B680;
  *(v114 + 8) = 0x3FE0000000000000;
  v115 = *(v0 + 3);
  v116 = v2 + 35;
  if ((v2 + 35) > (v115 >> 1))
  {
    v0 = sub_26C608FE8((v115 > 1), v2 + 35, 1, v0);
  }

  *(v0 + 2) = v116;
  v117 = &v0[40 * v113];
  *(v117 + 2) = xmmword_26C6186D0;
  *(v117 + 3) = xmmword_26C6186D0;
  *(v117 + 8) = 0x3FE0000000000000;
  v118 = *(v0 + 3);
  v119 = v2 + 36;
  if ((v2 + 36) > (v118 >> 1))
  {
    v0 = sub_26C608FE8((v118 > 1), v2 + 36, 1, v0);
  }

  *(v0 + 2) = v119;
  v120 = &v0[40 * v116];
  *(v120 + 2) = xmmword_26C6184F0;
  *(v120 + 3) = xmmword_26C6184F0;
  *(v120 + 8) = 0x3FE0000000000000;
  v121 = *(v0 + 3);
  v122 = v2 + 37;
  if ((v2 + 37) > (v121 >> 1))
  {
    v0 = sub_26C608FE8((v121 > 1), v2 + 37, 1, v0);
  }

  *(v0 + 2) = v122;
  v123 = &v0[40 * v119];
  *(v123 + 2) = xmmword_26C6186F0;
  *(v123 + 3) = xmmword_26C6186F0;
  *(v123 + 8) = 0x3FE0000000000000;
  v124 = *(v0 + 3);
  v125 = v2 + 38;
  if ((v2 + 38) > (v124 >> 1))
  {
    v0 = sub_26C608FE8((v124 > 1), v2 + 38, 1, v0);
  }

  *(v0 + 2) = v125;
  v126 = &v0[40 * v122];
  *(v126 + 2) = xmmword_26C618610;
  *(v126 + 3) = xmmword_26C618610;
  *(v126 + 8) = 0x3FE0000000000000;
  v127 = *(v0 + 3);
  v128 = v2 + 39;
  if ((v2 + 39) > (v127 >> 1))
  {
    v0 = sub_26C608FE8((v127 > 1), v2 + 39, 1, v0);
  }

  *(v0 + 2) = v128;
  v129 = &v0[40 * v125];
  *(v129 + 2) = xmmword_26C6184E0;
  *(v129 + 3) = xmmword_26C6184E0;
  *(v129 + 8) = 0x3FE0000000000000;
  v130 = *(v0 + 3);
  v131 = v2 + 40;
  if ((v2 + 40) > (v130 >> 1))
  {
    v0 = sub_26C608FE8((v130 > 1), v2 + 40, 1, v0);
  }

  *(v0 + 2) = v131;
  v132 = &v0[40 * v128];
  *(v132 + 2) = xmmword_26C6186C0;
  *(v132 + 3) = xmmword_26C6186C0;
  *(v132 + 8) = 0x3FE0000000000000;
  v133 = *(v0 + 3);
  v134 = v2 + 41;
  if ((v2 + 41) > (v133 >> 1))
  {
    v0 = sub_26C608FE8((v133 > 1), v2 + 41, 1, v0);
  }

  *(v0 + 2) = v134;
  v135 = &v0[40 * v131];
  v136 = vdupq_n_s64(0x3FEAAAAAA000ABC1uLL);
  v135[2] = v136;
  v135[3] = v136;
  v135[4].i64[0] = 0x3FE0000000000000;
  v137 = *(v0 + 3);
  v138 = v2 + 42;
  if ((v2 + 42) > (v137 >> 1))
  {
    v0 = sub_26C608FE8((v137 > 1), v2 + 42, 1, v0);
  }

  *(v0 + 2) = v138;
  v139 = &v0[40 * v134];
  *(v139 + 2) = xmmword_26C618780;
  *(v139 + 3) = xmmword_26C618780;
  *(v139 + 8) = 0x3FE0000000000000;
  v140 = *(v0 + 3);
  v141 = v2 + 43;
  if ((v2 + 43) > (v140 >> 1))
  {
    v0 = sub_26C608FE8((v140 > 1), v2 + 43, 1, v0);
  }

  *(v0 + 2) = v141;
  v142 = &v0[40 * v138];
  *(v142 + 2) = xmmword_26C618730;
  *(v142 + 3) = xmmword_26C618730;
  *(v142 + 8) = 0x3FE0000000000000;
  v143 = *(v0 + 3);
  v144 = v2 + 44;
  if ((v2 + 44) > (v143 >> 1))
  {
    v0 = sub_26C608FE8((v143 > 1), v2 + 44, 1, v0);
  }

  *(v0 + 2) = v144;
  v145 = &v0[40 * v141];
  *(v145 + 2) = xmmword_26C6185A0;
  *(v145 + 3) = xmmword_26C6185A0;
  *(v145 + 8) = 0x3FE0000000000000;
  v146 = *(v0 + 3);
  v147 = v2 + 45;
  if ((v2 + 45) > (v146 >> 1))
  {
    v0 = sub_26C608FE8((v146 > 1), v2 + 45, 1, v0);
  }

  *(v0 + 2) = v147;
  v148 = &v0[40 * v144];
  *(v148 + 2) = xmmword_26C618760;
  *(v148 + 3) = xmmword_26C618760;
  *(v148 + 8) = 0x3FE0000000000000;
  v149 = *(v0 + 3);
  v150 = v2 + 46;
  if ((v2 + 46) > (v149 >> 1))
  {
    v0 = sub_26C608FE8((v149 > 1), v2 + 46, 1, v0);
  }

  *(v0 + 2) = v150;
  v151 = &v0[40 * v147];
  *(v151 + 2) = xmmword_26C618590;
  *(v151 + 3) = xmmword_26C618590;
  *(v151 + 8) = 0x3FE0000000000000;
  v152 = *(v0 + 3);
  v153 = v2 + 47;
  if ((v2 + 47) > (v152 >> 1))
  {
    v0 = sub_26C608FE8((v152 > 1), v2 + 47, 1, v0);
  }

  *(v0 + 2) = v153;
  v154 = &v0[40 * v150];
  *(v154 + 2) = xmmword_26C618770;
  *(v154 + 3) = xmmword_26C618770;
  *(v154 + 8) = 0x3FE0000000000000;
  v155 = *(v0 + 3);
  v156 = v2 + 48;
  if ((v2 + 48) > (v155 >> 1))
  {
    v0 = sub_26C608FE8((v155 > 1), v2 + 48, 1, v0);
  }

  *(v0 + 2) = v156;
  v157 = &v0[40 * v153];
  *(v157 + 2) = xmmword_26C618720;
  *(v157 + 3) = xmmword_26C618720;
  *(v157 + 8) = 0x3FE0000000000000;
  v158 = *(v0 + 3);
  if ((v2 + 49) > (v158 >> 1))
  {
    v0 = sub_26C608FE8((v158 > 1), v2 + 49, 1, v0);
  }

  *(v0 + 2) = v2 + 49;
  v159 = &v0[40 * v156 + 32];
  __asm { FMOV            V0.2D, #1.0 }

  *v159 = _Q0;
  *(v159 + 16) = _Q0;
  *(v159 + 32) = 0x3FE0000000000000;
  v161 = sub_26C608EE4(0, 36, 0, MEMORY[0x277D84F90]);
  v163 = *(v161 + 2);
  v162 = *(v161 + 3);
  v164 = v162 >> 1;
  v165 = v163 + 1;
  if (v162 >> 1 <= v163)
  {
    v161 = sub_26C608EE4((v162 > 1), v163 + 1, 1, v161);
    v162 = *(v161 + 3);
    v164 = v162 >> 1;
  }

  *(v161 + 2) = v165;
  v166 = &v161[32 * v163];
  *(v166 + 2) = xmmword_26C618790;
  v167 = v163 + 2;
  *(v166 + 6) = 0;
  *(v166 + 7) = 0;
  if (v164 < (v163 + 2))
  {
    v161 = sub_26C608EE4((v162 > 1), v163 + 2, 1, v161);
  }

  *(v161 + 2) = v167;
  v168 = &v161[32 * v165];
  *(v168 + 2) = xmmword_26C6187A0;
  *(v168 + 6) = 0;
  *(v168 + 7) = 0;
  v169 = *(v161 + 3);
  v170 = v163 + 3;
  if ((v163 + 3) > (v169 >> 1))
  {
    v161 = sub_26C608EE4((v169 > 1), v163 + 3, 1, v161);
  }

  *(v161 + 2) = v170;
  v171 = &v161[32 * v167];
  *(v171 + 2) = xmmword_26C6187B0;
  *(v171 + 6) = 0;
  *(v171 + 7) = 0;
  v172 = *(v161 + 3);
  v173 = v163 + 4;
  if ((v163 + 4) > (v172 >> 1))
  {
    v161 = sub_26C608EE4((v172 > 1), v163 + 4, 1, v161);
  }

  *(v161 + 2) = v173;
  v174 = &v161[32 * v170];
  *(v174 + 2) = xmmword_26C6187C0;
  *(v174 + 6) = 0;
  *(v174 + 7) = 0;
  v175 = *(v161 + 3);
  v176 = v163 + 5;
  if ((v163 + 5) > (v175 >> 1))
  {
    v161 = sub_26C608EE4((v175 > 1), v163 + 5, 1, v161);
  }

  *(v161 + 2) = v176;
  v177 = &v161[32 * v173];
  *(v177 + 2) = xmmword_26C6187D0;
  *(v177 + 6) = 0;
  *(v177 + 7) = 0;
  v178 = *(v161 + 3);
  v179 = v163 + 6;
  if ((v163 + 6) > (v178 >> 1))
  {
    v161 = sub_26C608EE4((v178 > 1), v163 + 6, 1, v161);
  }

  *(v161 + 2) = v179;
  v180 = &v161[32 * v176];
  *(v180 + 2) = xmmword_26C6187E0;
  *(v180 + 6) = 0;
  *(v180 + 7) = 0;
  v181 = *(v161 + 3);
  v182 = v163 + 7;
  if ((v163 + 7) > (v181 >> 1))
  {
    v161 = sub_26C608EE4((v181 > 1), v163 + 7, 1, v161);
  }

  *(v161 + 2) = v182;
  v183 = &v161[32 * v179];
  *(v183 + 2) = xmmword_26C6187F0;
  *(v183 + 6) = 0;
  *(v183 + 7) = 0;
  v184 = *(v161 + 3);
  v185 = v163 + 8;
  if ((v163 + 8) > (v184 >> 1))
  {
    v161 = sub_26C608EE4((v184 > 1), v163 + 8, 1, v161);
  }

  *(v161 + 2) = v185;
  v186 = &v161[32 * v182];
  *(v186 + 2) = xmmword_26C618800;
  *(v186 + 6) = 0;
  *(v186 + 7) = 0;
  v187 = *(v161 + 3);
  v188 = v163 + 9;
  if ((v163 + 9) > (v187 >> 1))
  {
    v161 = sub_26C608EE4((v187 > 1), v163 + 9, 1, v161);
  }

  *(v161 + 2) = v188;
  v189 = &v161[32 * v185];
  *(v189 + 2) = xmmword_26C618810;
  *(v189 + 6) = 0;
  *(v189 + 7) = 0;
  v190 = *(v161 + 3);
  v191 = v163 + 10;
  if ((v163 + 10) > (v190 >> 1))
  {
    v161 = sub_26C608EE4((v190 > 1), v163 + 10, 1, v161);
  }

  *(v161 + 2) = v191;
  v192 = &v161[32 * v188];
  *(v192 + 2) = xmmword_26C618820;
  *(v192 + 6) = 0;
  *(v192 + 7) = 0;
  v193 = *(v161 + 3);
  v194 = v163 + 11;
  if ((v163 + 11) > (v193 >> 1))
  {
    v161 = sub_26C608EE4((v193 > 1), v163 + 11, 1, v161);
  }

  *(v161 + 2) = v194;
  v195 = &v161[32 * v191];
  *(v195 + 2) = xmmword_26C618830;
  *(v195 + 6) = 0;
  *(v195 + 7) = 0;
  v196 = *(v161 + 3);
  v197 = v163 + 12;
  if ((v163 + 12) > (v196 >> 1))
  {
    v161 = sub_26C608EE4((v196 > 1), v163 + 12, 1, v161);
  }

  *(v161 + 2) = v197;
  v198 = &v161[32 * v194];
  *(v198 + 2) = xmmword_26C618840;
  *(v198 + 6) = 0;
  *(v198 + 7) = 0;
  v199 = *(v161 + 3);
  v200 = v163 + 13;
  if ((v163 + 13) > (v199 >> 1))
  {
    v161 = sub_26C608EE4((v199 > 1), v163 + 13, 1, v161);
  }

  *(v161 + 2) = v200;
  v201 = &v161[32 * v197];
  *(v201 + 2) = xmmword_26C618850;
  *(v201 + 6) = 0;
  *(v201 + 7) = 0;
  v202 = *(v161 + 3);
  v203 = v163 + 14;
  if ((v163 + 14) > (v202 >> 1))
  {
    v161 = sub_26C608EE4((v202 > 1), v163 + 14, 1, v161);
  }

  *(v161 + 2) = v203;
  v204 = &v161[32 * v200];
  *(v204 + 2) = xmmword_26C618860;
  *(v204 + 6) = 0;
  *(v204 + 7) = 0;
  v205 = *(v161 + 3);
  v206 = v163 + 15;
  if ((v163 + 15) > (v205 >> 1))
  {
    v161 = sub_26C608EE4((v205 > 1), v163 + 15, 1, v161);
  }

  *(v161 + 2) = v206;
  v207 = &v161[32 * v203];
  *(v207 + 2) = xmmword_26C618870;
  *(v207 + 6) = 0;
  *(v207 + 7) = 0;
  v208 = *(v161 + 3);
  v209 = v163 + 16;
  if ((v163 + 16) > (v208 >> 1))
  {
    v161 = sub_26C608EE4((v208 > 1), v163 + 16, 1, v161);
  }

  *(v161 + 2) = v209;
  v210 = &v161[32 * v206];
  *(v210 + 2) = xmmword_26C618880;
  *(v210 + 6) = 0;
  *(v210 + 7) = 0;
  v211 = *(v161 + 3);
  v212 = v163 + 17;
  if ((v163 + 17) > (v211 >> 1))
  {
    v161 = sub_26C608EE4((v211 > 1), v163 + 17, 1, v161);
  }

  *(v161 + 2) = v212;
  v213 = &v161[32 * v209];
  *(v213 + 2) = xmmword_26C618890;
  *(v213 + 6) = 0;
  *(v213 + 7) = 0;
  v214 = *(v161 + 3);
  v215 = v163 + 18;
  if ((v163 + 18) > (v214 >> 1))
  {
    v161 = sub_26C608EE4((v214 > 1), v163 + 18, 1, v161);
  }

  *(v161 + 2) = v215;
  v216 = &v161[32 * v212];
  *(v216 + 2) = xmmword_26C6188A0;
  *(v216 + 6) = 0;
  *(v216 + 7) = 0;
  v217 = *(v161 + 3);
  v218 = v163 + 19;
  if ((v163 + 19) > (v217 >> 1))
  {
    v161 = sub_26C608EE4((v217 > 1), v163 + 19, 1, v161);
  }

  *(v161 + 2) = v218;
  v219 = &v161[32 * v215];
  *(v219 + 2) = xmmword_26C6188B0;
  *(v219 + 6) = 0;
  *(v219 + 7) = 0;
  v220 = *(v161 + 3);
  v221 = v163 + 20;
  if ((v163 + 20) > (v220 >> 1))
  {
    v161 = sub_26C608EE4((v220 > 1), v163 + 20, 1, v161);
  }

  *(v161 + 2) = v221;
  v222 = &v161[32 * v218];
  *(v222 + 2) = xmmword_26C6188C0;
  *(v222 + 6) = 0;
  *(v222 + 7) = 0;
  v223 = *(v161 + 3);
  v224 = v163 + 21;
  if ((v163 + 21) > (v223 >> 1))
  {
    v161 = sub_26C608EE4((v223 > 1), v163 + 21, 1, v161);
  }

  *(v161 + 2) = v224;
  v225 = &v161[32 * v221];
  *(v225 + 2) = xmmword_26C6188D0;
  *(v225 + 6) = 0;
  *(v225 + 7) = 0;
  v226 = *(v161 + 3);
  v227 = v163 + 22;
  if ((v163 + 22) > (v226 >> 1))
  {
    v161 = sub_26C608EE4((v226 > 1), v163 + 22, 1, v161);
  }

  *(v161 + 2) = v227;
  v228 = &v161[32 * v224];
  *(v228 + 2) = xmmword_26C6188E0;
  *(v228 + 6) = 0;
  *(v228 + 7) = 0;
  v229 = *(v161 + 3);
  v230 = v163 + 23;
  if ((v163 + 23) > (v229 >> 1))
  {
    v161 = sub_26C608EE4((v229 > 1), v163 + 23, 1, v161);
  }

  *(v161 + 2) = v230;
  v231 = &v161[32 * v227];
  *(v231 + 2) = xmmword_26C6188F0;
  *(v231 + 6) = 0;
  *(v231 + 7) = 0;
  v232 = *(v161 + 3);
  v233 = v163 + 24;
  if ((v163 + 24) > (v232 >> 1))
  {
    v161 = sub_26C608EE4((v232 > 1), v163 + 24, 1, v161);
  }

  *(v161 + 2) = v233;
  v234 = &v161[32 * v230];
  *(v234 + 2) = xmmword_26C618900;
  *(v234 + 6) = 0;
  *(v234 + 7) = 0;
  v235 = *(v161 + 3);
  v236 = v163 + 25;
  if ((v163 + 25) > (v235 >> 1))
  {
    v161 = sub_26C608EE4((v235 > 1), v163 + 25, 1, v161);
  }

  *(v161 + 2) = v236;
  v237 = &v161[32 * v233];
  *(v237 + 2) = xmmword_26C618910;
  *(v237 + 6) = 0;
  *(v237 + 7) = 0;
  v238 = *(v161 + 3);
  v239 = v163 + 26;
  if ((v163 + 26) > (v238 >> 1))
  {
    v161 = sub_26C608EE4((v238 > 1), v163 + 26, 1, v161);
  }

  *(v161 + 2) = v239;
  v240 = &v161[32 * v236];
  *(v240 + 2) = xmmword_26C618920;
  *(v240 + 6) = 0;
  *(v240 + 7) = 0;
  v241 = *(v161 + 3);
  v242 = v163 + 27;
  if ((v163 + 27) > (v241 >> 1))
  {
    v161 = sub_26C608EE4((v241 > 1), v163 + 27, 1, v161);
  }

  *(v161 + 2) = v242;
  v243 = &v161[32 * v239];
  *(v243 + 2) = xmmword_26C618930;
  *(v243 + 6) = 0;
  *(v243 + 7) = 0;
  v244 = *(v161 + 3);
  v245 = v163 + 28;
  if ((v163 + 28) > (v244 >> 1))
  {
    v161 = sub_26C608EE4((v244 > 1), v163 + 28, 1, v161);
  }

  *(v161 + 2) = v245;
  v246 = &v161[32 * v242];
  *(v246 + 2) = xmmword_26C618940;
  *(v246 + 6) = 0;
  *(v246 + 7) = 0;
  v247 = *(v161 + 3);
  v248 = v163 + 29;
  if ((v163 + 29) > (v247 >> 1))
  {
    v161 = sub_26C608EE4((v247 > 1), v163 + 29, 1, v161);
  }

  *(v161 + 2) = v248;
  v249 = &v161[32 * v245];
  *(v249 + 2) = xmmword_26C618950;
  *(v249 + 6) = 0;
  *(v249 + 7) = 0;
  v250 = *(v161 + 3);
  v251 = v163 + 30;
  if ((v163 + 30) > (v250 >> 1))
  {
    v161 = sub_26C608EE4((v250 > 1), v163 + 30, 1, v161);
  }

  *(v161 + 2) = v251;
  v252 = &v161[32 * v248];
  *(v252 + 2) = xmmword_26C618960;
  *(v252 + 6) = 0;
  *(v252 + 7) = 0;
  v253 = *(v161 + 3);
  v254 = v163 + 31;
  if ((v163 + 31) > (v253 >> 1))
  {
    v161 = sub_26C608EE4((v253 > 1), v163 + 31, 1, v161);
  }

  *(v161 + 2) = v254;
  v255 = &v161[32 * v251];
  *(v255 + 2) = xmmword_26C618970;
  *(v255 + 6) = 0;
  *(v255 + 7) = 0;
  v256 = *(v161 + 3);
  v257 = v163 + 32;
  if ((v163 + 32) > (v256 >> 1))
  {
    v161 = sub_26C608EE4((v256 > 1), v163 + 32, 1, v161);
  }

  *(v161 + 2) = v257;
  v258 = &v161[32 * v254];
  *(v258 + 2) = xmmword_26C618980;
  *(v258 + 6) = 0;
  *(v258 + 7) = 0;
  v259 = *(v161 + 3);
  v260 = v163 + 33;
  if ((v163 + 33) > (v259 >> 1))
  {
    v161 = sub_26C608EE4((v259 > 1), v163 + 33, 1, v161);
  }

  *(v161 + 2) = v260;
  v261 = &v161[32 * v257];
  *(v261 + 2) = xmmword_26C618990;
  *(v261 + 6) = 0;
  *(v261 + 7) = 0;
  v262 = *(v161 + 3);
  v263 = v163 + 34;
  if ((v163 + 34) > (v262 >> 1))
  {
    v161 = sub_26C608EE4((v262 > 1), v163 + 34, 1, v161);
  }

  *(v161 + 2) = v263;
  v264 = &v161[32 * v260];
  *(v264 + 2) = xmmword_26C6189A0;
  *(v264 + 6) = 0;
  *(v264 + 7) = 0;
  v265 = *(v161 + 3);
  v266 = v163 + 35;
  if ((v163 + 35) > (v265 >> 1))
  {
    v161 = sub_26C608EE4((v265 > 1), v163 + 35, 1, v161);
  }

  *(v161 + 2) = v266;
  v267 = &v161[32 * v263];
  *(v267 + 2) = xmmword_26C6189B0;
  *(v267 + 6) = 0;
  *(v267 + 7) = 0;
  v268 = *(v161 + 3);
  v269 = v163 + 36;
  if ((v163 + 36) > (v268 >> 1))
  {
    v161 = sub_26C608EE4((v268 > 1), v163 + 36, 1, v161);
  }

  *(v161 + 2) = v269;
  v270 = v161 + 32;
  v271 = &v161[32 * v266 + 32];
  *v271 = xmmword_26C6189C0;
  *(v271 + 16) = 0;
  *(v271 + 24) = 0;
  v272 = *(v0 + 2);
  sub_26C614E48();
  v273 = objc_allocWithZone(MEMORY[0x277CD9F18]);
  v274 = sub_26C614E38();

  v275 = [v273 initWithVertexCount:v272 vertices:v0 + 32 faceCount:v269 faces:v270 depthNormalization:v274];

  [v275 setReplicatesEdges_];
  return v275;
}

uint64_t sub_26C61119C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1297))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 560);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C6111E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1288) = 0;
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
    *(result + 1296) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1297) = 1;
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
      *(result + 560) = (a2 - 1);
      return result;
    }

    *(result + 1297) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26C61138C(CGFloat *a1, CGFloat *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v19 = a1[5];
  v20 = a1[4];
  v17 = a1[7];
  v18 = a1[6];
  memcpy(__dst, a1 + 8, 0x4D1uLL);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v15 = a2[5];
  v16 = a2[4];
  v13 = a2[7];
  v14 = a2[6];
  memcpy(v22, a2 + 8, 0x4D1uLL);
  v23.origin.x = v3;
  v23.origin.y = v4;
  v23.size.width = v5;
  v23.size.height = v6;
  v25.origin.x = v7;
  v25.origin.y = v8;
  v25.size.width = v9;
  v25.size.height = v10;
  v11 = CGRectEqualToRect(v23, v25);
  if (v11)
  {
    v24.origin.y = v19;
    v24.origin.x = v20;
    v24.size.height = v17;
    v24.size.width = v18;
    v26.origin.y = v15;
    v26.origin.x = v16;
    v26.size.height = v13;
    v26.size.width = v14;
    v11 = CGRectEqualToRect(v24, v26);
    if (v11)
    {
      LOBYTE(v11) = sub_26C5CB284(__dst, v22);
    }
  }

  return v11 & 1;
}

uint64_t getEnumTagSinglePayload for ScanwaveActivateResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_26C611570()
{
  result = type metadata accessor for ExternalRequestID(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26C611624(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26C61168C()
{
  result = qword_2804A5920;
  if (!qword_2804A5920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A5920);
  }

  return result;
}

uint64_t sub_26C6116E0(uint64_t a1)
{
  *(a1 + 8) = sub_26C611624(&qword_2804A5928, type metadata accessor for ScanwaveActivateRequest);
  result = sub_26C611624(&qword_2804A5930, type metadata accessor for ScanwaveActivateRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26C611764(uint64_t a1)
{
  *(a1 + 8) = sub_26C611624(&qword_2804A5938, type metadata accessor for ScanwaveActivateResponse);
  result = sub_26C611624(&qword_2804A5940, type metadata accessor for ScanwaveActivateResponse);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26C6117E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_26C614DB8())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_26C611868()
{
  result = type metadata accessor for ExternalRequestID(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

char *sub_26C6118E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_26C6150C8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_26C613610(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x26D6A4580](i, a1);
        sub_26C5CC548(0, &qword_2804A4D98);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_26C613610((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_26C5CD7F8(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_26C5CC548(0, &qword_2804A4D98);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_26C613610((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_26C5CD7F8(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_26C611AE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v6 = MEMORY[0x277D84F90];
    sub_26C615078();
    v4 = a1 + 32;
    do
    {
      sub_26C603AE0(v4, &v5);
      type metadata accessor for CGColor(0);
      swift_dynamicCast();
      sub_26C615058();
      sub_26C615088();
      sub_26C615098();
      sub_26C615068();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

Swift::Bool __swiftcall SUIARadialGradientView._shouldAnimateProperty(withKey:)(Swift::String_optional withKey)
{
  object = withKey.value._object;
  v8 = withKey;
  v6[2] = &v8;
  v3 = sub_26C5E68FC(sub_26C5E6A20, v6, &unk_287D1BE88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A5088);
  swift_arrayDestroy();
  if (v3)
  {
    return 1;
  }

  if (object)
  {
    object = sub_26C614E38();
  }

  v7.receiver = v1;
  v7.super_class = SUIARadialGradientView;
  v5 = objc_msgSendSuper2(&v7, sel__shouldAnimatePropertyWithKey_, object);

  return v5;
}

id sub_26C611D7C()
{
  v5.super_class = SUIARadialGradientView;
  v0 = objc_msgSendSuper2(&v5, sel_initWithFrame_);
  v1 = [v0 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setType_];

  v2 = [v0 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint_];

  v3 = [v0 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint_];

  return v0;
}

uint64_t SUIARadialGradientView.colors.getter()
{
  v1 = [v0 layer];
  objc_opt_self();
  v2 = [swift_dynamicCastObjCClassUnconditional() colors];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26C614EC8();

  v4 = sub_26C611AE4(v3);

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v5 = sub_26C6150C8();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  v10 = MEMORY[0x277D84F90];
  result = sub_26C615078();
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D6A4580](v7, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];

      sub_26C615058();
      sub_26C615088();
      sub_26C615098();
      sub_26C615068();
    }

    while (v5 != v7);

    return v10;
  }

  return result;
}

void SUIARadialGradientView.colors.setter(unint64_t a1)
{
  v3 = [v1 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  if (!a1)
  {
    goto LABEL_16;
  }

  v5 = v4;
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:

LABEL_15:
    a1 = sub_26C614EB8();

    v4 = v5;
LABEL_16:
    [v4 setColors_];

    return;
  }

  v6 = sub_26C6150C8();
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
  v17 = MEMORY[0x277D84F90];
  sub_26C613610(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v17;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26D6A4580](v7, a1);
      }

      else
      {
        v9 = *(a1 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = [v9 CGColor];
      type metadata accessor for CGColor(0);
      v16 = v12;

      *&v15 = v11;
      v17 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_26C613610((v13 > 1), v14 + 1, 1);
        v8 = v17;
      }

      ++v7;
      *(v8 + 16) = v14 + 1;
      sub_26C5CD7F8(&v15, (v8 + 32 * v14 + 32));
    }

    while (v6 != v7);

    goto LABEL_15;
  }

  __break(1u);
}

uint64_t SUIARadialGradientView.locations.getter()
{
  v1 = [v0 layer];
  objc_opt_self();
  v2 = [swift_dynamicCastObjCClassUnconditional() locations];

  if (!v2)
  {
    return 0;
  }

  sub_26C5CC548(0, &unk_28125E420);
  v3 = sub_26C614EC8();

  return v3;
}

void SUIARadialGradientView.locations.setter(uint64_t a1)
{
  v2 = v1;
  v4 = [v2 layer];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClassUnconditional();
  if (a1)
  {
    v6 = v5;
    sub_26C5CC548(0, &unk_28125E420);
    v7 = sub_26C614EB8();

    v5 = v6;
  }

  else
  {
    v7 = 0;
  }

  [v5 setLocations_];
}

void sub_26C61285C(id *a1@<X0>, SEL *a2@<X3>, unint64_t *a3@<X4>, uint64_t *a4@<X8>)
{
  v6 = [*a1 *a2];
  if (v6)
  {
    v7 = v6;
    sub_26C5CC548(0, a3);
    v8 = sub_26C614EC8();
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
}

void sub_26C6128D8(void *a1, void **a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, SEL *a7)
{
  v8 = *a2;
  if (*a1)
  {
    sub_26C5CC548(0, a5);
    v9 = sub_26C614EB8();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  [v8 *a7];
}

void static SUIARadialGradientView.calculateDescription(forGradientMajorDiameter:ringWidth:blurRadius:numberOfSamples:completion:)(uint64_t a1, void (*a2)(uint64_t, uint64_t, void *, double), double a3, double a4, double a5)
{
  v88 = *MEMORY[0x277D85DE8];
  v7 = 2;
  if (a1 > 2)
  {
    v7 = a1;
  }

  v78 = v7;
  v8 = a5 * 6.0 + a3;
  v9 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v10 = objc_opt_self();
  v11 = [v10 whiteColor];
  [v9 setBackgroundColor_];

  v12 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v9 addSubview_];
  [v9 center];
  [v12 setCenter_];
  v13 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v14 = sub_26C614DE8();
  [v13 setValue:v14 forKey:*MEMORY[0x277CDA4F0]];

  v15 = sub_26C614EF8();
  [v13 setValue:v15 forKey:*MEMORY[0x277CDA4C8]];

  v16 = [v9 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A55A0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26C619B70;
  *(v17 + 56) = sub_26C5CC548(0, &qword_2804A55A8);
  *(v17 + 32) = v13;
  v71 = v13;
  v18 = sub_26C614EB8();

  [v16 setFilters_];

  v19 = [v12 layer];
  [v19 setCornerRadius_];

  if (a4 == 0.0)
  {
    v20 = [v10 blackColor];
    [v12 setBackgroundColor_];
  }

  else
  {
    v21 = [v10 whiteColor];
    [v12 setBackgroundColor_];

    v22 = [v12 layer];
    v23 = [v10 blackColor];
    v24 = [v23 CGColor];

    [v22 setBorderColor_];
    v20 = [v12 layer];
    [v20 setBorderWidth_];
  }

  v25 = [objc_allocWithZone(MEMORY[0x277D75568]) init];
  [v25 setPreferredRange_];
  [v9 bounds];
  v28 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v25 format:{v26, v27}];
  v29 = swift_allocObject();
  *(v29 + 16) = v9;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_26C613CE0;
  *(v30 + 24) = v29;
  v86 = sub_26C613CE4;
  v87 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v83 = 1107296256;
  v84 = sub_26C6132F4;
  v85 = &block_descriptor_3;
  v31 = _Block_copy(&aBlock);
  v32 = v9;

  v33 = [v28 imageWithActions_];
  _Block_release(v31);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_63;
  }

  v66 = v32;
  v67 = v33;
  v68 = v28;
  v69 = v25;
  v70 = v12;
  v35 = sub_26C613340();
  v39 = v36;
  v40 = MEMORY[0x277D84F90];
  v80 = MEMORY[0x277D84F90];
  v81 = MEMORY[0x277D84F90];
  v41 = MEMORY[0x277D84F90];
  if (v36 >> 60 != 15)
  {
    v43 = vcvtd_n_f64_s64(v37, 1uLL);
    if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_64;
    }

    if (v43 <= -9.22337204e18)
    {
LABEL_65:
      __break(1u);
    }

    else if (v43 < 9.22337204e18)
    {
      if (!__OFSUB__(v37, v43))
      {
        v44 = 1.0 / (v78 - 1);
        if (v44 != 0.0)
        {
          v79 = 0;
          v45 = 0;
          v46 = (v37 - v43);
          v47 = v37 * (v38 / 2);
          v48 = (v37 * (v38 / 2)) >> 64 != v47 >> 63;
          v49 = v36 >> 62;
          v76 = v35 >> 32;
          v77 = v35;
          v50 = v43;
          v74 = HIDWORD(v35);
          v75 = BYTE6(v36);
          v73 = HIDWORD(v36);
          v51 = 0.0;
          v41 = MEMORY[0x277D84F90];
          v52 = v35;
          if (1.0 <= 0.0)
          {
            goto LABEL_17;
          }

LABEL_15:
          if (__OFADD__(v45++, 1))
          {
            goto LABEL_56;
          }

          v54 = v45 * v44 + 0.0;
          while (1)
          {
            v55 = v51 * v46 + v50;
            if (COERCE__INT64(fabs(v55)) > 0x7FEFFFFFFFFFFFFFLL)
            {
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
LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

            if (v55 <= -9.22337204e18)
            {
              goto LABEL_51;
            }

            if (v55 >= 9.22337204e18)
            {
              goto LABEL_52;
            }

            if (v48)
            {
              goto LABEL_53;
            }

            v56 = v47 + v55;
            if (__OFADD__(v47, v55))
            {
              goto LABEL_54;
            }

            if ((v56 - 0x2000000000000000) >> 62 != 3)
            {
              goto LABEL_55;
            }

            v57 = 4 * v56;
            if (v49 > 1)
            {
              break;
            }

            if (v49)
            {
              if (v57 < v77 || v57 >= v76)
              {
                goto LABEL_59;
              }

              v64 = sub_26C614CE8();
              if (!v64)
              {
                goto LABEL_70;
              }

              v60 = v64;
              v65 = sub_26C614CF8();
              v62 = v57 - v65;
              if (__OFSUB__(v57, v65))
              {
                goto LABEL_61;
              }

LABEL_43:
              v58 = *(v60 + v62);
              goto LABEL_44;
            }

            if (v57 >= v75)
            {
              goto LABEL_58;
            }

            LOBYTE(aBlock) = v35;
            BYTE4(aBlock) = v74;
            LOBYTE(v83) = v39;
            BYTE4(v83) = v73;
            v58 = *(&aBlock + 4 * v56);
LABEL_44:
            [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
            MEMORY[0x26D6A43E0]();
            if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_26C614ED8();
            }

            sub_26C614EE8();
            v41 = v81;
            [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:v58 / -255.0 + 1.0];
            MEMORY[0x26D6A43E0]();
            if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_26C614ED8();
            }

            sub_26C614EE8();
            v40 = v80;
            v51 = v54;
            v35 = v52;
            if (v54 < 1.0)
            {
              goto LABEL_15;
            }

LABEL_17:
            v54 = 1.0;
            if ((v51 != 1.0) | v79 & 1)
            {
              goto LABEL_8;
            }

            v79 = 1;
          }

          if (v49 != 2)
          {
            goto LABEL_69;
          }

          if (v57 < *(v35 + 16))
          {
            goto LABEL_57;
          }

          if (v57 >= *(v35 + 24))
          {
            goto LABEL_60;
          }

          v59 = sub_26C614CE8();
          if (!v59)
          {
            goto LABEL_71;
          }

          v60 = v59;
          v61 = sub_26C614CF8();
          v62 = v57 - v61;
          if (__OFSUB__(v57, v61))
          {
            goto LABEL_62;
          }

          goto LABEL_43;
        }

LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
      }

LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    __break(1u);
    goto LABEL_67;
  }

LABEL_8:
  v42 = v35;
  a2(v41, v40, v67, v8);

  sub_26C603D3C(v42, v39);
}

void sub_26C6132F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

int64_t sub_26C613340()
{
  v1 = [v0 CGImage];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Width = CGImageGetWidth(v1);
  result = CGImageGetHeight(v2);
  if ((Width - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = result;
  v6 = 4 * Width * result;
  if ((4 * Width * result) >> 64 != v6 >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = CGImageGetColorSpace(v2);
  if (result)
  {
    v7 = result;
    v8 = malloc(v6);
    if (v8)
    {
      v9 = v8;
      v10 = __CGBitmapContextCreate(v8, Width, v5, 4 * Width, v7);
      if (v10)
      {
        v11 = v10;
        v12 = [objc_opt_self() whiteColor];
        v13 = [v12 CGColor];

        CGContextSetFillColorWithColor(v11, v13);
        v16.origin.x = 0.0;
        v16.origin.y = 0.0;
        v16.size.width = Width;
        v16.size.height = v5;
        CGContextFillRect(v11, v16);
        sub_26C614F68();
        Data = CGBitmapContextGetData(v11);
        if (Data)
        {
          v15 = sub_26C613DF0(Data, v6);
          free(v9);

          v2 = v7;
          v7 = v11;
LABEL_13:

          return v15;
        }
      }

      else
      {
        free(v9);
      }
    }

    v15 = 0;
    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
  return result;
}

char *sub_26C6135B0(char *a1, int64_t a2, char a3)
{
  result = sub_26C6136B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26C6135D0(char *a1, int64_t a2, char a3)
{
  result = sub_26C6137B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26C6135F0(char *a1, int64_t a2, char a3)
{
  result = sub_26C6138B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26C613610(char *a1, int64_t a2, char a3)
{
  result = sub_26C6139C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26C613630(char *a1, int64_t a2, char a3)
{
  result = sub_26C613AD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26C613650(char *a1, int64_t a2, char a3)
{
  result = sub_26C613BE4(a1, a2, a3, *v3, &qword_2804A5960);
  *v3 = result;
  return result;
}

char *sub_26C613680(char *a1, int64_t a2, char a3)
{
  result = sub_26C613BE4(a1, a2, a3, *v3, &qword_2804A5738);
  *v3 = result;
  return result;
}

char *sub_26C6136B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A5968);
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

char *sub_26C6137B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A5970);
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

char *sub_26C6138B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A4D00);
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

char *sub_26C6139C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A55A0);
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

char *sub_26C613AD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A5770);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_26C613BE4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26C613D38(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
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

uint64_t sub_26C613DF0(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_26C613D38(a1, &a1[a2]);
  }

  sub_26C614D08();
  swift_allocObject();
  sub_26C614CD8();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_26C614D58();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

void sub_26C613EA0(uint64_t a1, void (**a2)(void, void, void, void, double), double a3, double a4, double a5)
{
  v90 = *MEMORY[0x277D85DE8];
  v7 = 2;
  if (a1 > 2)
  {
    v7 = a1;
  }

  v80 = v7;
  v8 = a5 * 6.0 + a3;
  v9 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v10 = objc_opt_self();
  v11 = [v10 whiteColor];
  [v9 setBackgroundColor_];

  v12 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v9 addSubview_];
  [v9 center];
  [v12 setCenter_];
  v13 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v14 = sub_26C614DE8();
  [v13 setValue:v14 forKey:*MEMORY[0x277CDA4F0]];

  v15 = sub_26C614EF8();
  [v13 setValue:v15 forKey:*MEMORY[0x277CDA4C8]];

  v16 = [v9 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A55A0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26C619B70;
  *(v17 + 56) = sub_26C5CC548(0, &qword_2804A55A8);
  *(v17 + 32) = v13;
  v73 = v13;
  v18 = sub_26C614EB8();
  v19 = v12;

  [v16 setFilters_];

  v20 = [v12 layer];
  [v20 setCornerRadius_];

  if (a4 == 0.0)
  {
    v21 = [v10 blackColor];
    [v12 setBackgroundColor_];
  }

  else
  {
    v22 = [v10 whiteColor];
    [v12 setBackgroundColor_];

    v23 = [v12 layer];
    v24 = [v10 blackColor];
    v25 = [v24 CGColor];

    [v23 setBorderColor_];
    v21 = [v12 layer];
    [v21 setBorderWidth_];
  }

  v26 = [objc_allocWithZone(MEMORY[0x277D75568]) init];
  [v26 setPreferredRange_];
  [v9 bounds];
  v29 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v26 format:{v27, v28}];
  v30 = swift_allocObject();
  *(v30 + 16) = v9;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_26C61491C;
  *(v31 + 24) = v30;
  v88 = sub_26C614920;
  v89 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v85 = 1107296256;
  v86 = sub_26C6132F4;
  v87 = &block_descriptor_16;
  v32 = _Block_copy(&aBlock);
  v33 = v9;

  v34 = [v29 imageWithActions_];
  _Block_release(v32);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_63;
  }

  v68 = v33;
  v69 = v34;
  v70 = v29;
  v71 = v26;
  v72 = v19;
  v36 = sub_26C613340();
  v40 = v36;
  v41 = v37;
  v82 = MEMORY[0x277D84F90];
  v83 = MEMORY[0x277D84F90];
  if (v37 >> 60 != 15)
  {
    v45 = vcvtd_n_f64_s64(v38, 1uLL);
    if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_64;
    }

    if (v45 <= -9.22337204e18)
    {
LABEL_65:
      __break(1u);
    }

    else if (v45 < 9.22337204e18)
    {
      if (!__OFSUB__(v38, v45))
      {
        v46 = 1.0 / (v80 - 1);
        if (v46 != 0.0)
        {
          v81 = 0;
          v47 = 0;
          v48 = (v38 - v45);
          v49 = v38 * (v39 / 2);
          v50 = (v38 * (v39 / 2)) >> 64 != v49 >> 63;
          v51 = v37 >> 62;
          v78 = v36 >> 32;
          v79 = v36;
          v52 = v45;
          v76 = HIDWORD(v36);
          v77 = BYTE6(v37);
          v75 = HIDWORD(v37);
          v53 = 0.0;
          v54 = v36;
          if (1.0 > 0.0)
          {
            goto LABEL_17;
          }

LABEL_15:
          v55 = 1.0;
          if ((v53 != 1.0) | v81 & 1)
          {
            goto LABEL_8;
          }

          v81 = 1;
          while (1)
          {
            v57 = v53 * v48 + v52;
            if (COERCE__INT64(fabs(v57)) > 0x7FEFFFFFFFFFFFFFLL)
            {
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
LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

            if (v57 <= -9.22337204e18)
            {
              goto LABEL_51;
            }

            if (v57 >= 9.22337204e18)
            {
              goto LABEL_52;
            }

            if (v50)
            {
              goto LABEL_53;
            }

            v58 = v49 + v57;
            if (__OFADD__(v49, v57))
            {
              goto LABEL_54;
            }

            if ((v58 - 0x2000000000000000) >> 62 != 3)
            {
              goto LABEL_55;
            }

            v59 = 4 * v58;
            if (v51 > 1)
            {
              break;
            }

            if (v51)
            {
              if (v59 < v79 || v59 >= v78)
              {
                goto LABEL_59;
              }

              v66 = sub_26C614CE8();
              if (!v66)
              {
                goto LABEL_70;
              }

              v62 = v66;
              v67 = sub_26C614CF8();
              v64 = v59 - v67;
              if (__OFSUB__(v59, v67))
              {
                goto LABEL_61;
              }

LABEL_43:
              v60 = *(v62 + v64);
              goto LABEL_44;
            }

            if (v59 >= v77)
            {
              goto LABEL_58;
            }

            LOBYTE(aBlock) = v40;
            BYTE4(aBlock) = v76;
            LOBYTE(v85) = v41;
            BYTE4(v85) = v75;
            v60 = *(&aBlock + 4 * v58);
LABEL_44:
            [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
            MEMORY[0x26D6A43E0]();
            if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_26C614ED8();
            }

            sub_26C614EE8();
            [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:v60 / -255.0 + 1.0];
            MEMORY[0x26D6A43E0]();
            if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_26C614ED8();
            }

            sub_26C614EE8();
            v53 = v55;
            v40 = v54;
            if (v55 >= 1.0)
            {
              goto LABEL_15;
            }

LABEL_17:
            if (__OFADD__(v47++, 1))
            {
              goto LABEL_56;
            }

            v55 = v47 * v46 + 0.0;
          }

          if (v51 != 2)
          {
            goto LABEL_69;
          }

          if (v59 < *(v40 + 16))
          {
            goto LABEL_57;
          }

          if (v59 >= *(v40 + 24))
          {
            goto LABEL_60;
          }

          v61 = sub_26C614CE8();
          if (!v61)
          {
            goto LABEL_71;
          }

          v62 = v61;
          v63 = sub_26C614CF8();
          v64 = v59 - v63;
          if (__OFSUB__(v59, v63))
          {
            goto LABEL_62;
          }

          goto LABEL_43;
        }

LABEL_68:
        __break(1u);
LABEL_69:
        _Block_release(a2);
        __break(1u);
LABEL_70:
        _Block_release(a2);
        __break(1u);
LABEL_71:
        _Block_release(a2);
        __break(1u);
      }

LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    __break(1u);
    goto LABEL_67;
  }

LABEL_8:
  sub_26C5CC548(0, &unk_28125E420);
  v42 = sub_26C614EB8();
  sub_26C5CC548(0, &qword_28125E430);
  v43 = v40;
  v44 = sub_26C614EB8();
  (a2)[2](a2, v42, v44, v69, v8);

  sub_26C603D3C(v43, v41);
}

id sub_26C6148B0()
{
  v1 = *(v0 + 16);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

uint64_t SUIAFrameRateReason.caHighFrameRateReason.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))();
  sub_26C614E98();
  return v4 | (v2 << 16);
}

uint64_t SUIAFrameRateRange.hashValue.getter()
{
  v1 = *v0;
  sub_26C615168();
  MEMORY[0x26D6A46C0](v1);
  return sub_26C615198();
}

unint64_t sub_26C614AD0()
{
  result = qword_2804A5978;
  if (!qword_2804A5978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A5978);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SUIAFrameRateRange(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SUIAFrameRateRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}