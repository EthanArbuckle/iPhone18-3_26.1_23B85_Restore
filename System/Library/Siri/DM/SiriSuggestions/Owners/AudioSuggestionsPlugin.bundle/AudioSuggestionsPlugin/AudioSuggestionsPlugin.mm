uint64_t sub_16C8(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(sub_3578(&qword_24668, &qword_1C0F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v141 = &v139 - v5;
  v6 = (*(*(sub_3578(&qword_24670, &qword_1C100) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v146 = &v139 - v7;
  v147 = sub_1B624();
  v144 = *(v147 - 8);
  v8 = v144[8];
  (__chkstk_darwin)();
  v143 = &v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SignalDefinition();
  v148 = *(v10 - 8);
  v11 = *(v148 + 64);
  (__chkstk_darwin)();
  v13 = (&v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a1 + 40);
  v149 = *(a1 + 24);
  v150 = a1;
  sub_37EC(a1, v149);
  v15 = *(a2 + 32);
  v168 = v149;
  v169 = v14;
  sub_35C0(v167);
  sub_1B674();
  v16 = v169;
  v149 = v168;
  sub_37EC(v167, v168);
  v17 = *(a2 + 40);
  v165 = v149;
  v166 = v16;
  sub_35C0(&v164);
  sub_1B664();
  v18 = v166;
  v149 = v165;
  sub_37EC(&v164, v165);
  v20 = *(a2 + 56);
  v19 = *(a2 + 64);
  v162 = v149;
  v163 = v18;
  sub_35C0(v161);
  sub_1B684();
  v21 = v163;
  v149 = v162;
  sub_37EC(v161, v162);
  v22 = *(a2 + 16);
  v23 = *(a2 + 24);
  v159 = v149;
  v160 = v21;
  sub_35C0(v158);
  sub_1B644();
  v24 = v160;
  v149 = v159;
  sub_37EC(v158, v159);
  v25 = *(a2 + 72);
  v26 = *(a2 + 80);
  v156 = v149;
  v157 = v24;
  sub_35C0(v155);
  sub_1B6B4();
  v27 = v157;
  v149 = v156;
  sub_37EC(v155, v156);
  sub_13730(*(a2 + 88));
  v153 = v149;
  v154 = v27;
  sub_35C0(v152);
  sub_1B684();

  v28 = v153;
  v29 = sub_37EC(v152, v153);
  v30 = *(v28 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v139 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151[3] = &type metadata for SiriAudioAssetProvider;
  v151[4] = sub_3624();
  sub_1B654();
  (*(v30 + 8))(v33, v28);
  sub_3678(v151);
  sub_3678(v152);
  sub_3678(v155);
  sub_3678(v158);
  sub_3678(v161);
  sub_3678(&v164);
  sub_3678(v167);
  v140 = a2;
  v34 = *(a2 + 48);
  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = v34 + ((*(v148 + 80) + 32) & ~*(v148 + 80));
    v145 = (v144 + 6);
    v148 = *(v148 + 72);
    *&v149 = v10;
    v142 = (v144 + 4);
    v139 = (v144 + 1);
    while (1)
    {
      sub_36C4(v36, v13);
      sub_3784(v13 + *(v10 + 24), &v164, &qword_24680, &qword_1C108);
      if (v165)
      {
        break;
      }

      sub_3D38(&v164, &qword_24680, &qword_1C108);
      v54 = v146;
      sub_3784(v13 + *(v10 + 20), v146, &qword_24670, &qword_1C100);
      v55 = v147;
      if ((*v145)(v54, 1, v147) == 1)
      {
        sub_3D38(v54, &qword_24670, &qword_1C100);
        v56 = v150[3];
        v57 = sub_37EC(v150, v56);
        v58 = *(v56 - 8);
        v59 = *(v58 + 64);
        __chkstk_darwin(v57);
        v61 = &v139 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
        v62 = *v13;
        sub_1B404();
        (*(v58 + 8))(v61, v56);
        goto LABEL_9;
      }

      v37 = v143;
      (*v142)(v143, v54, v55);
      v38 = v150[3];
      v39 = sub_37EC(v150, v38);
      v144 = &v139;
      v40 = *(v38 - 8);
      v41 = *(v40 + 64);
      __chkstk_darwin(v39);
      v43 = &v139 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      v44 = *v13;
      sub_1B3F4();
      (*(v40 + 8))(v43, v38);
      (*v139)(v37, v147);
      sub_3728(v13);
LABEL_4:
      v10 = v149;
      v36 += v148;
      if (!--v35)
      {
        goto LABEL_10;
      }
    }

    sub_38DC(&v164, v167);
    v45 = v150[3];
    v46 = sub_37EC(v150, v45);
    v47 = *(v45 - 8);
    v48 = *(v47 + 64);
    __chkstk_darwin(v46);
    v50 = &v139 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    v51 = *v13;
    v53 = v13 + *(v52 + 20);
    sub_1B3E4();
    (*(v47 + 8))(v50, v45);
    sub_3678(v167);
LABEL_9:
    sub_3728(v13);
    goto LABEL_4;
  }

LABEL_10:
  v63 = v140;
  v64 = v150;
  if (*(v140 + 120))
  {
    v65 = v150[3];
    v66 = v150[5];
    v67 = sub_37EC(v150, v65);
    v68 = *(v65 - 8);
    v69 = *(v68 + 64);
    __chkstk_darwin(v67);
    v71 = &v139 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
    v63 = v140;
    sub_1B6A4();
    (*(v68 + 8))(v71, v65);
  }

  if (*(v63 + 128))
  {
    v72 = v64[3];
    v73 = v64[5];
    v74 = sub_37EC(v64, v72);
    v75 = *(v72 - 8);
    v76 = *(v75 + 64);
    __chkstk_darwin(v74);
    v78 = &v139 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
    v63 = v140;
    sub_1B694();
    (*(v75 + 8))(v78, v72);
  }

  if (*(v63 + 104))
  {
    v79 = *(v63 + 96);
    v80 = v64[3];
    v81 = sub_37EC(v64, v80);
    v82 = *(v80 - 8);
    v83 = *(v82 + 64);
    __chkstk_darwin(v81);
    v85 = &v139 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1B3D4();
    v86 = v80;
    v63 = v140;
    (*(v82 + 8))(v85, v86);
  }

  if (*(v63 + 89) == 1)
  {
    v87 = v64[3];
    v88 = v64[5];
    v89 = sub_37EC(v64, v87);
    v90 = *(v87 - 8);
    v91 = *(v90 + 64);
    __chkstk_darwin(v89);
    v93 = &v139 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
    v63 = v140;
    sub_1B6C4();
    (*(v90 + 8))(v93, v87);
  }

  sub_3784(v63 + 152, &v164, &qword_24688, &qword_1C110);
  if (v165)
  {
    sub_38DC(&v164, v167);
    v94 = v64[3];
    v95 = v64[5];
    v96 = sub_37EC(v64, v94);
    v97 = *(v94 - 8);
    v98 = *(v97 + 64);
    __chkstk_darwin(v96);
    v100 = &v139 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
    v63 = v140;
    sub_1B634();
    (*(v97 + 8))(v100, v94);
    result = sub_3678(v167);
  }

  else
  {
    result = sub_3D38(&v164, &qword_24688, &qword_1C110);
  }

  v102 = *(v63 + 192);
  v103 = *(v102 + 16);
  if (v103)
  {
    v104 = v102 + 32;
    while (1)
    {
      sub_3878(v104, v167);
      v113 = v64[3];
      v146 = v64[5];
      v145 = sub_37EC(v64, v113);
      v148 = v113;
      *&v149 = &v139;
      v147 = *(v113 - 8);
      v114 = *(v147 + 64);
      __chkstk_darwin(v145);
      v144 = (&v139 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0));
      v116 = v168;
      sub_37EC(v167, v168);
      v117 = (*(*(&v116 + 1) + 8))(v116, *(&v116 + 1));
      if (v117 > 2)
      {
        break;
      }

      if (v117)
      {
        if (v117 == 1)
        {
          v142 = 0x614E747369747261;
          v118 = 0xEA0000000000656DLL;
        }

        else
        {
          v142 = 0x6D614E6F69646172;
          v118 = 0xE900000000000065;
        }

LABEL_36:
        v143 = v118;
        goto LABEL_37;
      }

      v142 = 0x656D614E676E6F73;
      v143 = 0xE800000000000000;
LABEL_37:
      v120 = v168;
      sub_37EC(v167, v168);
      v121 = (*(*(&v120 + 1) + 8))(v120, *(&v120 + 1));
      if (v121 > 2)
      {
        if (v121 == 3)
        {
          v122 = 0x4E74736163646F70;
          v123 = 0xEB00000000656D61;
        }

        else
        {
          v122 = 0x7473696C79616C70;
          if (v121 == 4)
          {
            v124 = 1701667150;
          }

          else
          {
            v124 = 1701869908;
          }

          v123 = v124 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        }
      }

      else if (v121)
      {
        if (v121 == 1)
        {
          v122 = 0x614E747369747261;
          v123 = 0xEA0000000000656DLL;
        }

        else
        {
          v122 = 0x6D614E6F69646172;
          v123 = 0xE900000000000065;
        }
      }

      else
      {
        v123 = 0xE800000000000000;
        v122 = 0x656D614E676E6F73;
      }

      v125 = type metadata accessor for AudioSuggestionResolver();
      v126 = swift_allocObject();
      *(v126 + 16) = v122;
      *(v126 + 24) = v123;
      *&v165 = v125;
      *(&v165 + 1) = sub_3830(&qword_24690, v127, type metadata accessor for AudioSuggestionResolver);
      *&v164 = v126;
      v128 = v168;
      sub_37EC(v167, v168);
      (*(*(&v128 + 1) + 8))(v128, *(&v128 + 1));
      v105 = v168;
      sub_37EC(v167, v168);
      (*(*(&v105 + 1) + 16))(v105, *(&v105 + 1));
      v106 = v168;
      sub_37EC(v167, v168);
      (*(*(&v106 + 1) + 40))(v106, *(&v106 + 1));
      v107 = v168;
      sub_37EC(v167, v168);
      (*(*(&v107 + 1) + 32))(v161, v107, *(&v107 + 1));
      v108 = sub_1B594();
      v109 = *(v108 + 48);
      v110 = *(v108 + 52);
      swift_allocObject();
      sub_1B584();
      v111 = v144;
      v112 = v148;
      sub_1B6E4();

      (*(v147 + 8))(v111, v112);
      sub_3D38(&v164, &qword_24698, &qword_1C118);
      result = sub_3678(v167);
      v104 += 40;
      --v103;
      v64 = v150;
      if (!v103)
      {
        goto LABEL_50;
      }
    }

    if (v117 == 3)
    {
      v142 = 0x4E74736163646F70;
      v118 = 0xEB00000000656D61;
    }

    else
    {
      v142 = 0x7473696C79616C70;
      if (v117 == 4)
      {
        v119 = 1701667150;
      }

      else
      {
        v119 = 1701869908;
      }

      v118 = v119 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    }

    goto LABEL_36;
  }

LABEL_50:
  v129 = *(v140 + 200);
  v130 = *(v129 + 16);
  if (v130)
  {
    v131 = v129 + 32;
    do
    {
      sub_3878(v131, v167);
      v132 = v64[3];
      v133 = v64[5];
      v134 = sub_37EC(v64, v132);
      v135 = *(v132 - 8);
      v136 = *(v135 + 64);
      __chkstk_darwin(v134);
      v138 = &v139 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1B6D4();
      sub_3678(v167);
      result = (*(v135 + 8))(v138, v132);
      v131 += 40;
      --v130;
    }

    while (v130);
  }

  return result;
}

uint64_t sub_29FC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_3DA8;

  return (sub_2E60)(a1, a2);
}

uint64_t sub_2AB0()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2AE8()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_2B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2BE4;

  return (sub_38F4)(a2, a3, a4);
}

uint64_t sub_2BE4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void type metadata accessor for INMediaItemType()
{
  if (!qword_24638)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_24638);
    }
  }
}

void *sub_2DA0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2E60(uint64_t a1, uint64_t a2)
{
  *(v2 + 304) = a1;
  *(v2 + 312) = a2;
  return _swift_task_switch(sub_2E80, 0, 0);
}

uint64_t sub_2E80()
{
  if (qword_24468 != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = qword_25C90;
  v0[31] = sub_1B474();
  v0[32] = sub_3830(&qword_24650, 255, &type metadata accessor for DomainOwner);
  v0[28] = v2;

  v7 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[40] = v4;
  *v4 = v0;
  v4[1] = sub_3004;
  v5 = v0[39];

  return v7(v0 + 28);
}

uint64_t sub_3004(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v5 = *v1;
  *(v2 + 328) = a1;

  sub_3678((v2 + 224));

  return _swift_task_switch(sub_310C, 0, 0);
}

uint64_t sub_310C()
{
  v1 = sub_1A8A8();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_34C0(v3, v0 + 16);
      *(v0 + 104);
      v4 = *(v0 + 328);
      v5 = *(v0 + 16);
      v6 = *(v0 + 24);
      *(swift_task_alloc() + 16) = v0 + 16;
      sub_1B754();

      sub_3524(v0 + 16);
      v3 += 208;
      --v2;
    }

    while (v2);
  }

  v7 = *(v0 + 328);
  v8 = type metadata accessor for AudioHintsGenerator();
  v9 = swift_allocObject();
  *(v0 + 288) = v8;
  *(v0 + 296) = sub_3830(&qword_24658, 255, type metadata accessor for AudioHintsGenerator);
  *(v0 + 264) = v9;
  sub_1B744();

  sub_3678((v0 + 264));
  sub_3578(&qword_24660, &qword_1C0F0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BF10;
  sub_1B764();

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_3578(uint64_t *a1, uint64_t *a2)
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

uint64_t *sub_35C0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_3624()
{
  result = qword_24678;
  if (!qword_24678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24678);
  }

  return result;
}

uint64_t sub_3678(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_36C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignalDefinition();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3728(uint64_t a1)
{
  v2 = type metadata accessor for SignalDefinition();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3784(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_3578(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_37EC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_3830(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3878(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_38DC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_38F4(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return _swift_task_switch(sub_3914, 0, 0);
}

uint64_t sub_3914()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v1[3];
  v0[12] = v3;
  v0[13] = v1[4];
  v0[14] = sub_37EC(v1, v3);
  v4 = sub_1B564();
  v6 = v5;
  v0[15] = v4;
  v0[16] = v5;
  v0[17] = swift_getObjectType();
  v0[18] = *(v2 + 16);
  v0[19] = *(v2 + 24);
  v7 = *(*(v6 + 8) + 8);

  v9 = sub_1B954();

  return _swift_task_switch(sub_39F4, v9, v8);
}

uint64_t sub_39F4()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  sub_1B814();
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_3A7C, 0, 0);
}

uint64_t sub_3A7C()
{
  if (*(v0 + 72))
  {
    sub_3D98((v0 + 48), (v0 + 16));
    sub_3578(&qword_246A8, qword_1C130);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1BF10;
    sub_3D98((v0 + 16), (v1 + 32));
    v2 = *(v0 + 8);

    return v2(v1);
  }

  else
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    sub_3D38(v0 + 48, &qword_246A0, &qword_1CB00);
    v8 = sub_1B564();
    v10 = v9;
    *(v0 + 160) = v8;
    *(v0 + 168) = v9;
    *(v0 + 176) = swift_getObjectType();
    *(v0 + 184) = *(v7 + 16);
    *(v0 + 192) = *(v7 + 24);
    v11 = *(*(v10 + 8) + 8);

    v13 = sub_1B954();

    return _swift_task_switch(sub_3BE0, v13, v12);
  }
}

uint64_t sub_3BE0()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  sub_13910(*(v0 + 184), *(v0 + 192));
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_3C68, 0, 0);
}

uint64_t sub_3C68()
{
  if (*(v0 + 72))
  {
    sub_3D98((v0 + 48), (v0 + 16));
    sub_3578(&qword_246A8, qword_1C130);
    v1 = swift_allocObject();
    v1[1] = xmmword_1BF10;
    sub_3D98((v0 + 16), v1 + 2);
  }

  else
  {
    sub_3D38(v0 + 48, &qword_246A0, &qword_1CB00);
    v1 = &_swiftEmptyArrayStorage;
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_3D38(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_3578(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_3D98(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_3DC0(uint64_t *a1, void *a2)
{
  v4 = sub_3578(&qword_246B0, &unk_1C1A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (v31 - v6);
  v8 = *a1;
  v9 = sub_1B4B4();
  if (*(v9 + 16) && (v10 = sub_9D7C(0x6449707061, 0xE500000000000000), (v11 & 1) != 0))
  {
    sub_41F8(*(v9 + 56) + 32 * v10, v32);

    if (swift_dynamicCast())
    {
      v13 = v31[0];
      v12 = v31[1];
LABEL_18:
      *v7 = v13;
      goto LABEL_19;
    }
  }

  else
  {
  }

  v14 = a2[4];
  sub_37EC(a2, a2[3]);
  if (sub_1B574() == 0x6973754D79616C70 && v15 == 0xE900000000000063)
  {
  }

  else
  {
    v17 = sub_1BAB4();

    if ((v17 & 1) == 0)
    {
      v18 = a2[4];
      sub_37EC(a2, a2[3]);
      if (sub_1B574() != 0x646F504179616C70 || v19 != 0xEC00000074736163)
      {
        v20 = sub_1BAB4();

        if (v20)
        {
          goto LABEL_17;
        }

        v25 = a2[4];
        sub_37EC(a2, a2[3]);
        if (sub_1B574() != 0x4E65685479616C70 || v26 != 0xEB00000000737765)
        {
          v27 = sub_1BAB4();

          if ((v27 & 1) == 0)
          {
            v28 = a2[4];
            sub_37EC(a2, a2[3]);
            if (sub_1B574() == 0x676E6F5374616877 && v29 == 0xEE00736968547349)
            {
            }

            else
            {
              v30 = sub_1BAB4();

              if ((v30 & 1) == 0)
              {
                *v7 = 0x6C7070612E6D6F63;
                v12 = 0xEF636973754D2E65;
                goto LABEL_19;
              }
            }

            v12 = 0x800000000001D0C0;
            v13 = 0xD00000000000001ALL;
            goto LABEL_18;
          }

          goto LABEL_17;
        }
      }

LABEL_17:
      v12 = 0x800000000001D0E0;
      v13 = 0xD000000000000012;
      goto LABEL_18;
    }
  }

  *v7 = 0x6C7070612E6D6F63;
  v12 = 0xEE00697269732E65;
LABEL_19:
  v7[1] = v12;
  v21 = enum case for Image.appIcon(_:);
  v22 = sub_1B774();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v7, v21, v22);
  (*(v23 + 56))(v7, 0, 1, v22);
  return sub_1B784();
}

uint64_t sub_41F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for SongNameParameterBuilder(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SongNameParameterBuilder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_43C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_43E8, 0, 0);
}

uint64_t sub_43E8()
{
  v1 = *(v0 + 24);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    v19 = *(v0 + 16);
    v20 = enum case for IntentParameter.ignore(_:);
    goto LABEL_40;
  }

  v3 = v2;
  v4 = *(v0 + 24);
  v5 = [v3 mediaItems];
  if (v5)
  {
    v6 = v5;
    sub_47E0(0, &qword_246C0, INMediaItem_ptr);
    v7 = sub_1B944();

    v38 = v0;
    if (v7 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1BA84())
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = sub_1BA64();
        }

        else
        {
          if (v9 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
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

        v13 = [v10 title];
        if (v13)
        {
          v14 = v13;
          v15 = sub_1B8D4();
          v17 = v16;

          v18 = HIBYTE(v17) & 0xF;
          if ((v17 & 0x2000000000000000) == 0)
          {
            v18 = v15 & 0xFFFFFFFFFFFFLL;
          }

          if (v18)
          {

            v0 = v38;
            goto LABEL_23;
          }
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

    v0 = v38;
  }

  v11 = [v3 mediaContainer];
  if (v11)
  {
LABEL_23:
    if ([v11 type] == &dword_0 + 1 || objc_msgSend(v11, "type") == &dword_0 + 2)
    {
      v21 = [v11 title];
      if (v21)
      {
        v22 = v21;
        v23 = sub_1B8D4();
        v25 = v24;

        v26 = v23 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = 0;
        v25 = 0xE000000000000000;
      }

      v27 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v27 = v26;
      }

      if (v27)
      {
        v28 = [v11 title];
        v29 = *(v0 + 16);
        if (v28)
        {
          v30 = v28;
          v31 = sub_1B8D4();
          v33 = v32;

          *(v29 + 24) = &type metadata for String;
          if (v33)
          {

LABEL_38:
            v19 = *(v0 + 16);
            *v19 = v31;
            v19[1] = v33;
            v34 = &enum case for IntentParameter.directAssignment(_:);
            goto LABEL_39;
          }
        }

        else
        {
          *(v29 + 24) = &type metadata for String;
        }

        v31 = 0;
        v33 = 0xE000000000000000;
        goto LABEL_38;
      }
    }
  }

  v19 = *(v0 + 16);

  v34 = &enum case for IntentParameter.ignore(_:);
LABEL_39:
  v20 = *v34;
LABEL_40:
  v35 = sub_1B4E4();
  (*(*(v35 - 8) + 104))(v19, v20, v35);
  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_4778()
{
  v0 = sub_47E0(0, &qword_246B8, INIntent_ptr);

  return static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)(&unk_1C220, 0, v0);
}

uint64_t sub_47E0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_4828@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v12[1] = a3;
  v5 = sub_1B844();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[4];
  sub_37EC(a2, a2[3]);
  sub_13730(*(a1 + 88));
  sub_E47C(&_swiftEmptyArrayStorage);
  (*(v6 + 104))(v9, enum case for Objective.discoverability(_:), v5);
  sub_1B6F4();

  return (*(v6 + 8))(v9, v5);
}

void *sub_499C(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = &_swiftEmptyArrayStorage;
  v7 = a3 + 32;
  a1(&v11, a3 + 32);
  while (!v3)
  {
    if (v12)
    {
      sub_38DC(&v11, v13);
      sub_38DC(v13, &v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_9AB0(0, v6[2] + 1, 1, v6);
      }

      v9 = v6[2];
      v8 = v6[3];
      if (v9 >= v8 >> 1)
      {
        v6 = sub_9AB0((v8 > 1), v9 + 1, 1, v6);
      }

      v6[2] = v9 + 1;
      sub_38DC(&v11, &v6[5 * v9 + 4]);
    }

    else
    {
      sub_3D38(&v11, &qword_24790, qword_1C328);
    }

    v7 += 208;
    if (!--v4)
    {
      return v6;
    }

    a1(&v11, v7);
  }

  return v6;
}

uint64_t sub_4B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2BE4;

  return sub_52C0(a1, a2, a3);
}

uint64_t sub_4C44(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioHintsGenerator();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_4CAC(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_4D08(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_4D08(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_4DD4(v11, 0, 0, 1, a1, a2);
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
    sub_41F8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_3678(v11);
  return v7;
}

unint64_t sub_4DD4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_4EE0(a5, a6);
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
    result = sub_1BA74();
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

char *sub_4EE0(uint64_t a1, unint64_t a2)
{
  v4 = sub_4F2C(a1, a2);
  sub_505C(&off_20DD0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_4F2C(uint64_t a1, unint64_t a2)
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

  v6 = sub_5148(v5, 0);
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

  result = sub_1BA74();
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
        v10 = sub_1B924();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_5148(v10, 0);
        result = sub_1BA34();
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

uint64_t sub_505C(uint64_t result)
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

  result = sub_51BC(result, v12, 1, v3);
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

void *sub_5148(uint64_t a1, uint64_t a2)
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

  sub_3578(&qword_24788, &qword_1C320);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_51BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_3578(&qword_24788, &qword_1C320);
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

_BYTE **sub_52B0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_52C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[33] = a1;
  v3[34] = a3;
  v4 = *(*(sub_3578(&qword_24770, &qword_1C308) - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v5 = sub_1B454();
  v3[36] = v5;
  v6 = *(v5 - 8);
  v3[37] = v6;
  v7 = *(v6 + 64) + 15;
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_53C4, 0, 0);
}

uint64_t sub_53C4()
{
  v108 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = v2[4];
  sub_37EC(v2, v2[3]);
  sub_1B494();
  v4 = sub_1B554();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  v7 = *(v0 + 280);
  if (v6 == 1)
  {
    sub_3D38(v7, &qword_24770, &qword_1C308);
LABEL_34:
    if (qword_24400 != -1)
    {
      swift_once();
    }

    v76 = sub_1B894();
    sub_5D50(v76, static Logger.audio);
    v77 = sub_1B874();
    v78 = sub_1B9A4();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_0, v77, v78, "AudioHintsGenerator#generateCandidateSuggestions Received an Interaction which was not PlayMedia interaction. Not returning any suggestions.", v79, 2u);
    }

    goto LABEL_39;
  }

  if ((*(v5 + 88))(v7, v4) != enum case for InteractionIntents.siriInteractionIntents(_:))
  {
    (*(v5 + 8))(*(v0 + 280), v4);
    goto LABEL_34;
  }

  v9 = *(v0 + 304);
  v8 = *(v0 + 312);
  v10 = *(v0 + 288);
  v11 = *(v0 + 296);
  v12 = *(v0 + 280);
  (*(v5 + 96))(v12, v4);
  v13 = *(v12 + *(sub_3578(&qword_24778, &qword_1C310) + 48));

  (*(v11 + 32))(v8, v12, v10);
  (*(v11 + 16))(v9, v8, v10);
  if ((*(v11 + 88))(v9, v10) != enum case for SiriSuggestions.Intent.inIntent(_:))
  {
    v23 = *(v0 + 304);
    v24 = *(v0 + 288);
    v25 = *(*(v0 + 296) + 8);
    v25(*(v0 + 312), v24);
    v25(v23, v24);
    goto LABEL_34;
  }

  v14 = *(v0 + 304);
  (*(*(v0 + 296) + 96))(v14, *(v0 + 288));
  v15 = *v14;
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    v26 = *(v0 + 312);
    v27 = *(v0 + 288);
    v28 = *(v0 + 296);

    (*(v28 + 8))(v26, v27);
    goto LABEL_34;
  }

  v17 = v16;
  v18 = v15;
  v19 = [v17 verb];
  v20 = sub_1B8D4();
  v22 = v21;

  if (v20 == 0x6964654D79616C50 && v22 == 0xE900000000000061)
  {
  }

  else
  {
    v29 = sub_1BAB4();

    if ((v29 & 1) == 0)
    {
      (*(*(v0 + 296) + 8))(*(v0 + 312), *(v0 + 288));

      goto LABEL_34;
    }
  }

  v31 = v2[3];
  v30 = v2[4];
  sub_37EC(*(v0 + 264), v31);
  v32 = sub_1B4A4();
  sub_8240(v32, v0 + 224);
  if (qword_24400 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    v33 = sub_1B894();
    sub_5D50(v33, static Logger.audio);
    v34 = sub_1B874();
    v35 = sub_1B984();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v95 = v37;
      *v36 = 136315138;
      sub_7E58();
      sub_3578(&qword_24780, &qword_1C318);
      v38 = v18;
      v39 = sub_1B8A4();
      v41 = v40;

      v42 = v39;
      v18 = v38;
      v43 = sub_4D08(v42, v41, &v95);

      *(v36 + 4) = v43;
      _os_log_impl(&dword_0, v34, v35, "AudioHintsGenerator#generateCandidateSuggestions Received execution parameters:%s", v36, 0xCu);
      sub_3678(v37);
    }

    if (*(v0 + 240))
    {
      break;
    }

    v94 = v18;
    v50 = *(v0 + 232);
    v51 = sub_1AD40(v50);
    v52 = sub_1B874();
    v53 = sub_1B984();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 134218240;
      *(v54 + 4) = *(v51 + 16);
      *(v54 + 12) = 2048;
      *(v54 + 14) = v50;
      _os_log_impl(&dword_0, v52, v53, "AudioHintsGenerator#generateCandidateSuggestions Found %ld candidates which are enabled for INMediaItemType: %ld", v54, 0x16u);
    }

    v18 = *(v51 + 16);
    if (!v18)
    {
LABEL_43:

      v86 = sub_1B874();
      v87 = sub_1B984();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 134217984;
        *(v88 + 4) = _swiftEmptyArrayStorage[2];

        _os_log_impl(&dword_0, v86, v87, "AudioHintsGenerator#generateCandidateSuggestions Returning %ld candidates which are qualified for the current interaction.", v88, 0xCu);
      }

      else
      {
      }

      v89 = *(v0 + 312);
      v91 = *(v0 + 288);
      v90 = *(v0 + 296);
      v92 = *(v0 + 272);
      v93 = swift_task_alloc();
      *(v93 + 16) = v92;
      v80 = sub_499C(sub_5D88, v93, _swiftEmptyArrayStorage);

      (*(v90 + 8))(v89, v91);
      goto LABEL_40;
    }

    v55 = 0;
    v56 = v51 + 32;
    while (v55 < *(v51 + 16))
    {
      sub_34C0(v56, v0 + 16);
      v57 = *(v0 + 160);
      if ((*(v0 + 152))(v0 + 224))
      {
        v58 = *(v0 + 192);
        v105 = *(v0 + 176);
        v106 = v58;
        v107 = *(v0 + 208);
        v59 = *(v0 + 128);
        v101 = *(v0 + 112);
        v102 = v59;
        v60 = *(v0 + 160);
        v103 = *(v0 + 144);
        v104 = v60;
        v61 = *(v0 + 64);
        v97 = *(v0 + 48);
        v98 = v61;
        v62 = *(v0 + 96);
        v99 = *(v0 + 80);
        v100 = v62;
        v63 = *(v0 + 32);
        v95 = *(v0 + 16);
        v96 = v63;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A39C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v65 = _swiftEmptyArrayStorage[2];
        v64 = _swiftEmptyArrayStorage[3];
        if (v65 >= v64 >> 1)
        {
          sub_1A39C((v64 > 1), v65 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v65 + 1;
        v66 = &_swiftEmptyArrayStorage[26 * v65];
        v66[2] = v95;
        v67 = v96;
        v68 = v97;
        v69 = v99;
        v66[5] = v98;
        v66[6] = v69;
        v66[3] = v67;
        v66[4] = v68;
        v70 = v100;
        v71 = v101;
        v72 = v103;
        v66[9] = v102;
        v66[10] = v72;
        v66[7] = v70;
        v66[8] = v71;
        v73 = v104;
        v74 = v105;
        v75 = v107;
        v66[13] = v106;
        v66[14] = v75;
        v66[11] = v73;
        v66[12] = v74;
      }

      else
      {
        sub_3524(v0 + 16);
      }

      ++v55;
      v56 += 208;
      if (v18 == v55)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_48:
    swift_once();
  }

  v44 = sub_1B874();
  v45 = sub_1B9A4();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_0, v44, v45, "AudioHintsGenerator#generateCandidateSuggestions Failed to resolve a MediaItemType on the interaction. Not returning any suggestions.", v46, 2u);
  }

  v47 = *(v0 + 312);
  v49 = *(v0 + 288);
  v48 = *(v0 + 296);

  (*(v48 + 8))(v47, v49);
LABEL_39:
  v80 = _swiftEmptyArrayStorage;
LABEL_40:
  v82 = *(v0 + 304);
  v81 = *(v0 + 312);
  v83 = *(v0 + 280);

  v84 = *(v0 + 8);

  return v84(v80);
}

uint64_t sub_5D50(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_5DAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1B304();
  v49 = *(v5 - 8);
  v6 = *(v49 + 64);
  v7 = __chkstk_darwin(v5);
  v8 = __chkstk_darwin(v7);
  v10 = v45 - v9;
  __chkstk_darwin(v8);
  v56 = v45 - v11;
  sub_41F8(a1, &v54);
  v12 = &type metadata for String;
  result = swift_dynamicCast();
  if (result)
  {
    v14 = sub_1B8E4();
    v46 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = v5;
    v15 = v14;
    v17 = v16;

    v54 = v15;
    v55 = v17;
    v52 = 2128237;
    v53 = 0xE300000000000000;
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_6244();
    v18 = sub_1B9D4();
    v48 = a2;
    v20 = v19;

    v54 = v18;
    v55 = v20;
    v52 = 543516788;
    v53 = 0xE400000000000000;
    v50 = 0;
    v51 = 0xE000000000000000;
    v21 = sub_1B9D4();
    v23 = v22;

    v54 = v21;
    v55 = v23;
    v52 = 0x73696C79616C7020;
    v53 = 0xE900000000000074;
    v50 = 0;
    v51 = 0xE000000000000000;
    v24 = sub_1B9D4();
    v25 = v49;
    v45[1] = v6;
    v27 = v26;

    v54 = v24;
    v55 = v27;
    v52 = 0x6E6F697461747320;
    v53 = 0xE800000000000000;
    v50 = 0;
    v51 = 0xE000000000000000;
    v28 = sub_1B9D4();
    v45[0] = v2;
    v30 = v29;

    v54 = v28;
    v55 = v30;
    v52 = 32;
    v53 = 0xE100000000000000;
    v50 = 0;
    v51 = 0xE000000000000000;
    v31 = sub_1B9D4();
    v33 = v32;

    sub_1B2C4();
    v34 = v46;
    sub_1B2B4();
    v35 = v56;
    sub_1B2E4();
    v36 = *(v25 + 8);
    v37 = v34;
    v38 = v47;
    v36(v37, v47);
    v36(v10, v38);
    v39 = *(v25 + 32);
    v39(v10, v35, v38);
    v40 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v41 = swift_allocObject();
    v39((v41 + v40), v10, v38);
    v42 = sub_6388(v31, v33, sub_6320, v41);
    v44 = v43;
    a2 = v48;
  }

  else
  {
    v12 = 0;
    v42 = 0;
    v44 = 0;
    a2[2] = 0;
  }

  a2[3] = v12;
  *a2 = v42;
  a2[1] = v44;
  return result;
}

unint64_t sub_6244()
{
  result = qword_24798;
  if (!qword_24798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24798);
  }

  return result;
}

uint64_t sub_6298()
{
  v1 = sub_1B304();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_6320()
{
  v1 = *(sub_1B304() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1B2F4() & 1;
}

uint64_t sub_6388(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v21 = a4;
  v19 = 0;
  v20 = 0xE000000000000000;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v9 = 0;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v12 = sub_1BA44();
        v14 = v13;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v18[0] = a1;
          v18[1] = a2 & 0xFFFFFFFFFFFFFFLL;
          v11 = v18 + v9;
        }

        else
        {
          v10 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v10 = sub_1BA74();
          }

          v11 = (v10 + v9);
        }

        v12 = *v11;
        if ((*v11 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v16 = (__clz(v12 ^ 0xFF) - 24);
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v12 = ((v12 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
            v14 = 3;
          }

          else
          {
            v12 = ((v12 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
            v14 = 4;
          }

          goto LABEL_16;
        }

        if (v16 == 1)
        {
LABEL_15:
          v14 = 1;
        }

        else
        {
          v12 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
          v14 = 2;
        }
      }

LABEL_16:
      v15 = a3(v12);
      if (v4)
      {
      }

      if (v15)
      {
        sub_1B8F4();
      }

      v9 += v14;
      if (v9 >= v6)
      {
        return v19;
      }
    }
  }

  return 0;
}

uint64_t sub_6568(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_6588, 0, 0);
}

uint64_t sub_6588()
{
  v1 = *(v0 + 24);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 24);
    v5 = [v3 mediaContainer];
    if (v5)
    {
      v6 = v5;
      if ([v5 type] == &dword_4 + 2)
      {
        v7 = [v6 title];
        if (v7)
        {
          v8 = v7;
          v9 = sub_1B8D4();
          v11 = v10;

          v12 = v9 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = 0;
          v11 = 0xE000000000000000;
        }

        v15 = HIBYTE(v11) & 0xF;
        if ((v11 & 0x2000000000000000) == 0)
        {
          v15 = v12;
        }

        if (v15)
        {
          v16 = [v6 title];
          v17 = *(v0 + 16);
          if (v16)
          {
            v18 = v16;
            v19 = sub_1B8D4();
            v21 = v20;

            *(v17 + 24) = &type metadata for String;
            if (v21)
            {
              v22 = *(v0 + 24);

LABEL_39:
              v13 = *(v0 + 16);
              *v13 = v19;
              v13[1] = v21;
              v41 = &enum case for IntentParameter.directAssignment(_:);
LABEL_43:
              v14 = *v41;
              goto LABEL_44;
            }
          }

          else
          {
            *(v17 + 24) = &type metadata for String;
          }

          v40 = *(v0 + 24);

          goto LABEL_38;
        }
      }
    }

    v23 = [v3 mediaItems];
    if (!v23)
    {
      v28 = *(v0 + 24);
      goto LABEL_42;
    }

    v24 = v23;
    sub_47E0(0, &qword_246C0, INMediaItem_ptr);
    v25 = sub_1B944();

    if (v25 >> 62)
    {
      result = sub_1BA84();
      if (result)
      {
        goto LABEL_18;
      }
    }

    else
    {
      result = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
LABEL_18:
        if ((v25 & 0xC000000000000001) != 0)
        {
          v27 = sub_1BA64();
        }

        else
        {
          if (!*(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v27 = *(v25 + 32);
        }

        v28 = v27;

        if ([v28 type] == &dword_4 + 3 || objc_msgSend(v28, "type") == &dword_4 + 2)
        {
          v29 = [v28 artist];
          if (v29)
          {
            v30 = v29;
            v31 = sub_1B8D4();
            v33 = v32;

            v34 = v31 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = 0;
            v33 = 0xE000000000000000;
          }

          v35 = HIBYTE(v33) & 0xF;
          if ((v33 & 0x2000000000000000) == 0)
          {
            v35 = v34;
          }

          if (v35)
          {
            v36 = [v28 artist];
            v37 = *(v0 + 16);
            if (v36)
            {
              v38 = v36;
              v19 = sub_1B8D4();
              v21 = v39;

              *(v37 + 24) = &type metadata for String;
              if (v21)
              {

                goto LABEL_39;
              }
            }

            else
            {
              *(v37 + 24) = &type metadata for String;
            }

LABEL_38:
            v19 = 0;
            v21 = 0xE000000000000000;
            goto LABEL_39;
          }
        }

LABEL_42:
        v13 = *(v0 + 16);
        v41 = &enum case for IntentParameter.ignore(_:);
        goto LABEL_43;
      }
    }

    v28 = *(v0 + 24);

    goto LABEL_42;
  }

  v13 = *(v0 + 16);
  v14 = enum case for IntentParameter.ignore(_:);
LABEL_44:
  v42 = sub_1B4E4();
  (*(*(v42 - 8) + 104))(v13, v14, v42);
  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_6958()
{
  v0 = sub_47E0(0, &qword_246B8, INIntent_ptr);

  return static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)(&unk_1C400, 0, v0);
}

uint64_t sub_69C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return _swift_task_switch(sub_69E0, 0, 0);
}

uint64_t sub_69E0()
{
  v1 = *(v0 + 56);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 56);
    v5 = [v3 mediaItems];
    if (v5)
    {
      v6 = v5;
      sub_47E0(0, &qword_246C0, INMediaItem_ptr);
      v7 = sub_1B944();

      v66 = v0;
      if (v7 >> 62)
      {
        goto LABEL_20;
      }

      for (i = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1BA84())
      {
        v9 = 0;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = sub_1BA64();
          }

          else
          {
            if (v9 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
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

          v13 = [v10 title];
          if (v13)
          {
            v14 = v13;
            v15 = sub_1B8D4();
            v17 = v16;

            v18 = HIBYTE(v17) & 0xF;
            if ((v17 & 0x2000000000000000) == 0)
            {
              v18 = v15 & 0xFFFFFFFFFFFFLL;
            }

            if (v18)
            {

              v0 = v66;
              goto LABEL_23;
            }
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

      v0 = v66;
    }

    v11 = [v3 mediaContainer];
    if (v11)
    {
LABEL_23:
      if ([v11 type] == &dword_0 + 1)
      {
        v21 = [v11 artist];
        if (v21)
        {
          v22 = v21;
          v23 = sub_1B8D4();
          v25 = v24;

          v26 = v23 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = 0;
          v25 = 0xE000000000000000;
        }

        v27 = HIBYTE(v25) & 0xF;
        if ((v25 & 0x2000000000000000) == 0)
        {
          v27 = v26;
        }

        if (v27)
        {
          goto LABEL_45;
        }
      }

      if ([v11 type] == &dword_0 + 2)
      {
        v28 = [v11 artist];
        if (v28)
        {
          v29 = v28;
          v30 = sub_1B8D4();
          v32 = v31;

          v33 = v30 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = 0;
          v32 = 0xE000000000000000;
        }

        v34 = HIBYTE(v32) & 0xF;
        if ((v32 & 0x2000000000000000) == 0)
        {
          v34 = v33;
        }

        if (v34)
        {
          goto LABEL_45;
        }
      }

      if ([v11 type] == &dword_0 + 3)
      {
        v35 = [v11 title];
        if (v35)
        {
          v36 = v35;
          v37 = sub_1B8D4();
          v39 = v38;

          v40 = v37 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = 0;
          v39 = 0xE000000000000000;
        }

        v41 = HIBYTE(v39) & 0xF;
        if ((v39 & 0x2000000000000000) == 0)
        {
          v41 = v40;
        }

        if (v41)
        {
LABEL_45:
          v42 = [v11 artist];
          if (v42)
          {
LABEL_46:
            v43 = v42;
            v44 = sub_1B8D4();
            v46 = v45;

LABEL_58:
            v59 = *(v0 + 48);
            v60 = *(v0 + 56);
            v59[3] = sub_3578(&qword_247A0, &qword_1C488);

            *v59 = v44;
            v59[1] = v46;
            v61 = enum case for IntentParameter.directAssignment(_:);
            v62 = sub_1B4E4();
            (*(*(v62 - 8) + 104))(v59, v61, v62);
            goto LABEL_62;
          }

LABEL_57:
          v44 = 0;
          v46 = 0;
          goto LABEL_58;
        }
      }

      if ([v11 type] == &dword_10)
      {
        v47 = [v11 title];
        if (v47)
        {
          v48 = v47;
          v49 = sub_1B8D4();
          v51 = v50;

          v52 = v49 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v52 = 0;
          v51 = 0xE000000000000000;
        }

        v53 = HIBYTE(v51) & 0xF;
        if ((v51 & 0x2000000000000000) == 0)
        {
          v53 = v52;
        }

        if (v53)
        {
          v54 = [v11 identifier];
          if (v54)
          {
            v55 = v54;
            v56 = sub_1B8D4();
            v58 = v57;

            *(v0 + 16) = v56;
            *(v0 + 24) = v58;
            *(v0 + 32) = 0xD000000000000018;
            *(v0 + 40) = 0x800000000001D140;
            sub_6244();
            LOBYTE(v55) = sub_1B9E4();

            if (v55)
            {
              v42 = [v11 title];
              if (v42)
              {
                goto LABEL_46;
              }

              goto LABEL_57;
            }
          }
        }
      }

      v19 = *(v0 + 48);
    }

    else
    {
      v19 = *(v0 + 48);
    }

    v20 = enum case for IntentParameter.ignore(_:);
  }

  else
  {
    v19 = *(v0 + 48);
    v20 = enum case for IntentParameter.ignore(_:);
  }

  v63 = sub_1B4E4();
  (*(*(v63 - 8) + 104))(v19, v20, v63);
LABEL_62:
  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_6F54()
{
  v0 = sub_47E0(0, &qword_246B8, INIntent_ptr);

  return static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)(&unk_1C480, 0, v0);
}

uint64_t *FirstPartyMusicSubscriber.__allocating_init(subscriptionProvider:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_7020(a1, v3);
  v6 = sub_7A34(v5, v1, v3, v4);
  sub_3678(a1);
  return v6;
}

uint64_t sub_7020(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t *FirstPartyMusicSubscriber.init(subscriptionProvider:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_7020(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_79C4(v8, v1, v3, v4);
  sub_3678(a1);
  return v10;
}

uint64_t FirstPartyMusicSubscriber.filter(suggestion:environment:)()
{
  v1[2] = v0;
  v2 = sub_1B894();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_1B3A4();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_1B3C4();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v11 = sub_1B374();
  v1[12] = v11;
  v12 = *(v11 - 8);
  v1[13] = v12;
  v13 = *(v12 + 64) + 15;
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_7330, 0, 0);
}

uint64_t sub_7330()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[2];
  v6 = v5[6];
  sub_37EC(v5 + 2, v5[5]);
  sub_1B3B4();
  sub_3578(&qword_247A8, &qword_1C4B8);
  v7 = *(v3 + 72);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C490;
  v10 = v9 + v8;
  v11 = *(v3 + 104);
  v11(v10, enum case for MusicSubscriptionStatus.unknown(_:), v4);
  v11(v10 + v7, enum case for MusicSubscriptionStatus.notSubscribed(_:), v4);
  sub_1B364();
  LOBYTE(v7) = sub_7788(v2, v9, &type metadata accessor for MusicSubscriptionStatus, &qword_24868, &type metadata accessor for MusicSubscriptionStatus);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v3 + 8))(v2, v4);
  if (v7)
  {
    goto LABEL_3;
  }

  v34 = v0[14];
  v13 = v0[7];
  v12 = v0[8];
  v14 = v0[6];
  sub_3578(&qword_247B0, &unk_1C4C0);
  v15 = *(v13 + 72);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C4A0;
  v18 = v17 + v16;
  v19 = *(v13 + 104);
  v19(v18, enum case for MusicSubscriptionType.notSubscribed(_:), v14);
  v19(v18 + v15, enum case for MusicSubscriptionType.unknown(_:), v14);
  v19(v18 + 2 * v15, enum case for MusicSubscriptionType.appleTVPlus(_:), v14);
  v19(v18 + 3 * v15, enum case for MusicSubscriptionType.match(_:), v14);
  v20 = v12;
  sub_1B354();
  LOBYTE(v12) = sub_7788(v12, v17, &type metadata accessor for MusicSubscriptionType, &qword_24860, &type metadata accessor for MusicSubscriptionType);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v13 + 8))(v20, v14);
  if (v12)
  {
LABEL_3:
    v21 = v0[5];
    sub_1B864();
    v22 = sub_1B874();
    v23 = sub_1B994();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "Filtering out suggestion because Apple Music subscription type/status is either unknown or notSubscribed", v24, 2u);
    }

    v26 = v0[4];
    v25 = v0[5];
    v27 = v0[3];

    (*(v26 + 8))(v25, v27);
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = v0[11];
  v30 = v0[8];
  v31 = v0[5];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v32 = v0[1];

  return v32(v28);
}

BOOL sub_7788(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    v12 = *(a3(0) - 8);
    ++v9;
    v13 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11;
    sub_7B5C(a4, a5);
  }

  while ((sub_1B8C4() & 1) == 0);
  return v10 != v11;
}

uint64_t FirstPartyMusicSubscriber.__deallocating_deinit()
{
  sub_3678((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_78E8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2BE4;

  return FirstPartyMusicSubscriber.filter(suggestion:environment:)();
}

uint64_t sub_7978(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t *sub_79C4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  v7 = sub_35C0(a2 + 2);
  (*(*(a3 - 8) + 32))(v7, a1, a3);
  return a2;
}

uint64_t *sub_7A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FirstPartyMusicSubscriber();
  v11 = swift_allocObject();
  (*(v7 + 16))(v10, a1, a3);
  v11[5] = a3;
  v11[6] = a4;
  v12 = sub_35C0(v11 + 2);
  (*(v7 + 32))(v12, v10, a3);
  return v11;
}

uint64_t sub_7B5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Logger.audio.unsafeMutableAddressor()
{
  if (qword_24400 != -1)
  {
    swift_once();
  }

  v0 = sub_1B894();

  return sub_5D50(v0, static Logger.audio);
}

uint64_t sub_7C08()
{
  v0 = sub_1B894();
  sub_7D34(v0, static Logger.audio);
  sub_5D50(v0, static Logger.audio);
  return sub_1B884();
}

uint64_t static Logger.audio.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_24400 != -1)
  {
    swift_once();
  }

  v2 = sub_1B894();
  v3 = sub_5D50(v2, static Logger.audio);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_7D34(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

__n128 sub_7D98(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_7DAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_7E00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_7E58()
{
  sub_3578(&qword_24870, &qword_1C5B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C540;
  strcpy((inited + 32), "songIsDisliked");
  *(inited + 47) = -18;
  v2 = *v0;
  v3 = sub_3578(&qword_24878, &qword_1C5C0);
  *(inited + 72) = v3;
  v4 = sub_8168(&qword_24880);
  *(inited + 80) = v4;
  v5 = sub_8168(&qword_24888);
  *(inited + 48) = v2;
  *(inited + 88) = v5;
  *(inited + 96) = 0x694C7349676E6F73;
  *(inited + 104) = 0xEB0000000064656BLL;
  v6 = v0[1];
  *(inited + 136) = v3;
  *(inited + 144) = v4;
  *(inited + 112) = v6;
  *(inited + 152) = v5;
  strcpy((inited + 160), "mediaItemType");
  *(inited + 174) = -4864;
  v7 = sub_3578(&qword_24890, &qword_1C5C8);
  *(inited + 200) = v7;
  v8 = sub_81D4(&qword_24898);
  *(inited + 208) = v8;
  v9 = sub_81D4(&qword_248A0);
  *(inited + 216) = v9;
  v10 = v0[16];
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v0 + 1);
  }

  *(inited + 176) = v11;
  *(inited + 184) = v10 & 1;
  *(inited + 224) = 0xD000000000000016;
  *(inited + 232) = 0x800000000001D1E0;
  v12 = v0[17];
  *(inited + 264) = v3;
  *(inited + 272) = v4;
  *(inited + 240) = v12;
  *(inited + 280) = v5;
  *(inited + 288) = 0x6E654C6575657571;
  *(inited + 328) = v7;
  *(inited + 336) = v8;
  v13 = *(v0 + 3);
  *(inited + 296) = 0xEB00000000687467;
  *(inited + 304) = v13;
  *(inited + 312) = v0[32];
  *(inited + 344) = v9;
  *(inited + 352) = 0xD000000000000016;
  *(inited + 360) = 0x800000000001D200;
  v14 = v0[33];
  *(inited + 392) = &type metadata for Bool;
  *(inited + 400) = &protocol witness table for Bool;
  *(inited + 408) = &protocol witness table for Bool;
  *(inited + 368) = v14;
  v15 = sub_E330(inited);
  swift_setDeallocating();
  sub_3578(&qword_248A8, &unk_1C5D0);
  swift_arrayDestroy();
  return v15;
}

uint64_t sub_8120(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_8168(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_8120(&qword_24878, &qword_1C5C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_81D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_8120(&qword_24890, &qword_1C5C8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_8240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    v5 = 2;
    goto LABEL_19;
  }

  v4 = sub_9D7C(0x69447349676E6F73, 0xEE0064656B696C73);
  v5 = 2;
  if (v6)
  {
    sub_860C(*(a1 + 56) + 48 * v4, v27);
    sub_3578(&qword_24780, &qword_1C318);
    if (swift_dynamicCast())
    {
      v5 = v26;
    }

    else
    {
      v5 = 2;
    }
  }

  if (!*(a1 + 16))
  {
LABEL_19:
    v8 = 2;
    v11 = 2;
    if (!*(a1 + 16))
    {
      goto LABEL_25;
    }

LABEL_20:
    v13 = sub_9D7C(0x657449616964656DLL, 0xED0000657079546DLL);
    if (v14)
    {
      sub_860C(*(a1 + 56) + 48 * v13, v27);
      sub_3578(&qword_24780, &qword_1C318);
      if (swift_dynamicCast())
      {
        v15 = 0;
        v16 = v26;
        if (*(a1 + 16))
        {
          goto LABEL_26;
        }

LABEL_23:
        v17 = 0;
        v18 = 1;
        goto LABEL_36;
      }
    }

    goto LABEL_25;
  }

  v7 = sub_9D7C(0x694C7349676E6F73, 0xEB0000000064656BLL);
  v8 = 2;
  if (v9)
  {
    sub_860C(*(a1 + 56) + 48 * v7, v27);
    sub_3578(&qword_24780, &qword_1C318);
    if (swift_dynamicCast())
    {
      v8 = v26;
    }

    else
    {
      v8 = 2;
    }
  }

  if (!*(a1 + 16))
  {
    v11 = 2;
    goto LABEL_25;
  }

  v10 = sub_9D7C(0xD000000000000016, 0x800000000001D1E0);
  v11 = 2;
  if (v12)
  {
    sub_860C(*(a1 + 56) + 48 * v10, v27);
    sub_3578(&qword_24780, &qword_1C318);
    if (swift_dynamicCast())
    {
      v11 = v26;
    }

    else
    {
      v11 = 2;
    }
  }

  if (*(a1 + 16))
  {
    goto LABEL_20;
  }

LABEL_25:
  v16 = 0;
  v15 = 1;
  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

LABEL_26:
  v19 = sub_9D7C(0x6E654C6575657571, 0xEB00000000687467);
  if ((v20 & 1) == 0)
  {
    v17 = 0;
    v18 = 1;
    if (*(a1 + 16))
    {
      goto LABEL_33;
    }

LABEL_36:

    goto LABEL_37;
  }

  sub_860C(*(a1 + 56) + 48 * v19, v27);
  sub_3578(&qword_24780, &qword_1C318);
  v21 = swift_dynamicCast();
  if (v21)
  {
    v17 = v26;
  }

  else
  {
    v17 = 0;
  }

  v18 = v21 ^ 1;
  if (!*(a1 + 16))
  {
    goto LABEL_36;
  }

LABEL_33:
  v22 = sub_9D7C(0xD000000000000016, 0x800000000001D200);
  if ((v23 & 1) == 0)
  {
    goto LABEL_36;
  }

  sub_860C(*(a1 + 56) + 48 * v22, v27);

  sub_3578(&qword_24780, &qword_1C318);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_37:
    v25 = 0;
    goto LABEL_38;
  }

  v25 = v26;
LABEL_38:
  *a2 = v5;
  *(a2 + 1) = v8;
  *(a2 + 8) = v16;
  *(a2 + 16) = v15;
  *(a2 + 17) = v11;
  *(a2 + 24) = v17;
  *(a2 + 32) = v18;
  *(a2 + 33) = v25;
  return result;
}

uint64_t sub_860C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_8670()
{
  sub_3578(&qword_24960, &qword_1C618);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C5E0;
  *(inited + 32) = 0;
  sub_3578(&qword_24958, &qword_1C610);
  v1 = sub_1B4F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BF10;
  if (qword_24420 != -1)
  {
    swift_once();
  }

  v6 = sub_5D50(v1, qword_248C0);
  v31 = *(v2 + 16);
  v32 = v6;
  v31(v5 + v4);
  *(inited + 40) = v5;
  *(inited + 48) = 2;
  if (qword_24448 != -1)
  {
    swift_once();
  }

  v7 = qword_25C70;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BF10;
  (v31)(v8 + v4, v32, v1);

  sub_A398(v8);
  *(inited + 56) = v7;
  *(inited + 64) = 3;
  v9 = qword_25C70;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BF10;
  v11 = qword_24428;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_5D50(v1, qword_248D8);
  (v31)(v10 + v4, v12, v1);
  sub_A398(v10);
  *(inited + 72) = v9;
  *(inited + 80) = 5;
  v13 = qword_25C70;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BF10;
  (v31)(v14 + v4, v32, v1);

  sub_A398(v14);
  *(inited + 88) = v13;
  *(inited + 96) = 4;
  v15 = qword_25C70;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BF10;
  (v31)(v16 + v4, v32, v1);

  sub_A398(v16);
  *(inited + 104) = v15;
  *(inited + 112) = 6;
  v17 = qword_25C70;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BF10;
  (v31)(v18 + v4, v32, v1);

  sub_A398(v18);
  *(inited + 120) = v17;
  *(inited + 128) = 7;
  v19 = qword_25C70;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BF10;
  (v31)(v20 + v4, v32, v1);

  sub_A398(v20);
  *(inited + 136) = v19;
  *(inited + 144) = 8;
  v21 = qword_25C70;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BF10;
  (v31)(v22 + v4, v32, v1);

  sub_A398(v22);
  *(inited + 152) = v21;
  *(inited + 160) = 9;
  v23 = qword_25C70;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BF10;
  (v31)(v24 + v4, v32, v1);

  sub_A398(v24);
  *(inited + 168) = v23;
  *(inited + 176) = 10;
  v25 = qword_25C70;
  *(inited + 184) = qword_25C70;
  *(inited + 192) = 13;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1BF10;
  (v31)(v26 + v4, v32, v1);
  swift_bridgeObjectRetain_n();
  sub_A398(v26);
  *(inited + 200) = v25;
  *(inited + 208) = 12;
  v27 = qword_25C70;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BF10;
  (v31)(v28 + v4, v32, v1);

  sub_A398(v28);
  *(inited + 216) = v27;
  v29 = sub_D8C4(inited);
  swift_setDeallocating();
  sub_3578(&qword_24968, &qword_1C620);
  result = swift_arrayDestroy();
  off_248B0[0] = v29;
  return result;
}

uint64_t sub_8CE8()
{
  v37 = sub_1B5B4();
  *&v35 = *(v37 - 8);
  v0 = *(v35 + 64);
  __chkstk_darwin(v37);
  v34 = v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1B544();
  v32 = *(v33 - 8);
  v2 = *(v32 + 64);
  __chkstk_darwin(v33);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3578(&qword_24960, &qword_1C618);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4A0;
  *(inited + 32) = 3;
  v38 = inited + 32;
  v6 = sub_3578(&qword_24958, &qword_1C610);
  v7 = sub_1B4F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 + 32) & ~v9;
  v11 = *(v8 + 72);
  v36 = 2 * v11;
  v42 = v9;
  v12 = v6;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C490;
  v14 = v13 + v10;
  if (qword_24430 != -1)
  {
    swift_once();
  }

  v15 = sub_5D50(v7, qword_248F0);
  v16 = *(v8 + 16);
  v31 = v15;
  v16(v14);
  if (qword_24440 != -1)
  {
    swift_once();
  }

  v41 = sub_5D50(v7, qword_24920);
  v16(v14 + v11);
  *(inited + 40) = v13;
  *(inited + 48) = 4;
  v39 = v12;
  v40 = v11;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BF10;
  v30[1] = sub_1B7F4();
  if (qword_24418 != -1)
  {
    swift_once();
  }

  v18 = v33;
  v19 = sub_5D50(v33, qword_25C58);
  v20 = v32;
  (*(v32 + 16))(v4, v19, v18);
  v21 = v34;
  sub_1B524();
  (*(v20 + 8))(v4, v18);
  sub_1B794();
  (*(v35 + 8))(v21, v37);
  *(inited + 56) = v17;
  *(inited + 64) = 8;
  v22 = v40;
  v37 = 3 * v40;
  v23 = swift_allocObject();
  v35 = xmmword_1C5F0;
  *(v23 + 16) = xmmword_1C5F0;
  v24 = v31;
  (v16)(v23 + v10, v31, v7);
  (v16)(v23 + v10 + v22, v41, v7);
  if (qword_24420 != -1)
  {
    swift_once();
  }

  v25 = sub_5D50(v7, qword_248C0);
  v26 = v36;
  (v16)(v23 + v10 + v36, v25, v7);
  *(inited + 72) = v23;
  *(inited + 80) = 9;
  v27 = swift_allocObject();
  *(v27 + 16) = v35;
  (v16)(v27 + v10, v24, v7);
  (v16)(v27 + v10 + v40, v41, v7);
  (v16)(v27 + v10 + v26, v25, v7);
  *(inited + 88) = v27;
  v28 = sub_D8C4(inited);
  swift_setDeallocating();
  sub_3578(&qword_24968, &qword_1C620);
  result = swift_arrayDestroy();
  off_248B8[0] = v28;
  return result;
}

uint64_t sub_9278()
{
  v0 = sub_1B514();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B544();
  sub_7D34(v5, qword_25C58);
  sub_5D50(v5, qword_25C58);
  (*(v1 + 104))(v4, enum case for AppEntityDetails.AppEntityCount.single(_:), v0);
  return sub_1B534();
}

uint64_t sub_93BC()
{
  v0 = sub_1B4F4();
  sub_7D34(v0, qword_248C0);
  sub_5D50(v0, qword_248C0);
  sub_1B7F4();
  v1 = sub_1B4C4();
  v4[3] = v1;
  v4[4] = sub_E2E8(&qword_24978, &type metadata accessor for CoreSignalTypes);
  v2 = sub_35C0(v4);
  (*(*(v1 - 8) + 104))(v2, enum case for CoreSignalTypes.app(_:), v1);
  sub_1B7B4();
  sub_1B7E4();
}

uint64_t sub_94EC()
{
  v0 = sub_1B4F4();
  sub_7D34(v0, qword_248D8);
  sub_5D50(v0, qword_248D8);
  sub_1B7F4();
  v1 = sub_1B4C4();
  v4[3] = v1;
  v4[4] = sub_E2E8(&qword_24978, &type metadata accessor for CoreSignalTypes);
  v2 = sub_35C0(v4);
  (*(*(v1 - 8) + 104))(v2, enum case for CoreSignalTypes.app(_:), v1);
  sub_1B7B4();
  sub_1B7E4();
}

uint64_t sub_9674(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  v5 = sub_1B4F4();
  sub_7D34(v5, a2);
  sub_5D50(v5, a2);
  sub_1B7F4();
  a3();
  sub_1B7E4();
}

uint64_t sub_96F8()
{
  sub_3578(&qword_24958, &qword_1C610);
  v0 = sub_1B4F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5F0;
  v5 = v4 + v3;
  if (qword_24430 != -1)
  {
    swift_once();
  }

  v6 = sub_5D50(v0, qword_248F0);
  v7 = *(v1 + 16);
  v7(v5, v6, v0);
  if (qword_24438 != -1)
  {
    swift_once();
  }

  v8 = sub_5D50(v0, qword_24908);
  v7(v5 + v2, v8, v0);
  if (qword_24440 != -1)
  {
    swift_once();
  }

  v9 = sub_5D50(v0, qword_24920);
  result = (v7)(v5 + 2 * v2, v9, v0);
  qword_25C70 = v4;
  return result;
}

size_t sub_98D8(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_3578(&qword_24958, &qword_1C610);
  v10 = *(sub_1B4F4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1B4F4() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_9AB0(void *result, int64_t a2, char a3, void *a4)
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
    sub_3578(&qword_24990, &qword_1C640);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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
    sub_3578(&qword_24998, &qword_1C648);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_9BF8(uint64_t a1, uint64_t a2)
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

  sub_3578(&qword_24958, &qword_1C610);
  v4 = *(sub_1B4F4() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_9CF4(char a1)
{
  v3 = *(v1 + 40);
  sub_1BAD4();
  sub_13730(a1);
  sub_1B904();

  v4 = sub_1BAE4();

  return sub_9DF4(a1, v4);
}

unint64_t sub_9D7C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1BAD4();
  sub_1B904();
  v6 = sub_1BAE4();

  return sub_A2E0(a1, a2, v6);
}

unint64_t sub_9DF4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x7974696E69666661;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x6E69666661736964;
          v7 = 0xEB00000000797469;
          break;
        case 2:
          v7 = 0xE400000000000000;
          v8 = 2036427888;
          break;
        case 3:
          v8 = 0x646F504179616C70;
          v7 = 0xEC00000074736163;
          break;
        case 4:
          v8 = 0xD000000000000010;
          v7 = 0x800000000001CF50;
          break;
        case 5:
          v8 = 0x6973754D79616C70;
          v7 = 0xE900000000000063;
          break;
        case 6:
          v8 = 0x5979425879616C70;
          break;
        case 7:
          v8 = 0x6974724179616C70;
          v7 = 0xEA00000000007473;
          break;
        case 8:
          v7 = 0xE90000000000006FLL;
          v8 = 0x6964615279616C70;
          break;
        case 9:
          v7 = 0xEC0000007473696CLL;
          v8 = 0x79616C5079616C70;
          break;
        case 0xA:
          v8 = 0x4E65685479616C70;
          v7 = 0xEB00000000737765;
          break;
        case 0xB:
          v7 = 0xE500000000000000;
          v8 = 0x6572616873;
          break;
        case 0xC:
          v7 = 0xE700000000000000;
          v8 = 0x656C6666756873;
          break;
        case 0xD:
          v8 = 0x676E6F5374616877;
          v7 = 0xEE00736968547349;
          break;
        default:
          break;
      }

      v9 = 0xE800000000000000;
      v10 = 0x7974696E69666661;
      switch(a1)
      {
        case 1:
          v9 = 0xEB00000000797469;
          if (v8 == 0x6E69666661736964)
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        case 2:
          v9 = 0xE400000000000000;
          if (v8 != 2036427888)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 3:
          v9 = 0xEC00000074736163;
          if (v8 != 0x646F504179616C70)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 4:
          v9 = 0x800000000001CF50;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 5:
          v9 = 0xE900000000000063;
          if (v8 != 0x6973754D79616C70)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 6:
          if (v8 != 0x5979425879616C70)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 7:
          v9 = 0xEA00000000007473;
          if (v8 != 0x6974724179616C70)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 8:
          v9 = 0xE90000000000006FLL;
          if (v8 != 0x6964615279616C70)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 9:
          v9 = 0xEC0000007473696CLL;
          if (v8 != 0x79616C5079616C70)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 10:
          v10 = 0x4E65685479616C70;
          v9 = 0xEB00000000737765;
          goto LABEL_41;
        case 11:
          v9 = 0xE500000000000000;
          if (v8 != 0x6572616873)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 12:
          v9 = 0xE700000000000000;
          if (v8 != 0x656C6666756873)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 13:
          v9 = 0xEE00736968547349;
          if (v8 != 0x676E6F5374616877)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        default:
LABEL_41:
          if (v8 != v10)
          {
            goto LABEL_43;
          }

LABEL_42:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_43:
          v11 = sub_1BAB4();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_A2E0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1BAB4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_A398(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_98D8(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_1B4F4();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_A4C4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_E2E8(&qword_24940, &type metadata accessor for SignalLookupKey);
  v36 = a2;
  v13 = sub_1B8B4();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_E2E8(&qword_24948, &type metadata accessor for SignalLookupKey);
      v23 = sub_1B8C4();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_B764(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_A7A4(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1B4F4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_3578(&qword_24950, &qword_1C608);
  result = sub_1BA14();
  v10 = result;
  if (*(v7 + 16))
  {
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
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_E2E8(&qword_24940, &type metadata accessor for SignalLookupKey);
      result = sub_1B8B4();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_AB00(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_AD54((&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_ACC4(v11, v6, a2, a1);
  }

  return v9;
}

void *sub_ACC4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_AD54(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_AD54(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a2;
  v69 = a1;
  v6 = sub_1B4F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v78 = (v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v13 = v64 - v12;
  v14 = __chkstk_darwin(v11);
  v79 = (v64 - v15);
  result = __chkstk_darwin(v14);
  v68 = v64 - v17;
  v18 = *(a3 + 16);
  v19 = *(a4 + 16);
  v80 = v7 + 16;
  v76 = a4;
  v77 = a3;
  v72 = v7;
  if (v19 >= v18)
  {
    v44 = 0;
    v45 = *(a3 + 56);
    v67 = a3 + 56;
    v46 = 1 << *(a3 + 32);
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v48 = v47 & v45;
    v49 = (v46 + 63) >> 6;
    v75 = a4 + 56;
    v79 = (v7 + 8);
    j = v49;
    v71 = 0;
    if (v48)
    {
      goto LABEL_30;
    }

LABEL_31:
    v51 = v44;
    while (1)
    {
      v44 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v44 >= v49)
      {
LABEL_44:

        return sub_B43C(v69, v65, v71, a3);
      }

      v52 = *(v67 + 8 * v44);
      ++v51;
      if (v52)
      {
        v50 = __clz(__rbit64(v52));
        for (i = ((v52 - 1) & v52); ; i = ((v48 - 1) & v48))
        {
          v53 = v50 | (v44 << 6);
          v54 = *(a3 + 48);
          v55 = *(v7 + 72);
          v73 = v53;
          v56 = *(v7 + 16);
          v56(v78, v54 + v55 * v53, v6);
          v57 = *(a4 + 40);
          sub_E2E8(&qword_24940, &type metadata accessor for SignalLookupKey);
          v58 = sub_1B8B4();
          v59 = -1 << *(a4 + 32);
          v60 = v58 & ~v59;
          if ((*(v75 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60))
          {
            v68 = (v79 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v61 = ~v59;
            while (1)
            {
              v56(v13, *(v76 + 48) + v60 * v55, v6);
              sub_E2E8(&qword_24948, &type metadata accessor for SignalLookupKey);
              v62 = sub_1B8C4();
              v63 = *v79;
              (*v79)(v13, v6);
              if (v62)
              {
                break;
              }

              v60 = (v60 + 1) & v61;
              if (((*(v75 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
              {
                a4 = v76;
                goto LABEL_42;
              }
            }

            result = (v63)(v78, v6);
            v7 = v72;
            *(v69 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v73;
            v49 = j;
            v28 = __OFADD__(v71++, 1);
            a4 = v76;
            a3 = v77;
            v48 = i;
            if (v28)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v63 = *v79;
LABEL_42:
            result = (v63)(v78, v6);
            a3 = v77;
            v7 = v72;
            v49 = j;
            v48 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v50 = __clz(__rbit64(v48));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v71 = 0;
    v20 = a4;
    v21 = 0;
    v23 = v20 + 56;
    v22 = *(v20 + 56);
    v64[0] = v23;
    v24 = 1 << *(v23 - 24);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & v22;
    v27 = (v24 + 63) >> 6;
    v66 = v7 + 32;
    v67 = v27;
    v73 = a3 + 56;
    v78 = (v7 + 8);
    if (v26)
    {
      goto LABEL_9;
    }

LABEL_10:
    v30 = v21;
    while (1)
    {
      v21 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v21 >= v27)
      {
        goto LABEL_44;
      }

      v31 = *(v64[0] + 8 * v21);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        for (j = (v31 - 1) & v31; ; j = (v26 - 1) & v26)
        {
          v32 = *(v7 + 72);
          v33 = *(v76 + 48) + v32 * (v29 | (v21 << 6));
          v34 = v68;
          i = *(v7 + 16);
          v75 = v32;
          i(v68, v33, v6);
          (*(v7 + 32))(v79, v34, v6);
          v35 = *(a3 + 40);
          sub_E2E8(&qword_24940, &type metadata accessor for SignalLookupKey);
          v36 = sub_1B8B4();
          v37 = -1 << *(a3 + 32);
          v38 = v36 & ~v37;
          v39 = v38 >> 6;
          v40 = 1 << v38;
          if (((1 << v38) & *(v73 + 8 * (v38 >> 6))) != 0)
          {
            v64[1] = v78 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v41 = ~v37;
            while (1)
            {
              i(v13, *(v77 + 48) + v38 * v75, v6);
              sub_E2E8(&qword_24948, &type metadata accessor for SignalLookupKey);
              v42 = sub_1B8C4();
              v43 = *v78;
              (*v78)(v13, v6);
              if (v42)
              {
                break;
              }

              v38 = (v38 + 1) & v41;
              v39 = v38 >> 6;
              v40 = 1 << v38;
              if (((1 << v38) & *(v73 + 8 * (v38 >> 6))) == 0)
              {
                a3 = v77;
                goto LABEL_21;
              }
            }

            result = (v43)(v79, v6);
            v26 = j;
            v69[v39] |= v40;
            v7 = v72;
            v28 = __OFADD__(v71++, 1);
            a3 = v77;
            v27 = v67;
            if (v28)
            {
              goto LABEL_48;
            }

            if (!v26)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v43 = *v78;
LABEL_21:
            result = (v43)(v79, v6);
            v7 = v72;
            v27 = v67;
            v26 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v29 = __clz(__rbit64(v26));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_B43C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1B4F4();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_3578(&qword_24950, &qword_1C608);
  result = sub_1BA24();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_E2E8(&qword_24940, &type metadata accessor for SignalLookupKey);
    result = sub_1B8B4();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
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
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_B764(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1B4F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_A7A4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_BA08();
      goto LABEL_12;
    }

    sub_BC40(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_E2E8(&qword_24940, &type metadata accessor for SignalLookupKey);
  v15 = sub_1B8B4();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_E2E8(&qword_24948, &type metadata accessor for SignalLookupKey);
      v23 = sub_1B8C4();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BAC4();
  __break(1u);
  return result;
}

void *sub_BA08()
{
  v1 = v0;
  v2 = sub_1B4F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3578(&qword_24950, &qword_1C608);
  v7 = *v0;
  v8 = sub_1BA04();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_BC40(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B4F4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_3578(&qword_24950, &qword_1C608);
  v10 = sub_1BA14();
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
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_E2E8(&qword_24940, &type metadata accessor for SignalLookupKey);
      result = sub_1B8B4();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_BF5C(uint64_t a1)
{
  v3 = sub_3578(&qword_24938, &qword_1C600);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v20 - v5;
  v7 = sub_1B4F4();
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

    for (i = 0; v15; result = sub_E280(v6))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      sub_CBAC(v12, v6);
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

void *sub_C168(uint64_t a1, void *a2)
{
  v5 = sub_3578(&qword_24938, &qword_1C600);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = (&v68 - v10);
  v12 = sub_1B4F4();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v88 = (&v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v18 = (&v68 - v17);
  __chkstk_darwin(v16);
  v83 = (&v68 - v20);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v69 = v11;
  v71 = v9;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v82 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v90 = (v24 & v21);
  v75 = (63 - v23) >> 6;
  v89 = v19 + 16;
  v80 = (v19 + 48);
  v81 = (v19 + 56);
  v79 = (v19 + 32);
  v85 = a2 + 7;
  v70 = v19;
  v91 = (v19 + 8);

  v26 = 0;
  v72 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v90;
    v28 = v26;
    if (v90)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v69;
      (*(v70 + 16))(v69, *(a1 + 48) + *(v70 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v75 <= (v26 + 1) ? v26 + 1 : v75;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v75)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v69;
    }

    v77 = *v81;
    v77(v32, v33, 1, v12);
    v92 = a1;
    v93 = v22;
    v94 = v82;
    v95 = v30;
    v96 = v2;
    v76 = *v80;
    if (v76(v32, 1, v12) == 1)
    {
      sub_E280(v32);
      goto LABEL_52;
    }

    v74 = *v79;
    v74(v83, v32, v12);
    v34 = a2[5];
    v73 = sub_E2E8(&qword_24940, &type metadata accessor for SignalLookupKey);
    v35 = sub_1B8B4();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v85[v26 >> 6]) != 0)
    {
      break;
    }

    (*v91)(v83, v12);
LABEL_22:
    v26 = v30;
    v90 = v2;
  }

  v68 = v91 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v84 = ~v36;
  v37 = *(v70 + 72);
  v86 = *(v70 + 16);
  v87 = v37;
  while (1)
  {
    v86(v18, a2[6] + v87 * v26, v12);
    v38 = sub_E2E8(&qword_24948, &type metadata accessor for SignalLookupKey);
    v39 = sub_1B8C4();
    v90 = *v91;
    v90(v18, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v84;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v85[v26 >> 6]) == 0)
    {
      a1 = v72;
      v90(v83, v12);
      goto LABEL_22;
    }
  }

  v84 = v38;
  v40 = (v90)(v83, v12);
  v41 = *(a2 + 32);
  v68 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v68;
  a1 = v72;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v69 = &v68;
    __chkstk_darwin(v40);
    v43 = &v68 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v85, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = a2[2];
    v83 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v71;
    v47 = i;
    v48 = v75;
LABEL_26:
    v70 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v86(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v87, v12);
      v53 = 0;
LABEL_39:
      v77(v26, v53, 1, v12);
      v92 = a1;
      v93 = v47;
      v94 = v82;
      v95 = v30;
      v96 = v2;
      if (v76(v26, 1, v12) == 1)
      {
        sub_E280(v26);
        a2 = sub_B43C(v83, v68, v70, a2);
        goto LABEL_52;
      }

      v74(v88, v26, v12);
      v54 = a2[5];
      v55 = sub_1B8B4();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v85[v58 >> 6]) != 0)
      {
        v86(v18, v56[6] + v58 * v87, v12);
        v59 = sub_1B8C4();
        v90(v18, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v85[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v86(v18, v56[6] + v58 * v87, v12);
            v61 = sub_1B8C4();
            v90(v18, v12);
          }

          while ((v61 & 1) == 0);
        }

        v90(v88, v12);
        v62 = v83[v28];
        v83[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v72;
        v26 = v71;
        v47 = i;
        v48 = v75;
        if ((v62 & v22) != 0)
        {
          v46 = v70 - 1;
          if (__OFSUB__(v70, 1))
          {
            __break(1u);
          }

          if (v70 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v90(v88, v12);
        a2 = v56;
        a1 = v72;
        v26 = v71;
        v47 = i;
        v48 = v75;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v64 = v25;

    v83 = a2;
    v65 = v64;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v66 = v83;

      a2 = v66;
      continue;
    }

    break;
  }

  v67 = swift_slowAlloc();
  memcpy(v67, v85, v65);
  a2 = sub_CE54(v67, v68, v83, v26, &v92);

LABEL_52:
  sub_E278();
  return a2;
}

uint64_t sub_CBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1B4F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_E2E8(&qword_24940, &type metadata accessor for SignalLookupKey);
  v35 = a1;
  v13 = sub_1B8B4();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_E2E8(&qword_24948, &type metadata accessor for SignalLookupKey);
      v22 = sub_1B8C4();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_BA08();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_D318(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

void *sub_CE54(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = sub_3578(&qword_24938, &qword_1C600);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v49 - v11;
  v13 = sub_1B4F4();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_E280(v12);
          v48 = v64;

          return sub_B43C(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_E2E8(&qword_24940, &type metadata accessor for SignalLookupKey);
        v38 = sub_1B8B4();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_E2E8(&qword_24948, &type metadata accessor for SignalLookupKey);
        v46 = sub_1B8C4();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

uint64_t sub_D318(int64_t a1)
{
  v3 = sub_1B4F4();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = __chkstk_darwin(v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_1B9F4();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_E2E8(&qword_24940, &type metadata accessor for SignalLookupKey);
        v27 = sub_1B8B4();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

uint64_t sub_D620(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_1B4F4();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v32;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = (&dword_0 + 1);
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1, 1);
      a1 = (a1 + 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_D8C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3578(&qword_24970, &qword_1C628);
    v3 = sub_1BA94();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_9CF4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

void *sub_D9B8(int a1, uint64_t a2)
{
  v22 = a1;
  v3 = sub_1B4D4();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3);
  v21 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v20 - v8;
  v10 = v4[13];
  v10(v20 - v8, enum case for DeliveryVehicle.siriHelp(_:), v3);
  sub_E2E8(&qword_24980, &type metadata accessor for DeliveryVehicle);
  v20[1] = a2;
  sub_1B934();
  sub_1B934();
  if (v25 == v23 && v26 == v24)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BAB4();
  }

  v12 = v4[1];
  v12(v9, v3);

  if (v11)
  {
    if (qword_24408 != -1)
    {
      swift_once();
    }

    v13 = off_248B0[0];
    if (!*(off_248B0[0] + &dword_10))
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  else
  {
    v14 = v21;
    v10(v21, enum case for DeliveryVehicle.assistantSuggestions(_:), v3);
    sub_1B934();
    sub_1B934();
    if (v25 == v23 && v26 == v24)
    {
      v12(v14, v3);
    }

    else
    {
      v15 = sub_1BAB4();
      v12(v14, v3);

      if ((v15 & 1) == 0)
      {
        return &_swiftEmptyArrayStorage;
      }
    }

    if (qword_24410 != -1)
    {
      swift_once();
    }

    v13 = off_248B8[0];
    if (!*(off_248B8[0] + &dword_10))
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  v16 = sub_9CF4(v22);
  if (v17)
  {
    v18 = *(*&stru_20.segname[v13 + 16] + 8 * v16);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_DCF8(uint64_t a1)
{
  v2 = sub_1B4F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_E2E8(&qword_24940, &type metadata accessor for SignalLookupKey);
  result = sub_1B964();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_A4C4(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

char *sub_DE94(char a1)
{
  if (qword_24408 != -1)
  {
    swift_once();
  }

  v2 = off_248B0[0];
  if (*(off_248B0[0] + &dword_10) && (v3 = sub_9CF4(a1), (v4 & 1) != 0))
  {
    v5 = *(*&stru_20.segname[v2 + 16] + 8 * v3);
  }

  else
  {
    v5 = &_swiftEmptyArrayStorage;
  }

  v6 = sub_DCF8(v5);

  if (qword_24410 != -1)
  {
    swift_once();
  }

  v7 = off_248B8[0];
  if (*(off_248B8[0] + &dword_10) && (v8 = sub_9CF4(a1), (v9 & 1) != 0))
  {
    v10 = *(*&stru_20.segname[v7 + 16] + 8 * v8);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v11 = sub_DCF8(v10);

  v12 = sub_AB00(v11, v6);

  v13 = *(v12 + 16);
  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = sub_9BF8(*(v12 + 16), 0);
  v15 = *(sub_1B4F4() - 8);
  v16 = sub_D620(&v18, &v14[(*(v15 + 80) + 32) & ~*(v15 + 80)], v13, v12);
  sub_E278();
  if (v16 != v13)
  {
    __break(1u);
LABEL_16:

    return &_swiftEmptyArrayStorage;
  }

  return v14;
}

void *sub_E06C(char a1)
{
  if (qword_24408 != -1)
  {
    swift_once();
  }

  v2 = off_248B0[0];
  if (*(off_248B0[0] + &dword_10) && (v3 = sub_9CF4(a1), (v4 & 1) != 0))
  {
    v5 = *(*&stru_20.segname[v2 + 16] + 8 * v3);
  }

  else
  {
    v5 = &_swiftEmptyArrayStorage;
  }

  v6 = sub_DCF8(v5);

  if (qword_24410 != -1)
  {
    swift_once();
  }

  v7 = off_248B8[0];
  if (*(off_248B8[0] + &dword_10) && (v8 = sub_9CF4(a1), (v9 & 1) != 0))
  {
    v10 = *(*&stru_20.segname[v7 + 16] + 8 * v8);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v11 = sub_DCF8(v10);

  if (*(v11 + 16) <= v6[2] >> 3)
  {
    goto LABEL_17;
  }

  v12 = sub_C168(v11, v6);

  v13 = v12[2];
  if (v13)
  {
    while (1)
    {
      v11 = sub_9BF8(v13, 0);
      v14 = *(sub_1B4F4() - 8);
      v6 = sub_D620(&v16, (v11 + ((*(v14 + 80) + 32) & ~*(v14 + 80))), v13, v12);
      sub_E278();
      if (v6 == v13)
      {
        break;
      }

      __break(1u);
LABEL_17:
      v16 = v6;
      sub_BF5C(v11);

      v12 = v16;
      v13 = v16[2];
      if (!v13)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:

    return &_swiftEmptyArrayStorage;
  }

  return v11;
}

uint64_t sub_E280(uint64_t a1)
{
  v2 = sub_3578(&qword_24938, &qword_1C600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E2E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_E330(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3578(&qword_24988, &unk_1C630);
    v3 = sub_1BA94();
    v4 = a1 + 32;

    while (1)
    {
      sub_3784(v4, &v13, &qword_248A8, &unk_1C5D0);
      v5 = v13;
      v6 = v14;
      result = sub_9D7C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_E464(v15, (v3[7] + 48 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 64;
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

_OWORD *sub_E464(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

unint64_t sub_E47C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3578(&qword_249A0, &qword_1C650);
    v3 = sub_1BA94();
    v4 = a1 + 32;

    while (1)
    {
      sub_3784(v4, &v13, &qword_249A8, qword_1C658);
      v5 = v13;
      v6 = v14;
      result = sub_9D7C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_3D98(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_E5C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_3578(&qword_24670, &qword_1C100);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_E690(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_3578(&qword_24670, &qword_1C100);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SignalDefinition()
{
  result = qword_24A08;
  if (!qword_24A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_E78C()
{
  sub_E888(319, &qword_24A18, &type metadata accessor for SignalLookupKey, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_E888(319, &qword_24A20, &type metadata accessor for SignalContextProperties, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_E8EC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_E888(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_E8EC()
{
  if (!qword_24A28)
  {
    sub_8120(&unk_24A30, &qword_1C698);
    v0 = sub_1B9B4();
    if (!v1)
    {
      atomic_store(v0, &qword_24A28);
    }
  }
}

uint64_t sub_E960(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return _swift_task_switch(sub_E980, 0, 0);
}

uint64_t sub_E980()
{
  v84 = v0;
  v1 = *(v0 + 56);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    goto LABEL_19;
  }

  v3 = v2;
  v4 = *(v0 + 56);
  v5 = [v3 mediaContainer];
  if (v5)
  {
    goto LABEL_3;
  }

  v51 = [v3 mediaItems];
  if (v51)
  {
    v52 = v51;
    sub_47E0(0, &qword_246C0, INMediaItem_ptr);
    v53 = sub_1B944();

    if (v53 >> 62)
    {
      result = sub_1BA84();
      if (result)
      {
        goto LABEL_27;
      }
    }

    else
    {
      result = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
LABEL_27:
        if ((v53 & 0xC000000000000001) != 0)
        {
          v54 = sub_1BA64();
        }

        else
        {
          if (!*(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v54 = *(v53 + 32);
        }

        v5 = v54;

LABEL_3:
        if ([v5 type] == &dword_4 + 1 && (v6 = objc_msgSend(v5, "identifier")) != 0)
        {
          v7 = v6;
          v8 = sub_1B8D4();
          v10 = v9;

          v11 = [v5 title];
          if (v11)
          {

            if (qword_24400 != -1)
            {
              swift_once();
            }

            v12 = *(v0 + 56);
            v13 = sub_1B894();
            sub_5D50(v13, static Logger.audio);
            v14 = v12;
            v15 = sub_1B874();
            v16 = sub_1B984();

            if (os_log_type_enabled(v15, v16))
            {
              v17 = swift_slowAlloc();
              v80 = swift_slowAlloc();
              v83 = v80;
              *v17 = 136315138;
              v79 = v16;
              v18 = [v3 debugDescription];
              v19 = v8;
              v20 = sub_1B8D4();
              v21 = v10;
              v23 = v22;

              v24 = v20;
              v8 = v19;
              v25 = sub_4D08(v24, v23, &v83);
              v10 = v21;

              *(v17 + 4) = v25;
              _os_log_impl(&dword_0, v15, v79, "PlaylistTypeParameterBuilder#transformer Received playIntent: %s", v17, 0xCu);
              sub_3678(v80);
            }

            *(v0 + 16) = v8;
            *(v0 + 24) = v10;
            *(v0 + 32) = 0xD000000000000016;
            *(v0 + 40) = 0x800000000001D220;
            sub_6244();
            if (sub_1B9E4() & 1) != 0 || (*(v0 + 16) = v8, *(v0 + 24) = v10, *(v0 + 32) = 0xD00000000000001DLL, *(v0 + 40) = 0x800000000001D240, (sub_1B9E4()))
            {

              v26 = [v5 identifier];
              if (!v26)
              {
                goto LABEL_33;
              }

              v27 = v26;
              v28 = sub_1B8D4();
              v30 = v29;

              *(v0 + 16) = v28;
              *(v0 + 24) = v30;
              *(v0 + 32) = 0x2D6D702E6C70;
              *(v0 + 40) = 0xE600000000000000;
              LOBYTE(v27) = sub_1B9E4();

              if ((v27 & 1) == 0)
              {
LABEL_33:
                v55 = *(v0 + 56);
                v56 = sub_1B874();
                v57 = sub_1B984();

                v58 = os_log_type_enabled(v56, v57);
                v35 = *(v0 + 48);
                v59 = *(v0 + 56);
                if (v58)
                {
                  v82 = *(v0 + 56);
                  v60 = swift_slowAlloc();
                  v61 = swift_slowAlloc();
                  v83 = v61;
                  *v60 = 136315138;
                  v62 = [v3 debugDescription];
                  v63 = sub_1B8D4();
                  v65 = v64;

                  v66 = sub_4D08(v63, v65, &v83);

                  *(v60 + 4) = v66;
                  _os_log_impl(&dword_0, v56, v57, "PlaylistTypeParameterBuilder#transformer Apple catalog playlist: %s", v60, 0xCu);
                  sub_3678(v61);

                  *(v35 + 24) = &type metadata for Bool;
                }

                else
                {

                  *(v35 + 24) = &type metadata for Bool;
                }

                *v35 = 0;
                goto LABEL_46;
              }

              v31 = *(v0 + 56);
              v32 = sub_1B874();
              v33 = sub_1B984();

              v34 = os_log_type_enabled(v32, v33);
              v35 = *(v0 + 48);
              v36 = *(v0 + 56);
              if (v34)
              {
                v81 = *(v0 + 56);
                v37 = swift_slowAlloc();
                v38 = swift_slowAlloc();
                v83 = v38;
                *v37 = 136315138;
                v39 = [v3 debugDescription];
                v40 = sub_1B8D4();
                v42 = v41;

                v43 = sub_4D08(v40, v42, &v83);

                *(v37 + 4) = v43;
                v44 = "PlaylistTypeParameterBuilder#transformer personalized Apple playlist: %s";
LABEL_43:
                _os_log_impl(&dword_0, v32, v33, v44, v37, 0xCu);
                sub_3678(v38);

                *(v35 + 24) = &type metadata for Bool;
LABEL_45:

                *v35 = 1;
LABEL_46:
                v46 = &enum case for IntentParameter.directAssignment(_:);
                goto LABEL_20;
              }
            }

            else
            {
              *(v0 + 16) = v8;
              *(v0 + 24) = v10;
              *(v0 + 32) = 0xD000000000000019;
              *(v0 + 40) = 0x800000000001D260;
              if (sub_1B9E4())
              {
                goto LABEL_40;
              }

              *(v0 + 16) = v8;
              *(v0 + 24) = v10;
              *(v0 + 32) = 0xD000000000000019;
              *(v0 + 40) = 0x800000000001D280;
              if (sub_1B9E4() & 1) != 0 || (*(v0 + 16) = v8, *(v0 + 24) = v10, *(v0 + 32) = 0xD000000000000017, *(v0 + 40) = 0x800000000001D2A0, (sub_1B9E4()))
              {
LABEL_40:
              }

              else
              {
                *(v0 + 16) = v8;
                *(v0 + 24) = v10;
                *(v0 + 32) = 0xD000000000000021;
                *(v0 + 40) = 0x800000000001D2C0;
                v74 = sub_1B9E4();

                if ((v74 & 1) == 0)
                {
                  v75 = *(v0 + 48);
                  v76 = *(v0 + 56);
                  v77 = enum case for IntentParameter.ignore(_:);
                  v78 = sub_1B4E4();
                  (*(*(v78 - 8) + 104))(v75, v77, v78);

                  goto LABEL_21;
                }
              }

              v67 = *(v0 + 56);
              v32 = sub_1B874();
              v33 = sub_1B984();

              v68 = os_log_type_enabled(v32, v33);
              v35 = *(v0 + 48);
              v36 = *(v0 + 56);
              if (v68)
              {
                v81 = *(v0 + 56);
                v37 = swift_slowAlloc();
                v38 = swift_slowAlloc();
                v83 = v38;
                *v37 = 136315138;
                v69 = [v3 debugDescription];
                v70 = sub_1B8D4();
                v72 = v71;

                v73 = sub_4D08(v70, v72, &v83);

                *(v37 + 4) = v73;
                v44 = "PlaylistTypeParameterBuilder#transformer personal playlist: %s";
                goto LABEL_43;
              }
            }

            *(v35 + 24) = &type metadata for Bool;
            goto LABEL_45;
          }

          v45 = *(v0 + 56);
        }

        else
        {
          v45 = *(v0 + 56);
        }

        goto LABEL_18;
      }
    }

    v45 = *(v0 + 56);
  }

  else
  {
    v45 = *(v0 + 56);
  }

LABEL_18:

LABEL_19:
  v35 = *(v0 + 48);
  v46 = &enum case for IntentParameter.ignore(_:);
LABEL_20:
  v47 = *v46;
  v48 = sub_1B4E4();
  (*(*(v48 - 8) + 104))(v35, v47, v48);
LABEL_21:
  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_F318()
{
  v0 = sub_47E0(0, &qword_246B8, INIntent_ptr);

  return static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)(&unk_1C710, 0, v0);
}

uint64_t sub_F3A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B504();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_F424(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B504();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for PlayPlaylistAssistantConfigurator()
{
  result = qword_24AC0;
  if (!qword_24AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F4E0()
{
  result = sub_1B504();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_F594(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1B304();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_F654, 0, 0);
}

uint64_t sub_F654()
{
  v57 = v0;
  v1 = *(v0 + 40);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    goto LABEL_35;
  }

  v3 = v2;
  v4 = *(v0 + 40);
  v5 = [v3 mediaContainer];
  if (!v5)
  {
    v12 = [v3 mediaItems];
    if (!v12)
    {
      v49 = *(v0 + 40);
      goto LABEL_34;
    }

    v13 = v12;
    sub_47E0(0, &qword_246C0, INMediaItem_ptr);
    v14 = sub_1B944();

    if (v14 >> 62)
    {
      result = sub_1BA84();
      if (result)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
LABEL_9:
        if ((v14 & 0xC000000000000001) != 0)
        {
          v16 = sub_1BA64();
        }

        else
        {
          if (!*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v16 = *(v14 + 32);
        }

        v5 = v16;

        goto LABEL_3;
      }
    }

    v49 = *(v0 + 40);

    goto LABEL_34;
  }

LABEL_3:
  if ([v5 type] != &dword_4 + 1)
  {
    goto LABEL_28;
  }

  v6 = [v5 title];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1B8D4();
    v10 = v9;

    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = 0;
    v10 = 0xE000000000000000;
  }

  v17 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v17 = v11;
  }

  if (!v17)
  {
LABEL_28:
    v49 = *(v0 + 40);

LABEL_34:
LABEL_35:
    v50 = *(v0 + 32);
    goto LABEL_36;
  }

  if (qword_24400 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 40);
  v19 = sub_1B894();
  sub_5D50(v19, static Logger.audio);
  v20 = v18;
  v21 = sub_1B874();
  v22 = sub_1B984();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v56 = v24;
    *v23 = 136315138;
    v25 = [v3 debugDescription];
    v26 = sub_1B8D4();
    v28 = v27;

    v29 = sub_4D08(v26, v28, &v56);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_0, v21, v22, "PlaylistNameParameterBuilder#transformer Received playIntent: %s", v23, 0xCu);
    sub_3678(v24);
  }

  v30 = [v5 title];
  if (v30)
  {
    v31 = v30;
    v32 = sub_1B8D4();
    v34 = v33;

    v35 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v35 = v32 & 0xFFFFFFFFFFFFLL;
    }

    if (v35)
    {

      v36 = sub_1B874();
      v37 = sub_1B984();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v56 = v39;
        *v38 = 136315138;
        *(v38 + 4) = sub_4D08(v32, v34, &v56);
        _os_log_impl(&dword_0, v36, v37, "PlaylistNameParameterBuilder#transformer mediaItemTitle: %s", v38, 0xCu);
        sub_3678(v39);
      }

      v41 = *(v0 + 56);
      v40 = *(v0 + 64);
      v42 = *(v0 + 48);
      v55 = *(v0 + 40);
      v43 = *(v0 + 32);
      *(v0 + 16) = v32;
      *(v0 + 24) = v34;
      sub_1B2D4();
      sub_6244();
      v44 = sub_1B9C4();
      v46 = v45;
      (*(v41 + 8))(v40, v42);

      v43[3] = &type metadata for String;

      *v43 = v44;
      v43[1] = v46;
      v47 = enum case for IntentParameter.directAssignment(_:);
      v48 = sub_1B4E4();
      (*(*(v48 - 8) + 104))(v43, v47, v48);
      goto LABEL_37;
    }
  }

  v50 = *(v0 + 32);

LABEL_36:
  v51 = enum case for IntentParameter.ignore(_:);
  v52 = sub_1B4E4();
  (*(*(v52 - 8) + 104))(v50, v51, v52);
LABEL_37:
  v53 = *(v0 + 64);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_FBD4()
{
  v0 = sub_47E0(0, &qword_246B8, INIntent_ptr);

  return static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)(&unk_1C850, 0, v0);
}

uint64_t sub_FC3C()
{
  v0 = sub_3578(&qword_246A0, &qword_1CB00);

  return Transformer.init(transform:)(sub_5DAC, 0, &type metadata for Any + 8, v0);
}

uint64_t sub_FCAC(unsigned __int8 a1)
{
  v1 = 0xEC00000079746976;
  v2 = 0x69746375646F7270;
  v3 = 0xE800000000000000;
  v4 = 0x74754F6C6C696863;
  v5 = 0xED00007375636F46;
  v6 = 0x6C75666563616570;
  if (a1 != 3)
  {
    v6 = 0x756F72676B636162;
    v5 = 0xEF636973754D646ELL;
  }

  if (a1 != 2)
  {
    v4 = v6;
    v3 = v5;
  }

  if (a1)
  {
    v2 = 0x636973754D77656ELL;
    v1 = 0xEB0000000078694DLL;
  }

  if (a1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  if (a1 > 1u)
  {
    v1 = v3;
  }

  v9[3] = &type metadata for String;
  v9[0] = v7;
  v9[1] = v1;
  sub_1404C(0x7473696C79616C70, 0xEC000000656D614ELL, v9);
  return sub_3678(v9);
}

Swift::Int sub_FDD8()
{
  v1 = *v0;
  sub_1BAD4();
  sub_1B904();

  return sub_1BAE4();
}

uint64_t sub_FEE4()
{
  *v0;
  *v0;
  *v0;
  sub_1B904();
}

Swift::Int sub_FFDC()
{
  v1 = *v0;
  sub_1BAD4();
  sub_1B904();

  return sub_1BAE4();
}

uint64_t sub_100E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_11160(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10114(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000079746976;
  v4 = 0x69746375646F7270;
  v5 = 0xE800000000000000;
  v6 = 0x74754F6C6C696863;
  v7 = 0xED00007375636F46;
  v8 = 0x6C75666563616570;
  if (v2 != 3)
  {
    v8 = 0x756F72676B636162;
    v7 = 0xEF636973754D646ELL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x636973754D77656ELL;
    v3 = 0xEB0000000078694DLL;
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

uint64_t sub_101EC(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_1B4D4();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = sub_3578(&qword_24B08, &unk_1C860);
  v2[11] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v8 = *(*(sub_3578(&qword_24B10, &qword_1CB20) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_10338, 0, 0);
}

uint64_t sub_10338()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);
  sub_1B5E4();
  (*(v6 + 104))(v2, enum case for DeliveryVehicle.assistantSuggestions(_:), v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  v8 = *(v4 + 48);
  sub_10E78(v1, v3);
  sub_10E78(v2, v3 + v8);
  v9 = *(v6 + 48);
  if (v9(v3, 1, v5) == 1)
  {
    v10 = *(v0 + 120);
    v11 = *(v0 + 64);
    sub_3D38(*(v0 + 112), &qword_24B10, &qword_1CB20);
    sub_3D38(v10, &qword_24B10, &qword_1CB20);
    if (v9(v3 + v8, 1, v11) == 1)
    {
      sub_3D38(*(v0 + 96), &qword_24B10, &qword_1CB20);
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v12 = *(v0 + 64);
  sub_10E78(*(v0 + 96), *(v0 + 104));
  v13 = v9(v3 + v8, 1, v12);
  v15 = *(v0 + 112);
  v14 = *(v0 + 120);
  v16 = *(v0 + 104);
  if (v13 == 1)
  {
    v17 = *(v0 + 64);
    v18 = *(v0 + 72);
    sub_3D38(*(v0 + 112), &qword_24B10, &qword_1CB20);
    sub_3D38(v14, &qword_24B10, &qword_1CB20);
    (*(v18 + 8))(v16, v17);
LABEL_6:
    sub_3D38(*(v0 + 96), &qword_24B08, &unk_1C860);
    goto LABEL_7;
  }

  v44 = *(v0 + 96);
  v27 = *(v0 + 72);
  v26 = *(v0 + 80);
  v28 = *(v0 + 64);
  (*(v27 + 32))(v26, v3 + v8, v28);
  sub_10EE8(&qword_24B18, &type metadata accessor for DeliveryVehicle);
  v29 = sub_1B8C4();
  v30 = *(v27 + 8);
  v30(v26, v28);
  sub_3D38(v15, &qword_24B10, &qword_1CB20);
  sub_3D38(v14, &qword_24B10, &qword_1CB20);
  v30(v16, v28);
  sub_3D38(v44, &qword_24B10, &qword_1CB20);
  if (v29)
  {
LABEL_11:
    v31 = *(v0 + 56);
    sub_1B7F4();
    sub_1B5D4();
    sub_1B7A4();
    LOBYTE(v31) = sub_1B7D4();

    if (v31 & 1) != 0 || (v32 = *(v0 + 56), sub_1B5D4(), sub_1B7C4(), LOBYTE(v32) = sub_1B7D4(), , , (v32))
    {
      v33 = *(v0 + 48);
      *(v0 + 128) = *v33;
      v34 = v33[1];
      *(v0 + 136) = v34;
      *(v0 + 144) = swift_getObjectType();
      v35 = *(*(v34 + 8) + 8);
      v36 = sub_1B954();
      v38 = v37;
      v39 = sub_107EC;
    }

    else
    {
      v40 = *(v0 + 48);
      *(v0 + 152) = *v40;
      v41 = v40[1];
      *(v0 + 160) = v41;
      sub_132B0();
      *(v0 + 176) = unk_20ED8;

      *(v0 + 168) = swift_getObjectType();
      v42 = *(*(v41 + 8) + 8);
      v36 = sub_1B954();
      v38 = v43;
      v39 = sub_108E4;
    }

    return _swift_task_switch(v39, v36, v38);
  }

LABEL_7:
  v20 = *(v0 + 112);
  v19 = *(v0 + 120);
  v22 = *(v0 + 96);
  v21 = *(v0 + 104);
  v23 = *(v0 + 80);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_107EC()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v0[5] = &type metadata for String;
  v0[2] = 0x636973754D77656ELL;
  v0[3] = 0xEB0000000078694DLL;
  sub_1404C(0x7473696C79616C70, 0xEC000000656D614ELL, v0 + 2);
  sub_3678(v0 + 2);
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[10];

  v9 = v0[1];

  return v9();
}

uint64_t sub_108E4()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  sub_FCAC(*(v0 + 176));
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 80);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10984(uint64_t a1, uint64_t a2)
{
  v4 = sub_10EE8(&qword_24B00, type metadata accessor for PlayPlaylistAssistantConfigurator);

  return CandidateSuggestionConfigurator.create(actionIdentifier:)(a1, a2, v4);
}

uint64_t sub_10A0C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B504();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10A74(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10B10;

  return sub_101EC(a1, a2);
}

uint64_t sub_10B10()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to CandidateSuggestionConfigurator.isValid(signal:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2BE4;

  return CandidateSuggestionConfigurator.isValid(signal:)(a1, a2, a3);
}

uint64_t sub_10CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to CandidateSuggestionConfigurator.isValidWithDebug(signal:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10D64;

  return CandidateSuggestionConfigurator.isValidWithDebug(signal:)(a1, a2, a3);
}

uint64_t sub_10D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

uint64_t sub_10E78(uint64_t a1, uint64_t a2)
{
  v4 = sub_3578(&qword_24B10, &qword_1CB20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10EE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for PlayPlaylistAssistantConfigurator.Playlist(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlayPlaylistAssistantConfigurator.Playlist(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_110A4()
{
  result = qword_24B20;
  if (!qword_24B20)
  {
    sub_8120(&qword_24B28, qword_1C880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24B20);
  }

  return result;
}

unint64_t sub_1110C()
{
  result = qword_24B30;
  if (!qword_24B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24B30);
  }

  return result;
}

uint64_t sub_11160(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_20DF8;
  v6._object = a2;
  v4 = sub_1BAA4(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_111AC()
{
  sub_3578(&qword_24BD8, &unk_1CE10);
  v0 = *(sub_1B334() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C960;
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  result = sub_1B314();
  qword_25C78 = v3;
  return result;
}

uint64_t sub_113D4()
{
  sub_3578(&qword_24BD8, &unk_1CE10);
  v0 = *(sub_1B334() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C970;
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  sub_1B314();
  result = sub_1B314();
  qword_25C80 = v3;
  return result;
}

uint64_t sub_118F8()
{
  sub_3578(&qword_24BD0, &unk_1C9D0);
  v0 = sub_1B464();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C980;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for DeviceType.iPhone(_:), v0);
  v6(v5 + v2, enum case for DeviceType.iPad(_:), v0);
  v6(v5 + 2 * v2, enum case for DeviceType.watch(_:), v0);
  v6(v5 + 3 * v2, enum case for DeviceType.pod(_:), v0);
  v6(v5 + 4 * v2, enum case for DeviceType.mac(_:), v0);
  v6(v5 + 5 * v2, enum case for DeviceType.homepod(_:), v0);
  v6(v5 + 6 * v2, enum case for DeviceType.appleTV(_:), v0);
  result = (v6)(v5 + 7 * v2, enum case for DeviceType.carPlay(_:), v0);
  qword_25C88 = v4;
  return result;
}

uint64_t sub_11AEC()
{
  v0 = sub_1B474();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B484();
  qword_25C90 = result;
  return result;
}

unint64_t sub_11B68()
{
  v1 = [v0 privatePlayMediaIntentData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 internalSignals];

  if (v3)
  {
    v4 = sub_1B944();

    v5 = (v4 + 40);
    v6 = *(v4 + 16) + 1;
    do
    {
      v3 = --v6 != 0;
      if (!v6)
      {
        break;
      }

      if (*(v5 - 1) == 0x7365736143657355 && *v5 == 0xEE005879616C503ALL)
      {
        break;
      }

      v5 += 2;
    }

    while ((sub_1BAB4() & 1) == 0);
  }

  return v3;
}

uint64_t sub_11C60(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_11D0C()
{
  v1 = [v0 privatePlayMediaIntentData];
  if (v1 && (v2 = v1, v3 = [v1 internalSignals], v2, v3))
  {
    v4 = sub_1B944();

    v5 = (v4 + 40);
    v6 = *(v4 + 16) + 1;
    while (--v6)
    {
      if (*(v5 - 1) != 0xD000000000000011 || 0x800000000001D330 != *v5)
      {
        v5 += 2;
        if ((sub_1BAB4() & 1) == 0)
        {
          continue;
        }
      }

      return 1;
    }
  }

  else
  {
    v9 = [v0 mediaItems];
    if (v9)
    {
      v10 = v9;
      sub_12384();
      v11 = sub_1B944();

      v37 = v0;
      if (v11 >> 62)
      {
        goto LABEL_29;
      }

      for (i = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1BA84())
      {
        v13 = 0;
        while (1)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v14 = sub_1BA64();
          }

          else
          {
            if (v13 >= *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_28;
            }

            v14 = *(v11 + 8 * v13 + 32);
          }

          v15 = v14;
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          v17 = [v14 title];
          if (v17)
          {
            v18 = v17;
            v19 = sub_1B8D4();
            v21 = v20;

            v22 = HIBYTE(v21) & 0xF;
            if ((v21 & 0x2000000000000000) == 0)
            {
              v22 = v19 & 0xFFFFFFFFFFFFLL;
            }

            if (v22)
            {

              goto LABEL_32;
            }
          }

          ++v13;
          if (v16 == i)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        ;
      }

LABEL_30:

      v0 = v37;
    }

    v15 = [v0 mediaContainer];
    if (v15)
    {
      if ([v15 type] != &dword_0 + 1 && objc_msgSend(v15, "type") != &dword_0 + 2)
      {
        goto LABEL_42;
      }

LABEL_32:
      v23 = [v15 title];
      if (v23)
      {
        v24 = v23;
        v25 = sub_1B8D4();
        v27 = v26;

        v28 = v25 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = 0;
        v27 = 0xE000000000000000;
      }

      v29 = HIBYTE(v27) & 0xF;
      if ((v27 & 0x2000000000000000) == 0)
      {
        v29 = v28;
      }

      if (v29)
      {
        v30 = [v15 artist];
        if (v30)
        {
          v31 = v30;
          v32 = sub_1B8D4();
          v34 = v33;

          v35 = v32 & 0xFFFFFFFFFFFFLL;
        }

        else
        {

          v35 = 0;
          v34 = 0xE000000000000000;
        }

        v36 = HIBYTE(v34) & 0xF;
        if ((v34 & 0x2000000000000000) == 0)
        {
          v36 = v35;
        }

        if (v36)
        {
          return 1;
        }
      }

      else
      {
LABEL_42:
      }
    }
  }

  return 0;
}

unint64_t sub_12068()
{
  v1 = [v0 privatePlayMediaIntentData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 internalSignals];

  if (v3)
  {
    v4 = sub_1B944();

    v5 = (v4 + 40);
    v6 = *(v4 + 16) + 1;
    do
    {
      v3 = --v6 != 0;
      if (!v6)
      {
        break;
      }

      if (*(v5 - 1) == 0xD000000000000012 && 0x800000000001D370 == *v5)
      {
        break;
      }

      v5 += 2;
    }

    while ((sub_1BAB4() & 1) == 0);
  }

  return v3;
}

unint64_t sub_1215C()
{
  v1 = [v0 privatePlayMediaIntentData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 internalSignals];

  if (v3)
  {
    v4 = sub_1B944();

    v5 = (v4 + 40);
    v6 = *(v4 + 16) + 1;
    do
    {
      v3 = --v6 != 0;
      if (!v6)
      {
        break;
      }

      if (*(v5 - 1) == 0xD000000000000019 && 0x800000000001D350 == *v5)
      {
        break;
      }

      v5 += 2;
    }

    while ((sub_1BAB4() & 1) == 0);
  }

  return v3;
}

uint64_t sub_12250(uint64_t a1)
{
  v3 = [v1 mediaItems];
  if (!v3)
  {
LABEL_10:
    v8 = [v1 mediaContainer];
    if (!v8)
    {
      return 0;
    }

LABEL_11:
    v9 = [v8 type];
    v10 = *(a1 + 16);
    v11 = (a1 + 32);
    do
    {
      v12 = v10-- != 0;
      v13 = v12;
      if (!v12)
      {
        break;
      }

      v14 = *v11++;
    }

    while (v14 != v9);

    return v13;
  }

  v4 = v3;
  sub_12384();
  v5 = sub_1B944();

  if (!(v5 >> 62))
  {
    result = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = sub_1BA84();
  if (!result)
  {
LABEL_9:

    goto LABEL_10;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = sub_1BA64();
    goto LABEL_7;
  }

  if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
  {
    v7 = *(v5 + 32);
LABEL_7:
    v8 = v7;

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

unint64_t sub_12384()
{
  result = qword_246C0;
  if (!qword_246C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_246C0);
  }

  return result;
}

uint64_t sub_123F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B504();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_12474(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B504();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for PlayRadioAssistantConfigurator()
{
  result = qword_24C38;
  if (!qword_24C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_12578(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return _swift_task_switch(sub_12598, 0, 0);
}

uint64_t sub_12598()
{
  v1 = *(v0 + 56);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 56);
    v5 = [v3 mediaItems];
    if (v5)
    {
      v6 = v5;
      sub_47E0(0, &qword_246C0, INMediaItem_ptr);
      v7 = sub_1B944();

      if (v7 >> 62)
      {
        result = sub_1BA84();
        if (result)
        {
          goto LABEL_5;
        }
      }

      else
      {
        result = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
        if (result)
        {
LABEL_5:
          if ((v7 & 0xC000000000000001) != 0)
          {
            v9 = sub_1BA64();
          }

          else
          {
            if (!*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
            {
              __break(1u);
              return result;
            }

            v9 = *(v7 + 32);
          }

          v10 = v9;

LABEL_13:
          if ([v10 type] == &dword_10 || objc_msgSend(v10, "type") == &dword_8 + 1)
          {
            v13 = [v10 title];
            if (v13)
            {
              v14 = v13;
              v15 = sub_1B8D4();
              v17 = v16;

              v18 = v15 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v18 = 0;
              v17 = 0xE000000000000000;
            }

            v19 = HIBYTE(v17) & 0xF;
            if ((v17 & 0x2000000000000000) == 0)
            {
              v19 = v18;
            }

            if (v19)
            {
              v20 = [v10 identifier];
              if (!v20)
              {
                goto LABEL_25;
              }

              v21 = v20;
              v22 = sub_1B8D4();
              v24 = v23;

              *(v0 + 16) = v22;
              *(v0 + 24) = v24;
              *(v0 + 32) = 0xD000000000000022;
              *(v0 + 40) = 0x800000000001D390;
              sub_6244();
              LOBYTE(v21) = sub_1B9E4();

              if (v21)
              {
                goto LABEL_25;
              }

              v25 = [v10 identifier];
              if (!v25)
              {
                goto LABEL_25;
              }

              v26 = v25;
              v27 = sub_1B8D4();
              v29 = v28;

              *(v0 + 16) = v27;
              *(v0 + 24) = v29;
              *(v0 + 32) = 0xD000000000000019;
              *(v0 + 40) = 0x800000000001D3C0;
              LOBYTE(v26) = sub_1B9E4();

              if (v26)
              {
LABEL_25:

                v11 = *(v0 + 48);
LABEL_28:
                v12 = enum case for IntentParameter.ignore(_:);
                goto LABEL_29;
              }

              v32 = [v10 title];
              v33 = *(v0 + 48);
              if (v32)
              {
                v34 = v32;
                v35 = sub_1B8D4();
                v37 = v36;

                *(v33 + 24) = &type metadata for String;
                if (v37)
                {

LABEL_38:
                  v38 = *(v0 + 48);
                  *v38 = v35;
                  v38[1] = v37;
                  v39 = enum case for IntentParameter.directAssignment(_:);
                  v40 = sub_1B4E4();
                  (*(*(v40 - 8) + 104))(v38, v39, v40);
                  goto LABEL_30;
                }
              }

              else
              {
                *(v33 + 24) = &type metadata for String;
              }

              v35 = 0;
              v37 = 0xE000000000000000;
              goto LABEL_38;
            }
          }

LABEL_27:
          v11 = *(v0 + 48);

          goto LABEL_28;
        }
      }
    }

    v10 = [v3 mediaContainer];
    if (!v10)
    {
      goto LABEL_27;
    }

    goto LABEL_13;
  }

  v11 = *(v0 + 48);
  v12 = enum case for IntentParameter.ignore(_:);
LABEL_29:
  v30 = sub_1B4E4();
  (*(*(v30 - 8) + 104))(v11, v12, v30);
LABEL_30:
  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_129C0()
{
  v0 = sub_47E0(0, &qword_246B8, INIntent_ptr);

  return static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)(&unk_1CB08, 0, v0);
}

Swift::Int sub_12A28()
{
  sub_1BAD4();
  sub_1B904();
  return sub_1BAE4();
}

Swift::Int sub_12A9C()
{
  sub_1BAD4();
  sub_1B904();
  return sub_1BAE4();
}

uint64_t sub_12AF0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_20FB8;
  v7._object = v3;
  v5 = sub_1BAA4(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_12B74(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_1B4D4();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = sub_3578(&qword_24B08, &unk_1C860);
  v2[11] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v8 = *(*(sub_3578(&qword_24B10, &qword_1CB20) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_12CC0, 0, 0);
}

uint64_t sub_12CC0()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];
  sub_1B5E4();
  (*(v6 + 104))(v2, enum case for DeliveryVehicle.assistantSuggestions(_:), v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  v8 = *(v4 + 48);
  sub_10E78(v1, v3);
  sub_10E78(v2, v3 + v8);
  v9 = *(v6 + 48);
  if (v9(v3, 1, v5) == 1)
  {
    v10 = v0[15];
    v11 = v0[8];
    sub_3D38(v0[14], &qword_24B10, &qword_1CB20);
    sub_3D38(v10, &qword_24B10, &qword_1CB20);
    if (v9(v3 + v8, 1, v11) == 1)
    {
      sub_3D38(v0[12], &qword_24B10, &qword_1CB20);
LABEL_11:
      v31 = v0[6];
      v0[16] = *v31;
      v32 = v31[1];
      v0[17] = v32;
      sub_133F8();

      v0[18] = swift_getObjectType();
      v33 = *(*(v32 + 8) + 8);
      v35 = sub_1B954();

      return _swift_task_switch(sub_1309C, v35, v34);
    }

    goto LABEL_6;
  }

  v12 = v0[8];
  sub_10E78(v0[12], v0[13]);
  v13 = v9(v3 + v8, 1, v12);
  v15 = v0[14];
  v14 = v0[15];
  v16 = v0[13];
  if (v13 == 1)
  {
    v17 = v0[8];
    v18 = v0[9];
    sub_3D38(v0[14], &qword_24B10, &qword_1CB20);
    sub_3D38(v14, &qword_24B10, &qword_1CB20);
    (*(v18 + 8))(v16, v17);
LABEL_6:
    sub_3D38(v0[12], &qword_24B08, &unk_1C860);
    goto LABEL_7;
  }

  v36 = v0[12];
  v27 = v0[9];
  v26 = v0[10];
  v28 = v0[8];
  (*(v27 + 32))(v26, v3 + v8, v28);
  sub_13548(&qword_24B18, &type metadata accessor for DeliveryVehicle);
  v29 = sub_1B8C4();
  v30 = *(v27 + 8);
  v30(v26, v28);
  sub_3D38(v15, &qword_24B10, &qword_1CB20);
  sub_3D38(v14, &qword_24B10, &qword_1CB20);
  v30(v16, v28);
  sub_3D38(v36, &qword_24B10, &qword_1CB20);
  if (v29)
  {
    goto LABEL_11;
  }

LABEL_7:
  v20 = v0[14];
  v19 = v0[15];
  v22 = v0[12];
  v21 = v0[13];
  v23 = v0[10];

  v24 = v0[1];

  return v24();
}

uint64_t sub_1309C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v0[5] = &type metadata for String;
  v0[2] = 0x7265766F63736964;
  v0[3] = 0xE900000000000079;
  sub_1404C(0x6D614E6F69646172, 0xE900000000000065, v0 + 2);
  sub_3678(v0 + 2);
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[10];

  v9 = v0[1];

  return v9();
}

uint64_t sub_13190(uint64_t a1, uint64_t a2)
{
  v4 = sub_13548(&qword_24C78, type metadata accessor for PlayRadioAssistantConfigurator);

  return CandidateSuggestionConfigurator.create(actionIdentifier:)(a1, a2, v4);
}

uint64_t sub_13214(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10B10;

  return sub_12B74(a1, a2);
}

void sub_132B0()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      swift_stdlib_random();
      v6 = (0 * v2) >> 64;
      if (v2)
      {
        if (-v2 % v2)
        {
          while (1)
          {
            swift_stdlib_random();
          }
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = *(v1 + 2);
        if (v4 >= v9)
        {
          goto LABEL_18;
        }

        if (v8 >= v9)
        {
          goto LABEL_19;
        }

        v10 = v1[v4 + 32];
        v11 = v1[v8 + 32];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_13520(v1);
        }

        v12 = *(v1 + 2);
        if (v4 >= v12)
        {
          goto LABEL_20;
        }

        v1[v4 + 32] = v11;
        if (v8 >= v12)
        {
          goto LABEL_21;
        }

        v1[v8 + 32] = v10;
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

void sub_133F8()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      swift_stdlib_random();
      v6 = (0 * v2) >> 64;
      if (v2)
      {
        if (-v2 % v2)
        {
          while (1)
          {
            swift_stdlib_random();
          }
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = *(v1 + 2);
        if (v4 >= v9)
        {
          goto LABEL_18;
        }

        if (v8 >= v9)
        {
          goto LABEL_19;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_13534(v1);
        }

        v10 = *(v1 + 2);
        if (v4 >= v10)
        {
          goto LABEL_20;
        }

        if (v8 >= v10)
        {
          goto LABEL_21;
        }

        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

uint64_t sub_13548(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for PlayRadioAssistantConfigurator.RadioStations(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PlayRadioAssistantConfigurator.RadioStations(_WORD *result, int a2, int a3)
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

unint64_t sub_13674()
{
  result = qword_24C80;
  if (!qword_24C80)
  {
    sub_8120(&qword_24C88, qword_1CB38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24C80);
  }

  return result;
}

unint64_t sub_136DC()
{
  result = qword_24C90;
  if (!qword_24C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24C90);
  }

  return result;
}

unint64_t sub_13730(char a1)
{
  result = 0x7974696E69666661;
  switch(a1)
  {
    case 1:
      result = 0x6E69666661736964;
      break;
    case 2:
      result = 2036427888;
      break;
    case 3:
      result = 0x646F504179616C70;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6973754D79616C70;
      break;
    case 6:
      result = 0x5979425879616C70;
      break;
    case 7:
      result = 0x6974724179616C70;
      break;
    case 8:
      result = 0x6964615279616C70;
      break;
    case 9:
      result = 0x79616C5079616C70;
      break;
    case 10:
      result = 0x4E65685479616C70;
      break;
    case 11:
      result = 0x6572616873;
      break;
    case 12:
      result = 0x656C6666756873;
      break;
    case 13:
      result = 0x676E6F5374616877;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_13910(uint64_t a1, void *a2)
{
  sub_1B804();
  v4 = v11;
  v5 = v12;
  v6 = sub_37EC(v10, v11);
  v9[3] = v4;
  v9[4] = *(v5 + 8);
  v7 = sub_35C0(v9);
  (*(*(v4 - 8) + 16))(v7, v6, v4);
  sub_1A294(a1, a2);
  sub_1B824();

  sub_3678(v9);
  return sub_3678(v10);
}

uint64_t sub_13A2C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000079746976;
  v3 = 0x69746375646F7270;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x636973754D77656ELL;
    }

    else
    {
      v5 = 0x69746375646F7270;
    }

    if (v4)
    {
      v6 = 0xEB0000000078694DLL;
    }

    else
    {
      v6 = 0xEC00000079746976;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE800000000000000;
    v5 = 0x74754F6C6C696863;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6C75666563616570;
    }

    else
    {
      v5 = 0x756F72676B636162;
    }

    if (v4 == 3)
    {
      v6 = 0xED00007375636F46;
    }

    else
    {
      v6 = 0xEF636973754D646ELL;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x74754F6C6C696863;
  v9 = 0x6C75666563616570;
  v10 = 0xED00007375636F46;
  if (a2 != 3)
  {
    v9 = 0x756F72676B636162;
    v10 = 0xEF636973754D646ELL;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 0x636973754D77656ELL;
    v2 = 0xEB0000000078694DLL;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1BAB4();
  }

  return v13 & 1;
}

uint64_t sub_13BF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x4E74736163646F70;
  v5 = 0xEB00000000656D61;
  v6 = 0xEC000000656D614ELL;
  if (a1 != 4)
  {
    v6 = 0xEC00000065707954;
  }

  if (a1 != 3)
  {
    v4 = 0x7473696C79616C70;
    v5 = v6;
  }

  v7 = 0x614E747369747261;
  v8 = 0xEA0000000000656DLL;
  if (a1 != 1)
  {
    v7 = 0x6D614E6F69646172;
    v8 = 0xE900000000000065;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v7 = 0x656D614E676E6F73;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xEB00000000656D61;
      if (v9 != 0x4E74736163646F70)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (a2 == 4)
      {
        v12 = 1701667150;
      }

      else
      {
        v12 = 1701869908;
      }

      v11 = v12 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      if (v9 != 0x7473696C79616C70)
      {
        goto LABEL_34;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xEA0000000000656DLL;
      if (v9 != 0x614E747369747261)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE900000000000065;
      if (v9 != 0x6D614E6F69646172)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v11 = 0xE800000000000000;
    if (v9 != 0x656D614E676E6F73)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
LABEL_34:
    v13 = sub_1BAB4();
    goto LABEL_35;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

Swift::Int sub_13E00()
{
  sub_1BAD4();
  sub_1B904();

  return sub_1BAE4();
}

Swift::Int sub_13F28()
{
  sub_1BAD4();
  sub_1B904();

  return sub_1BAE4();
}

uint64_t sub_1404C(uint64_t a1, void *a2, void *a3)
{
  sub_1B804();
  v6 = v17;
  v7 = v18;
  v8 = sub_37EC(v16, v17);
  v15[3] = v6;
  v15[4] = *(v7 + 8);
  v9 = sub_35C0(v15);
  (*(*(v6 - 8) + 16))(v9, v8, v6);
  sub_1A294(a1, a2);
  v10 = a3[3];
  v11 = sub_37EC(a3, v10);
  v14[3] = v10;
  v12 = sub_35C0(v14);
  (*(*(v10 - 8) + 16))(v12, v11, v10);
  sub_1B834();

  sub_3678(v14);
  sub_3678(v15);
  return sub_3678(v16);
}

Swift::Int sub_141C0()
{
  v1 = *v0;
  sub_1BAD4();
  sub_13730(v1);
  sub_1B904();

  return sub_1BAE4();
}

uint64_t sub_14224()
{
  sub_13730(*v0);
  sub_1B904();
}

Swift::Int sub_14278()
{
  v1 = *v0;
  sub_1BAD4();
  sub_13730(v1);
  sub_1B904();

  return sub_1BAE4();
}

uint64_t sub_142D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B06C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_14308@<X0>(unint64_t *a1@<X8>)
{
  result = sub_13730(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_14334(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_13730(*a1);
  v5 = v4;
  if (v3 == sub_13730(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BAB4();
  }

  return v8 & 1;
}

uint64_t sub_143C4()
{
  *v0;
  *v0;
  *v0;
  sub_1B904();
}

uint64_t sub_144DC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B0B8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1450C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656D614E676E6F73;
  v5 = 0xEB00000000656D61;
  v6 = 0x4E74736163646F70;
  v7 = 0xEC000000656D614ELL;
  if (v2 != 4)
  {
    v7 = 0xEC00000065707954;
  }

  if (v2 != 3)
  {
    v6 = 0x7473696C79616C70;
    v5 = v7;
  }

  v8 = 0xEA0000000000656DLL;
  v9 = 0x614E747369747261;
  if (v2 != 1)
  {
    v9 = 0x6D614E6F69646172;
    v8 = 0xE900000000000065;
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
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_145F8()
{
  v0 = sub_1B4D4();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_24458 != -1)
  {
    swift_once();
  }

  v5 = qword_24460;
  v34 = qword_25C80;

  if (v5 != -1)
  {
    swift_once();
  }

  v32 = 0x800000000001D680;
  v33 = 0x800000000001D430;
  v31 = qword_25C88;
  v6 = v1[13];
  v6(v4, enum case for DeliveryVehicle.siriHelp(_:), v0);

  v29 = sub_D9B8(0, v4);
  v8 = v1[1];
  v7 = v1 + 1;
  v8(v4, v0);
  v30 = 0x800000000001D490;
  sub_3578(&qword_24D70, &qword_1CE08);
  v9 = *(sub_1B5A4() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  v35 = xmmword_1BF10;
  *(v12 + 16) = xmmword_1BF10;
  sub_1B5C4();
  sub_3578(&qword_24D48, &qword_1CDF0);
  v13 = v7[8];
  v14 = (*(v7 + 72) + 32) & ~*(v7 + 72);
  v15 = swift_allocObject();
  *(v15 + 16) = v35;
  v16 = enum case for SiriHintsMode.display(_:);
  v17 = sub_1B414();
  (*(*(v17 - 8) + 104))(v15 + v14, v16, v17);
  v6((v15 + v14), enum case for DeliveryVehicle.siriHints(_:), v0);
  qword_25D50 = 0;
  unk_25D40 = 0u;
  unk_25D30 = 0u;
  sub_3578(&qword_24D40, &qword_1CDE8);
  v18 = (type metadata accessor for SignalDefinition() - 8);
  v19 = *(*v18 + 72);
  v20 = (*(*v18 + 80) + 32) & ~*(*v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v35;
  v22 = (v21 + v20);
  v23 = v18[7];
  *(v21 + v20 + v23) = v15;
  v24 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v25 = sub_1B624();
  v26 = *(v25 - 8);
  (*(v26 + 104))(&v22[v23], v24, v25);
  (*(v26 + 56))(&v22[v23], 0, 1, v25);
  v27 = &v22[v18[8]];
  *(v27 + 4) = 0;
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *v22 = v29;
  qword_25C98 = 0xD000000000000019;
  qword_25CA0 = v32;
  unk_25CA8 = 0xD000000000000056;
  qword_25CB0 = v33;
  unk_25CB8 = v34;
  qword_25CC0 = v31;
  unk_25CC8 = v21;
  qword_25CD0 = 0x7974696E69666661;
  qword_25CD8 = 0xE800000000000000;
  unk_25CE0 = 0xD000000000000010;
  qword_25CE8 = v30;
  word_25CF0 = 256;
  qword_25CF8 = 0;
  unk_25D00 = 0;
  qword_25D08 = &off_20C18;
  unk_25D10 = v12;
  qword_25D18 = v15;
  unk_25D20 = sub_14AE4;
  qword_25D28 = 0;
  qword_25D58 = &_swiftEmptyArrayStorage;
  unk_25D60 = &_swiftEmptyArrayStorage;
}