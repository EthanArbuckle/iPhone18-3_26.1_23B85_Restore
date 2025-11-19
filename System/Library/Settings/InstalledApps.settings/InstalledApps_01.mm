uint64_t sub_19D78()
{
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[58];
  v4 = v0[38];

  v0[63] = [v4 sectionForObject:v3 collationStringSelector:v2];

  return _swift_task_switch(sub_19E3C, 0, 0);
}

uint64_t sub_19E3C()
{
  v186 = v0;
  v2 = *(v0 + 456);
  v3 = *(v0 + 448) == 0xD000000000000012 && 0x800000000002D430 == v2;
  if (v3 || (v4 = *(v0 + 456), (sub_2A8A4() & 1) != 0))
  {
    v5 = [objc_opt_self() sharedConnection];
    if (!v5)
    {
      __break(1u);
      goto LABEL_146;
    }

    v6 = v5;
    v7 = [v5 BOOLRestrictionForFeature:*(v0 + 416)];

    v8 = v7 == 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v0 + 512);
  v10 = *(v0 + 480);
  v11 = *(v0 + 456);
  *(v0 + 704) = 0;
  LOBYTE(v12) = 0;
  *(v0 + 704) = 0;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v0 + 512);
  if (isUniquelyReferenced_nonNull_native)
  {
    v15 = *(v0 + 504);
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

LABEL_140:
  v14 = sub_266B4(v14);
  v15 = *(v0 + 504);
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_141;
  }

LABEL_11:
  if (v15 >= *(v14 + 16))
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  v183 = v10;
  v1 = v14 + 32;
  v10 = *(v14 + 32 + 8 * v15);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  *(v14 + 32 + 8 * v15) = v10;
  if ((v16 & 1) == 0)
  {
LABEL_143:
    v10 = sub_223F8(0, *(v10 + 16) + 1, 1, v10);
    *(v1 + 8 * v15) = v10;
  }

  v182 = v14;
  v18 = *(v10 + 16);
  v17 = *(v10 + 24);
  if (v18 >= v17 >> 1)
  {
    *(v1 + 8 * v15) = sub_223F8((v17 > 1), v18 + 1, 1, v10);
  }

  v19 = *(v0 + 472);
  v20 = *(v0 + 448);

  v21 = *(v1 + 8 * v15);
  *(v21 + 16) = v18 + 1;
  v22 = v21 + 80 * v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = v2;
  *(v22 + 48) = v20;
  *(v22 + 56) = v2;
  *(v22 + 64) = v12;
  *(v22 + 71) = 0;
  *(v22 + 69) = 0;
  *(v22 + 65) = 0;
  *(v22 + 72) = v19;
  *(v22 + 80) = v183;
  *(v22 + 88) = v8;
  *(v22 + 104) = 0;
  v10 = *(v0 + 424);
  v23 = (*(v0 + 432) - 1) & *(v0 + 432);
  v24 = *(v0 + 707);
  v183 = "B16@?0@LSApplicationRecord8";
  v14 = *(v0 + 440);
  *(v0 + 512) = v182;
  for (i = v24; ; i = 1)
  {
    v179 = i;
    *(v0 + 707) = i & 1;
    *(v0 + 424) = v10;
    if (!v23)
    {
      goto LABEL_18;
    }

LABEL_17:
    v26 = *(v0 + 392);
LABEL_22:
    *(v0 + 432) = v23;
    *(v0 + 440) = v14;
    v28 = (*(v26 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v23)))));
    v12 = *v28;
    *(v0 + 448) = *v28;
    v8 = v28[1];
    *(v0 + 456) = v8;
    v29 = qword_38A10;

    if (v29 != -1)
    {
      swift_once();
    }

    v23 &= v23 - 1;
    v30 = off_39360;
    if (*(&dword_10 + off_39360))
    {
      v31 = *&stru_20.segname[off_39360];
      sub_2A8F4();
      sub_2A414();
      v32 = sub_2A914();
      v2 = (v30 + 14);
      v33 = -1 << *(&stru_20.cmd + v30);
      v1 = v32 & ~v33;
      if ((*(v30 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v1))
      {
        v34 = ~v33;
        do
        {
          v35 = (*&stru_20.segname[v30 + 8] + 16 * v1);
          v36 = *v35 == v12 && v35[1] == v8;
          if (v36 || (sub_2A8A4() & 1) != 0)
          {
            goto LABEL_60;
          }

          v1 = (v1 + 1) & v34;
        }

        while (((*(v2 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) != 0);
      }
    }

    v188._countAndFlagsBits = 0xD00000000000001BLL;
    v188._object = 0x800000000002E0D0;
    v37 = sub_2A444(v188);
    v38 = objc_allocWithZone(LSApplicationRecord);
    v39 = sub_2A3E4();
    *(v0 + 224) = 0;
    v1 = [v38 initWithBundleIdentifier:v39 allowPlaceholder:v37 error:v0 + 224];
    *(v0 + 464) = v1;

    v2 = *(v0 + 224);
    if (!v1)
    {
      break;
    }

    v40 = v2;
    if ([v1 isWebApp])
    {
      v41 = *(v0 + 408);
      if (!*(v41 + 16))
      {
        goto LABEL_59;
      }

      v42 = *(v41 + 40);
      sub_2A8F4();
      sub_2A414();
      v43 = sub_2A914();
      v44 = -1 << *(v41 + 32);
      v2 = v43 & ~v44;
      if (((*(v41 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1) == 0)
      {
        goto LABEL_59;
      }

      v45 = ~v44;
      v46 = *(v0 + 408);
      while (1)
      {
        v47 = (*(v46 + 48) + 16 * v2);
        v48 = *v47 == v12 && v47[1] == v8;
        if (v48 || (sub_2A8A4() & 1) != 0)
        {
          break;
        }

        v46 = *(v0 + 408);
        v2 = (v2 + 1) & v45;
        if (((*(v46 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1) == 0)
        {
          goto LABEL_59;
        }
      }
    }

    v49 = [objc_opt_self() defaultWorkspace];
    if (!v49)
    {
      __break(1u);
    }

    v2 = v49;
    v50 = sub_2A3E4();
    v51 = [v2 applicationIsInstalled:v50];

    if ((v51 & 1) == 0)
    {
      goto LABEL_59;
    }

    if ((v179 & 1) != 0 || (v52 = [v1 appClipMetadata]) == 0)
    {
      v53 = *(v0 + 360);
      if (!*(v53 + 16) || (v54 = *(v53 + 40), sub_2A8F4(), sub_2A414(), v55 = sub_2A914(), v56 = -1 << *(v53 + 32), v2 = v55 & ~v56, ((*(v53 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1) == 0))
      {
LABEL_111:
        v120 = [v1 localizedName];
        v121 = sub_2A3F4();
        v123 = v122;

        *(v0 + 472) = v121;
        *(v0 + 480) = v123;
        *(v0 + 488) = "localizedName";
        sub_2A494();
        v124 = v1;
        *(v0 + 496) = sub_2A484();
        v65 = sub_2A474();
        v67 = sub_19D78;
        goto LABEL_133;
      }

      v57 = ~v56;
      v58 = *(v0 + 360);
      while (1)
      {
        v59 = (*(v58 + 48) + 16 * v2);
        v60 = *v59 == v12 && v59[1] == v8;
        if (v60 || (sub_2A8A4() & 1) != 0)
        {
          break;
        }

        v58 = *(v0 + 360);
        v2 = (v2 + 1) & v57;
        if (((*(v58 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1) == 0)
        {
          goto LABEL_111;
        }
      }

LABEL_59:

LABEL_60:

      goto LABEL_62;
    }
  }

  v61 = v2;

  v2 = sub_29A44();

  swift_willThrow();

  v10 = 0;
LABEL_62:
  *(v0 + 424) = v10;
  if (v23)
  {
    goto LABEL_17;
  }

  while (1)
  {
LABEL_18:
    v27 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    v26 = *(v0 + 392);
    if (v27 >= (((1 << *(v0 + 706)) + 63) >> 6))
    {
      break;
    }

    v23 = *(v26 + 8 * v27 + 56);
    ++v14;
    if (v23)
    {
      v14 = v27;
      goto LABEL_22;
    }
  }

  v62 = *(v0 + 312);

  if (v62 == 1)
  {
    if (qword_389F0 != -1)
    {
      swift_once();
    }

    v63.super.isa = qword_3AD50;
    v174._countAndFlagsBits = 0x800000000002D720;
    v189._countAndFlagsBits = 1701670728;
    v189._object = 0xE400000000000000;
    v196.value._countAndFlagsBits = 0;
    v196.value._object = 0;
    v203._countAndFlagsBits = 0;
    v203._object = 0xE000000000000000;
    *(v0 + 520) = sub_29A34(v189, v196, v63, v203, v174);
    *(v0 + 528) = v64;
    *(v0 + 536) = sub_2A3E4();
    *(v0 + 544) = "collationString";
    sub_2A494();
    *(v0 + 552) = sub_2A484();
    v65 = sub_2A474();
    v67 = sub_1B710;
    goto LABEL_133;
  }

  v68 = MobileGestalt_get_current_device();
  if (!v68)
  {
LABEL_146:
    __break(1u);
    JUMPOUT(0x1B68CLL);
  }

  v69 = v68;
  v71 = *(v0 + 400);
  v70 = *(v0 + 408);
  v72 = *(v0 + 360);

  LOBYTE(v70) = MobileGestalt_get_isSimulator();

  v8 = v182;
  if (v70)
  {
    v73 = *(v0 + 392);

    v74 = *(v0 + 424);
  }

  else
  {
    if (qword_38A18 != -1)
    {
      swift_once();
    }

    *(v0 + 232) = qword_39368;
    v2 = qword_38A20;

    if (v2 != -1)
    {
      swift_once();
    }

    v75 = &stru_20.segname[off_39370 + 16];
    v76 = -1;
    v77 = -1 << *(&stru_20.cmd + off_39370);
    if (-v77 < 64)
    {
      v76 = ~(-1 << -v77);
    }

    v8 = v76 & *&stru_20.segname[off_39370 + 16];
    v14 = (63 - v77) >> 6;
    v180 = *(v0 + 424);
    v183 = off_39370;

    v12 = 0;
    while (1)
    {
      v78 = v12;
      if (!v8)
      {
        break;
      }

LABEL_83:
      v79 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v10 = *(*(v183 + 6) + (v79 | (v12 << 6)));
      v80 = objc_allocWithZone(LSApplicationRecord);
      v81 = sub_2A3E4();

      *(v0 + 240) = 0;
      v82 = [v80 initWithBundleIdentifier:v81 allowPlaceholder:0 error:v0 + 240];

      v1 = *(v0 + 240);
      if (v82)
      {
        v83 = v1;

        v2 = v0 + 232;
        sub_24148(v185, v10);
      }

      else
      {
        v2 = v1;
        v84 = sub_29A44();

        v10 = v84;
        swift_willThrow();

        v180 = 0;
      }
    }

    while (1)
    {
      v12 = v78 + 1;
      if (__OFADD__(v78, 1))
      {
        goto LABEL_138;
      }

      if (v12 >= v14)
      {
        break;
      }

      v8 = *&v75[8 * v12];
      ++v78;
      if (v8)
      {
        goto LABEL_83;
      }
    }

    v85 = 0;
    v86 = *(v0 + 232);
    *(v0 + 568) = v86;
    v87 = *(v86 + 32);
    *(v0 + 708) = v87;
    v10 = 1;
    v88 = 1 << v87;
    v89 = *(v86 + 56);
    if (v88 < 64)
    {
      v90 = ~(-1 << v88);
    }

    else
    {
      v90 = -1;
    }

    v1 = v90 & v89;
    v8 = v182;
    *(v0 + 576) = v182;
    while (v1)
    {
      v2 = *(v0 + 568);
LABEL_97:
      *(v0 + 592) = v85;
      *(v0 + 584) = v1;
      v92 = *(v0 + 392);
      v14 = *(*(v2 + 48) + (__clz(__rbit64(v1)) | (v85 << 6)));
      *(v0 + 709) = v14;
      v93 = sub_6DDC(v14);
      v95 = v94;
      if (!*(v92 + 16))
      {
        goto LABEL_106;
      }

      v12 = v93;
      v96 = *(v0 + 392);
      v97 = *(v96 + 40);
      sub_2A8F4();
      sub_2A414();
      v98 = sub_2A914();
      v99 = -1 << *(v96 + 32);
      v2 = v98 & ~v99;
      if (((*(v96 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1) == 0)
      {
LABEL_106:

        v104 = sub_6DDC(v14);
        v106 = v105;
        v107 = objc_allocWithZone(LSApplicationRecord);

        v108 = sub_2A3E4();

        *(v0 + 248) = 0;
        v109 = [v107 initWithBundleIdentifier:v108 allowPlaceholder:1 error:v0 + 248];

        v110 = *(v0 + 248);
        if (v109)
        {
          goto LABEL_109;
        }

        v111 = v110;
        sub_29A44();

        swift_willThrow();

        v112 = objc_allocWithZone(LSApplicationRecord);

        v113 = sub_2A3E4();

        *(v0 + 256) = 0;
        v109 = [v112 initWithBundleIdentifierOfSystemPlaceholder:v113 error:v0 + 256];

        v110 = *(v0 + 256);
        if (v109)
        {
          v180 = 0;
LABEL_109:
          v114 = v110;
          v115 = [v109 localizedName];
          v104 = sub_2A3F4();
          v117 = v116;

          v106 = v117;
          v118 = v180;
        }

        else
        {
          v172 = v110;
          sub_29A44();

          swift_willThrow();

          v118 = 0;
        }

        *(v0 + 616) = v106;
        *(v0 + 608) = v104;
        *(v0 + 600) = v118;
        *(v0 + 624) = sub_6DDC(v14);
        *(v0 + 632) = v119;
        *(v0 + 640) = sub_2A3E4();
        *(v0 + 648) = "collationString";
        sub_2A494();
        *(v0 + 656) = sub_2A484();
        v65 = sub_2A474();
        v67 = sub_1C99C;
        goto LABEL_133;
      }

      v1 &= v1 - 1;
      v100 = ~v99;
      v101 = *(v0 + 392);
      while (1)
      {
        v102 = (*(v101 + 48) + 16 * v2);
        v103 = *v102 == v12 && v102[1] == v95;
        if (v103 || (sub_2A8A4() & 1) != 0)
        {
          break;
        }

        v101 = *(v0 + 392);
        v2 = (v2 + 1) & v100;
        if (((*(v101 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1) == 0)
        {
          goto LABEL_106;
        }
      }

      v8 = v182;
    }

    while (1)
    {
      v91 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        goto LABEL_139;
      }

      v2 = *(v0 + 568);
      if (v91 >= (((1 << *(v0 + 708)) + 63) >> 6))
      {
        break;
      }

      v1 = *(v2 + 8 * v91 + 56);
      ++v85;
      if (v1)
      {
        v85 = v91;
        goto LABEL_97;
      }
    }

    v125 = *(v0 + 392);

    v74 = v180;
  }

  *(v0 + 672) = v8;
  v126 = *(v0 + 320);
  v127 = *(v0 + 288);

  v128 = sub_1E690(v127, v126, v8);
  *(v0 + 680) = v74;

  *(v0 + 264) = v128;
  if (qword_389F0 != -1)
  {
    swift_once();
  }

  v129 = qword_3AD50;
  v174._countAndFlagsBits = 0x800000000002D720;
  v190._countAndFlagsBits = 0x20746C7561666544;
  v190._object = 0xEC00000073707041;
  v197.value._countAndFlagsBits = 0;
  v197.value._object = 0;
  v130.super.isa = qword_3AD50;
  v204._countAndFlagsBits = 0;
  v204._object = 0xE000000000000000;
  v131 = sub_29A34(v190, v197, v130, v204, v174);
  v133 = v132;
  v175._countAndFlagsBits = 0x800000000002DAE0;
  v191._countAndFlagsBits = 0xD00000000000001DLL;
  v191._object = 0x800000000002E120;
  v198.value._countAndFlagsBits = 0;
  v198.value._object = 0;
  v184 = v129;
  v134.super.isa = v129;
  v205._countAndFlagsBits = 0;
  v205._object = 0xE000000000000000;
  v135 = sub_29A34(v191, v198, v134, v205, v175);
  v137 = v136;
  v185[0] = 1;
  v138 = sub_223F8(0, 1, 1, &_swiftEmptyArrayStorage);
  v140 = *(v138 + 2);
  v139 = *(v138 + 3);
  if (v140 >= v139 >> 1)
  {
    v138 = sub_223F8((v139 > 1), v140 + 1, 1, v138);
  }

  v141 = *(v0 + 705);
  *(v138 + 2) = v140 + 1;
  v142 = &v138[80 * v140];
  *(v142 + 4) = 0;
  *(v142 + 5) = 0;
  *(v142 + 6) = 0xD000000000000023;
  *(v142 + 7) = 0x800000000002E0F0;
  *(v142 + 8) = 1;
  *(v142 + 9) = v131;
  *(v142 + 10) = v133;
  *(v142 + 11) = v135;
  *(v142 + 12) = v137;
  v142[104] = 0x80;
  if (v141 == 1)
  {
    v176._countAndFlagsBits = 0x800000000002D720;
    v192._object = 0x800000000002E070;
    v192._countAndFlagsBits = 0xD000000000000010;
    v199.value._countAndFlagsBits = 0;
    v199.value._object = 0;
    v143.super.isa = v184;
    v206._countAndFlagsBits = 0;
    v206._object = 0xE000000000000000;
    v144 = sub_29A34(v192, v199, v143, v206, v176);
    v146 = v145;
    v177._countAndFlagsBits = 0x800000000002DAE0;
    v193._countAndFlagsBits = 0xD000000000000020;
    v193._object = 0x800000000002E1D0;
    v200.value._countAndFlagsBits = 0;
    v200.value._object = 0;
    v147.super.isa = v184;
    v207._countAndFlagsBits = 0;
    v207._object = 0xE000000000000000;
    v148 = sub_29A34(v193, v200, v147, v207, v177);
    v185[0] = 1;
    v151 = *(v138 + 2);
    v150 = *(v138 + 3);
    if (v151 >= v150 >> 1)
    {
      v178 = v149;
      v181 = v148;
      v138 = sub_223F8((v150 > 1), v151 + 1, 1, v138);
      v149 = v178;
      v148 = v181;
    }

    *(v138 + 2) = v151 + 1;
    v152 = &v138[80 * v151];
    *(v152 + 2) = xmmword_2CE70;
    *(v152 + 6) = 0xD000000000000027;
    *(v152 + 7) = 0x800000000002E1A0;
    *(v152 + 8) = 1;
    *(v152 + 9) = v144;
    *(v152 + 10) = v146;
    *(v152 + 11) = v148;
    *(v152 + 12) = v149;
    v152[104] = 0x80;
  }

  v153 = *(v0 + 707);
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = v138;
  sub_24C38(0, 0, (v0 + 64));
  if (v153)
  {
    v176._countAndFlagsBits = 0x800000000002D720;
    v194._countAndFlagsBits = 0x70696C4320707041;
    v194._object = 0xE900000000000073;
    v201.value._countAndFlagsBits = 0;
    v201.value._object = 0;
    v154.super.isa = v184;
    v208._countAndFlagsBits = 0;
    v208._object = 0xE000000000000000;
    v155 = sub_29A34(v194, v201, v154, v208, v176);
    v157 = v156;
    v185[0] = 1;
    sub_2B4C(&qword_39598, &unk_2D028);
    v158 = swift_allocObject();
    *(v158 + 16) = xmmword_2CE80;
    *(v158 + 32) = xmmword_2CE90;
    *(v158 + 48) = 0xD000000000000020;
    *(v158 + 56) = 0x800000000002E170;
    *(v158 + 64) = 1;
    *(v158 + 71) = 0;
    *(v158 + 69) = 0;
    *(v158 + 65) = 0;
    *(v158 + 72) = v155;
    *(v158 + 80) = v157;
    *(v158 + 88) = 0;
    *(v158 + 104) = 0;
    v159 = *(v0 + 264);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v159 = sub_22618(0, *(v159 + 2) + 1, 1, v159);
    }

    v161 = *(v159 + 2);
    v160 = *(v159 + 3);
    if (v161 >= v160 >> 1)
    {
      v159 = sub_22618((v160 > 1), v161 + 1, 1, v159);
    }

    *(v159 + 2) = v161 + 1;
    v162 = &v159[40 * v161];
    *(v162 + 2) = xmmword_2CE70;
    *(v162 + 6) = 0;
    *(v162 + 7) = 0;
    *(v162 + 8) = v158;
    *(v0 + 264) = v159;
  }

  else
  {
    v159 = *(v0 + 264);
  }

  v176._countAndFlagsBits = 0x800000000002D720;
  v195._countAndFlagsBits = 0x41206E6564646948;
  v195._object = 0xEB00000000737070;
  v202.value._countAndFlagsBits = 0;
  v202.value._object = 0;
  v163.super.isa = v184;
  v209._countAndFlagsBits = 0;
  v209._object = 0xE000000000000000;
  v164 = sub_29A34(v195, v202, v163, v209, v176);
  v166 = v165;
  *(v0 + 720) = 1;
  sub_2B4C(&qword_39598, &unk_2D028);
  v167 = swift_allocObject();
  *(v167 + 16) = xmmword_2CE80;
  *(v167 + 32) = xmmword_2CEA0;
  *(v167 + 48) = 0xD000000000000022;
  *(v167 + 56) = 0x800000000002E140;
  *(v167 + 64) = 1;
  *(v167 + 71) = 0;
  *(v167 + 69) = 0;
  *(v167 + 65) = 0;
  *(v167 + 72) = v164;
  *(v167 + 80) = v166;
  *(v167 + 88) = 0;
  *(v167 + 104) = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v159 = sub_22618(0, *(v159 + 2) + 1, 1, v159);
  }

  v169 = *(v159 + 2);
  v168 = *(v159 + 3);
  if (v169 >= v168 >> 1)
  {
    v159 = sub_22618((v168 > 1), v169 + 1, 1, v159);
  }

  *(v0 + 688) = v159;
  v170 = *(v0 + 328);
  *(v159 + 2) = v169 + 1;
  v171 = &v159[40 * v169];
  *(v171 + 2) = xmmword_2CE90;
  *(v171 + 6) = 0;
  *(v171 + 7) = 0;
  *(v171 + 8) = v167;
  swift_unknownObjectWeakInit();
  sub_2A494();
  *(v0 + 696) = sub_2A484();
  v65 = sub_2A474();
  v67 = sub_1D598;
LABEL_133:

  return _swift_task_switch(v67, v65, v66);
}

uint64_t sub_1B710()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[38];

  v0[70] = [v4 sectionForObject:v3 collationStringSelector:v2];

  return _swift_task_switch(sub_1B7D8, 0, 0);
}

uint64_t sub_1B7D8()
{
  v131 = v1;
  *(v1 + 728) = 0;
  v3 = *(v1 + 528);
  v4 = *(v1 + 512);
  *(v1 + 728) = 0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 512);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_80;
  }

  v7 = *(v1 + 560);
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_81;
  }

LABEL_3:
  if (v7 < *(v6 + 2))
  {
    v2 = v6 + 32;
    v0 = *&v6[8 * v7 + 32];
    v8 = swift_isUniquelyReferenced_nonNull_native();
    *&v6[8 * v7 + 32] = v0;
    if ((v8 & 1) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_5;
  }

  while (1)
  {
    __break(1u);
LABEL_83:
    v0 = sub_223F8(0, *(v0 + 16) + 1, 1, v0);
    *&v2[8 * v7] = v0;
LABEL_5:
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);
    if (v10 >= v9 >> 1)
    {
      v0 = sub_223F8((v9 > 1), v10 + 1, 1, v0);
      *&v2[8 * v7] = v0;
    }

    v127 = v6;
    v11 = *(v1 + 520);
    *(v0 + 16) = v10 + 1;
    v12 = v0 + 80 * v10;
    *(v12 + 32) = xmmword_2CEB0;
    *(v12 + 48) = xmmword_2CEB0;
    *(v12 + 64) = 0;
    *(v12 + 71) = 0;
    *(v12 + 69) = 0;
    *(v12 + 65) = 0;
    *(v12 + 72) = v11;
    *(v12 + 80) = v3;
    *(v12 + 88) = 0;
    *(v12 + 104) = 0;
    v13 = MobileGestalt_get_current_device();
    if (!v13)
    {
      __break(1u);
    }

    v14 = v13;
    v16 = *(v1 + 400);
    v15 = *(v1 + 408);
    v17 = *(v1 + 360);

    LOBYTE(v15) = MobileGestalt_get_isSimulator();

    if (v15)
    {
      break;
    }

    if (qword_38A18 != -1)
    {
      swift_once();
    }

    *(v1 + 232) = qword_39368;
    v0 = qword_38A20;

    if (v0 != -1)
    {
      swift_once();
    }

    v2 = &stru_20.segname[off_39370 + 16];
    v20 = -1;
    v21 = -1 << *(&stru_20.cmd + off_39370);
    if (-v21 < 64)
    {
      v20 = ~(-1 << -v21);
    }

    v22 = v20 & *&stru_20.segname[off_39370 + 16];
    v3 = (63 - v21) >> 6;
    v126 = *(v1 + 424);
    v129 = off_39370;

    v23 = 0;
LABEL_17:
    v24 = v23;
    if (!v22)
    {
      goto LABEL_19;
    }

    do
    {
      v23 = v24;
LABEL_22:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v26 = *(*(v129 + 6) + (v25 | (v23 << 6)));
      v27 = objc_allocWithZone(LSApplicationRecord);
      v28 = sub_2A3E4();

      *(v1 + 240) = 0;
      v29 = [v27 initWithBundleIdentifier:v28 allowPlaceholder:0 error:v1 + 240];

      v6 = *(v1 + 240);
      if (!v29)
      {
        v0 = v6;
        v6 = sub_29A44();

        swift_willThrow();
        v122._object = v6;

        v126 = 0;
        goto LABEL_17;
      }

      v30 = v6;

      v0 = v1 + 232;
      sub_24148(v130, v26);
      v24 = v23;
    }

    while (v22);
    while (1)
    {
LABEL_19:
      v23 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_79;
      }

      if (v23 >= v3)
      {
        break;
      }

      v22 = *&v2[8 * v23];
      ++v24;
      if (v22)
      {
        goto LABEL_22;
      }
    }

    v3 = 0;
    v31 = *(v1 + 232);
    *(v1 + 568) = v31;
    v32 = *(v31 + 32);
    *(v1 + 708) = v32;
    v33 = 1 << v32;
    v34 = *(v31 + 56);
    if (v33 < 64)
    {
      v35 = ~(-1 << v33);
    }

    else
    {
      v35 = -1;
    }

    v36 = v35 & v34;
    *(v1 + 576) = v127;
    while (v36)
    {
      v0 = *(v1 + 568);
LABEL_37:
      *(v1 + 592) = v3;
      *(v1 + 584) = v36;
      v38 = *(v1 + 392);
      v2 = *(*(v0 + 48) + (__clz(__rbit64(v36)) | (v3 << 6)));
      *(v1 + 709) = v2;
      v39 = sub_6DDC(v2);
      v41 = v40;
      if (!*(v38 + 16))
      {
        goto LABEL_46;
      }

      v6 = v39;
      v42 = *(v1 + 392);
      v43 = *(v42 + 40);
      sub_2A8F4();
      sub_2A414();
      v44 = sub_2A914();
      v45 = -1 << *(v42 + 32);
      v0 = v44 & ~v45;
      if (((*(v42 + ((v0 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v0) & 1) == 0)
      {
LABEL_46:

        v50 = sub_6DDC(v2);
        v52 = v51;
        v53 = objc_allocWithZone(LSApplicationRecord);

        v54 = sub_2A3E4();

        *(v1 + 248) = 0;
        v55 = [v53 initWithBundleIdentifier:v54 allowPlaceholder:1 error:v1 + 248];

        v56 = *(v1 + 248);
        if (v55)
        {
          v57 = v126;
          goto LABEL_72;
        }

        v109 = v56;
        sub_29A44();

        swift_willThrow();

        v110 = objc_allocWithZone(LSApplicationRecord);

        v111 = sub_2A3E4();

        *(v1 + 256) = 0;
        v55 = [v110 initWithBundleIdentifierOfSystemPlaceholder:v111 error:v1 + 256];

        v56 = *(v1 + 256);
        if (v55)
        {
          v57 = 0;
LABEL_72:
          v112 = v56;
          v113 = [v55 localizedName];
          v50 = sub_2A3F4();
          v115 = v114;

          v52 = v115;
        }

        else
        {
          v117 = v56;
          sub_29A44();

          swift_willThrow();

          v57 = 0;
        }

        *(v1 + 616) = v52;
        *(v1 + 608) = v50;
        *(v1 + 600) = v57;
        *(v1 + 624) = sub_6DDC(v2);
        *(v1 + 632) = v116;
        *(v1 + 640) = sub_2A3E4();
        *(v1 + 648) = "collationString";
        sub_2A494();
        *(v1 + 656) = sub_2A484();
        v106 = sub_2A474();
        v108 = sub_1C99C;
        goto LABEL_74;
      }

      v36 &= v36 - 1;
      v46 = ~v45;
      v47 = *(v1 + 392);
      while (1)
      {
        v48 = (*(v47 + 48) + 16 * v0);
        v49 = *v48 == v6 && v48[1] == v41;
        if (v49 || (sub_2A8A4() & 1) != 0)
        {
          break;
        }

        v47 = *(v1 + 392);
        v0 = (v0 + 1) & v46;
        if (((*(v47 + ((v0 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v0) & 1) == 0)
        {
          goto LABEL_46;
        }
      }
    }

    while (1)
    {
      v37 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v0 = *(v1 + 568);
      if (v37 >= (((1 << *(v1 + 708)) + 63) >> 6))
      {
        v58 = *(v1 + 392);

        v19 = v126;
        goto LABEL_49;
      }

      v36 = *(v0 + 8 * v37 + 56);
      ++v3;
      if (v36)
      {
        v3 = v37;
        goto LABEL_37;
      }
    }

LABEL_79:
    __break(1u);
LABEL_80:
    v6 = sub_266B4(v6);
    v7 = *(v1 + 560);
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_81:
    __break(1u);
  }

  v18 = *(v1 + 392);

  v19 = *(v1 + 424);
LABEL_49:
  *(v1 + 672) = v127;
  v59 = *(v1 + 320);
  v60 = *(v1 + 288);

  v61 = sub_1E690(v60, v59, v127);
  *(v1 + 680) = v19;

  *(v1 + 264) = v61;
  if (qword_389F0 != -1)
  {
    swift_once();
  }

  v62 = qword_3AD50;
  v122._countAndFlagsBits = 0x800000000002D720;
  v133._countAndFlagsBits = 0x20746C7561666544;
  v133._object = 0xEC00000073707041;
  v139.value._countAndFlagsBits = 0;
  v139.value._object = 0;
  v63.super.isa = qword_3AD50;
  v145._countAndFlagsBits = 0;
  v145._object = 0xE000000000000000;
  v64 = sub_29A34(v133, v139, v63, v145, v122);
  v66 = v65;
  v123._countAndFlagsBits = 0x800000000002DAE0;
  v134._countAndFlagsBits = 0xD00000000000001DLL;
  v134._object = 0x800000000002E120;
  v140.value._countAndFlagsBits = 0;
  v140.value._object = 0;
  v128 = v62;
  v67.super.isa = v62;
  v146._countAndFlagsBits = 0;
  v146._object = 0xE000000000000000;
  v68 = sub_29A34(v134, v140, v67, v146, v123);
  v70 = v69;
  v130[0] = 1;
  v71 = sub_223F8(0, 1, 1, &_swiftEmptyArrayStorage);
  v73 = *(v71 + 2);
  v72 = *(v71 + 3);
  if (v73 >= v72 >> 1)
  {
    v71 = sub_223F8((v72 > 1), v73 + 1, 1, v71);
  }

  v74 = *(v1 + 705);
  *(v71 + 2) = v73 + 1;
  v75 = &v71[80 * v73];
  *(v75 + 4) = 0;
  *(v75 + 5) = 0;
  *(v75 + 6) = 0xD000000000000023;
  *(v75 + 7) = 0x800000000002E0F0;
  *(v75 + 8) = 1;
  *(v75 + 9) = v64;
  *(v75 + 10) = v66;
  *(v75 + 11) = v68;
  *(v75 + 12) = v70;
  v75[104] = 0x80;
  if (v74 == 1)
  {
    v124._countAndFlagsBits = 0x800000000002D720;
    v135._object = 0x800000000002E070;
    v135._countAndFlagsBits = 0xD000000000000010;
    v141.value._countAndFlagsBits = 0;
    v141.value._object = 0;
    v76.super.isa = v128;
    v147._countAndFlagsBits = 0;
    v147._object = 0xE000000000000000;
    v77 = sub_29A34(v135, v141, v76, v147, v124);
    v79 = v78;
    v125._countAndFlagsBits = 0x800000000002DAE0;
    v80 = v128;
    v136._countAndFlagsBits = 0xD000000000000020;
    v136._object = 0x800000000002E1D0;
    v142.value._countAndFlagsBits = 0;
    v142.value._object = 0;
    v81.super.isa = v128;
    v148._countAndFlagsBits = 0;
    v148._object = 0xE000000000000000;
    v82 = sub_29A34(v136, v142, v81, v148, v125);
    v130[0] = 1;
    v85 = *(v71 + 2);
    v84 = *(v71 + 3);
    if (v85 >= v84 >> 1)
    {
      v118 = v82;
      v119 = v83;
      v120 = sub_223F8((v84 > 1), v85 + 1, 1, v71);
      v83 = v119;
      v71 = v120;
      v82 = v118;
      v80 = v128;
    }

    *(v71 + 2) = v85 + 1;
    v86 = &v71[80 * v85];
    *(v86 + 2) = xmmword_2CE70;
    *(v86 + 6) = 0xD000000000000027;
    *(v86 + 7) = 0x800000000002E1A0;
    *(v86 + 8) = 1;
    *(v86 + 9) = v77;
    *(v86 + 10) = v79;
    *(v86 + 11) = v82;
    *(v86 + 12) = v83;
    v86[104] = 0x80;
  }

  else
  {
    v80 = v128;
  }

  v87 = *(v1 + 707);
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = v71;
  sub_24C38(0, 0, (v1 + 64));
  if (v87)
  {
    v124._countAndFlagsBits = 0x800000000002D720;
    v137._countAndFlagsBits = 0x70696C4320707041;
    v137._object = 0xE900000000000073;
    v143.value._countAndFlagsBits = 0;
    v143.value._object = 0;
    v88.super.isa = v80;
    v149._countAndFlagsBits = 0;
    v149._object = 0xE000000000000000;
    v89 = sub_29A34(v137, v143, v88, v149, v124);
    v91 = v90;
    v130[0] = 1;
    sub_2B4C(&qword_39598, &unk_2D028);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_2CE80;
    *(v92 + 32) = xmmword_2CE90;
    *(v92 + 48) = 0xD000000000000020;
    *(v92 + 56) = 0x800000000002E170;
    *(v92 + 64) = 1;
    *(v92 + 71) = 0;
    *(v92 + 69) = 0;
    *(v92 + 65) = 0;
    *(v92 + 72) = v89;
    *(v92 + 80) = v91;
    *(v92 + 88) = 0;
    *(v92 + 104) = 0;
    v93 = *(v1 + 264);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v93 = sub_22618(0, *(v93 + 2) + 1, 1, v93);
    }

    v95 = *(v93 + 2);
    v94 = *(v93 + 3);
    if (v95 >= v94 >> 1)
    {
      v93 = sub_22618((v94 > 1), v95 + 1, 1, v93);
    }

    *(v93 + 2) = v95 + 1;
    v96 = &v93[40 * v95];
    *(v96 + 2) = xmmword_2CE70;
    *(v96 + 6) = 0;
    *(v96 + 7) = 0;
    *(v96 + 8) = v92;
    *(v1 + 264) = v93;
  }

  else
  {
    v93 = *(v1 + 264);
  }

  v124._countAndFlagsBits = 0x800000000002D720;
  v138._countAndFlagsBits = 0x41206E6564646948;
  v138._object = 0xEB00000000737070;
  v144.value._countAndFlagsBits = 0;
  v144.value._object = 0;
  v97.super.isa = v80;
  v150._countAndFlagsBits = 0;
  v150._object = 0xE000000000000000;
  v98 = sub_29A34(v138, v144, v97, v150, v124);
  v100 = v99;
  *(v1 + 720) = 1;
  sub_2B4C(&qword_39598, &unk_2D028);
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_2CE80;
  *(v101 + 32) = xmmword_2CEA0;
  *(v101 + 48) = 0xD000000000000022;
  *(v101 + 56) = 0x800000000002E140;
  *(v101 + 64) = 1;
  *(v101 + 71) = 0;
  *(v101 + 69) = 0;
  *(v101 + 65) = 0;
  *(v101 + 72) = v98;
  *(v101 + 80) = v100;
  *(v101 + 88) = 0;
  *(v101 + 104) = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v93 = sub_22618(0, *(v93 + 2) + 1, 1, v93);
  }

  v103 = *(v93 + 2);
  v102 = *(v93 + 3);
  if (v103 >= v102 >> 1)
  {
    v93 = sub_22618((v102 > 1), v103 + 1, 1, v93);
  }

  *(v1 + 688) = v93;
  v104 = *(v1 + 328);
  *(v93 + 2) = v103 + 1;
  v105 = &v93[40 * v103];
  *(v105 + 2) = xmmword_2CE90;
  *(v105 + 6) = 0;
  *(v105 + 7) = 0;
  *(v105 + 8) = v101;
  swift_unknownObjectWeakInit();
  sub_2A494();
  *(v1 + 696) = sub_2A484();
  v106 = sub_2A474();
  v108 = sub_1D598;
LABEL_74:

  return _swift_task_switch(v108, v106, v107);
}

uint64_t sub_1C99C()
{
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[80];
  v4 = v0[38];

  v0[83] = [v4 sectionForObject:v3 collationStringSelector:v2];

  return _swift_task_switch(sub_1CA64, 0, 0);
}

uint64_t sub_1CA64()
{
  v2 = (v0 + 705);
  v3 = *(v0 + 616);
  v4 = *(v0 + 576);
  v5 = sub_6DDC(*(v0 + 709));
  v7 = v6;
  *(v0 + 712) = 0;
  *(v0 + 712) = 0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + 576);
  if (isUniquelyReferenced_nonNull_native)
  {
    v10 = *(v0 + 664);
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_55:
  v9 = sub_266B4(v9);
  v10 = *(v0 + 664);
  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_56;
  }

LABEL_3:
  if (v10 >= v9[2])
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v1 = (v9 + 4);
  v2 = v9[v10 + 4];
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v9[v10 + 4] = v2;
  if ((v11 & 1) == 0)
  {
LABEL_58:
    v2 = sub_223F8(0, *(v2 + 2) + 1, 1, v2);
    *(v1 + 8 * v10) = v2;
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_223F8((v12 > 1), v13 + 1, 1, v2);
    *(v1 + 8 * v10) = v2;
  }

  v14 = *(v0 + 632);
  v15 = *(v0 + 624);
  v16 = *(v0 + 608);
  *(v2 + 2) = v13 + 1;
  v17 = &v2[80 * v13];
  *(v17 + 4) = v5;
  *(v17 + 5) = v7;
  *(v17 + 6) = v15;
  *(v17 + 7) = v14;
  v17[64] = 0;
  v17[71] = 0;
  *(v17 + 69) = 0;
  *(v17 + 65) = 0;
  *(v17 + 9) = v16;
  *(v17 + 10) = v3;
  *(v17 + 11) = 0;
  v17[104] = 0;
  v108 = *(v0 + 600);
  v18 = *(v0 + 592);
  v19 = (*(v0 + 584) - 1) & *(v0 + 584);
  *(v0 + 576) = v9;
  v1 = 1;
  while (v19)
  {
    v5 = *(v0 + 568);
LABEL_15:
    *(v0 + 592) = v18;
    *(v0 + 584) = v19;
    v21 = *(v0 + 392);
    v2 = *(*(v5 + 48) + (__clz(__rbit64(v19)) | (v18 << 6)));
    *(v0 + 709) = v2;
    v22 = sub_6DDC(v2);
    v24 = v23;
    if (!*(v21 + 16))
    {
      goto LABEL_24;
    }

    v3 = v22;
    v25 = *(v0 + 392);
    v26 = *(v25 + 40);
    sub_2A8F4();
    sub_2A414();
    v27 = sub_2A914();
    v28 = -1 << *(v25 + 32);
    v5 = v27 & ~v28;
    if (((*(v25 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v5) & 1) == 0)
    {
LABEL_24:

      v32 = sub_6DDC(v2);
      v34 = v33;
      v35 = objc_allocWithZone(LSApplicationRecord);

      v36 = sub_2A3E4();

      *(v0 + 248) = 0;
      v37 = [v35 initWithBundleIdentifier:v36 allowPlaceholder:1 error:v0 + 248];

      v38 = *(v0 + 248);
      if (v37)
      {
        goto LABEL_27;
      }

      v39 = v38;
      sub_29A44();

      swift_willThrow();

      v40 = objc_allocWithZone(LSApplicationRecord);

      v41 = sub_2A3E4();

      *(v0 + 256) = 0;
      v37 = [v40 initWithBundleIdentifierOfSystemPlaceholder:v41 error:v0 + 256];

      v38 = *(v0 + 256);
      if (v37)
      {
        v108 = 0;
LABEL_27:
        v42 = v38;
        v43 = [v37 localizedName];
        v32 = sub_2A3F4();
        v45 = v44;

        v34 = v45;
      }

      else
      {
        v99 = v38;
        sub_29A44();

        swift_willThrow();

        v108 = 0;
      }

      *(v0 + 616) = v34;
      *(v0 + 608) = v32;
      *(v0 + 600) = v108;
      *(v0 + 624) = sub_6DDC(v2);
      *(v0 + 632) = v46;
      *(v0 + 640) = sub_2A3E4();
      *(v0 + 648) = "collationString";
      sub_2A494();
      *(v0 + 656) = sub_2A484();
      v47 = sub_2A474();
      v49 = sub_1C99C;
      goto LABEL_50;
    }

    v19 &= v19 - 1;
    v7 = ~v28;
    v29 = *(v0 + 392);
    while (1)
    {
      v30 = (*(v29 + 48) + 16 * v5);
      v31 = *v30 == v3 && v30[1] == v24;
      if (v31 || (sub_2A8A4() & 1) != 0)
      {
        break;
      }

      v29 = *(v0 + 392);
      v5 = (v5 + 1) & v7;
      if (((*(v29 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v5) & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_55;
    }

    v5 = *(v0 + 568);
    if (v20 >= (((1 << *(v0 + 708)) + 63) >> 6))
    {
      break;
    }

    v19 = *(v5 + 8 * v20 + 56);
    ++v18;
    if (v19)
    {
      v18 = v20;
      goto LABEL_15;
    }
  }

  v50 = *(v0 + 392);

  *(v0 + 672) = v9;
  v51 = *(v0 + 320);
  v52 = *(v0 + 288);

  v53 = sub_1E690(v52, v51, v9);
  *(v0 + 680) = v108;

  *(v0 + 264) = v53;
  if (qword_389F0 != -1)
  {
    swift_once();
  }

  v54 = qword_3AD50;
  v104._countAndFlagsBits = 0x800000000002D720;
  v110._countAndFlagsBits = 0x20746C7561666544;
  v110._object = 0xEC00000073707041;
  v116.value._countAndFlagsBits = 0;
  v116.value._object = 0;
  v55.super.isa = qword_3AD50;
  v122._countAndFlagsBits = 0;
  v122._object = 0xE000000000000000;
  v56 = sub_29A34(v110, v116, v55, v122, v104);
  v58 = v57;
  v105._countAndFlagsBits = 0x800000000002DAE0;
  v105._object = 0x800000000002DAE0;
  v111._countAndFlagsBits = 0xD00000000000001DLL;
  v111._object = 0x800000000002E120;
  v117.value._countAndFlagsBits = 0;
  v117.value._object = 0;
  v59.super.isa = v54;
  v123._countAndFlagsBits = 0;
  v123._object = 0xE000000000000000;
  v60 = sub_29A34(v111, v117, v59, v123, v105);
  v62 = v61;
  v63 = sub_223F8(0, 1, 1, &_swiftEmptyArrayStorage);
  v65 = *(v63 + 2);
  v64 = *(v63 + 3);
  if (v65 >= v64 >> 1)
  {
    v63 = sub_223F8((v64 > 1), v65 + 1, 1, v63);
  }

  v66 = v0 + 705;
  v67 = *(v0 + 705);
  *(v63 + 2) = v65 + 1;
  v68 = &v63[80 * v65];
  *(v68 + 4) = 0;
  *(v68 + 5) = 0;
  *(v68 + 6) = 0xD000000000000023;
  *(v68 + 7) = 0x800000000002E0F0;
  *(v68 + 8) = 1;
  *(v68 + 9) = v56;
  *(v68 + 10) = v58;
  *(v68 + 11) = v60;
  *(v68 + 12) = v62;
  v68[104] = 0x80;
  if (v67 == 1)
  {
    v106._countAndFlagsBits = 0x800000000002D720;
    v112._object = 0x800000000002E070;
    v112._countAndFlagsBits = 0xD000000000000010;
    v118.value._countAndFlagsBits = 0;
    v118.value._object = 0;
    v69 = v54;
    v70.super.isa = v54;
    v124._countAndFlagsBits = 0;
    v124._object = 0xE000000000000000;
    v71 = sub_29A34(v112, v118, v70, v124, v106);
    v73 = v72;
    v107._countAndFlagsBits = v107._object;
    v113._countAndFlagsBits = 0xD000000000000020;
    v113._object = 0x800000000002E1D0;
    v119.value._countAndFlagsBits = 0;
    v119.value._object = 0;
    v74.super.isa = v54;
    v125._countAndFlagsBits = 0;
    v125._object = 0xE000000000000000;
    v75 = sub_29A34(v113, v119, v74, v125, v107);
    v78 = *(v63 + 2);
    v77 = *(v63 + 3);
    if (v78 >= v77 >> 1)
    {
      v100 = v75;
      v101 = v76;
      v102 = sub_223F8((v77 > 1), v78 + 1, 1, v63);
      v76 = v101;
      v63 = v102;
      v75 = v100;
      v69 = v54;
    }

    *(v63 + 2) = v78 + 1;
    v79 = &v63[80 * v78];
    *(v79 + 2) = xmmword_2CE70;
    *(v79 + 6) = 0xD000000000000027;
    *(v79 + 7) = 0x800000000002E1A0;
    *(v79 + 8) = 1;
    *(v79 + 9) = v71;
    *(v79 + 10) = v73;
    *(v79 + 11) = v75;
    *(v79 + 12) = v76;
    v79[104] = 0x80;
    v66 = v0 + 705;
  }

  else
  {
    v69 = v54;
  }

  v80 = *(v66 + 2);
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = v63;
  sub_24C38(0, 0, (v0 + 64));
  if (v80)
  {
    v106._countAndFlagsBits = 0x800000000002D720;
    v114._countAndFlagsBits = 0x70696C4320707041;
    v114._object = 0xE900000000000073;
    v120.value._countAndFlagsBits = 0;
    v120.value._object = 0;
    v81.super.isa = v69;
    v126._countAndFlagsBits = 0;
    v126._object = 0xE000000000000000;
    v82 = sub_29A34(v114, v120, v81, v126, v106);
    v84 = v83;
    sub_2B4C(&qword_39598, &unk_2D028);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_2CE80;
    *(v85 + 32) = xmmword_2CE90;
    *(v85 + 48) = 0xD000000000000020;
    *(v85 + 56) = 0x800000000002E170;
    *(v85 + 64) = 1;
    *(v85 + 71) = 0;
    *(v85 + 69) = 0;
    *(v85 + 65) = 0;
    *(v85 + 72) = v82;
    *(v85 + 80) = v84;
    *(v85 + 88) = 0;
    *(v85 + 104) = 0;
    v86 = *(v0 + 264);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v86 = sub_22618(0, *(v86 + 2) + 1, 1, v86);
    }

    v88 = *(v86 + 2);
    v87 = *(v86 + 3);
    if (v88 >= v87 >> 1)
    {
      v86 = sub_22618((v87 > 1), v88 + 1, 1, v86);
    }

    *(v86 + 2) = v88 + 1;
    v89 = &v86[40 * v88];
    *(v89 + 2) = xmmword_2CE70;
    *(v89 + 6) = 0;
    *(v89 + 7) = 0;
    *(v89 + 8) = v85;
    *(v0 + 264) = v86;
  }

  else
  {
    v86 = *(v0 + 264);
  }

  v106._countAndFlagsBits = 0x800000000002D720;
  v115._countAndFlagsBits = 0x41206E6564646948;
  v115._object = 0xEB00000000737070;
  v121.value._countAndFlagsBits = 0;
  v121.value._object = 0;
  v90.super.isa = v69;
  v127._countAndFlagsBits = 0;
  v127._object = 0xE000000000000000;
  v91 = sub_29A34(v115, v121, v90, v127, v106);
  v93 = v92;
  *(v0 + 720) = 1;
  sub_2B4C(&qword_39598, &unk_2D028);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_2CE80;
  *(v94 + 32) = xmmword_2CEA0;
  *(v94 + 48) = 0xD000000000000022;
  *(v94 + 56) = 0x800000000002E140;
  *(v94 + 64) = 1;
  *(v94 + 71) = 0;
  *(v94 + 69) = 0;
  *(v94 + 65) = 0;
  *(v94 + 72) = v91;
  *(v94 + 80) = v93;
  *(v94 + 88) = 0;
  *(v94 + 104) = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v86 = sub_22618(0, *(v86 + 2) + 1, 1, v86);
  }

  v96 = *(v86 + 2);
  v95 = *(v86 + 3);
  if (v96 >= v95 >> 1)
  {
    v86 = sub_22618((v95 > 1), v96 + 1, 1, v86);
  }

  *(v0 + 688) = v86;
  v97 = *(v0 + 328);
  *(v86 + 2) = v96 + 1;
  v98 = &v86[40 * v96];
  *(v98 + 2) = xmmword_2CE90;
  *(v98 + 6) = 0;
  *(v98 + 7) = 0;
  *(v98 + 8) = v94;
  swift_unknownObjectWeakInit();
  sub_2A494();
  *(v0 + 696) = sub_2A484();
  v47 = sub_2A474();
  v49 = sub_1D598;
LABEL_50:

  return _swift_task_switch(v49, v47, v48);
}

uint64_t sub_1D598()
{
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[85];

  sub_1EA10();
  if (v3)
  {
  }

  else
  {
    v5 = v0[86];
    v6 = v0[84];

    swift_unknownObjectWeakDestroy();

    return _swift_task_switch(sub_1D6A8, 0, 0);
  }
}

uint64_t sub_1D6A8()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 352);

  v3 = *(v0 + 8);

  return v3();
}

void sub_1D750(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2A774();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = &_swiftEmptyArrayStorage;
    sub_23C8C(0, v2 & ~(v2 >> 63), 0);
    v37 = &_swiftEmptyArrayStorage;
    if (v35)
    {
      v3 = sub_2A724();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_2A704();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        sub_26FDC(v39, v40, v41, v1);
        v13 = v12;
        v14 = [v12 sourceIdentifier];
        v15 = sub_2A3F4();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = v37[2];
        v19 = v37[3];
        if (v20 >= v19 >> 1)
        {
          sub_23C8C((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        v18[2] = v20 + 1;
        v21 = &v18[2 * v20];
        v21[4] = v15;
        v21[5] = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_2A744())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          sub_2B4C(&qword_395D8, &qword_2D0A8);
          v7 = sub_2A514();
          sub_2A7A4();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_32:
            sub_2888C(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_2888C(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_2888C(v9, v36, 0);
          }

LABEL_31:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

id sub_1DAB8(void *a1, uint64_t a2)
{
  result = [a1 bundleIdentifier];
  if (result)
  {
    v5 = result;
    v6 = sub_2A3F4();
    v8 = v7;

    v9 = [a1 appClipMetadata];
    if (v9)
    {

LABEL_4:

      return &dword_0 + 1;
    }

    if ([a1 developerType] != 1 && objc_msgSend(a1, "isWebApp"))
    {
      swift_beginAccess();
      sub_24AE8(&v11, v6, v8);
      swift_endAccess();
      goto LABEL_4;
    }

    v10 = sub_1DBD8(v6, v8, a2);

    return (v10 & 1);
  }

  return result;
}

uint64_t sub_1DBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_2A8F4();
  sub_2A414();
  v7 = sub_2A914();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_2A8A4() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1DCD0(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_77;
  }

  v4 = *(a2 + 40);
  sub_2A8F4();
  sub_6DDC(a1);
  sub_2A414();

  v5 = sub_2A914();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = 0xEE007377656E2E65;
      v10 = 0x6C7070612E6D6F63;
      switch(*(*(a2 + 48) + v7))
      {
        case 1:
          v10 = 0xD00000000000001BLL;
          v9 = 0x800000000002D330;
          break;
        case 2:
          v10 = 0xD000000000000013;
          v9 = 0x800000000002D350;
          break;
        case 3:
          v10 = 0xD000000000000015;
          v9 = 0x800000000002D370;
          break;
        case 4:
          v10 = 0xD000000000000013;
          v9 = 0x800000000002D390;
          break;
        case 5:
          v10 = 0xD000000000000012;
          v9 = 0x800000000002D3B0;
          break;
        case 6:
          v10 = 0xD000000000000014;
          v9 = 0x800000000002D3D0;
          break;
        case 7:
          v10 = 0xD000000000000015;
          v9 = 0x800000000002D3F0;
          break;
        case 8:
          v10 = 0xD000000000000013;
          v9 = 0x800000000002D410;
          break;
        case 9:
          v10 = 0xD000000000000012;
          v9 = 0x800000000002D430;
          break;
        case 0xA:
          v10 = 0xD000000000000016;
          v9 = 0x800000000002D450;
          break;
        case 0xB:
          break;
        case 0xC:
          v10 = 0xD000000000000010;
          v9 = 0x800000000002D480;
          break;
        case 0xD:
          v10 = 0xD000000000000011;
          v9 = 0x800000000002D4A0;
          break;
        case 0xE:
          v10 = 0xD000000000000013;
          v9 = 0x800000000002D4C0;
          break;
        case 0xF:
          v9 = 0xEE007370614D2E65;
          goto LABEL_34;
        case 0x10:
          v10 = 0xD000000000000011;
          v9 = 0x800000000002D4F0;
          break;
        case 0x11:
          v10 = 0xD000000000000011;
          v9 = 0x800000000002D510;
          break;
        case 0x12:
          v10 = 0xD000000000000013;
          v9 = 0x800000000002D530;
          break;
        case 0x13:
          v10 = 0xD000000000000010;
          v9 = 0x800000000002D550;
          break;
        case 0x14:
          v10 = 0xD000000000000011;
          v9 = 0x800000000002D570;
          break;
        case 0x15:
          v9 = 0xEE00656D6F482E65;
          goto LABEL_34;
        case 0x16:
          v10 = 0xD000000000000011;
          v9 = 0x800000000002D5A0;
          break;
        case 0x17:
          v9 = 0xEF636973754D2E65;
          goto LABEL_34;
        case 0x18:
          v9 = 0xEC00000076742E65;
          goto LABEL_34;
        case 0x19:
          v10 = 0xD000000000000019;
          v9 = 0x800000000002D5D0;
          break;
        case 0x1A:
          v10 = 0xD000000000000010;
          v9 = 0x800000000002D5F0;
          break;
        case 0x1B:
          v10 = 0xD000000000000012;
          v9 = 0x800000000002D610;
          break;
        case 0x1C:
          v10 = 0xD000000000000013;
          v9 = 0x800000000002D630;
          break;
        case 0x1D:
          v10 = 0xD000000000000012;
          v9 = 0x800000000002D650;
          break;
        case 0x1E:
          v10 = 0xD000000000000012;
          v9 = 0x800000000002D670;
          break;
        case 0x1F:
          v10 = 0xD000000000000016;
          v9 = 0x800000000002D690;
          break;
        case 0x20:
          v9 = 0xEF73656D61672E65;
LABEL_34:
          v10 = 0x6C7070612E6D6F63;
          break;
        default:
          v10 = 0xD000000000000014;
          v9 = 0x800000000002D310;
          break;
      }

      v11 = 0x6C7070612E6D6F63;
      v12 = 0xEE007377656E2E65;
      switch(a1)
      {
        case 1:
          v11 = 0xD00000000000001BLL;
          v12 = 0x800000000002D330;
          break;
        case 2:
          v11 = 0xD000000000000013;
          v12 = 0x800000000002D350;
          break;
        case 3:
          v11 = 0xD000000000000015;
          v12 = 0x800000000002D370;
          break;
        case 4:
          v11 = 0xD000000000000013;
          v12 = 0x800000000002D390;
          break;
        case 5:
          v11 = 0xD000000000000012;
          v12 = 0x800000000002D3B0;
          break;
        case 6:
          v11 = 0xD000000000000014;
          v12 = 0x800000000002D3D0;
          break;
        case 7:
          v11 = 0xD000000000000015;
          v12 = 0x800000000002D3F0;
          break;
        case 8:
          v11 = 0xD000000000000013;
          v12 = 0x800000000002D410;
          break;
        case 9:
          v11 = 0xD000000000000012;
          v12 = 0x800000000002D430;
          break;
        case 10:
          v11 = 0xD000000000000016;
          v12 = 0x800000000002D450;
          break;
        case 11:
          break;
        case 12:
          v11 = 0xD000000000000010;
          v12 = 0x800000000002D480;
          break;
        case 13:
          v11 = 0xD000000000000011;
          v12 = 0x800000000002D4A0;
          break;
        case 14:
          v11 = 0xD000000000000013;
          v12 = 0x800000000002D4C0;
          break;
        case 15:
          v12 = 0xEE007370614D2E65;
          goto LABEL_65;
        case 16:
          v11 = 0xD000000000000011;
          v12 = 0x800000000002D4F0;
          break;
        case 17:
          v11 = 0xD000000000000011;
          v12 = 0x800000000002D510;
          break;
        case 18:
          v11 = 0xD000000000000013;
          v12 = 0x800000000002D530;
          break;
        case 19:
          v11 = 0xD000000000000010;
          v12 = 0x800000000002D550;
          break;
        case 20:
          v11 = 0xD000000000000011;
          v12 = 0x800000000002D570;
          break;
        case 21:
          v12 = 0xEE00656D6F482E65;
          goto LABEL_65;
        case 22:
          v11 = 0xD000000000000011;
          v12 = 0x800000000002D5A0;
          break;
        case 23:
          v12 = 0xEF636973754D2E65;
          goto LABEL_65;
        case 24:
          v12 = 0xEC00000076742E65;
          goto LABEL_65;
        case 25:
          v11 = 0xD000000000000019;
          v12 = 0x800000000002D5D0;
          break;
        case 26:
          v11 = 0xD000000000000010;
          v12 = 0x800000000002D5F0;
          break;
        case 27:
          v11 = 0xD000000000000012;
          v12 = 0x800000000002D610;
          break;
        case 28:
          v11 = 0xD000000000000013;
          v12 = 0x800000000002D630;
          break;
        case 29:
          v11 = 0xD000000000000012;
          v12 = 0x800000000002D650;
          break;
        case 30:
          v11 = 0xD000000000000012;
          v12 = 0x800000000002D670;
          break;
        case 31:
          v11 = 0xD000000000000016;
          v12 = 0x800000000002D690;
          break;
        case 32:
          v12 = 0xEF73656D61672E65;
LABEL_65:
          v11 = 0x6C7070612E6D6F63;
          break;
        default:
          v11 = 0xD000000000000014;
          v12 = 0x800000000002D310;
          break;
      }

      if (v10 == v11 && v9 == v12)
      {
        break;
      }

      v13 = sub_2A8A4();

      if ((v13 & 1) == 0)
      {
        v7 = (v7 + 1) & v8;
        if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
LABEL_77:
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1E638(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_1E690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v7 >= v6)
  {
    v8 = *(a1 + 16);
  }

  else
  {
    v8 = *(a2 + 16);
  }

  v9 = *(a3 + 16);
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = *(a3 + 16);
  }

  v49 = &_swiftEmptyArrayStorage;
  sub_23C6C(0, v10, 0);
  v11 = &_swiftEmptyArrayStorage;
  v45 = v7;
  v46 = v6;
  v44 = v9;
  v38 = a2;
  v39 = a1;
  v37 = a3;
  if (v10)
  {
    v40 = a3 + 32;

    v12 = 0;
    v13 = (a2 + 40);
    v14 = (a1 + 40);
    v42 = v10;
    while (v6 != v12)
    {
      if (v7 == v12)
      {
        goto LABEL_33;
      }

      if (v9 == v12)
      {
        goto LABEL_34;
      }

      v15 = *(v14 - 1);
      v16 = *v14;
      v17 = *(v13 - 1);
      v18 = *v13;
      v48 = *(v40 + 8 * v12);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_22F20(&v48);
      if (v47)
      {
        goto LABEL_39;
      }

      v19 = v48;
      v49 = v11;
      v21 = v11[2];
      v20 = v11[3];
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v35 = v48;
        sub_23C6C((v20 > 1), v21 + 1, 1);
        v22 = v21 + 1;
        v19 = v35;
        v11 = v49;
      }

      ++v12;
      v11[2] = v22;
      v23 = &v11[5 * v21];
      v23[4] = v15;
      v23[5] = v16;
      v23[6] = v17;
      v23[7] = v18;
      v23[8] = v19;
      v13 += 2;
      v14 += 2;
      v10 = v42;
      v9 = v44;
      v7 = v45;
      v6 = v46;
      if (v42 == v12)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {

LABEL_18:
    if (v10 == v6)
    {
LABEL_19:

      return v11;
    }

    v25 = 16 * v10 + 40;
    v26 = (v39 + v25);
    v27 = (v38 + v25);
    while (v10 < v6)
    {
      if (__OFADD__(v10, 1))
      {
        goto LABEL_36;
      }

      if (v7 == v10)
      {
        goto LABEL_19;
      }

      if (v10 >= v7)
      {
        goto LABEL_37;
      }

      if (v9 == v10)
      {
        goto LABEL_19;
      }

      if (v10 >= v9)
      {
        goto LABEL_38;
      }

      v43 = v10 + 1;
      v28 = *v26;
      v41 = *(v26 - 1);
      v29 = *(v27 - 1);
      v30 = *v27;
      v48 = *(v37 + 32 + 8 * v10);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_22F20(&v48);
      if (v47)
      {
        goto LABEL_39;
      }

      v31 = v48;
      v49 = v11;
      v33 = v11[2];
      v32 = v11[3];
      if (v33 >= v32 >> 1)
      {
        v36 = v48;
        sub_23C6C((v32 > 1), v33 + 1, 1);
        v31 = v36;
        v11 = v49;
      }

      v11[2] = v33 + 1;
      v34 = &v11[5 * v33];
      v34[4] = v41;
      v34[5] = v28;
      v34[6] = v29;
      v34[7] = v30;
      v34[8] = v31;
      ++v10;
      v26 += 2;
      v27 += 2;
      v7 = v45;
      v6 = v46;
      v9 = v44;
      if (v43 == v46)
      {
        goto LABEL_19;
      }
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:

  __break(1u);
  return result;
}

void sub_1EA10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;

    sub_15D50(v2, &OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__sections, sub_93C8);
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    sub_1EAE4();
  }
}

uint64_t sub_1EAE4()
{
  v1 = v0;
  v2 = sub_2B4C(&qword_392C0, &qword_2CD90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v26 - v4;
  swift_getKeyPath();
  v6 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel___observationRegistrar;
  v29 = v0;
  v7 = sub_283A4(&qword_395B0, type metadata accessor for AppsSettingsListViewModel);
  sub_29AD4();

  v9 = (v0 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection);
  v10 = *(v0 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection + 8);
  if (v10 != 4)
  {
    v27 = v5;
    v11 = *v9;
    swift_getKeyPath();
    v29 = v0;
    sub_2B94(v11, v10);
    v26[0] = v7;
    v26[1] = v6;
    sub_29AD4();

    v12 = *(v0 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__sections);
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = 0;
      v28 = v12 + 32;
      while (1)
      {
        v15 = *(v28 + 40 * v14 + 32);
        v16 = *(v15 + 16);
        if (v16)
        {
          break;
        }

LABEL_4:
        if (++v14 == v13)
        {
          goto LABEL_29;
        }
      }

      v17 = (v15 + 104);
      while (1)
      {
        v18 = *(v17 - 8);
        v19 = *(v17 - 16);
        v20 = *v17;
        if (v18 > 1)
        {
          if (v18 == 2)
          {
            if (v10 != 2)
            {
              goto LABEL_8;
            }

            goto LABEL_26;
          }

          if (v18 == 3)
          {
            if (v10 != 3)
            {
              goto LABEL_8;
            }

            goto LABEL_26;
          }
        }

        else
        {
          if (!v18)
          {
            if (v10)
            {
              goto LABEL_8;
            }

            goto LABEL_26;
          }

          if (v18 == 1)
          {
            if (v10 != 1)
            {
              goto LABEL_8;
            }

            goto LABEL_26;
          }
        }

        if (v10 < 4 || (*(v17 - 9) != v11 || v18 != v10) && (sub_2A8A4() & 1) == 0)
        {
          goto LABEL_8;
        }

LABEL_26:
        if (v20 < 0)
        {
          if ((v20 & 1) == 0)
          {
            return sub_6DC0(v11, v10);
          }
        }

        else if ((v19 & 1) == 0)
        {
          return sub_6DC0(v11, v10);
        }

LABEL_8:
        v17 += 80;
        if (!--v16)
        {
          goto LABEL_4;
        }
      }
    }

LABEL_29:
    if (v9[1] == 4)
    {
      *v9 = 0;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v26[-4] = v1;
      *&v26[-3] = xmmword_2B6B0;
      v29 = v1;
      sub_29AC4();
    }

    v22 = v27;
    v23 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_clearSettingsNavigationPath;
    swift_beginAccess();
    sub_E25C(v1 + v23, v22, &qword_392C0, &qword_2CD90);
    v24 = sub_29B94();
    v25 = *(v24 - 8);
    result = (*(v25 + 48))(v22, 1, v24);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      sub_6DC0(v11, v10);
      sub_29B84();
      return (*(v25 + 8))(v22, v24);
    }
  }

  return result;
}

uint64_t sub_1EEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2B4C(&unk_38E10, &qword_2B770);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_E25C(a3, v27 - v11, &unk_38E10, &qword_2B770);
  v13 = sub_2A4C4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_E02C(v12, &unk_38E10, &qword_2B770);
  }

  else
  {
    sub_2A4B4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2A474();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2A404() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_E02C(a3, &unk_38E10, &qword_2B770);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_E02C(a3, &unk_38E10, &qword_2B770);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1F1AC()
{
  v0 = sub_14FE0();
  swift_getKeyPath();
  sub_283A4(&qword_395E0, type metadata accessor for HiddenAppsSettingsListViewModel);
  sub_29AD4();
}

void sub_1F254()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_389F8 != -1)
    {
      swift_once();
    }

    v2 = sub_29C14();
    sub_966C(v2, qword_3AD58);
    v3 = sub_29BF4();
    v4 = sub_2A584();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "Did receive hidden apps changed.", v5, 2u);
    }

    v6 = *&v1[OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_reloadSnapshotSubject];

    sub_2B4C(&qword_39500, &qword_2CFC8);
    sub_55DC(&qword_39508, &qword_39500, &qword_2CFC8);
    sub_29C64();

    v8 = __chkstk_darwin(v7);
    __chkstk_darwin(v8);
    sub_29AB4();
  }
}

uint64_t sub_1F480()
{
  v1 = [objc_opt_self() sharedGuard];
  v0[23] = v1;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_1F5C0;
  v2 = swift_continuation_init();
  v0[17] = sub_2B4C(&qword_39600, &qword_2D170);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1FA08;
  v0[13] = &unk_36788;
  v0[14] = v2;
  [v1 authenticateUnconditionallyWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1F5C0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_1F83C;
  }

  else
  {
    v3 = sub_1F6D0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1F6D0()
{
  v1 = *(v0 + 176);

  swift_unknownObjectWeakInit();
  sub_2A494();
  *(v0 + 200) = sub_2A484();
  v3 = sub_2A474();

  return _swift_task_switch(sub_1F778, v3, v2);
}

uint64_t sub_1F778()
{
  v1 = *(v0 + 200);

  sub_1FAD4();
  swift_unknownObjectWeakDestroy();

  return _swift_task_switch(sub_1F828, 0, 0);
}

uint64_t sub_1F83C()
{
  v20 = v0;
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  if (qword_389F8 != -1)
  {
    swift_once();
  }

  v3 = v0[24];
  v4 = sub_29C14();
  sub_966C(v4, qword_3AD58);
  swift_errorRetain();
  v5 = sub_29BF4();
  v6 = sub_2A564();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[24];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v12 = v0[18];
    v11 = v0[19];
    v13 = v0[20];
    v14 = sub_2A8E4();
    v16 = sub_22978(v14, v15, &v19);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_0, v5, v6, "Authentication Error: %{public}s", v9, 0xCu);
    sub_E1BC(v10);
  }

  else
  {
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1FA08(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_E178((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_2B4C(&qword_39608, &qword_2D178);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

void sub_1FAD4()
{
  v0 = sub_2B4C(&qword_392C8, &qword_2CD98);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13[-v2];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_389F8 != -1)
    {
      swift_once();
    }

    v6 = sub_29C14();
    sub_966C(v6, qword_3AD58);
    v7 = sub_29BF4();
    v8 = sub_2A554();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "Presenting Hidden Apps.", v9, 2u);
    }

    v10 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_appendSettingsNavigationPath;
    swift_beginAccess();
    sub_E25C(v5 + v10, v3, &qword_392C8, &qword_2CD98);
    v11 = sub_29BB4();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v3, 1, v11) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_14588();
      sub_29BA4();
      (*(v12 + 8))(v3, v11);
      sub_14BB4(0, 3uLL);
    }
  }
}

uint64_t sub_1FD14(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = sub_299D4();
  v3[29] = v4;
  v5 = *(v4 - 8);
  v3[30] = v5;
  v6 = *(v5 + 64) + 15;
  v3[31] = swift_task_alloc();
  v7 = *(*(sub_2B4C(&qword_38FE0, &qword_2C9D8) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v8 = sub_2A324();
  v3[33] = v8;
  v9 = *(v8 - 8);
  v3[34] = v9;
  v10 = *(v9 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v11 = sub_29B74();
  v3[37] = v11;
  v12 = *(v11 - 8);
  v3[38] = v12;
  v13 = *(v12 + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v14 = type metadata accessor for AppsSettingsDestinationOption();
  v3[41] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v16 = sub_29D54();
  v3[44] = v16;
  v17 = *(v16 - 8);
  v3[45] = v17;
  v18 = *(v17 + 64) + 15;
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v19 = *(*(sub_2B4C(&unk_39490, &qword_2CF80) - 8) + 64) + 15;
  v3[48] = swift_task_alloc();
  v20 = sub_29A24();
  v3[49] = v20;
  v21 = *(v20 - 8);
  v3[50] = v21;
  v22 = *(v21 + 64) + 15;
  v3[51] = swift_task_alloc();
  v23 = sub_29AA4();
  v3[52] = v23;
  v24 = *(v23 - 8);
  v3[53] = v24;
  v25 = *(v24 + 64) + 15;
  v3[54] = swift_task_alloc();
  v26 = sub_2A364();
  v3[55] = v26;
  v27 = *(v26 - 8);
  v3[56] = v27;
  v28 = *(v27 + 64) + 15;
  v3[57] = swift_task_alloc();

  return _swift_task_switch(sub_200D0, 0, 0);
}

uint64_t sub_200D0()
{
  v107 = v0;
  if (qword_389F8 != -1)
  {
LABEL_38:
    swift_once();
  }

  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];
  v4 = v0[27];
  v5 = v0[28];
  v6 = sub_29C14();
  v0[58] = sub_966C(v6, qword_3AD58);
  (*(v2 + 16))(v1, v4, v3);
  v7 = v5;
  v8 = sub_29BF4();
  v9 = sub_2A584();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[56];
  v12 = v0[57];
  v13 = v0[55];
  if (v10)
  {
    v14 = v0[53];
    v15 = v0[54];
    v99 = v0[52];
    v101 = v0[55];
    v16 = v0[28];
    v17 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    *v17 = 136315907;
    swift_getObjectType();
    v18 = sub_2A924();
    v20 = sub_22978(v18, v19, &v106);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_22978(0xD00000000000001FLL, 0x800000000002E020, &v106);
    *(v17 + 22) = 2160;
    *(v17 + 24) = 1752392040;
    *(v17 + 32) = 2081;
    sub_2A354();
    v21 = sub_29A84();
    v23 = v22;
    (*(v14 + 8))(v15, v99);
    (*(v11 + 8))(v12, v101);
    v24 = sub_22978(v21, v23, &v106);

    *(v17 + 34) = v24;
    _os_log_impl(&dword_0, v8, v9, "Start (%s.%s) url: '%{private,mask.hash}s'…", v17, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v12, v13);
  }

  v26 = v0[53];
  v25 = v0[54];
  v27 = v0[52];
  v28 = v0[49];
  v29 = v0[50];
  v30 = v0[48];
  v31 = v0[27];
  sub_2A354();
  sub_299F4();
  (*(v26 + 8))(v25, v27);
  if ((*(v29 + 48))(v30, 1, v28) == 1)
  {
    sub_E02C(v0[48], &unk_39490, &qword_2CF80);
    v32 = sub_29BF4();
    v33 = sub_2A564();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "Failed to retrieve URL components from URL.", v34, 2u);
    }

    v36 = v0[45];
    v35 = v0[46];
    v37 = v0[44];
    v39 = v0[27];
    v38 = v0[28];
    v40 = v0[26];

    sub_2A344();
    sub_2A384();
    (*(v36 + 8))(v35, v37);
    v41 = v38;
    v42 = v39;
    goto LABEL_34;
  }

  v43 = v0[47];
  v44 = v0[27];
  (*(v0[50] + 32))(v0[51], v0[48], v0[49]);
  sub_2A344();
  v0[12] = sub_29A04();
  v0[13] = v45;
  v0[14] = 47;
  v0[15] = 0xE100000000000000;
  v0[59] = sub_8228();
  v46 = sub_2A6B4();

  v47 = 0;
  v48 = *(v46 + 16);
  v49 = _swiftEmptyArrayStorage;
LABEL_10:
  v50 = (v46 + 40 + 16 * v47);
  while (v48 != v47)
  {
    if (v47 >= *(v46 + 16))
    {
      __break(1u);
      goto LABEL_38;
    }

    v52 = *(v50 - 1);
    v51 = *v50;
    v50 += 2;
    ++v47;
    v53 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v53 = v52 & 0xFFFFFFFFFFFFLL;
    }

    if (v53)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v106 = v49;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23C8C(0, *(v49 + 2) + 1, 1);
        v49 = v106;
      }

      v56 = *(v49 + 2);
      v55 = *(v49 + 3);
      if (v56 >= v55 >> 1)
      {
        sub_23C8C((v55 > 1), v56 + 1, 1);
        v49 = v106;
      }

      *(v49 + 2) = v56 + 1;
      v57 = &v49[16 * v56];
      *(v57 + 4) = v52;
      *(v57 + 5) = v51;
      goto LABEL_10;
    }
  }

  v58 = *(v49 + 2);
  if (!v58)
  {
    v68 = v0[50];
    v104 = v0[51];
    v69 = v0[49];
    v70 = v0[47];
    v72 = v0[44];
    v71 = v0[45];
    v74 = v0[27];
    v73 = v0[28];
    v75 = v0[26];

    sub_2A384();
    (*(v71 + 8))(v70, v72);
    (*(v68 + 8))(v104, v69);
    v41 = v73;
    v42 = v74;
    goto LABEL_34;
  }

  v59 = *(v49 + 4);
  v0[60] = v59;
  v60 = *(v49 + 5);
  v0[61] = v60;

  v61 = swift_isUniquelyReferenced_nonNull_native();
  v0[24] = v49;
  if (!v61 || (v58 - 1) > *(v49 + 3) >> 1)
  {
    v49 = sub_2286C(v61, v58, 1, v49);
    v0[24] = v49;
  }

  v0[62] = v49;
  sub_27FB8(0, 1, 0);

  v0[63] = sub_7B10(v59, v60);
  v0[64] = v62;
  if (v62 == 4)
  {

    v63 = sub_29BF4();
    v64 = sub_2A584();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v106 = v66;
      *v65 = 136446210;
      v67 = sub_22978(v59, v60, &v106);

      *(v65 + 4) = v67;
      _os_log_impl(&dword_0, v63, v64, "Attempting to deep link into %{public}s which is not supported.", v65, 0xCu);
      sub_E1BC(v66);
    }

    else
    {
    }

    v79 = v0[50];
    v78 = v0[51];
    v80 = v0[49];
    v81 = v0[47];
    v82 = v0[44];
    v83 = v0[45];
    v85 = v0[27];
    v84 = v0[28];
    v86 = v0[26];
    sub_2A384();
    (*(v83 + 8))(v81, v82);
    (*(v79 + 8))(v78, v80);
    v41 = v84;
    v42 = v85;
LABEL_34:
    sub_218D4(v41, v42);
    v87 = v0[57];
    v88 = v0[54];
    v89 = v0[51];
    v91 = v0[47];
    v90 = v0[48];
    v92 = v0[46];
    v94 = v0[42];
    v93 = v0[43];
    v96 = v0[39];
    v95 = v0[40];
    v100 = v0[36];
    v102 = v0[35];
    v103 = v0[32];
    v105 = v0[31];

    v97 = v0[1];

    return v97();
  }

  v76 = async function pointer to static AppDistributor.shouldShowAppInstallationSettings()[1];
  v77 = swift_task_alloc();
  v0[65] = v77;
  *v77 = v0;
  v77[1] = sub_20984;

  return static AppDistributor.shouldShowAppInstallationSettings()();
}

uint64_t sub_20984(char a1)
{
  v2 = *(*v1 + 520);
  v4 = *v1;
  *(*v1 + 529) = a1;

  return _swift_task_switch(sub_20A84, 0, 0);
}

id sub_20A84()
{
  v183 = v0;
  v1 = *(v0 + 480) == 0xD000000000000012 && 0x800000000002D430 == *(v0 + 488);
  if (v1 || (sub_2A8A4() & 1) != 0)
  {
    result = [objc_opt_self() sharedConnection];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v3 = result;
    v4 = [result BOOLRestrictionForFeature:MCFeatureAccountModificationAllowed];

    if (v4 == 2)
    {
      v5 = *(v0 + 504);
      v6 = *(v0 + 512);
      v8 = *(v0 + 488);
      v7 = *(v0 + 496);
      v9 = *(v0 + 464);

      sub_6DC0(v5, v6);

      v10 = sub_29BF4();
      v11 = sub_2A584();

      v12 = os_log_type_enabled(v10, v11);
      v13 = *(v0 + 488);
      if (v12)
      {
        v14 = *(v0 + 480);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v180[0]._countAndFlagsBits = v16;
        *v15 = 141558275;
        *(v15 + 4) = 1752392040;
        *(v15 + 12) = 2081;
        v17 = sub_22978(v14, v13, &v180[0]._countAndFlagsBits);

        *(v15 + 14) = v17;
        v18 = "Requested application '%{private,mask.hash}s' is restricted.";
LABEL_63:
        _os_log_impl(&dword_0, v10, v11, v18, v15, 0x16u);
        sub_E1BC(v16);

        goto LABEL_77;
      }

LABEL_49:

LABEL_77:
      v141 = *(v0 + 400);
      v140 = *(v0 + 408);
      v142 = *(v0 + 392);
      v143 = *(v0 + 376);
      v144 = *(v0 + 352);
      v145 = *(v0 + 360);
      v147 = *(v0 + 216);
      v146 = *(v0 + 224);
      v148 = *(v0 + 208);
      sub_2A384();
      (*(v145 + 8))(v143, v144);
      (*(v141 + 8))(v140, v142);
      v121 = v146;
      v122 = v147;
      goto LABEL_78;
    }
  }

  v19 = *(v0 + 512);
  v20 = *(v0 + 488);

  if (v19 > 1)
  {
    if (v19 == 2)
    {
LABEL_61:
      v101 = *(v0 + 504);
      v100 = *(v0 + 512);
      v102 = *(v0 + 496);
      v103 = *(v0 + 464);

      sub_2B94(v101, v100);
      v10 = sub_29BF4();
      v11 = sub_2A584();
      sub_6DC0(v101, v100);
      v104 = os_log_type_enabled(v10, v11);
      v106 = *(v0 + 504);
      v105 = *(v0 + 512);
      if (!v104)
      {

        sub_6DC0(v106, v105);
        goto LABEL_77;
      }

      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v180[0]._countAndFlagsBits = v16;
      *v15 = 141558275;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      v185._countAndFlagsBits = v106;
      v185._object = v105;
      v107 = sub_79B8(v185);
      v109 = v108;
      sub_6DC0(v106, v105);
      v110 = sub_22978(v107, v109, &v180[0]._countAndFlagsBits);

      *(v15 + 14) = v110;
      v18 = "Requested selection '%{private,mask.hash}s' is not likely to be in list.";
      goto LABEL_63;
    }

    if (v19 == 3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (!v19)
    {
      goto LABEL_17;
    }

    if (v19 == 1)
    {
      if (*(v0 + 529) != 1)
      {
        goto LABEL_61;
      }

      goto LABEL_17;
    }
  }

  v80 = *(v0 + 504);
  v32 = *(v0 + 512);
  sub_280D4(v80, v32);
  v81 = sub_27200();
  LOBYTE(v80) = sub_1DBD8(v80, v32, v81);

  if (v80)
  {
    if (qword_38A10 != -1)
    {
LABEL_87:
      swift_once();
    }

    v83 = *(v0 + 504);
    v82 = *(v0 + 512);
    v84 = sub_1DBD8(v83, v32, off_39360);
    sub_6DC0(v83, v82);
    if ((v84 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    sub_6DC0(*(v0 + 504), *(v0 + 512));
  }

  sub_2B94(*(v0 + 504), *(v0 + 512));
  v99 = sub_7330();
  if (v99 == 33)
  {
    goto LABEL_61;
  }

  if (qword_38A18 != -1)
  {
    v160 = v99;
    swift_once();
    v99 = v160;
  }

  if ((sub_1DCD0(v99, qword_39368) & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_17:
  v21 = *(v0 + 504);
  v22 = *(v0 + 512);
  v24 = *(v0 + 336);
  v23 = *(v0 + 344);
  v25 = *(v0 + 328);
  v26 = sub_21C3C(v21, v22);
  sub_30EC(v26, v27, v21, v22, v23);
  sub_6DC0(v21, v22);

  sub_2F78(v23, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v74 = *(v0 + 496);
      v75 = *(v0 + 376);
      v77 = *(v0 + 336);
      v76 = *(v0 + 344);

      v78 = *v77;
      v79 = v77[1];
      *(v0 + 128) = v78;
      *(v0 + 136) = v79;
      sub_E08C();
      sub_29D44();
      sub_308C(v76);
      goto LABEL_49;
    }

    v95 = *(v0 + 496);
    v96 = *(v0 + 376);
    v97 = *(v0 + 344);

    sub_14588();
    sub_29D44();
    v98 = v97;
LABEL_76:
    sub_308C(v98);
    goto LABEL_77;
  }

  if (EnumCaseMultiPayload)
  {
    v85 = *(v0 + 496);
    v86 = *(v0 + 400);
    v173 = *(v0 + 392);
    v177 = *(v0 + 408);
    v87 = *(v0 + 376);
    v88 = *(v0 + 360);
    v90 = *(v0 + 336);
    v89 = *(v0 + 344);
    v91 = *(v0 + 272);
    v92 = *(v0 + 280);
    v93 = *(v0 + 264);
    v170 = *(v0 + 224);
    v165 = *(v0 + 352);
    v168 = *(v0 + 216);
    v94 = *(v0 + 208);

    (*(v91 + 32))(v92, v90, v93);
    sub_2A374();
    (*(v91 + 8))(v92, v93);
    sub_308C(v89);
    (*(v88 + 8))(v87, v165);
    (*(v86 + 8))(v177, v173);
LABEL_66:
    v122 = v168;
    v121 = v170;
LABEL_78:
    sub_218D4(v121, v122);
    v149 = *(v0 + 456);
    v150 = *(v0 + 432);
    v151 = *(v0 + 408);
    v153 = *(v0 + 376);
    v152 = *(v0 + 384);
    v154 = *(v0 + 368);
    v156 = *(v0 + 336);
    v155 = *(v0 + 344);
    v158 = *(v0 + 312);
    v157 = *(v0 + 320);
    v169 = *(v0 + 288);
    v171 = *(v0 + 280);
    v175 = *(v0 + 256);
    v179 = *(v0 + 248);

    v159 = *(v0 + 8);

    return v159();
  }

  v29 = *(v0 + 264);
  v30 = *(v0 + 272);
  v31 = *(v0 + 256);
  (*(*(v0 + 304) + 32))(*(v0 + 320), *(v0 + 336), *(v0 + 296));
  sub_29B34();
  if ((*(v30 + 48))(v31, 1, v29) != 1)
  {
    v111 = *(v0 + 496);
    v112 = *(v0 + 400);
    v174 = *(v0 + 392);
    v178 = *(v0 + 408);
    v113 = *(v0 + 376);
    v114 = *(v0 + 360);
    v163 = *(v0 + 344);
    v166 = *(v0 + 352);
    v115 = *(v0 + 304);
    v161 = *(v0 + 296);
    v162 = *(v0 + 320);
    v116 = *(v0 + 288);
    v118 = *(v0 + 264);
    v117 = *(v0 + 272);
    v119 = *(v0 + 256);
    v168 = *(v0 + 216);
    v170 = *(v0 + 224);
    v120 = *(v0 + 208);

    (*(v117 + 32))(v116, v119, v118);
    sub_2A374();
    (*(v117 + 8))(v116, v118);
    (*(v115 + 8))(v162, v161);
    sub_308C(v163);
    (*(v114 + 8))(v113, v166);
    (*(v112 + 8))(v178, v174);
    goto LABEL_66;
  }

  v32 = *(v0 + 408);
  sub_E02C(*(v0 + 256), &qword_38FE0, &qword_2C9D8);
  v33 = sub_299E4();
  if (v33)
  {
    v34 = v33;
  }

  else
  {
    v34 = _swiftEmptyArrayStorage;
  }

  v35 = v34[2];
  if (!v35)
  {
    countAndFlagsBits = &_swiftEmptyDictionarySingleton;
LABEL_68:
    v123 = *(v0 + 496);
    v124 = *(v0 + 408);

    *(v0 + 528) = 1;
    sub_2A7C4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26C84(v180, 0x6574616D696E61, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    v126 = countAndFlagsBits;
    *(v0 + 200) = v123;
    sub_2B4C(&qword_394B8, &qword_2CF90);
    sub_55DC(&unk_394C0, &qword_394B8, &qword_2CF90);
    v127 = sub_2A3C4();
    v129 = v128;

    v130._countAndFlagsBits = sub_29A14();
    if (v130._object)
    {
      v180[0]._countAndFlagsBits = 35;
      v180[0]._object = 0xE100000000000000;
      sub_2A424(v130);

      sub_2A424(v180[0]);
    }

    v131 = HIBYTE(v129) & 0xF;
    if ((v129 & 0x2000000000000000) == 0)
    {
      v131 = v127 & 0xFFFFFFFFFFFFLL;
    }

    if (v131)
    {
      *(v0 + 144) = v127;
      *(v0 + 152) = v129;
      sub_2A7C4();
      v132 = swift_isUniquelyReferenced_nonNull_native();
      v182 = countAndFlagsBits;
      sub_26C84(v180, 1752457584, 0xE400000000000000, v132);
      v126 = v182;
    }

    else
    {
    }

    v133 = *(v0 + 376);
    v134 = *(v0 + 344);
    v136 = *(v0 + 312);
    v135 = *(v0 + 320);
    v137 = *(v0 + 296);
    v138 = *(v0 + 304);
    sub_21E64(v126);

    sub_29B24();

    sub_283A4(&qword_38B90, &type metadata accessor for PreferencesControllerRecipe);
    sub_29D44();
    v139 = *(v138 + 8);
    v139(v136, v137);
    v139(v135, v137);
    v98 = v134;
    goto LABEL_76;
  }

  v36 = 0;
  v37 = *(v0 + 240);
  v172 = v34 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
  countAndFlagsBits = &_swiftEmptyDictionarySingleton;
  v176 = v37;
  v164 = v34[2];
  v167 = (v37 + 8);
  while (1)
  {
    if (v36 >= v34[2])
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    (*(v176 + 16))(*(v0 + 248), &v172[*(v176 + 72) * v36], *(v0 + 232));
    v39 = sub_299B4();
    v41 = v40;
    v42 = sub_299C4();
    if (!v43 || (v44 = *(v0 + 472), *(v0 + 160) = v42, *(v0 + 168) = v43, v45 = sub_2A6C4(), v47 = v46, , !v47))
    {
      v59 = sub_266C8(v39, v41);
      v32 = v60;

      if (v32)
      {
        v180[0]._countAndFlagsBits = countAndFlagsBits;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_26E14();
          countAndFlagsBits = v180[0]._countAndFlagsBits;
        }

        v32 = *(v0 + 248);
        v61 = *(v0 + 232);
        v62 = *(countAndFlagsBits[6] + 16 * v59 + 8);

        v63 = countAndFlagsBits[7] + 40 * v59;
        v64 = *v63;
        v65 = *(v63 + 16);
        *(v0 + 48) = *(v63 + 32);
        *(v0 + 16) = v64;
        *(v0 + 32) = v65;
        sub_26AC8(v59, countAndFlagsBits);
        (*v167)(v32, v61);
      }

      else
      {
        (*v167)(*(v0 + 248), *(v0 + 232));
        *(v0 + 48) = 0;
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
      }

      sub_E02C(v0 + 16, &qword_394B0, &qword_2CF88);
      goto LABEL_27;
    }

    v48 = v34;
    *(v0 + 176) = v45;
    *(v0 + 184) = v47;
    sub_2A7C4();
    v49 = v180[1];
    *(v0 + 56) = v180[0];
    *(v0 + 72) = v49;
    *(v0 + 88) = v181;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v32 = countAndFlagsBits;
    v52 = sub_266C8(v39, v41);
    v53 = countAndFlagsBits[2];
    v54 = (v51 & 1) == 0;
    v55 = v53 + v54;
    if (__OFADD__(v53, v54))
    {
      goto LABEL_85;
    }

    v56 = v51;
    if (countAndFlagsBits[3] >= v55)
    {
      if ((v50 & 1) == 0)
      {
        sub_26E14();
      }

      goto LABEL_41;
    }

    sub_267F8(v55, v50);
    v57 = sub_266C8(v39, v41);
    if ((v56 & 1) != (v58 & 1))
    {
      break;
    }

    v52 = v57;
LABEL_41:
    v32 = *(v0 + 248);
    v66 = *(v0 + 232);
    if (v56)
    {

      sub_28078(v0 + 56, countAndFlagsBits[7] + 40 * v52);
      (*v167)(v32, v66);
    }

    else
    {
      countAndFlagsBits[(v52 >> 6) + 8] |= 1 << v52;
      v67 = (countAndFlagsBits[6] + 16 * v52);
      *v67 = v39;
      v67[1] = v41;
      v68 = countAndFlagsBits[7] + 40 * v52;
      v69 = *(v0 + 88);
      v70 = *(v0 + 72);
      *v68 = *(v0 + 56);
      *(v68 + 16) = v70;
      *(v68 + 32) = v69;
      (*v167)(v32, v66);
      v71 = countAndFlagsBits[2];
      v72 = __OFADD__(v71, 1);
      v73 = v71 + 1;
      if (v72)
      {
        goto LABEL_86;
      }

      countAndFlagsBits[2] = v73;
    }

    v34 = v48;
    v35 = v164;
LABEL_27:
    if (v35 == ++v36)
    {
      goto LABEL_68;
    }
  }

  return sub_2A8D4();
}

void sub_218D4(void *a1, uint64_t a2)
{
  v4 = sub_29AA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2A364();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_389F8 != -1)
  {
    swift_once();
  }

  v14 = sub_29C14();
  sub_966C(v14, qword_3AD58);
  (*(v10 + 16))(v13, a2, v9);
  v15 = a1;
  v16 = sub_29BF4();
  v17 = sub_2A584();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = v4;
    v19 = v18;
    v29 = swift_slowAlloc();
    v30 = v29;
    *v19 = 136315907;
    swift_getObjectType();
    v20 = sub_2A924();
    v22 = sub_22978(v20, v21, &v30);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_22978(0xD00000000000001FLL, 0x800000000002E020, &v30);
    *(v19 + 22) = 2160;
    *(v19 + 24) = 1752392040;
    *(v19 + 32) = 2081;
    sub_2A354();
    v23 = sub_29A84();
    v25 = v24;
    (*(v5 + 8))(v8, v28);
    (*(v10 + 8))(v13, v9);
    v26 = sub_22978(v23, v25, &v30);

    *(v19 + 34) = v26;
    _os_log_impl(&dword_0, v16, v17, "…Complete (%s.%s) url: '%{private,mask.hash}s'", v19, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_21C3C(uint64_t a1, uint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (qword_389F0 != -1)
      {
        swift_once();
      }

      v2.super.isa = qword_3AD50;
      v5._countAndFlagsBits = 0x800000000002D720;
      v3._countAndFlagsBits = 0x70696C4320707041;
      v3._object = 0xE900000000000073;
      goto LABEL_21;
    }

    if (a2 == 3)
    {
      if (qword_389F0 != -1)
      {
        swift_once();
      }

      v2.super.isa = qword_3AD50;
      v5._countAndFlagsBits = 0x800000000002D720;
      v3._countAndFlagsBits = 0x41206E6564646948;
      v3._object = 0xEB00000000737070;
      goto LABEL_21;
    }
  }

  else
  {
    if (!a2)
    {
      if (qword_389F0 != -1)
      {
        swift_once();
      }

      v2.super.isa = qword_3AD50;
      v5._countAndFlagsBits = 0x800000000002D720;
      v3._countAndFlagsBits = 0x20746C7561666544;
      v3._object = 0xEC00000073707041;
      goto LABEL_21;
    }

    if (a2 == 1)
    {
      if (qword_389F0 != -1)
      {
        v5._object = "from LSEnumerator";
        swift_once();
      }

      v2.super.isa = qword_3AD50;
      v3._countAndFlagsBits = 0xD000000000000010;
      v5._countAndFlagsBits = 0x800000000002D720;
      v3._object = 0x800000000002E070;
LABEL_21:
      v7.value._countAndFlagsBits = 0;
      v7.value._object = 0;
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      return sub_29A34(v3, v7, v2, v8, v5);
    }
  }

  return sub_984C(a1, a2);
}

uint64_t sub_21E64(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2B4C(&qword_394E8, &qword_2CFB0);
    v2 = sub_2A884();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_280E4(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_28140(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_28140(v35, v24);
    result = sub_2A7B4(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
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
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_28140(v24, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22168(void *a1, uint64_t a2, void *a3, uint64_t a4, const char *a5)
{
  if (a4)
  {
    sub_2A3A4();
  }

  v8 = a3;
  v9 = a1;
  sub_281B0(a5);
}

uint64_t sub_22208(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22300;

  return v7(a1);
}

uint64_t sub_22300()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_223F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2B4C(&qword_39598, &unk_2D028);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22514(char *result, int64_t a2, char a3, char *a4)
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
    sub_2B4C(&qword_395C8, &qword_2D098);
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

char *sub_22618(char *result, int64_t a2, char a3, char *a4)
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
    sub_2B4C(&qword_395B8, &unk_2D088);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_22738(void *result, int64_t a2, char a3, void *a4)
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
    sub_2B4C(&qword_395D0, &qword_2D0A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2B4C(&qword_395C0, &qword_2CB70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2286C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2B4C(&qword_394F8, &qword_2CFC0);
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

uint64_t sub_22978(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22A44(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_28150(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_E1BC(v11);
  return v7;
}

unint64_t sub_22A44(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22B50(a5, a6);
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
    result = sub_2A834();
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

char *sub_22B50(uint64_t a1, unint64_t a2)
{
  v4 = sub_22B9C(a1, a2);
  sub_22CCC(&off_359F0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_22B9C(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_22DB8(v5, 0);
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

  result = sub_2A834();
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
        v10 = sub_2A434();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_22DB8(v10, 0);
        result = sub_2A804();
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

uint64_t sub_22CCC(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_22E2C(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_22DB8(uint64_t a1, uint64_t a2)
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

  sub_2B4C(&qword_394F0, &qword_2CFB8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22E2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2B4C(&qword_394F0, &qword_2CFB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

Swift::Int sub_22F20(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26FC8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22F8C(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_22F8C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2A894(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_2A464();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_231E4(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23084(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23084(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 80 * a3 - 80;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      v11 = *(v10 + 72);
      if (*(v10 + 152) < 0)
      {
        if ((v11 & 0x80000000) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v11 < 0)
      {
        goto LABEL_4;
      }

      v15 = *(v10 + 120);
      v17 = *(v10 + 128);
      v21 = *(v10 + 40);
      v22 = *(v10 + 48);
      sub_8228();
      result = sub_2A6D4();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 80;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v18 = *(v10 + 96);
      v19 = *(v10 + 112);
      *v20 = *(v10 + 128);
      *&v20[9] = *(v10 + 137);
      v16 = *(v10 + 80);
      v12 = *(v10 + 48);
      *(v10 + 112) = *(v10 + 32);
      *(v10 + 128) = v12;
      *(v10 + 144) = *(v10 + 64);
      v13 = *(v10 + 16);
      *(v10 + 80) = *v10;
      *(v10 + 96) = v13;
      *v10 = v16;
      *(v10 + 57) = *&v20[9];
      *(v10 + 32) = v19;
      *(v10 + 48) = *v20;
      *(v10 + 16) = v18;
      v10 -= 80;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_231E4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v106 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = &_swiftEmptyArrayStorage;
LABEL_107:
    v4 = *v106;
    if (!*v106)
    {
      goto LABEL_147;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_141:
      result = sub_23C38(v7);
      v7 = result;
    }

    v109 = v7;
    v97 = v7[2];
    v7 += 2;
    v96 = v97;
    if (v97 >= 2)
    {
      while (*a3)
      {
        v98 = &v109[2 * v96];
        v99 = *v98;
        v100 = &v7[2 * v96];
        v101 = v100[1];
        v102 = v117;
        sub_23940((*a3 + 80 * *v98), (*a3 + 80 * *v100), (*a3 + 80 * v101), v4);
        v117 = v102;
        if (v102)
        {
        }

        if (v101 < v99)
        {
          goto LABEL_133;
        }

        if (v96 - 2 >= *v7)
        {
          goto LABEL_134;
        }

        *v98 = v99;
        v98[1] = v101;
        v103 = *v7 - v96;
        if (*v7 < v96)
        {
          goto LABEL_135;
        }

        v96 = *v7 - 1;
        result = memmove(v100, v100 + 2, 16 * v103);
        *v7 = v96;
        if (v96 <= 1)
        {
        }
      }

      goto LABEL_145;
    }
  }

  v6 = 0;
  v7 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = v7;
      v10 = *a3;
      v11 = *a3 + 80 * v6;
      v13 = *(v11 + 40);
      v12 = *(v11 + 48);
      v14 = *(v11 + 72);
      v15 = *a3 + 80 * v8;
      v17 = *(v15 + 40);
      v16 = *(v15 + 48);
      v18 = *(v15 + 72);
      if (v14 < 0)
      {
        if (v18 < 0)
        {
          goto LABEL_8;
        }
      }

      else if ((v18 & 0x80000000) == 0)
      {
LABEL_8:
        *&v111 = v13;
        *(&v111 + 1) = v12;
        v115 = v17;
        v116 = v16;
        sub_8228();
        v4 = &v111;
        result = sub_2A6D4();
        v19 = result == -1;
LABEL_11:
        v6 = v8 + 2;
        if (v8 + 2 < v5)
        {
          v20 = (v10 + 80 * v8 + 232);
          while (1)
          {
            v21 = *(v20 - 3);
            v23 = *(v20 - 14);
            v22 = *(v20 - 13);
            v24 = *(v20 - 80);
            if (*v20 < 0)
            {
              if ((v24 & 0x80000000) == 0)
              {
                goto LABEL_14;
              }
            }

            else if (v24 < 0)
            {
LABEL_14:
              if (v19)
              {
                v7 = v9;
                if (v6 < v8)
                {
                  goto LABEL_138;
                }

                goto LABEL_23;
              }

              goto LABEL_15;
            }

            *&v111 = *(v20 - 4);
            *(&v111 + 1) = v21;
            v115 = v23;
            v116 = v22;
            sub_8228();
            v4 = &v111;
            result = sub_2A6D4();
            if (((v19 ^ (result != -1)) & 1) == 0)
            {
              break;
            }

LABEL_15:
            v20 += 80;
            if (v5 == ++v6)
            {
              v6 = v5;
              v7 = v9;
              if (!v19)
              {
                goto LABEL_31;
              }

              goto LABEL_22;
            }
          }
        }

        v7 = v9;
        if (v19)
        {
LABEL_22:
          if (v6 < v8)
          {
            goto LABEL_138;
          }

LABEL_23:
          if (v8 < v6)
          {
            v25 = 80 * v6 - 80;
            v26 = 80 * v8;
            v27 = v6;
            v28 = v8;
            do
            {
              if (v28 != --v27)
              {
                v29 = *a3;
                if (!*a3)
                {
                  goto LABEL_144;
                }

                v4 = (v29 + v25);
                v112 = *(v29 + v26 + 16);
                v113 = *(v29 + v26 + 32);
                v114[0] = *(v29 + v26 + 48);
                *(v114 + 9) = *(v29 + v26 + 57);
                v111 = *(v29 + v26);
                result = memmove((v29 + v26), (v29 + v25), 0x50uLL);
                v4[1] = v112;
                v4[2] = v113;
                v4[3] = v114[0];
                *(v4 + 57) = *(v114 + 9);
                *v4 = v111;
              }

              ++v28;
              v25 -= 80;
              v26 += 80;
            }

            while (v28 < v27);
            v7 = v9;
          }
        }

        goto LABEL_31;
      }

      v19 = 0;
      goto LABEL_11;
    }

LABEL_31:
    v30 = a3[1];
    if (v6 < v30)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_137;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_139;
        }

        if (v8 + a4 >= v30)
        {
          v31 = a3[1];
        }

        else
        {
          v31 = v8 + a4;
        }

        if (v31 < v8)
        {
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (v6 != v31)
        {
          break;
        }
      }
    }

LABEL_53:
    if (v6 < v8)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22514(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v47 = v7;
    v48 = v7[2];
    v108 = v47;
    v49 = v47[3];
    v50 = v48 + 1;
    if (v48 >= v49 >> 1)
    {
      result = sub_22514((v49 > 1), v48 + 1, 1, v108);
      v108 = result;
    }

    *(v108 + 16) = v50;
    v51 = v108 + 32;
    v52 = (v108 + 32 + 16 * v48);
    *v52 = v8;
    v52[1] = v6;
    v4 = *v106;
    if (!*v106)
    {
      goto LABEL_146;
    }

    if (v48)
    {
      v7 = v108;
      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = v7[4];
          v55 = v7[5];
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_74:
          if (v57)
          {
            goto LABEL_123;
          }

          v70 = &v7[2 * v50];
          v72 = *v70;
          v71 = v70[1];
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_125;
          }

          v76 = (v51 + 16 * v53);
          v78 = *v76;
          v77 = v76[1];
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_128;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_130;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        if (v50 < 2)
        {
          goto LABEL_131;
        }

        v80 = &v7[2 * v50];
        v82 = *v80;
        v81 = v80[1];
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_89:
        if (v75)
        {
          goto LABEL_127;
        }

        v83 = (v51 + 16 * v53);
        v85 = *v83;
        v84 = v83[1];
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_129;
        }

        if (v86 < v74)
        {
          goto LABEL_4;
        }

LABEL_96:
        if (v53 - 1 >= v50)
        {
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
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
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v7 = (v51 + 16 * (v53 - 1));
        v91 = *v7;
        v92 = (v51 + 16 * v53);
        v93 = v92[1];
        v94 = v117;
        sub_23940((*a3 + 80 * *v7), (*a3 + 80 * *v92), (*a3 + 80 * v93), v4);
        v117 = v94;
        if (v94)
        {
        }

        if (v93 < v91)
        {
          goto LABEL_118;
        }

        if (v53 > *(v108 + 16))
        {
          goto LABEL_119;
        }

        *v7 = v91;
        v7[1] = v93;
        v95 = *(v108 + 16);
        if (v53 >= v95)
        {
          goto LABEL_120;
        }

        v7 = v108;
        v50 = v95 - 1;
        result = memmove((v51 + 16 * v53), v92 + 2, 16 * (v95 - 1 - v53));
        *(v108 + 16) = v95 - 1;
        if (v95 <= 2)
        {
          goto LABEL_4;
        }
      }

      v58 = v51 + 16 * v50;
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_121;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_122;
      }

      v65 = &v7[2 * v50];
      v67 = *v65;
      v66 = v65[1];
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_124;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_126;
      }

      if (v69 >= v61)
      {
        v87 = (v51 + 16 * v53);
        v89 = *v87;
        v88 = v87[1];
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_132;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_74;
    }

    v7 = v108;
LABEL_4:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_107;
    }
  }

  v107 = v7;
  v32 = *a3;
  v33 = *a3 + 80 * v6 - 80;
  v104 = v8;
  v34 = v8 - v6;
LABEL_42:
  v35 = v34;
  v36 = v33;
  while (1)
  {
    v37 = *(v36 + 128);
    v39 = *(v36 + 40);
    v38 = *(v36 + 48);
    v40 = *(v36 + 72);
    if (*(v36 + 152) < 0)
    {
      if ((v40 & 0x80000000) == 0)
      {
        goto LABEL_41;
      }
    }

    else if (v40 < 0)
    {
      goto LABEL_41;
    }

    *&v111 = *(v36 + 120);
    *(&v111 + 1) = v37;
    v115 = v39;
    v116 = v38;
    sub_8228();
    v4 = &v111;
    result = sub_2A6D4();
    if (result != -1)
    {
LABEL_41:
      ++v6;
      v33 += 80;
      --v34;
      if (v6 != v31)
      {
        goto LABEL_42;
      }

      v6 = v31;
      v7 = v107;
      v8 = v104;
      goto LABEL_53;
    }

    if (!v32)
    {
      break;
    }

    v112 = *(v36 + 96);
    v113 = *(v36 + 112);
    v114[0] = *(v36 + 128);
    *(v114 + 9) = *(v36 + 137);
    v111 = *(v36 + 80);
    v41 = *(v36 + 48);
    *(v36 + 112) = *(v36 + 32);
    *(v36 + 128) = v41;
    *(v36 + 144) = *(v36 + 64);
    v42 = *(v36 + 16);
    *(v36 + 80) = *v36;
    *(v36 + 96) = v42;
    *v36 = v111;
    v43 = v112;
    v44 = v113;
    v45 = v114[0];
    *(v36 + 57) = *(v114 + 9);
    *(v36 + 32) = v44;
    *(v36 + 48) = v45;
    *(v36 + 16) = v43;
    v36 -= 80;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_41;
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
  return result;
}

uint64_t sub_23940(char *__dst, char *a2, char *a3, char *__src)
{
  v4 = __src;
  v5 = a3;
  v6 = a2;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = (a2 - __dst) / 80;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 80;
  if (v9 >= v11)
  {
    v17 = 80 * v11;
    if (__src != a2 || &a2[v17] <= __src)
    {
      memmove(__src, a2, 80 * v11);
    }

    v13 = &v4[v17];
    if (v10 < 80 || v6 <= v7)
    {
      v22 = v6;
      goto LABEL_42;
    }

LABEL_25:
    v18 = 0;
    v19 = v13;
    while (1)
    {
      v20 = &v19[v18];
      v21 = *(v6 - 8);
      if (v19[v18 - 8] < 0)
      {
        if (v21 < 0)
        {
LABEL_31:
          v31 = *&v19[v18 - 40];
          v33 = *&v19[v18 - 32];
          v27 = *(v6 - 5);
          v29 = *(v6 - 4);
          sub_8228();
          if (sub_2A6D4() == -1)
          {
            v22 = v6 - 80;
            v23 = &v5[v18];
            v5 = &v5[v18 - 80];
            if (v23 != v6)
            {
              memmove(v5, v6 - 80, 0x50uLL);
              v22 = v6 - 80;
            }

            v13 = &v19[v18];
            if (&v19[v18] <= v4 || (v6 = v22, v22 <= v7))
            {
              v13 = &v19[v18];
              goto LABEL_42;
            }

            goto LABEL_25;
          }
        }
      }

      else if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

      if (&v5[v18] != v20)
      {
        memmove(&v5[v18 - 80], v20 - 80, 0x50uLL);
      }

      v18 -= 80;
      v13 = &v19[v18];
      if (&v19[v18] <= v4)
      {
        v22 = v6;
        goto LABEL_42;
      }
    }
  }

  v12 = 80 * v9;
  if (__src != __dst || &__dst[v12] <= __src)
  {
    memmove(__src, __dst, v12);
  }

  v13 = &v4[v12];
  if (v8 >= 80 && v6 < v5)
  {
    while (1)
    {
      v14 = v4[72];
      if (v6[72] < 0)
      {
        if ((v14 & 0x80000000) == 0)
        {
          break;
        }
      }

      else if (v14 < 0)
      {
        break;
      }

      v30 = *(v6 + 5);
      v32 = *(v6 + 6);
      v26 = *(v4 + 5);
      v28 = *(v4 + 6);
      sub_8228();
      if (sub_2A6D4() != -1)
      {
        break;
      }

      v15 = v6;
      v16 = v7 == v6;
      v6 += 80;
      if (!v16)
      {
        goto LABEL_13;
      }

LABEL_14:
      v7 += 80;
      if (v4 >= v13 || v6 >= v5)
      {
        goto LABEL_39;
      }
    }

    v15 = v4;
    v16 = v7 == v4;
    v4 += 80;
    if (v16)
    {
      goto LABEL_14;
    }

LABEL_13:
    memmove(v7, v15, 0x50uLL);
    goto LABEL_14;
  }

LABEL_39:
  v22 = v7;
LABEL_42:
  v24 = 80 * ((v13 - v4) / 80);
  if (v22 != v4 || v22 >= &v4[v24])
  {
    memmove(v22, v4, v24);
  }

  return 1;
}

char *sub_23C4C(char *a1, int64_t a2, char a3)
{
  result = sub_23CCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23C6C(char *a1, int64_t a2, char a3)
{
  result = sub_23DE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23C8C(char *a1, int64_t a2, char a3)
{
  result = sub_23F08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23CAC(void *a1, int64_t a2, char a3)
{
  result = sub_24014(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23CCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2B4C(&qword_39598, &unk_2D028);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23DE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2B4C(&qword_395B8, &unk_2D088);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_23F08(char *result, int64_t a2, char a3, char *a4)
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
    sub_2B4C(&qword_394F8, &qword_2CFC0);
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

void *sub_24014(void *result, int64_t a2, char a3, void *a4)
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
    sub_2B4C(&qword_395D0, &qword_2D0A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2B4C(&qword_395C0, &qword_2CB70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24148(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_2A8F4();
  sub_6DDC(a2);
  sub_2A414();

  v6 = sub_2A914();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = 0xEE007377656E2E65;
      v11 = 0x6C7070612E6D6F63;
      switch(*(*(v4 + 48) + v8))
      {
        case 1:
          v11 = 0xD00000000000001BLL;
          v10 = 0x800000000002D330;
          break;
        case 2:
          v11 = 0xD000000000000013;
          v10 = 0x800000000002D350;
          break;
        case 3:
          v11 = 0xD000000000000015;
          v10 = 0x800000000002D370;
          break;
        case 4:
          v11 = 0xD000000000000013;
          v10 = 0x800000000002D390;
          break;
        case 5:
          v11 = 0xD000000000000012;
          v10 = 0x800000000002D3B0;
          break;
        case 6:
          v11 = 0xD000000000000014;
          v10 = 0x800000000002D3D0;
          break;
        case 7:
          v11 = 0xD000000000000015;
          v10 = 0x800000000002D3F0;
          break;
        case 8:
          v11 = 0xD000000000000013;
          v10 = 0x800000000002D410;
          break;
        case 9:
          v11 = 0xD000000000000012;
          v10 = 0x800000000002D430;
          break;
        case 0xA:
          v11 = 0xD000000000000016;
          v10 = 0x800000000002D450;
          break;
        case 0xB:
          break;
        case 0xC:
          v11 = 0xD000000000000010;
          v10 = 0x800000000002D480;
          break;
        case 0xD:
          v11 = 0xD000000000000011;
          v10 = 0x800000000002D4A0;
          break;
        case 0xE:
          v11 = 0xD000000000000013;
          v10 = 0x800000000002D4C0;
          break;
        case 0xF:
          v10 = 0xEE007370614D2E65;
          goto LABEL_33;
        case 0x10:
          v11 = 0xD000000000000011;
          v10 = 0x800000000002D4F0;
          break;
        case 0x11:
          v11 = 0xD000000000000011;
          v10 = 0x800000000002D510;
          break;
        case 0x12:
          v11 = 0xD000000000000013;
          v10 = 0x800000000002D530;
          break;
        case 0x13:
          v11 = 0xD000000000000010;
          v10 = 0x800000000002D550;
          break;
        case 0x14:
          v11 = 0xD000000000000011;
          v10 = 0x800000000002D570;
          break;
        case 0x15:
          v10 = 0xEE00656D6F482E65;
          goto LABEL_33;
        case 0x16:
          v11 = 0xD000000000000011;
          v10 = 0x800000000002D5A0;
          break;
        case 0x17:
          v10 = 0xEF636973754D2E65;
          goto LABEL_33;
        case 0x18:
          v10 = 0xEC00000076742E65;
          goto LABEL_33;
        case 0x19:
          v11 = 0xD000000000000019;
          v10 = 0x800000000002D5D0;
          break;
        case 0x1A:
          v11 = 0xD000000000000010;
          v10 = 0x800000000002D5F0;
          break;
        case 0x1B:
          v11 = 0xD000000000000012;
          v10 = 0x800000000002D610;
          break;
        case 0x1C:
          v11 = 0xD000000000000013;
          v10 = 0x800000000002D630;
          break;
        case 0x1D:
          v11 = 0xD000000000000012;
          v10 = 0x800000000002D650;
          break;
        case 0x1E:
          v11 = 0xD000000000000012;
          v10 = 0x800000000002D670;
          break;
        case 0x1F:
          v11 = 0xD000000000000016;
          v10 = 0x800000000002D690;
          break;
        case 0x20:
          v10 = 0xEF73656D61672E65;
LABEL_33:
          v11 = 0x6C7070612E6D6F63;
          break;
        default:
          v11 = 0xD000000000000014;
          v10 = 0x800000000002D310;
          break;
      }

      v12 = 0x6C7070612E6D6F63;
      v13 = 0xEE007377656E2E65;
      switch(a2)
      {
        case 1:
          v12 = 0xD00000000000001BLL;
          v13 = 0x800000000002D330;
          break;
        case 2:
          v12 = 0xD000000000000013;
          v13 = 0x800000000002D350;
          break;
        case 3:
          v12 = 0xD000000000000015;
          v13 = 0x800000000002D370;
          break;
        case 4:
          v12 = 0xD000000000000013;
          v13 = 0x800000000002D390;
          break;
        case 5:
          v12 = 0xD000000000000012;
          v13 = 0x800000000002D3B0;
          break;
        case 6:
          v12 = 0xD000000000000014;
          v13 = 0x800000000002D3D0;
          break;
        case 7:
          v12 = 0xD000000000000015;
          v13 = 0x800000000002D3F0;
          break;
        case 8:
          v12 = 0xD000000000000013;
          v13 = 0x800000000002D410;
          break;
        case 9:
          v12 = 0xD000000000000012;
          v13 = 0x800000000002D430;
          break;
        case 10:
          v12 = 0xD000000000000016;
          v13 = 0x800000000002D450;
          break;
        case 11:
          break;
        case 12:
          v12 = 0xD000000000000010;
          v13 = 0x800000000002D480;
          break;
        case 13:
          v12 = 0xD000000000000011;
          v13 = 0x800000000002D4A0;
          break;
        case 14:
          v12 = 0xD000000000000013;
          v13 = 0x800000000002D4C0;
          break;
        case 15:
          v13 = 0xEE007370614D2E65;
          goto LABEL_64;
        case 16:
          v12 = 0xD000000000000011;
          v13 = 0x800000000002D4F0;
          break;
        case 17:
          v12 = 0xD000000000000011;
          v13 = 0x800000000002D510;
          break;
        case 18:
          v12 = 0xD000000000000013;
          v13 = 0x800000000002D530;
          break;
        case 19:
          v12 = 0xD000000000000010;
          v13 = 0x800000000002D550;
          break;
        case 20:
          v12 = 0xD000000000000011;
          v13 = 0x800000000002D570;
          break;
        case 21:
          v13 = 0xEE00656D6F482E65;
          goto LABEL_64;
        case 22:
          v12 = 0xD000000000000011;
          v13 = 0x800000000002D5A0;
          break;
        case 23:
          v13 = 0xEF636973754D2E65;
          goto LABEL_64;
        case 24:
          v13 = 0xEC00000076742E65;
          goto LABEL_64;
        case 25:
          v12 = 0xD000000000000019;
          v13 = 0x800000000002D5D0;
          break;
        case 26:
          v12 = 0xD000000000000010;
          v13 = 0x800000000002D5F0;
          break;
        case 27:
          v12 = 0xD000000000000012;
          v13 = 0x800000000002D610;
          break;
        case 28:
          v12 = 0xD000000000000013;
          v13 = 0x800000000002D630;
          break;
        case 29:
          v12 = 0xD000000000000012;
          v13 = 0x800000000002D650;
          break;
        case 30:
          v12 = 0xD000000000000012;
          v13 = 0x800000000002D670;
          break;
        case 31:
          v12 = 0xD000000000000016;
          v13 = 0x800000000002D690;
          break;
        case 32:
          v13 = 0xEF73656D61672E65;
LABEL_64:
          v12 = 0x6C7070612E6D6F63;
          break;
        default:
          v12 = 0xD000000000000014;
          v13 = 0x800000000002D310;
          break;
      }

      if (v11 == v12 && v10 == v13)
      {
        break;
      }

      v14 = sub_2A8A4();

      if (v14)
      {
        goto LABEL_78;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

LABEL_78:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v8);
  }

  else
  {
LABEL_76:
    v15 = *v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v18;
    sub_25334(a2, v8, isUniquelyReferenced_nonNull_native);
    *v18 = v20;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24AE8(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2A8F4();
  sub_2A414();
  v9 = sub_2A914();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2A8A4() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_25E24(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

unint64_t sub_24C38(unint64_t result, uint64_t a2, __int128 *a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_22618(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_24D0C(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_24D0C(unint64_t result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_20;
  }

  result = v10 + 40 * a3;
  v15 = (v9 + 32 + 40 * a2);
  if (result != v15 || result >= v15 + 40 * v14)
  {
    result = memmove(result, v15, 40 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_21;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
    v19 = *(a4 + 4);
    v20 = a4[1];
    v25 = *a4;
    v26 = v20;
    v24 = v19;
    *v10 = v25;
    *(v10 + 16) = v20;
    *(v10 + 32) = v19;
    if (a3 == 1)
    {
      return result;
    }

    sub_287DC(&v25, v23);
    sub_E25C(&v24, v23, &qword_395C0, &qword_2CB70);
    __break(1u);
  }

  v21 = a4[1];
  v25 = *a4;
  v26 = v21;
  v22 = *(a4 + 4);
  sub_28788(&v25);
  v23[0] = v22;
  return sub_E02C(v23, &qword_395C0, &qword_2CB70);
}

uint64_t sub_24E68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2B4C(&qword_394D8, &qword_2CFA0);
  result = sub_2A7E4();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_2A8F4();
      sub_6DDC(v18);
      sub_2A414();

      result = sub_2A914();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_250D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2B4C(&qword_394D0, &qword_2CF98);
  result = sub_2A7E4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_2A8F4();
      sub_2A414();
      result = sub_2A914();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_25334(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_24E68(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_25FA4();
        goto LABEL_112;
      }

      sub_26240(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    sub_2A8F4();
    sub_6DDC(v5);
    sub_2A414();

    result = sub_2A914();
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (2)
      {
        v12 = 0xEE007377656E2E65;
        v13 = 0x6C7070612E6D6F63;
        switch(*(*(v8 + 48) + a2))
        {
          case 1:
            v13 = 0xD00000000000001BLL;
            v12 = 0x800000000002D330;
            break;
          case 2:
            v13 = 0xD000000000000013;
            v12 = 0x800000000002D350;
            break;
          case 3:
            v13 = 0xD000000000000015;
            v12 = 0x800000000002D370;
            break;
          case 4:
            v13 = 0xD000000000000013;
            v12 = 0x800000000002D390;
            break;
          case 5:
            v13 = 0xD000000000000012;
            v12 = 0x800000000002D3B0;
            break;
          case 6:
            v13 = 0xD000000000000014;
            v12 = 0x800000000002D3D0;
            break;
          case 7:
            v13 = 0xD000000000000015;
            v12 = 0x800000000002D3F0;
            break;
          case 8:
            v13 = 0xD000000000000013;
            v12 = 0x800000000002D410;
            break;
          case 9:
            v13 = 0xD000000000000012;
            v12 = 0x800000000002D430;
            break;
          case 0xA:
            v13 = 0xD000000000000016;
            v12 = 0x800000000002D450;
            break;
          case 0xB:
            break;
          case 0xC:
            v13 = 0xD000000000000010;
            v12 = 0x800000000002D480;
            break;
          case 0xD:
            v13 = 0xD000000000000011;
            v12 = 0x800000000002D4A0;
            break;
          case 0xE:
            v13 = 0xD000000000000013;
            v12 = 0x800000000002D4C0;
            break;
          case 0xF:
            v13 = 0x6C7070612E6D6F63;
            v12 = 0xEE007370614D2E65;
            break;
          case 0x10:
            v13 = 0xD000000000000011;
            v12 = 0x800000000002D4F0;
            break;
          case 0x11:
            v13 = 0xD000000000000011;
            v12 = 0x800000000002D510;
            break;
          case 0x12:
            v13 = 0xD000000000000013;
            v12 = 0x800000000002D530;
            break;
          case 0x13:
            v13 = 0xD000000000000010;
            v12 = 0x800000000002D550;
            break;
          case 0x14:
            v13 = 0xD000000000000011;
            v12 = 0x800000000002D570;
            break;
          case 0x15:
            v13 = 0x6C7070612E6D6F63;
            v12 = 0xEE00656D6F482E65;
            break;
          case 0x16:
            v13 = 0xD000000000000011;
            v12 = 0x800000000002D5A0;
            break;
          case 0x17:
            v13 = 0x6C7070612E6D6F63;
            v12 = 0xEF636973754D2E65;
            break;
          case 0x18:
            v13 = 0x6C7070612E6D6F63;
            v12 = 0xEC00000076742E65;
            break;
          case 0x19:
            v13 = 0xD000000000000019;
            v12 = 0x800000000002D5D0;
            break;
          case 0x1A:
            v13 = 0xD000000000000010;
            v12 = 0x800000000002D5F0;
            break;
          case 0x1B:
            v13 = 0xD000000000000012;
            v12 = 0x800000000002D610;
            break;
          case 0x1C:
            v13 = 0xD000000000000013;
            v12 = 0x800000000002D630;
            break;
          case 0x1D:
            v13 = 0xD000000000000012;
            v12 = 0x800000000002D650;
            break;
          case 0x1E:
            v13 = 0xD000000000000012;
            v12 = 0x800000000002D670;
            break;
          case 0x1F:
            v13 = 0xD000000000000016;
            v12 = 0x800000000002D690;
            break;
          case 0x20:
            v13 = 0x6C7070612E6D6F63;
            v12 = 0xEF73656D61672E65;
            break;
          default:
            v13 = 0xD000000000000014;
            v12 = 0x800000000002D310;
            break;
        }

        v14 = 0x6C7070612E6D6F63;
        v15 = 0xEE007377656E2E65;
        switch(v5)
        {
          case 1:
            v15 = 0x800000000002D330;
            if (v13 != 0xD00000000000001BLL)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 2:
            v15 = 0x800000000002D350;
            if (v13 != 0xD000000000000013)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 3:
            v15 = 0x800000000002D370;
            if (v13 != 0xD000000000000015)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 4:
            v15 = 0x800000000002D390;
            if (v13 != 0xD000000000000013)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 5:
            v15 = 0x800000000002D3B0;
            if (v13 != 0xD000000000000012)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 6:
            v15 = 0x800000000002D3D0;
            if (v13 != 0xD000000000000014)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 7:
            v15 = 0x800000000002D3F0;
            if (v13 != 0xD000000000000015)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 8:
            v15 = 0x800000000002D410;
            if (v13 != 0xD000000000000013)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 9:
            v15 = 0x800000000002D430;
            if (v13 != 0xD000000000000012)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 10:
            v15 = 0x800000000002D450;
            if (v13 != 0xD000000000000016)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 11:
            goto LABEL_105;
          case 12:
            v15 = 0x800000000002D480;
            if (v13 != 0xD000000000000010)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 13:
            v15 = 0x800000000002D4A0;
            if (v13 != 0xD000000000000011)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 14:
            v15 = 0x800000000002D4C0;
            if (v13 != 0xD000000000000013)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 15:
            v16 = 0x7370614D2E65;
            goto LABEL_80;
          case 16:
            v15 = 0x800000000002D4F0;
            if (v13 != 0xD000000000000011)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 17:
            v15 = 0x800000000002D510;
            if (v13 != 0xD000000000000011)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 18:
            v15 = 0x800000000002D530;
            if (v13 != 0xD000000000000013)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 19:
            v15 = 0x800000000002D550;
            if (v13 != 0xD000000000000010)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 20:
            v15 = 0x800000000002D570;
            if (v13 != 0xD000000000000011)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 21:
            v16 = 0x656D6F482E65;
LABEL_80:
            v15 = v16 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v13 != 0x6C7070612E6D6F63)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 22:
            v15 = 0x800000000002D5A0;
            if (v13 != 0xD000000000000011)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 23:
            v15 = 0xEF636973754D2E65;
            if (v13 != 0x6C7070612E6D6F63)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 24:
            v15 = 0xEC00000076742E65;
            if (v13 != 0x6C7070612E6D6F63)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 25:
            v15 = 0x800000000002D5D0;
            if (v13 != 0xD000000000000019)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 26:
            v15 = 0x800000000002D5F0;
            if (v13 != 0xD000000000000010)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 27:
            v15 = 0x800000000002D610;
            if (v13 != 0xD000000000000012)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 28:
            v15 = 0x800000000002D630;
            if (v13 != 0xD000000000000013)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 29:
            v14 = 0xD000000000000012;
            v15 = 0x800000000002D650;
LABEL_105:
            if (v13 == v14)
            {
              goto LABEL_106;
            }

            goto LABEL_107;
          case 30:
            v15 = 0x800000000002D670;
            if (v13 != 0xD000000000000012)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 31:
            v15 = 0x800000000002D690;
            if (v13 != 0xD000000000000016)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 32:
            v15 = 0xEF73656D61672E65;
            if (v13 != 0x6C7070612E6D6F63)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          default:
            v15 = 0x800000000002D310;
            if (v13 != 0xD000000000000014)
            {
              goto LABEL_107;
            }

LABEL_106:
            if (v12 == v15)
            {
              goto LABEL_115;
            }

LABEL_107:
            v17 = sub_2A8A4();

            if (v17)
            {
              goto LABEL_116;
            }

            a2 = (a2 + 1) & v11;
            if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_112:
  v18 = *v22;
  *(v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_115:

LABEL_116:
    sub_2A8C4();
    __break(1u);
    JUMPOUT(0x25D1CLL);
  }

  *(v18 + 16) = v21;
  return result;
}

Swift::Int sub_25E24(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_250D4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_260E4();
      goto LABEL_16;
    }

    sub_2647C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2A8F4();
  sub_2A414();
  result = sub_2A914();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2A8A4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2A8C4();
  __break(1u);
  return result;
}

void *sub_25FA4()
{
  v1 = v0;
  sub_2B4C(&qword_394D8, &qword_2CFA0);
  v2 = *v0;
  v3 = sub_2A7D4();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_260E4()
{
  v1 = v0;
  sub_2B4C(&qword_394D0, &qword_2CF98);
  v2 = *v0;
  v3 = sub_2A7D4();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_26240(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2B4C(&qword_394D8, &qword_2CFA0);
  result = sub_2A7E4();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_2A8F4();
      sub_6DDC(v17);
      sub_2A414();

      result = sub_2A914();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2647C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2B4C(&qword_394D0, &qword_2CF98);
  result = sub_2A7E4();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_2A8F4();

      sub_2A414();
      result = sub_2A914();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_266C8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2A8F4();
  sub_2A414();
  v6 = sub_2A914();

  return sub_26740(a1, a2, v6);
}

unint64_t sub_26740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2A8A4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_267F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2B4C(&qword_394E0, &qword_2CFA8);
  v41 = a2;
  result = sub_2A874();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 40 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v44 = *(v28 + 32);
        v42 = v29;
        v43 = v30;
      }

      else
      {
        sub_280E4(v28, &v42);
      }

      v31 = *(v8 + 40);
      sub_2A8F4();
      sub_2A414();
      result = sub_2A914();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = *(v8 + 56) + 40 * v16;
      v19 = v42;
      v20 = v43;
      *(v18 + 32) = v44;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_26AC8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2A714() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_2A8F4();

      sub_2A414();
      v15 = sub_2A914();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26C84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_266C8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_267F8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_266C8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_2A8D4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_26E14();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;

    return sub_28078(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 40 * v11;
  v27 = *a1;
  v28 = *(a1 + 16);
  *(v26 + 32) = *(a1 + 32);
  *v26 = v27;
  *(v26 + 16) = v28;
  v29 = v22[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v30;
}

void *sub_26E14()
{
  v1 = v0;
  sub_2B4C(&qword_394E0, &qword_2CFA8);
  v2 = *v0;
  v3 = sub_2A864();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_280E4(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void sub_26FDC(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_2A784();
      sub_28600(0, &qword_39588, UNNotificationSource_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_28600(0, &qword_39588, UNNotificationSource_ptr);
    if (sub_2A754() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_2A764();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_2A644(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_2A654();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void *sub_27200()
{
  v0 = sub_2A3E4();
  sub_1DA8(v0);

  result = SBSCopyDisplayIdentifiers();
  if (result)
  {
    v2 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_2A4E4();
    }

    return &_swiftEmptySetSingleton;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_272BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2B4C(&qword_394D0, &qword_2CF98);
    v3 = sub_2A7F4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_2A8F4();

      sub_2A414();
      result = sub_2A914();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_2A8A4();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void *sub_27424(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptySetSingleton;
  }

  sub_2B4C(&qword_394D8, &qword_2CFA0);
  v3 = sub_2A7F4();
  v4 = 0;
  v5 = v3 + 56;
  v25 = a1 + 32;
  v24 = v1;
  do
  {
    v6 = *(v25 + v4);
    v7 = *(v3 + 40);
    sub_2A8F4();
    sub_6DDC(v6);
    sub_2A414();

    v8 = sub_2A914();
    v9 = ~(-1 << *(v3 + 32));
    v10 = v8 & v9;
    v11 = (v8 & v9) >> 6;
    v12 = *(v5 + 8 * v11);
    v13 = 1 << (v8 & v9);
    if ((v13 & v12) != 0)
    {
      while (1)
      {
        v14 = 0xEE007377656E2E65;
        v15 = 0x6C7070612E6D6F63;
        switch(*(*(v3 + 48) + v10))
        {
          case 1:
            v15 = 0xD00000000000001BLL;
            v14 = 0x800000000002D330;
            break;
          case 2:
            v15 = 0xD000000000000013;
            v14 = 0x800000000002D350;
            break;
          case 3:
            v15 = 0xD000000000000015;
            v14 = 0x800000000002D370;
            break;
          case 4:
            v15 = 0xD000000000000013;
            v14 = 0x800000000002D390;
            break;
          case 5:
            v15 = 0xD000000000000012;
            v14 = 0x800000000002D3B0;
            break;
          case 6:
            v15 = 0xD000000000000014;
            v14 = 0x800000000002D3D0;
            break;
          case 7:
            v15 = 0xD000000000000015;
            v14 = 0x800000000002D3F0;
            break;
          case 8:
            v15 = 0xD000000000000013;
            v14 = 0x800000000002D410;
            break;
          case 9:
            v15 = 0xD000000000000012;
            v14 = 0x800000000002D430;
            break;
          case 0xA:
            v15 = 0xD000000000000016;
            v14 = 0x800000000002D450;
            break;
          case 0xB:
            break;
          case 0xC:
            v15 = 0xD000000000000010;
            v14 = 0x800000000002D480;
            break;
          case 0xD:
            v15 = 0xD000000000000011;
            v14 = 0x800000000002D4A0;
            break;
          case 0xE:
            v15 = 0xD000000000000013;
            v14 = 0x800000000002D4C0;
            break;
          case 0xF:
            v15 = 0x6C7070612E6D6F63;
            v14 = 0xEE007370614D2E65;
            break;
          case 0x10:
            v15 = 0xD000000000000011;
            v14 = 0x800000000002D4F0;
            break;
          case 0x11:
            v15 = 0xD000000000000011;
            v14 = 0x800000000002D510;
            break;
          case 0x12:
            v15 = 0xD000000000000013;
            v14 = 0x800000000002D530;
            break;
          case 0x13:
            v15 = 0xD000000000000010;
            v14 = 0x800000000002D550;
            break;
          case 0x14:
            v15 = 0xD000000000000011;
            v14 = 0x800000000002D570;
            break;
          case 0x15:
            v15 = 0x6C7070612E6D6F63;
            v14 = 0xEE00656D6F482E65;
            break;
          case 0x16:
            v15 = 0xD000000000000011;
            v14 = 0x800000000002D5A0;
            break;
          case 0x17:
            v15 = 0x6C7070612E6D6F63;
            v14 = 0xEF636973754D2E65;
            break;
          case 0x18:
            v15 = 0x6C7070612E6D6F63;
            v14 = 0xEC00000076742E65;
            break;
          case 0x19:
            v15 = 0xD000000000000019;
            v14 = 0x800000000002D5D0;
            break;
          case 0x1A:
            v15 = 0xD000000000000010;
            v14 = 0x800000000002D5F0;
            break;
          case 0x1B:
            v15 = 0xD000000000000012;
            v14 = 0x800000000002D610;
            break;
          case 0x1C:
            v15 = 0xD000000000000013;
            v14 = 0x800000000002D630;
            break;
          case 0x1D:
            v15 = 0xD000000000000012;
            v14 = 0x800000000002D650;
            break;
          case 0x1E:
            v15 = 0xD000000000000012;
            v14 = 0x800000000002D670;
            break;
          case 0x1F:
            v15 = 0xD000000000000016;
            v14 = 0x800000000002D690;
            break;
          case 0x20:
            v15 = 0x6C7070612E6D6F63;
            v14 = 0xEF73656D61672E65;
            break;
          default:
            v15 = 0xD000000000000014;
            v14 = 0x800000000002D310;
            break;
        }

        v16 = 0x6C7070612E6D6F63;
        v17 = 0xEE007377656E2E65;
        switch(v6)
        {
          case 1:
            v17 = 0x800000000002D330;
            if (v15 == 0xD00000000000001BLL)
            {
              goto LABEL_102;
            }

            goto LABEL_103;
          case 2:
            v17 = 0x800000000002D350;
            if (v15 != 0xD000000000000013)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 3:
            v17 = 0x800000000002D370;
            if (v15 != 0xD000000000000015)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 4:
            v17 = 0x800000000002D390;
            if (v15 != 0xD000000000000013)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 5:
            v17 = 0x800000000002D3B0;
            if (v15 != 0xD000000000000012)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 6:
            v17 = 0x800000000002D3D0;
            if (v15 != 0xD000000000000014)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 7:
            v17 = 0x800000000002D3F0;
            if (v15 != 0xD000000000000015)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 8:
            v17 = 0x800000000002D410;
            if (v15 != 0xD000000000000013)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 9:
            v17 = 0x800000000002D430;
            if (v15 != 0xD000000000000012)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 10:
            v17 = 0x800000000002D450;
            if (v15 != 0xD000000000000016)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 11:
            goto LABEL_101;
          case 12:
            v17 = 0x800000000002D480;
            if (v15 != 0xD000000000000010)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 13:
            v17 = 0x800000000002D4A0;
            if (v15 != 0xD000000000000011)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 14:
            v17 = 0x800000000002D4C0;
            if (v15 != 0xD000000000000013)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 15:
            v18 = 0x7370614D2E65;
            goto LABEL_76;
          case 16:
            v17 = 0x800000000002D4F0;
            if (v15 != 0xD000000000000011)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 17:
            v17 = 0x800000000002D510;
            if (v15 != 0xD000000000000011)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 18:
            v17 = 0x800000000002D530;
            if (v15 != 0xD000000000000013)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 19:
            v17 = 0x800000000002D550;
            if (v15 != 0xD000000000000010)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 20:
            v17 = 0x800000000002D570;
            if (v15 != 0xD000000000000011)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 21:
            v18 = 0x656D6F482E65;
LABEL_76:
            v17 = v18 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v15 != 0x6C7070612E6D6F63)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 22:
            v17 = 0x800000000002D5A0;
            if (v15 != 0xD000000000000011)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 23:
            v17 = 0xEF636973754D2E65;
            if (v15 != 0x6C7070612E6D6F63)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 24:
            v17 = 0xEC00000076742E65;
            if (v15 != 0x6C7070612E6D6F63)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 25:
            v17 = 0x800000000002D5D0;
            if (v15 != 0xD000000000000019)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 26:
            v17 = 0x800000000002D5F0;
            if (v15 != 0xD000000000000010)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 27:
            v17 = 0x800000000002D610;
            if (v15 != 0xD000000000000012)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 28:
            v17 = 0x800000000002D630;
            if (v15 != 0xD000000000000013)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 29:
            v16 = 0xD000000000000012;
            v17 = 0x800000000002D650;
LABEL_101:
            if (v15 == v16)
            {
              goto LABEL_102;
            }

            goto LABEL_103;
          case 30:
            v17 = 0x800000000002D670;
            if (v15 != 0xD000000000000012)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 31:
            v17 = 0x800000000002D690;
            if (v15 != 0xD000000000000016)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 32:
            v17 = 0xEF73656D61672E65;
            if (v15 != 0x6C7070612E6D6F63)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          default:
            v17 = 0x800000000002D310;
            if (v15 != 0xD000000000000014)
            {
              goto LABEL_103;
            }

LABEL_102:
            if (v14 == v17)
            {

              goto LABEL_4;
            }

LABEL_103:
            v19 = sub_2A8A4();

            if (v19)
            {
              goto LABEL_4;
            }

            v10 = (v10 + 1) & v9;
            v11 = v10 >> 6;
            v12 = *(v5 + 8 * (v10 >> 6));
            v13 = 1 << v10;
            if ((v12 & (1 << v10)) == 0)
            {
              goto LABEL_108;
            }

            break;
        }
      }
    }

LABEL_108:
    *(v5 + 8 * v11) = v12 | v13;
    *(*(v3 + 48) + v10) = v6;
    v20 = *(v3 + 16);
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      __break(1u);
      JUMPOUT(0x27E18);
    }

    *(v3 + 16) = v22;
LABEL_4:
    ++v4;
  }

  while (v4 != v24);
  return v3;
}

uint64_t sub_27F20(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_2A504();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24AE8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_27FB8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_280D4(uint64_t a1, unint64_t a2)
{
  if (a2 != 4)
  {
    return sub_2B94(a1, a2);
  }

  return a1;
}

_OWORD *sub_28140(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_28150(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_281B0(const char *a1)
{
  v3 = v1;
  if (qword_389F8 != -1)
  {
    swift_once();
  }

  v4 = sub_29C14();
  sub_966C(v4, qword_3AD58);
  v5 = sub_29BF4();
  v6 = sub_2A584();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, a1, v7, 2u);
  }

  v8 = *(v3 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_reloadSnapshotSubject);
  sub_2B4C(&qword_39500, &qword_2CFC8);
  sub_55DC(&qword_39508, &qword_39500, &qword_2CFC8);
  return sub_29C64();
}

uint64_t sub_28300()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_28340(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_28358(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_28600(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_283A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_283F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_28454(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_6DD8;

  return sub_17CEC(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_28548()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_28580()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_285B8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_28600(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2864C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_280D4(*a1, v3);
  return sub_14BB4(v2, v3);
}

uint64_t sub_28694(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_15D50(v4, &OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__sections, sub_93C8);
}

uint64_t sub_28710()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_280D4(v1, v2);
  return sub_6DC0(v4, v5);
}

uint64_t sub_2888C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void (*sub_288A0())()
{
  v1 = *(v0 + 16);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_28898;
}

uint64_t sub_28900(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_58F8(v4);
}

uint64_t sub_2895C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + *a1);
  *(v2 + *a1) = *(v1 + 24);
}

uint64_t sub_289A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_289F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_6BD8;

  return sub_1609C(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_28B58()
{
  result = qword_396A8;
  if (!qword_396A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_396A8);
  }

  return result;
}

uint64_t sub_28BC8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_2B4C(&qword_39218, &qword_2CC90);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for AppsSettingsList();
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  sub_2B4C(&qword_39220, &qword_2CC98);
  swift_storeEnumTagMultiPayload();
  v6 = v4[6];
  *(a2 + v6) = swift_getKeyPath();
  sub_2B4C(&qword_39228, &qword_2CCA0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AppsSettingsListViewModel();
  v7 = a1;
  result = sub_2A214();
  v9 = (a2 + v4[7]);
  *v9 = v10;
  v9[1] = v11;
  return result;
}

uint64_t sub_28CE0(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_2A494();
  v2[3] = sub_2A484();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_28DA8;

  return sub_1FD14(a1, a2);
}

uint64_t sub_28DA8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_2A474();

  return _swift_task_switch(sub_28EE4, v5, v4);
}

uint64_t sub_28EE4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_28F44()
{
  v1 = sub_2B4C(&qword_396B0, &qword_2D218);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10 - v4;
  v6 = *v0;
  *(swift_allocObject() + 16) = v6;
  type metadata accessor for AppsSettingsList();
  sub_2914C();
  v7 = v6;
  sub_2A394();
  *(swift_allocObject() + 16) = v7;
  sub_29254();
  v8 = v7;
  sub_2A334();
  return (*(v2 + 8))(v5, v1);
}

id sub_290D0@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for AppsSettingsListViewModel()) init];
  *a1 = result;
  return result;
}

uint64_t sub_2910C()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_2914C()
{
  result = qword_396B8;
  if (!qword_396B8)
  {
    type metadata accessor for AppsSettingsList();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_396B8);
  }

  return result;
}

uint64_t sub_291A4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_6BD8;

  return sub_28CE0(a1, a2);
}

unint64_t sub_29254()
{
  result = qword_396C0;
  if (!qword_396C0)
  {
    sub_504C(&qword_396B0, &qword_2D218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_396C0);
  }

  return result;
}

uint64_t sub_29324(uint64_t a1)
{
  v2 = sub_2B4C(&qword_39188, &qword_2CBE8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_293B8(a1, &v6 - v4);
  return sub_29E74();
}

uint64_t sub_293B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B4C(&qword_39188, &qword_2CBE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29438()
{
  sub_504C(&qword_396B0, &qword_2D218);
  sub_29254();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_294A8(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_3AD40 == -1)
  {
    if (qword_3AD48)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_29984();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_3AD48)
    {
      return _availability_version_check();
    }
  }

  if (qword_3AD38 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_2999C();
    a3 = v10;
    a4 = v9;
    v8 = dword_3AD28 < v11;
    if (dword_3AD28 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_3AD2C > a3)
      {
        return 1;
      }

      if (dword_3AD2C >= a3)
      {
        return dword_3AD30 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_3AD28 < a2;
  if (dword_3AD28 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_2963C(uint64_t result)
{
  v1 = qword_3AD48;
  if (qword_3AD48)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_3AD48 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_3AD28, &dword_3AD2C, &dword_3AD30);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}