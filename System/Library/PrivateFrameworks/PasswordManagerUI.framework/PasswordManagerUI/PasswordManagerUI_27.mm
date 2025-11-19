uint64_t sub_21C9EF6A0(uint64_t a1)
{
  v2 = *(*v1 + 1136);
  v3 = *(*v1 + 1128);
  v4 = *(*v1 + 432);
  v5 = *(*v1 + 424);
  v6 = *(*v1 + 416);
  v7 = *(*v1 + 408);
  v10 = *v1;
  *(*v1 + 1144) = a1;

  v8 = *(v6 + 8);
  v8(v5, v7);
  v8(v4, v7);

  return MEMORY[0x2822009F8](sub_21C9EF84C, 0, 0);
}

uint64_t sub_21C9EF84C()
{
  v1 = *(v0 + 1144);
  if (v1)
  {
    v2 = *(v0 + 1056);
    v3 = *(v0 + 1040);
    v4 = *(v0 + 776);

    v5 = sub_21CB81404();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    v9 = *(v0 + 1088);
    v10 = *(v0 + 1080);
    v11 = *(v0 + 1072);
    v12 = *(v0 + 1064);
    v13 = *(v0 + 1024);
    v14 = *(v0 + 1016);
    if (v8)
    {
      v15 = *(v0 + 776);
      sub_21CB81404();
      v16 = sub_21CB85584();

      [v1 setCustomTitle:v16 performSidecarUpdate:1];
      sub_21C7902FC(v10, v9);
      sub_21C7902FC(v12, v11);

      sub_21C7902FC(v14, v13);
    }

    else
    {
      sub_21C7902FC(*(v0 + 1080), *(v0 + 1088));
      sub_21C7902FC(v12, v11);

      sub_21C7902FC(v14, v13);
    }

    if (!*(v0 + 1008))
    {
      goto LABEL_223;
    }
  }

  else
  {
    if (qword_27CDEA3F0 != -1)
    {
      swift_once();
    }

    v17 = sub_21CB81C84();
    __swift_project_value_buffer(v17, qword_27CE18580);
    v18 = sub_21CB81C64();
    v19 = sub_21CB85AF4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_21C6E5000, v18, v19, "Error while importing passkey", v20, 2u);
      MEMORY[0x21CF16D90](v20, -1, -1);
    }

    v21 = *(v0 + 1088);
    v22 = *(v0 + 1080);
    v23 = *(v0 + 1072);
    v24 = *(v0 + 1064);
    v25 = *(v0 + 1024);
    v26 = *(v0 + 1016);
    v27 = v0;
    v28 = *(v0 + 1008);
    sub_21C7902FC(v22, v21);
    sub_21C7902FC(v24, v23);
    sub_21C7902FC(v26, v25);

    if ((v28 & 2) == 0)
    {
      *(*(v27 + 752) + *(v27 + 1228)) = *(v27 + 1008) | 2;
    }

    v29 = (v27 + 1040);
    v0 = v27;
    if (*(v27 + 1120))
    {
      v30 = *v29;

      v31 = 1112;
      v29 = (v27 + 1120);
    }

    else
    {
      v31 = 1032;
    }

    v32 = *v29;
    v33 = *(v27 + 1104);
    v34 = (*(v27 + 752) + *(v27 + 1232));
    *v34 = *(v27 + v31);
    v34[1] = v32;
    v35 = (v27 + 1056);
    if (v33)
    {
      v36 = *v35;

      v37 = 1096;
      v35 = (v27 + 1104);
    }

    else
    {
      v37 = 1048;
    }

    v38 = *v35;
    v39 = (*(v27 + 752) + *(v27 + 1236));
    *v39 = *(v27 + v37);
    v39[1] = v38;
  }

LABEL_219:
  v378 = *(v0 + 824);
  v379 = *(v559 + 816);
  v380 = *(v559 + 280);
  sub_21C9F312C(*(v559 + 752), *(v559 + 744));
  swift_getKeyPath();
  *(v559 + 200) = v380;
  sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel);
  sub_21CB810D4();

  *(v559 + 208) = v380;
  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  v381 = *(v380 + v378);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v380 + v378) = v381;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_271:
    v470 = *(v559 + 824);
    v471 = *(v559 + 280);
    v381 = sub_21CA4FB74(0, v381[2] + 1, 1, v381);
    *(v471 + v470) = v381;
  }

  v384 = v381[2];
  v383 = v381[3];
  if (v384 >= v383 >> 1)
  {
    v381 = sub_21CA4FB74(v383 > 1, v384 + 1, 1, v381);
  }

  v385 = *(v559 + 824);
  v386 = *(v559 + 816);
  v387 = *(v559 + 744);
  v388 = *(v559 + 736);
  v389 = *(v559 + 280);
  v381[2] = v384 + 1;
  sub_21C9F3190(v387, v381 + ((*(v388 + 80) + 32) & ~*(v388 + 80)) + *(v388 + 72) * v384);
  *(v389 + v385) = v381;
  v0 = v559;
  swift_endAccess();
  *(v559 + 216) = v389;
  swift_getKeyPath();
  sub_21CB810E4();

  while (1)
  {
LABEL_223:
    v390 = *(v0 + 832);
    v391 = *(v0 + 816);
    v392 = *(v0 + 280);
    swift_getKeyPath();
    *(v0 + 224) = v392;
    sub_21C9F2B80(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel);
    sub_21CB810D4();

    *(v0 + 232) = v392;
    swift_getKeyPath();
    v381 = (v392 + v391);
    sub_21CB810F4();

    v393 = *(v392 + v390);
    v394 = __OFADD__(v393, 1);
    v395 = v393 + 1;
    if (v394)
    {
      __break(1u);
      goto LABEL_271;
    }

    v532 = *(v0 + 1080);
    v536 = *(v0 + 1088);
    v526 = *(v0 + 1072);
    v396 = *(v0 + 1064);
    v67 = *(v0 + 1024);
    v63 = *(v0 + 1016);
    v397 = *(v0 + 816);
    v555 = *(v0 + 800);
    v540 = *(v0 + 776);
    v398 = *(v0 + 768);
    v538 = *(v0 + 760);
    v399 = *(v0 + 720);
    v400 = *(v0 + 280);
    v544 = *(v0 + 752);
    v549 = *(v0 + 848) + 1;
    *(v400 + *(v0 + 832)) = v395;
    *(v0 + 240) = v400;
    swift_getKeyPath();
    sub_21CB810E4();

    sub_21C7902FC(v63, v67);
    sub_21C7902FC(v396, v526);
    sub_21C7902FC(v532, v536);
    sub_21C6EA794(v399, &qword_27CDEC300, &qword_21CBA3ED0);
    (*(v398 + 8))(v540, v538);
    sub_21C9F31F4(v544);
    v401 = *(v0 + 856);
    if (v549 == v555)
    {
      break;
    }

    v402 = *(v0 + 848) + 1;
    *(v0 + 848) = v402;
    v403 = *(v0 + 792);
    if (v402 >= *(v403 + 16))
    {
      __break(1u);
      goto LABEL_227;
    }

    (*(*(v0 + 768) + 16))(*(v0 + 776), v403 + ((*(*(v0 + 768) + 80) + 32) & ~*(*(v0 + 768) + 80)) + *(*(v0 + 768) + 72) * v402, *(v0 + 760));
    if (sub_21CB85954())
    {
      v408 = *(v0 + 792);
      (*(*(v0 + 768) + 8))(*(v0 + 776), *(v0 + 760));

      goto LABEL_242;
    }

    v40 = *(v0 + 776);
    v41 = *(v0 + 752);
    v42 = *(v0 + 728);
    v43 = (*(v0 + 280) + *(v0 + 840));
    v44 = sub_21CB81404();
    v46 = v45;
    sub_21CB80E24();
    v47 = (v41 + v42[5]);
    *v47 = v44;
    v47[1] = v46;
    v48 = v42[6];
    *(v0 + 1228) = v48;
    v538 = v48;
    *(v41 + v48) = 0;
    v49 = v42[7];
    *(v0 + 1232) = v49;
    v50 = (v41 + v49);
    *v50 = 0;
    v50[1] = 0;
    v481 = v50;
    v51 = v42[8];
    *(v0 + 1236) = v51;
    v540 = v41;
    v52 = (v41 + v51);
    *v52 = 0;
    v52[1] = 0;
    v480 = v52;
    v54 = sub_21C9F8508();
    v55 = v53;
    v56 = v43[1];
    if (v56 && (*v43 == v54 && v56 == v53 || (v57 = v43[1], (sub_21CB86344() & 1) != 0)))
    {
      v58 = (*(v0 + 280) + *(v0 + 840));
      *v58 = v54;
      v58[1] = v55;
    }

    else
    {
      v59 = *(v0 + 816);
      v60 = *(v0 + 280);
      swift_getKeyPath();
      v61 = swift_task_alloc();
      v61[2] = v60;
      v61[3] = v54;
      v61[4] = v55;
      *(v0 + 192) = v60;
      sub_21CB810C4();
    }

    *(v0 + 856) = v401;
    v62 = *(v0 + 776);
    v63 = *(*(v0 + 312) + 56);
    v63(*(v0 + 720), 1, 1, *(v0 + 304));
    v64 = sub_21CB813D4();
    v546 = *(v64 + 16);
    if (!v546)
    {

      v512 = 0;
      v498 = 0;
      v500 = 0;
      v496 = 0;
      v507 = 0;
      v510 = 0;
      v516 = 0;
      v492 = 0;
      v485 = 0;
      v547 = 0;
      v553 = 0;
      v527 = 0;
      v488 = 0;
      v482 = 0;
      v67 = MEMORY[0x277D84F90];
      v504 = 0xF000000000000000;
      v502 = 0xF000000000000000;
      v514 = 0xF000000000000000;
      goto LABEL_132;
    }

    v512 = 0;
    v498 = 0;
    v500 = 0;
    v496 = 0;
    v507 = 0;
    v510 = 0;
    v516 = 0;
    v492 = 0;
    v485 = 0;
    v520 = 0;
    v490 = 0;
    v518 = 0;
    v65 = 0;
    v526 = 0;
    v488 = 0;
    v482 = 0;
    v478 = 0;
    v479 = 0;
    v66 = *(*(v0 + 576) + 80);
    v522 = v64 + ((v66 + 32) & ~v66);
    v534 = (v0 + 1164);
    v67 = MEMORY[0x277D84F90];
    v504 = 0xF000000000000000;
    v502 = 0xF000000000000000;
    v514 = 0xF000000000000000;
    v494 = v63;
    v542 = v64;
    do
    {
      v529 = v67;
      v68 = *(v64 + 16);
      if (v65 >= v68)
      {
        goto LABEL_231;
      }

      v69 = *(v0 + 1156);
      v70 = *(v0 + 1152);
      v62 = *(v0 + 584);
      v71 = *(v0 + 576);
      v72 = *(v0 + 568);
      v73 = v71[9];
      v74 = v71[2];
      v551 = v65 + 1;
      v75 = v65;
      v74(v62, v522 + v73 * v65, v72);
      v76 = v71[11];
      v77 = v76(v62, v72);
      if (v77 == v70 || v77 == v69)
      {
        goto LABEL_37;
      }

      if (v77 == *(v0 + 1160))
      {
        v92 = v526;
LABEL_76:
        v96 = *(v0 + 584);
        v97 = *(v559 + 576);
        v98 = *(v559 + 568);
        v99 = *(v559 + 560);
        v100 = *(v559 + 552);
        v101 = *(v559 + 544);
        v102 = *(v559 + 536);
        v103 = *(v559 + 368);
        v104 = *(v559 + 360);

        (*(v97 + 96))(v96, v98);
        v0 = v559;
        (*(v100 + 32))(v99, v96, v101);
        sub_21CB81464();
        v105 = *(v103 + 48);
        v106 = v105(v102, 1, v104);
        v107 = *(v559 + 536);
        if (v106 == 1)
        {
          sub_21C6EA794(*(v559 + 536), &qword_27CDF47B8, &qword_21CBBB858);
          v490 = 0;
          v518 = 0;
        }

        else
        {
          v108 = *(v559 + 368);
          v109 = *(v559 + 360);
          v490 = sub_21CB81934();
          v518 = v110;
          (*(v108 + 8))(v107, v109);
          v0 = v559;
        }

        v63 = v494;
        v111 = *(v0 + 560);
        v112 = *(v0 + 528);
        v113 = *(v0 + 360);
        sub_21CB81454();
        v114 = v105(v112, 1, v113);
        v115 = *(v0 + 528);
        v526 = v92;
        if (v114 == 1)
        {
          sub_21C6EA794(v115, &qword_27CDF47B8, &qword_21CBBB858);
          v520 = 0;
        }

        else
        {
          v116 = *(v559 + 368);
          v117 = *(v559 + 360);
          sub_21CB81934();
          v520 = v118;
          (*(v116 + 8))(v115, v117);
          v0 = v559;
        }

        v119 = *(v0 + 776);
        v120 = *(v0 + 520);
        sub_21CB813F4();
        v121 = sub_21CB81964();
        v122 = *(v121 - 8);
        v123 = (*(v122 + 48))(v120, 1, v121);
        v62 = *(v0 + 520);
        if (v123 == 1)
        {
          sub_21C6EA794(*(v0 + 520), &qword_27CDF47B0, &qword_21CBBB850);
          v67 = MEMORY[0x277D84F90];
        }

        else
        {
          v124 = sub_21CB81954();
          v125 = v121;
          v67 = v124;
          (*(v122 + 8))(v62, v125);
        }

        (*(*(v0 + 552) + 8))(*(v0 + 560), *(v0 + 544));
        goto LABEL_93;
      }

      if ((vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(v77), *v534))) & 1) != 0 || v77 == *(v0 + 1180) || v77 == *(v0 + 1184))
      {
        goto LABEL_37;
      }

      if (v77 == *(v0 + 1188))
      {
LABEL_87:
        v62 = *(v0 + 584);
        v126 = *(v0 + 576);
        v127 = *(v0 + 568);
        v128 = *(v0 + 400);
        v129 = *(v559 + 392);
        v130 = *(v559 + 384);
        (*(v126 + 96))(v62, v127);
        (*(v129 + 32))(v128, v62, v130);
        v0 = v559;
        v131 = *(v559 + 392);
        v132 = *(v559 + 384);
        if (v492)
        {
          (*(v131 + 8))(*(v559 + 400), v132);
        }

        else
        {
          v149 = *(v559 + 376);
          v150 = *(v559 + 368);
          v151 = *(v559 + 360);
          v152 = *(v559 + 400);
          sub_21CB81484();
          v62 = v149;
          sub_21CB81934();
          v492 = v153;
          (*(v150 + 8))(v149, v151);
          v0 = v559;
          (*(v131 + 8))(v152, v132);
        }

        goto LABEL_92;
      }

      if (v77 == *(v0 + 1192))
      {
LABEL_90:
        v133 = *(v0 + 584);
        v134 = *(v559 + 576);
        v135 = *(v559 + 568);
        v62 = *(v559 + 512);
        v136 = *(v559 + 504);
        v137 = *(v559 + 496);

        (*(v134 + 96))(v133, v135);
        v0 = v559;
        (*(v136 + 32))(v62, v133, v137);
        v138 = sub_21CB81534();
        v140 = v139;
        sub_21C7902FC(v516, v514);
        v141 = sub_21CB81554();
        v143 = v142;
        sub_21C7902FC(v510, v502);
        v496 = sub_21CB81564();
        v507 = v144;
        v498 = sub_21CB81544();
        v500 = v145;
        v146 = sub_21CB81524();
        v148 = v147;
        sub_21C7902FC(v512, v504);
        (*(v136 + 8))(v62, v137);
        v510 = v141;
        v512 = v146;
        v504 = v148;
        v502 = v143;
        v514 = v140;
        v516 = v138;
LABEL_92:
        v67 = v529;
        v63 = v494;
        goto LABEL_93;
      }

      if (v77 == *(v0 + 1196) || v77 == *(v0 + 1200) || v77 == *(v0 + 1204))
      {
        goto LABEL_37;
      }

      if (v77 == *(v0 + 1208))
      {
        goto LABEL_96;
      }

      if (v77 == *(v0 + 1212))
      {
LABEL_37:
        v79 = *(*(v0 + 576) + 8);
        v79(*(v0 + 584), *(v0 + 568));
        *(v540 + v538) = 4;
      }

      else
      {
        v93 = *(v0 + 584);
        v94 = *(v0 + 576);
        v95 = *(v0 + 568);
        *(v540 + v538) = 4;
        v79 = *(v94 + 8);
        v79(v93, v95);
      }

      if (v551 == v546)
      {
LABEL_122:

        v211 = 5;
        v212 = 12;
        v213 = 4;
        v488 = 4;
        v214 = 4;
        v67 = v529;
        v63 = v494;
        goto LABEL_123;
      }

      v68 = *(v542 + 16);
      if (v551 >= v68)
      {
        goto LABEL_231;
      }

      v62 = (v522 + v73 * v551);
      v80 = v75 + 2;
      while (1)
      {
        v551 = v80;
        v81 = *(v0 + 1156);
        v82 = *(v0 + 1152);
        v83 = *(v0 + 584);
        v84 = *(v0 + 568);
        v85 = *(v0 + 576) + 88;
        v74(v83, v62, v84);
        v86 = v76(v83, v84);
        v0 = v559;
        if (v86 == v82 || v86 == v81)
        {
          goto LABEL_46;
        }

        if (v86 == *(v559 + 1160))
        {
          v479 = 4;
          v478 = 4;
          v482 = 4;
          v488 = 4;
          v92 = 4;
          goto LABEL_76;
        }

        if ((vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(v86), *v534))) & 1) != 0 || v86 == *(v559 + 1180) || v86 == *(v559 + 1184))
        {
          goto LABEL_46;
        }

        if (v86 == *(v559 + 1188))
        {
          v479 = 4;
          v478 = 4;
          v482 = 4;
          v488 = 4;
          v526 = 4;
          goto LABEL_87;
        }

        if (v86 == *(v559 + 1192))
        {
          v479 = 4;
          v478 = 4;
          v482 = 4;
          v488 = 4;
          v526 = 4;
          goto LABEL_90;
        }

        if (v86 == *(v559 + 1196) || v86 == *(v559 + 1200) || v86 == *(v559 + 1204))
        {
LABEL_46:
          v88 = *(v559 + 576) + 8;
          v79(*(v559 + 584), *(v559 + 568));
          *(v540 + v538) = 4;
          goto LABEL_47;
        }

        if (v86 == *(v559 + 1208))
        {
          break;
        }

        if (v86 == *(v559 + 1212))
        {
          goto LABEL_46;
        }

        v89 = *(v559 + 584);
        v90 = *(v559 + 568);
        v91 = *(v559 + 576) + 8;
        *(v540 + v538) = 4;
        v79(v89, v90);
LABEL_47:
        if (v546 == v551)
        {
          goto LABEL_122;
        }

        v68 = *(v542 + 16);
        v62 += v73;
        v80 = v551 + 1;
        if (v551 >= v68)
        {
LABEL_231:
          __break(1u);
          goto LABEL_232;
        }
      }

      v479 = 4;
      v478 = 4;
      v482 = 4;
      v488 = 4;
      v526 = 4;
LABEL_96:
      v154 = *(v0 + 720);
      v155 = *(v0 + 712);
      v156 = *(v0 + 584);
      v157 = *(v0 + 576);
      v158 = *(v0 + 568);
      v159 = *(v0 + 488);
      v160 = *(v559 + 480);
      v161 = *(v559 + 472);
      v162 = *(v559 + 312);
      v163 = *(v559 + 304);
      (*(v157 + 96))(v156, v158);
      (*(v160 + 32))(v159, v156, v161);
      v0 = v559;
      sub_21C6EDBAC(v154, v155, &qword_27CDEC300, &qword_21CBA3ED0);
      v164 = *(v162 + 48);
      v165 = v164(v155, 1, v163);
      v62 = *(v559 + 712);
      if (v165 != 1)
      {
        (*(*(v559 + 480) + 8))(*(v559 + 488), *(v559 + 472));
        sub_21C6EA794(v62, &qword_27CDEC300, &qword_21CBA3ED0);
        goto LABEL_92;
      }

      sub_21C6EA794(v62, &qword_27CDEC300, &qword_21CBA3ED0);
      v166 = v518;
      if (!v518)
      {
        v167 = *(v559 + 488);
        v490 = sub_21CB814E4();
      }

      v518 = v166;
      v168 = *(v559 + 1216);
      v169 = *(v559 + 488);
      v170 = *(v559 + 456);
      v171 = *(v559 + 464);
      v172 = *(v559 + 448);
      sub_21CB814B4();
      v485 = v173;
      sub_21CB81504();
      v174 = (*(v170 + 88))(v171, v172);
      v477 = v164;
      if (v174 == v168)
      {
        v476 = 0;
        v0 = v559;
      }

      else
      {
        v0 = v559;
        if (v174 == *(v559 + 1220))
        {
          v476 = 1;
        }

        else if (v174 == *(v559 + 1224))
        {
          v476 = 2;
        }

        else
        {
          (*(*(v559 + 456) + 8))(*(v559 + 464), *(v559 + 448));
          v476 = 0;
        }
      }

      v175 = *(v0 + 704);
      v176 = *(v0 + 488);
      v177 = *(v0 + 440);
      v178 = *(v0 + 304);
      v179 = sub_21CB814D4();
      v181 = v180;
      sub_21CB80D74();
      v475 = sub_21CB814C4();
      v473 = sub_21CB814A4();
      sub_21CB814B4();
      v183 = v182;
      sub_21CB814E4();
      v185 = v184;
      v494(v175, 1, 1, v178);
      v186 = v181;
      v474 = sub_21CB80C64();
      v187 = sub_21CB80D24();
      if (v183)
      {
        v188 = sub_21CB85584();

        if (v185)
        {
          goto LABEL_109;
        }

LABEL_111:
        v189 = 0;
      }

      else
      {
        v188 = 0;
        if (!v185)
        {
          goto LABEL_111;
        }

LABEL_109:
        v189 = sub_21CB85584();
      }

      v190 = *(v0 + 704);
      v191 = *(v0 + 304);
      v472 = v186;
      v192 = v187;
      if (v477(v190, 1, v191) == 1)
      {
        v193 = 0;
      }

      else
      {
        v194 = *(v559 + 312);
        v193 = sub_21CB80B74();
        (*(v194 + 8))(v190, v191);
        v0 = v559;
      }

      v195 = *(v0 + 440);
      v196 = *(v0 + 408);
      v197 = *(v0 + 416);
      v62 = [objc_allocWithZone(MEMORY[0x277D49B78]) initWithKeyData:v474 initialDate:v192 codeGenerationPeriod:v475 numberOfDigits:v473 algorithm:v476 issuer:v188 accountName:v189 originalURL:v193];

      sub_21C7A34C0(v179, v472);
      (*(v197 + 8))(v195, v196);
      if (v62)
      {
        v198 = [v62 exportableURL];
        if (v198)
        {
          v199 = *(v0 + 688);
          v200 = v198;
          sub_21CB80B94();

          v201 = 0;
          v62 = v200;
        }

        else
        {
          v201 = 1;
        }

        v204 = *(v0 + 720);
        v205 = *(v0 + 696);
        v206 = *(v0 + 688);
        v207 = *(v0 + 488);
        v208 = *(v559 + 480);
        v209 = *(v559 + 472);
        v210 = *(v559 + 304);

        (*(v208 + 8))(v207, v209);
        v0 = v559;
        sub_21C6EA794(v204, &qword_27CDEC300, &qword_21CBA3ED0);
        v63 = v494;
        v494(v206, v201, 1, v210);
        sub_21C79C3F4(v206, v205);
      }

      else
      {
        v62 = *(v0 + 720);
        v202 = *(v0 + 696);
        v203 = *(v0 + 304);
        (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));
        sub_21C6EA794(v62, &qword_27CDEC300, &qword_21CBA3ED0);
        v63 = v494;
        v494(v202, 1, 1, v203);
      }

      sub_21C79C3F4(*(v0 + 696), *(v0 + 720));
      v67 = v529;
LABEL_93:
      v65 = v551;
      v64 = v542;
    }

    while (v551 != v546);
LABEL_227:

    v212 = v478 | 8;
    v211 = v479 | 1;
    v214 = v482;
    v213 = v526;
LABEL_123:
    *(v0 + 936) = v514;
    *(v0 + 928) = v516;
    *(v0 + 920) = v502;
    *(v0 + 912) = v510;
    *(v0 + 904) = v507;
    *(v0 + 896) = v496;
    *(v0 + 888) = v500;
    *(v0 + 880) = v498;
    *(v0 + 872) = v504;
    *(v0 + 864) = v512;
    v527 = v213;
    if (!v520)
    {
      v482 = v214;
      v547 = v518;
      v553 = v490;
LABEL_132:
      v237 = *(v0 + 624);
      v239 = *(v0 + 304);
      v238 = *(v0 + 312);
      sub_21C6EDBAC(*(v0 + 720), v237, &qword_27CDEC300, &qword_21CBA3ED0);
      v240 = *(v238 + 48);
      v241 = v240(v237, 1, v239);
      v242 = *(v0 + 624);
      if (v241 == 1)
      {

        sub_21C6EA794(v242, &qword_27CDEC300, &qword_21CBA3ED0);
        goto LABEL_154;
      }

      v531 = v67;
      v243 = *(v0 + 616);
      v244 = *(v0 + 304);
      (*(*(v0 + 312) + 32))(*(v0 + 328), v242, v244);
      v63(v243, 1, 1, v244);
      if (v485)
      {
        v245 = sub_21CB85584();

        v246 = [v245 safari_bestURLForUserTypedString];

        v247 = 1;
        if (v246)
        {
          v248 = *(v0 + 608);
          sub_21CB80B94();

          v247 = 0;
        }

        v249 = *(v0 + 616);
        v250 = *(v0 + 608);
        v251 = *(v0 + 304);
        sub_21C6EA794(v249, &qword_27CDEC300, &qword_21CBA3ED0);
        v63(v250, v247, 1, v251);
        sub_21C79C3F4(v250, v249);
      }

      v252 = *(v0 + 776);
      v253 = *(v0 + 592);
      v254 = *(v0 + 328);
      v255 = *(v0 + 304);
      v256 = *(v0 + 312);
      sub_21C6EDBAC(*(v0 + 616), *(v0 + 600), &qword_27CDEC300, &qword_21CBA3ED0);
      v524 = *(v256 + 16);
      v524(v253, v254, v255);
      v63(v253, 0, 1, v255);

      sub_21CB81404();
      v257 = 0;
      if (v547)
      {
        v257 = sub_21CB85584();
      }

      v258 = *(v0 + 600);
      v259 = *(v0 + 304);
      v260 = sub_21CB85584();
      v261 = 0;
      if (v240(v258, 1, v259) != 1)
      {
        v262 = *(v0 + 600);
        v263 = *(v559 + 312);
        v264 = *(v559 + 304);
        v261 = sub_21CB80B74();
        (*(v263 + 8))(v262, v264);
        v0 = v559;
      }

      v265 = *(v0 + 592);
      v266 = *(v0 + 304);
      v267 = 0;
      if (v240(v265, 1, v266) != 1)
      {
        v268 = *(v559 + 312);
        v267 = sub_21CB80B74();
        (*(v268 + 8))(v265, v266);
        v0 = v559;
      }

      v269 = sub_21CB85584();

      v270 = 0;
      if (v492)
      {
        v270 = sub_21CB85584();
      }

      v271 = *(v0 + 808);
      v272 = *(v0 + 280);
      v273 = [objc_allocWithZone(MEMORY[0x277D49FE0]) initWithUser:v257 password:v260 url:v261 otpAuthURL:v267 title:v269 notesEntry:v270 lineNumberFromSourceFile:0];

      v274 = v273;
      v275 = [objc_opt_self() importCredential:v273 savedAccountStore:*(v272 + v271)];
      if (v275 == 2)
      {
        v283 = *(v559 + 616);
        v284 = *(v559 + 328);
        v285 = *(v559 + 304);
        v286 = *(v559 + 312);

        sub_21C6EA794(v283, &qword_27CDEC300, &qword_21CBA3ED0);
        (*(v286 + 8))(v284, v285);
        v0 = v559;
LABEL_154:
        v287 = 0;
        v276 = 0;
        v288 = 0;
        v289 = 0;
      }

      else
      {
        v276 = v547;
        if (v275 == 1)
        {
          v277 = v559;
          if (qword_27CDEA3F0 != -1)
          {
            swift_once();
          }

          v278 = sub_21CB81C84();
          __swift_project_value_buffer(v278, qword_27CE18580);
          v279 = sub_21CB81C64();
          v280 = sub_21CB85AF4();
          if (os_log_type_enabled(v279, v280))
          {
            v281 = swift_slowAlloc();
            *v281 = 0;
            _os_log_impl(&dword_21C6E5000, v279, v280, "Error while importing password synthesized for TOTP generator; the error was a conflict", v281, 2u);
            MEMORY[0x21CF16D90](v281, -1, -1);
          }

          v282 = v482 | 1;
        }

        else
        {
          v277 = v559;
          if (qword_27CDEA3F0 != -1)
          {
            swift_once();
          }

          v290 = sub_21CB81C84();
          __swift_project_value_buffer(v290, qword_27CE18580);
          v291 = sub_21CB81C64();
          v292 = sub_21CB85AF4();
          if (os_log_type_enabled(v291, v292))
          {
            v293 = swift_slowAlloc();
            *v293 = 0;
            _os_log_impl(&dword_21C6E5000, v291, v292, "Error while importing password synthesized for TOTP generator; the error was unknown", v293, 2u);
            MEMORY[0x21CF16D90](v293, -1, -1);
          }

          v282 = v488 | 8;
        }

        v527 = v282;
        *(v540 + v538) = v282;
        v294 = v277[77];
        v295 = v277[41];
        v296 = v277;
        if (*(v531 + 16))
        {
          v299 = v277 + 39;
          v298 = v277[39];
          v297 = v299[1];
          v300 = v296[38];
          v524(v297, v531 + ((*(v298 + 80) + 32) & ~*(v298 + 80)), v300);

          v288 = sub_21CB80BA4();
          v301 = v274;
          v289 = v302;

          sub_21C6EA794(v294, &qword_27CDEC300, &qword_21CBA3ED0);
          v303 = *(v298 + 8);
          v303(v295, v300);
          v303(v297, v300);
        }

        else
        {
          v304 = v277[39];
          v305 = v296[38];

          sub_21C6EA794(v294, &qword_27CDEC300, &qword_21CBA3ED0);
          (*(v304 + 8))(v295, v305);
          v288 = 0;
          v289 = 0;
        }

        *v481 = v288;
        v481[1] = v289;
        v0 = v559;
        *v480 = v553;
        v480[1] = v547;
        v287 = v553;
      }

      v307 = v504;
      v306 = v507;
      v308 = v500;
      v309 = v502;
      goto LABEL_208;
    }

    v523 = v212;
    v535 = v211;

    v215 = *(v67 + 16);
    v216 = 1;
    if (v215)
    {
      (*(*(v0 + 312) + 16))(*(v0 + 680), v67 + ((*(*(v0 + 312) + 80) + 32) & ~*(*(v0 + 312) + 80)), *(v0 + 304));
      v216 = 0;
    }

    v530 = v67;
    v217 = *(v0 + 680);
    v218 = *(v0 + 672);
    v220 = *(v0 + 304);
    v219 = *(v0 + 312);
    v63(v217, v216, 1, v220);
    sub_21C6EDBAC(v217, v218, &qword_27CDEC300, &qword_21CBA3ED0);
    v552 = *(v219 + 48);
    LODWORD(v217) = v552(v218, 1, v220);
    sub_21C6EA794(v218, &qword_27CDEC300, &qword_21CBA3ED0);
    if (v217 != 1)
    {
      v221 = *(v0 + 664);
      v222 = *(v0 + 304);
      sub_21C6EDBAC(*(v0 + 680), v221, &qword_27CDEC300, &qword_21CBA3ED0);
      v223 = v552(v221, 1, v222);
      if (v223 == 1)
      {
        goto LABEL_277;
      }

      v231 = *(v0 + 664);
      v232 = *(v0 + 304);
      v233 = *(v0 + 312);
      sub_21CB80BC4();
      v235 = v234;
      v236 = *(v233 + 8);
      v236(v231, v232);
      if (v235)
      {
      }

      else
      {
        v310 = *(v0 + 656);
        v311 = *(v0 + 304);
        sub_21C6EDBAC(*(v0 + 680), v310, &qword_27CDEC300, &qword_21CBA3ED0);
        v223 = v552(v310, 1, v311);
        if (v223 == 1)
        {
          goto LABEL_278;
        }

        v312 = *(v0 + 656);
        v313 = *(v0 + 304);
        sub_21CB80B64();
        v236(v312, v313);
        v314 = sub_21CB85584();

        v315 = [v314 safari_bestURLForUserTypedString];

        v316 = 1;
        if (v315)
        {
          v317 = *(v0 + 648);
          sub_21CB80B94();

          v316 = 0;
        }

        v318 = *(v0 + 680);
        v319 = *(v0 + 648);
        v320 = *(v0 + 304);
        sub_21C6EA794(v318, &qword_27CDEC300, &qword_21CBA3ED0);
        v63(v319, v316, 1, v320);
        sub_21C79C3F4(v319, v318);
      }
    }

    v321 = *(v0 + 776);
    v322 = *(v0 + 720);
    v323 = *(v0 + 632);
    sub_21C6EDBAC(*(v0 + 680), *(v0 + 640), &qword_27CDEC300, &qword_21CBA3ED0);
    sub_21C6EDBAC(v322, v323, &qword_27CDEC300, &qword_21CBA3ED0);
    v324 = sub_21CB81404();
    v326 = v325;

    v327 = 0;
    v328 = HIBYTE(v326) & 0xF;
    if ((v326 & 0x2000000000000000) == 0)
    {
      v328 = v324 & 0xFFFFFFFFFFFFLL;
    }

    if (v328)
    {
      v329 = *(v0 + 776);
      sub_21CB81404();
      v327 = v330;
    }

    v331 = 0;
    if (v518)
    {

      v331 = sub_21CB85584();
    }

    v548 = v215;
    v332 = *(v0 + 640);
    v333 = *(v0 + 304);
    v334 = sub_21CB85584();
    v335 = v552(v332, 1, v333);
    v336 = 0;
    if (v335 != 1)
    {
      v337 = *(v0 + 640);
      v338 = *(v559 + 312);
      v339 = *(v559 + 304);
      v336 = sub_21CB80B74();
      (*(v338 + 8))(v337, v339);
      v0 = v559;
    }

    v340 = *(v0 + 632);
    v341 = *(v0 + 304);
    v342 = 0;
    if (v552(v340, 1, v341) != 1)
    {
      v343 = *(v559 + 312);
      v342 = sub_21CB80B74();
      (*(v343 + 8))(v340, v341);
      v0 = v559;
    }

    v344 = 0;
    if (v327)
    {
      v344 = sub_21CB85584();
    }

    v345 = 0;
    if (v492)
    {
      v345 = sub_21CB85584();
    }

    v346 = *(v0 + 808);
    v347 = *(v559 + 280);
    v348 = [objc_allocWithZone(MEMORY[0x277D49FE0]) initWithUser:v331 password:v334 url:v336 otpAuthURL:v342 title:v344 notesEntry:v345 lineNumberFromSourceFile:0];
    *(v559 + 944) = v348;

    v349 = objc_opt_self();
    v350 = *(v347 + v346);
    v0 = v559;
    v543 = v348;
    v351 = [v349 importCredential:v348 savedAccountStore:v350];
    v352 = 0;
    v353 = 0;
    v288 = 0;
    v289 = 0;
    v354 = v527;
    v355 = v530;
    if (v351 != 2)
    {
      if (v351 == 1)
      {
        if (qword_27CDEA3F0 == -1)
        {
          goto LABEL_186;
        }

        goto LABEL_274;
      }

      if (qword_27CDEA3F0 != -1)
      {
        swift_once();
      }

      v360 = sub_21CB81C84();
      __swift_project_value_buffer(v360, qword_27CE18580);
      v357 = sub_21CB81C64();
      v361 = sub_21CB85AF4();
      if (!os_log_type_enabled(v357, v361))
      {
        v354 = v523;
        goto LABEL_194;
      }

      v359 = swift_slowAlloc();
      *v359 = 0;
      _os_log_impl(&dword_21C6E5000, v357, v361, "Error while importing password; the error was unknown", v359, 2u);
      v354 = v523;
LABEL_192:
      MEMORY[0x21CF16D90](v359, -1, -1);
      goto LABEL_194;
    }

    while (1)
    {
      v368 = 0;
      *(v0 + 984) = v289;
      *(v0 + 976) = v288;
      *(v0 + 968) = v353;
      v554 = v352;
      *(v0 + 960) = v352;
      *(v0 + 952) = v354;
      if (!v548)
      {
        goto LABEL_201;
      }

      if (*(v355 + 16))
      {
        break;
      }

      __break(1u);
      do
      {
        __break(1u);
LABEL_274:
        swift_once();
LABEL_186:
        v356 = sub_21CB81C84();
        __swift_project_value_buffer(v356, qword_27CE18580);
        v357 = sub_21CB81C64();
        v358 = sub_21CB85AF4();
        v354 = v535;
        if (os_log_type_enabled(v357, v358))
        {
          v359 = swift_slowAlloc();
          *v359 = 0;
          _os_log_impl(&dword_21C6E5000, v357, v358, "Error while importing password; the error was a conflict", v359, 2u);
          goto LABEL_192;
        }

LABEL_194:
        v355 = v530;

        v288 = 0;
        v289 = 0;
        *(v540 + v538) = v354;
        if (!v548)
        {
          goto LABEL_197;
        }
      }

      while (!*(v530 + 16));
      v362 = *(v0 + 352);
      v363 = *(v559 + 312);
      v364 = v354;
      v365 = *(v559 + 304);
      (*(v363 + 16))(v362, v530 + ((*(v363 + 80) + 32) & ~*(v363 + 80)), v365);
      v288 = sub_21CB80BA4();
      v289 = v366;
      v367 = v365;
      v354 = v364;
      (*(v363 + 8))(v362, v367);
      v0 = v559;
LABEL_197:
      *v481 = v288;
      v481[1] = v289;
      v353 = v518;
      *v480 = v490;
      v480[1] = v518;

      v352 = v490;
    }

    v369 = v354;
    v370 = *(v0 + 344);
    v371 = *(v559 + 312);
    v372 = *(v559 + 304);
    (*(v371 + 16))(v370, v355 + ((*(v371 + 80) + 32) & ~*(v371 + 80)), v372);
    v368 = sub_21CB80B74();
    v373 = v370;
    v354 = v369;
    (*(v371 + 8))(v373, v372);
    v0 = v559;
LABEL_201:
    v527 = v354;
    v374 = 0;
    if (v518)
    {
      v374 = sub_21CB85584();
    }

    v375 = sub_21CB85584();

    v376 = [v350 savedAccountForURL:v368 user:v374 password:v375];
    *(v0 + 992) = v376;

    if (v376)
    {
      v377 = *(v355 + 16);
      if (v377 <= 1)
      {
        v276 = v353;
        sub_21C6EA794(*(v0 + 680), &qword_27CDEC300, &qword_21CBA3ED0);

        v307 = v504;
        v306 = v507;
        v308 = v500;
        v309 = v502;
        goto LABEL_207;
      }

      if (v548)
      {
        if (v377 >= v548)
        {
          v436 = v548 - 1;
          if (v548 != 1)
          {
            v437 = *(v0 + 312);
            v558 = *(v437 + 16);
            v561 = *(v437 + 72);
            v438 = v355 + v561 + ((*(v437 + 80) + 32) & ~*(v437 + 80));
            v439 = MEMORY[0x277D84F90];
            do
            {
              v440 = *(v0 + 312) + 16;
              v558(*(v0 + 336), v438, *(v0 + 304));
              v441 = sub_21CB80BA4();
              if (!v442)
              {
                v443 = *(v0 + 336);
                v441 = sub_21CB80B64();
              }

              v444 = v441;
              v445 = v442;
              (*(*(v0 + 312) + 8))(*(v0 + 336), *(v0 + 304));
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v439 = sub_21CA4F2EC(0, *(v439 + 2) + 1, 1, v439);
              }

              v447 = *(v439 + 2);
              v446 = *(v439 + 3);
              if (v447 >= v446 >> 1)
              {
                v439 = sub_21CA4F2EC((v446 > 1), v447 + 1, 1, v439);
              }

              *(v439 + 2) = v447 + 1;
              v448 = &v439[16 * v447];
              *(v448 + 4) = v444;
              *(v448 + 5) = v445;
              v438 += v561;
              --v436;
            }

            while (v436);
          }

          v449 = sub_21CB85814();
          *(v0 + 1000) = v449;

          *(v0 + 16) = v0;
          *(v0 + 24) = sub_21C9EC594;
          v450 = swift_continuation_init();
          *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7660, &unk_21CBBDB50);
          *(v0 + 80) = MEMORY[0x277D85DD0];
          *(v0 + 88) = 1107296256;
          *(v0 + 96) = sub_21CAB1570;
          *(v0 + 104) = &block_descriptor_24;
          *(v0 + 112) = v450;
          [v350 saveAdditionalSites:v449 forSavedAccount:v376 completionHandler:v0 + 80];

          return MEMORY[0x282200938](v0 + 16);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
      return MEMORY[0x2821AB028](v223, v224, v225, v226, v227, v228, v229, v230);
    }

    sub_21C6EA794(*(v0 + 680), &qword_27CDEC300, &qword_21CBA3ED0);

    v307 = v504;
    v306 = v507;
    v308 = v500;
    v309 = v502;
    v276 = v353;
LABEL_207:
    v287 = v554;
LABEL_208:
    *(v0 + 1120) = v289;
    *(v0 + 1112) = v288;
    *(v0 + 1104) = v276;
    *(v0 + 1096) = v287;
    *(v0 + 1088) = v514;
    *(v0 + 1080) = v516;
    *(v0 + 1072) = v309;
    *(v0 + 1064) = v510;
    *(v0 + 1056) = v306;
    *(v0 + 1048) = v496;
    *(v0 + 1040) = v308;
    *(v0 + 1032) = v498;
    *(v0 + 1024) = v307;
    *(v0 + 1016) = v512;
    *(v0 + 1008) = v527;
    if (v514 >> 60 == 15)
    {

      goto LABEL_218;
    }

    if (v309 >> 60 == 15)
    {
      sub_21C7A35D0(v516, v514);

      sub_21C7902FC(v516, v514);
      if (!*(v0 + 1008))
      {
        continue;
      }

      goto LABEL_219;
    }

    if (v306 && v308)
    {
      if (v307 >> 60 != 15)
      {
        v509 = v306;
        v451 = *(v0 + 776);
        v452 = *(v0 + 408);
        v453 = *(v0 + 416);
        v454 = *(v0 + 296);
        v562 = *(*(v0 + 280) + *(v0 + 808));
        sub_21C9F3250(v516, v514);
        sub_21C9F3250(v510, v309);
        v506 = v307;
        sub_21C9F3250(v512, v307);
        v455 = sub_21CB80C74();
        v457 = v456;
        *(v0 + 1128) = v456;
        sub_21CB81414();
        v458 = *(v453 + 48);
        if (v458(v454, 1, v452) == 1)
        {
          v459 = *(v0 + 408);
          v460 = *(v0 + 296);
          v461 = *(v0 + 432);
          sub_21CB80DA4();
          if (v458(v460, 1, v459) != 1)
          {
            sub_21C6EA794(*(v0 + 296), &unk_27CDED250, &qword_21CBA64C0);
          }
        }

        else
        {
          (*(*(v0 + 416) + 32))(*(v0 + 432), *(v0 + 296), *(v0 + 408));
        }

        v462 = *(v0 + 776);
        v463 = *(v0 + 408);
        v464 = *(v0 + 288);
        sub_21CB813E4();
        if (v458(v464, 1, v463) == 1)
        {
          v465 = *(v0 + 408);
          v466 = *(v0 + 288);
          v467 = *(v0 + 424);
          sub_21CB80DA4();
          if (v458(v466, 1, v465) != 1)
          {
            sub_21C6EA794(*(v0 + 288), &unk_27CDED250, &qword_21CBA64C0);
          }
        }

        else
        {
          (*(*(v0 + 416) + 32))(*(v0 + 424), *(v0 + 288), *(v0 + 408));
        }

        v468 = *(MEMORY[0x277D499A8] + 4);
        v469 = swift_task_alloc();
        *(v0 + 1136) = v469;
        *v469 = v0;
        v469[1] = sub_21C9EF6A0;
        v565 = *(v0 + 424);
        v564 = *(v0 + 432);
        v224 = v509;
        v223 = v496;
        v227 = v498;
        v225 = v455;
        v226 = v457;
        v228 = v308;
        v229 = v512;
        v230 = v506;

        return MEMORY[0x2821AB028](v223, v224, v225, v226, v227, v228, v229, v230);
      }
    }

LABEL_218:

    if (*(v0 + 1008))
    {
      goto LABEL_219;
    }
  }

  v404 = *(v0 + 792);
  v62 = *(v0 + 280);

  v68 = OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importInProgress;
  if (v62[OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importInProgress])
  {
    v405 = *(v0 + 816);
    v406 = *(v559 + 280);
    swift_getKeyPath();
    v407 = swift_task_alloc();
    *(v407 + 16) = v406;
    *(v407 + 24) = 0;
    *(v559 + 272) = v406;
    v0 = v559;
    sub_21CB810C4();

    goto LABEL_233;
  }

LABEL_232:
  v62[v68] = 0;
LABEL_233:
  v409 = *(v0 + 280);
  if (*(v409 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importDidComplete) == 1)
  {
    *(v409 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importDidComplete) = 1;
  }

  else
  {
    v410 = v0;
    v411 = *(v0 + 816);
    swift_getKeyPath();
    v412 = swift_task_alloc();
    *(v412 + 16) = v409;
    *(v412 + 24) = 1;
    *(v410 + 248) = v409;
    sub_21CB810C4();
  }

  if (qword_27CDEA3F0 != -1)
  {
    swift_once();
  }

  v0 = v559;
  v413 = *(v559 + 280);
  v414 = sub_21CB81C84();
  __swift_project_value_buffer(v414, qword_27CE18580);
  swift_retain_n();
  v415 = sub_21CB81C64();
  v416 = sub_21CB85AD4();
  if (os_log_type_enabled(v415, v416))
  {
    v417 = *(v559 + 832);
    v418 = *(v559 + 824);
    v419 = *(v559 + 816);
    v556 = *(v559 + 784);
    v420 = *(v559 + 280);
    v421 = swift_slowAlloc();
    *v421 = 134218496;
    swift_getKeyPath();
    *(v559 + 256) = v420;
    sub_21CB810D4();

    swift_beginAccess();
    *(v421 + 4) = *(*(v420 + v418) + 16);

    *(v421 + 12) = 2048;
    swift_getKeyPath();
    *(v559 + 264) = v420;
    sub_21CB810D4();

    *(v421 + 14) = *(v420 + v417);

    *(v421 + 22) = 2048;
    v0 = v559;
    v422 = *(sub_21CB818B4() + 16);

    *(v421 + 24) = v422;

    _os_log_impl(&dword_21C6E5000, v415, v416, "Import completed. Failed: %ld | Completed: %ld | Total: %ld", v421, 0x20u);
    MEMORY[0x21CF16D90](v421, -1, -1);
  }

  else
  {
    v423 = *(v559 + 280);
  }

LABEL_242:
  v424 = *(v0 + 776);
  v425 = *(v0 + 752);
  v426 = *(v0 + 744);
  v427 = *(v0 + 720);
  v428 = *(v0 + 712);
  v429 = *(v0 + 704);
  v430 = *(v0 + 696);
  v431 = *(v0 + 688);
  v432 = *(v0 + 680);
  v433 = *(v0 + 672);
  v483 = *(v0 + 664);
  v484 = *(v0 + 656);
  v486 = *(v0 + 648);
  v487 = *(v0 + 640);
  v489 = *(v0 + 632);
  v491 = *(v0 + 624);
  v493 = *(v0 + 616);
  v495 = *(v0 + 608);
  v497 = *(v0 + 600);
  v499 = *(v0 + 592);
  v501 = *(v0 + 584);
  v503 = *(v0 + 560);
  v505 = *(v0 + 536);
  v508 = *(v0 + 528);
  v511 = *(v0 + 520);
  v513 = *(v0 + 512);
  v515 = *(v0 + 488);
  v517 = *(v0 + 464);
  v519 = *(v0 + 440);
  v521 = *(v0 + 432);
  v525 = *(v0 + 424);
  v528 = *(v0 + 400);
  v533 = *(v0 + 376);
  v537 = *(v0 + 352);
  v539 = *(v0 + 344);
  v541 = *(v0 + 336);
  v545 = *(v0 + 328);
  v550 = *(v0 + 320);
  v557 = *(v0 + 296);
  v560 = *(v0 + 288);

  v434 = *(v0 + 8);

  return v434();
}

uint64_t PMCredentialExchangeDataImportModel.deinit()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel_credentialData;
  v2 = sub_21CB818C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel_progressHandler + 8);
  sub_21C71B710(*(v0 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel_progressHandler));
  v4 = OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel_id;
  v5 = sub_21CB80E34();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__failedItems);

  v7 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__currentItemTitle + 8);

  v8 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importTask);

  v9 = OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel___observationRegistrar;
  v10 = sub_21CB81114();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  return v0;
}

uint64_t PMCredentialExchangeDataImportModel.__deallocating_deinit()
{
  PMCredentialExchangeDataImportModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21C9F2B80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C9F2BC8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel_id;
  v5 = sub_21CB80E34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t dispatch thunk of PMCredentialExchangeDataImportModel.startImportAsync()()
{
  v2 = *(*v0 + 480);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21C6F35D0;

  return v6();
}

void sub_21C9F2E5C()
{
  sub_21CB80E34();
  if (v0 <= 0x3F)
  {
    sub_21C6EDA64();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21C9F2F0C()
{
  result = qword_27CDF4790;
  if (!qword_27CDF4790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4790);
  }

  return result;
}

unint64_t sub_21C9F2F64()
{
  result = qword_27CDF4798;
  if (!qword_27CDF4798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4798);
  }

  return result;
}

unint64_t sub_21C9F2FBC()
{
  result = qword_27CDF47A0;
  if (!qword_27CDF47A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF47A0);
  }

  return result;
}

unint64_t sub_21C9F3014()
{
  result = qword_27CDF47A8;
  if (!qword_27CDF47A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF47A8);
  }

  return result;
}

uint64_t sub_21C9F30E0()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__currentItemTitle);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_21C9F312C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMCredentialExchangeDataImportModel.FailedItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9F3190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMCredentialExchangeDataImportModel.FailedItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9F31F4(uint64_t a1)
{
  v2 = type metadata accessor for PMCredentialExchangeDataImportModel.FailedItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C9F3250(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21C7A35D0(a1, a2);
  }

  return a1;
}

uint64_t type metadata accessor for PMGroupMemberDetailView()
{
  result = qword_27CDF47C0;
  if (!qword_27CDF47C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C9F333C()
{
  sub_21C7226D8();
  if (v0 <= 0x3F)
  {
    sub_21C9F34B8(319, &qword_27CDF3198, type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21C9F34B8(319, &qword_27CDEB178, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_21C9F34B8(319, &qword_27CDF42C8, type metadata accessor for PMGroupMemberImageModel, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21C9D1650();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21C9F34B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21C9F3538@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = sub_21CB82FD4();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB81024();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF47D0, &qword_21CBBB8E8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF47D8, &qword_21CBBB8F0);
  v15 = *(v14 - 8);
  v38 = v14;
  v39 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v44 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF47E0, &qword_21CBBB8F8);
  sub_21C6EADEC(&qword_27CDF47E8, &qword_27CDF47E0, &qword_21CBBB8F8);
  sub_21CB83EF4();
  v19 = type metadata accessor for PMGroupMemberDetailView();
  v20 = *(v19 + 32);
  v21 = &v13[*(v10 + 36)];
  v22 = *(type metadata accessor for PMRemoveGroupMemberConfirmationAlert(0) + 20);
  v23 = v1 + *(v19 + 40);
  sub_21C95B2C8(v21 + v22);
  v24 = sub_21CB823B4();
  (*(*(v24 - 8) + 56))(v21 + v22, 0, 1, v24);
  sub_21C6EDBAC(v2 + v20, v21, &qword_27CDF3178, &qword_21CBB7260);
  sub_21CB81014();
  v25 = sub_21CB81004();
  v27 = v26;
  (*(v36 + 8))(v9, v37);
  v45 = v25;
  v46 = v27;
  v28 = sub_21C9F4E1C();
  v29 = sub_21C71F3FC();
  v30 = MEMORY[0x277D837D0];
  sub_21CB842F4();

  sub_21C6EA794(v13, &qword_27CDF47D0, &qword_21CBBB8E8);
  v31 = v40;
  v32 = v41;
  v33 = v42;
  (*(v41 + 104))(v40, *MEMORY[0x277CDDDC0], v42);
  v45 = v10;
  v46 = v30;
  v47 = v28;
  v48 = v29;
  swift_getOpaqueTypeConformance2();
  v34 = v38;
  sub_21CB84684();
  (*(v32 + 8))(v31, v33);
  return (*(v39 + 8))(v18, v34);
}

uint64_t sub_21C9F39A4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for PMGroupMemberDetailView();
  v38[0] = *(v3 - 8);
  v4 = *(v38[0] + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v38[1] = v5;
  v39 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2C10, &unk_21CBB5AA0);
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v43);
  v40 = v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4810, &qword_21CBBB910);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v42 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v38 - v13;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4818, &qword_21CBBB918);
  v15 = *(v41 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v41);
  v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v38 - v20;
  v45 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4820, &qword_21CBBB920);
  sub_21C6EADEC(&qword_27CDF4828, &qword_27CDF4820, &qword_21CBBB920);
  v22 = v21;
  sub_21CB85054();
  if (*(a1 + 112) == 1 && *(a1 + 81) != 2)
  {
    v25 = v39;
    sub_21C9F4F54(a1, v39);
    v26 = (*(v38[0] + 80) + 16) & ~*(v38[0] + 80);
    v27 = swift_allocObject();
    sub_21C9F4FB8(v25, v27 + v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB208, &unk_21CBB3F40);
    sub_21C7B8EA4();
    v28 = v40;
    sub_21CB84DA4();
    v29 = v43;
    (*(v6 + 32))(v14, v28, v43);
    v24 = v29;
    v23 = 0;
  }

  else
  {
    v23 = 1;
    v24 = v43;
  }

  (*(v6 + 56))(v14, v23, 1, v24);
  v30 = v15;
  v31 = *(v15 + 16);
  v32 = v41;
  v31(v18, v22, v41);
  v33 = v42;
  sub_21C6EDBAC(v14, v42, &qword_27CDF4810, &qword_21CBBB910);
  v34 = v44;
  v31(v44, v18, v32);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4830, &qword_21CBBB928);
  sub_21C6EDBAC(v33, &v34[*(v35 + 48)], &qword_27CDF4810, &qword_21CBBB910);
  sub_21C6EA794(v14, &qword_27CDF4810, &qword_21CBBB910);
  v36 = *(v30 + 8);
  v36(v22, v32);
  sub_21C6EA794(v33, &qword_27CDF4810, &qword_21CBBB910);
  return (v36)(v18, v32);
}

uint64_t sub_21C9F3E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4838, &qword_21CBBB930);
  v3 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v5 = &v62 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4840, &qword_21CBBB938);
  v68 = *(v6 - 8);
  v7 = *(v68 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v62 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4848, &qword_21CBBB940);
  v10 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v69 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4850, &qword_21CBBB948);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v62 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4858, &qword_21CBBB950);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v74 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v72 = &v62 - v22;
  if (*(a1 + 104) || (*(a1 + 80) & 1) == 0)
  {
    v67 = &v62;
    MEMORY[0x28223BE20](v21);
    v66 = &v62 - 4;
    v32 = *(a1 + 48);
    v33 = *(a1 + 80);
    v83 = *(a1 + 64);
    v84 = v33;
    v34 = *(a1 + 80);
    v85 = *(a1 + 96);
    v35 = *(a1 + 16);
    v79 = *a1;
    v80 = v35;
    v36 = *(a1 + 48);
    v38 = *a1;
    v37 = *(a1 + 16);
    v81 = *(a1 + 32);
    v39 = v81;
    v82 = v36;
    v77[3] = v83;
    v77[4] = v34;
    v78[0] = *(a1 + 96);
    v76 = v38;
    v77[0] = v37;
    *(&v62 - 2) = a1;
    v77[1] = v39;
    v77[2] = v32;
    v40 = sub_21CB82934();
    v65 = v13;
    v41 = v40;
    v42 = sub_21CB83CE4();
    *&v78[1] = v41;
    BYTE8(v78[1]) = v42;
    sub_21C7A33F0(&v79, &v86);
    v62 = v16;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4860, &qword_21CBBB958);
    v64 = v5;
    v44 = v43;
    v45 = sub_21C9F5084();
    v63 = v12;
    v46 = v45;
    MEMORY[0x21CF143C0](1, MEMORY[0x277D84F90], v44, v45);
    *&v87[48] = v77[3];
    *&v87[64] = v77[4];
    v88[0] = v78[0];
    *(v88 + 9) = *(v78 + 9);
    v86 = v76;
    *v87 = v77[0];
    *&v87[16] = v77[1];
    *&v87[32] = v77[2];
    sub_21C6EA794(&v86, &qword_27CDF4860, &qword_21CBBB958);
    *&v76 = v44;
    *(&v76 + 1) = v46;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_21CB84674();
    (*(v68 + 8))(v9, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4870, &qword_21CBBB960);
    sub_21C6EADEC(&qword_27CDF4878, &qword_27CDF4870, &qword_21CBBB960);
    *&v76 = v6;
    *(&v76 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v48 = v62;
    sub_21CB825F4();
    v49 = v65;
    v50 = v63;
    (*(v65 + 16))(v64, v48, v63);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDF4880, &qword_27CDF4850, &qword_21CBBB948);
    v31 = v72;
    sub_21CB83494();
    (*(v49 + 8))(v48, v50);
  }

  else
  {
    v23 = sub_21CB83074();
    LOBYTE(v76) = 1;
    sub_21C9F4D14(a1, &v86);
    v24 = v86;
    v25 = v87[0];
    v26 = v87[24];
    v27 = *&v87[32];
    v28 = *&v87[8];
    LOBYTE(v86) = v87[24];
    v29 = v76;
    *v5 = v23;
    *(v5 + 1) = 0;
    v5[16] = v29;
    *(v5 + 24) = v24;
    v5[40] = v25;
    *(v5 + 3) = v28;
    v5[64] = v26;
    *(v5 + 9) = v27;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4870, &qword_21CBBB960);
    sub_21C6EADEC(&qword_27CDF4880, &qword_27CDF4850, &qword_21CBBB948);
    sub_21C6EADEC(&qword_27CDF4878, &qword_27CDF4870, &qword_21CBBB960);
    v30 = v72;
    sub_21CB83494();
    v31 = v30;
  }

  v51 = sub_21CB832F4();
  LOBYTE(v86) = 1;
  sub_21C9F46E8(a1, &v79);
  *&v75[7] = v79;
  *&v75[23] = v80;
  *&v75[39] = v81;
  *&v75[55] = v82;
  v52 = v86;
  v53 = v74;
  sub_21C774C24(v31, v74);
  v54 = v73;
  sub_21C774C24(v53, v73);
  v55 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4888, &qword_21CBBB968) + 48);
  v76 = v51;
  LOBYTE(v77[0]) = v52;
  *(v77 + 1) = *v75;
  *(&v77[1] + 1) = *&v75[16];
  *(&v77[2] + 1) = *&v75[32];
  *(&v77[3] + 1) = *&v75[48];
  v56 = *&v75[63];
  *&v77[4] = *&v75[63];
  v57 = v77[0];
  *v55 = v51;
  *(v55 + 16) = v57;
  v58 = v77[1];
  v59 = v77[2];
  v60 = v77[3];
  *(v55 + 80) = v56;
  *(v55 + 48) = v59;
  *(v55 + 64) = v60;
  *(v55 + 32) = v58;
  sub_21C6EDBAC(&v76, &v86, &qword_27CDF4890, &unk_21CBBB970);
  sub_21C6EA794(v31, &qword_27CDF4858, &qword_21CBBB950);
  v86 = v51;
  v87[0] = v52;
  *&v87[17] = *&v75[16];
  *&v87[33] = *&v75[32];
  *&v87[49] = *&v75[48];
  *&v87[64] = *&v75[63];
  *&v87[1] = *v75;
  sub_21C6EA794(&v86, &qword_27CDF4890, &unk_21CBBB970);
  return sub_21C6EA794(v53, &qword_27CDF4858, &qword_21CBBB950);
}

double sub_21C9F4658@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB83074();
  v17 = 1;
  sub_21C9F4D14(a1, v12);
  v5 = v12[0];
  result = *&v12[1];
  v7 = v13;
  v8 = v15;
  v9 = v16;
  v10 = v14;
  v11 = v17;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 24) = v5;
  *(a2 + 32) = result;
  *(a2 + 40) = v7;
  *(a2 + 48) = v10;
  *(a2 + 64) = v8;
  *(a2 + 72) = v9;
  return result;
}

uint64_t sub_21C9F46E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21C9F48CC();
  sub_21C71F3FC();
  v3 = sub_21CB84054();
  v5 = v4;
  v7 = v6;
  sub_21CB83EB4();
  v8 = sub_21CB84024();
  v10 = v9;
  v12 = v11;

  sub_21C74A72C(v3, v5, v7 & 1);

  sub_21CB837E4();
  v13 = sub_21CB83FC4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_21C74A72C(v8, v10, v12 & 1);

  v30 = *(a1 + 48);
  v31 = *(a1 + 56);

  v20 = sub_21CB84054();
  v22 = v21;
  v23 = v17 & 1;
  v29 = v17 & 1;
  v25 = v24 & 1;
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v23;
  *(a2 + 24) = v19;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;
  *(a2 + 48) = v24 & 1;
  *(a2 + 56) = v26;
  sub_21C79B058(v13, v15, v23);

  sub_21C79B058(v20, v22, v25);

  sub_21C74A72C(v20, v22, v25);

  sub_21C74A72C(v13, v15, v29);
}

uint64_t sub_21C9F48CC()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = sub_21CB85584();
  [v6 isStringPhoneNumber_];

  sub_21CB81014();
  v10 = sub_21CB81004();
  (*(v2 + 8))(v5, v1);
  return v10;
}

uint64_t sub_21C9F4A10(uint64_t a1)
{
  v2 = sub_21CB823B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 128);
  result = (*(a1 + 120))(v5);
  if (*(a1 + 136) == 1)
  {
    v10 = a1 + *(type metadata accessor for PMGroupMemberDetailView() + 40);
    sub_21C95B2C8(v7);
    sub_21CB823A4();
    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

__n128 sub_21C9F4B0C@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  *&v24[0] = v7;
  *(&v24[0] + 1) = v9;
  sub_21C71F3FC();
  v10 = sub_21CB84054();
  v12 = v11;
  LOBYTE(v7) = v13;
  sub_21CB84A64();
  v14 = sub_21CB83FB4();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_21C74A72C(v10, v12, v7 & 1);

  sub_21CB85214();
  sub_21CB82AC4();
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  v21 = v24[5];
  *(a1 + 96) = v24[4];
  *(a1 + 112) = v21;
  *(a1 + 128) = v24[6];
  v22 = v24[1];
  *(a1 + 32) = v24[0];
  *(a1 + 48) = v22;
  result = v24[3];
  *(a1 + 64) = v24[2];
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_21C9F4D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMGroupMemberDetailView();
  v5 = *(a1 + *(v4 + 44));
  v6 = *(a1 + *(v4 + 36));
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  sub_21C71F3FC();

  v7 = sub_21CB84054();
  v9 = v8;
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  v11 = v10 & 1;
  *(a2 + 40) = v10 & 1;
  *(a2 + 48) = v12;

  sub_21C79B058(v7, v9, v11);

  sub_21C74A72C(v7, v9, v11);
}

unint64_t sub_21C9F4E1C()
{
  result = qword_27CDF47F0;
  if (!qword_27CDF47F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF47D0, &qword_21CBBB8E8);
    sub_21C6EADEC(&qword_27CDF47F8, &qword_27CDF4800, &unk_21CBBB900);
    sub_21C9F4F04(&qword_27CDF4808, type metadata accessor for PMRemoveGroupMemberConfirmationAlert);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF47F0);
  }

  return result;
}

uint64_t sub_21C9F4F04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C9F4F54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGroupMemberDetailView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9F4FB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGroupMemberDetailView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9F501C()
{
  v1 = *(type metadata accessor for PMGroupMemberDetailView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C9F4A10(v2);
}

unint64_t sub_21C9F5084()
{
  result = qword_27CDF4868;
  if (!qword_27CDF4868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4860, &qword_21CBBB958);
    sub_21C9E6944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4868);
  }

  return result;
}

uint64_t sub_21C9F5110()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  sub_21CB86484();
  sub_21CB854C4();
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  MEMORY[0x21CF15FC0](*&v4);
  return sub_21CB864D4();
}

uint64_t sub_21C9F5188()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  sub_21CB854C4();
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  return MEMORY[0x21CF15FC0](*&v4);
}

uint64_t sub_21C9F51D4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  sub_21CB86484();
  sub_21CB854C4();
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  MEMORY[0x21CF15FC0](*&v4);
  return sub_21CB864D4();
}

BOOL sub_21C9F5248(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_21CB86344();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

id sub_21C9F52A8(uint64_t a1, double a2)
{
  v3 = v2;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  swift_beginAccess();
  v8 = *(v2 + 112);
  v9 = *(v8 + 16);

  if (v9)
  {

    v10 = sub_21CB10E48(v7, v6, a2);
    if (v11)
    {
      v12 = v10;

      v13 = *(*(v8 + 56) + 8 * v12);

      return v13;
    }
  }

  v15 = [objc_opt_self() sharedManager];
  v16 = v15;
  if (*(a1 + 80))
  {
    v17 = [v15 avatarImageForPrimaryAccountOwnerWithDiameter_];
  }

  else
  {
    v18 = sub_21CB85584();
    v17 = [v16 avatarImageForUserHandle:v18 diameter:a2];

    v16 = v18;
  }

  swift_beginAccess();
  v19 = v17;
  v20 = *(v3 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v3 + 112);
  *(v3 + 112) = 0x8000000000000000;
  sub_21C8D4E44(v19, v7, v6, isUniquelyReferenced_nonNull_native, a2);

  *(v3 + 112) = v22;
  swift_endAccess();
  return v19;
}

uint64_t sub_21C9F5468()
{
  v1 = *(v0 + 112);

  __swift_destroy_boxed_opaque_existential_0((v0 + 120));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_21C9F54BC()
{
  result = qword_27CDF4898;
  if (!qword_27CDF4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4898);
  }

  return result;
}

uint64_t sub_21C9F551C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PMGroupMemberImageCache();
  result = sub_21CB81CF4();
  *a1 = result;
  return result;
}

uint64_t sub_21C9F5568@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF48A0, &unk_21CBBBAF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  v8 = sub_21CB80894();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB80844();
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v12, v7, v8);
    sub_21CB80874();
    if (v13)
    {
      v14 = sub_21CB85634();
      v16 = v15;

      v17 = v14 == 0x6874756170746FLL && v16 == 0xE700000000000000;
      if (v17 || (sub_21CB86344() & 1) != 0 || (v14 == 0x746F2D656C707061 ? (v18 = v16 == 0xED00006874756170) : (v18 = 0), v18 || (sub_21CB86344() & 1) != 0 || (v14 == 0xD000000000000011 ? (v22 = 0x800000021CB97500 == v16) : (v22 = 0), v22 || (sub_21CB86344() & 1) != 0 || v14 == 0xD000000000000017 && 0x800000021CB97520 == v16 || (sub_21CB86344() & 1) != 0)))
      {
        (*(v9 + 8))(v12, v8);

        v19 = sub_21CB80BE4();
        (*(*(v19 - 8) + 16))(a2, a1, v19);
        v20 = type metadata accessor for PMOpenURLHandler.Action();
        swift_storeEnumTagMultiPayload();
        return (*(*(v20 - 8) + 56))(a2, 0, 1, v20);
      }

      if (v14 == 1886680168 && v16 == 0xE400000000000000 || (sub_21CB86344() & 1) != 0 || v14 == 0x7370747468 && v16 == 0xE500000000000000)
      {

LABEL_30:
        sub_21C9F5F34(a1, a2);
        return (*(v9 + 8))(v12, v8);
      }

      v23 = sub_21CB86344();

      if (v23)
      {
        goto LABEL_30;
      }
    }

    (*(v9 + 8))(v12, v8);
    goto LABEL_33;
  }

  sub_21C6EA794(v7, &qword_27CDF48A0, &unk_21CBBBAF0);
LABEL_33:
  v24 = type metadata accessor for PMOpenURLHandler.Action();
  return (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
}

uint64_t type metadata accessor for PMOpenURLHandler.Action()
{
  result = qword_27CDF48A8;
  if (!qword_27CDF48A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C9F5A70()
{
  v1 = sub_21CB80BE4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB85C44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMOpenURLHandler.Action();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C9F8400(v0, v14);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v29 = *v14;
      v28 = v14[1];
      MEMORY[0x21CF15F90](2);
      if (!v28)
      {
        return sub_21CB864A4();
      }

      goto LABEL_12;
    case 2u:
      v20 = *v14;
      v21 = v14[1];
      v22 = v14[2];
      v23 = v14[3];
      MEMORY[0x21CF15F90](3);
      sub_21CB80C94();
      sub_21CB80C94();
      sub_21C7A34C0(v20, v21);
      return sub_21C7A34C0(v22, v23);
    case 3u:
      (*(v7 + 32))(v10, v14, v6);
      MEMORY[0x21CF15F90](4);
      sub_21C9F84C0(&qword_27CDF8950, MEMORY[0x277D49978]);
      sub_21CB85494();
      return (*(v7 + 8))(v10, v6);
    case 4u:
      (*(v2 + 32))(v5, v14, v1);
      v19 = 6;
      goto LABEL_14;
    case 5u:
      (*(v2 + 32))(v5, v14, v1);
      v19 = 7;
LABEL_14:
      MEMORY[0x21CF15F90](v19);
      sub_21C9F84C0(&qword_27CDF48D0, MEMORY[0x277CC9260]);
      sub_21CB85494();
      return (*(v2 + 8))(v5, v1);
    case 6u:
      v31 = *v14;
      v30 = v14[1];
      MEMORY[0x21CF15F90](8);
      if (!v30)
      {
        return sub_21CB864A4();
      }

LABEL_12:
      sub_21CB864A4();
      sub_21CB854C4();

    case 7u:
      v24 = *v14;
      v25 = v14[1];
      v26 = v14[2];
      v27 = v14[3];
      MEMORY[0x21CF15F90](12);
      sub_21CB854C4();

      sub_21CB854C4();

    case 8u:
      v18 = 0;
      goto LABEL_20;
    case 9u:
      v18 = 5;
      goto LABEL_20;
    case 0xAu:
      v18 = 9;
      goto LABEL_20;
    case 0xBu:
      v18 = 10;
      goto LABEL_20;
    case 0xCu:
      v18 = 11;
      goto LABEL_20;
    case 0xDu:
      v18 = 13;
      goto LABEL_20;
    case 0xEu:
      v18 = 14;
LABEL_20:
      result = MEMORY[0x21CF15F90](v18);
      break;
    default:
      v15 = *v14;
      v16 = v14[1];
      MEMORY[0x21CF15F90](1);
      sub_21CB854C4();

      break;
  }

  return result;
}

uint64_t sub_21C9F5EB0()
{
  sub_21CB86484();
  sub_21C9F5A70();
  return sub_21CB864D4();
}

uint64_t sub_21C9F5EF4()
{
  sub_21CB86484();
  sub_21C9F5A70();
  return sub_21CB864D4();
}

uint64_t sub_21C9F5F34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v87 = sub_21CB80814();
  v4 = *(v87 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v87);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v86 = &v81 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF48A0, &unk_21CBBBAF0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v81 - v15;
  v17 = sub_21CB80894();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](v17);
  v89 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v81 - v22;
  v88 = a1;
  sub_21CB80844();
  v24 = v18[6];
  if (v24(v16, 1, v17) == 1)
  {
    sub_21C6EA794(v16, &qword_27CDF48A0, &unk_21CBBBAF0);
LABEL_15:
    v36 = type metadata accessor for PMOpenURLHandler.Action();
    v37 = *(*(v36 - 8) + 56);
    v38 = a2;
LABEL_16:
    v39 = 1;
    return v37(v38, v39, 1, v36);
  }

  v82 = v4;
  v85 = v18;
  v83 = v18[4];
  v83(v23, v16, v17);
  v90 = v23;
  sub_21CB80854();
  v25 = MEMORY[0x277D49CB8];
  if (!v26)
  {
    v35 = *MEMORY[0x277D49CB8];
    sub_21CB855C4();
LABEL_13:

    goto LABEL_14;
  }

  v84 = a2;
  v27 = sub_21CB85634();
  v29 = v28;

  v30 = *v25;
  v31 = sub_21CB855C4();
  if (!v29)
  {
    a2 = v84;
    goto LABEL_13;
  }

  if (v27 != v31 || v29 != v32)
  {
    v34 = sub_21CB86344();

    a2 = v84;
    if (v34)
    {
      goto LABEL_19;
    }

LABEL_14:
    (v85[1])(v90, v17);
    goto LABEL_15;
  }

LABEL_19:
  v41 = sub_21CB80864();
  v43 = v42;
  v44 = *MEMORY[0x277D49CB0];
  if (v41 == sub_21CB855C4() && v43 == v45)
  {
  }

  else
  {
    v46 = sub_21CB86344();

    if ((v46 & 1) == 0)
    {
      (v85[1])(v90, v17);
      a2 = v84;
      goto LABEL_15;
    }
  }

  v47 = v90;
  sub_21CB80834();
  if (!v48)
  {
    (v85[1])(v47, v17);
LABEL_28:
    v49 = type metadata accessor for PMOpenURLHandler.Action();
    v50 = v84;
LABEL_29:
    swift_storeEnumTagMultiPayload();
    v37 = *(*(v49 - 8) + 56);
    v38 = v50;
LABEL_30:
    v39 = 0;
    v36 = v49;
    return v37(v38, v39, 1, v36);
  }

  sub_21CB80884();

  if (v24(v14, 1, v17) == 1)
  {
    (v85[1])(v47, v17);
    sub_21C6EA794(v14, &qword_27CDF48A0, &unk_21CBBBAF0);
LABEL_26:
    v36 = type metadata accessor for PMOpenURLHandler.Action();
    v37 = *(*(v36 - 8) + 56);
    v38 = v84;
    goto LABEL_16;
  }

  v51 = v89;
  v83(v89, v14, v17);
  v52 = sub_21CB80824();
  v53 = v85;
  if (v52)
  {
    if (*(v52 + 16))
    {
      v54 = v82;
      v55 = v87;
      (*(v82 + 16))(v8, v52 + ((*(v54 + 80) + 32) & ~*(v54 + 80)), v87);

      v56 = v86;
      (*(v54 + 32))(v86, v8, v55);
      v58 = sub_21CB807F4();
      v59 = v57;
      if (v58 == 0x64726F7773736150 && v57 == 0xE900000000000073 || (sub_21CB86344() & 1) != 0)
      {

        v60 = v90;
        (*(v54 + 8))(v56, v55);
        v61 = v53[1];
        v61(v51, v17);
        v61(v60, v17);
        goto LABEL_28;
      }

      v63 = v90;
      if (v58 == 0x7974697275636553 && v59 == 0xE800000000000000 || (sub_21CB86344() & 1) != 0)
      {

        v64 = sub_21CB80804();
        v65 = v56;
        v66 = v64;
        v68 = v67;
        (*(v54 + 8))(v65, v55);
        v69 = v53[1];
        v69(v51, v17);
        v69(v63, v17);
        v70 = v84;
        *v84 = v66;
        v70[1] = v68;
        v49 = type metadata accessor for PMOpenURLHandler.Action();
LABEL_44:
        swift_storeEnumTagMultiPayload();
        v37 = *(*(v49 - 8) + 56);
        v38 = v70;
        goto LABEL_30;
      }

      if (v58 == 0xD000000000000011 && 0x800000021CB97540 == v59 || (sub_21CB86344() & 1) != 0)
      {

        (*(v54 + 8))(v56, v55);
        v71 = v53[1];
        v71(v51, v17);
        v71(v63, v17);
        v49 = type metadata accessor for PMOpenURLHandler.Action();
        v50 = v84;
        goto LABEL_29;
      }

      if (v58 == 0x796C746E65636552 && v59 == 0xEF646574656C6544 || (sub_21CB86344() & 1) != 0)
      {

        (*(v54 + 8))(v56, v55);
        v72 = v53[1];
        v72(v51, v17);
        v72(v63, v17);
        v49 = type metadata accessor for PMOpenURLHandler.Action();
        v50 = v84;
        goto LABEL_29;
      }

      if (v58 == 0x7379656B73736150 && v59 == 0xE800000000000000 || (sub_21CB86344() & 1) != 0)
      {

        (*(v82 + 8))(v86, v87);
        v73 = v85[1];
        v73(v89, v17);
        v73(v90, v17);
        v49 = type metadata accessor for PMOpenURLHandler.Action();
        v50 = v84;
        goto LABEL_29;
      }

      if (v58 == 0x61746544776F6853 && v59 == 0xEB00000000736C69 || (sub_21CB86344() & 1) != 0)
      {

        v74 = v86;
        v75 = sub_21CB80804();
        v77 = v76;
        (*(v82 + 8))(v74, v87);
        v78 = v85[1];
        v78(v89, v17);
        v78(v90, v17);
        if (!v77)
        {
          goto LABEL_26;
        }

        v70 = v84;
        *v84 = v75;
        v70[1] = v77;
        v49 = type metadata accessor for PMOpenURLHandler.Action();
        goto LABEL_44;
      }

      if (v58 == 0x777373615077654ELL && v59 == 0xEB0000000064726FLL)
      {

        (*(v82 + 8))(v86, v87);
        v53 = v85;
        v51 = v89;
        v47 = v90;
LABEL_66:
        v80 = v53[1];
        v80(v51, v17);
        v80(v47, v17);
        v49 = type metadata accessor for PMOpenURLHandler.Action();
        v50 = v84;
        goto LABEL_29;
      }

      v79 = sub_21CB86344();

      (*(v82 + 8))(v86, v87);
      v53 = v85;
      v51 = v89;
      v47 = v90;
      if (v79)
      {
        goto LABEL_66;
      }
    }

    else
    {
    }
  }

  sub_21C9F6AAC(v84);
  v62 = v53[1];
  v62(v51, v17);
  return (v62)(v47, v17);
}

uint64_t sub_21C9F6AAC@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v102 - v7;
  v9 = sub_21CB80BE4();
  v107 = *(v9 - 8);
  v10 = *(v107 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v102 - v14;
  v16 = objc_opt_self();
  v17 = sub_21CB80B74();
  v18 = [v16 urlIsPasswordManagerURL_];

  if (v18)
  {
    v19 = sub_21CB80B74();
    v20 = [v16 dictionaryWithPasswordManagerURL_];

    if (v20)
    {
      v21 = sub_21CB85474();

      if (!*(v21 + 16))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v21 = sub_21CB126C0(MEMORY[0x277D84F90]);
      if (!*(v21 + 16))
      {
        goto LABEL_8;
      }
    }

    v105 = v21;
    v106 = a1;
    v22 = sub_21CB80B74();
    v23 = [v16 valueForPasswordManagerURL:v22 key:*MEMORY[0x277D49C90]];

    if (v23)
    {

      v24 = sub_21CB855C4();
      v26 = v25;

      a1 = v106;
      *v106 = v24;
      a1[1] = v26;
      v27 = type metadata accessor for PMOpenURLHandler.Action();
LABEL_9:
      swift_storeEnumTagMultiPayload();
      v29 = *(*(v27 - 8) + 56);
      v31 = a1;
LABEL_10:
      v32 = 0;
      v30 = v27;
      goto LABEL_11;
    }

    v104 = v9;
    v34 = sub_21CB80B74();
    v35 = [v16 valueForPasswordManagerURL:v34 key:*MEMORY[0x277D49C78]];

    if (v35)
    {
      sub_21CB855C4();

      v36 = sub_21CB80C24();
      v38 = v37;

      if (v38 >> 60 != 15)
      {
        v39 = sub_21CB80B74();
        v40 = [v16 valueForPasswordManagerURL:v39 key:*MEMORY[0x277D49C80]];

        if (v40)
        {
          v103 = sub_21CB855C4();

          v103 = sub_21CB80C24();
          v42 = v41;

          if (v42 >> 60 != 15)
          {

            v62 = v36;
            a1 = v106;
            *v106 = v103;
            a1[1] = v42;
            a1[2] = v62;
            a1[3] = v38;
            v27 = type metadata accessor for PMOpenURLHandler.Action();
            goto LABEL_9;
          }
        }

        sub_21C7902FC(v36, v38);
      }
    }

    v43 = sub_21CB80B74();
    v44 = [v16 valueForPasswordManagerURL:v43 key:*MEMORY[0x277D49C68]];

    a1 = v106;
    if (v44)
    {
      v103 = sub_21CB855C4();
      v46 = v45;

      v47 = sub_21CB80B74();
      v48 = [v16 valueForPasswordManagerURL:v47 key:*MEMORY[0x277D49C70]];

      if (v48)
      {

        v49 = sub_21CB855C4();
        v51 = v50;

        v52 = v106;
        *v106 = v103;
        v52[1] = v46;
        v52[2] = v49;
        v52[3] = v51;
        v27 = type metadata accessor for PMOpenURLHandler.Action();
        swift_storeEnumTagMultiPayload();
        v29 = *(*(v27 - 8) + 56);
        v31 = v52;
        goto LABEL_10;
      }

      a1 = v106;
    }

    v53 = sub_21CB80B74();
    v54 = [v16 isPasswordManagerFamilySharingGroupSetupURL_];

    if (!v54)
    {
      v55 = sub_21CB80B74();
      v56 = [v16 valueForPasswordManagerURL:v55 key:*MEMORY[0x277D49C98]];

      if (v56)
      {

        sub_21CB855C4();

        sub_21CB85B54();
        v27 = type metadata accessor for PMOpenURLHandler.Action();
        goto LABEL_9;
      }

      v57 = sub_21CB80B74();
      v58 = [v16 valueForPasswordManagerURL:v57 key:*MEMORY[0x277D49CA0]];

      if (v58)
      {

        v59 = sub_21CB855C4();
        v61 = v60;

        *a1 = v59;
        a1[1] = v61;
        v27 = type metadata accessor for PMOpenURLHandler.Action();
        goto LABEL_9;
      }

      v63 = sub_21CB80B74();
      v64 = [v16 isPasswordManagerVerificationCodesURL_];

      if (!v64)
      {
        v65 = v105;
        v66 = sub_21CB85464();
        v67 = [v16 isPasswordManagerSecurityRecommendationsResourceDictionary_];

        if (v67)
        {

          v27 = type metadata accessor for PMOpenURLHandler.Action();
          *a1 = 0;
          a1[1] = 0;
          goto LABEL_9;
        }

        v68 = sub_21CB85464();
        v69 = [v16 isPasswordManagerRecentlyDeletedResourceDictionary_];

        if (!v69)
        {
          v70 = sub_21CB85464();
          v71 = [v16 isPasswordManagerPasskeysResourceDictionary_];

          if (!v71)
          {
            v72 = sub_21CB85464();
            v73 = [v16 isOtpauthResourceDictionary_];

            if (!v73 || !*(v65 + 16) || (v74 = sub_21CB10A3C(7107189, 0xE300000000000000), (v75 & 1) == 0))
            {
LABEL_51:
              v86 = sub_21CB85464();
              v87 = [v16 isOtpauthMigrationResourceDictionary_];

              if (!v87 || !*(v65 + 16) || (v88 = sub_21CB10A3C(7107189, 0xE300000000000000), (v89 & 1) == 0))
              {
LABEL_67:
                v99 = sub_21CB85464();

                v100 = [v16 isPasswordManagerGeneratedPasswordsResourceDictionary_];

                v101 = type metadata accessor for PMOpenURLHandler.Action();
                v84 = v101;
                if (!v100)
                {
                  return (*(*(v101 - 8) + 56))(a1, 1, 1, v101);
                }

LABEL_68:
                swift_storeEnumTagMultiPayload();
                return (*(*(v84 - 8) + 56))(a1, 0, 1, v84);
              }

              v90 = (*(v65 + 56) + 16 * v88);
              v91 = *v90;
              v92 = v90[1];

              sub_21CB80BD4();

              if ((*(v107 + 48))(v6, 1, v104) == 1)
              {
                sub_21C6EA794(v6, &qword_27CDEC300, &qword_21CBA3ED0);
LABEL_66:
                a1 = v106;
                goto LABEL_67;
              }

              v93 = *(v107 + 32);
              v93(v13, v6, v104);
              sub_21CB80BC4();
              if (v94)
              {
                v95 = sub_21CB85634();
                v97 = v96;

                if (v95 == 0xD000000000000011 && 0x800000021CB97500 == v97 || (sub_21CB86344() & 1) != 0 || v95 == 0xD000000000000017 && 0x800000021CB97520 == v97)
                {
                }

                else
                {
                  v98 = sub_21CB86344();

                  if ((v98 & 1) == 0)
                  {
                    goto LABEL_65;
                  }
                }

                a1 = v106;
                v93(v106, v13, v104);
                v84 = type metadata accessor for PMOpenURLHandler.Action();
                goto LABEL_68;
              }

LABEL_65:
              (*(v107 + 8))(v13, v104);
              goto LABEL_66;
            }

            v76 = (*(v65 + 56) + 16 * v74);
            v77 = *v76;
            v78 = v76[1];

            sub_21CB80BD4();

            if ((*(v107 + 48))(v8, 1, v104) == 1)
            {
              sub_21C6EA794(v8, &qword_27CDEC300, &qword_21CBA3ED0);
LABEL_50:
              v65 = v105;
              a1 = v106;
              goto LABEL_51;
            }

            v79 = *(v107 + 32);
            v79(v15, v8, v104);
            sub_21CB80BC4();
            if (v80)
            {
              v81 = sub_21CB85634();
              v83 = v82;

              if (v81 == 0x6874756170746FLL && v83 == 0xE700000000000000 || (sub_21CB86344() & 1) != 0)
              {

LABEL_44:

                a1 = v106;
                v79(v106, v15, v104);
                v84 = type metadata accessor for PMOpenURLHandler.Action();
                goto LABEL_68;
              }

              if (v81 == 0x746F2D656C707061 && v83 == 0xED00006874756170)
              {

                v105 = 0xED00006874756170;
                goto LABEL_44;
              }

              v85 = sub_21CB86344();

              if (v85)
              {
                goto LABEL_44;
              }
            }

            (*(v107 + 8))(v15, v104);
            goto LABEL_50;
          }
        }
      }
    }

LABEL_8:

    v27 = type metadata accessor for PMOpenURLHandler.Action();
    goto LABEL_9;
  }

  v28 = type metadata accessor for PMOpenURLHandler.Action();
  v29 = *(*(v28 - 8) + 56);
  v30 = v28;
  v31 = a1;
  v32 = 1;
LABEL_11:

  return v29(v31, v32, 1, v30);
}

uint64_t sub_21C9F77E0(uint64_t a1, uint64_t a2)
{
  v106 = a2;
  v3 = sub_21CB80BE4();
  v104 = *(v3 - 8);
  v105 = v3;
  v4 = *(v104 + 64);
  MEMORY[0x28223BE20](v3);
  v99 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v98 = &v97 - v7;
  v8 = sub_21CB85C44();
  v101 = *(v8 - 8);
  v102 = v8;
  v9 = *(v101 + 64);
  MEMORY[0x28223BE20](v8);
  v100 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMOpenURLHandler.Action();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = (&v97 - v16);
  MEMORY[0x28223BE20](v18);
  v20 = &v97 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v97 - v22;
  MEMORY[0x28223BE20](v24);
  v103 = &v97 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = (&v97 - v27);
  MEMORY[0x28223BE20](v29);
  v31 = (&v97 - v30);
  MEMORY[0x28223BE20](v32);
  v34 = (&v97 - v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF48D8, &unk_21CBBBB80);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v39 = (&v97 + *(v38 + 56) - v37);
  v40 = a1;
  v41 = &v97 - v37;
  sub_21C9F8400(v40, &v97 - v37);
  sub_21C9F8400(v106, v39);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v42 = v41;
      sub_21C9F8400(v41, v31);
      v82 = *v31;
      v81 = v31[1];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_51;
      }

      v83 = v39[1];
      if (!v81)
      {
        goto LABEL_49;
      }

      goto LABEL_35;
    case 2u:
      sub_21C9F8400(v41, v28);
      v56 = *v28;
      v55 = v28[1];
      v58 = v28[2];
      v57 = v28[3];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_21C7A34C0(v58, v57);
        sub_21C7A34C0(v56, v55);
        goto LABEL_62;
      }

      v59 = *v39;
      v60 = v39[1];
      v62 = v39[2];
      v61 = v39[3];
      if (sub_21CA8FE88(v56, v55, v59, v60))
      {
        v63 = v41;
        v53 = sub_21CA8FE88(v58, v57, v62, v61);
        sub_21C7A34C0(v62, v61);
        sub_21C7A34C0(v58, v57);
        sub_21C7A34C0(v59, v60);
        sub_21C7A34C0(v56, v55);
        sub_21C9F8464(v63);
        return v53 & 1;
      }

      sub_21C7A34C0(v62, v61);
      sub_21C7A34C0(v58, v57);
      sub_21C7A34C0(v59, v60);
      sub_21C7A34C0(v56, v55);
      sub_21C9F8464(v41);
      goto LABEL_63;
    case 3u:
      v64 = v103;
      sub_21C9F8400(v41, v103);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (*(v101 + 8))(v64, v102);
        goto LABEL_62;
      }

      v42 = v41;
      v66 = v100;
      v65 = v101;
      v67 = v39;
      v68 = v102;
      (*(v101 + 32))(v100, v67, v102);
      sub_21C9F84C0(&qword_27CDECD58, MEMORY[0x277D49978]);
      sub_21CB857F4();
      sub_21CB857F4();
      if (v109 == v107 && v110 == v108)
      {
        v69 = *(v65 + 8);
        v69(v66, v68);

        v69(v64, v68);
        v70 = v41;
        goto LABEL_56;
      }

      v92 = sub_21CB86344();
      v93 = *(v65 + 8);
      v93(v66, v68);

      v93(v64, v68);
      if (v92)
      {
        goto LABEL_67;
      }

      goto LABEL_68;
    case 4u:
      sub_21C9F8400(v41, v23);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v48 = v104;
        v49 = v98;
        v50 = v39;
        v51 = v105;
        (*(v104 + 32))(v98, v50, v105);
        v52 = v41;
        v53 = sub_21CB80B84();
        v54 = *(v48 + 8);
        v54(v49, v51);
        v54(v23, v51);
        goto LABEL_44;
      }

      (*(v104 + 8))(v23, v105);
      goto LABEL_62;
    case 5u:
      sub_21C9F8400(v41, v20);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        (*(v104 + 8))(v20, v105);
        goto LABEL_62;
      }

      v86 = v104;
      v87 = v99;
      v88 = v39;
      v89 = v105;
      (*(v104 + 32))(v99, v88, v105);
      v52 = v41;
      v53 = sub_21CB80B84();
      v90 = *(v86 + 8);
      v90(v87, v89);
      v90(v20, v89);
LABEL_44:
      sub_21C9F8464(v52);
      return v53 & 1;
    case 6u:
      v42 = v41;
      sub_21C9F8400(v41, v17);
      v82 = *v17;
      v81 = v17[1];
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_51;
      }

      v83 = v39[1];
      if (!v81)
      {
LABEL_49:
        if (!v83)
        {
          goto LABEL_67;
        }

        goto LABEL_50;
      }

LABEL_35:
      if (!v83)
      {
LABEL_50:

        goto LABEL_68;
      }

      if (v82 == *v39 && v81 == v83)
      {

        goto LABEL_78;
      }

      v85 = sub_21CB86344();

      if ((v85 & 1) == 0)
      {
        goto LABEL_68;
      }

LABEL_67:
      v70 = v42;
      goto LABEL_56;
    case 7u:
      v71 = v41;
      sub_21C9F8400(v41, v14);
      v73 = *v14;
      v72 = v14[1];
      v75 = v14[2];
      v74 = v14[3];
      if (swift_getEnumCaseMultiPayload() != 7)
      {

        v41 = v71;
        goto LABEL_62;
      }

      v77 = v39[2];
      v76 = v39[3];
      if (v73 == *v39 && v72 == v39[1])
      {
        v94 = v39[1];
      }

      else
      {
        v79 = v39[1];
        v80 = sub_21CB86344();

        if ((v80 & 1) == 0)
        {

          goto LABEL_76;
        }
      }

      if (v75 == v77 && v74 == v76)
      {

        v70 = v71;
        goto LABEL_56;
      }

      v95 = sub_21CB86344();

      if (v95)
      {
        v70 = v71;
        goto LABEL_56;
      }

LABEL_76:
      sub_21C9F8464(v71);
      goto LABEL_63;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_55;
      }

      goto LABEL_62;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_62;
      }

      goto LABEL_55;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_62;
      }

      goto LABEL_55;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_62;
      }

      goto LABEL_55;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_62;
      }

      goto LABEL_55;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_62;
      }

      goto LABEL_55;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_62;
      }

LABEL_55:
      v70 = v41;
      goto LABEL_56;
    default:
      v42 = v41;
      sub_21C9F8400(v41, v34);
      v44 = *v34;
      v43 = v34[1];
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_51:

        v41 = v42;
LABEL_62:
        sub_21C6EA794(v41, &qword_27CDF48D8, &unk_21CBBBB80);
LABEL_63:
        v53 = 0;
        return v53 & 1;
      }

      if (v44 != *v39 || v43 != v39[1])
      {
        v46 = v39[1];
        v47 = sub_21CB86344();

        if (v47)
        {
          goto LABEL_67;
        }

LABEL_68:
        sub_21C9F8464(v42);
        goto LABEL_63;
      }

      v96 = v39[1];

LABEL_78:

      v70 = v42;
LABEL_56:
      sub_21C9F8464(v70);
      v53 = 1;
      return v53 & 1;
  }
}

void sub_21C9F822C()
{
  sub_21C9F8320();
  if (v0 <= 0x3F)
  {
    sub_21C9F8368(319, &qword_27CDF48C0);
    if (v1 <= 0x3F)
    {
      sub_21CB85C44();
      if (v2 <= 0x3F)
      {
        sub_21CB80BE4();
        if (v3 <= 0x3F)
        {
          sub_21C9F8368(319, &qword_27CDEABD8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21C9F8320()
{
  if (!qword_27CDF48B8)
  {
    sub_21C6EDA64();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF48B8);
    }
  }
}

void sub_21C9F8368(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_21C9F8400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMOpenURLHandler.Action();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9F8464(uint64_t a1)
{
  v2 = type metadata accessor for PMOpenURLHandler.Action();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C9F84C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C9F8508()
{
  v68 = sub_21CB81024();
  v73 = *(v68 - 8);
  v0 = *(v73 + 64);
  MEMORY[0x28223BE20](v68);
  v72 = &v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_21CB81514();
  v71 = *(v2 - 8);
  v3 = *(v71 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB81574();
  v70 = *(v6 - 8);
  v7 = *(v70 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CB81584();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21CB81404();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    return sub_21CB81404();
  }

  v69 = v11;
  v49 = v5;
  v50 = v9;
  v51 = v2;
  v52 = v6;
  v21 = v14;
  v23 = v71;
  v22 = v72;
  v24 = v73;
  result = sub_21CB813D4();
  v25 = result;
  v26 = *(result + 16);
  if (v26)
  {
    v27 = 0;
    v28 = 0;
    v19 = 0;
    v67 = *MEMORY[0x277CBA748];
    v29 = v69;
    v66 = v69 + 16;
    v65 = v69 + 88;
    v64 = *MEMORY[0x277CBA738];
    v63 = *MEMORY[0x277CBA6C8];
    v62 = *MEMORY[0x277CBA6D0];
    v61 = *MEMORY[0x277CBA6F0];
    v60 = *MEMORY[0x277CBA700];
    v59 = *MEMORY[0x277CBA6F8];
    v58 = *MEMORY[0x277CBA720];
    v57 = *MEMORY[0x277CBA750];
    v56 = *MEMORY[0x277CBA758];
    v55 = *MEMORY[0x277CBA6D8];
    v46 = (v69 + 96);
    v43 = (v23 + 32);
    v54 = *MEMORY[0x277CBA740];
    v42 = (v23 + 8);
    v45 = (v70 + 32);
    v44 = (v70 + 8);
    LODWORD(v71) = *MEMORY[0x277CBA728];
    v47 = (v24 + 8);
    v53 = v26;
    v48 = v26 - 1;
    LODWORD(v70) = *MEMORY[0x277CBA730];
    v30 = v10;
    v31 = v21;
    v32 = (v69 + 8);
    while (2)
    {
      v33 = v27;
      while (1)
      {
        if (v33 >= *(v25 + 16))
        {
          __break(1u);
          return result;
        }

        v34 = v29;
        (*(v29 + 16))(v31, v25 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v33, v30);
        v35 = (*(v34 + 88))(v31, v30);
        if (v35 == v67)
        {

          (*v32)(v31, v30);
          return 0x73736572646441;
        }

        if (v35 == v64)
        {

          (*v32)(v31, v30);
          v41 = 541675585;
          return v41 | 0x79654B00000000;
        }

        if (v35 == v63)
        {

          (*v32)(v31, v30);
          return 0x64726F7773736150;
        }

        if (v35 == v62)
        {
          goto LABEL_26;
        }

        if (v35 == v61)
        {
          v19 = 0xD000000000000010;

          (*v32)(v31, v30);
          return v19;
        }

        if (v35 == v60)
        {

          (*v32)(v31, v30);
          return 0xD000000000000012;
        }

        if (v35 == v59)
        {

          (*v32)(v31, v30);
          return 0xD000000000000011;
        }

        if (v35 == v58)
        {
LABEL_26:

          sub_21CB81014();
          v19 = sub_21CB81004();
          v28 = v36;
          (*v47)(v22, v68);
          result = (*v32)(v31, v30);
          goto LABEL_33;
        }

        if (v35 == v57)
        {
          break;
        }

        if (v35 == v56)
        {

          (*v32)(v31, v30);
          return 0x74726F7073736150;
        }

        if (v35 == v55)
        {

          (*v32)(v31, v30);
          return 0x4E206E6F73726550;
        }

        if (v35 == v54)
        {

          (*v32)(v31, v30);
          v41 = 541610835;
          return v41 | 0x79654B00000000;
        }

        if (v35 == v71)
        {
          (*v46)(v31, v30);
          v39 = v49;
          (*v43)(v49, v31, v51);
          if (!v28)
          {
            v19 = sub_21CB814E4();
            v28 = v40;
          }

          result = (*v42)(v39, v51);
          goto LABEL_33;
        }

        if (v35 == v70)
        {

          (*v32)(v31, v30);
          return 1766222167;
        }

        ++v33;
        result = (*v32)(v31, v30);
        v29 = v69;
        if (v53 == v33)
        {
          goto LABEL_34;
        }
      }

      (*v46)(v31, v30);
      v37 = v50;
      (*v45)(v50, v31, v52);
      if (!v28)
      {
        v19 = sub_21CB81544();
        v28 = v38;
      }

      result = (*v44)(v37, v52);
LABEL_33:
      v27 = v33 + 1;
      v29 = v69;
      if (v48 != v33)
      {
        continue;
      }

      break;
    }

LABEL_34:

    if (v28)
    {
      return v19;
    }
  }

  else
  {
  }

  sub_21CB81014();
  v19 = sub_21CB81004();
  (*(v24 + 8))(v22, v68);
  return v19;
}

uint64_t sub_21C9F8EDC()
{
  v70 = sub_21CB80DD4();
  v1 = *(v70 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v70);
  v69 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
  v76 = *(v4 - 8);
  v5 = *(v76 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v65 - v9;
  v11 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v12 = *(v11 - 8);
  v71 = v11;
  v72 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFB0, &unk_21CBA0C80);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v65 - v18;
  v20 = type metadata accessor for PMOfflineMigrationPayload(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CA9042C(v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    return sub_21C7B09AC(v19);
  }

  v26 = v1;
  sub_21C7B0CD4(v19, v24, type metadata accessor for PMOfflineMigrationPayload);
  v27 = *v24;
  v28 = *(*v24 + 16);
  if (v28)
  {
    v65 = v24;
    v66 = v0;
    v77 = MEMORY[0x277D84F90];
    sub_21C7B0C90(0, v28, 0);
    v29 = v77;
    v30 = v27 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
    v67 = v15;
    v68 = (v26 + 8);
    v76 = *(v76 + 72);
    v32 = v71;
    v31 = v72;
    while (1)
    {
      sub_21C737804(v30, v10);
      sub_21C737804(v10, v15);
      sub_21C737804(v10, v8);
      v33 = *(v8 + 10);
      if (v8[88] == 1)
      {
        if (v33 < 2)
        {
          goto LABEL_18;
        }
      }

      else if (v33 != 2)
      {
        goto LABEL_18;
      }

      if (v8[56] == 1)
      {
        v34 = *(v8 + 6);
        v35 = v34 >= 2;
        if (v34 <= 2)
        {
          v36 = 1;
          if (!v35)
          {
            v36 = 0;
          }

          goto LABEL_16;
        }

        if (v34 == 3)
        {
          v36 = 2;
LABEL_16:
          v75 = v36;
          v37 = *v8;
          v38 = *(v8 + 1);
          v74 = sub_21CB80C64();
          v39 = v69;
          sub_21CB80D74();
          v73 = sub_21CB80D24();
          (*v68)(v39, v70);
          if (v8[72])
          {
            v40 = 6;
          }

          else if (*(v8 + 8) == 8)
          {
            v40 = 8;
          }

          else
          {
            v40 = 6;
          }

          v44 = objc_allocWithZone(MEMORY[0x277D49B78]);
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v47 = sub_21CB85584();
          v48 = *(v8 + 2);
          v49 = *(v8 + 3);
          v50 = sub_21CB85584();
          v51 = v44;
          v53 = v73;
          v52 = v74;
          v41 = [v51 initWithKeyData:v74 initialDate:v73 codeGenerationPeriod:30 numberOfDigits:v40 algorithm:v75 issuer:v47 accountName:v50 originalURL:0];

          sub_21C9F9900(v8, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
          if (v41)
          {
          }

          v32 = v71;
          v31 = v72;
          v15 = v67;
          goto LABEL_19;
        }
      }

LABEL_18:
      sub_21C9F9900(v8, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
      v41 = 0;
LABEL_19:
      sub_21C9F9900(v10, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
      *&v15[*(v32 + 20)] = v41;
      v77 = v29;
      v43 = *(v29 + 16);
      v42 = *(v29 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_21C7B0C90(v42 > 1, v43 + 1, 1);
        v31 = v72;
        v29 = v77;
      }

      *(v29 + 16) = v43 + 1;
      sub_21C7B0CD4(v15, v29 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v43, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      v30 += v76;
      if (!--v28)
      {
        v54 = type metadata accessor for PMTOTPMigrationModel(0);
        v55 = *(v54 + 48);
        v56 = *(v54 + 52);
        swift_allocObject();
        v57 = sub_21CB52A38(v29);
        v58 = type metadata accessor for PMAppTOTPMigrationModel();
        v59 = *(v58 + 48);
        v60 = *(v58 + 52);
        v61 = swift_allocObject();
        v61[3] = 0;
        v61[4] = 0;
        v62 = MEMORY[0x277D84FA0];
        v61[5] = 0;
        v61[6] = v62;
        v61[7] = swift_getKeyPath();
        sub_21CB81104();
        v61[2] = v57;

        sub_21C7B5424();

        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v77 = v66;
        sub_21C71F850(&qword_27CDEAE18, type metadata accessor for PMHandleInboundTOTPMigrationURLModel);
        sub_21CB810C4();

        v64 = v65;
        return sub_21C9F9900(v64, type metadata accessor for PMOfflineMigrationPayload);
      }
    }
  }

  v64 = v24;
  return sub_21C9F9900(v64, type metadata accessor for PMOfflineMigrationPayload);
}

uint64_t sub_21C9F95F8()
{
  swift_getKeyPath();
  sub_21C71F850(&qword_27CDEAE18, type metadata accessor for PMHandleInboundTOTPMigrationURLModel);
  sub_21CB810D4();

  v1 = *(v0 + 16);
}

uint64_t sub_21C9F969C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_21C71F850(&qword_27CDEAE18, type metadata accessor for PMHandleInboundTOTPMigrationURLModel);
  sub_21CB810C4();
}

uint64_t sub_21C9F9768()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC17PasswordManagerUI36PMHandleInboundTOTPMigrationURLModel___observationRegistrar;
  v3 = sub_21CB81114();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21C9F9814@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for PMAppTOTPMigrationModel();
  sub_21C71F850(&qword_27CDEB150, type metadata accessor for PMAppTOTPMigrationModel);

  sub_21CB850A4();
  v4 = *(type metadata accessor for PMAppTOTPMigrationView() + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21C9F9900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_21C9F99D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_21C9F9A18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C9F9A9C()
{
  v3 = *v1;
  v4 = v1[3];
  v5 = *(v1 + 40);
  v6 = *(v3 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v3 + 32;
    v9 = MEMORY[0x277D84F90];
    do
    {
      v10 = *(v3 + 16);
      v11 = (v8 + 112 * v7);
      v12 = v7;
      while (1)
      {
        if (v12 >= v10)
        {
          __break(1u);
          goto LABEL_37;
        }

        v13 = v11[3];
        v14 = v11[4];
        v15 = v11[6];
        v56 = v11[5];
        v16 = v11[1];
        v17 = v11[2];
        v51 = *v11;
        v52 = v16;
        v57 = v15;
        v54 = v13;
        v55 = v14;
        v53 = v17;
        v7 = v12 + 1;
        if ((v56 & 1) == 0)
        {
          break;
        }

        v11 += 7;
        ++v12;
        if (v6 == v7)
        {
          goto LABEL_15;
        }
      }

      v49 = v8;
      sub_21C7A33F0(&v51, v50);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21C7B10A0(0, *(v9 + 16) + 1, 1);
        v9 = v58;
      }

      v0 = *(v9 + 16);
      v19 = *(v9 + 24);
      v2 = v0 + 1;
      if (v0 >= v19 >> 1)
      {
        sub_21C7B10A0((v19 > 1), v0 + 1, 1);
        v9 = v58;
      }

      *(v9 + 16) = v2;
      v20 = (v9 + 112 * v0);
      v21 = v51;
      v22 = v53;
      v20[3] = v52;
      v20[4] = v22;
      v20[2] = v21;
      v23 = v54;
      v24 = v55;
      v25 = v57;
      v20[7] = v56;
      v20[8] = v25;
      v20[5] = v23;
      v20[6] = v24;
      v8 = v49;
    }

    while (v6 - 1 != v12);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

LABEL_15:
  if (v5)
  {
    v26 = *(v3 + 16);
    if (v26 < v4 && v6 != 0)
    {
      v28 = (v3 + 32);
      while (v26)
      {
        v29 = v28[3];
        v30 = v28[4];
        v31 = v28[6];
        v56 = v28[5];
        v32 = v28[1];
        v33 = v28[2];
        v51 = *v28;
        v52 = v32;
        v57 = v31;
        v54 = v29;
        v55 = v30;
        v53 = v33;
        if (v56)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB018, &qword_21CBA0D90);
          v34 = swift_allocObject();
          v35 = v55;
          v36 = v56;
          v37 = v53;
          v34[5] = v54;
          v34[6] = v35;
          v38 = v57;
          v34[7] = v36;
          v34[8] = v38;
          v39 = v51;
          v40 = v52;
          v34[1] = xmmword_21CBA0690;
          v34[2] = v39;
          v34[3] = v40;
          v34[4] = v37;
          v58 = v34;
          sub_21C7A33F0(&v51, v50);
          sub_21CAE8E18(v9);
          v9 = v58;
          goto LABEL_26;
        }

        --v26;
        v28 += 7;
        if (!--v6)
        {
          goto LABEL_26;
        }
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }
  }

LABEL_26:
  v0 = sub_21C91A068(v4, v9);
  if ((v43 & 1) == 0)
  {
LABEL_27:
    sub_21CAC8FA8(v0, v41, v42, v43);
    v45 = v44;
LABEL_34:
    swift_unknownObjectRelease();
    return v45;
  }

  v6 = v43;
  v2 = v42;
  v9 = v41;
  sub_21CB86364();
  swift_unknownObjectRetain_n();
  v46 = swift_dynamicCastClass();
  if (!v46)
  {
    swift_unknownObjectRelease();
    v46 = MEMORY[0x277D84F90];
  }

  v47 = *(v46 + 16);

  if (__OFSUB__(v6 >> 1, v2))
  {
    goto LABEL_38;
  }

  if (v47 != (v6 >> 1) - v2)
  {
LABEL_39:
    swift_unknownObjectRelease();
    v43 = v6;
    v42 = v2;
    v41 = v9;
    goto LABEL_27;
  }

  v45 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v45)
  {
    v45 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  return v45;
}

uint64_t sub_21C9F9DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v33 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4948, &qword_21CBBBE10);
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = *(a1 + 16);
  if (v12 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2 * v12 - 1;
  }

  v35[0] = a1;
  v35[1] = a1 + 32;
  v35[2] = 0;
  v35[3] = v13;
  v14 = swift_allocObject();
  v15 = *(a2 + 48);
  *(v14 + 48) = *(a2 + 32);
  *(v14 + 64) = v15;
  *(v14 + 80) = *(a2 + 64);
  *(v14 + 96) = *(a2 + 80);
  v16 = *(a2 + 16);
  *(v14 + 16) = *a2;
  *(v14 + 32) = v16;

  sub_21C87CED0(a2, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4950, &qword_21CBBBE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4958, &qword_21CBBBE20);
  sub_21C6EADEC(&qword_27CDF4960, &qword_27CDF4950, &qword_21CBBBE18);
  sub_21C9FA46C();
  sub_21C9FA524();
  sub_21CB84FF4();
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = (a1 + 112 * v17);
    v19 = v18[1];
    v36[5] = *v18;
    v36[6] = v19;
    v20 = *(v18 - 1);
    v36[3] = *(v18 - 2);
    v36[4] = v20;
    v21 = *(v18 - 3);
    v36[1] = *(v18 - 4);
    v36[2] = v21;
    v36[0] = *(v18 - 5);
    v22 = *(a2 + 48);
    if (*(v22 + 16))
    {
      sub_21C7A33F0(v36, v35);
      v23 = sub_21CB10D94(v36);
      if (v24)
      {
        v25 = *(*(v22 + 56) + 8 * v23);

        sub_21C7A344C(v36);
LABEL_11:
        v26 = *(a2 + 8);

        goto LABEL_12;
      }

      sub_21C7A344C(v36);
    }

    v25 = 0;
    goto LABEL_11;
  }

  v26 = 0;
  v25 = 1;
LABEL_12:
  v27 = v6[2];
  v28 = v34;
  v27(v34, v11, v5);
  v29 = v33;
  v27(v33, v28, v5);
  v30 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4988, &qword_21CBBBE30) + 48)];
  sub_21C9FA578(v25);
  sub_21C9FA588(v25);
  *v30 = v25;
  *(v30 + 1) = v26;
  v30[16] = 0;
  v31 = v6[1];
  v31(v11, v5);
  sub_21C9FA588(v25);
  return (v31)(v28, v5);
}

uint64_t sub_21C9FA150@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[5];
  v39[4] = a1[4];
  v39[5] = v5;
  v39[6] = a1[6];
  v6 = a1[1];
  v39[0] = *a1;
  v39[1] = v6;
  v7 = a1[3];
  v39[2] = a1[2];
  v39[3] = v7;
  v8 = *(a2 + 48);
  if (*(v8 + 16) && (v9 = sub_21CB10D94(v39), (v10 & 1) != 0))
  {
    v29 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v29 = 0;
  }

  v11 = *(a2 + 8);
  v12 = sub_21CB85214();
  v27 = v13;
  v28 = v12;
  v14 = sub_21CB85214();
  v25 = v15;
  v26 = v14;
  v16 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4958, &qword_21CBBBE20) + 36));
  v17 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4978, &qword_21CBBBE28) + 36);
  v18 = v11 * *(a2 + 32);
  sub_21CB85214();
  sub_21CB82374();
  sub_21CB85214();
  sub_21CB82374();
  v19 = v11 * (1.0 - *(a2 + 16));
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4990, &qword_21CBBBE38) + 36);
  v21 = *MEMORY[0x277CE13C0];
  v22 = sub_21CB85284();
  (*(*(v22 - 8) + 104))(&v17[v20], v21, v22);
  *v17 = v33;
  v17[8] = v34;
  *(v17 + 2) = v35;
  v17[24] = v36;
  *(v17 + 4) = v37;
  *(v17 + 5) = v38;
  *(v17 + 3) = v30;
  *(v17 + 4) = v31;
  *(v17 + 5) = v32;
  *(v17 + 12) = v19;
  *(v17 + 13) = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4998, &unk_21CBBBE40);
  v24 = &v17[*(result + 36)];
  *v24 = v28;
  v24[1] = v27;
  *v16 = v26;
  v16[1] = v25;
  *a3 = v29;
  *(a3 + 8) = v11;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_21C9FA394@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[1];
  v15 = v1[2];
  v16 = v3;
  v5 = v1[3];
  v17 = v1[4];
  v6 = v1[1];
  v13 = *v1;
  v14 = v6;
  v11 = v1[4];
  v18 = *(v1 + 80);
  v12 = *(v1 + 80);
  v7 = sub_21C9F9A9C();
  v8 = -(*(&v13 + 1) * *&v14);
  *a1 = sub_21CB83074();
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4940, &qword_21CBBBE08);
  sub_21C9F9DBC(v7, &v13, (a1 + *(v9 + 44)));
}

unint64_t sub_21C9FA46C()
{
  result = qword_27CDF4968;
  if (!qword_27CDF4968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4958, &qword_21CBBBE20);
    sub_21C9D6178();
    sub_21C6EADEC(&qword_27CDF4970, &qword_27CDF4978, &qword_21CBBBE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4968);
  }

  return result;
}

unint64_t sub_21C9FA524()
{
  result = qword_27CDF4980;
  if (!qword_27CDF4980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4980);
  }

  return result;
}

uint64_t sub_21C9FA578(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_21C9FA588(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_21C9FA598()
{
  type metadata accessor for PMGroupMemberRowModel();

  return swift_allocObject();
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_21C9FA61C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C9FA664(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C9FA704@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = sub_21CB83A34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF49B0, &qword_21CBBBF98);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF49B8, &qword_21CBBBFA0);
  v11 = *(v32 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v32);
  v14 = &v31 - v13;
  *v10 = sub_21CB83074();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF49C0, &qword_21CBBBFA8);
  sub_21C9FAA58(v1, &v10[*(v15 + 44)]);
  sub_21CB83A24();
  sub_21C6EADEC(&qword_27CDF49C8, &qword_27CDF49B0, &qword_21CBBBF98);
  sub_21CB844F4();
  (*(v3 + 8))(v6, v2);
  sub_21C6EA794(v10, &qword_27CDF49B0, &qword_21CBBBF98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF49D0, &qword_21CBBBFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA15B0;
  v17 = sub_21CB83CF4();
  *(inited + 32) = v17;
  v18 = sub_21CB83D04();
  *(inited + 33) = v18;
  v19 = sub_21CB83D24();
  sub_21CB83D24();
  if (sub_21CB83D24() != v17)
  {
    v19 = sub_21CB83D24();
  }

  sub_21CB83D24();
  if (sub_21CB83D24() != v18)
  {
    v19 = sub_21CB83D24();
  }

  sub_21CB81F24();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = v33;
  (*(v11 + 32))(v33, v14, v32);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF49D8, &qword_21CBBBFB8);
  v30 = v28 + *(result + 36);
  *v30 = v19;
  *(v30 + 8) = v21;
  *(v30 + 16) = v23;
  *(v30 + 24) = v25;
  *(v30 + 32) = v27;
  *(v30 + 40) = 0;
  return result;
}

uint64_t sub_21C9FAA58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF49E0, &qword_21CBBBFC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v23 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  if ((*(a1 + 114) & 1) != 0 && *(a1 + 81) == 2)
  {
    v9 = [objc_opt_self() unknownSenderImageName];
    sub_21CB855C4();

    v24 = sub_21CB84BB4();
    v25 = 0;
    sub_21C9D6178();
  }

  else
  {
    v24 = *(a1 + 160);
    v25 = 256;
    sub_21C9D6178();
  }

  sub_21CB83494();
  v10 = v26;
  v11 = v27;
  v12 = v28;
  v13 = v29;
  j__swift_retain();
  *v8 = sub_21CB832F4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF49E8, &qword_21CBBBFC8);
  v21[1] = v21;
  v15 = *(v14 + 44);
  MEMORY[0x28223BE20](v14);
  v21[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF49F0, &qword_21CBBBFD0);
  sub_21C6EADEC(&qword_27CDF49F8, &qword_27CDF49F0, &qword_21CBBBFD0);
  sub_21CB81FC4();
  v16 = v23;
  sub_21C9FB548(v8, v23);
  v17 = v22;
  *v22 = v10;
  v17[1] = v11;
  *(v17 + 16) = v12;
  *(v17 + 17) = v13;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A00, &qword_21CBBBFD8);
  sub_21C9FB548(v16, v17 + *(v18 + 48));
  v19 = v17 + *(v18 + 64);
  j__swift_retain();
  j__swift_release();
  *v19 = 0;
  v19[8] = 1;
  sub_21C6EA794(v8, &qword_27CDF49E0, &qword_21CBBBFC0);
  sub_21C6EA794(v16, &qword_27CDF49E0, &qword_21CBBBFC0);
  return j__swift_release();
}

uint64_t sub_21C9FADA0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v63 = a2;
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v60 - v9;
  v12 = *(a1 + 64);
  v11 = *(a1 + 72);
  if (*(a1 + 152) & 1) != 0 && (*(a1 + 80))
  {
    sub_21CB81014();
    sub_21CB81004();
    (*(v4 + 8))(v10, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_21CBA0690;
    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = sub_21C7C0050();
    *(v13 + 32) = v12;
    *(v13 + 40) = v11;

    v14 = sub_21CB85594();
    v16 = v15;

    *&v69 = v14;
    *(&v69 + 1) = v16;
    sub_21C71F3FC();
    *&v66 = sub_21CB84054();
    *(&v66 + 1) = v17;
    *&v67 = v18 & 1;
    *(&v67 + 1) = v19;
    LOBYTE(v68) = 0;
  }

  else
  {
    *&v69 = *(a1 + 64);
    *(&v69 + 1) = v11;
    sub_21C71F3FC();

    *&v66 = sub_21CB84054();
    *(&v66 + 1) = v21;
    *&v67 = v20 & 1;
    *(&v67 + 1) = v22;
    LOBYTE(v68) = 1;
  }

  sub_21CB83494();
  v23 = v71;
  v24 = *(a1 + 81);
  v25 = *(&v69 + 1);
  v64 = v69;
  v65 = v70;
  if (v24 == 2)
  {
    sub_21C9D5F04(v69, *(&v69 + 1), v70);
    sub_21CB81014();
    v26 = sub_21CB81004();
    v28 = v27;
    (*(v4 + 8))(v10, v3);
    *&v69 = v26;
    *(&v69 + 1) = v28;
    sub_21C71F3FC();
    v29 = sub_21CB84054();
    v31 = v30;
    *&v66 = v29;
    *(&v66 + 1) = v30;
    v33 = v32 & 1;
    *&v67 = v32 & 1;
    *(&v67 + 1) = v34;
    LOBYTE(v68) = 0;
    sub_21C79B058(v29, v30, v32 & 1);

    sub_21CB83494();
    v66 = v69;
    v67 = v70;
    v68 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC150, &unk_21CBA4F60);
    sub_21C7FC578();
LABEL_9:
    sub_21CB83494();
    sub_21C74A72C(v29, v31, v33);

    v42 = *(&v69 + 1);
    v41 = v69;
    v44 = *(&v70 + 1);
    v43 = v70;
    if (v72)
    {
      v45 = 256;
    }

    else
    {
      v45 = 0;
    }

    v46 = v45 | v71;
    sub_21C9FB5D0(v69, *(&v69 + 1), v70, *(&v70 + 1), v71, v72);
    goto LABEL_20;
  }

  if (*(a1 + 82) == 1)
  {
    sub_21C9D5F04(v69, *(&v69 + 1), v70);
    sub_21CB81014();
    v35 = sub_21CB81004();
    v37 = v36;
    (*(v4 + 8))(v10, v3);
    *&v69 = v35;
    *(&v69 + 1) = v37;
    sub_21C71F3FC();
    v29 = sub_21CB84054();
    v31 = v38;
    v33 = v39 & 1;
    *&v66 = v29;
    *(&v66 + 1) = v38;
    *&v67 = v39 & 1;
    *(&v67 + 1) = v40;
    LOBYTE(v68) = 1;
    sub_21C79B058(v29, v38, v39 & 1);

    sub_21CB83494();
    v66 = v69;
    v67 = v70;
    v68 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC150, &unk_21CBA4F60);
    sub_21C7FC578();
    goto LABEL_9;
  }

  v61 = *(&v69 + 1);
  v62 = *(&v70 + 1);
  sub_21C9D5F04(v69, *(&v69 + 1), v70);
  if (v24)
  {
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v46 = 65280;
  }

  else
  {
    sub_21CB81014();
    sub_21CB81014();
    v47 = sub_21CB80FF4();
    v49 = v48;
    v50 = *(v4 + 8);
    v50(v7, v3);
    v50(v10, v3);
    *&v69 = v47;
    *(&v69 + 1) = v49;
    sub_21C71F3FC();
    *&v66 = sub_21CB84054();
    *(&v66 + 1) = v52;
    *&v67 = v51 & 1;
    *(&v67 + 1) = v53;
    v68 = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC150, &unk_21CBA4F60);
    sub_21C7FC578();
    sub_21CB83494();
    v42 = *(&v69 + 1);
    v41 = v69;
    v44 = *(&v70 + 1);
    v43 = v70;
    if (v72)
    {
      v54 = 256;
    }

    else
    {
      v54 = 0;
    }

    v46 = v54 | v71;
    sub_21C9FB5D0(v69, *(&v69 + 1), v70, *(&v70 + 1), v71, v72);
  }

  v25 = v61;
LABEL_20:
  v55 = v64;
  v56 = v65;
  sub_21C9D5F04(v64, v25, v65);
  sub_21C9FB5B8(v41, v42, v43, v44, v46);
  sub_21C9D5F40(v55, v25, v56);
  sub_21C9FB624(v41, v42, v43, v44, v46);
  LOBYTE(v69) = v23;
  v57 = v63;
  v58 = v65;
  *v63 = v64;
  v57[1] = v58;
  *(v57 + 32) = v23;
  *(v57 + 5) = v41;
  *(v57 + 6) = v42;
  *(v57 + 7) = v43;
  *(v57 + 8) = v44;
  *(v57 + 36) = v46;
  sub_21C9FB624(v41, v42, v43, v44, v46);
  return sub_21C9D5F40(v55, v25, v56);
}

uint64_t sub_21C9FB4D0@<X0>(uint64_t a1@<X8>)
{
  v13 = v1[10];
  v14 = v1[11];
  v15 = v1[12];
  v16 = *(v1 + 26);
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1[9];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_21C9FA704(a1);
}

uint64_t sub_21C9FB548(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF49E0, &qword_21CBBBFC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9FB5B8(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (BYTE1(a5) != 255)
  {
    return sub_21C9FB5D0(result, a2, a3, a4, a5, BYTE1(a5) & 1);
  }

  return result;
}

uint64_t sub_21C9FB5D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_21C79B058(a1, a2, a3 & 1);
  }

  else
  {

    return sub_21C9D5F04(a1, a2, a3);
  }
}

uint64_t sub_21C9FB624(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (BYTE1(a5) != 255)
  {
    return sub_21C9FB63C(result, a2, a3, a4, a5, BYTE1(a5) & 1);
  }

  return result;
}

uint64_t sub_21C9FB63C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_21C74A72C(a1, a2, a3 & 1);
  }

  else
  {

    return sub_21C9D5F40(a1, a2, a3);
  }
}

unint64_t sub_21C9FB690()
{
  result = qword_27CDF4A08;
  if (!qword_27CDF4A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF49D8, &qword_21CBBBFB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF49B0, &qword_21CBBBF98);
    sub_21C6EADEC(&qword_27CDF49C8, &qword_27CDF49B0, &qword_21CBBBF98);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4A08);
  }

  return result;
}

uint64_t sub_21C9FB7B0()
{
  v0 = *MEMORY[0x277D49CC0];
  result = sub_21CB855C4();
  qword_27CDF4A10 = result;
  *algn_27CDF4A18 = v2;
  return result;
}

uint64_t sub_21C9FB818(uint64_t a1, uint64_t *a2)
{
  v3 = sub_21CB81C84();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  if (qword_27CDEA3D8 != -1)
  {
    swift_once();
  }

  return sub_21CB81C74();
}

uint64_t sub_21C9FB8D0()
{
  v0 = sub_21CB81C84();
  __swift_allocate_value_buffer(v0, qword_27CE18580);
  __swift_project_value_buffer(v0, qword_27CE18580);
  if (qword_27CDEA3D8 != -1)
  {
    swift_once();
  }

  return sub_21CB81C74();
}

uint64_t sub_21C9FB98C()
{
  v0 = sub_21CB81C84();
  __swift_allocate_value_buffer(v0, qword_27CE18598);
  __swift_project_value_buffer(v0, qword_27CE18598);
  return sub_21CB81C74();
}

void sub_21C9FBA10(void (*a1)(void **__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21CB85F64();
    sub_21C6E8F4C(0, qword_280E22EE0, 0x277CCA9C8);
    sub_21C9577B8();
    sub_21CB85A14();
    v5 = v31;
    v6 = v32;
    v7 = v33;
    v8 = v34;
    v9 = v35;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v27 = MEMORY[0x277D84F90];
  v25 = v5;
  while (v5 < 0)
  {
    v18 = sub_21CB85FE4();
    if (!v18 || (v36 = v18, sub_21C6E8F4C(0, qword_280E22EE0, 0x277CCA9C8), swift_dynamicCast(), v17 = v28, v16 = v8, v26 = v9, !v28))
    {
LABEL_25:
      sub_21C6F1E7C();
      return;
    }

LABEL_19:
    v36 = v17;
    a1(&v28, &v36);
    if (v4)
    {

      sub_21C6F1E7C();

      return;
    }

    v19 = v29;
    if (v29)
    {
      v20 = v28;
      v21 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_21CA4FBC4(0, *(v27 + 2) + 1, 1, v27);
      }

      v23 = *(v27 + 2);
      v22 = *(v27 + 3);
      if (v23 >= v22 >> 1)
      {
        v27 = sub_21CA4FBC4((v22 > 1), v23 + 1, 1, v27);
      }

      *(v27 + 2) = v23 + 1;
      v13 = &v27[24 * v23];
      *(v13 + 4) = v20;
      *(v13 + 5) = v19;
      *(v13 + 6) = v21;
      v4 = 0;
    }

    v8 = v16;
    v5 = v25;
    v9 = v26;
  }

  v14 = v8;
  v15 = v9;
  v16 = v8;
  if (v9)
  {
LABEL_15:
    v26 = (v15 - 1) & v15;
    v17 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v17)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= ((v7 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall PMCredentialExchangeViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = type metadata accessor for PMCredentialExchangeOnboardingView();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  *&v16 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v18 = &v35 - v17;
  v36.receiver = v2;
  v36.super_class = PMCredentialExchangeViewController;
  objc_msgSendSuper2(&v36, sel_viewWillAppear_, a1, v16);
  v19 = sub_21CB80764();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_21CB80754();
  v22 = sub_21CB818C4();
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  v23 = [v2 exportedCredentialData];
  if (v23)
  {
    v24 = v23;
    v25 = sub_21CB80C84();
    v27 = v26;

    sub_21C9FC5A8();
    sub_21CB80744();
    sub_21C6EA794(v18, &qword_27CDEFFE8, &qword_21CBAE1B0);
    sub_21C7A34C0(v25, v27);
    sub_21CA051A4(v14, v18);
  }

  sub_21C6EDBAC(v18, v11, &qword_27CDEFFE8, &qword_21CBAE1B0);
  v28 = [v2 exporterBundleID];
  v29 = sub_21CB855C4();
  v31 = v30;

  v32 = v2;
  sub_21C9FC1F4(v11, v29, v31, v32, v7);
  v33 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A20, &unk_21CBBC048));
  v34 = sub_21CB833B4();
  [v32 presentViewController:v34 animated:1 completion:0];

  sub_21C6EA794(v18, &qword_27CDEFFE8, &qword_21CBAE1B0);
}

uint64_t type metadata accessor for PMCredentialExchangeOnboardingView()
{
  result = qword_27CDF4A50;
  if (!qword_27CDF4A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C9FC1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v35 = a3;
  v36 = a4;
  v33 = a1;
  v34 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = type metadata accessor for PMCredentialExchangeOnboardingView();
  v14 = v13[7];
  *(a5 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v15 = v13[8];
  *(a5 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v16 = v13[9];
  *(a5 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  v17 = v13[10];
  v18 = sub_21CB818C4();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  sub_21C6EDBAC(v12, v9, &qword_27CDEFFE8, &qword_21CBAE1B0);
  sub_21CB84D44();
  sub_21C6EA794(v12, &qword_27CDEFFE8, &qword_21CBAE1B0);
  v19 = a5 + v13[11];
  LOBYTE(v37) = 0;
  sub_21CB84D44();
  v20 = *(&v39 + 1);
  *v19 = v39;
  *(v19 + 1) = v20;
  v21 = a5 + v13[12];
  v37 = 0;
  v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
  sub_21CB84D44();
  v22 = v40;
  *v21 = v39;
  *(v21 + 2) = v22;
  v23 = a5 + v13[13];
  v37 = 0;
  v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A78, &qword_21CBBC088);
  sub_21CB84D44();
  v24 = v40;
  *v23 = v39;
  *(v23 + 2) = v24;
  v25 = a5 + v13[14];
  LOBYTE(v37) = 0;
  sub_21CB84D44();
  v26 = *(&v39 + 1);
  *v25 = v39;
  *(v25 + 1) = v26;
  v27 = a5 + v13[15];
  LOBYTE(v37) = 0;
  sub_21CB84D44();
  v28 = *(&v39 + 1);
  *v27 = v39;
  *(v27 + 1) = v28;
  *(a5 + v13[16]) = 0;
  v29 = v33;
  sub_21C6EDBAC(v33, v12, &qword_27CDEFFE8, &qword_21CBAE1B0);
  sub_21C6EA794(a5 + v17, &qword_27CDF4A48, &qword_21CBBC058);
  sub_21C6EDBAC(v12, v9, &qword_27CDEFFE8, &qword_21CBAE1B0);
  sub_21CB84D44();
  sub_21C6EA794(v12, &qword_27CDEFFE8, &qword_21CBAE1B0);
  v30 = v35;
  *a5 = v34;
  a5[1] = v30;
  a5[2] = v36;
  v31 = [objc_allocWithZone(MEMORY[0x277D49AD8]) init];
  result = sub_21C6EA794(v29, &qword_27CDEFFE8, &qword_21CBAE1B0);
  a5[3] = v31;
  return result;
}

unint64_t sub_21C9FC5A8()
{
  result = qword_27CDF4A28;
  if (!qword_27CDF4A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
    sub_21CA054BC(&qword_27CDF4A30, MEMORY[0x277CBA840]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4A28);
  }

  return result;
}

id PMCredentialExchangeViewController.init(exportedCredentialData:exporterBundleID:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_21CB80C64();
    sub_21C7902FC(a1, a2);
  }

  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = sub_21CB85584();

  v7 = [v5 initWithExportedCredentialData:v2 exporterBundleID:v6];

  return v7;
}

{
  v2[OBJC_IVAR___PMCredentialExchangeViewController_viewDidCancel] = 0;
  if (a2 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_21CB80C64();
  }

  v6 = sub_21CB85584();

  v9.receiver = v2;
  v9.super_class = PMCredentialExchangeViewController;
  v7 = objc_msgSendSuper2(&v9, sel_initWithExportedCredentialData_exporterBundleID_, v5, v6);
  sub_21C7902FC(a1, a2);

  return v7;
}

void PMCredentialExchangeViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR___PMCredentialExchangeViewController_viewDidCancel) = 0;
  sub_21CB861C4();
  __break(1u);
}

void __swiftcall PMCredentialExchangeViewController.init(nibName:bundle:)(PMCredentialExchangeViewController *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_21CB85584();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

uint64_t sub_21C9FCB64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v56 = type metadata accessor for PMCredentialExchangeOnboardingView();
  v67 = *(v56 - 8);
  v3 = *(v67 + 64);
  MEMORY[0x28223BE20](v56);
  v68 = v4;
  v69 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_21CB83524();
  v62 = *(v64 - 8);
  v5 = *(v62 + 64);
  MEMORY[0x28223BE20](v64);
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A80, &qword_21CBBC118);
  v7 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v9 = &v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A88, &qword_21CBBC120);
  v59 = *(v10 - 8);
  v60 = v10;
  v11 = *(v59 + 64);
  MEMORY[0x28223BE20](v10);
  v57 = &v51 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A90, &qword_21CBBC128);
  v61 = *(v63 - 8);
  v13 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v58 = &v51 - v14;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A98, &qword_21CBBC130);
  v15 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v66 = &v51 - v16;
  v71 = v1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4AA0, &qword_21CBBC138);
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4AA8, &qword_21CBBC140);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4AB0, &qword_21CBBC148);
  v18 = type metadata accessor for PMOnboardingView(255);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4AB8, &qword_21CBBC150);
  v20 = sub_21CA054BC(&qword_27CDEE360, type metadata accessor for PMOnboardingView);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4AC0, &qword_21CBBC158);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4AC8, &qword_21CBBC160);
  v23 = v56;
  v24 = sub_21C6EADEC(&qword_27CDF4AD0, &qword_27CDF4AC8, &qword_21CBBC160);
  v72 = v22;
  v73 = v24;
  v25 = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v72 = v21;
  v73 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v72 = v18;
  v73 = v19;
  v28 = v55;
  v74 = v20;
  v75 = v27;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = sub_21CA05504();
  v72 = v52;
  v73 = v17;
  v74 = v29;
  v75 = v30;
  swift_getOpaqueTypeConformance2();
  sub_21CB82924();
  KeyPath = swift_getKeyPath();
  v32 = *(v23 + 28);
  v33 = &v9[*(v28 + 36)];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4AE8, &qword_21CBBC190);
  sub_21C728D50(v33 + *(v34 + 28));
  *v33 = KeyPath;
  sub_21CB83514();
  LOBYTE(v33) = sub_21CB83CC4();
  sub_21CB83CB4();
  sub_21CB83CB4();
  if (sub_21CB83CB4() != v33)
  {
    sub_21CB83CB4();
  }

  v35 = sub_21CA05660();
  v36 = v57;
  sub_21CB84534();
  (*(v62 + 8))(v25, v64);
  sub_21C6EA794(v9, &qword_27CDF4A80, &qword_21CBBC118);
  v72 = v28;
  v73 = v35;
  swift_getOpaqueTypeConformance2();
  v37 = v58;
  v38 = v60;
  sub_21CB84644();
  (*(v59 + 8))(v36, v38);
  v39 = v69;
  sub_21CA05744(v2, v69);
  v40 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v41 = swift_allocObject();
  sub_21CA07E44(v39, v41 + v40, type metadata accessor for PMCredentialExchangeOnboardingView);
  v42 = v66;
  (*(v61 + 32))(v66, v37, v63);
  v43 = (v42 + *(v65 + 36));
  *v43 = sub_21CA057A8;
  v43[1] = v41;
  v43[2] = 0;
  v43[3] = 0;
  v44 = *(v2 + *(v23 + 64));
  v45 = sub_21CB852C4();
  v46 = type metadata accessor for PMGlobalAnimationNamespaceContainer();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  v49 = swift_allocObject();
  sub_21CB81104();
  *(v49 + 16) = v45;
  sub_21CA057DC();
  sub_21CA054BC(&qword_27CDEADC8, type metadata accessor for PMGlobalAnimationNamespaceContainer);
  sub_21CB84164();

  return sub_21C6EA794(v42, &qword_27CDF4A98, &qword_21CBBC130);
}

uint64_t sub_21C9FD2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v42 = a2;
  v2 = type metadata accessor for PMCredentialExchangeOnboardingView();
  v3 = v2 - 8;
  v37 = *(v2 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMOnboardingView(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4AA8, &qword_21CBBC140);
  v41 = *(v40 - 8);
  v14 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v37 - v15;
  sub_21CA890BC(v51);
  sub_21CB81014();
  v16 = sub_21CB81004();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  v19 = v38;
  sub_21CA05744(v38, &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v21 = swift_allocObject();
  sub_21CA07E44(&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for PMCredentialExchangeOnboardingView);
  v22 = v51[2];
  *(v13 + 1) = v51[1];
  *(v13 + 2) = v22;
  *(v13 + 24) = v52;
  *v13 = v51[0];
  *(v13 + 7) = v16;
  *(v13 + 8) = v18;
  *(v13 + 9) = sub_21CA07184;
  *(v13 + 10) = v21;
  v13[88] = 0;
  *(v13 + 6) = 0u;
  *(v13 + 7) = 0u;
  v13[128] = 0;
  v23 = *(v10 + 28);
  *&v13[v23] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v44 = v19;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4AB8, &qword_21CBBC150);
  v25 = sub_21CA054BC(&qword_27CDEE360, type metadata accessor for PMOnboardingView);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4AC0, &qword_21CBBC158);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4AC8, &qword_21CBBC160);
  v28 = sub_21C6EADEC(&qword_27CDF4AD0, &qword_27CDF4AC8, &qword_21CBBC160);
  v45 = v27;
  v46 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v26;
  v46 = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = v39;
  sub_21CB84894();
  sub_21C85BC4C(v13);
  v32 = v19 + *(v3 + 52);
  v33 = *v32;
  v34 = *(v32 + 8);
  v49 = v33;
  v50 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  v43 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4AB0, &qword_21CBBC148);
  v45 = v10;
  v46 = v24;
  v47 = v25;
  v48 = v30;
  swift_getOpaqueTypeConformance2();
  sub_21CA05504();
  v35 = v40;
  sub_21CB84554();

  return (*(v41 + 8))(v31, v35);
}

uint64_t sub_21C9FD880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = sub_21CB83604();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4AC8, &qword_21CBBC160);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4AC0, &qword_21CBBC158);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  sub_21CB835C4();
  v18[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBBE0, &unk_21CBC5190);
  sub_21C6EADEC(&qword_27CDEBBE8, &qword_27CDEBBE0, &unk_21CBC5190);
  sub_21CB82194();
  v15 = sub_21C6EADEC(&qword_27CDF4AD0, &qword_27CDF4AC8, &qword_21CBBC160);
  MEMORY[0x21CF131E0](v9, v5, v15);
  (*(v6 + 8))(v9, v5);
  v18[6] = v5;
  v18[7] = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF131E0](v14, v10, OpaqueTypeConformance2);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_21C9FDB40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v73 = a1;
  v66 = type metadata accessor for PMCredentialExchangeOnboardingView();
  v68 = *(v66 - 8);
  v67 = *(v68 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4B28, &qword_21CBBC1C8);
  v4 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v6 = v56 - v5;
  v56[1] = v56 - v5;
  v7 = sub_21CB81024();
  v57 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for PMOnboardingView(0);
  v12 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4B30, &qword_21CBBC1D0);
  v71 = *(v15 - 8);
  v72 = v15;
  v16 = *(v71 + 64);
  MEMORY[0x28223BE20](v15);
  v69 = v56 - v17;
  v63 = sub_21CB84C14();
  v18 = sub_21CA002EC();
  v61 = v19;
  v62 = v18;
  sub_21CB81014();
  v60 = sub_21CB81004();
  v59 = v20;
  v21 = *(v8 + 8);
  v56[2] = v8 + 8;
  v58 = v21;
  v21(v11, v7);
  sub_21CA021D0(v6);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4B38, &qword_21CBBC1D8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4B40, &qword_21CBBC1E0);
  v24 = sub_21CB836B4();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4B48, &qword_21CBBC1E8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4B50, &unk_21CBBC1F0);
  v27 = sub_21C6EADEC(&qword_27CDF4B58, &qword_27CDF4B50, &unk_21CBBC1F0);
  *&v76 = v26;
  *(&v76 + 1) = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v76 = v25;
  *(&v76 + 1) = OpaqueTypeConformance2;
  v29 = v2;
  v30 = swift_getOpaqueTypeConformance2();
  *&v76 = v23;
  *(&v76 + 1) = v24;
  v77 = v30;
  v78 = MEMORY[0x277CDE0D0];
  v31 = swift_getOpaqueTypeConformance2();
  *&v76 = v22;
  *(&v76 + 1) = v31;
  swift_getOpaqueTypeConformance2();
  v32 = sub_21CB84F14();
  sub_21CB81014();
  v33 = sub_21CB81004();
  v35 = v34;
  v36 = v11;
  v37 = v66;
  v58(v36, v57);
  v38 = v65;
  sub_21CA05744(v29, v65);
  v39 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v40 = swift_allocObject();
  sub_21CA07E44(v38, v40 + v39, type metadata accessor for PMCredentialExchangeOnboardingView);
  v41 = v29 + *(v37 + 48);
  v42 = *(v41 + 16);
  v76 = *v41;
  v77 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
  sub_21CB84D54();
  v43 = v75;
  if (v75)
  {
  }

  v44 = v62;
  *v14 = v63;
  *(v14 + 1) = v44;
  v45 = v60;
  *(v14 + 2) = v61;
  *(v14 + 3) = v45;
  *(v14 + 4) = v59;
  *(v14 + 5) = v32;
  *(v14 + 24) = 1;
  *(v14 + 7) = v33;
  *(v14 + 8) = v35;
  *(v14 + 9) = sub_21CA071E4;
  *(v14 + 10) = v40;
  v14[88] = v43 == 0;
  *(v14 + 6) = 0u;
  *(v14 + 7) = 0u;
  v14[128] = 0;
  v46 = *(v70 + 28);
  *&v14[v46] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v47 = v29 + *(v37 + 60);
  v48 = *v47;
  v49 = *(v47 + 8);
  v74 = v48;
  v75 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  v50 = sub_21CB84D74();
  MEMORY[0x28223BE20](v50);
  sub_21CA054BC(&qword_27CDEE360, type metadata accessor for PMOnboardingView);
  sub_21CA0560C();
  v51 = v69;
  sub_21CB84554();

  sub_21C85BC4C(v14);
  LOBYTE(v46) = sub_21CB83CF4();
  v52 = sub_21CB82934();
  v53 = v73;
  (*(v71 + 32))(v73, v51, v72);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4AB0, &qword_21CBBC148);
  v55 = v53 + *(result + 36);
  *v55 = v52;
  *(v55 + 8) = v46;
  return result;
}

uint64_t sub_21C9FE298(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, char *, uint64_t, uint64_t))
{
  v7 = type metadata accessor for PMCredentialExchangeOnboardingView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  v14 = sub_21CB858E4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_21CA05744(a1, &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CB858B4();
  v15 = sub_21CB858A4();
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  sub_21CA07E44(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PMCredentialExchangeOnboardingView);
  a4(0, 0, v13, a3, v17);
}

uint64_t sub_21C9FE468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a4;
  sub_21CB858B4();
  v4[21] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[22] = v6;
  v4[23] = v5;

  return MEMORY[0x2822009F8](sub_21C9FE500, v6, v5);
}

uint64_t sub_21C9FE500()
{
  v1 = *(v0[20] + 24);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21C9FE620;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4B18, &qword_21CBBC1B0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21C82D1CC;
  v0[13] = &block_descriptor_25;
  v0[14] = v2;
  [v1 getTopFraudTargetsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21C9FE620()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21C9FE728, v2, v1);
}

uint64_t sub_21C9FE728()
{
  v2 = v0[20];
  v1 = v0[21];

  v3 = v0[18];
  v4 = [v3 highPriorityFraudTargets];
  v5 = sub_21CB85824();

  v6 = [v3 financialFraudTargets];
  v7 = sub_21CB85824();

  sub_21CAE8F10(v7);
  v8 = sub_21CB009AC(v5);

  v9 = [v3 fraudTargets];
  v10 = sub_21CB85824();

  v11 = sub_21CB009AC(v10);

  v12 = (v2 + *(type metadata accessor for PMCredentialExchangeOnboardingView() + 52));
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v0[10] = *v12;
  v0[11] = v14;
  v0[12] = v15;
  v0[18] = v8;
  v0[19] = v11;
  sub_21CA07104(v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4B20, &unk_21CBBC1B8);
  sub_21CB84D64();

  sub_21CA07144(v13);

  v16 = v0[1];

  return v16();
}

uint64_t sub_21C9FE8F0()
{
  v1 = (v0 + *(type metadata accessor for PMCredentialExchangeOnboardingView() + 48));
  v8 = *v1;
  v9 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
  sub_21CB84D54();
  if (!v7)
  {
    return 0;
  }

  v2 = sub_21C9FE9CC(v6, v7);

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 localizedShortName];
  v4 = sub_21CB855C4();

  return v4;
}

id sub_21C9FE9CC(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  return sub_21CA050C8(a1, a2, 0);
}

uint64_t sub_21C9FEB58()
{
  v1 = sub_21CB82054();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1);
  v5 = &v37[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v37[-v7];
  MEMORY[0x28223BE20](v9);
  v11 = &v37[-v10];
  v12 = type metadata accessor for PMCredentialExchangeOnboardingView();
  v13 = (v0 + *(v12 + 48));
  v14 = *(v13 + 2);
  v41 = *v13;
  v42 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
  sub_21CB84D54();
  if (!v40)
  {
    return 0;
  }

  [objc_opt_self() headerIconSize];
  v16 = v15;
  v18 = v17;
  v19 = *(v12 + 36);
  sub_21C74F0F8(v11);
  sub_21C74F0F8(v8);
  v20 = *MEMORY[0x277CDF3D0];
  v39 = v11;
  v21 = v2[13];
  v21(v5, v20, v1);
  v38 = sub_21CB82044();
  v22 = v2[1];
  v22(v5, v1);
  v22(v8, v1);
  v23 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v24 = sub_21CB85584();

  v25 = [v23 initWithBundleIdentifier_];

  v26 = [objc_opt_self() mainScreen];
  [v26 scale];
  v28 = v27;

  v29 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v16 scale:{v18, v28}];
  v21(v8, *MEMORY[0x277CDF3C0], v1);
  v30 = v39;
  v31 = sub_21CB82044();
  v22(v8, v1);
  [v29 setAppearance_];
  [v29 setDrawBorder_];
  v32 = [v25 prepareImageForDescriptor_];
  if (!v32)
  {
    goto LABEL_7;
  }

  v33 = v32;
  v34 = [v32 CGImage];
  if (!v34)
  {

LABEL_7:
    [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    goto LABEL_8;
  }

  v35 = v34;
  [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

  v29 = v33;
  v25 = v35;
LABEL_8:

  v22(v30, v1);
  return sub_21CB84BA4();
}

uint64_t sub_21C9FEF34(uint64_t a1)
{
  v2 = type metadata accessor for PMCredentialExchangeOnboardingView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_21CB81F14();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81EF4();
  sub_21CA05744(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_21CA07E44(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for PMCredentialExchangeOnboardingView);
  return MEMORY[0x21CF148B0](v8, sub_21CA07844, v10);
}

id sub_21C9FF09C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v1[OBJC_IVAR___PMCredentialExchangeViewController_viewDidCancel] = 1;
  result = [v1 delegate];
  if (result)
  {
    [result viewControllerDidCancel_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21C9FF11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0) - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  sub_21CB858B4();
  v4[29] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v4[30] = v7;
  v4[31] = v6;

  return MEMORY[0x2822009F8](sub_21C9FF204, v7, v6);
}

uint64_t sub_21C9FF204()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 200);
  v3 = type metadata accessor for PMCredentialExchangeOnboardingView();
  *(v0 + 288) = *(v3 + 40);
  *(v0 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A48, &qword_21CBBC058);
  sub_21CB84D54();
  v4 = sub_21CB818C4();
  *(v0 + 264) = v4;
  v5 = *(v4 - 8);
  *(v0 + 272) = v5;
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    v6 = *(v0 + 200);
    sub_21C6EA794(*(v0 + 224), &qword_27CDEFFE8, &qword_21CBAE1B0);
    v7 = *(v6 + 16);
    v8 = [v7 delegate];
    *(v0 + 280) = v8;
    if (v8)
    {
      v9 = v8;
      v10 = *(v0 + 200) + *(v3 + 48);
      v11 = *(v10 + 16);
      *(v0 + 144) = *v10;
      *(v0 + 160) = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
      sub_21CB84D54();
      if (*(v0 + 176))
      {
        v12 = *(v0 + 168);
        v13 = *(v0 + 176);
        v14 = sub_21CB85584();

        [v9 userDidSelectImportingDestinationWithBundleIdentfier:v14 exportViewController:v7];

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 184;
        *(v0 + 24) = sub_21C9FF6D8;
        v15 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4B68, &qword_21CBBC228);
        *(v0 + 80) = MEMORY[0x277D85DD0];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_21C9FFA60;
        *(v0 + 104) = &block_descriptor_38;
        *(v0 + 112) = v15;
        [v9 getExportedCredentialData_];

        return MEMORY[0x282200938](v0 + 16);
      }

      v24 = *(v0 + 232);

      if (qword_27CDEA3F8 != -1)
      {
        swift_once();
      }

      v25 = sub_21CB81C84();
      __swift_project_value_buffer(v25, qword_27CE18598);
      v21 = sub_21CB81C64();
      v26 = sub_21CB85B04();
      if (os_log_type_enabled(v21, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_21C6E5000, v21, v26, "Tried to continue export with no selected importer.", v27, 2u);
        MEMORY[0x21CF16D90](v27, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v19 = *(v0 + 232);

      if (qword_27CDEA3F8 != -1)
      {
        swift_once();
      }

      v20 = sub_21CB81C84();
      __swift_project_value_buffer(v20, qword_27CE18598);
      v21 = sub_21CB81C64();
      v22 = sub_21CB85B04();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_21C6E5000, v21, v22, "Tried to continue export no export view controller delegate.", v23, 2u);
        MEMORY[0x21CF16D90](v23, -1, -1);
      }
    }
  }

  else
  {
    v17 = *(v0 + 224);
    v16 = *(v0 + 232);

    sub_21C6EA794(v17, &qword_27CDEFFE8, &qword_21CBAE1B0);
    v18 = *(v0 + 200);
    *(swift_task_alloc() + 16) = v18;
    sub_21CB85254();
    sub_21CB82524();
  }

  v29 = *(v0 + 216);
  v28 = *(v0 + 224);
  v30 = *(v0 + 208);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_21C9FF6D8()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21C9FF7E0, v2, v1);
}

uint64_t sub_21C9FF7E0()
{
  v1 = *(v0 + 232);

  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  if (v2 >> 60 == 15)
  {
    v4 = *(v0 + 280);
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = *(v0 + 264);
    v6 = *(v0 + 216);
    v7 = sub_21CB80764();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_21CB80754();
    sub_21CA054BC(&qword_27CDF4A30, MEMORY[0x277CBA840]);
    sub_21CB80744();
    v10 = *(v0 + 280);
    v11 = *(v0 + 264);
    v12 = *(v0 + 272);
    v22 = *(v0 + 288);
    v23 = *(v0 + 256);
    v14 = *(v0 + 208);
    v13 = *(v0 + 216);
    v15 = *(v0 + 200);

    (*(v12 + 56))(v13, 0, 1, v11);
    sub_21C6EDBAC(v13, v14, &qword_27CDEFFE8, &qword_21CBAE1B0);
    sub_21CB84D64();
    sub_21C7902FC(v3, v2);
    swift_unknownObjectRelease();
    sub_21C6EA794(v13, &qword_27CDEFFE8, &qword_21CBAE1B0);
  }

  v16 = *(v0 + 200);
  *(swift_task_alloc() + 16) = v16;
  sub_21CB85254();
  sub_21CB82524();

  v18 = *(v0 + 216);
  v17 = *(v0 + 224);
  v19 = *(v0 + 208);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_21C9FFA60(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    a2 = sub_21CB80C84();
    v6 = v5;
  }

  else
  {
    v6 = 0xF000000000000000;
  }

  v7 = *(*(v3 + 64) + 40);
  *v7 = a2;
  v7[1] = v6;

  return MEMORY[0x282200948](v3);
}

uint64_t sub_21C9FFAF0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for PMCredentialExchangeOnboardingView() + 60));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21C9FFB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[28] = a4;
  v5 = sub_21CB81024();
  v4[29] = v5;
  v6 = *(v5 - 8);
  v4[30] = v6;
  v7 = *(v6 + 64) + 15;
  v4[31] = swift_task_alloc();
  sub_21CB858B4();
  v4[32] = sub_21CB858A4();
  v9 = sub_21CB85874();
  v4[33] = v9;
  v4[34] = v8;

  return MEMORY[0x2822009F8](sub_21C9FFC60, v9, v8);
}

uint64_t sub_21C9FFC60()
{
  v1 = *(v0 + 224);
  v3 = *v1;
  v2 = v1[1];
  objc_allocWithZone(MEMORY[0x277CC1E70]);

  v4 = sub_21CA050C8(v3, v2, 0);
  v5 = MEMORY[0x277D84F98];
  if (v4)
  {
    v7 = *(v0 + 240);
    v6 = *(v0 + 248);
    v8 = *(v0 + 224);
    v9 = *(v0 + 232);

    *(v0 + 304) = 1037;
    sub_21CB86034();
    v10 = sub_21CA0011C();
    v11 = MEMORY[0x277D837D0];
    *(v0 + 120) = MEMORY[0x277D837D0];
    *(v0 + 96) = v10;
    *(v0 + 104) = v12;
    sub_21C731A9C((v0 + 96), (v0 + 128));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_21C8D4FD8((v0 + 128), v0 + 16, isUniquelyReferenced_nonNull_native);
    sub_21C8E1980(v0 + 16);
    v14 = v5;
    *(v0 + 308) = 1030;
    sub_21CB86034();
    sub_21CB81014();
    v15 = sub_21CB81004();
    v17 = v16;
    (*(v7 + 8))(v6, v9);
    *(v0 + 184) = v11;
    *(v0 + 160) = v15;
    *(v0 + 168) = v17;
    sub_21C731A9C((v0 + 160), (v0 + 192));
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_21C8D4FD8((v0 + 192), v0 + 56, v18);
    sub_21C8E1980(v0 + 56);
    v5 = v14;
  }

  *(v0 + 280) = v5;
  v19 = swift_task_alloc();
  *(v0 + 288) = v19;
  *v19 = v0;
  v19[1] = sub_21C9FFEB4;

  return sub_21CA8A978(v5);
}

uint64_t sub_21C9FFEB4()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v9 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = v2[35];

    v5 = v2[33];
    v6 = v2[34];
    v7 = sub_21CA000B0;
  }

  else
  {
    v5 = v2[33];
    v6 = v2[34];
    v7 = sub_21C9FFFD0;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21C9FFFD0()
{
  v1 = v0[37];
  v2 = v0[35];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[28];

  *(swift_task_alloc() + 16) = v5;
  sub_21CB85254();
  sub_21CB82524();

  v6 = v0[1];

  return v6();
}

uint64_t sub_21CA000B0()
{
  v2 = v0[31];
  v1 = v0[32];

  v3 = v0[1];
  v4 = v0[37];

  return v3();
}

uint64_t sub_21CA0011C()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() currentDevice];
  [v5 deviceClass];

  sub_21CB81014();
  v6 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t sub_21CA00270(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for PMCredentialExchangeOnboardingView() + 44));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21CA002EC()
{
  v57 = sub_21CB81024();
  v1 = *(v57 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v57);
  v51 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  MEMORY[0x28223BE20](v13);
  v58 = &v47 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v55 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v47 - v22;
  v24 = *(type metadata accessor for PMCredentialExchangeOnboardingView() + 40);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A48, &qword_21CBBC058);
  v56 = v0;
  v53 = v25;
  v54 = v24;
  sub_21CB84D54();
  v26 = sub_21CB818C4();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v52 = v26;
  v49 = v27;
  v50 = v28;
  v29 = (v28)(v23, 1);
  sub_21C6EA794(v23, &qword_27CDEFFE8, &qword_21CBAE1B0);
  if (v29 == 1)
  {
    sub_21CB81014();
    v30 = sub_21CB81004();
    (*(v1 + 8))(v17, v57);
    return v30;
  }

  v48 = v17;
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v47 = sub_21CB81034();
  v31 = *(v47 - 8);
  v32 = *(v31 + 72);
  v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v34 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  v35 = v51;
  sub_21CB81014();
  sub_21CB80FE4();
  v36 = *(v1 + 8);
  v37 = v35;
  v38 = v57;
  v36(v37, v57);
  v36(v6, v38);
  v36(v9, v38);
  v36(v12, v38);
  swift_setDeallocating();
  (*(v31 + 8))(v34 + v33, v47);
  swift_deallocClassInstance();
  v39 = v48;
  sub_21CB81004();
  v36(v58, v38);
  v36(v39, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_21CBA0690;
  v41 = v55;
  sub_21CB84D54();
  v42 = v52;
  result = v50(v41, 1, v52);
  if (result != 1)
  {
    v44 = sub_21CB818B4();
    (*(v49 + 8))(v41, v42);
    v45 = *(v44 + 16);

    v46 = MEMORY[0x277D83C10];
    *(v40 + 56) = MEMORY[0x277D83B88];
    *(v40 + 64) = v46;
    *(v40 + 32) = v45;
    v30 = sub_21CB85594();

    return v30;
  }

  __break(1u);
  return result;
}

uint64_t sub_21CA008FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PMCredentialExchangeOnboardingView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v20 = sub_21C9FEB58();
  v19 = sub_21CA00A5C();
  v8 = v7;
  v9 = sub_21CA01030();
  v11 = v10;
  v12 = sub_21C9FE8F0();
  v14 = v13;
  sub_21CA05744(a1, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  result = sub_21CA07E44(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for PMCredentialExchangeOnboardingView);
  v18 = v19;
  *a2 = v20;
  a2[1] = v18;
  a2[2] = v8;
  a2[3] = v9;
  a2[4] = v11;
  a2[5] = v12;
  a2[6] = v14;
  a2[7] = sub_21CA0729C;
  a2[8] = v16;
  return result;
}

uint64_t sub_21CA00A5C()
{
  v0 = sub_21CB818C4();
  v1 = *(v0 - 8);
  v49 = v0;
  v50 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v45 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v45 - v6;
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v45 - v19;
  MEMORY[0x28223BE20](v21);
  v47 = &v45 - v22;
  MEMORY[0x28223BE20](v23);
  v48 = &v45 - v24;
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v46 = sub_21CB81034();
  v25 = *(v46 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FE4();
  v29 = *(v8 + 8);
  v29(v11, v7);
  v29(v14, v7);
  v29(v17, v7);
  v29(v20, v7);
  swift_setDeallocating();
  (*(v25 + 8))(v28 + v27, v46);
  v30 = v49;
  swift_deallocClassInstance();
  v31 = v48;
  sub_21CB81004();
  v29(v47, v7);
  v29(v31, v7);
  v32 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_21CBA15B0;
  LODWORD(v7) = *(type metadata accessor for PMCredentialExchangeOnboardingView() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A48, &qword_21CBBC058);
  v34 = v51;
  sub_21CB84D54();
  v35 = v34;
  if ((*(v32 + 48))(v34, 1, v30))
  {
    sub_21C6EA794(v34, &qword_27CDEFFE8, &qword_21CBAE1B0);
    v36 = 0;
  }

  else
  {
    v37 = v45;
    (*(v32 + 16))(v45, v35, v30);
    sub_21C6EA794(v35, &qword_27CDEFFE8, &qword_21CBAE1B0);
    v38 = sub_21CB818B4();
    (*(v32 + 8))(v37, v30);
    v36 = *(v38 + 16);
  }

  v39 = MEMORY[0x277D83C10];
  *(v33 + 56) = MEMORY[0x277D83B88];
  *(v33 + 64) = v39;
  *(v33 + 32) = v36;
  v40 = sub_21C9FE8F0();
  v42 = v41;
  *(v33 + 96) = MEMORY[0x277D837D0];
  *(v33 + 104) = sub_21C7C0050();
  *(v33 + 72) = v40;
  *(v33 + 80) = v42;
  v43 = sub_21CB85594();

  return v43;
}

unint64_t sub_21CA01030()
{
  v0 = sub_21CB81024();
  v93 = *(v0 - 8);
  v94 = v0;
  v1 = *(v93 + 64);
  MEMORY[0x28223BE20](v0);
  v91 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v85 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v85 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v85 - v10;
  MEMORY[0x28223BE20](v12);
  v92 = &v85 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v85 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v85 - v19;
  v21 = sub_21CB818C4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(type metadata accessor for PMCredentialExchangeOnboardingView() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A48, &qword_21CBBC058);
  sub_21CB84D54();
  v27 = v21;
  v28 = v22;
  if ((*(v22 + 48))(v20, 1, v27) == 1)
  {
    sub_21C6EA794(v20, &qword_27CDEFFE8, &qword_21CBAE1B0);
    return 0;
  }

  v29 = *(v22 + 32);
  v90 = v27;
  v29(v25, v20, v27);
  v30 = sub_21CA03A60();
  v31 = v30[2];
  if (v31 <= 1)
  {
    if (!v31)
    {

      if (qword_27CDEA3F8 == -1)
      {
LABEL_17:
        v52 = sub_21CB81C84();
        __swift_project_value_buffer(v52, qword_27CE18598);
        v53 = sub_21CB81C64();
        v54 = sub_21CB85AF4();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_21C6E5000, v53, v54, "Export view brought up with no selected credentials!", v55, 2u);
          MEMORY[0x21CF16D90](v55, -1, -1);
        }

        goto LABEL_20;
      }

LABEL_32:
      swift_once();
      goto LABEL_17;
    }

    if (v31 == 1)
    {
      v32 = v25;
      sub_21CB81014();
      sub_21CB81004();
      (*(v93 + 8))(v16, v94);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v25 = swift_allocObject();
      *(v25 + 1) = xmmword_21CBA15B0;
      v33 = sub_21C9FE8F0();
      v28 = v34;
      v35 = MEMORY[0x277D837D0];
      *(v25 + 7) = MEMORY[0x277D837D0];
      v36 = sub_21C7C0050();
      *(v25 + 8) = v36;
      *(v25 + 4) = v33;
      *(v25 + 5) = v28;
      *(v25 + 12) = v35;
      *(v25 + 13) = v36;
      if (v30[2])
      {
        v38 = v30[4];
        v37 = v30[5];

        *(v25 + 9) = v38;
        *(v25 + 10) = v37;
LABEL_25:
        v51 = sub_21CB85594();

        (*(v22 + 8))(v32, v90);
        return v51;
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_15:

LABEL_20:
    (*(v28 + 8))(v25, v90);
    return 0;
  }

  if (v31 == 2)
  {
    v32 = v25;
    sub_21CB81014();
    sub_21CB81004();
    (*(v93 + 8))(v16, v94);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_21CBA15A0;
    v57 = sub_21C9FE8F0();
    v59 = v58;
    v60 = MEMORY[0x277D837D0];
    *(v56 + 56) = MEMORY[0x277D837D0];
    result = sub_21C7C0050();
    *(v56 + 64) = result;
    *(v56 + 32) = v57;
    *(v56 + 40) = v59;
    *(v56 + 96) = v60;
    *(v56 + 104) = result;
    v61 = v30[2];
    if (v61)
    {
      v62 = v30[5];
      *(v56 + 72) = v30[4];
      *(v56 + 80) = v62;
      *(v56 + 136) = v60;
      *(v56 + 144) = result;
      if (v61 != 1)
      {
        v64 = v30[6];
        v63 = v30[7];

        *(v56 + 112) = v64;
        *(v56 + 120) = v63;
        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v31 != 3)
  {
    goto LABEL_15;
  }

  v88 = v25;
  v89 = v22;
  v39 = *(sub_21CB818B4() + 16);

  if (v39 == 3)
  {
    sub_21CB81014();
    sub_21CB81004();
    (*(v93 + 8))(v16, v94);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_21CBA1590;
    v41 = sub_21C9FE8F0();
    v43 = v42;
    v44 = MEMORY[0x277D837D0];
    *(v40 + 56) = MEMORY[0x277D837D0];
    result = sub_21C7C0050();
    *(v40 + 64) = result;
    *(v40 + 32) = v41;
    *(v40 + 40) = v43;
    *(v40 + 96) = v44;
    *(v40 + 104) = result;
    v46 = v30[2];
    if (v46)
    {
      v47 = v30[5];
      *(v40 + 72) = v30[4];
      *(v40 + 80) = v47;
      *(v40 + 136) = v44;
      *(v40 + 144) = result;
      if (v46 != 1)
      {
        v48 = v30[7];
        *(v40 + 112) = v30[6];
        *(v40 + 120) = v48;
        *(v40 + 176) = v44;
        *(v40 + 184) = result;
        if (v46 >= 3)
        {
          v50 = v30[8];
          v49 = v30[9];

          *(v40 + 152) = v50;
          *(v40 + 160) = v49;
          v51 = sub_21CB85594();

          (*(v89 + 8))(v88, v90);
          return v51;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }

    goto LABEL_35;
  }

  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v65 = sub_21CB81034();
  v86 = *(v65 - 8);
  v87 = v65;
  v66 = *(v86 + 72);
  v85 = (*(v86 + 80) + 32) & ~*(v86 + 80);
  v67 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  v68 = v91;
  sub_21CB81014();
  sub_21CB80FE4();
  v69 = *(v93 + 8);
  v70 = v68;
  v71 = v94;
  v69(v70, v94);
  v69(v5, v71);
  v69(v8, v71);
  v69(v11, v71);
  swift_setDeallocating();
  (*(v86 + 8))(v67 + v85, v87);
  swift_deallocClassInstance();
  sub_21CB81004();
  v69(v92, v71);
  v69(v16, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_21CBBC030;
  v73 = sub_21C9FE8F0();
  v75 = v74;
  v76 = MEMORY[0x277D837D0];
  *(v72 + 56) = MEMORY[0x277D837D0];
  result = sub_21C7C0050();
  *(v72 + 64) = result;
  *(v72 + 32) = v73;
  *(v72 + 40) = v75;
  *(v72 + 96) = v76;
  *(v72 + 104) = result;
  v77 = v30[2];
  if (!v77)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v78 = v30[5];
  *(v72 + 72) = v30[4];
  *(v72 + 80) = v78;
  *(v72 + 136) = v76;
  *(v72 + 144) = result;
  if (v77 == 1)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v79 = v30[7];
  *(v72 + 112) = v30[6];
  *(v72 + 120) = v79;
  *(v72 + 176) = v76;
  *(v72 + 184) = result;
  if (v77 >= 3)
  {
    v81 = v30[8];
    v80 = v30[9];

    *(v72 + 152) = v81;
    *(v72 + 160) = v80;
    v82 = v88;
    v83 = *(sub_21CB818B4() + 16);

    v84 = MEMORY[0x277D83C10];
    *(v72 + 216) = MEMORY[0x277D83B88];
    *(v72 + 224) = v84;
    *(v72 + 192) = v83 - 3;
    v51 = sub_21CB85594();

    (*(v89 + 8))(v82, v90);
    return v51;
  }

LABEL_40:
  __break(1u);
  return result;
}

id sub_21CA01AEC()
{
  v1 = v0;
  v2 = sub_21CB823B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB80E34();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMCredentialExchangeOnboardingView();
  v13 = (v0 + *(v12 + 48));
  v14 = *(v13 + 2);
  aBlock = *v13;
  v50 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
  result = sub_21CB84D54();
  v16 = v55;
  if (v55)
  {
    v43 = v12;
    v45 = v3;
    v46 = v2;
    v47 = v54;
    sub_21CB80E24();
    v17 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v18 = sub_21CB85584();
    v19 = [v17 initWithActivityType_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4B60, &qword_21CBBC200);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CBA0690;
    *&aBlock = sub_21CB81594();
    *(&aBlock + 1) = v21;
    sub_21CB86034();
    *(inited + 96) = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 72));
    (*(v8 + 16))(boxed_opaque_existential_0, v11, v7);
    sub_21CB12FF8(inited);
    swift_setDeallocating();
    sub_21C6EA794(inited + 32, &qword_27CDF89B0, &unk_21CBBC208);
    v23 = sub_21CB85464();

    v48 = v19;
    [v19 setUserInfo_];

    v24 = *(v1 + 16);
    v25 = [v24 delegate];
    if (v25)
    {
      v26 = v25;
      v27 = sub_21CB80E04();
      [v26 setTokenForImport_];

      swift_unknownObjectRelease();
    }

    v28 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    v29 = sub_21CA050C8(v47, v16, 0);
    v44 = v1;
    v42 = v8;
    v30 = v29;
    v31 = [objc_allocWithZone(MEMORY[0x277CC1F00]) init];
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v32 = result;

      v52 = nullsub_1;
      v53 = 0;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v50 = sub_21CB031D0;
      v51 = &block_descriptor_31_0;
      v33 = _Block_copy(&aBlock);
      v34 = v48;
      v35 = v30;
      v36 = v31;
      [v32 openUserActivity:v34 usingApplicationRecord:v35 configuration:v36 completionHandler:v33];
      _Block_release(v33);

      v37 = v42;
      v38 = v46;
      v39 = v44 + *(v43 + 32);
      sub_21C95B2C8(v6);
      sub_21CB823A4();
      (*(v45 + 8))(v6, v38);
      *(v24 + OBJC_IVAR___PMCredentialExchangeViewController_viewDidCancel) = 0;
      v40 = [v24 delegate];
      if (v40)
      {
        [v40 viewControllerDidCancel_];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return (*(v37 + 8))(v11, v7);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21CA021D0@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = sub_21CB836B4();
  v3 = *(v2 - 8);
  v48 = v2;
  v49 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v47 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_21CB83764();
  v43 = *(v46 - 8);
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v46);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4B50, &unk_21CBBC1F0);
  v40 = *(v9 - 8);
  v10 = *(v40 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4B48, &qword_21CBBC1E8);
  v41 = *(v13 - 8);
  v14 = *(v41 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4B40, &qword_21CBBC1E0);
  v42 = *(v17 - 8);
  v18 = *(v42 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v39 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4B38, &qword_21CBBC1D8);
  v22 = *(v21 - 8);
  v44 = v21;
  v45 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v39 - v24;
  v26 = (v1 + *(type metadata accessor for PMCredentialExchangeOnboardingView() + 48));
  v27 = *(v26 + 2);
  v56 = *v26;
  v57 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
  sub_21CB84D74();
  v51 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4B70, &qword_21CBBC230);
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4B78, &qword_21CBBC238);
  v29 = sub_21CA07498();
  *&v56 = v28;
  *(&v56 + 1) = v29;
  swift_getOpaqueTypeConformance2();
  sub_21CB83F24();
  v30 = sub_21CB83D44();
  sub_21CB83754();
  v31 = sub_21C6EADEC(&qword_27CDF4B58, &qword_27CDF4B50, &unk_21CBBC1F0);
  MEMORY[0x21CF13D70](v30, 0, 0, v8, v9, v31);
  (*(v43 + 8))(v8, v46);
  (*(v40 + 8))(v12, v9);
  v52 = v9;
  v53 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21CB845F4();
  (*(v41 + 8))(v16, v13);
  v33 = v47;
  sub_21CB836A4();
  v52 = v13;
  v53 = OpaqueTypeConformance2;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = MEMORY[0x277CDE0D0];
  v36 = v48;
  sub_21CB849F4();
  (*(v49 + 8))(v33, v36);
  (*(v42 + 8))(v20, v17);
  v52 = v17;
  v53 = v36;
  v54 = v34;
  v55 = v35;
  swift_getOpaqueTypeConformance2();
  v37 = v44;
  sub_21CB84604();
  return (*(v45 + 8))(v25, v37);
}

uint64_t sub_21CA027E8(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4B78, &qword_21CBBC238);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19[-v9];
  v20 = a1;
  sub_21CB81014();
  v11 = sub_21CB81004();
  v13 = v12;
  (*(v3 + 8))(v6, v2);
  v21 = v11;
  v22 = v13;
  sub_21C71F3FC();
  v21 = sub_21CB84054();
  v22 = v14;
  v23 = v15 & 1;
  v24 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4BA0, &qword_21CBBC248);
  sub_21CA075E8();
  sub_21CB85034();
  v17 = [objc_opt_self() systemGroupedBackgroundColor];
  v21 = sub_21CB84A24();
  *&v10[*(v7 + 36)] = sub_21CB84F14();
  sub_21CB83CD4();
  sub_21CA07498();
  sub_21CB84434();
  return sub_21C6EA794(v10, &qword_27CDF4B78, &qword_21CBBC238);
}

uint64_t sub_21CA02A6C(uint64_t a1)
{
  v2 = type metadata accessor for PMCredentialExchangeOnboardingView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = sub_21CA02C24();
  sub_21CA05744(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_21CA07E44(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for PMCredentialExchangeOnboardingView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4BC0, &unk_21CBBC260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4BB0, &unk_21CBBC250);
  sub_21C6EADEC(&qword_27CDF4BC8, &qword_27CDF4BC0, &unk_21CBBC260);
  sub_21CA0766C();
  sub_21CA077CC();
  return sub_21CB84FF4();
}

char *sub_21CA02C24()
{
  v1 = [objc_opt_self() sharedManager];
  v2 = [v1 extensionsSync];

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_21C6E8F4C(0, qword_280E22EE0, 0x277CCA9C8);
  sub_21C9577B8();
  v3 = sub_21CB859E4();

  MEMORY[0x28223BE20](v4);
  v23[2] = v0;
  sub_21C9FBA10(sub_21CA07820, v23, v3);
  v6 = v5;

  v7 = *v0;
  v8 = v0[1];
  v9 = *MEMORY[0x277D49CC0];
  if (v7 == sub_21CB855C4() && v8 == v10)
  {
  }

  else
  {
    v12 = sub_21CB86344();

    if ((v12 & 1) == 0)
    {
      v13 = sub_21CB855C4();
      v15 = v14;
      v16 = objc_opt_self();
      v17 = objc_opt_self();
      v18 = v9;
      [v17 cellIconSize];
      v19 = [v16 iconForApplicationIdentifier:v18 size:?];

      v20 = *(v6 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v6;
      if (!isUniquelyReferenced_nonNull_native || v20 >= *(v6 + 3) >> 1)
      {
        v6 = sub_21CA4FBC4(isUniquelyReferenced_nonNull_native, v20 + 1, 1, v6);
        v24 = v6;
      }

      sub_21CAA1F18(0, 0, 1, v13, v15, v19);
    }
  }

  return v6;
}

uint64_t sub_21CA02E5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  result = sub_21C9FE9CC(*a1, v6);
  v9 = result;
  if (result)
  {
    v10 = (a2 + *(type metadata accessor for PMCredentialExchangeOnboardingView() + 48));
    v16 = *v10;
    v17 = *(v10 + 2);
    v11 = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
    result = sub_21CB84D54();
    if (v15)
    {
      if (v5 == v14 && v15 == v6)
      {

        v12 = 1;
      }

      else
      {
        v12 = sub_21CB86344();
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12 & 1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v13 = 0;
  }

  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v9;
  *(a3 + 32) = v13;
  return result;
}

uint64_t sub_21CA02F80@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v41 - v5;
  if (*(a1 + 32))
  {
    v7 = sub_21CB84BB4();
    v8 = sub_21CB83DC4();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = sub_21CB83E14();
    sub_21C6EA794(v6, &qword_27CDEBB58, &qword_21CBAF8A0);
    KeyPath = swift_getKeyPath();
    v11 = [objc_opt_self() systemBlueColor];
    v12 = sub_21CB84A24();
    v51 = v7;
    v52 = KeyPath;
    v53 = v9;
    v54 = v12;
    v55 = 0;
  }

  else
  {
    v13 = sub_21CB84BB4();
    v14 = sub_21CB83DC4();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = sub_21CB83E14();
    sub_21C6EA794(v6, &qword_27CDEBB58, &qword_21CBAF8A0);
    v16 = swift_getKeyPath();
    v17 = [objc_opt_self() systemFillColor];
    v18 = sub_21CB84A24();
    v51 = v13;
    v52 = v16;
    v53 = v15;
    v54 = v18;
    v55 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4570, &unk_21CBBADB0);
  sub_21C8FD504();
  sub_21CB83494();
  v19 = v58;
  v51 = *(a1 + 16);
  v20 = *(&v57 + 1);
  v45 = *(&v56 + 1);
  v46 = v56;
  v47 = v57;
  if (v51)
  {
    sub_21C6EDBAC(&v51, &v56, &qword_27CDEBA08, &qword_21CBA2A40);
    v21 = v20;
    sub_21CA07EAC();
    sub_21C6EDBAC(&v51, &v56, &qword_27CDEBA08, &qword_21CBA2A40);
    v22 = sub_21CB84BA4();
    v43 = sub_21CB832C4();
    sub_21C6EA794(&v51, &qword_27CDEBA08, &qword_21CBA2A40);

    v42 = sub_21C7902AC;
  }

  else
  {
    v21 = *(&v57 + 1);
    sub_21CA07EAC();
    v22 = 0;
    v42 = 0;
    v43 = 0;
  }

  v23 = [*(a1 + 24) localizedName];
  v24 = sub_21CB855C4();
  v26 = v25;

  *&v56 = v24;
  *(&v56 + 1) = v26;
  sub_21C71F3FC();
  v27 = sub_21CB84054();
  v29 = v28;
  v31 = v30;
  LOBYTE(v56) = v19;
  LOBYTE(v23) = v32 & 1;
  v50 = v32 & 1;
  v49 = v19;
  sub_21C79B058(v27, v28, v32 & 1);

  v41[2] = v46;
  v41[3] = v47;
  v41[1] = v21;
  sub_21CA07EAC();
  v33 = v22;
  v34 = v22;
  v35 = v42;
  v36 = v43;
  sub_21CA07F08(v33);
  sub_21C79B058(v27, v29, v23);

  sub_21CA07F48(v34);
  sub_21CA07F88();
  sub_21C74A72C(v27, v29, v23);

  v48 = v23;
  v37 = v49;
  v38 = v44;
  v39 = v47;
  *v44 = v46;
  v38[1] = v39;
  *(v38 + 32) = v37;
  *(v38 + 5) = v34;
  *(v38 + 6) = v36;
  *(v38 + 7) = v35;
  *(v38 + 8) = 0;
  *(v38 + 9) = v27;
  *(v38 + 10) = v29;
  *(v38 + 88) = v23;
  *(v38 + 12) = v31;
  sub_21C74A72C(v27, v29, v50);

  sub_21CA07F48(v34);
  return sub_21CA07F88();
}

double sub_21CA03490@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v20[0] = *v1;
  v20[1] = v3;
  v21 = *(v1 + 32);
  v4 = sub_21CB83074();
  v19 = 1;
  sub_21CA02F80(v20, &v11);
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v29[0] = v11;
  v29[1] = v12;
  v29[2] = v13;
  v29[3] = v14;
  v29[4] = v15;
  v29[5] = v16;
  v30 = v17;
  sub_21C6EDBAC(&v22, &v10, &qword_27CDF4BE0, &unk_21CBBC4D8);
  sub_21C6EA794(v29, &qword_27CDF4BE0, &unk_21CBBC4D8);
  *&v18[55] = v25;
  *&v18[71] = v26;
  *&v18[87] = v27;
  *&v18[103] = v28;
  *&v18[7] = v22;
  *&v18[23] = v23;
  *&v18[39] = v24;
  v5 = *&v18[32];
  *(a1 + 65) = *&v18[48];
  v6 = *&v18[80];
  *(a1 + 81) = *&v18[64];
  *(a1 + 97) = v6;
  *(a1 + 112) = *&v18[95];
  result = *v18;
  v8 = *&v18[16];
  *(a1 + 17) = *v18;
  *(a1 + 33) = v8;
  v9 = v19;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 49) = v5;
  return result;
}

void sub_21CA035D8(id *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 sf_bundleIdentifierForContainingApp];
  if (v6)
  {
    v7 = v6;
    v8 = sub_21CB855C4();
    v10 = v9;
    if (v8 != *a2 || v9 != a2[1])
    {
      v12 = v8;
      if ((sub_21CB86344() & 1) == 0)
      {
        v13 = [objc_opt_self() sharedManager];
        v14 = [v13 extensionSupportsCredentialExchange_];

        if (v14)
        {
          v15 = objc_opt_self();
          [objc_opt_self() cellIconSize];
          v16 = [v15 iconForApplicationIdentifier:v7 size:?];

          *a3 = v12;
          a3[1] = v10;
          a3[2] = v16;
          return;
        }
      }
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

uint64_t sub_21CA03718@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMOnboardingView(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1)
  {
    v32 = *v1;
  }

  else
  {
    v32 = sub_21CB84C14();
  }

  v11 = v1[1];
  v12 = v1[2];
  v13 = v1[4];
  v30 = v1[3];
  v31 = v11;

  sub_21CB81014();
  sub_21CB81004();
  (*(v3 + 8))(v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21CBA0690;
  v15 = v1[5];
  v16 = v1[6];
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_21C7C0050();
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;

  v17 = sub_21CB85594();
  v19 = v18;

  v20 = v1[7];
  v21 = v1[8];
  v22 = v31;
  *v10 = v32;
  *(v10 + 1) = v22;
  v23 = v30;
  *(v10 + 2) = v12;
  *(v10 + 3) = v23;
  *(v10 + 4) = v13;
  *(v10 + 5) = 0;
  *(v10 + 24) = 2;
  *(v10 + 7) = v17;
  *(v10 + 8) = v19;
  *(v10 + 9) = v20;
  *(v10 + 10) = v21;
  v10[88] = 0;
  *(v10 + 6) = 0u;
  *(v10 + 7) = 0u;
  v10[128] = 0;
  v24 = *(v7 + 28);
  *&v10[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();

  LOBYTE(v21) = sub_21CB83CF4();
  v25 = sub_21CB82934();
  v26 = v10;
  v27 = v33;
  sub_21CA07E44(v26, v33, type metadata accessor for PMOnboardingView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4BD8, &qword_21CBBC4D0);
  v29 = v27 + *(result + 36);
  *v29 = v25;
  *(v29 + 8) = v21;
  return result;
}

uint64_t sub_21CA03A1C@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 8);
  v3 = *v1;
  v4 = v1[1];
  return sub_21CA03718(a1);
}

uint64_t sub_21CA03A60()
{
  v1 = v0;
  v2 = sub_21CB81424();
  v115 = *(v2 - 8);
  v3 = v115[8];
  MEMORY[0x28223BE20](v2);
  v114 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v103 = &v99 - v6;
  MEMORY[0x28223BE20](v7);
  v105 = &v99 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v99 - v10;
  MEMORY[0x28223BE20](v12);
  v121 = &v99 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v99 - v16;
  v18 = sub_21CB818C4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PMCredentialExchangeOnboardingView();
  v24 = *(v23 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A48, &qword_21CBBC058);
  sub_21CB84D54();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_21C6EA794(v17, &qword_27CDEFFE8, &qword_21CBAE1B0);
    return MEMORY[0x277D84F90];
  }

  (*(v19 + 32))(v22, v17, v18);
  v26 = *(v23 + 52);
  v108 = v0;
  v27 = (v0 + v26);
  v28 = *(v27 + 2);
  v124 = *v27;
  v125 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4B20, &unk_21CBBC1B8);
  sub_21CB84D54();
  v29 = v122;
  v118 = v2;
  if (!v122)
  {
LABEL_36:
    v60 = sub_21CB818B4();
    v31 = *(sub_21CB818B4() + 16);

    if (v31 >= 3)
    {
      v61 = 3;
    }

    else
    {
      v61 = v31;
    }

    v34 = *(v60 + 16);
    if (v34 < v61)
    {
      goto LABEL_63;
    }

    if (v31)
    {
      v99 = v22;
      v100 = v19;
      v101 = v18;
      *&v124 = MEMORY[0x277D84F90];
      v62 = v115;
      v63 = (v60 + ((*(v115 + 80) + 32) & ~*(v115 + 80)));
      sub_21C7B0C0C(0, v61, 0);
      v120 = v62[9];
      v121 = v63;
      v11 = v62[2];
      v25 = v124;
      v64 = v114;
      (v11)(v114, v63, v2);
      v22 = sub_21C9F8508();
      v1 = v65;
      v66 = v62[1];
      v115 = v62 + 1;
      v66(v64, v2);
      *&v124 = v25;
      v19 = *(v25 + 16);
      v34 = *(v25 + 24);
      v2 = v19 + 1;
      if (v19 >= v34 >> 1)
      {
        goto LABEL_64;
      }

      goto LABEL_42;
    }

    (*(v19 + 8))(v22, v18);
    return MEMORY[0x277D84F90];
  }

  v100 = v19;
  v101 = v18;
  v116 = v123;
  v99 = v22;
  v30 = sub_21CB818B4();
  v31 = v30;
  v22 = *(v30 + 16);
  if (!v22)
  {

    v32 = MEMORY[0x277D84F90];
LABEL_52:

    v85 = v32[2];
    if (v85)
    {
      *&v124 = MEMORY[0x277D84F90];
      sub_21C7B0C0C(0, v85, 0);
      v25 = v124;
      v86 = v115[2];
      v87 = *(v115 + 80);
      v119 = v32;
      v88 = v32 + ((v87 + 32) & ~v87);
      v120 = v115[9];
      v121 = v86;
      v89 = (v115 + 1);
      do
      {
        v90 = v114;
        (v121)(v114, v88, v2);
        v91 = sub_21C9F8508();
        v92 = v2;
        v94 = v93;
        (*v89)(v90, v92);
        *&v124 = v25;
        v96 = *(v25 + 16);
        v95 = *(v25 + 24);
        if (v96 >= v95 >> 1)
        {
          sub_21C7B0C0C((v95 > 1), v96 + 1, 1);
          v25 = v124;
        }

        *(v25 + 16) = v96 + 1;
        v97 = v25 + 16 * v96;
        *(v97 + 32) = v91;
        *(v97 + 40) = v94;
        v88 = v120 + v88;
        --v85;
        v2 = v118;
      }

      while (v85);
      (*(v100 + 8))(v99, v101);

      return v25;
    }

    (*(v100 + 8))(v99, v101);

    return MEMORY[0x277D84F90];
  }

  v113 = 0;
  v1 = 0;
  v104 = 0;
  v110 = (*(v115 + 80) + 32) & ~*(v115 + 80);
  v112 = v30 + v110;
  v120 = v115 + 2;
  v19 = (v115 + 1);
  v102 = (v115 + 4);
  v32 = MEMORY[0x277D84F90];
  v109 = v29;
  v107 = v30;
  v106 = v22;
  while (1)
  {
    v34 = v31[2];
    if (v1 >= v34)
    {
      goto LABEL_62;
    }

    v35 = v115[9];
    v117 = v1;
    v119 = v35;
    v36 = v112 + v35 * v1;
    v1 = v115[2];
    v37 = v121;
    (v1)(v121, v36, v2);
    v38 = sub_21CA04624(v37, v29, v116);
    v39 = v32[2];
    if (v113 < v38 || v39 < 3)
    {
      break;
    }

    v33 = *v19;
LABEL_8:
    v1 = v117 + 1;
    v33(v121, v2);
    if (v1 == v22)
    {

      goto LABEL_52;
    }
  }

  v111 = v19 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31 = v32;
  v22 = v32 + v110;
  v40 = -v39;
  v41 = -1;
  while (1)
  {
    v34 = v31[2];
    if (v40 + v41 == -1)
    {
      v47 = v31;
      if (v34 != 3)
      {
        v18 = v108;
        goto LABEL_25;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v108;
      if (isUniquelyReferenced_nonNull_native)
      {
        v49 = v31[2];
        if (v49)
        {
LABEL_23:
          v50 = v49 - 1;
          (*v19)(v47 + v110 + (v49 - 1) * v119, v2);
          v47[2] = v50;
LABEL_25:
          (v1)(v105, v121, v2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_21CA4FB9C(0, v47[2] + 1, 1, v47);
          }

          v52 = v47[2];
          v51 = v47[3];
          if (v52 >= v51 >> 1)
          {
            v53 = sub_21CA4FB9C(v51 > 1, v52 + 1, 1, v47);
          }

          else
          {
            v53 = v47;
          }

          *(v53 + 16) = v52 + 1;
          v54 = (*v102)(v53 + v110 + v52 * v119, v105, v2);
          MEMORY[0x28223BE20](v54);
          v55 = v109;
          *(&v99 - 4) = v18;
          *(&v99 - 3) = v55;
          *(&v99 - 2) = v116;
          *&v124 = v53;

          v56 = v104;
          sub_21CA05008(sub_21CA07310, (&v99 - 6));
          v57 = &v126;
          v104 = v56;
          if (!v56)
          {
            v32 = v124;

            v58 = v32[2];
            if (v58)
            {
              v59 = v103;
              (v1)(v103, v32 + v110 + (v58 - 1) * v119, v2);

              v29 = v109;
              v113 = sub_21CA04624(v59, v109, v116);
              v33 = *v19;
              (*v19)(v59, v2);
              goto LABEL_32;
            }

            __break(1u);
          }

          __break(1u);
          return result;
        }
      }

      else
      {
        v47 = sub_21CAA117C(v31);
        v49 = v47[2];
        if (v49)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

    if (++v41 >= v34)
    {
      break;
    }

    (v1)(v11, v22, v2);
    v43 = sub_21C9F8508();
    v45 = v44;
    if (v43 == sub_21C9F8508() && v45 == v46)
    {

      v33 = *v19;
      v2 = v118;
      (*v19)(v11, v118);
LABEL_19:
      v29 = v109;
      v32 = v31;
LABEL_32:
      v31 = v107;
      v22 = v106;
      goto LABEL_8;
    }

    v22 = v119 + v22;
    v42 = sub_21CB86344();

    v33 = *v19;
    v2 = v118;
    (*v19)(v11, v118);
    if (v42)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  sub_21C7B0C0C((v34 > 1), v2, 1);
  v25 = v124;
LABEL_42:
  *(v25 + 16) = v2;
  v67 = v25 + 16 * v19;
  *(v67 + 32) = v22;
  *(v67 + 40) = v1;
  if (v31 != 1)
  {
    v68 = v114;
    v69 = v118;
    (v11)(v114, v120 + v121, v118);
    v70 = sub_21C9F8508();
    v72 = v71;
    (*v115)(v68, v69);
    *&v124 = v25;
    v74 = *(v25 + 16);
    v73 = *(v25 + 24);
    if (v74 >= v73 >> 1)
    {
      sub_21C7B0C0C((v73 > 1), v74 + 1, 1);
      v25 = v124;
    }

    *(v25 + 16) = v74 + 1;
    v75 = v25 + 16 * v74;
    *(v75 + 32) = v70;
    *(v75 + 40) = v72;
    if (v31 != 2)
    {
      v76 = v114;
      v77 = v118;
      (v11)(v114, &v121[2 * v120], v118);
      v78 = sub_21C9F8508();
      v80 = v79;
      (*v115)(v76, v77);
      *&v124 = v25;
      v82 = *(v25 + 16);
      v81 = *(v25 + 24);
      if (v82 >= v81 >> 1)
      {
        sub_21C7B0C0C((v81 > 1), v82 + 1, 1);
        v25 = v124;
      }

      *(v25 + 16) = v82 + 1;
      v83 = v25 + 16 * v82;
      *(v83 + 32) = v78;
      *(v83 + 40) = v80;
    }
  }

  v84 = v99;

  (*(v100 + 8))(v84, v101);
  return v25;
}

uint64_t sub_21CA04624(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_21CB81574();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21CB80BE4();
  v11 = *(v98 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v98);
  v97 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF47B0, &qword_21CBBB850);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v105 = &v80 - v16;
  v17 = sub_21CB81584();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v106 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21CB813D4();
  v22 = result;
  v96 = *(result + 16);
  if (v96)
  {
    v23 = 0;
    v102 = result + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v100 = v18 + 88;
    v101 = v18 + 16;
    v99 = *MEMORY[0x277CBA6C8];
    v88 = *MEMORY[0x277CBA750];
    v95 = (v18 + 8);
    v84 = (v18 + 96);
    v83 = (v7 + 32);
    v109 = a2 + 56;
    v107 = a3 + 7;
    v85 = (v7 + 8);
    v94 = v11 + 16;
    v93 = v11 + 8;
    v108 = a3;
    v24 = v105;
    v104 = v18;
    v86 = a1;
    while (v23 < *(v22 + 16))
    {
      v25 = *(v18 + 72);
      v103 = v23;
      v26 = v106;
      (*(v18 + 16))(v106, v102 + v25 * v23, v17);
      v27 = (*(v18 + 88))(v26, v17);
      if (v27 == v99)
      {
        sub_21CB813F4();
        v28 = sub_21CB81964();
        v29 = *(v28 - 8);
        if ((*(v29 + 48))(v24, 1, v28) == 1)
        {
          result = sub_21C6EA794(v24, &qword_27CDF47B0, &qword_21CBBB850);
          v30 = MEMORY[0x277D84F90];
        }

        else
        {
          v30 = sub_21CB81954();
          result = (*(v29 + 8))(v24, v28);
        }

        v18 = v104;
        v87 = *(v30 + 16);
        if (v87)
        {
          v50 = 0;
          v89 = v30 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
          v82 = v6;
          v81 = v10;
          v91 = v17;
          v90 = v30;
          while (1)
          {
            if (v50 >= *(v30 + 16))
            {
              goto LABEL_65;
            }

            v51 = *(v11 + 72);
            v92 = v50;
            v52 = v89 + v51 * v50;
            v53 = *(v11 + 16);
            v54 = v97;
            v55 = v11;
            v56 = v98;
            v53(v97, v52, v98);
            sub_21CB80B64();
            sub_21CB80BA4();
            v58 = v57;
            (*(v55 + 8))(v54, v56);
            if (v58)
            {
            }

            v59 = sub_21CB85584();

            v60 = [v59 safari_highLevelDomainForPasswordManager];

            v61 = sub_21CB855C4();
            v63 = v62;

            v11 = v55;
            v17 = v91;
            v18 = v104;
            v24 = v105;
            if (*(a2 + 16))
            {
              v64 = *(a2 + 40);
              sub_21CB86484();
              sub_21CB854C4();
              v65 = sub_21CB864D4();
              v66 = -1 << *(a2 + 32);
              v67 = v65 & ~v66;
              if ((*(v109 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67))
              {
                break;
              }
            }

LABEL_43:
            if (v108[2])
            {
              v71 = v108;
              v72 = v108[5];
              sub_21CB86484();
              sub_21CB854C4();
              v73 = sub_21CB864D4();
              v74 = -1 << *(v71 + 32);
              v75 = v73 & ~v74;
              if ((*(v107 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75))
              {
                v76 = ~v74;
                while (1)
                {
                  v77 = (v108[6] + 16 * v75);
                  v78 = *v77 == v61 && v77[1] == v63;
                  if (v78 || (sub_21CB86344() & 1) != 0)
                  {
                    break;
                  }

                  v75 = (v75 + 1) & v76;
                  if (((*(v107 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
                  {
                    goto LABEL_30;
                  }
                }

                v79 = 5;
LABEL_59:

                (*v95)(v106, v17);
                return v79;
              }
            }

LABEL_30:
            v50 = v92 + 1;

            v6 = v82;
            v10 = v81;
            v30 = v90;
            if (v50 == v87)
            {
              goto LABEL_54;
            }
          }

          v68 = ~v66;
          while (1)
          {
            v69 = (*(a2 + 48) + 16 * v67);
            v70 = *v69 == v61 && v69[1] == v63;
            if (v70 || (sub_21CB86344() & 1) != 0)
            {
              break;
            }

            v67 = (v67 + 1) & v68;
            if (((*(v109 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
            {
              goto LABEL_43;
            }
          }

          v79 = 10;
          goto LABEL_59;
        }

LABEL_54:

        result = (*v95)(v106, v17);
      }

      else if (v27 == v88)
      {
        v31 = v106;
        (*v84)(v106, v17);
        (*v83)(v10, v31, v6);
        v32 = sub_21CB81544();
        v34 = v33;
        if (*(a2 + 16))
        {
          v35 = *(a2 + 40);
          sub_21CB86484();
          sub_21CB854C4();
          v36 = sub_21CB864D4();
          v37 = -1 << *(a2 + 32);
          v38 = v36 & ~v37;
          if ((*(v109 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
          {
            v39 = ~v37;
            while (1)
            {
              v40 = (*(a2 + 48) + 16 * v38);
              v41 = *v40 == v32 && v40[1] == v34;
              if (v41 || (sub_21CB86344() & 1) != 0)
              {
                break;
              }

              v38 = (v38 + 1) & v39;
              if (((*(v109 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
              {
                goto LABEL_17;
              }
            }

            v79 = 10;
            goto LABEL_62;
          }
        }

LABEL_17:
        if (v108[2])
        {
          v42 = v108;
          v43 = v108[5];
          sub_21CB86484();
          sub_21CB854C4();
          v44 = sub_21CB864D4();
          v45 = -1 << *(v42 + 32);
          v46 = v44 & ~v45;
          if ((*(v107 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
          {
            v47 = ~v45;
            while (1)
            {
              v48 = (v108[6] + 16 * v46);
              v49 = *v48 == v32 && v48[1] == v34;
              if (v49 || (sub_21CB86344() & 1) != 0)
              {
                break;
              }

              v46 = (v46 + 1) & v47;
              if (((*(v107 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
              {
                goto LABEL_26;
              }
            }

            v79 = 5;
LABEL_62:

            (*v85)(v10, v6);
            return v79;
          }
        }

LABEL_26:
        (*v85)(v10, v6);

        v18 = v104;
        v24 = v105;
      }

      else
      {
        result = (*v95)(v106, v17);
      }

      v23 = v103 + 1;
      if (v103 + 1 == v96)
      {
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
  }

  else
  {
LABEL_56:

    return 1;
  }

  return result;
}

void sub_21CA05008(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v3 = v2;
  v6 = *(sub_21CB81424() - 8);
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_21C864A0C(v7);
  }

  v8 = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v9 = v7[2];
  sub_21CA059D8(a1, a2);
  *v3 = v7;
}

id sub_21CA050C8(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_21CB85584();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_21CB80B14();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_21CA051A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21CA05250(uint64_t a1)
{
  type metadata accessor for PMCredentialExchangeViewController(a1);
  sub_21C6E8F4C(319, &qword_27CDF4A60, 0x277D49AD8);
  if (v1 <= 0x3F)
  {
    sub_21C708B28(319, &qword_27CDEC388, &qword_27CDEC390, &qword_21CBA40E0, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_21C70DAD0(319, &qword_27CDEB178, MEMORY[0x277CDD848]);
      if (v3 <= 0x3F)
      {
        sub_21C70DAD0(319, &qword_27CDEC498, MEMORY[0x277CDF3E0]);
        if (v4 <= 0x3F)
        {
          sub_21C708B28(319, &qword_27CDF4A68, &qword_27CDEFFE8, &qword_21CBAE1B0, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_21C7210DC();
            if (v6 <= 0x3F)
            {
              sub_21C708B28(319, &qword_27CDF2C90, &unk_27CDED260, &qword_21CBA1C60, MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_21C708B28(319, &qword_27CDF4A70, &qword_27CDF4A78, &qword_21CBBC088, MEMORY[0x277CE10B8]);
                if (v8 <= 0x3F)
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
}

uint64_t sub_21CA054BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21CA05504()
{
  result = qword_27CDF4AD8;
  if (!qword_27CDF4AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4AB0, &qword_21CBBC148);
    type metadata accessor for PMOnboardingView(255);
    sub_21CA054BC(&qword_27CDEE360, type metadata accessor for PMOnboardingView);
    sub_21CA0560C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4AD8);
  }

  return result;
}

unint64_t sub_21CA0560C()
{
  result = qword_27CDF4AE0;
  if (!qword_27CDF4AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4AE0);
  }

  return result;
}

unint64_t sub_21CA05660()
{
  result = qword_27CDF4AF0;
  if (!qword_27CDF4AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4A80, &qword_21CBBC118);
    sub_21C6EADEC(&qword_27CDF4AF8, &qword_27CDF4B00, &qword_21CBBC198);
    sub_21C6EADEC(&qword_27CDF4B08, &qword_27CDF4AE8, &qword_21CBBC190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4AF0);
  }

  return result;
}

uint64_t sub_21CA05744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMCredentialExchangeOnboardingView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CA057DC()
{
  result = qword_27CDF4B10;
  if (!qword_27CDF4B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4A98, &qword_21CBBC130);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4A88, &qword_21CBBC120);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4A80, &qword_21CBBC118);
    sub_21CA05660();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4B10);
  }

  return result;
}

uint64_t sub_21CA058E8(uint64_t a1)
{
  v4 = *(type metadata accessor for PMCredentialExchangeOnboardingView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21C9FE468(a1, v6, v7, v1 + v5);
}

void sub_21CA059D8(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  v6 = sub_21CB862E4();
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21CB81424();
        v9 = sub_21CB85844();
        *(v9 + 16) = v8;
      }

      v10 = *(sub_21CB81424() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_21CA05E00(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_21CA05B14(0, v5, 1, a1, a2);
  }
}

void sub_21CA05B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v7 = v6;
  v53 = a5;
  v54 = a4;
  v11 = sub_21CB81424();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v48 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v55 = &v39 - v15;
  v19 = MEMORY[0x28223BE20](v16);
  v40 = a2;
  if (a3 != a2)
  {
    v51 = &v39 - v17;
    v20 = *v5;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v49 = v22;
    v50 = (v21 - 8);
    v52 = v21;
    v46 = (v21 + 16);
    v47 = v20;
    v24 = (v20 + v23 * (a3 - 1));
    v45 = -v23;
    v25 = a1 - a3;
    v39 = v23;
    v26 = v20 + v23 * a3;
    v27 = v55;
    while (2)
    {
      v43 = v24;
      v44 = a3;
      v41 = v26;
      v42 = v25;
      v28 = v24;
      while (1)
      {
        v29 = v51;
        v30 = v49;
        (v49)(v51, v26, v11, v19);
        v30(v27, v28, v11);
        v31 = v54(v29, v27);
        if (v7)
        {
          v38 = *v50;
          (*v50)(v27, v11);
          v38(v29, v11);
          return;
        }

        v32 = v31;
        v33 = v27;
        v34 = *v50;
        (*v50)(v33, v11);
        v34(v29, v11);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v47)
        {
          __break(1u);
          return;
        }

        v35 = *v46;
        v36 = v48;
        (*v46)(v48, v26, v11);
        swift_arrayInitWithTakeFrontToBack();
        v35(v28, v36, v11);
        v28 += v45;
        v26 += v45;
        v37 = __CFADD__(v25++, 1);
        v27 = v55;
        v7 = 0;
        if (v37)
        {
          goto LABEL_11;
        }
      }

      v27 = v55;
      v7 = 0;
LABEL_11:
      a3 = v44 + 1;
      v24 = &v43[v39];
      v25 = v42 - 1;
      v26 = v41 + v39;
      if (v44 + 1 != v40)
      {
        continue;
      }

      break;
    }
  }
}

void sub_21CA05E00(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v143 = a1;
  v164 = sub_21CB81424();
  v12 = *(*(v164 - 8) + 64);
  MEMORY[0x28223BE20](v164);
  v147 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v150 = &v135 - v15;
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v135 - v19;
  MEMORY[0x28223BE20](v21);
  v141 = &v135 - v22;
  MEMORY[0x28223BE20](v23);
  v30 = MEMORY[0x28223BE20](&v135 - v24);
  v162 = v27;
  v163 = a3;
  v31 = a3[1];
  if (v31 < 1)
  {
    v33 = MEMORY[0x277D84F90];
    v34 = a4;
LABEL_104:
    a4 = *v143;
    if (*v143)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_106;
    }

    goto LABEL_147;
  }

  v142 = &v135 - v26;
  v140 = v25;
  v152 = v20;
  v148 = v29;
  v149 = v28;
  v138 = a6;
  v32 = 0;
  v160 = (v27 + 8);
  v161 = v27 + 16;
  v156 = (v27 + 32);
  v33 = MEMORY[0x277D84F90];
  v157 = a5;
  v34 = a4;
  v159 = a4;
  while (1)
  {
    v35 = v32;
    v144 = v33;
    if ((v32 + 1) < v31)
    {
      v145 = v32;
      v146 = v31;
      v36 = *v163;
      v37 = *(v162 + 72);
      a4 = *v163 + v37 * (v32 + 1);
      v38 = *(v162 + 16);
      v39 = v164;
      v38(v142, a4, v164, v30);
      v158 = v37;
      v139 = v36;
      v40 = &v36[v37 * v145];
      v41 = v140;
      v153 = v38;
      (v38)(v140, v40, v39);
      v42 = v142;
      LODWORD(v155) = v34(v142, v41);
      if (v7)
      {
        v134 = *v160;
        (*v160)(v41, v39);
        v134(v42, v39);
        goto LABEL_117;
      }

      v165 = 0;
      v43 = *v160;
      (*v160)(v41, v39);
      v151 = v43;
      (v43)(v42, v39);
      v137 = v146 - 1;
      v154 = v146 - 2;
      v44 = v145;
      a5 = v157;
      v45 = v158;
      v46 = &v139[v158 * (v145 + 2)];
      v47 = v141;
      while (v154 != v44)
      {
        v48 = v164;
        v49 = v153;
        (v153)(v47, v46, v164);
        v50 = a5;
        v51 = v152;
        (v49)(v152, a4, v48);
        v52 = v50;
        v53 = v165;
        v54 = v159(v47, v51);
        v165 = v53;
        if (v53)
        {
          v132 = v151;
          (v151)(v51, v48);
          v132(v47, v48);
LABEL_117:

          return;
        }

        v55 = v54;
        v56 = v151;
        (v151)(v51, v48);
        v56(v47, v48);
        ++v44;
        v45 = v158;
        v46 += v158;
        a4 += v158;
        a5 = v52;
        if ((v155 ^ v55))
        {
          v57 = v44 + 1;
          goto LABEL_12;
        }
      }

      v44 = v137;
      v57 = v146;
LABEL_12:
      v35 = v145;
      if (v155)
      {
        if (v57 < v145)
        {
          goto LABEL_141;
        }

        v33 = v164;
        if (v145 <= v44)
        {
          a4 = v45 * (v57 - 1);
          v58 = v57;
          v59 = v57 * v45;
          v146 = v58;
          v60 = v58;
          v61 = v145;
          v62 = v145 * v45;
          do
          {
            if (v61 != --v60)
            {
              v64 = *v163;
              if (!*v163)
              {
                goto LABEL_145;
              }

              v65 = *v156;
              (*v156)(v147, &v64[v62], v164);
              if (v62 < a4 || &v64[v62] >= &v64[v59])
              {
                v63 = v164;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v63 = v164;
                if (v62 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v65(&v64[a4], v147, v63);
              a5 = v157;
              v45 = v158;
              v33 = v63;
            }

            ++v61;
            a4 -= v45;
            v59 -= v45;
            v62 += v45;
          }

          while (v61 < v60);
          v7 = v165;
          v34 = v159;
          v35 = v145;
          v57 = v146;
        }

        else
        {
          v7 = v165;
          v34 = v159;
        }
      }

      else
      {
        v33 = v164;
        v7 = v165;
        v34 = v159;
      }
    }

    else
    {
      v57 = (v32 + 1);
      v33 = v164;
    }

    v66 = v163[1];
    if (v57 < v66)
    {
      if (__OFSUB__(v57, v35))
      {
        goto LABEL_137;
      }

      if (v57 - v35 < v138)
      {
        if (__OFADD__(v35, v138))
        {
          __break(1u);
        }

        else
        {
          v146 = v57;
          if (&v35[v138] >= v66)
          {
            v67 = v66;
          }

          else
          {
            v67 = &v35[v138];
          }

          if (v67 >= v35)
          {
            if (v146 == v67)
            {
              v57 = v146;
              goto LABEL_38;
            }

            v165 = v7;
            v114 = *v163;
            v115 = *(v162 + 72);
            v158 = *(v162 + 16);
            v116 = (v114 + v115 * (v146 - 1));
            v154 = -v115;
            v155 = v114;
            v145 = v35;
            v117 = &v35[-v146];
            v136 = v115;
            a4 = v114 + v146 * v115;
            v153 = v67;
            while (1)
            {
              v137 = a4;
              v139 = v117;
              v151 = v116;
              while (1)
              {
                v118 = v148;
                v119 = v158;
                (v158)(v148, a4, v33, v30);
                v120 = v149;
                v119(v149, v116, v33);
                v121 = v165;
                v122 = v159(v118, v120);
                v165 = v121;
                if (v121)
                {
                  v133 = *v160;
                  (*v160)(v120, v33);
                  v133(v118, v33);
                  goto LABEL_117;
                }

                v123 = v122;
                v124 = *v160;
                (*v160)(v120, v33);
                v124(v118, v33);
                if ((v123 & 1) == 0)
                {
                  break;
                }

                if (!v155)
                {
                  goto LABEL_143;
                }

                v125 = *v156;
                v126 = v150;
                v33 = v164;
                (*v156)(v150, a4, v164);
                swift_arrayInitWithTakeFrontToBack();
                v125(v116, v126, v33);
                v116 += v154;
                a4 += v154;
                v127 = __CFADD__(v117++, 1);
                a5 = v157;
                if (v127)
                {
                  goto LABEL_101;
                }
              }

              a5 = v157;
              v33 = v164;
LABEL_101:
              v116 = &v151[v136];
              v117 = v139 - 1;
              a4 = v137 + v136;
              v57 = v153;
              if (++v146 == v153)
              {
                v34 = v159;
                v7 = v165;
                v35 = v145;
                goto LABEL_38;
              }
            }
          }
        }

        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

LABEL_38:
    v33 = v144;
    if (v57 < v35)
    {
      goto LABEL_136;
    }

    a4 = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_21C86467C(0, *(v33 + 2) + 1, 1, v33);
    }

    v69 = *(v33 + 2);
    v68 = *(v33 + 3);
    v70 = v69 + 1;
    if (v69 >= v68 >> 1)
    {
      v33 = sub_21C86467C((v68 > 1), v69 + 1, 1, v33);
    }

    *(v33 + 2) = v70;
    v71 = &v33[16 * v69];
    *(v71 + 4) = v35;
    *(v71 + 5) = v57;
    v153 = v57;
    v72 = *v143;
    if (!*v143)
    {
      goto LABEL_146;
    }

    if (v69)
    {
      break;
    }

    a5 = v157;
    v34 = a4;
LABEL_90:
    v31 = v163[1];
    v32 = v153;
    if (v153 >= v31)
    {
      goto LABEL_104;
    }
  }

  a5 = v157;
  v34 = a4;
  while (1)
  {
    a4 = v70 - 1;
    if (v70 >= 4)
    {
      v77 = &v33[16 * v70 + 32];
      v78 = *(v77 - 64);
      v79 = *(v77 - 56);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_123;
      }

      v82 = *(v77 - 48);
      v81 = *(v77 - 40);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_124;
      }

      v84 = &v33[16 * v70];
      v86 = *v84;
      v85 = *(v84 + 1);
      v83 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v83)
      {
        goto LABEL_126;
      }

      v83 = __OFADD__(v75, v87);
      v88 = v75 + v87;
      if (v83)
      {
        goto LABEL_129;
      }

      if (v88 >= v80)
      {
        v106 = &v33[16 * a4 + 32];
        v108 = *v106;
        v107 = *(v106 + 1);
        v83 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v83)
        {
          goto LABEL_135;
        }

        if (v75 < v109)
        {
          a4 = v70 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    if (v70 == 3)
    {
      v73 = *(v33 + 4);
      v74 = *(v33 + 5);
      v83 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      v76 = v83;
LABEL_59:
      if (v76)
      {
        goto LABEL_125;
      }

      v89 = &v33[16 * v70];
      v91 = *v89;
      v90 = *(v89 + 1);
      v92 = __OFSUB__(v90, v91);
      v93 = v90 - v91;
      v94 = v92;
      if (v92)
      {
        goto LABEL_128;
      }

      v95 = &v33[16 * a4 + 32];
      v97 = *v95;
      v96 = *(v95 + 1);
      v83 = __OFSUB__(v96, v97);
      v98 = v96 - v97;
      if (v83)
      {
        goto LABEL_131;
      }

      if (__OFADD__(v93, v98))
      {
        goto LABEL_132;
      }

      if (v93 + v98 >= v75)
      {
        if (v75 < v98)
        {
          a4 = v70 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v99 = &v33[16 * v70];
    v101 = *v99;
    v100 = *(v99 + 1);
    v83 = __OFSUB__(v100, v101);
    v93 = v100 - v101;
    v94 = v83;
LABEL_73:
    if (v94)
    {
      goto LABEL_127;
    }

    v102 = &v33[16 * a4];
    v104 = *(v102 + 4);
    v103 = *(v102 + 5);
    v83 = __OFSUB__(v103, v104);
    v105 = v103 - v104;
    if (v83)
    {
      goto LABEL_130;
    }

    if (v105 < v93)
    {
      goto LABEL_90;
    }

LABEL_80:
    v110 = a4 - 1;
    if (a4 - 1 >= v70)
    {
      break;
    }

    if (!*v163)
    {
      goto LABEL_142;
    }

    v111 = *&v33[16 * v110 + 32];
    v112 = *&v33[16 * a4 + 40];
    sub_21CA06A0C(*v163 + *(v162 + 72) * v111, *v163 + *(v162 + 72) * *&v33[16 * a4 + 32], *v163 + *(v162 + 72) * v112, v72, v34, a5);
    if (v7)
    {
      goto LABEL_117;
    }

    if (v112 < v111)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_21C864538(v33);
    }

    if (v110 >= *(v33 + 2))
    {
      goto LABEL_122;
    }

    v113 = &v33[16 * v110];
    *(v113 + 4) = v111;
    *(v113 + 5) = v112;
    v166 = v33;
    sub_21C8644AC(a4);
    v33 = v166;
    v70 = *(v166 + 2);
    if (v70 <= 1)
    {
      goto LABEL_90;
    }
  }

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
  v33 = sub_21C864538(v33);
LABEL_106:
  v166 = v33;
  v128 = *(v33 + 2);
  if (v128 < 2)
  {
    goto LABEL_117;
  }

  while (*v163)
  {
    v129 = *&v33[16 * v128];
    v130 = *&v33[16 * v128 + 24];
    sub_21CA06A0C(*v163 + *(v162 + 72) * v129, *v163 + *(v162 + 72) * *&v33[16 * v128 + 16], *v163 + *(v162 + 72) * v130, a4, v34, a5);
    if (v7)
    {
      goto LABEL_117;
    }

    if (v130 < v129)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_21C864538(v33);
    }

    if (v128 - 2 >= *(v33 + 2))
    {
      goto LABEL_134;
    }

    v131 = &v33[16 * v128];
    *v131 = v129;
    *(v131 + 1) = v130;
    v166 = v33;
    sub_21C8644AC(v128 - 1);
    v33 = v166;
    v128 = *(v166 + 2);
    if (v128 <= 1)
    {
      goto LABEL_117;
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}