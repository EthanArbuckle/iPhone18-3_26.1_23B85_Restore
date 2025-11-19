Swift::Int sub_100001784()
{
  v1 = *v0;
  sub_100008378();
  sub_100008388(v1);
  return sub_100008398();
}

Swift::Int sub_1000017F8()
{
  v1 = *v0;
  sub_100008378();
  sub_100008388(v1);
  return sub_100008398();
}

unint64_t sub_10000183C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100006A90(*a1);
  *a2 = result;
  return result;
}

id sub_100001874(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v11 = 0;
  v9[0] = a1;
  v9[1] = a2;
  v10 = a3;
  v5 = [objc_allocWithZone(v4) initWithComponentDescription:v9 options:a4 error:&v11];
  if (v5)
  {
    v6 = v11;
  }

  else
  {
    v7 = v11;
    sub_100007FB8();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_100001964(unint64_t a1, unint64_t a2, int a3, unsigned int a4)
{
  v160 = a4;
  v159 = a3;
  v158 = a2;
  v157 = a1;
  v5 = (*(*(sub_1000073B0(&qword_100010B08, &qword_100008A48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v162 = &v150 - v6;
  v7 = (*(*(sub_1000073B0(&qword_100010B10, &qword_100008A50) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v161 = &v150 - v8;
  v9 = qword_100010970;
  v179 = 0;
  v180 = 1;
  v10 = objc_opt_self();
  v166 = v10;
  LOBYTE(v176) = 0;
  sub_1000081B8();
  v11 = sub_100008198();

  v164 = type metadata accessor for KonaSynthesizerAudioUnit();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v170 = ObjCClassFromMetadata;
  v13 = objc_opt_self();
  v171 = v13;
  v14 = [v13 bundleForClass:ObjCClassFromMetadata];
  v140._countAndFlagsBits = 0xE000000000000000;
  v181._countAndFlagsBits = 0x4C554D5F45544152;
  v181._object = 0xEF5245494C504954;
  v191.value._object = 0x80000001000097F0;
  v169 = "Buffer=II^v}]}>52";
  v191.value._countAndFlagsBits = 0xD000000000000010;
  v15.super.isa = v14;
  v201._countAndFlagsBits = 0;
  v201._object = 0xE000000000000000;
  sub_100007F98(v181, v191, v15, v201, v140);

  v16 = sub_100008198();

  LODWORD(v17) = 1112014848;
  LODWORD(v18) = 1128792064;
  v19 = [v10 createParameterWithIdentifier:v11 name:v16 address:0 min:3 max:0 unit:0 unitName:v17 flags:v18 valueStrings:0 dependentParameters:0];

  v178 = 0;
  v176 = 0u;
  v177 = 0u;
  v20 = sub_1000073B0(&qword_100010A40, &qword_1000089C0);
  v167 = sub_100006720();
  v156 = v9;
  v21 = v4;
  v168 = v20;
  sub_100008008();
  v22 = qword_100010978;
  v179 = 0;
  v180 = 1;
  LOBYTE(v176) = 1;
  sub_1000081B8();
  v23 = sub_100008198();

  v24 = v170;
  v25 = [v13 bundleForClass:v170];
  v141._countAndFlagsBits = 0xE000000000000000;
  v182._countAndFlagsBits = 0x5A49535F44414548;
  v192.value._object = 0x80000001000097F0;
  v182._object = 0xE900000000000045;
  v192.value._countAndFlagsBits = 0xD000000000000010;
  v26.super.isa = v25;
  v202._countAndFlagsBits = 0;
  v202._object = 0xE000000000000000;
  sub_100007F98(v182, v192, v26, v202, v141);

  v27 = sub_100008198();

  v28 = v166;
  LODWORD(v29) = 1120403456;
  v30 = [v166 createParameterWithIdentifier:v23 name:v27 address:1 min:3 max:0 unit:0 unitName:0.0 flags:v29 valueStrings:0 dependentParameters:0];

  v178 = 0;
  v176 = 0u;
  v177 = 0u;
  v155 = v22;
  sub_100008008();
  v31 = qword_100010980;
  v179 = 0;
  v180 = 1;
  LOBYTE(v176) = 2;
  sub_1000081B8();
  v32 = sub_100008198();

  v33 = [v171 bundleForClass:v24];
  v142._countAndFlagsBits = 0xE000000000000000;
  v183._countAndFlagsBits = 0x41425F4843544950;
  v193.value._object = (v169 | 0x8000000000000000);
  v183._object = 0xEA00000000004553;
  v193.value._countAndFlagsBits = 0xD000000000000010;
  v34.super.isa = v33;
  v203._countAndFlagsBits = 0;
  v203._object = 0xE000000000000000;
  sub_100007F98(v183, v193, v34, v203, v142);

  v35 = sub_100008198();

  LODWORD(v36) = 1109393408;
  LODWORD(v37) = 1137901568;
  v38 = [v28 createParameterWithIdentifier:v32 name:v35 address:2 min:8 max:0 unit:0 unitName:v36 flags:v37 valueStrings:0 dependentParameters:0];

  v178 = 0;
  v176 = 0u;
  v177 = 0u;
  v154 = v31;
  v165 = v21;
  sub_100008008();
  v39 = qword_100010988;
  v179 = 0;
  v180 = 1;
  LOBYTE(v176) = 3;
  sub_1000081B8();
  v40 = sub_100008198();

  v41 = v170;
  v42 = v171;
  v43 = [v171 bundleForClass:v170];
  v143._countAndFlagsBits = 0xE000000000000000;
  v184._countAndFlagsBits = 0x41525F4843544950;
  v184._object = 0xEB0000000045474ELL;
  v194.value._object = (v169 | 0x8000000000000000);
  v194.value._countAndFlagsBits = 0xD000000000000010;
  v44.super.isa = v43;
  v204._countAndFlagsBits = 0;
  v204._object = 0xE000000000000000;
  sub_100007F98(v184, v194, v44, v204, v143);

  v45 = sub_100008198();

  v46 = v166;
  LODWORD(v47) = 1120403456;
  v48 = [v166 createParameterWithIdentifier:v40 name:v45 address:3 min:3 max:0 unit:0 unitName:0.0 flags:v47 valueStrings:0 dependentParameters:0];

  v178 = 0;
  v176 = 0u;
  v177 = 0u;
  v153 = v39;
  sub_100008008();
  v49 = qword_100010990;
  v179 = 0;
  v180 = 1;
  LOBYTE(v176) = 4;
  sub_1000081B8();
  v50 = sub_100008198();

  v51 = [v42 bundleForClass:v41];
  v144._countAndFlagsBits = 0xE000000000000000;
  v185._countAndFlagsBits = 0x4E49485441455242;
  v185._object = 0xEB00000000535345;
  v52 = v169;
  v195.value._object = (v169 | 0x8000000000000000);
  v195.value._countAndFlagsBits = 0xD000000000000010;
  v53.super.isa = v51;
  v205._countAndFlagsBits = 0;
  v205._object = 0xE000000000000000;
  sub_100007F98(v185, v195, v53, v205, v144);

  v54 = sub_100008198();

  LODWORD(v55) = 1120403456;
  v56 = [v46 createParameterWithIdentifier:v50 name:v54 address:4 min:3 max:0 unit:0 unitName:0.0 flags:v55 valueStrings:0 dependentParameters:0];

  v178 = 0;
  v176 = 0u;
  v177 = 0u;
  v152 = v49;
  sub_100008008();
  v57 = qword_100010998;
  v179 = 0;
  v180 = 1;
  LOBYTE(v176) = 5;
  sub_1000081B8();
  v58 = sub_100008198();

  v59 = v171;
  v60 = [v171 bundleForClass:v170];
  v145._countAndFlagsBits = 0xE000000000000000;
  v186._countAndFlagsBits = 0x53454E4847554F52;
  v186._object = 0xE900000000000053;
  v196.value._object = (v52 | 0x8000000000000000);
  v196.value._countAndFlagsBits = 0xD000000000000010;
  v61.super.isa = v60;
  v206._countAndFlagsBits = 0;
  v206._object = 0xE000000000000000;
  sub_100007F98(v186, v196, v61, v206, v145);

  v62 = sub_100008198();

  v63 = v166;
  LODWORD(v64) = 1120403456;
  v65 = [v166 createParameterWithIdentifier:v58 name:v62 address:5 min:3 max:0 unit:0 unitName:0.0 flags:v64 valueStrings:0 dependentParameters:0];

  v178 = 0;
  v176 = 0u;
  v177 = 0u;
  v151 = v57;
  sub_100008008();
  v66 = qword_1000109A0;
  LOBYTE(v179) = 0;
  LOBYTE(v176) = 6;
  sub_1000081B8();
  v67 = sub_100008198();

  v68 = v59;
  v69 = v170;
  v70 = [v68 bundleForClass:v170];
  v146._countAndFlagsBits = 0xE000000000000000;
  v187._countAndFlagsBits = 0x5441525F504D4153;
  v71 = v169;
  v197.value._object = (v169 | 0x8000000000000000);
  v187._object = 0xE900000000000045;
  v197.value._countAndFlagsBits = 0xD000000000000010;
  v72.super.isa = v70;
  v207._countAndFlagsBits = 0;
  v207._object = 0xE000000000000000;
  sub_100007F98(v187, v197, v72, v207, v146);

  v73 = sub_100008198();

  LODWORD(v74) = 1.0;
  v75 = [v63 createParameterWithIdentifier:v67 name:v73 address:6 min:2 max:0 unit:0 unitName:0.0 flags:v74 valueStrings:0 dependentParameters:0];

  v178 = 0;
  v176 = 0u;
  v177 = 0u;
  v168 = v66;
  sub_100008008();
  v76 = qword_1000109A8;
  LOBYTE(v179) = 0;
  LOBYTE(v176) = 7;
  sub_1000081B8();
  v77 = sub_100008198();

  v78 = v171;
  v79 = [v171 bundleForClass:v69];
  v147._countAndFlagsBits = 0xE000000000000000;
  v188._countAndFlagsBits = 0xD000000000000011;
  v188._object = 0x8000000100009810;
  v80 = v71;
  v198.value._object = (v71 | 0x8000000000000000);
  v198.value._countAndFlagsBits = 0xD000000000000010;
  v81.super.isa = v79;
  v208._countAndFlagsBits = 0;
  v208._object = 0xE000000000000000;
  sub_100007F98(v188, v198, v81, v208, v147);

  v82 = sub_100008198();

  LODWORD(v83) = 1.0;
  v84 = [v63 createParameterWithIdentifier:v77 name:v82 address:7 min:2 max:0 unit:0 unitName:0.0 flags:v83 valueStrings:0 dependentParameters:0];

  v178 = 0;
  v176 = 0u;
  v177 = 0u;
  v167 = v76;
  sub_100008008();
  v85 = qword_1000109B0;
  LOBYTE(v179) = 1;
  LOBYTE(v176) = 8;
  sub_1000081B8();
  v86 = sub_100008198();

  v87 = v170;
  v88 = [v78 bundleForClass:v170];
  v148._countAndFlagsBits = 0xE000000000000000;
  v189._countAndFlagsBits = 0xD000000000000017;
  v189._object = 0x8000000100009830;
  v199.value._object = (v71 | 0x8000000000000000);
  v199.value._countAndFlagsBits = 0xD000000000000010;
  v89.super.isa = v88;
  v209._countAndFlagsBits = 0;
  v209._object = 0xE000000000000000;
  sub_100007F98(v189, v199, v89, v209, v148);

  v90 = sub_100008198();

  LODWORD(v91) = 1.0;
  v92 = v63;
  v93 = [v63 createParameterWithIdentifier:v86 name:v90 address:8 min:2 max:0 unit:0 unitName:0.0 flags:v91 valueStrings:0 dependentParameters:0];

  v178 = 0;
  v176 = 0u;
  v177 = 0u;
  v150 = v85;
  v94 = v165;
  sub_100008008();
  v95 = qword_1000109B8;
  LOBYTE(v179) = 0;
  LOBYTE(v176) = 9;
  sub_1000081B8();
  v96 = sub_100008198();

  v97 = [v171 bundleForClass:v87];
  v149._countAndFlagsBits = 0xE000000000000000;
  v190._countAndFlagsBits = 0xD000000000000014;
  v190._object = 0x8000000100009850;
  v200.value._object = (v80 | 0x8000000000000000);
  v200.value._countAndFlagsBits = 0xD000000000000010;
  v98.super.isa = v97;
  v210._countAndFlagsBits = 0;
  v210._object = 0xE000000000000000;
  sub_100007F98(v190, v200, v98, v210, v149);

  v99 = sub_100008198();

  LODWORD(v100) = 1.0;
  v101 = [v92 createParameterWithIdentifier:v96 name:v99 address:9 min:2 max:0 unit:0 unitName:0.0 flags:v100 valueStrings:0 dependentParameters:0];

  v178 = 0;
  v176 = 0u;
  v177 = 0u;
  v171 = v95;
  sub_100008008();
  v102 = qword_1000109C8;
  *(v94 + qword_1000109C8) = 0;
  v169 = qword_1000109D0;
  *(v94 + qword_1000109D0) = 0;
  v170 = qword_1000109D8;
  *(v94 + qword_1000109D8) = &_swiftEmptyArrayStorage;
  v103 = qword_1000109E0;
  v104 = sub_1000080C8();
  (*(*(v104 - 8) + 56))(&v103[v94], 1, 1, v104);
  v105 = qword_1000109E8;
  *(v94 + qword_1000109E8) = 0;
  v106 = qword_1000109F0;
  *(v94 + qword_1000109F0) = 0;
  v107 = v94;
  *(v94 + qword_1000109F8) = 0;
  v173 = 0x40CF400000000000;
  v174 = xmmword_100008930;
  v175 = xmmword_100008940;
  type metadata accessor for CMFormatDescription(0);
  v108 = sub_100008168();
  (*(*(v108 - 8) + 56))(v161, 1, 1, v108);
  v109 = sub_100008278();
  (*(*(v109 - 8) + 56))(v162, 1, 1, v109);
  v110 = v163;
  sub_100008178();
  if (v110)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v111 = v176;
    v112 = [objc_allocWithZone(AVAudioFormat) initWithCMAudioFormatDescription:v176];
    v113 = objc_allocWithZone(AUAudioUnitBus);
    *&v176 = 0;
    v114 = [v113 initWithFormat:v112 error:&v176];
    v115 = v176;
    if (v114)
    {
      v116 = v157;
      v117 = HIDWORD(v157);
      *(v107 + qword_1000109C0) = v114;
      v118 = v158;
      v119 = HIDWORD(v158);
      v179 = 0;
      v172.receiver = v107;
      v172.super_class = v164;
      v120 = v115;
      *&v176 = __PAIR64__(v117, v116);
      *(&v176 + 1) = __PAIR64__(v119, v118);
      LODWORD(v177) = v159;
      v121 = objc_msgSendSuper2(&v172, "initWithComponentDescription:options:error:", &v176, v160, &v179);
      v122 = v179;
      if (v121)
      {
        v107 = v121;
        v123 = v122;
        [v107 setMaximumFramesToRender:256];
        sub_1000073B0(&qword_100010AD0, &qword_100008A20);
        v124 = swift_allocObject();
        *(v124 + 16) = xmmword_100008950;
        v125 = *(v107 + qword_1000109C0);
        *(v124 + 32) = v125;
        v126 = objc_allocWithZone(AUAudioUnitBusArray);
        sub_100007848(0, &qword_100010B18, AUAudioUnitBus_ptr);
        v127 = v125;
        isa = sub_100008218().super.isa;

        v129 = [v126 initWithAudioUnit:v107 busType:2 busses:isa];

        v111 = *(v107 + qword_1000109D0);
        *(v107 + qword_1000109D0) = v129;
      }

      else
      {
        v107 = v179;
        sub_100007FB8();

        swift_willThrow();
      }
    }

    else
    {
      v130 = v176;
      v166 = v103;
      v131 = v130;
      sub_100007FB8();

      swift_willThrow();
      v132 = sub_1000073B0(&qword_100010AB8, &qword_100008A10);
      v133 = *(*(v132 - 8) + 8);
      v133(v107 + v156, v132);
      v133(v107 + v155, v132);
      v133(v107 + v154, v132);
      v133(v107 + v153, v132);
      v133(v107 + v152, v132);
      v133(v107 + v151, v132);
      v134 = sub_1000073B0(&qword_100010AA8, &qword_100008A00);
      v135 = *(*(v134 - 8) + 8);
      v135(v107 + v168, v134);
      v135(v107 + v167, v134);
      v135(v107 + v150, v134);
      v135(&v171[v107], v134);

      v136 = *(v107 + v170);

      sub_100007760(v166 + v107, &qword_100010AB0, &qword_100008A08);

      v137 = *((swift_isaMask & *v107) + 0x30);
      v138 = *((swift_isaMask & *v107) + 0x34);
      swift_deallocPartialClassInstance();
    }

    return v107;
  }

  return result;
}

id sub_100002EF0(uint64_t a1)
{
  result = *(a1 + qword_1000109D0);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100002F08(uint64_t a1, uint64_t a2)
{
  v26 = sub_1000073B0(&qword_100010AA8, &qword_100008A00);
  v24 = *(v26 - 8);
  v4 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v23 = &v23 - v5;
  v6 = [objc_opt_self() allVoices];
  sub_100007848(0, &qword_100010A80, AXKonaVoice_ptr);
  v7 = sub_100008228();

  if (v7 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100008338())
  {
    v9 = 0;
    v27 = v7 & 0xFFFFFFFFFFFFFF8;
    v28 = v7 & 0xC000000000000001;
    while (1)
    {
      if (v28)
      {
        v10 = sub_1000082D8();
      }

      else
      {
        if (v9 >= *(v27 + 16))
        {
          goto LABEL_19;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = [v10 identifier];
      v14 = sub_1000081A8();
      v16 = v15;

      if (v14 == a1 && v16 == a2)
      {

LABEL_17:

        v19 = v24;
        v20 = v23;
        v21 = v26;
        (*(v24 + 16))(v23, v25 + qword_1000109B8, v26);
        sub_100007FF8();
        (*(v19 + 8))(v20, v21);
        [v11 konaLanguage];
        sub_100008028();
      }

      v18 = sub_100008358();

      if (v18)
      {
        goto LABEL_17;
      }

      ++v9;
      if (v12 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:
}

uint64_t sub_1000031F4(void *a1)
{
  v2 = sub_1000081A8();
  v4 = v3;
  v5 = a1;
  sub_100002F08(v2, v4);
}

Class sub_10000325C()
{
  sub_100007848(0, &qword_100010AE8, NSNumber_ptr);
  v0.super.super.isa = sub_100008288(0).super.super.isa;

  return v0.super.super.isa;
}

Class sub_1000032AC(void *a1)
{
  v2 = sub_1000081A8();
  v4 = v3;
  v5 = a1;
  sub_100006BA4(v2, v4);

  sub_100007848(0, &qword_100010AE8, NSNumber_ptr);
  v6.super.isa = sub_100008188().super.isa;

  return v6.super.isa;
}

id sub_10000335C()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3[4] = sub_1000076BC;
  v3[5] = v0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100003428;
  v3[3] = &unk_10000C730;
  v1 = _Block_copy(v3);

  return v1;
}

uint64_t sub_100003428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *aBlock)
{
  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  v16 = _Block_copy(aBlock);
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v16 = sub_100007728;
  }

  else
  {
    v17 = 0;
  }

  v18 = v15(a2, a3, a4, a5, a6, a7, v16, v17);
  sub_1000076E0(v16);

  return v18;
}

void sub_100003514(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v5 = sub_100008138();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_100008148();
    v12 = sub_100008158();
    v14 = v13;
    v12(v49, 0);
    (*(v6 + 8))(v9, v5);
    if (v14)
    {
      if (!a3)
      {
        goto LABEL_12;
      }

      if (a3 >= 8)
      {
        v15 = a3 & 0xFFFFFFF8;
        v16 = (v14 + 16);
        v17 = v15;
        do
        {
          *(v16 - 1) = 0uLL;
          *v16 = 0uLL;
          v16 += 2;
          v17 -= 8;
        }

        while (v17);
        if (v15 == a3)
        {
LABEL_12:
          v20 = qword_1000109D8;
          v21 = *&v11[qword_1000109D8];
          if (v21 >> 62)
          {
LABEL_38:
            if (!sub_100008338())
            {
              goto LABEL_39;
            }
          }

          else if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_39:

            return;
          }

          v46 = v20;
          v47 = a1;
          v22 = qword_1000109F0;
          if (!*&v11[qword_1000109F0])
          {
            v23 = [*&v11[qword_1000109C8] nextBuffer];
            v24 = *&v11[v22];
            *&v11[v22] = v23;
            v25 = v23;

            if (v25)
            {
              v26 = [v25 markers];

              sub_100007848(0, &qword_100010AE0, AXKonaMarker_ptr);
              v27 = sub_100008228();
            }

            else
            {
              v27 = &_swiftEmptyArrayStorage;
            }

            sub_100005334(v27);

            *&v11[qword_1000109F8] = 0;
            if (!*&v11[v22])
            {
              goto LABEL_35;
            }
          }

          if (!a3)
          {
LABEL_36:
            sub_100008128();
            goto LABEL_39;
          }

          v20 = 0;
          v28 = qword_1000109F8;
          v48 = qword_1000109C8;
          a1 = &unk_100010000;
          do
          {
            v29 = *&v11[v22];
            if (!v29)
            {
              goto LABEL_42;
            }

            v30 = *&v11[v28];
            v31 = [v29 buffer];
            v32 = [v31 frameLength];

            if (v30 >= v32)
            {
              *&v11[v28] = 0;
              v33 = [*&v11[v48] nextBuffer];
              v34 = *&v11[v22];
              *&v11[v22] = v33;
              v35 = v33;

              if (v35)
              {
                v36 = [v35 markers];

                sub_100007848(0, &qword_100010AE0, AXKonaMarker_ptr);
                v37 = sub_100008228();
              }

              else
              {
                v37 = &_swiftEmptyArrayStorage;
              }

              sub_100005334(v37);
            }

            v38 = *&v11[v22];
            if (!v38)
            {
              goto LABEL_32;
            }

            v39 = [*&v11[v22] buffer];
            v40 = *([v39 mutableAudioBufferList] + 2);
            if (!v40)
            {
              goto LABEL_43;
            }

            *(v14 + 4 * v20) = *(v40 + 4 * *&v11[v28]);

            v41 = *&v11[v28];
            v42 = __OFADD__(v41, 1);
            v43 = v41 + 1;
            if (v42)
            {
              __break(1u);
              goto LABEL_38;
            }

            ++v20;
            *&v11[v28] = v43;
          }

          while (a3 != v20);
          v20 = a3;
LABEL_32:
          if ((v20 - 0x2000000000000000) >> 62 == 3)
          {
            if ((v20 & 0x3FFFFFFFC0000000) == 0)
            {
              if (v38)
              {
                goto LABEL_36;
              }

LABEL_35:
              v44 = v46;
              *v47 = 128;
              v45 = *&v11[v44];
              *&v11[v44] = &_swiftEmptyArrayStorage;

              goto LABEL_36;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }
      }

      else
      {
        v15 = 0;
      }

      v18 = (v14 + 4 * v15);
      v19 = a3 - v15;
      do
      {
        *v18++ = 0;
        --v19;
      }

      while (v19);
      goto LABEL_12;
    }

LABEL_44:
    __break(1u);
  }
}

id sub_100003988(id a1)
{
  v2 = sub_1000073B0(&qword_100010AA8, &qword_100008A00);
  v166 = *(v2 - 8);
  v3 = *(v166 + 64);
  __chkstk_darwin(v2);
  v165 = &v152 - v4;
  v5 = sub_1000073B0(&qword_100010AB0, &qword_100008A08);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v157 = &v152 - v7;
  v173 = sub_1000080C8();
  v172 = *(v173 - 8);
  v8 = *(v172 + 64);
  __chkstk_darwin(v173);
  v171 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000080E8();
  v168 = *(v10 - 8);
  v11 = *(v168 + 64);
  __chkstk_darwin(v10);
  v170 = &v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_1000073B0(&qword_100010AB8, &qword_100008A10);
  v178 = *(v175 - 8);
  v13 = *(v178 + 64);
  __chkstk_darwin(v175);
  v174 = &v152 - v14;
  v15 = sub_100008108();
  v176 = *(v15 - 8);
  v177 = v15;
  v16 = *(v176 + 64);
  __chkstk_darwin(v15);
  v179 = &v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100008038();
  v19 = *(v18 - 8);
  v20 = v19[8];
  __chkstk_darwin(v18);
  v22 = (&v152 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v158 = sub_100008078();
  v23 = sub_100008068();
  v24 = v19[13];
  v161 = v19 + 13;
  v160 = v24;
  v24(v22, enum case for TTSSpeechEvent.receivedStart(_:), v18);
  v25 = [a1 jobIdentifier];
  sub_1000081A8();

  sub_100008058();

  v26 = v19[1];
  v162 = v22;
  v164 = v18;
  v163 = v19 + 1;
  v159 = v26;
  v26(v22, v18);
  v27 = [objc_opt_self() allVoices];
  sub_100007848(0, &qword_100010A80, AXKonaVoice_ptr);
  v28 = sub_100008228();

  v169 = v10;
  v167 = v2;
  if (v28 >> 62)
  {
LABEL_42:
    v29 = sub_100008338();
    if (v29)
    {
      goto LABEL_3;
    }

LABEL_43:

    result = AXTTSLogKona();
    if (result)
    {
      v84 = result;
      sub_100008268();
      sub_1000073B0(&qword_100010AC0, &qword_100008A18);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_100008960;
      v86 = [a1 voice];
      v87 = [v86 identifier];

      v88 = sub_1000081A8();
      v90 = v89;

      *(v85 + 56) = &type metadata for String;
      *(v85 + 64) = sub_1000074B8();
      *(v85 + 32) = v88;
      *(v85 + 40) = v90;
      sub_100008118();
    }

    goto LABEL_68;
  }

  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v29)
  {
    goto LABEL_43;
  }

LABEL_3:
  v30 = 0;
  v181 = (v28 & 0xC000000000000001);
  v182 = a1;
  while (v181)
  {
    v31 = sub_1000082D8();
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_16;
    }

LABEL_7:
    v183 = v31;
    v33 = [v31 identifier];
    v34 = sub_1000081A8();
    v36 = v35;

    v37 = [a1 voice];
    v38 = [v37 identifier];

    v39 = sub_1000081A8();
    v41 = v40;

    if (v34 == v39 && v36 == v41)
    {
      goto LABEL_17;
    }

    v43 = sub_100008358();

    if (v43)
    {
      goto LABEL_18;
    }

    ++v30;
    a1 = v182;
    if (v32 == v29)
    {
      goto LABEL_43;
    }
  }

  if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_42;
  }

  v31 = *(v28 + 8 * v30 + 32);
  v32 = v30 + 1;
  if (!__OFADD__(v30, 1))
  {
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
LABEL_17:

LABEL_18:

  v44 = v182;

  v45 = [v44 ssmlRepresentation];
  sub_1000081A8();

  sub_1000080F8();
  v46 = qword_1000109C8;
  v47 = v180;
  v48 = *(v180 + qword_1000109C8);
  v49 = v48;
  v50 = v183;
  if (!v48)
  {
    v51 = [objc_allocWithZone(AXKonaSpeechEngine) initWithVoice:v183];
    v52 = *(v47 + v46);
    *(v47 + v46) = v51;

    v49 = *(v47 + v46);
    if (!v49)
    {
      result = AXTTSLogKona();
      if (!result)
      {
        goto LABEL_69;
      }

      v77 = result;
      sub_100008268();
      sub_1000073B0(&qword_100010AC0, &qword_100008A18);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_100008960;
      v79 = [v182 voice];
      v80 = [v79 identifier];

      v81 = sub_1000081A8();
      v83 = v82;

      *(v78 + 56) = &type metadata for String;
      *(v78 + 64) = sub_1000074B8();
      *(v78 + 32) = v81;
      *(v78 + 40) = v83;
      sub_100008118();

      return (*(v176 + 8))(v179, v177);
    }
  }

  v53 = v49;
  v54 = [v53 voice];
  v55 = [v54 identifier];

  v56 = sub_1000081A8();
  v58 = v57;

  v59 = [v50 identifier];
  v60 = sub_1000081A8();
  v62 = v61;

  if (v56 == v60 && v58 == v62)
  {

    [v53 setVoice:v183];
    if (!v48)
    {
LABEL_26:
      v64 = [v53 ruleSetRunner];
      [v64 reset];

      v65 = [objc_opt_self() sharedInstance];
      v66 = [v183 identifier];
      if (!v66)
      {
        sub_1000081A8();
        v66 = sub_100008198();
      }

      v67 = [v65 resourceWithVoiceId:v66];

      if (v67)
      {
        sub_100008098();
        v68 = sub_100008088();
        v69 = v68;
        v181 = v67;
        if (v68 >> 62)
        {
          goto LABEL_47;
        }

        for (i = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100008338())
        {
          v71 = 0;
          while (1)
          {
            if ((v69 & 0xC000000000000001) != 0)
            {
              v72 = sub_1000082D8();
            }

            else
            {
              if (v71 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_46;
              }

              v72 = *(v69 + 8 * v71 + 32);
            }

            v73 = v72;
            v74 = v71 + 1;
            if (__OFADD__(v71, 1))
            {
              break;
            }

            v75 = [v53 ruleSetRunner];
            [v75 loadRuleSet:v73];

            ++v71;
            if (v74 == i)
            {
              goto LABEL_48;
            }
          }

          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          ;
        }

LABEL_48:
      }
    }
  }

  else
  {
    v63 = sub_100008358();

    [v53 setVoice:v183];
    if (!v48 || (v63 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v91 = [v53 parameters];
  v92 = [v91 copy];

  v156 = v92;
  v181 = [v92 copy];
  v93 = v183;
  v94 = [v183 parameters];
  v95 = [v94 speed];

  v96 = v178;
  v97 = *(v178 + 16);
  v99 = v174;
  v98 = v175;
  v97(v174, v180 + qword_100010970, v175);
  sub_100007FE8();
  v100 = *(v96 + 8);
  v178 = v96 + 8;
  result = v100(v99, v98);
  v101 = aBlock / 100.0;
  if (v185)
  {
    v101 = 1.0;
  }

  v102 = v101 * v95;
  if ((LODWORD(v102) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_66;
  }

  if (v102 <= -9.2234e18)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v154 = v97;
  v155 = v53;
  if (v102 < 9.2234e18)
  {
    v103 = v102;
    sub_1000073B0(&qword_100010AD8, &qword_100008A28);
    v104 = *(sub_100007FD8() - 8);
    v105 = *(v104 + 72);
    v106 = (*(v104 + 80) + 32) & ~*(v104 + 80);
    *(swift_allocObject() + 16) = xmmword_100008960;
    v107 = [v93 languageCode];
    sub_1000081A8();

    sub_100007FC8();
    v108 = [v93 parameters];
    [v108 pitchBase];

    v109 = [v93 parameters];
    [v109 volume];

    v153 = v103;
    sub_100008048();

    v110 = v177;
    v187 = v177;
    v188 = &protocol witness table for TTSMarkup.SpeechDocument;
    v111 = sub_10000750C(&aBlock);
    (*(v176 + 16))(v111, v179, v110);
    v112 = v171;
    sub_1000080D8();
    sub_100007570(&aBlock);
    v113 = v172;
    v114 = v157;
    v115 = v173;
    (*(v172 + 16))(v157, v112, v173);
    (*(v113 + 56))(v114, 0, 1, v115);
    v116 = qword_1000109E0;
    v117 = v180;
    swift_beginAccess();
    sub_1000075BC(v114, v117 + v116);
    swift_endAccess();
    v118 = sub_1000080A8();
    v157 = v119;
    v121 = v174;
    v120 = v175;
    v122 = v154;
    v154(v174, v117 + qword_100010978, v175);
    sub_100007FE8();
    v100(v121, v120);
    v123 = v181;
    if ((v185 & 1) == 0)
    {
      [v181 setHeadSize:aBlock];
    }

    v122(v121, v117 + qword_100010988, v120);
    sub_100007FE8();
    v100(v121, v120);
    if ((v185 & 1) == 0)
    {
      [v123 setPitchFluctuation:aBlock];
    }

    v122(v121, v117 + qword_100010990, v120);
    sub_100007FE8();
    v100(v121, v120);
    v124 = v155;
    if ((v185 & 1) == 0)
    {
      [v123 setBreathiness:aBlock];
    }

    v122(v121, v117 + qword_100010998, v120);
    sub_100007FE8();
    v100(v121, v120);
    if ((v185 & 1) == 0)
    {
      [v123 setRoughness:aBlock];
    }

    v122(v121, v117 + qword_100010980, v120);
    sub_100007FE8();
    v100(v121, v120);
    if ((v185 & 1) == 0)
    {
      [v123 setPitchBase:aBlock];
    }

    [v123 setSpeed:v153];
    v125 = v166;
    v126 = *(v166 + 16);
    v127 = v165;
    v128 = v167;
    v126(v165, v117 + qword_1000109A0, v167);
    sub_100007FE8();
    v129 = v123;
    v130 = *(v125 + 8);
    v130(v127, v128);
    [v124 setHighQualityMode:aBlock];
    v126(v127, v117 + qword_1000109A8, v128);
    sub_100007FE8();
    v130(v127, v128);
    [v124 setPhrasePrediction:aBlock];
    v126(v127, v117 + qword_1000109B0, v128);
    sub_100007FE8();
    v130(v127, v128);
    [v124 setAbbreviationDictionary:aBlock];
    v126(v127, v117 + qword_1000109B8, v128);
    sub_100007FE8();
    v130(v127, v128);
    [v124 setPreferCommunityDictionary:aBlock];
    [v124 setParameters:v129];
    v131 = sub_100008068();
    v132 = v182;
    v133 = [v182 ssmlRepresentation];
    v134 = sub_1000081A8();
    v136 = v135;

    v137 = v162;
    *v162 = v134;
    v137[1] = v136;
    v137[2] = v118;
    v137[3] = v157;
    v138 = v164;
    v160(v137, enum case for TTSSpeechEvent.markupConversion(_:), v164);

    v139 = [v132 jobIdentifier];
    sub_1000081A8();

    sub_100008058();

    v159(v137, v138);
    v140 = [v124 ruleSetRunner];
    v141 = swift_allocObject();
    *(v141 + 16) = v132;
    v188 = sub_100007664;
    v189 = v141;
    aBlock = _NSConcreteStackBlock;
    v185 = 1107296256;
    v142 = v180;
    v186 = sub_1000051F0;
    v187 = &unk_10000C6E0;
    v143 = _Block_copy(&aBlock);
    v144 = v132;

    [v140 setMatchLogger:v143];
    _Block_release(v143);

    v145 = sub_100008198();

    [v124 synthesizeText:v145];

    (*(v172 + 8))(v171, v173);
    (*(v168 + 8))(v170, v169);
    (*(v176 + 8))(v179, v177);
    v146 = *(v142 + qword_1000109E8);
    v147 = v183;
    *(v142 + qword_1000109E8) = v183;
    v148 = v147;

    sub_1000073B0(&qword_100010AD0, &qword_100008A20);
    v149 = swift_allocObject();
    *(v149 + 16) = xmmword_100008950;
    *(v149 + 32) = v132;
    v150 = v132;

    v151 = *(v142 + qword_1000109D8);
    *(v142 + qword_1000109D8) = v149;

    *(v142 + qword_1000109F8) = 0;
    return result;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_10000502C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v28 = a4;
  v29 = a8;
  v26 = a5;
  v27 = a3;
  v12 = sub_100008038();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100008078();
  v17 = sub_100008068();

  v18 = [a7 identifier];
  v19 = sub_1000081A8();
  v21 = v20;

  *v16 = a1;
  v16[1] = a2;
  v22 = v27;
  v16[2] = v26;
  v16[3] = a6;
  v23 = v28;
  v16[4] = v22;
  v16[5] = v23;
  v16[6] = v19;
  v16[7] = v21;
  (*(v13 + 104))(v16, enum case for TTSSpeechEvent.ruleRewrite(_:), v12);
  v24 = [v29 jobIdentifier];
  sub_1000081A8();

  sub_100008058();

  return (*(v13 + 8))(v16, v12);
}

void sub_1000051F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = sub_1000081A8();
  v13 = v12;
  v14 = sub_1000081A8();
  v16 = v15;

  v17 = a6;
  v10(v11, v13, a3, a4, v14, v16, v17);
}

void sub_1000052CC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100003988(v4);
}

uint64_t sub_100005334(unint64_t a1)
{
  v3 = (*(*(sub_1000073B0(&qword_100010AB0, &qword_100008A08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v5 = &v29 - v4;
  v6 = sub_1000080C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  (__chkstk_darwin)();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_1000109D8;
  v12 = *&v1[qword_1000109D8];
  if (!(v12 >> 62))
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    if ((v12 & 0xC000000000000001) != 0)
    {

      v14 = sub_1000082D8();
    }

    else
    {
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_23;
      }

      v14 = *(v12 + 32);
    }

    v15 = [v14 ssmlRepresentation];

    v16 = sub_1000081A8();
    v18 = v17;

    v19 = qword_1000109E0;
    swift_beginAccess();
    sub_1000077C0(&v1[v19], v5, &qword_100010AB0, &qword_100008A08);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      return sub_100007760(v5, &qword_100010AB0, &qword_100008A08);
    }

    v20 = (*(v7 + 32))(v10, v5, v6);
    __chkstk_darwin(v20);
    *(&v29 - 4) = v10;
    *(&v29 - 3) = v16;
    *(&v29 - 2) = v18;
    v21 = sub_10000589C(sub_100007828, (&v29 - 6), a1);
    if (!(v21 >> 62))
    {
      if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

LABEL_23:
    if (!sub_100008338())
    {
      goto LABEL_24;
    }

LABEL_10:
    v22 = [v1 speechSynthesisOutputMetadataBlock];
    if (v22)
    {
      v23 = v22;
      v24 = *&v1[v11];
      if (v24 >> 62)
      {
        if (sub_100008338())
        {
LABEL_13:

          if ((v24 & 0xC000000000000001) == 0)
          {
            if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v25 = *(v24 + 32);
            goto LABEL_16;
          }

LABEL_29:
          v25 = sub_1000082D8();
LABEL_16:
          v26 = v25;

          sub_100007848(0, &qword_100010B20, AVSpeechSynthesisMarker_ptr);
          isa = sub_100008218().super.isa;
          (v23)[2](v23, isa, v26);

          _Block_release(v23);
LABEL_25:

          return (*(v7 + 8))(v10, v6);
        }
      }

      else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      _Block_release(v23);
      __break(1u);
      goto LABEL_29;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (v12 < 0)
  {
    v28 = *&v1[qword_1000109D8];
  }

  result = sub_100008338();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

id sub_100005738@<X0>(id *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = *a1;
  [*a1 originalStringRange];
  sub_1000080A8();
  sub_100008258();
  v9 = v8;

  if (v9 & 1) != 0 || (sub_1000080B8(), (v10))
  {
    result = 0;
LABEL_6:
    *a4 = result;
    return result;
  }

  v14 = a3;
  sub_100007890();
  v12 = sub_1000081D8();
  sub_1000081F8();
  v13 = sub_1000081E8();

  result = [v7 framePosition];
  if (!(result >> 30))
  {
    result = [objc_allocWithZone(AVSpeechSynthesisMarker) initWithMarkerType:1 forTextRange:v12 atByteSampleOffset:{v13, (4 * result)}];
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void *sub_10000589C(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v16 = &_swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100008338())
  {
    v6 = 0;
    v11 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_1000082D8();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v15 = v7;
      a1(&v14, &v15);
      if (v3)
      {

        return v11;
      }

      if (v14)
      {
        sub_100008208();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_100008238();
        }

        sub_100008248();
        v11 = v16;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

Class sub_100005A48()
{
  sub_1000071F8();
  sub_100007848(0, &qword_100010A78, AVSpeechSynthesisProviderVoice_ptr);
  v0.super.isa = sub_100008218().super.isa;

  return v0.super.isa;
}

void sub_100005AB4(id *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = [*a1 name];
  if (!v3)
  {
    sub_1000081A8();
    v3 = sub_100008198();
  }

  v4 = [v2 identifier];
  if (!v4)
  {
    sub_1000081A8();
    v4 = sub_100008198();
  }

  sub_1000073B0(&qword_100010A88, &qword_1000089E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100008960;
  v6 = [v2 languageCode];
  v7 = sub_1000081A8();
  v9 = v8;

  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100008960;
  v11 = [v2 languageCode];
  v12 = sub_1000081A8();
  v14 = v13;

  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  v15 = objc_allocWithZone(AVSpeechSynthesisProviderVoice);
  isa = sub_100008218().super.isa;

  v17 = sub_100008218().super.isa;

  v18 = [v15 initWithName:v3 identifier:v4 primaryLanguages:isa supportedLanguages:v17];

  sub_1000073B0(&qword_100010A90, &qword_1000089E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100008960;
  sub_1000081A8();
  sub_1000082C8();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0x636E6575716F6C45;
  *(inited + 80) = 0xE900000000000065;
  sub_1000070BC(inited);
  swift_setDeallocating();
  sub_100007760(inited + 32, &qword_100010A98, &qword_1000089F0);
  v20 = sub_100008188().super.isa;

  [v18 setExtraAttributes:v20];

  *a2 = v18;
}

void sub_100005D94()
{
  v1 = v0;
  v2 = sub_100008038();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008078();
  v7 = sub_100008068();
  (*(v3 + 104))(v6, enum case for TTSSpeechEvent.receivedStop(_:), v2);
  v8 = qword_1000109D8;
  v9 = *(v1 + qword_1000109D8);
  if (v9 >> 62)
  {
    if (v9 < 0)
    {
      v12 = *(v1 + qword_1000109D8);
    }

    if (!sub_100008338())
    {
      goto LABEL_10;
    }
  }

  else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    sub_100008058();

    (*(v3 + 8))(v6, v2);
    [*(v1 + qword_1000109C8) cancelSynthesis];
    v13 = *(v1 + v8);
    *(v1 + v8) = &_swiftEmptyArrayStorage;

    *(v1 + qword_1000109F8) = 0;
    v14 = *(v1 + qword_1000109F0);
    *(v1 + qword_1000109F0) = 0;

    return;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {

    v10 = sub_1000082D8();

    goto LABEL_6;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v9 + 32);
LABEL_6:
    v11 = [v10 jobIdentifier];

    sub_1000081A8();
    goto LABEL_10;
  }

  __break(1u);
}

void sub_100005FC8(void *a1)
{
  v1 = a1;
  sub_100005D94();
}

void sub_100006010()
{
  v1 = qword_100010970;
  v2 = sub_1000073B0(&qword_100010AB8, &qword_100008A10);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_100010978, v2);
  v3(v0 + qword_100010980, v2);
  v3(v0 + qword_100010988, v2);
  v3(v0 + qword_100010990, v2);
  v3(v0 + qword_100010998, v2);
  v4 = qword_1000109A0;
  v5 = sub_1000073B0(&qword_100010AA8, &qword_100008A00);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + qword_1000109A8, v5);
  v6(v0 + qword_1000109B0, v5);
  v6(v0 + qword_1000109B8, v5);

  v7 = *(v0 + qword_1000109D8);

  sub_100007760(v0 + qword_1000109E0, &qword_100010AB0, &qword_100008A08);

  v8 = *(v0 + qword_1000109F0);
}

id sub_100006248()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KonaSynthesizerAudioUnit();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100006280(uint64_t a1)
{
  v2 = qword_100010970;
  v3 = sub_1000073B0(&qword_100010AB8, &qword_100008A10);
  v4 = *(*(v3 - 8) + 8);
  v4(a1 + v2, v3);
  v4(a1 + qword_100010978, v3);
  v4(a1 + qword_100010980, v3);
  v4(a1 + qword_100010988, v3);
  v4(a1 + qword_100010990, v3);
  v4(a1 + qword_100010998, v3);
  v5 = qword_1000109A0;
  v6 = sub_1000073B0(&qword_100010AA8, &qword_100008A00);
  v7 = *(*(v6 - 8) + 8);
  v7(a1 + v5, v6);
  v7(a1 + qword_1000109A8, v6);
  v7(a1 + qword_1000109B0, v6);
  v7(a1 + qword_1000109B8, v6);

  v8 = *(a1 + qword_1000109D8);

  sub_100007760(a1 + qword_1000109E0, &qword_100010AB0, &qword_100008A08);

  v9 = *(a1 + qword_1000109F0);
}

uint64_t type metadata accessor for KonaSynthesizerAudioUnit()
{
  result = qword_100010A00;
  if (!qword_100010A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100006510()
{
  sub_100006668();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10000679C();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1000067F4();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_100006668()
{
  if (!qword_100010A38)
  {
    sub_1000066D8(&qword_100010A40, &qword_1000089C0);
    sub_100006720();
    v0 = sub_100008018();
    if (!v1)
    {
      atomic_store(v0, &qword_100010A38);
    }
  }
}

uint64_t sub_1000066D8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100006720()
{
  result = qword_100010A48;
  if (!qword_100010A48)
  {
    sub_1000066D8(&qword_100010A40, &qword_1000089C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010A48);
  }

  return result;
}

void sub_10000679C()
{
  if (!qword_100010A50)
  {
    v0 = sub_100008018();
    if (!v1)
    {
      atomic_store(v0, &qword_100010A50);
    }
  }
}

void sub_1000067F4()
{
  if (!qword_100010A58)
  {
    sub_1000080C8();
    v0 = sub_100008298();
    if (!v1)
    {
      atomic_store(v0, &qword_100010A58);
    }
  }
}

unint64_t sub_100006854(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100008378();
  sub_1000081C8();
  v6 = sub_100008398();

  return sub_100006910(a1, a2, v6);
}

unint64_t sub_1000068CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000082A8(*(v2 + 40));

  return sub_1000069C8(a1, v4);
}

unint64_t sub_100006910(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100008358())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000069C8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100007408(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000082B8();
      sub_100007464(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100006A90(unint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  return result;
}

unint64_t sub_100006AA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000073B0(&qword_100010B00, &qword_100008A40);
    v3 = sub_100008348();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100006854(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100006BA4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() allVoices];
  sub_100007848(0, &qword_100010A80, AXKonaVoice_ptr);
  v5 = sub_100008228();

  if (v5 >> 62)
  {
LABEL_20:
    v6 = sub_100008338();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v39 = v5 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = sub_1000082D8();
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

LABEL_18:

            sub_1000073B0(&qword_100010AF0, &qword_100008A30);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_100008970;
            *(inited + 32) = sub_1000081B8();
            *(inited + 40) = v17;
            *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:100];
            *(inited + 56) = sub_1000081B8();
            *(inited + 64) = v18;
            v19 = [v4 parameters];
            v20 = [v19 headSize];

            *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInteger:v20];
            *(inited + 80) = sub_1000081B8();
            *(inited + 88) = v21;
            v22 = [v4 parameters];
            v23 = [v22 pitchBase];

            *(inited + 96) = [objc_allocWithZone(NSNumber) initWithInteger:v23];
            *(inited + 104) = sub_1000081B8();
            *(inited + 112) = v24;
            v25 = [v4 parameters];
            v26 = [v25 pitchFluctuation];

            *(inited + 120) = [objc_allocWithZone(NSNumber) initWithInteger:v26];
            *(inited + 128) = sub_1000081B8();
            *(inited + 136) = v27;
            v28 = [v4 parameters];
            v29 = [v28 breathiness];

            *(inited + 144) = [objc_allocWithZone(NSNumber) initWithInteger:v29];
            *(inited + 152) = sub_1000081B8();
            *(inited + 160) = v30;
            v31 = [v4 parameters];
            v32 = [v31 roughness];

            *(inited + 168) = [objc_allocWithZone(NSNumber) initWithInteger:v32];
            *(inited + 176) = sub_1000081B8();
            *(inited + 184) = v33;
            sub_100007848(0, &qword_100010AE8, NSNumber_ptr);
            *(inited + 192) = sub_100008288(0);
            *(inited + 200) = sub_1000081B8();
            *(inited + 208) = v34;
            *(inited + 216) = sub_100008288(1);
            *(inited + 224) = sub_1000081B8();
            *(inited + 232) = v35;
            *(inited + 240) = sub_100008288(0);
            *(inited + 248) = sub_1000081B8();
            *(inited + 256) = v36;
            *(inited + 264) = sub_100008288(0);
            v37 = sub_100006AA0(inited);
            swift_setDeallocating();
            sub_1000073B0(&qword_100010AF8, &qword_100008A38);
            swift_arrayDestroy();

            return v37;
          }
        }

        else
        {
          if (v7 >= *(v39 + 16))
          {
            __break(1u);
            goto LABEL_20;
          }

          v8 = *(v5 + 8 * v7 + 32);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_16;
          }
        }

        v4 = v8;
        v10 = [v8 identifier];
        v11 = sub_1000081A8();
        v13 = v12;

        if (v11 == a1 && v13 == a2)
        {
          goto LABEL_17;
        }

        v15 = sub_100008358();

        if (v15)
        {
          goto LABEL_18;
        }

        ++v7;
      }

      while (v9 != v6);
    }
  }

  return sub_100006AA0(&_swiftEmptyArrayStorage);
}

unint64_t sub_1000070BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000073B0(&qword_100010AA0, &qword_1000089F8);
    v3 = sub_100008348();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000077C0(v4, v13, &qword_100010A98, &qword_1000089F0);
      result = sub_1000068CC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1000073F8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_1000071F8()
{
  v0 = [objc_opt_self() allVoices];
  sub_100007848(0, &qword_100010A80, AXKonaVoice_ptr);
  v1 = sub_100008228();

  if (v1 >> 62)
  {
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v11 = &_swiftEmptyArrayStorage;
      sub_100008308();
      if (v2 < 0)
      {
        break;
      }

      for (i = 0; ; ++i)
      {
        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = sub_1000082D8();
        }

        else
        {
          if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(v1 + 8 * i + 32);
        }

        v6 = v5;
        v9 = v5;
        sub_100005AB4(&v9, &v10);

        sub_1000082E8();
        v7 = v11[2];
        sub_100008318();
        sub_100008328();
        sub_1000082F8();
        if (v4 == v2)
        {

          return v11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v2 = sub_100008338();
      if (!v2)
      {
        goto LABEL_15;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_15:

    return &_swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_1000073B0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

_OWORD *sub_1000073F8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1000074B8()
{
  result = qword_100010AC8;
  if (!qword_100010AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010AC8);
  }

  return result;
}

uint64_t *sub_10000750C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100007570(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000075BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000073B0(&qword_100010AB0, &qword_100008A08);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000762C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000766C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007684()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000076E0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000076F0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007760(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000073B0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000077C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000073B0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100007848(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_100007890()
{
  result = qword_100010B28;
  if (!qword_100010B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010B28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KonaAUParameters(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for KonaAUParameters(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_100007A58(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100007A6C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100007A8C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

__n128 sub_100007ACC(uint64_t a1, uint64_t a2)
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

uint64_t sub_100007AE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100007B00(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

unint64_t sub_100007B68()
{
  result = qword_100010B50;
  if (!qword_100010B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010B50);
  }

  return result;
}

__n128 sub_100007BD0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 sub_100007BF8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100007C04(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100007C24(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_100007C88(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

AUAudioUnit __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioUnitFactory.createAudioUnit(with:)(AudioComponentDescription with)
{
  v3 = v1;
  componentFlagsMask = with.componentFlagsMask;
  v5 = *&with.componentManufacturer;
  v6 = *&with.componentType;
  type metadata accessor for KonaSynthesizerAudioUnit();
  result.super.isa = sub_100001874(v6, v5, componentFlagsMask, 0);
  if (!v2)
  {
    v8 = *(v3 + OBJC_IVAR____TtC15KonaSynthesizer16AudioUnitFactory_audioUnit);
    *(v3 + OBJC_IVAR____TtC15KonaSynthesizer16AudioUnitFactory_audioUnit) = result;
    isa = result.super.isa;
    v10 = result.super.isa;

    return isa;
  }

  return result;
}

id AudioUnitFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudioUnitFactory.init()()
{
  *&v0[OBJC_IVAR____TtC15KonaSynthesizer16AudioUnitFactory_audioUnit] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioUnitFactory();
  return objc_msgSendSuper2(&v2, "init");
}

id AudioUnitFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioUnitFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}