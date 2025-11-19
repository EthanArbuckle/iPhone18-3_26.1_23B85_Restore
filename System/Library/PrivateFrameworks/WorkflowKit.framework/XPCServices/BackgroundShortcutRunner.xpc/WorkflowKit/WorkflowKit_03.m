void sub_1000472C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005E828();
  sub_10005EAC8();
  v224 = v12 + 45;
  isa = v12[258].isa;
  v14 = v12[253].isa;
  v15 = v12[72].isa;
  v16 = v12[59].isa;
  sub_100088F28();
  v17 = v16;
  sub_100060280();
  swift_errorRetain();
  v18 = v16;
  swift_errorRetain();
  v19 = sub_100088FF8();
  v20 = sub_10008A5D8();
  v21 = os_log_type_enabled(v19, v20);
  v22 = v12[258].isa;
  v23 = v12[256].isa;
  v232 = v12[84].isa;
  v238 = v12[255].isa;
  v230 = v12[78].isa;
  v24 = v12[72].isa;
  v25 = v12[71].isa;
  v26 = v12[70].isa;
  v27 = v12[59].isa;
  if (v21)
  {
    sub_10005E91C();
    v225 = v26;
    v226 = v12;
    v28 = swift_slowAlloc();
    v29 = sub_10005FEE4();
    sub_10005DC40();
    v220 = swift_slowAlloc();
    v241[0] = v220;
    *v28 = 136315394;
    v30 = [(objc_class *)v27 identifier];
    v222 = v24;
    v31 = sub_10008A268();
    v33 = v32;

    v34 = sub_100080D2C(v31, v33, v241);

    *(v28 + 4) = v34;

    *(v28 + 12) = 2112;
    swift_errorRetain();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 14) = v35;
    *v29 = v35;
    v238(v232, v230);

    _os_log_impl(&_mh_execute_header, v19, v20, "Failed to check availability in Spotlight for action %s: %@", v28, 0x16u);
    sub_100017954(v29, &qword_1000A6460, &qword_10008D878);
    sub_10005D4F8();

    sub_10005B1BC(v220);
    sub_10005D4F8();

    v12 = v226;
    sub_10005D4F8();

    v37 = *(v25 + 1);
    v36 = v25 + 8;
    v37(v222, v225);
  }

  else
  {

    v38 = *(v25 + 1);
    v36 = v25 + 8;
    v39 = sub_10005F294();
    v40(v39);
    v238(v232, v230);
  }

LABEL_4:
  v41 = v12[85].isa;
  while (1)
  {
    sub_10005D1D4();
    v42();
    if (v22 == v36)
    {
      break;
    }

    sub_100060FCC();
    sub_10005DEE8(v43);
    if (v52)
    {
      __break(1u);
LABEL_35:
      WFAction.availableInSpotlight(sourceContainerBundleId:attributionContainerBundleId:toolType:runtimeRequirements:)(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
      return;
    }

    isa_low = LOBYTE(v12[262].isa);
    v54 = v12[85].isa;
    v55 = v12[84].isa;
    v56 = v12[83].isa;
    v57 = v12[79].isa;
    v58 = v12[78].isa;
    sub_10005D27C();
    v19 = v57[2];
    (v19)(v54, v60 + v57[9] * v59, v58);
    (v19)(v55, v54, v58);
    sub_100089138();
    sub_10005C5F4();
    v62 = sub_10005AE38(&qword_1000A6568, v61);
    sub_10005F62C();
    v63 = sub_10008A228();
    v22 = v57[1];
    v12[255].isa = v22;
    v12[256].isa = ((v57 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v64 = sub_10005DC1C();
    (v22)(v64);
    v36 = v12[84].isa;
    if ((v63 & 1) == 0)
    {
      v76 = v19;
      v19 = v12[83].isa;
      v77 = v12[78].isa;
      sub_100089128();
      sub_10005F0DC();
      sub_10005F910();
      v78 = sub_10008A228();
      v79 = sub_10005DC4C();
      (v22)(v79);
      v36 = v12[84].isa;
      if (v78)
      {
        v80 = v12[78].isa;
        v81 = sub_100060DA8();
        (v22)(v81);
        if (([v19 visibleForUse:1]& 1) == 0)
        {
          goto LABEL_4;
        }

        v36 = v12[250].isa;
        sub_10005FDDC();
        sub_100089128();
        goto LABEL_20;
      }

      v19 = v12[83].isa;
      v82 = v12[78].isa;
      sub_100089118();
      sub_10005F0DC();
      sub_10005F910();
      v83 = sub_10008A228();
      v84 = sub_10005DC4C();
      (v22)(v84);
      if ((v83 & 1) == 0)
      {
        v185 = v12[84].isa;
        v186 = v12[83].isa;
        v187 = v12[78].isa;
        sub_100089148();
        sub_10005F2AC();
        LOBYTE(v185) = sub_10008A228();
        v188 = sub_10005DEB4();
        (v22)(v188);
        if ((v185 & 1) == 0)
        {
          v241[0] = sub_10005EBFC();
          v241[1] = v194;
          sub_10005E980();
          v242._countAndFlagsBits = 0xD000000000000019;
          sub_10008A2C8(v242);
          sub_10005C5F4();
          sub_10005AE38(v195, v196);
          v243._countAndFlagsBits = sub_10005EB60();
          sub_10008A2C8(v243);

          sub_10008A2A8();
          sub_10005C9F8();
          sub_10005D3F8();
          sub_100012640();
          return;
        }

        v189 = [(objc_class *)v12[59].isa visibleForUse:0];
        if (v189)
        {
          v189 = [(objc_class *)v12[59].isa isApprovedForPublicShortcutsDrawer];
        }

        sub_100060F00(v189);
        v190 = async function pointer to WFAction.availableInSpotlight(sourceContainerBundleId:attributionContainerBundleId:toolType:runtimeRequirements:)[1];
        v191 = swift_task_alloc();
        v192 = sub_100060C6C(v191);
        *v192 = v193;
        sub_10005C640();
        sub_10005CF2C();
        sub_100012640();

        goto LABEL_35;
      }

      v85 = v12[250].isa;
      v86 = v12[84].isa;
      sub_10005FDDC();
      v22();
      v87 = sub_10005F0DC();
      (v76)(v87);
      sub_100089138();
      sub_10005C5F4();
      sub_10005AE38(&unk_1000A6578, v88);
      v36 = sub_10008A7F8();
      v89 = sub_10005DC58();
      (v22)(v89);
      v90 = sub_10005E464();
      (v22)(v90);
      if ((v36 & 1) != 0 && ([(objc_class *)v12[59].isa isApprovedForPublicShortcutsDrawer]& 1) != 0)
      {
        v36 = v12[250].isa;
        sub_10005FDDC();
        sub_100089118();
LABEL_20:
        v91 = sub_10005DC4C();
        sub_100049B80(v91, v92);
        v93 = sub_10005DC58();
        (v22)(v93);
        v94 = sub_10005E464();
        (v22)(v94);
        goto LABEL_4;
      }

      goto LABEL_4;
    }

    v65 = sub_10005FD8C();
    (v22)(v65);
    if (([(objc_class *)v56 visibleForUse:0]& 1) == 0)
    {
      goto LABEL_4;
    }

    sub_10005EDBC();
    v66 = v12[78].isa;
    v239 = v12[77].isa;
    v233 = v12[75].isa;
    sub_100089138();
    v67 = sub_10005E150();
    v227 = v19;
    (v19)(v67);
    sub_10005C5F4();
    v36 = v63;
    sub_10005AE38(&unk_1000A6578, v68);
    sub_10008A808();
    sub_10005F644();
    sub_10005F910();
    v69 = sub_10008A228();
    v70 = *(v233 + 12);
    v19 = v239;
    *v239 = (v69 & 1) == 0;
    if (v69)
    {
      v71 = sub_10005DE6C();
      (v22)(v71);
      v72 = sub_10005E12C();
      (v22)(v72);
      (*(v62 + 32))(&v239[v70], v63, v66);
    }

    else
    {
      v36 = v12[250].isa;
      v234 = v12[85].isa;
      v73 = sub_10005E4E8();
      (v22)(v73);
      v19 = v227;
      (v227)(&v239[v70], v62, v63);
      v74 = sub_10005DC58();
      (v227)(v74);
      sub_10005F5BC();
      sub_10008A818();
      v75 = sub_10005F294();
      (v22)(v75);
      (v22)(v234, v63);
    }

    sub_10005DEC0();
    sub_10005BFBC();
    sub_1000608F0();
  }

  sub_10006159C();

  v95 = v12[253].isa;
  sub_10005ED74();
  sub_1000608C0();
  sub_10005E1F0();
  v96 = swift_allocObject();
  *(v96 + 16) = v19;
  v97 = v96;
  sub_10005D504();
  v98 = swift_allocObject();
  v235 = sub_10005C9B4(v98);
  v99 = v19;
  sub_10005D9B8();
  swift_retain_n();
  v100 = v95;
  v240 = sub_100088FF8();
  v228 = sub_10008A5C8();
  sub_10005D9D0();
  v101 = swift_allocObject();
  *(v101 + 16) = 32;
  v102 = v101;
  sub_10005D9D0();
  v217 = swift_allocObject();
  *(v217 + 16) = 8;
  sub_10005D504();
  v103 = swift_allocObject();
  *(v103 + 16) = sub_10005C5E0;
  *(v103 + 24) = v97;
  sub_10005D504();
  v104 = swift_allocObject();
  *(v104 + 16) = sub_10005B70C;
  *(v104 + 24) = v103;
  sub_10005D9D0();
  v105 = swift_allocObject();
  *(v105 + 16) = 32;
  sub_10005D9D0();
  v106 = swift_allocObject();
  *(v106 + 16) = 8;
  sub_10005D504();
  v107 = swift_allocObject();
  *(v107 + 16) = sub_10005B704;
  *(v107 + 24) = v235;
  sub_10005D504();
  v108 = swift_allocObject();
  *(v108 + 16) = sub_10005C5D8;
  *(v108 + 24) = v107;
  sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
  inited = swift_initStackObject();
  v110 = sub_10005C6B8(inited, xmmword_10008D630);
  v110[2].n128_u64[0] = v111;
  v110[2].n128_u64[1] = v102;
  v112 = v217;
  v110[3].n128_u64[0] = sub_10005C5C8;
  v110[3].n128_u64[1] = v217;
  v110[4].n128_u64[0] = sub_10005C5D0;
  v110[4].n128_u64[1] = v104;
  v110[5].n128_u64[0] = sub_10005C5C8;
  v110[5].n128_u64[1] = v105;
  v110[6].n128_u64[0] = sub_10005C5C8;
  v110[6].n128_u64[1] = v106;
  v110[7].n128_u64[0] = sub_10005C5D0;
  v110[7].n128_u64[1] = v108;

  if (os_log_type_enabled(v240, v228))
  {
    v208 = v12[250].isa;
    v212 = v12[249].isa;
    v211 = v12[197].isa;
    v113 = v12[79].isa;
    v209 = v12[78].isa;
    v210 = v12[83].isa;
    v213 = v12[71].isa;
    v214 = v12[70].isa;
    v215 = v12[74].isa;
    v114 = v12[59].isa;
    v115 = sub_100010370();
    v241[0] = swift_slowAlloc();
    *v115 = 514;
    *(v115 + 2) = 32;

    *(v115 + 3) = 8;

    v116 = v114;
    v117 = [(objc_class *)v114 identifier];
    sub_10008A268();

    v118 = sub_10005D9DC();
    sub_100080D2C(v118, v119, v120);
    sub_1000608D8();
    *(v115 + 4) = v117;

    *(v115 + 12) = 32;

    *(v115 + 13) = 8;

    sub_10005E4A0();
    swift_beginAccess();
    v121 = *(v113 + 2);
    sub_10005E3A4();
    v122();
    sub_10005C5F4();
    sub_10005AE38(v123, v124);
    sub_10005FC08();
    sub_10008AA28();
    sub_10005F638();
    v125 = *(v113 + 1);
    v126 = sub_10005DB50();
    v127(v126);
    v128 = sub_100012498();
    sub_100080D2C(v128, v129, v130);
    sub_10005D9B8();

    *(v115 + 14) = v116;

    v112 = v240;
    _os_log_impl(&_mh_execute_header, v240, v228, "%s: Visibility flags: %s", v115, 0x16u);
    swift_arrayDestroy();
    sub_10005CF50();

    sub_10005D4F8();

    (*(v213 + 1))(v215, v214);
  }

  else
  {
    v229 = v12[249].isa;
    v131 = v12[197].isa;
    v132 = v12[74].isa;
    v133 = v12[71].isa;
    v134 = v12[70].isa;
    v135 = v12[59].isa;

    v136 = *(v133 + 1);
    v137 = sub_1000124C8();
    v138(v137);
  }

  v231 = v12[248].isa;
  v236 = v12[250].isa;
  sub_100060DF4();
  v139 = v12[152].isa;
  v218 = v12[181].isa;
  v219 = v12[149].isa;
  v140 = v12[101].isa;
  v221 = v12[144].isa;
  v223 = v12[68].isa;
  v141 = BYTE4(v12[262].isa);
  v142 = v12[67].isa;
  v143 = v12[64].isa;
  v216 = v12[61].isa;
  sub_10005FCC4(v12[60].isa);
  v145 = [v112 *(v144 + 2952)];
  sub_10008A268();
  v147 = v146;

  v148 = swift_task_alloc();
  v149 = sub_100060460(v148);
  v149[7] = v218;
  v149[8] = v140;
  v149[9] = v224;
  v149[10] = v219;
  v150 = sub_100060DB4(v149, v221);
  v150[15] = v151;
  v150[16] = v216;
  sub_10006123C(v150);
  sub_10005C624();
  sub_1000893A8();
  sub_10005FB2C();
  v152 = v12[195].isa;
  v237 = v12[194].isa;
  sub_10005D330();
  sub_10005FB14();
  sub_10005FAFC();
  sub_10005DE40();
  v203 = v12[177].isa;
  v204 = v12[176].isa;
  v205 = v153;
  v206 = v12[178].isa;
  v207 = v12[175].isa;
  sub_10005FAF0();
  sub_10005FAE4();
  sub_10005FAD8();
  sub_10005FACC();
  sub_10005FAC0();
  v154 = v12[151].isa;
  v201 = v12[150].isa;
  v202 = v12[152].isa;
  sub_10005D428();
  sub_10006043C();
  v199 = v155;
  v200 = v156;
  v157 = v12[144].isa;
  sub_10005D3C4();
  sub_10005D800(v158);
  v159();

  sub_100017954(v142, &qword_1000A6508, &qword_10008D8F8);
  v160 = v12[55].isa;

  v161 = v12[46].isa;

  v162 = *(v147 + 8);
  v163 = sub_10005F2AC();
  v164(v163);
  v165 = v12[53].isa;

  (*(v140 + 1))(v200, v199);
  (*(v154 + 1))(v202, v201);
  v166 = v12[50].isa;

  v175 = sub_100060CD4(v167, v168, v169, v170, v171, v172, v173, v174, v197, v198, v199, v200, v201, v202, v203, v204, v205);
  v176(v175);

  sub_100012420();
  sub_100012640();

  v178(v177, v178, v179, v180, v181, v182, v183, v184, a9, a10, a11, a12);
}

uint64_t sub_100048924(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v3 = sub_1000889E8();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100089318();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  __chkstk_darwin(v6);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100088E38();
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  v11 = __chkstk_darwin(v9);
  v41 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v40 = &v39 - v14;
  __chkstk_darwin(v13);
  v48 = &v39 - v15;
  v16 = sub_100088E58();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a2;
  result = sub_100088E48();
  v22 = 0;
  v24 = result + 64;
  v23 = *(result + 64);
  v52 = result;
  v25 = 1 << *(result + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v23;
  v28 = (v25 + 63) >> 6;
  v50 = v17 + 16;
  v29 = (v17 + 8);
  if ((v26 & v23) != 0)
  {
    while (1)
    {
      v30 = v22;
LABEL_8:
      (*(v17 + 16))(v20, *(v52 + 56) + *(v17 + 72) * (__clz(__rbit64(v27)) | (v30 << 6)), v16);
      v31 = v53;
      sub_1000895C8();
      v53 = v31;
      if (v31)
      {
        break;
      }

      v27 &= v27 - 1;
      result = (*v29)(v20, v16);
      v22 = v30;
      if (!v27)
      {
        goto LABEL_5;
      }
    }

    (*v29)(v20, v16);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v30 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        return result;
      }

      if (v30 >= v28)
      {
        break;
      }

      v27 = *(v24 + 8 * v30);
      ++v22;
      if (v27)
      {
        goto LABEL_8;
      }
    }

    v32 = v48;
    sub_100088E88();
    sub_100089328();
    sub_10005AE38(&qword_1000A64C8, &type metadata accessor for ToolDatabase.LaunchServicesSnapshotDatabaseVersionKey);
    v33 = v53;
    sub_100089668();
    if (v33)
    {
      return (*(v46 + 8))(v32, v47);
    }

    else
    {
      v34 = v47;
      v35 = *(v46 + 8);
      v35(v32, v47);
      v36 = v40;
      sub_100088E88();
      sub_100088E28();
      v35(v36, v34);
      v37 = v41;
      sub_100088E88();
      sub_100088E18();
      v35(v37, v34);
      v38 = v43;
      sub_100089308();
      sub_1000892F8();
      sub_10005AE38(&qword_1000A64D0, &type metadata accessor for ToolDatabase.LaunchServicesDatabaseVersionKey);
      sub_100089668();
      return (*(v44 + 8))(v38, v45);
    }
  }
}

uint64_t sub_100048E28(uint64_t a1)
{
  v19 = a1;
  v2 = sub_100088D08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100088CF8();
  v8 = 0;
  v10 = result + 64;
  v9 = *(result + 64);
  v20 = result;
  v11 = 1 << *(result + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v9;
  v14 = (v11 + 63) >> 6;
  v17[1] = v3 + 16;
  v18 = v3;
  v15 = (v3 + 8);
  if ((v12 & v9) != 0)
  {
    while (1)
    {
      v16 = v8;
LABEL_8:
      (*(v18 + 16))(v6, *(v20 + 56) + *(v18 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v2);
      sub_1000894B8();
      if (v1)
      {
        break;
      }

      v13 &= v13 - 1;
      result = (*v15)(v6, v2);
      v8 = v16;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    (*v15)(v6, v2);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v16 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(v10 + 8 * v16);
      ++v8;
      if (v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100049008()
{
  v1 = sub_100089438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100089428();
  sub_100089338();
  sub_10005AE38(&qword_1000A64B8, &type metadata accessor for ToolDatabase.VersionKey);
  sub_100089668();
  if (v0)
  {
    return (*(v2 + 8))(v5, v1);
  }

  (*(v2 + 8))(v5, v1);
  v8[0] = sub_1000896B8();
  v8[1] = v7;
  sub_1000896C8();
  sub_10005AE38(&qword_1000A64C0, &type metadata accessor for ToolDatabase.OSVersion);
  sub_100089668();
}

void sub_1000491F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000602E0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v48 = v28;
  v49 = v27;
  v30 = v29;
  v32 = v31(0);
  sub_100012368(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  sub_1000602BC();
  __chkstk_darwin();
  v38 = &v48 - v37;
  v39 = sub_100008DC0(v26, v24);
  sub_10005E3B0(v39);
  v41 = *(v40 + 64);
  sub_1000602BC();
  __chkstk_darwin();
  sub_10005E9B4();
  sub_10005BF68();
  v42 = 1;
  v43 = sub_10005F090();
  if (sub_100008E78(v43, v44, v32) == 1)
  {
    goto LABEL_5;
  }

  v45 = *(v34 + 32);
  v46 = sub_10005E51C();
  v47(v46);
  v49(v38, &a10);
  if (!v20)
  {
    (*(v34 + 8))(v38, v32);
    v42 = 0;
LABEL_5:
    sub_100009158(v30, v42, 1, v32);
    goto LABEL_6;
  }

  (*(v34 + 8))(v38, v32);
LABEL_6:
  sub_1000601E4();
}

void *sub_100049398(uint64_t a1, void *a2)
{
  if (*(a1 + 16) <= a2[2] >> 3)
  {
    sub_1000501EC(a1);
    return a2;
  }

  else
  {

    return sub_100050710(a1, a2);
  }
}

void sub_1000493EC()
{
  sub_1000602E0();
  v2 = v1;
  v3(0);
  v4 = sub_10005E810();
  sub_10005AE38(v4, v5);
  sub_10005ECCC();
  sub_100088DB8();
  if (v0)
  {
    *v2 = v0;
  }

  sub_1000601E4();
}

uint64_t sub_100049478@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_100089008();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A650(a1, v43);
  if (swift_dynamicCast())
  {
    v12 = v42[0];
    v13 = v42[1];
    v14 = sub_100089768();
    v15 = swift_allocBox();
    v17 = v16;
    *v16 = v12;
    v16[1] = v13;
    v18 = &enum case for TypedValue.PrimitiveValue.string(_:);
LABEL_5:
    (*(*(v14 - 8) + 104))(v17, *v18, v14);
    *a3 = v15;
    v21 = enum case for TypedValue.primitive(_:);
    v22 = sub_1000897A8();
    (*(*(v22 - 8) + 104))(a3, v21, v22);
    v23 = a3;
    v24 = 0;
    v25 = v22;
    return sub_100009158(v23, v24, 1, v25);
  }

  sub_10000A650(a1, v43);
  if (swift_dynamicCast())
  {
    v19 = v42[0];
    v14 = sub_100089768();
    v15 = swift_allocBox();
    v17 = v20;
    *v20 = v19;
    v18 = &enum case for TypedValue.PrimitiveValue.number(_:);
    goto LABEL_5;
  }

  sub_100088F28();
  sub_10000A650(a1, v43);
  v26 = a2;
  v27 = sub_100088FF8();
  v28 = sub_10008A5D8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    HIDWORD(v38) = v28;
    v30 = v29;
    v31 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42[0] = v39;
    *v30 = 138412546;
    *(v30 + 4) = v26;
    *v31 = v26;
    *(v30 + 12) = 2080;
    v40 = v3;
    sub_10005BE98(v43, v43[3]);
    DynamicType = swift_getDynamicType();
    v32 = v26;
    sub_100008DC0(&qword_1000A6650, &qword_10008D998);
    v33 = sub_10008A278();
    v35 = v34;
    sub_10005B1BC(v43);
    v36 = sub_100080D2C(v33, v35, v42);

    *(v30 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v27, BYTE4(v38), "Unhandled compared value in parameter: %@: %s", v30, 0x16u);
    sub_100017954(v31, &qword_1000A6460, &qword_10008D878);

    sub_10005B1BC(v39);
  }

  else
  {

    sub_10005B1BC(v43);
  }

  (*(v8 + 8))(v11, v7);
  v25 = sub_1000897A8();
  v23 = a3;
  v24 = 1;
  return sub_100009158(v23, v24, 1, v25);
}

uint64_t sub_10004987C(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v28 = sub_100008DC0(&qword_1000A65A0, &qword_10008D938);
  v4 = *(*(v28 - 8) + 64);
  v5 = __chkstk_darwin(v28);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  v9 = sub_1000892D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = *(v10 + 16);
  v27 = v2;
  v17(v14, v2, v9);
  v25 = sub_10005AE38(&qword_1000A6550, &type metadata accessor for ToolFlag);
  sub_10008A808();
  v18 = v28;
  sub_10005AE38(&qword_1000A65A8, &type metadata accessor for ToolFlag);
  v26 = a2;
  v19 = sub_10008A228();
  v20 = *(v18 + 48);
  *v8 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v10 + 32))(&v8[v20], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v21 = v26;
    v17(&v8[v20], v26, v9);
    v17(v14, v21, v9);
    sub_10008A818();
  }

  v22 = v29;
  sub_10005BFBC();
  v23 = *v22;
  (*(v10 + 32))(v30, &v22[*(v18 + 48)], v9);
  return v23;
}

uint64_t sub_100049B80(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v28 = sub_100008DC0(&qword_1000A64F8, &qword_10008D8E8);
  v4 = *(*(v28 - 8) + 64);
  v5 = __chkstk_darwin(v28);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  v9 = sub_100089158();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = *(v10 + 16);
  v27 = v2;
  v17(v14, v2, v9);
  v25 = sub_10005AE38(&unk_1000A6578, &type metadata accessor for ToolVisibilityFlag);
  sub_10008A808();
  v18 = v28;
  sub_10005AE38(&qword_1000A6568, &type metadata accessor for ToolVisibilityFlag);
  v26 = a2;
  v19 = sub_10008A228();
  v20 = *(v18 + 48);
  *v8 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v10 + 32))(&v8[v20], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v21 = v26;
    v17(&v8[v20], v26, v9);
    v17(v14, v21, v9);
    sub_10008A818();
  }

  v22 = v29;
  sub_10005BFBC();
  v23 = *v22;
  (*(v10 + 32))(v30, &v22[*(v18 + 48)], v9);
  return v23;
}

uint64_t sub_100049E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case -1:
    case 4:
      v3 = sub_100089A08();
      v4 = a2;
      v5 = 1;
      goto LABEL_10;
    case 0:
      v6 = &enum case for RuntimePlatform.phone(_:);
      goto LABEL_9;
    case 1:
      v6 = &enum case for RuntimePlatform.pad(_:);
      goto LABEL_9;
    case 2:
      v6 = &enum case for RuntimePlatform.macintosh(_:);
      goto LABEL_9;
    case 3:
      v6 = &enum case for RuntimePlatform.watch(_:);
      goto LABEL_9;
    case 5:
      v6 = &enum case for RuntimePlatform.vision(_:);
      goto LABEL_9;
    default:
      v6 = &enum case for RuntimePlatform.unknown(_:);
LABEL_9:
      v7 = *v6;
      v8 = sub_100089A08();
      (*(*(v8 - 8) + 104))(a2, v7, v8);
      v4 = a2;
      v5 = 0;
      v3 = v8;
LABEL_10:

      return sub_100009158(v4, v5, 1, v3);
  }
}

uint64_t sub_100049F9C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10008A268();
  v4 = v3;
  if (v2 == sub_10008A268() && v4 == v5)
  {
    v8 = &enum case for RuntimePlatform.phone(_:);
    goto LABEL_8;
  }

  v7 = sub_10008AA68();

  if (v7)
  {
    v8 = &enum case for RuntimePlatform.phone(_:);
    goto LABEL_9;
  }

  v13 = sub_10008A268();
  v15 = v14;
  if (v13 == sub_10008A268() && v15 == v16)
  {
    v8 = &enum case for RuntimePlatform.pad(_:);
    goto LABEL_8;
  }

  v18 = sub_10008AA68();

  if (v18)
  {
    v8 = &enum case for RuntimePlatform.pad(_:);
    goto LABEL_9;
  }

  v19 = sub_10008A268();
  v21 = v20;
  if (v19 == sub_10008A268() && v21 == v22)
  {
    v8 = &enum case for RuntimePlatform.watch(_:);
    goto LABEL_8;
  }

  v24 = sub_10008AA68();

  if (v24)
  {
    v8 = &enum case for RuntimePlatform.watch(_:);
    goto LABEL_9;
  }

  v25 = sub_10008A268();
  v27 = v26;
  if (v25 == sub_10008A268() && v27 == v28)
  {
    v8 = &enum case for RuntimePlatform.macintosh(_:);
    goto LABEL_8;
  }

  v30 = sub_10008AA68();

  if (v30)
  {
    v8 = &enum case for RuntimePlatform.macintosh(_:);
    goto LABEL_9;
  }

  v31 = sub_10008A268();
  v33 = v32;
  if (v31 == sub_10008A268() && v33 == v34)
  {
    v8 = &enum case for RuntimePlatform.vision(_:);
    goto LABEL_8;
  }

  v36 = sub_10008AA68();

  if (v36)
  {
    v8 = &enum case for RuntimePlatform.vision(_:);
    goto LABEL_9;
  }

  v37 = sub_10008A268();
  v39 = v38;
  v8 = &enum case for RuntimePlatform.audioAccessory(_:);
  if (v37 == sub_10008A268() && v39 == v40)
  {
LABEL_8:

    goto LABEL_9;
  }

  v42 = sub_10008AA68();

  if ((v42 & 1) == 0)
  {
    v8 = &enum case for RuntimePlatform.unknown(_:);
  }

LABEL_9:
  v9 = *v8;
  v10 = sub_100089A08();
  v11 = *(*(v10 - 8) + 104);

  return v11(a1, v9, v10);
}

uint64_t sub_10004A2F8()
{
  v0 = sub_1000899E8();
  v2 = v1;
  if (v0 == sub_1000899E8() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_10008AA68();
  }

  return v5 & 1;
}

uint64_t sub_10004A390(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = sub_10004F650(*(a1 + 16), 0, &qword_1000A6608, &qword_10008D970, &type metadata accessor for RuntimePlatform);
    v5 = *(sub_100089A08() - 8);
    v6 = sub_10005BBD8(&v9, v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v2, a1);

    sub_100011E9C();
    if (v6 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_5:
  v10 = v4;
  sub_10005804C(&v10);
  v7 = v10;
  if (v1)
  {
  }

  return v7;
}

uint64_t sub_10004A4D4()
{
  sub_100089158();
  sub_10005AE38(&unk_1000A6578, &type metadata accessor for ToolVisibilityFlag);
  sub_100008DC0(&qword_1000A65E8, &qword_10008D958);
  sub_10005B920();
  return sub_10008A838();
}

uint64_t sub_10004A58C(void *a1)
{
  v1 = [a1 identifier];
  sub_10008A268();

  return sub_10005E694();
}

uint64_t sub_10004A5DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100089158();
  v3 = swift_projectBox();
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_10004A66C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13, id *a14, uint64_t a15, uint64_t a16, uint64_t *a17, uint64_t a18)
{
  v201 = a8;
  LODWORD(v197) = a6;
  v195 = a5;
  v193 = a4;
  v181 = a1;
  v199 = a13;
  v196 = a12;
  v194 = a11;
  v180 = a10;
  v192 = a9;
  v21 = sub_1000899A8();
  v157 = *(v21 - 8);
  v158 = v21;
  v22 = *(v157 + 64);
  v23 = __chkstk_darwin(v21);
  v153 = &v152 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v159 = &v152 - v25;
  v156 = _s15ActionParameterVMa(0);
  v26 = *(*(v156 - 8) + 64);
  __chkstk_darwin(v156);
  v161 = &v152 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100008DC0(&qword_1000A65C8, &qword_10008D948);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v155 = &v152 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v154 = (&v152 - v32);
  v200 = sub_100089A68();
  v191 = *(v200 - 8);
  v33 = *(v191 + 64);
  v34 = __chkstk_darwin(v200);
  v36 = &v152 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = &v152 - v37;
  v39 = sub_1000892D8();
  v190 = *(v39 - 8);
  v40 = *(v190 + 64);
  v41 = __chkstk_darwin(v39);
  v43 = &v152 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v45 = &v152 - v44;
  v179 = a2;
  v202 = a2;
  v203 = a3;
  v204 = v193;
  v205 = v195;
  v206 = v197 & 1;
  v46 = a7;
  v207 = a7;
  v208 = v201;
  v209 = v192;
  v210 = v180;
  v211 = v194;
  v212 = v196;
  v213 = v199;
  v47 = i;
  result = sub_1000896D8();
  if (v47)
  {
    return result;
  }

  v50 = v190;
  v49 = v191;
  v175 = v45;
  v176 = v43;
  v173 = v39;
  v174 = v36;
  v198 = v38;
  v199 = 0;
  v177 = v46;
  v51 = a14;
  v52 = v214[0];
  v53 = sub_10008391C(a14);
  v171 = v53;
  v172 = a14;
  v178 = v52;
  if (v53)
  {
    v54 = 0;
    v170 = a14 & 0xC000000000000001;
    v162 = a14 & 0xFFFFFFFFFFFFFF8;
    v167 = (v50 + 16);
    v168 = WFLocalizationUsageLanguageModel;
    v166 = (v50 + 8);
    v160 = enum case for LocalizationUsage.display(_:);
    v165 = (v49 + 104);
    v164 = (v49 + 32);
    v169 = (v49 + 8);
    v163 = enum case for LocalizationUsage.languageModel(_:);
    while (1)
    {
      if (v170)
      {
        v51 = sub_10008A928();
        v55 = v179;
        v57 = v175;
        v56 = v176;
      }

      else
      {
        v55 = v179;
        v57 = v175;
        v56 = v176;
        if (v54 >= *(v162 + 16))
        {
          goto LABEL_68;
        }

        v51 = v51[v54 + 4];
      }

      if (__OFADD__(v54, 1))
      {
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:

        __chkstk_darwin(v147);
        v150 = v196;
        v151 = v57;
        v148 = v199;
        result = sub_1000896D8();
        if (!v148)
        {
          __chkstk_darwin(result);
          v149 = v179;
          *(&v152 - 4) = v51;
          *(&v152 - 3) = v149;
          v150 = v57;
          return sub_1000896D8();
        }

        return result;
      }

      v183 = v54 + 1;
      v58 = [v55 localizedNameWithContext:v51];
      *&v194 = sub_10008A268();
      v60 = v59;

      v61 = [v55 localizedDescriptionSummaryWithContext:v51];
      if (v61)
      {
        v62 = v61;
        v193 = sub_10008A268();
        *&v196 = v63;
      }

      else
      {
        v193 = 0;
        *&v196 = 0;
      }

      v64 = [v55 localizedDescriptionAttributionMarkdownStringWithContext:v51];
      if (v64)
      {
        v65 = v64;
        v190 = sub_10008A268();
        v195 = v66;
      }

      else
      {
        v190 = 0;
        v195 = 0;
      }

      v67 = [v55 localizedDescriptionResultWithContext:v51];
      if (v67)
      {
        v68 = v67;
        v189 = sub_10008A268();
        v70 = v69;
      }

      else
      {
        v189 = 0;
        v70 = 0;
      }

      v71 = [v55 localizedDescriptionNoteWithContext:v51];
      if (v71)
      {
        v72 = v71;
        v188 = sub_10008A268();
        v191 = v73;
      }

      else
      {
        v188 = 0;
        v191 = 0;
      }

      v74 = [v55 localizedDescriptionRequiresWithContext:v51];
      if (v74)
      {
        v75 = v74;
        v186 = sub_10008A268();
        i = v76;
      }

      else
      {
        v186 = 0;
        i = 0;
      }

      v192 = v70;
      v197 = v60;
      v77 = [v55 localizedDefaultOutputNameWithContext:v51];
      v182 = v54;
      if (v77)
      {
        v78 = v77;
        v79 = v51;
        v185 = sub_10008A268();
        v187 = v80;
      }

      else
      {
        v79 = v51;
        v185 = 0;
        v187 = 0;
      }

      v81 = v57;
      v82 = v173;
      (*v167)(v57, v180, v173);
      sub_100089268();
      sub_10005AE38(&qword_1000A6550, &type metadata accessor for ToolFlag);
      v83 = sub_10008A7F8();
      v84 = *v166;
      (*v166)(v56, v82);
      v84(v81, v82);
      if ((v83 & 1) != 0 && (v85 = [v55 localizedDiscontinuedDescriptionWithContext:v79]) != 0)
      {
        v86 = v85;
        v184 = sub_10008A268();
        v201 = v87;
      }

      else
      {
        v184 = 0;
        v201 = 0;
      }

      v88 = v165;
      v89 = [v79 localizationUsage];
      v90 = sub_10008A268();
      v92 = v91;
      if (v90 == sub_10008A268() && v92 == v93)
      {

        v96 = *v88;
      }

      else
      {
        v95 = sub_10008AA68();

        v96 = *v88;
        if ((v95 & 1) == 0)
        {
          v97 = v174;
          v98 = v200;
          v96(v174, v160, v200);
          v99 = v178;
          v100 = v187;
          goto LABEL_39;
        }
      }

      v99 = v178;
      v100 = v187;
      v97 = v174;
      v98 = v200;
      v96(v174, v163, v200);
LABEL_39:
      v101 = v198;
      v102 = (*v164)(v198, v97, v98);
      v187 = &v152;
      __chkstk_darwin(v102);
      *(&v152 - 20) = v99;
      *(&v152 - 19) = v79;
      v103 = v197;
      *(&v152 - 18) = v194;
      *(&v152 - 17) = v103;
      *(&v152 - 16) = v185;
      *(&v152 - 15) = v100;
      v104 = v192;
      v106 = v195;
      v105 = v196;
      *(&v152 - 14) = v193;
      *(&v152 - 13) = v105;
      v107 = v189;
      *(&v152 - 12) = v190;
      *(&v152 - 11) = v106;
      *(&v152 - 10) = v107;
      *(&v152 - 9) = v104;
      v108 = v191;
      *(&v152 - 8) = v188;
      *(&v152 - 7) = v108;
      v109 = i;
      *(&v152 - 6) = v186;
      *(&v152 - 5) = v109;
      v110 = v201;
      *(&v152 - 4) = v184;
      *(&v152 - 3) = v110;
      v150 = v101;
      v111 = v199;
      sub_1000896D8();
      v199 = v111;
      if (v111)
      {

        return (*v169)(v198, v200);
      }

      v53 = (*v169)(v198, v200);
      v54 = v182 + 1;
      v51 = v172;
      v112 = v177;
      if (v183 == v171)
      {
        goto LABEL_43;
      }
    }
  }

  v112 = v177;
LABEL_43:
  __chkstk_darwin(v53);
  v57 = v178;
  v150 = v113;
  v151 = v178;
  v114 = v199;
  result = sub_1000896D8();
  if (!v114)
  {
    __chkstk_darwin(result);
    v115 = sub_1000896D8();
    __chkstk_darwin(v115);
    v150 = v112;
    v151 = v57;
    sub_1000896D8();
    v199 = 0;
    *&v196 = a18;
    v116 = *a17;
    v214[11] = 0;
    v214[12] = 0;
    v214[10] = v116;
    v200 = v157 + 16;
    v197 = (v157 + 8);
    v198 = (v157 + 32);

LABEL_48:
    sub_100018280(v155);
    v117 = v154;
    sub_10005BFBC();
    v118 = sub_100008DC0(&qword_1000A65D0, &qword_10008D950);
    if (sub_100008E78(v117, 1, v118) == 1)
    {
      goto LABEL_69;
    }

    v119 = *v117;
    v120 = v161;
    v121 = sub_10005B6A8(v117 + *(v118 + 48), v161);
    __chkstk_darwin(v121);
    *(&v152 - 4) = v57;
    *(&v152 - 3) = v120;
    v150 = v119;
    v122 = v199;
    sub_1000896D8();
    if (v122)
    {

      return sub_10005B2EC(v120, _s15ActionParameterVMa);
    }

    else
    {
      v123 = v120 + *(v156 + 28);
      v124 = sub_100089868();
      if (*(v124 + 16))
      {
        v125 = 0;
        v126 = v124 + 56;
        v127 = 1 << *(v124 + 32);
        if (v127 < 64)
        {
          v128 = ~(-1 << v127);
        }

        else
        {
          v128 = -1;
        }

        v129 = v128 & *(v124 + 56);
        v130 = (v127 + 63) >> 6;
        v131 = v153;
        v132 = v159;
        v201 = v124 + 56;
        for (i = v124; v129; v126 = v201)
        {
          v133 = v125;
          v134 = v158;
LABEL_60:
          v135 = v157;
          (*(v157 + 16))(v132, *(v124 + 48) + *(v157 + 72) * (__clz(__rbit64(v129)) | (v133 << 6)), v134);
          v136 = (*(v135 + 32))(v131, v132, v134);
          __chkstk_darwin(v136);
          v137 = v161;
          *(&v152 - 4) = v178;
          *(&v152 - 3) = v137;
          v150 = v131;
          sub_1000896D8();
          v129 &= v129 - 1;
          (*v197)(v131, v134);
          v125 = v133;
          v132 = v159;
          v124 = i;
        }

        v134 = v158;
        while (1)
        {
          v133 = v125 + 1;
          if (__OFADD__(v125, 1))
          {
            __break(1u);

            return sub_10005B2EC(v130, _s15ActionParameterVMa);
          }

          if (v133 >= v130)
          {
            break;
          }

          v129 = *(v126 + 8 * v133);
          ++v125;
          if (v129)
          {
            goto LABEL_60;
          }
        }

        v139 = 0;
        v140 = *(v161 + *(v156 + 40));
        v141 = *(v140 + 16);
        for (j = (v140 + 32); ; j += 80)
        {
          v57 = v178;
          if (v141 == v139)
          {
            __chkstk_darwin(v138);
            v146 = v161;
            v150 = v57;
            v151 = v161;
            sub_1000896D8();
            v199 = 0;
            sub_10005B2EC(v146, _s15ActionParameterVMa);
            v51 = v172;
            goto LABEL_48;
          }

          if (v139 >= *(v140 + 16))
          {
            break;
          }

          v143 = memcpy(__dst, j, 0x50uLL);
          __chkstk_darwin(v143);
          v144 = v161;
          *(&v152 - 4) = v145;
          *(&v152 - 3) = v144;
          v150 = __dst;
          sub_10005B89C(__dst, v214);
          sub_1000896D8();
          ++v139;
          v138 = sub_10005B8D4(__dst);
        }

        __break(1u);
      }

      LODWORD(v151) = 0;
      v150 = 1296;
      result = sub_10008A9C8();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10004B798@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void *a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v57 = a8;
  v54 = a5;
  v55 = a7;
  v49 = a6;
  v50 = a3;
  v51 = a4;
  v52 = a1;
  v44[0] = a9;
  v47 = a15;
  v48 = a14;
  v46 = a16;
  v59 = a12;
  v60 = a13;
  v56 = a11;
  v62 = sub_100089158();
  v61 = *(v62 - 8);
  v17 = *(v61 + 64);
  __chkstk_darwin(v62);
  v45 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100089258();
  v20 = *(v19 - 8);
  v21 = v20[8];
  __chkstk_darwin(v19);
  v23 = v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000892D8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [a2 identifier];
  v44[2] = sub_10008A268();

  v30 = a10[1];
  v44[1] = *a10;
  v53 = v25;
  v31 = *(v25 + 16);
  v32 = v56;
  v56 = v24;
  v33 = v24;
  v34 = v23;
  v31(v28, v32, v33);
  v35 = v60;
  v36 = *v59;
  v59 = v20;
  v60 = v19;
  v37 = v20;
  v38 = v45;
  (v37[2])(v23, v35, v19);
  v39 = v46;
  swift_beginAccess();
  (*(v61 + 16))(v38, v39, v62);

  v40 = v58;
  v41 = sub_100089448();
  if (v40)
  {

    (*(v61 + 8))(v38, v62);
    (v59[1])(v23, v60);
    return (*(v53 + 8))(v28, v56);
  }

  else
  {
    v43 = v41;

    (*(v61 + 8))(v38, v62);
    (v59[1])(v34, v60);
    result = (*(v53 + 8))(v28, v56);
    *v44[0] = v43;
  }

  return result;
}

uint64_t sub_10004BBA0(uint64_t a1, Swift::Int64 a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, Swift::String_optional a9, Swift::String_optional a10, Swift::String_optional a11, Swift::String_optional a12, Swift::String_optional a13, uint64_t a14)
{
  v37.value._object = a7;
  v38 = a8;
  v36 = a1;
  v37.value._countAndFlagsBits = a6;
  v35 = a5;
  v33 = a10;
  v34 = a9;
  v31 = a12;
  v32 = a11;
  v30 = a13;
  v17 = sub_100088A68();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a3 locale];
  sub_100088A48();

  v23 = sub_100088A08();
  v25 = v24;
  (*(v18 + 8))(v21, v17);
  v28.value._object = sub_100089A58();
  v29._countAndFlagsBits = v26;
  v28.value._countAndFlagsBits = a14;
  v39._countAndFlagsBits = v23;
  v39._object = v25;
  v40._countAndFlagsBits = a4;
  v40._object = v35;
  sub_100089468(a2, v39, v40, v37, v34, v33, v32, v31, v30, v28, v29);
}

void sub_10004BD60(uint64_t a1, uint64_t a2, Swift::Int64 a3)
{
  v5 = *(a2 + 16);
  v6 = (a2 + 32);
  do
  {
    if (!v5)
    {
      break;
    }

    v7 = *v6++;
    sub_100089638(a3, v7);
    --v5;
  }

  while (!v3);
}

uint64_t sub_10004BDAC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v15[3] = a3;
  v5 = sub_100089048();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = *(v10 + 16);
  v15[1] = v6 + 16;
  v12 = (v6 + 8);

  for (i = 0; ; ++i)
  {
    if (v11 == i)
    {
    }

    if (i >= *(v10 + 16))
    {
      break;
    }

    (*(v6 + 16))(v9, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * i, v5);
    sub_100089478();
    if (v3)
    {
      (*v12)(v9, v5);
    }

    result = (*v12)(v9, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004BF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v22 = a3;
  v4 = sub_1000899A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100089868();
  v10 = 0;
  v12 = result + 56;
  v11 = *(result + 56);
  v23 = result;
  v13 = 1 << *(result + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v11;
  v16 = (v13 + 63) >> 6;
  v19 = v5 + 16;
  v20 = v5;
  v17 = (v5 + 8);
  if ((v14 & v11) != 0)
  {
    while (1)
    {
      v18 = v10;
LABEL_8:
      (*(v20 + 16))(v8, *(v23 + 48) + *(v20 + 72) * (__clz(__rbit64(v15)) | (v18 << 6)), v4);
      sub_100089458();
      if (v3)
      {
        break;
      }

      v15 &= v15 - 1;
      result = (*v17)(v8, v4);
      v10 = v18;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    (*v17)(v8, v4);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(v12 + 8 * v18);
      ++v10;
      if (v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10004C120(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = _s15ActionParameterVMa(0);
  v7 = a3[3];
  v8 = *(v6 + 28);
  v9 = *(v6 + 32);
  return sub_1000894A8();
}

uint64_t sub_10004C1A0(uint64_t a1, Swift::Int64 a2, uint64_t *a3, uint64_t a4)
{
  v7 = sub_1000899A8();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = *a3;
  v11 = a3[1];
  (*(v12 + 16))(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  v18._countAndFlagsBits = sub_10008A2D8();
  v14 = v13;
  v17._countAndFlagsBits = v10;
  v17._object = v11;
  v18._object = v14;
  sub_1000894D8(a2, v17, v18);
}

void sub_10004C2BC(uint64_t a1, Swift::Int64 a2, Swift::String *a3, uint64_t a4)
{
  v4 = *(a4 + 32);
  v5 = *(a4 + 72);
  sub_1000895B8(a2, *a3, *a4, *(a4 + 16), *(a4 + 40), *(a4 + 56));
}

void sub_10004C318(uint64_t a1, Swift::Int64 a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  v6._rawValue = *(a3 + *(_s15ActionParameterVMa(0) + 36));
  v7.value._countAndFlagsBits = v4;
  v7.value._object = v5;
  sub_100089558(a2, v7, v6);
}

void sub_10004C380(int a1, id a2, Swift::Int64 a3)
{
  v4 = v3;
  if (a2)
  {
    v5 = [a2 backingActionIdentifiers];
    v6 = sub_10008A328();

    v18 = *(v6 + 16);
    if (v18)
    {
      v7 = 0;
      v8 = (v6 + 40);
      while (v7 < *(v6 + 16))
      {
        v9 = *(v8 - 1);
        v10 = *v8;

        v11 = sub_10008A238();

        v12 = WFLinkActionIdentifierFromShortcutsActionIdentifier();

        if (v12)
        {
          v13 = [v12 actionIdentifier];
          v14 = sub_10008A268();
          v16 = v15;

          v19._countAndFlagsBits = v14;
          v19._object = v16;
          sub_1000895A8(a3, v19);
          if (v4)
          {

            goto LABEL_11;
          }
        }

        ++v7;
        v8 += 2;
        if (v18 == v7)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_11:
    }
  }
}

void sub_10004C4EC(uint64_t a1, uint64_t *a2, void *a3, Swift::Int64 a4)
{
  v5 = v4;
  v129 = a4;
  v119 = a3;
  v123 = a1;
  v118 = sub_100089008();
  v125 = *(v118 - 8);
  v7 = v125[8];
  v8 = __chkstk_darwin(v118);
  v10 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v109 = &v102 - v11;
  v128 = sub_100088A68();
  v124 = *(v128 - 8);
  v12 = v124[8];
  v13 = __chkstk_darwin(v128);
  v112 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v122 = &v102 - v16;
  __chkstk_darwin(v15);
  v104 = &v102 - v17;
  v131 = _swiftEmptyArrayStorage;
  v18 = sub_10008391C(a2);
  v19 = 0;
  v130 = a2 & 0xC000000000000001;
  v126 = a2 & 0xFFFFFFFFFFFFFF8;
  v127 = a2;
  v120 = v10;
  while (1)
  {
    if (v18 == v19)
    {
      v30 = v131;
      v108 = sub_10008391C(v131);
      if (v108)
      {
        v106 = sub_100011D84(0, &qword_1000A65D8, NSOrderedSet_ptr);
        v31 = 0;
        v107 = v30 & 0xC000000000000001;
        v103 = v30 + 32;
        v127 = v124 + 1;
        v116 = (v125 + 1);
        v117 = WFLogCategoryToolKitIndexing;
        *&v32 = 136316162;
        v111 = v32;
        *&v32 = 136315906;
        v102 = v32;
        v105 = v30;
        while (2)
        {
          v33 = v107;
          sub_10004F878(v31, v107 == 0, v30);
          if (v33)
          {
            v34 = sub_10008A928();
          }

          else
          {
            v34 = *(v103 + 8 * v31);
          }

          v35 = v34;
          v36 = v109;
          v110 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_45;
          }

          v37 = [v119 localizedCategoryWithContext:v34];
          v113 = v35;
          if (v37)
          {
            v38 = v37;
            v39 = v5;
            v40 = sub_10008A268();
            v42 = v41;

            v43 = [v35 locale];
            v44 = v35;
            v45 = v104;
            sub_100088A48();

            v46 = sub_100088A08();
            v48 = v47;
            v126 = *v127;
            (v126)(v45, v128);
            v132._countAndFlagsBits = v46;
            v132._object = v48;
            v134._countAndFlagsBits = v40;
            v134._object = v42;
            sub_100089498(v129, v132, v134);
            v130 = v39;
            if (v39)
            {

              sub_100088F28();

              v49 = v119;
              v50 = v44;
              v51 = v36;
              v52 = sub_100088FF8();
              v53 = sub_10008A5D8();

              if (os_log_type_enabled(v52, v53))
              {
                v54 = swift_slowAlloc();
                v131 = swift_slowAlloc();
                *v54 = v102;
                v55 = sub_100080D2C(v40, v42, &v131);

                *(v54 + 4) = v55;
                *(v54 + 12) = 2080;
                v56 = [v49 identifier];
                v57 = sub_10008A268();
                v59 = v58;

                v60 = sub_100080D2C(v57, v59, &v131);

                *(v54 + 14) = v60;
                *(v54 + 22) = 2048;
                *(v54 + 24) = v129;
                *(v54 + 32) = 2080;
                v61 = [v50 locale];
                v62 = v112;
                sub_100088A48();

                v63 = sub_100088A08();
                v65 = v64;
                (v126)(v62, v128);
                v66 = sub_100080D2C(v63, v65, &v131);

                *(v54 + 34) = v66;
                _os_log_impl(&_mh_execute_header, v52, v53, "Failed to index category %s for action: %s (%lld) in locale: %s", v54, 0x2Au);
                swift_arrayDestroy();

                v35 = v113;

                (*v116)(v109, v118);
              }

              else
              {
                v35 = v44;

                (*v116)(v51, v118);
              }

              v5 = 0;
            }

            else
            {

              v5 = v130;
              v35 = v44;
            }
          }

          v67 = [v119 localizedKeywordsWithContext:{v35, v102, *(&v102 + 1)}];
          v68 = sub_10008A328();

          sub_10004D074(v68);

          v69 = sub_10004D174();
          v70 = sub_10001806C();

          v71 = 0;
          v124 = v70[2];
          v125 = v70;
          v72 = v70 + 5;
          while (v124 != v71)
          {
            if (v71 >= v125[2])
            {
              __break(1u);
              goto LABEL_43;
            }

            v74 = *(v72 - 1);
            v73 = *v72;
            v130 = v72;

            v75 = [v35 locale];
            v76 = v122;
            sub_100088A48();

            v77 = v35;
            v78 = sub_100088A08();
            v80 = v79;
            v126 = *v127;
            (v126)(v76, v128);
            v133._countAndFlagsBits = v78;
            v133._object = v80;
            v135._countAndFlagsBits = v74;
            v135._object = v73;
            sub_1000894E8(v129, v133, v135, v71);
            if (v5)
            {

              sub_100088F28();

              v81 = v119;
              v82 = v77;
              swift_errorRetain();
              v83 = sub_100088FF8();
              v84 = sub_10008A5D8();

              v121 = v84;
              if (os_log_type_enabled(v83, v84))
              {
                v85 = swift_slowAlloc();
                v115 = swift_slowAlloc();
                v131 = swift_slowAlloc();
                *v85 = v111;
                v86 = sub_100080D2C(v74, v73, &v131);
                v114 = v83;
                v87 = v86;

                *(v85 + 4) = v87;
                *(v85 + 12) = 2080;
                v88 = [v81 identifier];
                v89 = sub_10008A268();
                v91 = v90;

                v92 = sub_100080D2C(v89, v91, &v131);

                *(v85 + 14) = v92;
                *(v85 + 22) = 2048;
                *(v85 + 24) = v129;
                *(v85 + 32) = 2080;
                v93 = [v82 locale];
                v94 = v112;
                sub_100088A48();

                v95 = sub_100088A08();
                v97 = v96;
                (v126)(v94, v128);
                v98 = sub_100080D2C(v95, v97, &v131);

                *(v85 + 34) = v98;
                *(v85 + 42) = 2112;
                swift_errorRetain();
                v99 = _swift_stdlib_bridgeErrorToNSError();
                *(v85 + 44) = v99;
                v100 = v114;
                v101 = v115;
                *v115 = v99;
                _os_log_impl(&_mh_execute_header, v100, v121, "Failed to index keyword %s for action: %s (%lld) in locale: %s, %@", v85, 0x34u);
                sub_100017954(v101, &qword_1000A6460, &qword_10008D878);

                swift_arrayDestroy();

                v35 = v113;
              }

              else
              {
                v35 = v77;
              }

              (*v116)(v120, v118);
              v5 = 0;
            }

            else
            {

              v35 = v77;
            }

            v72 = (v130 + 16);
            ++v71;
          }

          v31 = v110;
          v30 = v105;
          if (v110 != v108)
          {
            continue;
          }

          break;
        }
      }

      return;
    }

    if (v130)
    {
      v20 = sub_10008A928();
    }

    else
    {
      if (v19 >= *(v126 + 16))
      {
        goto LABEL_44;
      }

      v20 = v127[v19 + 4];
    }

    v21 = v20;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    v22 = [v20 localizationUsage];
    v23 = sub_10008A268();
    v25 = v24;
    if (v23 == sub_10008A268() && v25 == v26)
    {
    }

    else
    {
      v28 = sub_10008AA68();

      if ((v28 & 1) == 0)
      {

        goto LABEL_15;
      }
    }

    sub_10008A948();
    v29 = v131[2];
    sub_10008A978();
    sub_10008A988();
    sub_10008A958();
LABEL_15:
    ++v19;
    v5 = v4;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

id *sub_10004D074(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v11 = _swiftEmptyArrayStorage;
    sub_100081E10(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100081E10((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      v2[2] = (v6 + 1);
      sub_10000A6AC(&v10, &v2[4 * v6 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_10004D174()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = sub_10008A318().super.isa;

  v2 = [v0 initWithArray:isa];

  return v2;
}

uint64_t sub_10004D1EC(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = result;
  v8 = 0;
  v9 = *(a2 + 16);
  while (v9 != v8)
  {
    v10 = *(sub_100089918() - 8);
    result = sub_100014590(a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8, v7, 0, a4);
    if (v4)
    {
      break;
    }

    ++v8;
  }

  return result;
}

void sub_10004D2D0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (**a5)(char *, uint64_t))
{
  v71 = a5;
  v69 = a3;
  v70 = a4;
  v67 = a2;
  v6 = sub_100089AE8();
  v61 = *(v6 - 8);
  v7 = *(v61 + 64);
  __chkstk_darwin(v6);
  v57 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100008DC0(&qword_1000A6490, &qword_10008D898);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v59 = (&v54 - v11);
  v12 = sub_100008DC0(&qword_1000A6498, &qword_10008D8A0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v73 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v68 = &v54 - v16;
  v17 = sub_10008A088();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = sub_10008A128();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = sub_10008A508();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = 0;
  memset(v76, 0, sizeof(v76));
  sub_10008A118();
  sub_10008A4D8();
  sub_10008A4F8();
  sub_10008A4C8();
  v26 = v72;
  v27 = sub_100088AA8();
  if (v26)
  {
    (*(v22 + 8))(v25, v21);
  }

  else
  {
    v64 = a1;
    v65 = v22;
    v60 = v27;
    v66 = v21;
    v28 = v69;
    v29 = sub_10001BEBC(v69);
    v30 = _swiftEmptyArrayStorage;
    v72 = v9;
    v56 = v25;
    if (v29)
    {
      v31 = v29;
      v55 = v6;
      v78 = _swiftEmptyArrayStorage;
      sub_100081D00(0, v29 & ~(v29 >> 63), 0);
      v32 = v57;
      v62 = v31;
      if ((v31 & 0x8000000000000000) == 0)
      {
        v33 = 0;
        v30 = v78;
        v63 = v28 & 0xC000000000000001;
        v58 = v28 & 0xFFFFFFFFFFFFFF8;
        v34 = v71;
        while (1)
        {
          v35 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            break;
          }

          if (v63)
          {
            v36 = sub_10008A928();
          }

          else
          {
            if (v33 >= *(v58 + 16))
            {
              goto LABEL_28;
            }

            v36 = *(v69 + 8 * v33 + 32);
          }

          v75 = v36;
          sub_10004DA30(&v75, v64, v70, v34, &v74, v76);

          v37 = *&v76[0];
          v38 = *(v76 + 8);
          v78 = v30;
          v40 = v30[2];
          v39 = v30[3];
          if (v40 >= v39 >> 1)
          {
            v54 = *(v76 + 8);
            sub_100081D00((v39 > 1), v40 + 1, 1);
            v38 = v54;
            v30 = v78;
          }

          v30[2] = (v40 + 1);
          v41 = &v30[3 * v40];
          v41[4] = v37;
          *(v41 + 5) = v38;
          ++v33;
          v34 = v71;
          v9 = v72;
          if (v35 == v62)
          {
            v6 = v55;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      v32 = v57;
LABEL_16:
      v42 = 0;
      v43 = *(v60 + 16);
      v69 = v61 + 16;
      v70 = v43;
      v44 = (v61 + 32);
      v71 = (v61 + 8);
      v45 = v73;
      while (1)
      {
        if (v42 == v43)
        {
          v46 = 1;
          v42 = v43;
        }

        else
        {
          if ((v42 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          if (v42 >= *(v60 + 16))
          {
            goto LABEL_27;
          }

          v47 = v61;
          v48 = v60 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v42;
          v49 = *(v9 + 48);
          v50 = v59;
          *v59 = v42;
          (*(v47 + 16))(v50 + v49, v48, v6);
          sub_10005BFBC();
          v46 = 0;
          ++v42;
          v45 = v73;
        }

        sub_100009158(v45, v46, 1, v9);
        v51 = v68;
        sub_10005BFBC();
        if (sub_100008E78(v51, 1, v9) == 1)
        {
          break;
        }

        v52 = *v51;
        v53 = (*v44)(v32, &v51[*(v9 + 48)], v6);
        *&v76[0] = v67;
        __chkstk_darwin(v53);
        *(&v54 - 4) = v32;
        *(&v54 - 3) = v30;
        *(&v54 - 2) = v52;
        sub_100089378();
        sub_1000893A8();
        (*v71)(v32, v6);
        v9 = v72;
        v45 = v73;
        v43 = v70;
      }

      (*(v65 + 8))(v56, v66);
    }
  }
}

uint64_t sub_10004DA30@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v39 = a5;
  v44 = a3;
  v49 = a4;
  v42 = a6;
  v43 = a2;
  v7 = sub_10008A088();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10008A128();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10008A508();
  v40 = *(v11 - 8);
  v41 = v11;
  v12 = *(v40 + 64);
  __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100088A68();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v38 - v21;
  v23 = *a1;
  v24 = [v23 locale];
  sub_100088A48();

  sub_100088A08();

  v25 = *(v16 + 8);
  v25(v22, v15);
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_10008A118();
  v26 = v23;
  sub_10008A4D8();
  sub_10008A4C8();
  v27 = [v26 locale];
  sub_100088A48();

  v28 = sub_100088A08();
  v30 = v29;
  v25(v20, v15);
  v31 = v42;
  *v42 = v28;
  v31[1] = v30;
  v32 = v31;
  v33 = v45;
  v34 = sub_100088AA8();
  v35 = (v40 + 8);
  if (v33)
  {
    (*v35)(v14, v41);

    *v39 = v33;
  }

  else
  {
    v37 = v34;
    result = (*v35)(v14, v41);
    v32[2] = v37;
  }

  return result;
}

uint64_t sub_10004DD74(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v51 = a4;
  v59 = a3;
  v48 = sub_100089AE8();
  v52 = *(v48 - 8);
  v6 = *(v52 + 64);
  __chkstk_darwin(v48);
  v47 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100089CF8();
  v58 = *(v8 - 8);
  v9 = *(v58 + 64);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100008DC0(&qword_1000A64A0, &qword_10008D8A8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v46 - v14;
  v16 = sub_100008DC0(&qword_1000A64A8, &qword_10008D8B0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v46 - v21;
  v62 = a2;
  v23 = v61;
  result = sub_1000896D8();
  if (v23)
  {
    return result;
  }

  v50 = v15;
  v57 = v8;
  v61 = &v46;
  v25 = v63;
  __chkstk_darwin(result);
  *(&v46 - 2) = a2;
  *(&v46 - 1) = v25;
  sub_1000896D8();
  v60 = v25;
  v61 = a1;
  result = sub_100089A88();
  v26 = 0;
  v27 = *(result + 16);
  v29 = v57;
  v28 = v58;
  v49 = v58 + 16;
  v54 = (v58 + 32);
  v55 = (v58 + 8);
  v56 = result;
  for (i = v27; ; v27 = i)
  {
    v30 = v59;
    if (v26 == v27)
    {
      v31 = 1;
      v26 = v27;
      goto LABEL_8;
    }

    v32 = v50;
    if ((v26 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v26 >= *(result + 16))
    {
      goto LABEL_17;
    }

    v33 = result + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v26;
    v34 = *(v12 + 48);
    *v50 = v26;
    (*(v28 + 16))(&v32[v34], v33, v57);
    sub_10005BFBC();
    v31 = 0;
    ++v26;
    v29 = v57;
LABEL_8:
    sub_100009158(v20, v31, 1, v12);
    sub_10005BFBC();
    if (sub_100008E78(v22, 1, v12) == 1)
    {

      v38 = *(v30 + 16);
      v58 = v52 + 16;
      v39 = (v52 + 8);
      v40 = v30 + 48;
      v41 = v47;
      v42 = v48;
      while (v38)
      {
        if ((v51 & 0x8000000000000000) != 0)
        {
          goto LABEL_18;
        }

        if (*(*v40 + 16) <= v51)
        {
          goto LABEL_19;
        }

        v44 = *(v40 - 16);
        v43 = *(v40 - 8);
        v45 = (*(v52 + 16))(v41, *v40 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v51, v42);
        __chkstk_darwin(v45);
        *(&v46 - 4) = v60;
        *(&v46 - 3) = v44;
        *(&v46 - 2) = v43;
        *(&v46 - 1) = v41;

        sub_1000896D8();

        result = (*v39)(v41, v42);
        v40 += 24;
        --v38;
      }

      return result;
    }

    v35 = *v22;
    v36 = (*v54)(v11, &v22[*(v12 + 48)], v29);
    __chkstk_darwin(v36);
    v37 = v60;
    *(&v46 - 4) = v11;
    *(&v46 - 3) = v37;
    *(&v46 - 2) = v35;
    sub_1000896D8();
    (*v55)(v11, v29);
    v28 = v58;
    result = v56;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_10004E374@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v17 = a1;
  v16 = a2;
  v19 = sub_100089888();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100089828();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100089AB8();
  sub_100089AD8();
  sub_100089AA8();
  sub_100089A78();
  v11 = v18;
  v12 = sub_100089488();
  if (v11)
  {

    (*(v2 + 8))(v5, v19);
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    v14 = v12;

    (*(v2 + 8))(v5, v19);
    result = (*(v7 + 8))(v10, v6);
    *v16 = v14;
  }

  return result;
}

uint64_t sub_10004E590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v29 = a3;
  v4 = sub_1000899A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100089888();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100089A78();
  v14 = v4;
  v15 = sub_100089868();
  result = (*(v10 + 8))(v13, v9);
  v17 = 0;
  v19 = v15 + 56;
  v18 = *(v15 + 56);
  v30 = v15;
  v20 = 1 << *(v15 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v18;
  v23 = (v20 + 63) >> 6;
  v26 = v5 + 16;
  v27 = v5;
  v24 = (v5 + 8);
  if ((v21 & v18) != 0)
  {
    while (1)
    {
      v25 = v17;
LABEL_8:
      (*(v27 + 16))(v8, *(v30 + 48) + *(v27 + 72) * (__clz(__rbit64(v22)) | (v25 << 6)), v14);
      sub_100089568();
      if (v3)
      {
        break;
      }

      v22 &= v22 - 1;
      result = (*v24)(v8, v14);
      v17 = v25;
      if (!v22)
      {
        goto LABEL_5;
      }
    }

    (*v24)(v8, v14);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v25 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v25 >= v23)
      {
      }

      v22 = *(v19 + 8 * v25);
      ++v17;
      if (v22)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10004E81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a1;
  v35 = a4;
  v32 = a3;
  v4 = sub_100089C48();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v41 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100008DC0(&qword_1000A64B0, &qword_10008D8B8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v30 - v9;
  v11 = sub_100089888();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v40 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v30 - v16;
  v18 = sub_1000899A8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v39 = &v30 - v24;
  sub_100089CE8();
  v25 = sub_100089868();
  v26 = *(v12 + 8);
  v36 = v11;
  v33 = v12 + 8;
  v30 = v26;
  v26(v17, v11);
  sub_10006357C(v25, v10);

  if (sub_100008E78(v10, 1, v18) == 1)
  {
    sub_100017954(v10, &qword_1000A64B0, &qword_10008D8B8);
    result = sub_10008A9C8();
    __break(1u);
  }

  else
  {
    v27 = v39;
    (*(v19 + 32))(v39, v10, v18);
    sub_100089CB8();
    v28 = *(v19 + 16);
    v31 = v18;
    v28(v23, v27, v18);
    sub_10008A2D8();
    sub_100089CE8();
    sub_100089C68();
    sub_100089CD8();
    sub_100089538();

    (*(v37 + 8))(v41, v38);
    v30(v40, v36);
    return (*(v19 + 8))(v39, v31);
  }

  return result;
}

uint64_t sub_10004EC64(uint64_t a1, Swift::Int64 a2, uint64_t a3, void *a4, uint64_t a5)
{
  v39 = a1;
  v9 = sub_100089CF8();
  v41 = *(v9 - 8);
  v10 = *(v41 + 64);
  __chkstk_darwin(v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100089AC8();
  v15 = v14;
  v40 = a5;
  sub_100089A98();
  v30.value._countAndFlagsBits = v16;
  v37 = a2;
  v38 = a3;
  v43._countAndFlagsBits = a3;
  v36 = a4;
  v43._object = a4;
  v45._countAndFlagsBits = v13;
  v45._object = v15;
  v47.value._countAndFlagsBits = 0;
  v47.value._object = 0;
  v17 = v42;
  sub_100089598(a2, v43, v45, v47, v30);
  if (v17)
  {
  }

  else
  {
    v35 = v12;
    v42 = 0;

    result = sub_100089A88();
    v19 = 0;
    v20 = *(result + 16);
    v33 = result;
    v34 = v20;
    v21 = v41;
    v32[1] = v41 + 8;
    v32[2] = v41 + 16;
    while (1)
    {
      v22 = v35;
      if (v34 == v19)
      {
      }

      if (v19 >= *(result + 16))
      {
        break;
      }

      (*(v21 + 16))(v35, result + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v19, v9);
      v41 = sub_100089CB8();
      v24 = v23;
      v40 = sub_100089CC8();
      v26 = v25;
      sub_100089C58();
      v28 = v27;
      (*(v21 + 8))(v22, v9);
      v31.value._countAndFlagsBits = v28;
      v46._object = v36;
      v48._countAndFlagsBits = v40;
      v44._countAndFlagsBits = v41;
      v44._object = v24;
      v46._countAndFlagsBits = v38;
      v48._object = v26;
      v29 = v42;
      sub_100089618(v37, v44, v46, v48, v31);
      v42 = v29;
      if (v29)
      {
      }

      ++v19;

      result = v33;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10004EF08()
{
  sub_100088A08();
  sub_10008A2B8();

  v1 = *(v0 + *(type metadata accessor for ToolKitIndexer.LocaleWithUsage(0) + 20));
  sub_10008A268();
  sub_10008A2B8();
}

uint64_t sub_10004EF94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100088A08();
  v6 = v5;
  if (v4 == sub_100088A08() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_10008AA68();

    v10 = 0;
    if ((v9 & 1) == 0)
    {
      return v10 & 1;
    }
  }

  v11 = *(type metadata accessor for ToolKitIndexer.LocaleWithUsage(0) + 20);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  v14 = sub_10008A268();
  v16 = v15;
  if (v14 == sub_10008A268() && v16 == v17)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_10008AA68();
  }

  return v10 & 1;
}

Swift::Int sub_10004F0E8()
{
  sub_10008AB08();
  sub_100088A08();
  sub_10008A2B8();

  v1 = *(v0 + *(type metadata accessor for ToolKitIndexer.LocaleWithUsage(0) + 20));
  sub_10008A268();
  sub_10008A2B8();

  return sub_10008AB28();
}

Swift::Int sub_10004F180(uint64_t a1, uint64_t a2)
{
  sub_10008AB08();
  sub_100088A08();
  sub_10008A2B8();

  v4 = *(v2 + *(a2 + 20));
  sub_10008A268();
  sub_10008A2B8();

  return sub_10008AB28();
}

id sub_10004F2E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_10008A238();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithLanguageCode:v3];

  return v4;
}

id sub_10004F348(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  isa = sub_100088A18().super.isa;
  v9 = [v4 initWithLocale:isa stringLocalizer:a2 localizationUsage:a3];

  v10 = sub_100088A68();
  (*(*(v10 - 8) + 8))(a1, v10);
  return v9;
}

uint64_t sub_10004F3F4(void (*a1)(uint64_t))
{
  v2 = sub_100089158();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v5);
  sub_10005AE38(&qword_1000A6570, &type metadata accessor for ToolVisibilityFlag);
  v8 = sub_10008AA28();
  (*(v3 + 8))(v7, v2);
  return v8;
}

uint64_t sub_10004F51C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {
    if (*(v4 + 16) > a1)
    {
      v6 = *(v4 + 16);
    }

    return a2();
  }

  return result;
}

id *sub_10004F5AC(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100008DC0(&unk_1000A5A30, &unk_10008CA00);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

id *sub_10004F650(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100008DC0(a3, a4);
  v8 = sub_10006028C();
  v9 = a5(v8);
  sub_100017A0C(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = j__malloc_size(v14);
  if (v11)
  {
    if ((result - v13) != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10004F858(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_10004F878(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10004F89C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1000813A4();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v1;
  v8 = *(*v1 + 24);
  sub_100008DC0(&qword_1000A6480, &qword_10008D888);
  sub_10008A9A8(isUniquelyReferenced_nonNull_native, v8);
  v9 = *(v15 + 48);
  v10 = sub_1000899A8();
  (*(*(v10 - 8) + 8))(v9 + *(*(v10 - 8) + 72) * v5, v10);
  v11 = (*(v15 + 56) + 16 * v5);
  v12 = *v11;
  v13 = v11[1];
  sub_10005AE38(&qword_1000A6428, &type metadata accessor for TypeIdentifier);
  sub_10008A9B8();
  *v1 = v15;
  return v12;
}

uint64_t sub_10004F9E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_100081474(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v9 = *(*v2 + 24);
  sub_100008DC0(&qword_1000A6470, &qword_10008D880);
  sub_10008A9A8(isUniquelyReferenced_nonNull_native, v9);
  v10 = *(v16 + 48);
  v11 = type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0);
  sub_10005B2EC(v10 + *(*(v11 - 8) + 72) * v6, type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey);
  v12 = (*(v16 + 56) + 16 * v6);
  v13 = *v12;
  v14 = v12[1];
  sub_10005AE38(&qword_1000A6478, type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey);
  sub_10008A9B8();
  *v2 = v16;
  return v13;
}

uint64_t sub_10004FB24(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100081308(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v11;
  v17 = v12;
  sub_100008DC0(&qword_1000A6488, &qword_10008D890);
  result = sub_10008A9A8(a4 & 1, v15);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = *v5;
  result = sub_100081308(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_11:
    result = sub_10008AAA8();
    __break(1u);
    return result;
  }

  v16 = result;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v16) = a1;
  }

  else
  {
    sub_10004FFC4(v16, a2, a3, a1, v21);
  }

  return result;
}

uint64_t sub_10004FC4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = a2;
  v9 = sub_1000899A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v15 = sub_1000813A4();
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_11;
  }

  v20 = v15;
  v21 = v16;
  sub_100008DC0(&qword_1000A6480, &qword_10008D888);
  if (!sub_10008A9A8(a4 & 1, v19))
  {
    goto LABEL_5;
  }

  v22 = *v5;
  v23 = sub_1000813A4();
  if ((v21 & 1) != (v24 & 1))
  {
LABEL_11:
    result = sub_10008AAA8();
    __break(1u);
    return result;
  }

  v20 = v23;
LABEL_5:
  v25 = *v5;
  if (v21)
  {
    v26 = (v25[7] + 16 * v20);
    v27 = v26[1];
    v28 = v31;
    *v26 = a1;
    v26[1] = v28;
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return sub_10005000C(v20, v13, a1, v31, v25);
  }
}

uint64_t sub_10004FE20(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v15 = sub_100081474(a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_11;
  }

  v20 = v15;
  v21 = v16;
  sub_100008DC0(&qword_1000A6470, &qword_10008D880);
  if (!sub_10008A9A8(a4 & 1, v19))
  {
    goto LABEL_5;
  }

  v22 = *v5;
  v23 = sub_100081474(a3);
  if ((v21 & 1) != (v24 & 1))
  {
LABEL_11:
    result = sub_10008AAA8();
    __break(1u);
    return result;
  }

  v20 = v23;
LABEL_5:
  v25 = *v5;
  if (v21)
  {
    v26 = (v25[7] + 16 * v20);
    v27 = v26[1];
    *v26 = a1;
    v26[1] = a2;
  }

  else
  {
    sub_10005B654(a3, v13);
    return sub_1000500CC(v20, v13, a1, a2, v25);
  }
}

unint64_t sub_10004FFC4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_10005000C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1000899A8();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_1000500CC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0);
  result = sub_10005B6A8(a2, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_100050188(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10008D640;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1000501EC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_100050BE8(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_100050318(uint64_t a1)
{
  v3 = sub_100008DC0(&qword_1000A6518, &qword_10008D908);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v20 - v5;
  v7 = sub_100089A08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    for (i = 0; v15; result = sub_100017954(v6, &qword_1000A6518, &qword_10008D908))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      sub_100050D10(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_100050534(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100008DC0(&qword_1000A5EC8, &unk_10008D488);
    v2 = sub_10008A8E8();
    v14 = v2;
    sub_10008A878();
    while (1)
    {
      if (!sub_10008A8A8())
      {

        return v2;
      }

      sub_100011D84(0, &qword_1000A5EA8, WFAction_ptr);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_100051204();
      }

      v2 = v14;
      result = sub_10008A758(*(v14 + 40));
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void *sub_100050710(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a2[2])
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v48 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;

    v15 = 0;
    v50 = v12;
    v51 = v7;
    v52 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        v20 = v5[5];
        sub_10008AB08();

        sub_10008A2B8();
        v21 = sub_10008AB28();
        v22 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v21 & v22;
          v4 = (v21 & v22) >> 6;
          v8 = 1 << (v21 & v22);
          if ((v8 & v13[v4]) == 0)
          {
            break;
          }

          v23 = (v5[6] + 16 * v7);
          v24 = *v23 == v3 && v23[1] == v2;
          if (v24 || (sub_10008AA68() & 1) != 0)
          {
            v54 = v48;
            v55 = v16;
            v56 = v11;
            v3 = v51;
            v12 = v52;
            v53[0] = v52;
            v53[1] = v51;

            v25 = *(v5 + 32);
            v45 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v45;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v46 = &v44;
              __chkstk_darwin();
              v7 = &v44 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, v5 + 7, v2);
              v26 = *(v7 + 8 * v4) & ~v8;
              v27 = v5[2];
              v49 = v7;
              *(v7 + 8 * v4) = v26;
              v28 = v27 - 1;
              v29 = v50;
              while (1)
              {
                v47 = v28;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v31 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v32 = (*(v12 + 48) + ((v16 << 10) | (16 * v31)));
                v2 = *v32;
                v33 = v32[1];
                v34 = v5[5];
                sub_10008AB08();

                sub_10008A2B8();
                v35 = sub_10008AB28();
                v36 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v35 & v36;
                  v7 = (v35 & v36) >> 6;
                  v8 = 1 << (v35 & v36);
                  if ((v8 & v13[v7]) == 0)
                  {

                    v3 = v51;
                    v12 = v52;
                    v29 = v50;
                    goto LABEL_24;
                  }

                  v37 = (v5[6] + 16 * v4);
                  if (*v37 == v2 && v37[1] == v33)
                  {
                    break;
                  }

                  v39 = sub_10008AA68();
                  v35 = v4 + 1;
                }

                while ((v39 & 1) == 0);

                v40 = v49[v7];
                v49[v7] = v40 & ~v8;
                v3 = v51;
                v12 = v52;
                v29 = v50;
                if ((v40 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v28 = v47 - 1;
                if (__OFSUB__(v47, 1))
                {
                  __break(1u);
                }

                if (v47 == 1)
                {

                  v5 = &_swiftEmptySetSingleton;
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v30 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v30 >= v29)
                {
                  v5 = sub_100010B3C(v49, v45, v47, v5);
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v30);
                ++v16;
                if (v11)
                {
                  v16 = v30;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v42 = swift_slowAlloc();
            v43 = sub_1000529FC(v42, v45, v5 + 7, v45, v5, v7, v53);

            v48 = v54;
            v5 = v43;
            goto LABEL_44;
          }

          v21 = v7 + 1;
        }

        v15 = v16;
        v7 = v51;
        v14 = v52;
        v12 = v50;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_100011E9C();
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v5;
}

uint64_t sub_100050BE8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_10008AB08();
  sub_10008A2B8();
  v7 = sub_10008AB28();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_10008AA68() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100052A84();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_10005482C(v9);
  *v2 = v19;
  return v16;
}

uint64_t sub_100050D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_100089A08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_10005AE38(&qword_1000A6610, &type metadata accessor for RuntimePlatform);
  v28 = a1;
  v11 = sub_10008A208();
  v27 = v9;
  v12 = ~(-1 << *(v9 + 32));
  while (1)
  {
    v13 = v11 & v12;
    if (((*(v9 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {
      v16 = 1;
      v17 = v26;
      return sub_100009158(v17, v16, 1, v4);
    }

    v14 = *(v5 + 72) * v13;
    (*(v5 + 16))(v8, *(v27 + 48) + v14, v4);
    sub_10005AE38(&qword_1000A6618, &type metadata accessor for RuntimePlatform);
    v15 = sub_10008A228();
    (*(v5 + 8))(v8, v4);
    if (v15)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18 = v25;
  v19 = *v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v18;
  v29 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100052F40();
    v21 = v29;
  }

  v22 = *(v21 + 48) + v14;
  v17 = v26;
  (*(v5 + 32))(v26, v22, v4);
  sub_1000549E4(v13);
  v16 = 0;
  *v18 = v29;
  return sub_100009158(v17, v16, 1, v4);
}

uint64_t sub_100050FA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100008DC0(&unk_1000A6440, &qword_10008D4A0);
  result = sub_10008A8D8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_100050188(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_10008AB08();
    sub_10008A2B8();
    result = sub_10008AB28();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_100051204()
{
  sub_1000611A4();
  v1 = v0;
  v2 = *v0;
  if (*(*v0 + 24) > v3)
  {
    v4 = *(*v0 + 24);
  }

  sub_100008DC0(&qword_1000A5EC8, &unk_10008D488);
  sub_10005E428();
  v5 = sub_10008A8D8();
  v6 = v5;
  if (!*(v2 + 16))
  {
LABEL_29:

    *v1 = v6;
    sub_10006110C();
    return;
  }

  v7 = 0;
  v8 = (v2 + 56);
  v9 = 1 << *(v2 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v2 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = v5 + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      ++v15;
      if (v8[v7])
      {
        sub_10005D470();
        v11 = v17 & v16;
        goto LABEL_14;
      }
    }

    if (1 << *(v2 + 32) >= 64)
    {
      v29 = sub_10005F65C();
      sub_100050188(v29, v30, v31);
    }

    else
    {
      sub_10005EB04();
      *v8 = v28;
    }

    *(v2 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v18 = *(*(v2 + 48) + 8 * (v14 | (v7 << 6)));
    v19 = sub_10008A758(*(v6 + 40));
    v20 = -1 << *(v6 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v6 + 48) + 8 * v23) = v18;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v13 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_100051404(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100008DC0(&unk_1000A66E0, &unk_10008D9E0);
  result = sub_10008A8D8();
  v11 = result;
  if (!*(v8 + 16))
  {
LABEL_29:

    *v2 = v11;
    return result;
  }

  v34 = v2;
  v12 = 0;
  v13 = (v8 + 56);
  v14 = 1 << *(v8 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v8 + 56);
  v17 = (v14 + 63) >> 6;
  v18 = result + 56;
  if (!v16)
  {
LABEL_9:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v8 + 32);
    if (v33 >= 64)
    {
      sub_100050188(0, (v33 + 63) >> 6, v8 + 56);
    }

    else
    {
      *v13 = -1 << v33;
    }

    v2 = v34;
    *(v8 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_14:
    v22 = *(v35 + 72);
    sub_10005B6A8(*(v8 + 48) + v22 * (v19 | (v12 << 6)), v7);
    v23 = *(v11 + 40);
    sub_10008AB08();
    sub_100088A08();
    sub_10008A2B8();

    v24 = *&v7[*(v36 + 20)];
    sub_10008A268();
    sub_10008A2B8();

    result = sub_10008AB28();
    v25 = -1 << *(v11 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v18 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = sub_10005B6A8(v7, *(v11 + 48) + v28 * v22);
    ++*(v11 + 16);
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v18 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100051758(uint64_t a1)
{
  v2 = v1;
  v41 = sub_100089A08();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100008DC0(&unk_1000A6620, &qword_10008D978);
  result = sub_10008A8D8();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_100050188(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_10005AE38(&qword_1000A6610, &type metadata accessor for RuntimePlatform);
    result = sub_10008A208();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100051AB0(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1000897A8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100008DC0(&qword_1000A6648, &qword_10008D990);
  result = sub_10008A8D8();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_100050188(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_10005AE38(&qword_1000A6638, &type metadata accessor for TypedValue);
    result = sub_10008A208();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100051E08(uint64_t a1)
{
  v2 = v1;
  v41 = sub_100089888();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100008DC0(&unk_1000A6670, &qword_10008D9A8);
  result = sub_10008A8D8();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_100050188(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_10005AE38(&qword_1000A6660, &type metadata accessor for TypeInstance);
    result = sub_10008A208();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100052160(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1000899A8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100008DC0(&qword_1000A6680, &qword_10008D9B0);
  result = sub_10008A8D8();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_100050188(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_10005AE38(&qword_1000A6428, &type metadata accessor for TypeIdentifier);
    result = sub_10008A208();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000524B8(uint64_t a1)
{
  v2 = v1;
  v41 = sub_100089918();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100008DC0(&qword_1000A6698, &qword_10008D9B8);
  result = sub_10008A8D8();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_100050188(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_10005AE38(&qword_1000A6688, &type metadata accessor for TypeDefinition);
    result = sub_10008A208();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t *sub_100052810(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v27 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    v16 = *(a3 + 40);
    sub_10008AB08();

    sub_10008A2B8();
    v17 = sub_10008AB28();
    v18 = ~(-1 << *(a3 + 32));
    do
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v9 + 8 * v20)) == 0)
      {

        goto LABEL_3;
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 == v15 && v22[1] == v14)
      {
        break;
      }

      v24 = sub_10008AA68();
      v17 = v19 + 1;
    }

    while ((v24 & 1) == 0);

    v25 = v28[v20];
    v28[v20] = v25 & ~v21;
    if ((v25 & v21) == 0)
    {
      goto LABEL_3;
    }

    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_23;
    }

    if (v27 == 1)
    {
      return &_swiftEmptySetSingleton;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_100010B3C(v28, a2, v27, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t *sub_1000529FC(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_100052810(a1, a2, a5, a6, a7);

  return v12;
}

void *sub_100052A84()
{
  v1 = v0;
  sub_100008DC0(&unk_1000A6440, &qword_10008D4A0);
  v2 = *v0;
  v3 = sub_10008A8C8();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

id sub_100052BDC()
{
  v1 = v0;
  sub_100008DC0(&qword_1000A5EC8, &unk_10008D488);
  v2 = *v0;
  v3 = sub_10008A8C8();
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

void *sub_100052D2C()
{
  v1 = v0;
  v2 = type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008DC0(&unk_1000A66E0, &unk_10008D9E0);
  v7 = *v0;
  v8 = sub_10008A8C8();
  v9 = v8;
  if (*(v7 + 16))
  {
    v24 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_10005B654(*(v7 + 48) + v22, v6);
        result = sub_10005B6A8(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v21 = *(v7 + 56 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

void sub_100052F40()
{
  sub_1000611A4();
  v1 = v0;
  v3 = v2(0);
  sub_100012368(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1000602BC();
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = sub_10005EC4C();
  sub_100008DC0(v11, v12);
  v13 = *v0;
  v14 = sub_10008A8C8();
  v15 = v14;
  if (*(v13 + 16))
  {
    v30 = v1;
    v16 = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || v16 >= v13 + 56 + 8 * v17)
    {
      memmove(v16, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v13 + 56);
    v23 = (v20 + 63) >> 6;
    v31 = v5 + 32;
    v32 = v5 + 16;
    while (v22)
    {
      v24 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v28 = *(v5 + 72) * (v24 | (v19 << 6));
      (*(v5 + 16))(v10, *(v13 + 48) + v28, v3);
      (*(v5 + 32))(*(v15 + 48) + v28, v10, v3);
    }

    v25 = v19;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v19 >= v23)
      {

        v1 = v30;
        goto LABEL_21;
      }

      ++v25;
      if (*(v13 + 56 + 8 * v19))
      {
        sub_10005D470();
        v22 = v27 & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v15;
    sub_10006110C();
  }
}

uint64_t sub_10005314C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100008DC0(&unk_1000A6440, &qword_10008D4A0);
  result = sub_10008A8D8();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_10008AB08();

        sub_10008A2B8();
        result = sub_10008AB28();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100053380(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100008DC0(&qword_1000A5EC8, &unk_10008D488);
  result = sub_10008A8D8();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(v6 + 40);
        v17 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        result = sub_10008A758(v16);
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100053590(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100008DC0(&unk_1000A66E0, &unk_10008D9E0);
  result = sub_10008A8D8();
  v11 = result;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    if (v15)
    {
      while (1)
      {
        v18 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v21 = *(v33 + 72);
        sub_10005B654(*(v8 + 48) + v21 * (v18 | (v12 << 6)), v7);
        v22 = *(v11 + 40);
        sub_10008AB08();
        sub_100088A08();
        sub_10008A2B8();

        v23 = *&v7[*(v34 + 20)];
        sub_10008A268();
        sub_10008A2B8();

        result = sub_10008AB28();
        v24 = -1 << *(v11 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v17 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        result = sub_10005B6A8(v7, *(v11 + 48) + v27 * v21);
        ++*(v11 + 16);
        if (!v15)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v17 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v19 = v12;
      while (1)
      {
        v12 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v12 >= v16)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v20 = *(v8 + 56 + 8 * v12);
        ++v19;
        if (v20)
        {
          v18 = __clz(__rbit64(v20));
          v15 = (v20 - 1) & v20;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1000538B4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_100089A08();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100008DC0(&unk_1000A6620, &qword_10008D978);
  v10 = sub_10008A8D8();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_10005AE38(&qword_1000A6610, &type metadata accessor for RuntimePlatform);
        result = sub_10008A208();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_100053BCC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1000897A8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100008DC0(&qword_1000A6648, &qword_10008D990);
  v10 = sub_10008A8D8();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_10005AE38(&qword_1000A6638, &type metadata accessor for TypedValue);
        result = sub_10008A208();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_100053EE4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_100089888();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100008DC0(&unk_1000A6670, &qword_10008D9A8);
  v10 = sub_10008A8D8();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_10005AE38(&qword_1000A6660, &type metadata accessor for TypeInstance);
        result = sub_10008A208();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1000541FC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1000899A8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100008DC0(&qword_1000A6680, &qword_10008D9B0);
  v10 = sub_10008A8D8();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_10005AE38(&qword_1000A6428, &type metadata accessor for TypeIdentifier);
        result = sub_10008A208();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_100054514(uint64_t a1)
{
  v2 = v1;
  v37 = sub_100089918();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100008DC0(&qword_1000A6698, &qword_10008D9B8);
  v10 = sub_10008A8D8();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_10005AE38(&qword_1000A6688, &type metadata accessor for TypeDefinition);
        result = sub_10008A208();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

unint64_t sub_10005482C(unint64_t result)
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

    v9 = sub_10008A858();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_10008AB08();

        sub_10008A2B8();
        v15 = sub_10008AB28();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

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

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1000549E4(int64_t a1)
{
  v3 = sub_100089A08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v3);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_10008A858();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v40 = (v15 + 1) & v13;
      v17 = *(v4 + 16);
      v16 = v4 + 16;
      v39 = v17;
      v18 = *(v16 + 56);
      v41 = v16;
      v42 = v18;
      v19 = v13;
      v20 = (v16 - 8);
      v21 = v9;
      while (1)
      {
        v22 = v10;
        v23 = v42 * v12;
        v24 = v19;
        v39(v8, *(v21 + 48) + v42 * v12, v3);
        v25 = v21;
        v26 = *(v21 + 40);
        sub_10005AE38(&qword_1000A6610, &type metadata accessor for RuntimePlatform);
        v27 = sub_10008A208();
        (*v20)(v8, v3);
        v19 = v24;
        v28 = v27 & v24;
        if (a1 >= v40)
        {
          if (v28 < v40 || a1 < v28)
          {
LABEL_20:
            v21 = v25;
            goto LABEL_24;
          }
        }

        else if (v28 < v40 && a1 < v28)
        {
          goto LABEL_20;
        }

        v21 = v25;
        v30 = *(v25 + 48);
        v31 = v42 * a1;
        v32 = v30 + v42 * a1;
        v33 = v30 + v23 + v42;
        if (v42 * a1 < v23 || v32 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v19 = v24;
          a1 = v12;
          goto LABEL_24;
        }

        a1 = v12;
        if (v31 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v12 = (v12 + 1) & v19;
        v10 = v22;
        if (((*(v22 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v21 = v9;
LABEL_28:
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v21 = v9;
  }

  v36 = *(v21 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v38;
    ++*(v21 + 36);
  }

  return result;
}

BOOL sub_100054CF0(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_10008AB08();
  sub_10008A2B8();
  v9 = sub_10008AB28();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_10008AA68() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_100056B28(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_100054E3C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    sub_10005F0DC();
    v9 = sub_10008A898();

    if (v9)
    {

      sub_100011D84(0, &qword_1000A5EA8, WFAction_ptr);
      sub_10005ED24();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
    }

    else
    {
      result = sub_10008A888();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v18 = sub_100050534(v7, result + 1);
        if (*(v18 + 24) <= *(v18 + 16))
        {
          sub_100051204();
        }

        v19 = v8;
        sub_100010AB8(v19, v18);

        *v3 = v18;
LABEL_16:
        *a1 = v19;
        return 1;
      }
    }
  }

  else
  {
    sub_100011D84(0, &qword_1000A5EA8, WFAction_ptr);
    sub_10008A758(*(v6 + 40));
    v11 = *(v6 + 32);
    sub_10005EB04();
    v14 = ~v13;
    while (1)
    {
      v15 = v12 & v14;
      if (((*(v6 + 56 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v14)) & 1) == 0)
      {
        v20 = *v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = *v3;
        v19 = a2;
        sub_100056C90(v19, v15, isUniquelyReferenced_nonNull_native);
        *v3 = v25;
        goto LABEL_16;
      }

      v16 = *(*(v6 + 48) + 8 * v15);
      v17 = sub_10008A768();

      if (v17)
      {
        break;
      }

      v12 = v15 + 1;
    }

    v22 = *(*(v6 + 48) + 8 * v15);
    *a1 = v22;
    v23 = v22;
    return 0;
  }

  return result;
}

uint64_t sub_100055054(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v4 = type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v38 = &v37 - v10;
  v39 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10008AB08();
  sub_100088A08();
  sub_10008A2B8();

  v42 = v4;
  v43 = a2;
  v41 = *(a2 + *(v4 + 20));
  sub_10008A268();
  sub_10008A2B8();

  v13 = sub_10008AB28();
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_16:
    v31 = v39;
    v32 = *v39;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v43;
    v35 = v38;
    sub_10005B654(v43, v38);
    v44 = *v31;
    sub_100056DF4(v35, v15, isUniquelyReferenced_nonNull_native);
    *v31 = v44;
    sub_10005B6A8(v34, v40);
    return 1;
  }

  v16 = ~v14;
  v17 = *(v5 + 72);
  while (1)
  {
    sub_10005B654(*(v11 + 48) + v17 * v15, v9);
    v18 = sub_100088A08();
    v20 = v19;
    if (v18 == sub_100088A08() && v20 == v21)
    {
    }

    else
    {
      v23 = sub_10008AA68();

      if ((v23 & 1) == 0)
      {
        sub_10005B2EC(v9, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
        goto LABEL_15;
      }
    }

    v24 = *&v9[*(v42 + 20)];
    v25 = sub_10008A268();
    v27 = v26;
    if (v25 == sub_10008A268() && v27 == v28)
    {
      break;
    }

    v30 = sub_10008AA68();

    sub_10005B2EC(v9, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
    if (v30)
    {
      goto LABEL_18;
    }

LABEL_15:
    v15 = (v15 + 1) & v16;
    if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  sub_10005B2EC(v9, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
LABEL_18:
  sub_10005B2EC(v43, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
  sub_10005B654(*(v11 + 48) + v17 * v15, v40);
  return 0;
}

BOOL sub_100055410(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_100089A08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_10005AE38(&qword_1000A6610, &type metadata accessor for RuntimePlatform);
  v30 = a2;
  v11 = sub_10008A208();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_100057180(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_10005AE38(&qword_1000A6618, &type metadata accessor for RuntimePlatform);
    v17 = sub_10008A228();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

BOOL sub_1000556D8(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_1000897A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_10005AE38(&qword_1000A6638, &type metadata accessor for TypedValue);
  v30 = a2;
  v11 = sub_10008A208();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_100057430(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_10005AE38(&qword_1000A6640, &type metadata accessor for TypedValue);
    v17 = sub_10008A228();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

BOOL sub_1000559A0(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_100089888();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_10005AE38(&qword_1000A6660, &type metadata accessor for TypeInstance);
  v30 = a2;
  v11 = sub_10008A208();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_1000576E0(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_10005AE38(&qword_1000A6668, &type metadata accessor for TypeInstance);
    v17 = sub_10008A228();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

BOOL sub_100055C68(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_1000899A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_10005AE38(&qword_1000A6428, &type metadata accessor for TypeIdentifier);
  v30 = a2;
  v11 = sub_10008A208();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_100057990(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_10005AE38(&qword_1000A6C80, &type metadata accessor for TypeIdentifier);
    v17 = sub_10008A228();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

BOOL sub_100055F30(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_100089918();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_10005AE38(&qword_1000A6688, &type metadata accessor for TypeDefinition);
  v30 = a2;
  v11 = sub_10008A208();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_100057C40(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_10005AE38(&qword_1000A6690, &type metadata accessor for TypeDefinition);
    v17 = sub_10008A228();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

void sub_1000561F8(unint64_t a1)
{
  v1 = a1;
  if (sub_10001BEBC(a1))
  {
    sub_100008DC0(&qword_1000A5EC8, &unk_10008D488);
    sub_10005E028();
    v2 = sub_10008A8F8();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v23 = sub_10008391C(v1);
  if (v23)
  {
    v3 = 0;
    v4 = (v2 + 7);
    v21 = v1;
    v22 = v1 & 0xC000000000000001;
    v20 = v1 + 32;
    while (1)
    {
      sub_10004F878(v3, v22 == 0, v1);
      if (v22)
      {
        sub_10005E810();
        v5 = sub_10008A928();
      }

      else
      {
        v5 = *(v20 + 8 * v3);
      }

      v6 = v5;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      sub_10008A758(v2[5]);
      v8 = *(v2 + 32);
      sub_10005EB04();
      v11 = ~v10;
      while (1)
      {
        v12 = v9 & v11;
        v13 = (v9 & v11) >> 6;
        v14 = *&v4[8 * v13];
        v15 = 1 << (v9 & v11);
        if ((v15 & v14) == 0)
        {
          break;
        }

        sub_100011D84(0, &qword_1000A5EA8, WFAction_ptr);
        v16 = *(v2[6] + 8 * v12);
        v17 = sub_10008A768();

        if (v17)
        {

          goto LABEL_17;
        }

        v9 = v12 + 1;
      }

      *&v4[8 * v13] = v15 | v14;
      *(v2[6] + 8 * v12) = v6;
      v18 = v2[2];
      v7 = __OFADD__(v18, 1);
      v19 = v18 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      v2[2] = v19;
LABEL_17:
      v1 = v21;
      if (v3 == v23)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_1000563B0(uint64_t a1)
{
  v43 = type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  v41 = *(v43 - 8);
  v2 = *(v41 + 64);
  v3 = __chkstk_darwin(v43);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v38 - v6;
  if (!*(a1 + 16))
  {
    v9 = &_swiftEmptySetSingleton;
    goto LABEL_28;
  }

  sub_100008DC0(&unk_1000A66E0, &unk_10008D9E0);
  result = sub_10008A8F8();
  v9 = result;
  v40 = *(a1 + 16);
  if (!v40)
  {
    goto LABEL_28;
  }

  v10 = 0;
  v44 = result + 56;
  v11 = *(v41 + 80);
  v38 = a1;
  v39 = a1 + ((v11 + 32) & ~v11);
  while (1)
  {
    if (v10 >= *(a1 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    v12 = *(v41 + 72);
    sub_10005B654(v39 + v12 * v10, v7);
    v13 = v9[5];
    sub_10008AB08();
    sub_100088A08();
    sub_10008A2B8();

    v14 = *&v7[*(v43 + 20)];
    sub_10008A268();
    sub_10008A2B8();

    v15 = sub_10008AB28();
    v16 = -1 << *(v9 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    v19 = *(v44 + 8 * (v17 >> 6));
    v20 = 1 << v17;
    if (((1 << v17) & v19) == 0)
    {
      break;
    }

    v42 = v10;
    v21 = ~v16;
    while (1)
    {
      sub_10005B654(v9[6] + v17 * v12, v5);
      v22 = sub_100088A08();
      v24 = v23;
      if (v22 == sub_100088A08() && v24 == v25)
      {
      }

      else
      {
        v27 = sub_10008AA68();

        if ((v27 & 1) == 0)
        {
          sub_10005B2EC(v5, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
          goto LABEL_19;
        }
      }

      v28 = *&v5[*(v43 + 20)];
      v29 = sub_10008A268();
      v31 = v30;
      if (v29 == sub_10008A268() && v31 == v32)
      {
        break;
      }

      v34 = sub_10008AA68();

      sub_10005B2EC(v5, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
      if (v34)
      {
        goto LABEL_24;
      }

LABEL_19:
      v17 = (v17 + 1) & v21;
      v18 = v17 >> 6;
      v19 = *(v44 + 8 * (v17 >> 6));
      v20 = 1 << v17;
      if ((v19 & (1 << v17)) == 0)
      {
        a1 = v38;
        v10 = v42;
        goto LABEL_21;
      }
    }

    sub_10005B2EC(v5, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
LABEL_24:
    result = sub_10005B2EC(v7, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
    a1 = v38;
    v10 = v42;
LABEL_25:
    if (++v10 == v40)
    {
LABEL_28:

      return v9;
    }
  }

LABEL_21:
  *(v44 + 8 * v18) = v19 | v20;
  result = sub_10005B6A8(v7, v9[6] + v17 * v12);
  v35 = v9[2];
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (!v36)
  {
    v9[2] = v37;
    goto LABEL_25;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1000567E4(uint64_t a1)
{
  v2 = sub_100089A08();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v38 = &v29 - v7;
  if (!*(a1 + 16))
  {
    v9 = &_swiftEmptySetSingleton;
    goto LABEL_15;
  }

  sub_100008DC0(&unk_1000A6620, &qword_10008D978);
  result = sub_10008A8F8();
  v9 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v9;
  }

  v10 = 0;
  v37 = result + 56;
  v11 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v11 + 32) & ~v11);
  v36 = v34 + 16;
  v12 = (v34 + 8);
  v30 = (v34 + 32);
  while (v10 < *(a1 + 16))
  {
    v13 = *(v34 + 72);
    v35 = v10 + 1;
    v14 = *(v34 + 16);
    v14(v38, v32 + v13 * v10, v2);
    v15 = v9[5];
    sub_10005AE38(&qword_1000A6610, &type metadata accessor for RuntimePlatform);
    v16 = sub_10008A208();
    v17 = ~(-1 << *(v9 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v37 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v9;
      v14(v6, v9[6] + v18 * v13, v2);
      sub_10005AE38(&qword_1000A6618, &type metadata accessor for RuntimePlatform);
      v23 = sub_10008A228();
      v24 = *v12;
      (*v12)(v6, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v9 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v9 = v22;
    }

    v25 = v38;
    *(v37 + 8 * v19) = v21 | v20;
    result = (*v30)(v9[6] + v18 * v13, v25, v2);
    v26 = v9[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    v9[2] = v28;
LABEL_12:
    v10 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

Swift::Int sub_100056B28(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_100050FA8(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_10005314C(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_10008AB08();
      sub_10008A2B8();
      result = sub_10008AB28();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_10008AA68() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_100052A84();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_10008AA98();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

Swift::Int sub_100056C90(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100051204();
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_100053380(v6 + 1);
LABEL_8:
      v8 = *v3;
      result = sub_10008A758(*(*v3 + 40));
      v9 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v9;
        if (((*(v8 + 56 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_100011D84(0, &qword_1000A5EA8, WFAction_ptr);
        v10 = *(*(v8 + 48) + 8 * a2);
        v11 = sub_10008A768();

        if (v11)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_100052BDC();
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    result = sub_10008AA98();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
  }

  return result;
}

uint64_t sub_100056DF4(uint64_t a1, unint64_t a2, char a3)
{
  v41 = type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  v7 = *(v41 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v41);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v38 = v7;
  v39 = v3;
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100051404(v11 + 1);
    }

    else
    {
      if (v12 > v11)
      {
        sub_100052D2C();
        goto LABEL_23;
      }

      sub_100053590(v11 + 1);
    }

    v13 = *v3;
    v14 = *(*v3 + 40);
    sub_10008AB08();
    sub_100088A08();
    sub_10008A2B8();

    v40 = *(a1 + *(v41 + 20));
    sub_10008A268();
    sub_10008A2B8();

    v15 = sub_10008AB28();
    v16 = -1 << *(v13 + 32);
    a2 = v15 & ~v16;
    if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v17 = ~v16;
      v18 = *(v7 + 72);
      do
      {
        sub_10005B654(*(v13 + 48) + v18 * a2, v10);
        v19 = sub_100088A08();
        v21 = v20;
        if (v19 == sub_100088A08() && v21 == v22)
        {
        }

        else
        {
          v24 = sub_10008AA68();

          if ((v24 & 1) == 0)
          {
            sub_10005B2EC(v10, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
            goto LABEL_22;
          }
        }

        v25 = *&v10[*(v41 + 20)];
        v26 = sub_10008A268();
        v28 = v27;
        if (v26 == sub_10008A268() && v28 == v29)
        {
          goto LABEL_26;
        }

        v31 = sub_10008AA68();

        sub_10005B2EC(v10, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
        if (v31)
        {
          goto LABEL_27;
        }

LABEL_22:
        a2 = (a2 + 1) & v17;
      }

      while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_23:
  v32 = *v39;
  *(*v39 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_10005B6A8(a1, *(v32 + 48) + *(v38 + 72) * a2);
  v34 = *(v32 + 16);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (v35)
  {
    __break(1u);
LABEL_26:

    sub_10005B2EC(v10, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
LABEL_27:
    result = sub_10008AA98();
    __break(1u);
  }

  else
  {
    *(v32 + 16) = v36;
  }

  return result;
}

uint64_t sub_100057180(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_100089A08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100051758(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1000538B4(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_10005AE38(&qword_1000A6610, &type metadata accessor for RuntimePlatform);
      v15 = sub_10008A208();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_10005AE38(&qword_1000A6618, &type metadata accessor for RuntimePlatform);
        v17 = sub_10008A228();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_100052F40();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_10008AA98();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_100057430(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1000897A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100051AB0(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_100053BCC(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_10005AE38(&qword_1000A6638, &type metadata accessor for TypedValue);
      v15 = sub_10008A208();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_10005AE38(&qword_1000A6640, &type metadata accessor for TypedValue);
        v17 = sub_10008A228();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_100052F40();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_10008AA98();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_1000576E0(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_100089888();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100051E08(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_100053EE4(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_10005AE38(&qword_1000A6660, &type metadata accessor for TypeInstance);
      v15 = sub_10008A208();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_10005AE38(&qword_1000A6668, &type metadata accessor for TypeInstance);
        v17 = sub_10008A228();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_100052F40();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_10008AA98();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_100057990(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1000899A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100052160(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1000541FC(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_10005AE38(&qword_1000A6428, &type metadata accessor for TypeIdentifier);
      v15 = sub_10008A208();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_10005AE38(&qword_1000A6C80, &type metadata accessor for TypeIdentifier);
        v17 = sub_10008A228();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_100052F40();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_10008AA98();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_100057C40(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_100089918();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000524B8(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_100054514(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_10005AE38(&qword_1000A6688, &type metadata accessor for TypeDefinition);
      v15 = sub_10008A208();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_10005AE38(&qword_1000A6690, &type metadata accessor for TypeDefinition);
        v17 = sub_10008A228();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_100052F40();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_10008AA98();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_100057EF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

Swift::Int sub_100057F68(uint64_t *a1)
{
  v2 = *(type metadata accessor for ToolKitIndexer.LocaleWithUsage(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10005BE70(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_100058130(v7, type metadata accessor for ToolKitIndexer.LocaleWithUsage, sub_1000587F8, sub_10005827C);
  *a1 = v3;
  return result;
}

Swift::Int sub_10005804C(uint64_t *a1)
{
  v2 = *(sub_100089A08() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10005BE84(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_100058130(v7, &type metadata accessor for RuntimePlatform, sub_100059128, sub_1000584D8);
  *a1 = v3;
  return result;
}

Swift::Int sub_100058130(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_10008AA18(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = _swiftEmptyArrayStorage;
      }

      else
      {
        a2(0);
        v12 = sub_10008A358();
        v12[2] = v11;
      }

      v13 = (a2)(0);
      sub_10005E3B0(v13);
      v15 = *(v14 + 80);
      sub_10005D9C4();
      v17[0] = v12 + v16;
      v17[1] = v11;
      a3(v17, v18, a1, v10);
      v12[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_10005827C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v40 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v31 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v31 - v17;
  v33 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v38 = -v20;
    v39 = v19;
    v22 = a1 - a3;
    v32 = v20;
    v23 = v19 + v20 * a3;
    while (2)
    {
      v36 = v21;
      v37 = a3;
      v34 = v23;
      v35 = v22;
      do
      {
        sub_10005B654(v23, v18);
        sub_10005B654(v21, v14);
        v24 = *(v8 + 24);
        v25 = v8;
        v26 = *&v18[v24];
        v27 = *&v14[v24];
        sub_10005B2EC(v14, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
        result = sub_10005B2EC(v18, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
        v28 = v26 < v27;
        v8 = v25;
        if (!v28)
        {
          break;
        }

        if (!v39)
        {
          __break(1u);
          return result;
        }

        v29 = v40;
        sub_10005B6A8(v23, v40);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_10005B6A8(v29, v21);
        v21 += v38;
        v23 += v38;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v37 + 1;
      v21 = v36 + v32;
      v22 = v35 - 1;
      v23 = v34 + v32;
      if (v37 + 1 != v33)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1000584D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100089A08();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  result = __chkstk_darwin(v12);
  v17 = &v41 - v16;
  v43 = a2;
  if (a3 != a2)
  {
    v18 = v15;
    v19 = *a4;
    v21 = *(v14 + 16);
    v20 = v14 + 16;
    v22 = *(v20 + 56);
    v52 = (v20 - 8);
    v53 = v21;
    v54 = v20;
    v49 = (v20 + 16);
    v50 = v19;
    v23 = v19 + v22 * (a3 - 1);
    v48 = -v22;
    v24 = a1 - a3;
    v42 = v22;
    v25 = v19 + v22 * a3;
    while (2)
    {
      v46 = v23;
      v47 = a3;
      v44 = v25;
      v45 = v24;
      v26 = v23;
      while (1)
      {
        v27 = v53;
        v53(v17, v25, v8);
        v27(v18, v26, v8);
        v28 = sub_1000899E8();
        v29 = v17;
        v30 = v18;
        v32 = v31;
        if (v28 == sub_1000899E8() && v32 == v33)
        {
          break;
        }

        v35 = sub_10008AA68();

        v36 = *v52;
        (*v52)(v30, v8);
        result = (v36)(v29, v8);
        v18 = v30;
        v17 = v29;
        if (v35)
        {
          if (!v50)
          {
            __break(1u);
            return result;
          }

          v37 = *v49;
          v38 = v51;
          (*v49)(v51, v25, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v37)(v26, v38, v8);
          v26 += v48;
          v25 += v48;
          if (!__CFADD__(v24++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v40 = *v52;
      (*v52)(v30, v8);
      result = (v40)(v29, v8);
      v18 = v30;
      v17 = v29;
LABEL_14:
      a3 = v47 + 1;
      v23 = v46 + v42;
      v24 = v45 - 1;
      v25 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1000587F8(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v117 = a1;
  v6 = type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  v123 = *(v6 - 8);
  v7 = *(v123 + 64);
  v8 = __chkstk_darwin(v6);
  v119 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v129 = &v114 - v11;
  v12 = __chkstk_darwin(v10);
  v132 = &v114 - v13;
  __chkstk_darwin(v12);
  v131 = &v114 - v14;
  v125 = a3;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = _swiftEmptyArrayStorage;
LABEL_100:
    v132 = *v117;
    if (!v132)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v126;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_102:
      v106 = v17 + 2;
      v107 = v17[2];
      while (v107 >= 2)
      {
        if (!*v125)
        {
          goto LABEL_138;
        }

        v108 = v6;
        v109 = v17;
        v6 = &v17[2 * v107];
        v110 = *v6;
        v111 = &v106[2 * v107];
        v112 = v111[1];
        sub_100059CEC(*v125 + *(v123 + 72) * *v6, *v125 + *(v123 + 72) * *v111, *v125 + *(v123 + 72) * v112, v132);
        v17 = v108;
        if (v108)
        {
          break;
        }

        if (v112 < v110)
        {
          goto LABEL_126;
        }

        if (v107 - 2 >= *v106)
        {
          goto LABEL_127;
        }

        *v6 = v110;
        *(v6 + 8) = v112;
        v113 = *v106 - v107;
        if (*v106 < v107)
        {
          goto LABEL_128;
        }

        v107 = *v106 - 1;
        memmove(v111, v111 + 2, 16 * v113);
        *v106 = v107;
        v6 = 0;
        v17 = v109;
      }

LABEL_110:

      return;
    }

LABEL_135:
    v17 = sub_10005A7D4(v17);
    goto LABEL_102;
  }

  v114 = a4;
  v16 = 0;
  v17 = _swiftEmptyArrayStorage;
  v130 = v6;
  while (1)
  {
    v18 = v16++;
    if (v16 < v15)
    {
      v115 = v17;
      v19 = *v125;
      v20 = *(v123 + 72);
      v21 = *v125 + v20 * v16;
      v22 = v16;
      v23 = v131;
      v122 = v15;
      sub_10005B654(v21, v131);
      v24 = v132;
      sub_10005B654(v19 + v20 * v18, v132);
      v25 = *(v6 + 24);
      v26 = *(v23 + v25);
      v120 = *(v24 + v25);
      v121 = v26;
      sub_10005B2EC(v24, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
      v27 = v23;
      v16 = v22;
      sub_10005B2EC(v27, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
      v28 = v122;
      v116 = v18;
      v29 = (v18 + 2);
      v124 = v20;
      v30 = v19 + v20 * (v18 + 2);
      while (1)
      {
        v17 = v29;
        v31 = v16 + 1;
        if (v31 >= v28)
        {
          break;
        }

        LODWORD(v128) = v121 < v120;
        v127 = v31;
        v32 = v131;
        sub_10005B654(v30, v131);
        v33 = v132;
        sub_10005B654(v21, v132);
        v34 = *(v6 + 24);
        v35 = *(v32 + v34);
        v36 = *(v33 + v34);
        sub_10005B2EC(v33, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
        v37 = v32;
        v16 = v127;
        sub_10005B2EC(v37, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
        v28 = v122;
        v30 += v124;
        v21 += v124;
        v29 = (v17 + 1);
        if (((v128 ^ (v35 >= v36)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v16 = v28;
LABEL_9:
      if (v121 < v120)
      {
        v18 = v116;
        if (v16 < v116)
        {
          goto LABEL_132;
        }

        if (v116 >= v16)
        {
          v17 = v115;
          goto LABEL_30;
        }

        if (v28 >= v17)
        {
          v38 = v17;
        }

        else
        {
          v38 = v28;
        }

        v39 = v124 * (v38 - 1);
        v40 = v124 * v38;
        v41 = v116 * v124;
        v42 = v116;
        v43 = v16;
        do
        {
          if (v42 != --v43)
          {
            v44 = *v125;
            if (!*v125)
            {
              goto LABEL_139;
            }

            sub_10005B6A8(v44 + v41, v119);
            v45 = v41 < v39 || v44 + v41 >= v44 + v40;
            if (v45)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v41 != v39)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_10005B6A8(v119, v44 + v39);
          }

          ++v42;
          v39 -= v124;
          v40 -= v124;
          v41 += v124;
        }

        while (v42 < v43);
      }

      v17 = v115;
      v18 = v116;
    }

LABEL_30:
    v46 = v125[1];
    if (v16 < v46)
    {
      if (__OFSUB__(v16, v18))
      {
        goto LABEL_131;
      }

      if (v16 - v18 < v114)
      {
        break;
      }
    }

LABEL_48:
    if (v16 < v18)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v102 = v17[2];
      sub_100080408();
      v17 = v103;
    }

    v60 = v17[2];
    v61 = v60 + 1;
    if (v60 >= v17[3] >> 1)
    {
      sub_100080408();
      v17 = v104;
    }

    v17[2] = v61;
    v62 = v17 + 4;
    v63 = &v17[2 * v60 + 4];
    *v63 = v18;
    v63[1] = v16;
    v128 = *v117;
    if (!v128)
    {
      goto LABEL_140;
    }

    if (v60)
    {
      while (1)
      {
        v64 = v61 - 1;
        v65 = &v62[2 * v61 - 2];
        v66 = &v17[2 * v61];
        if (v61 >= 4)
        {
          break;
        }

        if (v61 == 3)
        {
          v67 = v17[4];
          v68 = v17[5];
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_68:
          if (v70)
          {
            goto LABEL_117;
          }

          v82 = *v66;
          v81 = v66[1];
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_120;
          }

          v86 = v65[1];
          v87 = v86 - *v65;
          if (__OFSUB__(v86, *v65))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v84, v87))
          {
            goto LABEL_125;
          }

          if (v84 + v87 >= v69)
          {
            if (v69 < v87)
            {
              v64 = v61 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v61 < 2)
        {
          goto LABEL_119;
        }

        v89 = *v66;
        v88 = v66[1];
        v77 = __OFSUB__(v88, v89);
        v84 = v88 - v89;
        v85 = v77;
LABEL_83:
        if (v85)
        {
          goto LABEL_122;
        }

        v91 = *v65;
        v90 = v65[1];
        v77 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v77)
        {
          goto LABEL_124;
        }

        if (v92 < v84)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v64 - 1 >= v61)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
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
          goto LABEL_134;
        }

        if (!*v125)
        {
          goto LABEL_137;
        }

        v96 = &v62[2 * v64 - 2];
        v97 = *v96;
        v98 = &v62[2 * v64];
        v99 = v98[1];
        v100 = v126;
        sub_100059CEC(*v125 + *(v123 + 72) * *v96, *v125 + *(v123 + 72) * *v98, *v125 + *(v123 + 72) * v99, v128);
        v6 = v100;
        if (v100)
        {
          goto LABEL_110;
        }

        if (v99 < v97)
        {
          goto LABEL_112;
        }

        v126 = 0;
        v6 = v17;
        v17 = v17[2];
        if (v64 > v17)
        {
          goto LABEL_113;
        }

        *v96 = v97;
        v96[1] = v99;
        if (v64 >= v17)
        {
          goto LABEL_114;
        }

        v61 = v17 - 1;
        memmove(&v62[2 * v64], v98 + 2, 16 * (v17 - v64 - 1));
        *(v6 + 16) = v17 - 1;
        v101 = v17 > 2;
        v17 = v6;
        v6 = v130;
        if (!v101)
        {
          goto LABEL_97;
        }
      }

      v71 = &v62[2 * v61];
      v72 = *(v71 - 8);
      v73 = *(v71 - 7);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_115;
      }

      v76 = *(v71 - 6);
      v75 = *(v71 - 5);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_116;
      }

      v78 = v66[1];
      v79 = v78 - *v66;
      if (__OFSUB__(v78, *v66))
      {
        goto LABEL_118;
      }

      v77 = __OFADD__(v69, v79);
      v80 = v69 + v79;
      if (v77)
      {
        goto LABEL_121;
      }

      if (v80 >= v74)
      {
        v94 = *v65;
        v93 = v65[1];
        v77 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v77)
        {
          goto LABEL_129;
        }

        if (v69 < v95)
        {
          v64 = v61 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v15 = v125[1];
    if (v16 >= v15)
    {
      goto LABEL_100;
    }
  }

  v47 = v18 + v114;
  if (__OFADD__(v18, v114))
  {
    goto LABEL_133;
  }

  if (v47 >= v46)
  {
    v47 = v125[1];
  }

  if (v47 < v18)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v16 == v47)
  {
    goto LABEL_48;
  }

  v115 = v17;
  v116 = v18;
  v48 = *(v123 + 72);
  v49 = *v125 + v48 * (v16 - 1);
  v50 = -v48;
  v51 = v18 - v16;
  v128 = *v125;
  v118 = v48;
  v52 = v128 + v16 * v48;
  v120 = v47;
LABEL_39:
  v127 = v16;
  v121 = v52;
  v122 = v51;
  v124 = v49;
  v53 = v49;
  while (1)
  {
    v54 = v131;
    sub_10005B654(v52, v131);
    v55 = v132;
    sub_10005B654(v53, v132);
    v56 = *(v6 + 24);
    v57 = *(v54 + v56);
    v58 = *(v55 + v56);
    sub_10005B2EC(v55, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
    sub_10005B2EC(v54, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
    if (v57 >= v58)
    {
      v6 = v130;
LABEL_46:
      v16 = v127 + 1;
      v49 = v124 + v118;
      v51 = v122 - 1;
      v52 = v121 + v118;
      if (v127 + 1 == v120)
      {
        v16 = v120;
        v17 = v115;
        v18 = v116;
        goto LABEL_48;
      }

      goto LABEL_39;
    }

    if (!v128)
    {
      break;
    }

    v59 = v129;
    sub_10005B6A8(v52, v129);
    v6 = v130;
    swift_arrayInitWithTakeFrontToBack();
    sub_10005B6A8(v59, v53);
    v53 += v50;
    v52 += v50;
    v45 = __CFADD__(v51++, 1);
    if (v45)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_100059128(unint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v147 = a1;
  v8 = sub_100089A08();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v152 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v165 = &v143 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v143 - v15;
  v17 = __chkstk_darwin(v14);
  v18 = __chkstk_darwin(v17);
  v161 = &v143 - v19;
  v20 = __chkstk_darwin(v18);
  v160 = &v143 - v21;
  v22 = __chkstk_darwin(v20);
  __chkstk_darwin(v22);
  v27 = &v143 - v23;
  v158 = v24;
  v159 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_114:
    v170 = *v147;
    if (!v170)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v166 = v25;
  v143 = a4;
  v29 = 0;
  v170 = v24 + 16;
  v168 = (v24 + 32);
  v169 = (v24 + 8);
  v30 = _swiftEmptyArrayStorage;
  v162 = v8;
  v154 = v16;
  v144 = v26;
  v146 = &v143 - v23;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v149 = v29;
    if (v29 + 1 < v28)
    {
      v164 = v28;
      v145 = v30;
      v33 = v27;
      v34 = *v159;
      v35 = *(v24 + 72);
      v36 = v26;
      v157 = v29 + 1;
      v37 = v29;
      v38 = &v34[v35 * (v29 + 1)];
      v39 = *(v24 + 16);
      v39(v33, v38, v8);
      v40 = &v34[v35 * v37];
      v41 = v146;
      v156 = v39;
      v39(v36, v40, v8);
      LODWORD(v163) = sub_10004A2F8();
      if (v5)
      {
        v142 = *v169;
        (*v169)(v36, v8);
        v142(v41, v8);
LABEL_124:

        return;
      }

      v148 = 0;
      v30 = v169;
      v42 = *v169;
      (*v169)(v36, v8);
      v155 = v42;
      (v42)(v41, v8);
      v43 = v149 + 2;
      v44 = &v34[v35 * (v149 + 2)];
      v32 = v157;
      v45 = v35;
      v167 = v35;
      v46 = v164;
      while (1)
      {
        v47 = v43;
        if (v32 + 1 >= v46)
        {
          break;
        }

        v48 = v32;
        v49 = v162;
        v5 = v156;
        (v156)(v160, v44, v162);
        v5(v161, v38, v49);
        v50 = sub_1000899E8();
        v52 = v51;
        if (v50 == sub_1000899E8() && v52 == v53)
        {
          v55 = 0;
        }

        else
        {
          v55 = sub_10008AA68();
        }

        v56 = v162;
        v30 = v155;
        (v155)(v161, v162);
        (v30)(v160, v56);
        v45 = v167;
        v44 += v167;
        v38 += v167;
        v32 = v48 + 1;
        v43 = v47 + 1;
        v46 = v164;
        if ((v163 ^ v55))
        {
          goto LABEL_16;
        }
      }

      v32 = v46;
LABEL_16:
      if (v163)
      {
        v31 = v149;
        if (v32 < v149)
        {
          goto LABEL_149;
        }

        v5 = v148;
        if (v149 >= v32)
        {
          v24 = v158;
          v30 = v145;
          v8 = v162;
          v16 = v154;
          goto LABEL_39;
        }

        if (v46 >= v47)
        {
          v57 = v47;
        }

        else
        {
          v57 = v46;
        }

        v58 = v45 * (v57 - 1);
        v59 = v45 * v57;
        v60 = v149;
        v61 = v149 * v45;
        v62 = v32;
        do
        {
          if (v60 != --v62)
          {
            v63 = *v159;
            if (!*v159)
            {
              goto LABEL_154;
            }

            v64 = v162;
            v164 = *v168;
            v164(v152, &v63[v61], v162);
            v65 = v61 < v58 || &v63[v61] >= &v63[v59];
            if (v65)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v61 != v58)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v164(&v63[v58], v152, v64);
            v5 = v148;
            v45 = v167;
          }

          ++v60;
          v58 -= v45;
          v59 -= v45;
          v61 += v45;
        }

        while (v60 < v62);
      }

      else
      {
        v5 = v148;
      }

      v24 = v158;
      v30 = v145;
      v8 = v162;
      v16 = v154;
      v31 = v149;
    }

LABEL_39:
    v66 = v159[1];
    if (v32 < v66)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_146;
      }

      if (v32 - v31 < v143)
      {
        break;
      }
    }

LABEL_62:
    if (v32 < v31)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v132 = v30[2];
      sub_100080408();
      v30 = v133;
    }

    v89 = v30[2];
    v88 = v30[3];
    v90 = v89 + 1;
    v157 = v32;
    if (v89 >= v88 >> 1)
    {
      sub_100080408();
      v30 = v134;
    }

    v30[2] = v90;
    v91 = v30 + 4;
    v92 = &v30[2 * v89 + 4];
    v93 = v157;
    *v92 = v149;
    v92[1] = v93;
    v167 = *v147;
    if (!v167)
    {
      goto LABEL_155;
    }

    if (v89)
    {
      while (1)
      {
        v94 = v90 - 1;
        v95 = &v91[2 * v90 - 2];
        v96 = &v30[2 * v90];
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v97 = v30[4];
          v98 = v30[5];
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_82:
          if (v100)
          {
            goto LABEL_132;
          }

          v112 = *v96;
          v111 = v96[1];
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_135;
          }

          v116 = v95[1];
          v117 = v116 - *v95;
          if (__OFSUB__(v116, *v95))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v114, v117))
          {
            goto LABEL_140;
          }

          if (v114 + v117 >= v99)
          {
            if (v99 < v117)
            {
              v94 = v90 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v90 < 2)
        {
          goto LABEL_134;
        }

        v119 = *v96;
        v118 = v96[1];
        v107 = __OFSUB__(v118, v119);
        v114 = v118 - v119;
        v115 = v107;
LABEL_97:
        if (v115)
        {
          goto LABEL_137;
        }

        v121 = *v95;
        v120 = v95[1];
        v107 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v107)
        {
          goto LABEL_139;
        }

        if (v122 < v114)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v94 - 1 >= v90)
        {
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
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
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
          goto LABEL_148;
        }

        if (!*v159)
        {
          goto LABEL_152;
        }

        v126 = v30;
        v127 = &v91[2 * v94 - 2];
        v30 = *v127;
        v128 = &v91[2 * v94];
        v129 = v128[1];
        sub_10005A1B8(&(*v159)[*(v158 + 72) * *v127], &(*v159)[*(v158 + 72) * *v128], &(*v159)[*(v158 + 72) * v129], v167);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v129 < v30)
        {
          goto LABEL_127;
        }

        v130 = v126[2];
        if (v94 > v130)
        {
          goto LABEL_128;
        }

        *v127 = v30;
        v127[1] = v129;
        if (v94 >= v130)
        {
          goto LABEL_129;
        }

        v90 = v130 - 1;
        memmove(&v91[2 * v94], v128 + 2, 16 * (v130 - 1 - v94));
        v30 = v126;
        v126[2] = (v130 - 1);
        v131 = v130 > 2;
        v16 = v154;
        if (!v131)
        {
          goto LABEL_111;
        }
      }

      v101 = &v91[2 * v90];
      v102 = *(v101 - 8);
      v103 = *(v101 - 7);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_130;
      }

      v106 = *(v101 - 6);
      v105 = *(v101 - 5);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_131;
      }

      v108 = v96[1];
      v109 = v108 - *v96;
      if (__OFSUB__(v108, *v96))
      {
        goto LABEL_133;
      }

      v107 = __OFADD__(v99, v109);
      v110 = v99 + v109;
      if (v107)
      {
        goto LABEL_136;
      }

      if (v110 >= v104)
      {
        v124 = *v95;
        v123 = v95[1];
        v107 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v107)
        {
          goto LABEL_144;
        }

        if (v99 < v125)
        {
          v94 = v90 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v24 = v158;
    v28 = v159[1];
    v29 = v157;
    v8 = v162;
    v26 = v144;
    v27 = v146;
    if (v157 >= v28)
    {
      goto LABEL_114;
    }
  }

  v67 = (v31 + v143);
  if (__OFADD__(v31, v143))
  {
    goto LABEL_147;
  }

  if (v67 >= v66)
  {
    v67 = v159[1];
  }

  if (v67 < v31)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v30 = sub_10005A7D4(v30);
LABEL_116:
    v135 = v30 + 2;
    v136 = v30[2];
    while (v136 >= 2)
    {
      if (!*v159)
      {
        goto LABEL_153;
      }

      v137 = v30;
      v30 += 2 * v136;
      v138 = *v30;
      v139 = &v135[2 * v136];
      v140 = v139[1];
      sub_10005A1B8(&(*v159)[*(v158 + 72) * *v30], &(*v159)[*(v158 + 72) * *v139], &(*v159)[*(v158 + 72) * v140], v170);
      if (v5)
      {
        break;
      }

      if (v140 < v138)
      {
        goto LABEL_141;
      }

      if (v136 - 2 >= *v135)
      {
        goto LABEL_142;
      }

      *v30 = v138;
      v30[1] = v140;
      v141 = *v135 - v136;
      if (*v135 < v136)
      {
        goto LABEL_143;
      }

      v136 = *v135 - 1;
      memmove(v139, v139 + 2, 16 * v141);
      *v135 = v136;
      v30 = v137;
    }

    goto LABEL_124;
  }

  if (v32 == v67)
  {
    goto LABEL_62;
  }

  v145 = v30;
  v148 = v5;
  v68 = *v159;
  v69 = *(v24 + 72);
  v167 = *(v24 + 16);
  v70 = &v68[v69 * (v32 - 1)];
  v163 = -v69;
  v164 = v68;
  v71 = (v31 - v32);
  v150 = v69;
  v151 = v67;
  v72 = &v68[v32 * v69];
  v73 = v166;
LABEL_48:
  v156 = v70;
  v157 = v32;
  v153 = v72;
  v155 = v71;
  while (1)
  {
    v74 = v167;
    (v167)(v73, v72, v8);
    v74(v16, v70, v8);
    v75 = v16;
    v76 = sub_1000899E8();
    v77 = v8;
    v79 = v78;
    if (v76 == sub_1000899E8() && v79 == v80)
    {

      v87 = *v169;
      (*v169)(v75, v77);
      v87(v73, v77);
      v8 = v77;
      v16 = v75;
      goto LABEL_60;
    }

    v82 = v73;
    v83 = sub_10008AA68();

    v84 = *v169;
    (*v169)(v75, v77);
    v84(v82, v77);
    v8 = v77;
    v16 = v75;
    if ((v83 & 1) == 0)
    {
      v73 = v166;
LABEL_60:
      v32 = v157 + 1;
      v70 = &v156[v150];
      v71 = (v155 - 1);
      v72 = &v153[v150];
      if (v157 + 1 == v151)
      {
        v32 = v151;
        v5 = v148;
        v30 = v145;
        v31 = v149;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v164)
    {
      break;
    }

    v85 = *v168;
    v86 = v165;
    (*v168)(v165, v72, v77);
    swift_arrayInitWithTakeFrontToBack();
    v85(v70, v86, v77);
    v70 += v163;
    v72 += v163;
    v65 = __CFADD__(v71, 1);
    v71 = (v71 + 1);
    v73 = v166;
    if (v65)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}