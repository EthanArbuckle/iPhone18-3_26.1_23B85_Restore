uint64_t sub_262437348(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1520);
  v7 = *v2;
  *(v3 + 1528) = a1;
  *(v3 + 1536) = v1;

  if (v1)
  {
    v5 = sub_262437E08;
  }

  else
  {
    v5 = sub_262437460;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_262437460()
{
  v63 = v0;
  v1 = *(v0 + 1512);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 1512);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_26243CA80(0, v3[2] + 1, 1, *(v0 + 1512));
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_26243CA80((v4 > 1), v5 + 1, 1, v3);
  }

  v6 = *(v60 + 1528);
  v3[2] = v5 + 1;
  v3[v5 + 4] = v6;
  v7 = *(v60 + 1536);
  v8 = *(v60 + 1496);
  v9 = *(v60 + 1504) + 1;
  result = __swift_destroy_boxed_opaque_existential_1((v60 + 1184));
  if (v9 == v8)
  {
    v11 = *(v60 + 1464);
    v62[0] = v11;
    v12 = v3[2];

    if (v12)
    {
      v61[0] = v3[4];

      sub_26243934C(v62, v61);
      if (v7)
      {
        MEMORY[0x266728D50](v7);
      }

      if (v12 != 1)
      {
        v21 = v3 + 5;
        v22 = 1;
        while (v22 < v3[2])
        {
          v61[0] = *v21;

          sub_26243934C(v62, v61);

          ++v22;
          ++v21;
          if (v12 == v22)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
        goto LABEL_52;
      }

LABEL_19:
      v11 = v62[0];
    }

    if (*(v11 + 16))
    {
      v23 = sub_2624414FC(0x45736973656D656ELL, 0xED000073726F7272);
      if (v24)
      {
        sub_26243FAE0(*(v11 + 56) + 40 * v23, v60 + 1264, &qword_27FF0C5F0, &qword_262463A90);
        *(v60 + 1256) = *(v60 + 1296);
        v25 = *(v60 + 1280);
        *(v60 + 1224) = *(v60 + 1264);
        *(v60 + 1240) = v25;
        if (*(v60 + 1248))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D390, "Η");
          if (swift_dynamicCast())
          {
            v26 = *(v60 + 1456);
            goto LABEL_27;
          }
        }

        else
        {
          sub_2623F39E0(v60 + 1224, &qword_27FF0C5F0, &qword_262463A90);
        }
      }
    }

    v26 = MEMORY[0x277D84FA0];
LABEL_27:
    v27 = *(v60 + 1488);
    *(v60 + 1424) = sub_262439AA4(*(v60 + 1432), v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D390, "Η");
    sub_26243F994(&qword_2813BD3C0, &qword_27FF0D390, "Η");
    sub_2624629E8();
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v62[0] = v11;
    sub_262461260(v61, 0x45736973656D656ELL, 0xED000073726F7272, v28);
    v29 = v62[0];
    *(v60 + 1544) = v62[0];
    v30 = *(v27 + 16);
    v31 = *(v60 + 1488);
    if (v30)
    {
      v58 = v29;
      v61[0] = MEMORY[0x277D84F90];
      sub_26243CF84(0, v30, 0);
      v32 = v60;
      v33 = v61[0];
      v34 = v31 + 32;
      do
      {
        sub_26243F8A4(v34, (v32 + 24));
        v36 = v32[24];
        v35 = v32[25];
        v37 = v32[26];
        v38 = v32[27];

        sub_26243F8FC((v32 + 24));
        v61[0] = v33;
        v40 = *(v33 + 16);
        v39 = *(v33 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_26243CF84((v39 > 1), v40 + 1, 1);
          v32 = v60;
          v33 = v61[0];
        }

        *(v33 + 16) = v40 + 1;
        v41 = (v33 + 32 * v40);
        v41[4] = v36;
        v41[5] = v35;
        v41[6] = v37;
        v41[7] = v38;
        v34 += 88;
        --v30;
      }

      while (v30);
      v42 = v32[186];

      v29 = v58;
    }

    else
    {
      v32 = v60;
      v43 = *(v60 + 1488);

      v33 = MEMORY[0x277D84F90];
    }

    v44 = v32[187];
    v61[0] = v32[184];

    sub_26243DD7C(v33);
    v45 = v61[0];
    *(v60 + 1552) = v61[0];
    if (v44)
    {
      v46 = *(v60 + 416);
      *(v60 + 136) = *(v60 + 400);
      *(v60 + 152) = v46;
      *(v60 + 168) = *(v60 + 432);
      *(v60 + 184) = *(v60 + 448);
      v47 = *(v60 + 384);
      *(v60 + 104) = *(v60 + 368);
      *(v60 + 120) = v47;
      v48 = swift_task_alloc();
      *(v60 + 1560) = v48;
      *v48 = v60;
      v48[1] = sub_262437C68;

      return sub_2624369C0(v29, v45);
    }

    v49 = *(v45 + 16);

    v50 = *(sub_262438894() + 16);

    if (v49 == v50)
    {
      goto LABEL_47;
    }

    if (*(v29 + 16))
    {
      v51 = sub_2624414FC(0x45736973656D656ELL, 0xED000073726F7272);
      if (v52)
      {
        sub_26243FAE0(*(v29 + 56) + 40 * v51, v60 + 1344, &qword_27FF0C5F0, &qword_262463A90);
        *(v60 + 1336) = *(v60 + 1376);
        v53 = *(v60 + 1360);
        *(v60 + 1304) = *(v60 + 1344);
        *(v60 + 1320) = v53;
        if (*(v60 + 1328))
        {
          if (swift_dynamicCast())
          {
            v54 = *(v60 + 1448);
          }

          else
          {
            v54 = MEMORY[0x277D84FA0];
          }

          goto LABEL_46;
        }

        sub_2623F39E0(v60 + 1304, &qword_27FF0C5F0, &qword_262463A90);
      }
    }

    v54 = MEMORY[0x277D84FA0];
LABEL_46:
    v55 = sub_26243EFD4(&unk_2874FBB30, v54);
    sub_2623F3C50(&unk_2874FBB50);
    *(v60 + 1440) = v55;
    sub_2624629E8();
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v62[0] = v29;
    sub_262461260(v61, 0x45736973656D656ELL, 0xED000073726F7272, v56);
    v29 = v62[0];
LABEL_47:
    v57 = *(v60 + 8);

    return v57(v29);
  }

  v13 = *(v60 + 1504) + 1;
  *(v60 + 1512) = v3;
  *(v60 + 1504) = v13;
  v14 = *(v60 + 1488);
  if (v13 >= *(v14 + 16))
  {
LABEL_52:
    __break(1u);
    return result;
  }

  sub_26243F8A4(v14 + 88 * v13 + 32, v60 + 280);
  sub_26243F92C(v60 + 312, v60 + 960);
  sub_26243F8FC(v60 + 280);
  sub_2623F3CA4(v60 + 960, v60 + 1184);
  sub_26243F964(v60 + 960);
  v15 = *(v60 + 1208);
  v16 = *(v60 + 1216);
  __swift_project_boxed_opaque_existential_1((v60 + 1184), v15);
  v17 = *(v16 + 48);
  v59 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v60 + 1520) = v19;
  *v19 = v60;
  v19[1] = sub_262437348;
  v20 = *(v60 + 1464);

  return v59(v20, v15, v16);
}

uint64_t sub_262437C68(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1560);
  v6 = *v2;
  *(*v2 + 1568) = v1;

  v7 = *(v4 + 1552);

  if (v1)
  {
    v8 = sub_262438830;
  }

  else
  {
    *(v4 + 1576) = a1;
    v8 = sub_262437DA0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_262437DA0()
{
  v1 = v0[193];

  v2 = v0[197];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_262437E08()
{
  v94 = v0;
  v1 = *(v0 + 1536);
  *(v0 + 1416) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
  if (swift_dynamicCast())
  {
    MEMORY[0x266728D50](*(v0 + 1536));
    v3 = *(v0 + 792);
    *(v0 + 560) = *(v0 + 776);
    *(v0 + 576) = v3;
    *(v0 + 592) = *(v0 + 808);
    v4 = *(v0 + 760);
    *(v0 + 528) = *(v0 + 744);
    *(v0 + 544) = v4;
    sub_26242706C(v0 + 528, v0 + 456);
    sub_26243A4DC(&v88, v0 + 528);
    v5 = v91;
    *(v0 + 920) = v90;
    *(v0 + 936) = v5;
    *(v0 + 952) = v92;
    v6 = v89;
    *(v0 + 888) = v88;
    *(v0 + 904) = v6;
    sub_2623F3C50(v0 + 888);
    v7 = *(v0 + 1208);
    v8 = *(v0 + 1216);
    __swift_project_boxed_opaque_existential_1((v0 + 1184), v7);
    (*(v8 + 16))(v7, v8);
    v85 = *(v0 + 1016);
    v9 = *(v0 + 1040);
    v10 = *(v0 + 1056);

    v11 = *(v0 + 1208);
    v12 = *(v0 + 1216);
    __swift_project_boxed_opaque_existential_1((v0 + 1184), v11);
    (*(v12 + 16))(v11, v12);
    v13 = *(v0 + 1080);
    v84 = *(v0 + 1088);
    v14 = *(v0 + 1112);

    v15 = *(v0 + 1208);
    v16 = *(v0 + 1216);
    __swift_project_boxed_opaque_existential_1((v0 + 1184), v15);
    (*(v16 + 16))(v15, v16);
    v17 = *(v0 + 1136);
    v18 = *(v0 + 1152);
    v19 = *(v0 + 1160);
    v20 = *(v0 + 1168);

    v21 = *(v0 + 576);
    *(v0 + 704) = *(v0 + 560);
    *(v0 + 720) = v21;
    *(v0 + 736) = *(v0 + 592);
    v22 = *(v0 + 544);
    *(v0 + 672) = *(v0 + 528);
    *(v0 + 688) = v22;
    sub_2623F1BBC();
    v23 = sub_262462C88();
    v25 = v24;
    sub_2623F3C50(v0 + 528);
    *(v0 + 600) = v85;
    *(v0 + 616) = v84;
    *(v0 + 632) = v19;
    *(v0 + 640) = v20;
    *(v0 + 648) = v23;
    *(v0 + 656) = v25;
    *(v0 + 664) = 17;
    sub_26243A4DC(&v88, v0 + 600);
    v26 = v91;
    *(v0 + 848) = v90;
    *(v0 + 864) = v26;
    *(v0 + 880) = v92;
    v27 = v89;
    *(v0 + 816) = v88;
    *(v0 + 832) = v27;
    sub_2623F3C50(v0 + 816);
    MEMORY[0x266728D50](*(v0 + 1416));
    v28 = *(v0 + 1512);
    v29 = *(v0 + 1496);
    v30 = *(v0 + 1504) + 1;
    result = __swift_destroy_boxed_opaque_existential_1((v0 + 1184));
    if (v30 == v29)
    {
      v86 = v0;
      v32 = *(v0 + 1464);
      v93 = v32;
      v33 = *(v28 + 16);

      if (v33)
      {
        v34 = 0;
        while (v34 < *(v28 + 16))
        {
          *&v88 = *(v28 + 32 + 8 * v34);

          sub_26243934C(&v93, &v88);

          if (v33 == ++v34)
          {
            v32 = v93;
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_47;
      }

LABEL_8:
      if (*(v32 + 16))
      {
        v35 = sub_2624414FC(0x45736973656D656ELL, 0xED000073726F7272);
        if (v36)
        {
          sub_26243FAE0(*(v32 + 56) + 40 * v35, v0 + 1264, &qword_27FF0C5F0, &qword_262463A90);
          *(v0 + 1256) = *(v0 + 1296);
          v37 = *(v0 + 1280);
          *(v0 + 1224) = *(v0 + 1264);
          *(v0 + 1240) = v37;
          if (*(v0 + 1248))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D390, "Η");
            if (swift_dynamicCast())
            {
              v38 = *(v0 + 1456);
              goto LABEL_22;
            }
          }

          else
          {
            sub_2623F39E0(v0 + 1224, &qword_27FF0C5F0, &qword_262463A90);
          }
        }
      }

      v38 = MEMORY[0x277D84FA0];
LABEL_22:
      v52 = *(v0 + 1488);
      *(v86 + 1424) = sub_262439AA4(*(v86 + 1432), v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D390, "Η");
      sub_26243F994(&qword_2813BD3C0, &qword_27FF0D390, "Η");
      sub_2624629E8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v32;
      sub_262461260(&v88, 0x45736973656D656ELL, 0xED000073726F7272, isUniquelyReferenced_nonNull_native);
      v54 = v93;
      *(v86 + 1544) = v93;
      v55 = *(v52 + 16);
      v56 = *(v86 + 1488);
      if (v55)
      {
        v83 = v54;
        *&v88 = MEMORY[0x277D84F90];
        sub_26243CF84(0, v55, 0);
        v57 = v86;
        v58 = v88;
        v59 = v56 + 32;
        do
        {
          sub_26243F8A4(v59, (v57 + 24));
          v61 = v57[24];
          v60 = v57[25];
          v62 = v57[26];
          v63 = v57[27];

          sub_26243F8FC((v57 + 24));
          *&v88 = v58;
          v65 = *(v58 + 16);
          v64 = *(v58 + 24);
          if (v65 >= v64 >> 1)
          {
            sub_26243CF84((v64 > 1), v65 + 1, 1);
            v57 = v86;
            v58 = v88;
          }

          *(v58 + 16) = v65 + 1;
          v66 = (v58 + 32 * v65);
          v66[4] = v61;
          v66[5] = v60;
          v66[6] = v62;
          v66[7] = v63;
          v59 += 88;
          --v55;
        }

        while (v55);
        v67 = v57[186];

        v54 = v83;
      }

      else
      {
        v57 = v86;
        v68 = *(v86 + 1488);

        v58 = MEMORY[0x277D84F90];
      }

      v69 = v57[187];
      *&v88 = v57[184];

      sub_26243DD7C(v58);
      v70 = v88;
      *(v86 + 1552) = v88;
      if (v69)
      {
        v71 = *(v86 + 416);
        *(v86 + 136) = *(v86 + 400);
        *(v86 + 152) = v71;
        *(v86 + 168) = *(v86 + 432);
        *(v86 + 184) = *(v86 + 448);
        v72 = *(v86 + 384);
        *(v86 + 104) = *(v86 + 368);
        *(v86 + 120) = v72;
        v73 = swift_task_alloc();
        *(v86 + 1560) = v73;
        *v73 = v86;
        v73[1] = sub_262437C68;

        return sub_2624369C0(v54, v70);
      }

      v74 = *(v70 + 16);

      v75 = *(sub_262438894() + 16);

      if (v74 == v75)
      {
        goto LABEL_42;
      }

      if (*(v54 + 16))
      {
        v76 = sub_2624414FC(0x45736973656D656ELL, 0xED000073726F7272);
        if (v77)
        {
          sub_26243FAE0(*(v54 + 56) + 40 * v76, v86 + 1344, &qword_27FF0C5F0, &qword_262463A90);
          *(v86 + 1336) = *(v86 + 1376);
          v78 = *(v86 + 1360);
          *(v86 + 1304) = *(v86 + 1344);
          *(v86 + 1320) = v78;
          if (*(v86 + 1328))
          {
            if (swift_dynamicCast())
            {
              v79 = *(v86 + 1448);
            }

            else
            {
              v79 = MEMORY[0x277D84FA0];
            }

            goto LABEL_41;
          }

          sub_2623F39E0(v86 + 1304, &qword_27FF0C5F0, &qword_262463A90);
        }
      }

      v79 = MEMORY[0x277D84FA0];
LABEL_41:
      v80 = sub_26243EFD4(&unk_2874FBB30, v79);
      sub_2623F3C50(&unk_2874FBB50);
      *(v86 + 1440) = v80;
      sub_2624629E8();
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v93 = v54;
      sub_262461260(&v88, 0x45736973656D656ELL, 0xED000073726F7272, v81);
      v54 = v93;
LABEL_42:
      v82 = *(v86 + 8);

      return v82(v54);
    }

    v44 = *(v0 + 1504) + 1;
    *(v0 + 1512) = v28;
    *(v0 + 1504) = v44;
    v45 = *(v0 + 1488);
    if (v44 >= *(v45 + 16))
    {
LABEL_47:
      __break(1u);
      return result;
    }

    sub_26243F8A4(v45 + 88 * v44 + 32, v0 + 280);
    sub_26243F92C(v0 + 312, v0 + 960);
    sub_26243F8FC(v0 + 280);
    sub_2623F3CA4(v0 + 960, v0 + 1184);
    sub_26243F964(v0 + 960);
    v46 = *(v0 + 1208);
    v47 = *(v0 + 1216);
    __swift_project_boxed_opaque_existential_1((v0 + 1184), v46);
    v48 = *(v47 + 48);
    v87 = (v48 + *v48);
    v49 = v48[1];
    v50 = swift_task_alloc();
    *(v0 + 1520) = v50;
    *v50 = v0;
    v50[1] = sub_262437348;
    v51 = *(v0 + 1464);

    return v87(v51, v46, v47);
  }

  else
  {
    v39 = *(v0 + 1512);
    v40 = *(v0 + 1488);
    v41 = *(v0 + 1432);

    MEMORY[0x266728D50](*(v0 + 1416));
    __swift_destroy_boxed_opaque_existential_1((v0 + 1184));
    v42 = *(v0 + 1536);
    v43 = *(v0 + 8);

    return v43();
  }
}

uint64_t sub_262438830()
{
  v1 = v0[193];

  v2 = v0[196];
  v3 = v0[1];

  return v3();
}

uint64_t sub_262438894()
{
  v1 = *(v0 + 64);
  v122 = *(v0 + 56);

  v3 = sub_26243E76C(v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D838, &qword_26246BE20);
  v4 = sub_262462AE8();
  v5 = v4;
  v6 = 0;
  v7 = *(v3 + 64);
  v124 = v3 + 64;
  v8 = 1 << *(v3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v7;
  v11 = (v8 + 63) >> 6;
  v128 = v3;
  v130 = v4 + 64;
  v151 = v4;
  v126 = v11;
  if ((v9 & v7) != 0)
  {
    goto LABEL_4;
  }

LABEL_5:
  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    if (v6 >= v11)
    {
      break;
    }

    v14 = *(v124 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      while (2)
      {
        v15 = v12 | (v6 << 6);
        v16 = (*(v3 + 48) + 32 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[3];
        v148 = v16[2];
        v20 = *(*(v3 + 56) + 8 * v15);
        v21 = *(v20 + 16);
        if (v21)
        {
          v137 = *v16;
          v139 = v15;
          v142 = v10;
          v145 = v6;
          *&v162 = MEMORY[0x277D84F90];
          v135 = v18;
          v22 = v20;

          v132 = v19;

          sub_26243CF84(0, v21, 0);
          v23 = v162;
          v24 = (v22 + 56);
          do
          {
            v25 = *(v24 - 3);
            v26 = *(v24 - 2);
            v27 = *(v24 - 1);
            v28 = *v24;
            *&v162 = v23;
            v30 = *(v23 + 16);
            v29 = *(v23 + 24);

            if (v30 >= v29 >> 1)
            {
              sub_26243CF84((v29 > 1), v30 + 1, 1);
              v23 = v162;
            }

            *(v23 + 16) = v30 + 1;
            v31 = (v23 + 32 * v30);
            v31[4] = v25;
            v31[5] = v26;
            v31[6] = v27;
            v31[7] = v28;
            v24 += 8;
            --v21;
          }

          while (v21);

          v5 = v151;
          v11 = v126;
          v3 = v128;
          v10 = v142;
          v6 = v145;
          v17 = v137;
          v15 = v139;
          v32 = v132;
          v18 = v135;
        }

        else
        {

          v32 = v19;
          v23 = MEMORY[0x277D84F90];
        }

        *(v130 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        v33 = (v5[6] + 32 * v15);
        *v33 = v17;
        v33[1] = v18;
        v33[2] = v148;
        v33[3] = v32;
        *(v5[7] + 8 * v15) = v23;
        v34 = v5[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (!v35)
        {
          v5[2] = v36;
          if (!v10)
          {
            goto LABEL_5;
          }

LABEL_4:
          v12 = __clz(__rbit64(v10));
          v10 &= v10 - 1;
          continue;
        }

        break;
      }

LABEL_86:
      __break(1u);
      goto LABEL_87;
    }
  }

  v38 = sub_26243EA10(v37);

  v39 = sub_262462AE8();
  v40 = v39;
  v41 = 0;
  v42 = 1 << *(v38 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v38 + 64);
  v45 = (v42 + 63) >> 6;
  v127 = v38;
  v129 = v39 + 64;
  v149 = v39;
  v123 = v38 + 64;
  v125 = v45;
  if (v44)
  {
    goto LABEL_23;
  }

  while (2)
  {
    v47 = v41;
    while (2)
    {
      v41 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        goto LABEL_79;
      }

      if (v41 >= v45)
      {

        v70 = *(v122 + 16);
        if (v70)
        {
          *&v168 = MEMORY[0x277D84F90];
          sub_26243CF64(0, v70, 0);
          v71 = v168;
          v72 = v122 + 32;
          while (1)
          {
            sub_2623F3CA4(v72, v153);
            v73 = v154;
            v74 = v155[0];
            __swift_project_boxed_opaque_existential_1(v153, v154);
            (*(v74 + 16))(&v162, v73, v74);
            v75 = v162;

            v76 = v154;
            v77 = v155[0];
            __swift_project_boxed_opaque_existential_1(v153, v154);
            (*(v77 + 16))(&v156, v76, v77);
            v78 = v157;

            sub_2623F3CA4(v153, &v162);
            if (v151[2] && (v79 = sub_2624415C0(v75, *(&v75 + 1), v78, *(&v78 + 1)), (v80 & 1) != 0))
            {
              v81 = *(v151[7] + 8 * v79);

              if (!v40[2])
              {
                goto LABEL_48;
              }
            }

            else
            {
              v81 = MEMORY[0x277D84F90];
              if (!v40[2])
              {
                goto LABEL_48;
              }
            }

            v82 = sub_2624415C0(v75, *(&v75 + 1), v78, *(&v78 + 1));
            if ((v83 & 1) == 0)
            {
LABEL_48:
              v84 = MEMORY[0x277D84F90];
              goto LABEL_49;
            }

            v84 = *(v40[7] + 8 * v82);

LABEL_49:
            sub_2623EB668(&v162, &v156);
            *(&v158 + 1) = v81;
            *&v165 = v84;
            v162 = v156;
            v163 = v157;
            v164 = v158;
            __swift_destroy_boxed_opaque_existential_1(v153);
            *&v168 = v71;
            v86 = *(v71 + 16);
            v85 = *(v71 + 24);
            if (v86 >= v85 >> 1)
            {
              sub_26243CF64((v85 > 1), v86 + 1, 1);
              v71 = v168;
            }

            *(v71 + 16) = v86 + 1;
            v87 = v71 + 88 * v86;
            *(v87 + 32) = v75;
            *(v87 + 48) = v78;
            v88 = v162;
            v89 = v163;
            v90 = v164;
            *(v87 + 112) = v165;
            *(v87 + 80) = v89;
            *(v87 + 96) = v90;
            *(v87 + 64) = v88;
            v72 += 40;
            --v70;
            v40 = v149;
            if (!v70)
            {

              if (*(v71 + 16))
              {
                goto LABEL_53;
              }

LABEL_55:
              v91 = MEMORY[0x277D84F98];
              goto LABEL_56;
            }
          }
        }

        if (!*(MEMORY[0x277D84F90] + 16))
        {
          goto LABEL_55;
        }

LABEL_53:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D840, &qword_26246BE28);
        v91 = sub_262462B08();
LABEL_56:
        *&v162 = v91;

        sub_26243DA2C(v92, 1, &v162);

        v93 = v162;
        v94 = *(v162 + 16);
        if (!v94)
        {

          return MEMORY[0x277D84F90];
        }

        v172 = MEMORY[0x277D84F90];
        sub_26243CF44(0, v94, 0);
        v152 = v172;
        v95 = v93 + 64;
        v96 = -1 << *(v93 + 32);
        v97 = sub_2624629B8();
        v98 = 0;
        v99 = *(v93 + 36);
        v134 = v94;
        v136 = v99;
        while ((v97 & 0x8000000000000000) == 0 && v97 < 1 << *(v93 + 32))
        {
          v101 = v97 >> 6;
          if ((*(v95 + 8 * (v97 >> 6)) & (1 << v97)) == 0)
          {
            goto LABEL_81;
          }

          if (v99 != *(v93 + 36))
          {
            goto LABEL_82;
          }

          v141 = v98;
          v102 = (*(v93 + 48) + 32 * v97);
          v103 = *v102;
          v104 = v102[1];
          v105 = v102[2];
          v106 = v102[3];
          sub_26243F92C(*(v93 + 56) + 56 * v97, &v164);
          *&v156 = v103;
          *(&v156 + 1) = v104;
          *&v157 = v105;
          *(&v157 + 1) = v106;
          v158 = v164;
          v159 = v165;
          v160 = v166;
          v161 = v167;
          sub_26243FAE0(&v156, v153, &qword_27FF0D848, &qword_26246BE30);
          v107 = v153[0];
          v147 = v153[2];
          v150 = v153[1];
          v144 = v154;
          v168 = v158;
          v169 = v159;
          v170 = v160;
          v171 = v161;

          sub_26243F964(v155);
          v172 = v152;
          v109 = *(v152 + 16);
          v108 = *(v152 + 24);
          if (v109 >= v108 >> 1)
          {
            sub_26243CF44((v108 > 1), v109 + 1, 1);
            v152 = v172;
          }

          *(v152 + 16) = v109 + 1;
          v110 = v152 + 88 * v109;
          *(v110 + 32) = v107;
          *(v110 + 40) = v150;
          *(v110 + 48) = v147;
          *(v110 + 56) = v144;
          v111 = v168;
          v112 = v169;
          v113 = v170;
          *(v110 + 112) = v171;
          *(v110 + 80) = v112;
          *(v110 + 96) = v113;
          *(v110 + 64) = v111;
          v100 = 1 << *(v93 + 32);
          if (v97 >= v100)
          {
            goto LABEL_83;
          }

          v95 = v93 + 64;
          v114 = *(v93 + 64 + 8 * v101);
          if ((v114 & (1 << v97)) == 0)
          {
            goto LABEL_84;
          }

          v99 = v136;
          if (v136 != *(v93 + 36))
          {
            goto LABEL_85;
          }

          v115 = v114 & (-2 << (v97 & 0x3F));
          if (v115)
          {
            v100 = __clz(__rbit64(v115)) | v97 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v116 = v101 << 6;
            v117 = v101 + 1;
            v118 = (v93 + 72 + 8 * v101);
            while (v117 < (v100 + 63) >> 6)
            {
              v120 = *v118++;
              v119 = v120;
              v116 += 64;
              ++v117;
              if (v120)
              {
                sub_2624071A0(v97, v136, 0);
                v100 = __clz(__rbit64(v119)) + v116;
                goto LABEL_59;
              }
            }

            sub_2624071A0(v97, v136, 0);
          }

LABEL_59:
          v98 = v141 + 1;
          v97 = v100;
          if (v141 + 1 == v134)
          {

            return v152;
          }
        }

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
        goto LABEL_86;
      }

      v48 = *(v123 + 8 * v41);
      ++v47;
      if (!v48)
      {
        continue;
      }

      break;
    }

    v46 = __clz(__rbit64(v48));
    v44 = (v48 - 1) & v48;
LABEL_29:
    v49 = v46 | (v41 << 6);
    v50 = (*(v38 + 48) + 32 * v49);
    v52 = *v50;
    v51 = v50[1];
    v53 = v50[3];
    v146 = v50[2];
    v54 = *(*(*(v38 + 56) + 8 * v49) + 16);
    if (v54)
    {
      v138 = v49;
      v140 = v44;
      v143 = v41;
      v55 = *(*(v38 + 56) + 8 * v49);
      *&v162 = MEMORY[0x277D84F90];
      v133 = v51;

      v131 = v53;

      sub_26243CF84(0, v54, 0);
      v56 = v162;
      v57 = (v55 + 88);
      do
      {
        v59 = *(v57 - 3);
        v58 = *(v57 - 2);
        v60 = *(v57 - 1);
        v61 = *v57;
        *&v162 = v56;
        v62 = *(v56 + 16);
        v63 = *(v56 + 24);

        if (v62 >= v63 >> 1)
        {
          sub_26243CF84((v63 > 1), v62 + 1, 1);
          v56 = v162;
        }

        *(v56 + 16) = v62 + 1;
        v64 = (v56 + 32 * v62);
        v64[4] = v59;
        v64[5] = v58;
        v64[6] = v60;
        v64[7] = v61;
        v57 += 8;
        --v54;
      }

      while (v54);

      v40 = v149;
      v45 = v125;
      v38 = v127;
      v44 = v140;
      v41 = v143;
      v49 = v138;
      v65 = v131;
      v66 = v133;
    }

    else
    {
      v66 = v50[1];

      v65 = v53;
      v56 = MEMORY[0x277D84F90];
    }

    *(v129 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
    v67 = (v40[6] + 32 * v49);
    *v67 = v52;
    v67[1] = v66;
    v67[2] = v146;
    v67[3] = v65;
    *(v40[7] + 8 * v49) = v56;
    v68 = v40[2];
    v35 = __OFADD__(v68, 1);
    v69 = v68 + 1;
    if (!v35)
    {
      v40[2] = v69;
      if (!v44)
      {
        continue;
      }

LABEL_23:
      v46 = __clz(__rbit64(v44));
      v44 &= v44 - 1;
      goto LABEL_29;
    }

    break;
  }

LABEL_87:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_26243934C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *a1;
  if (!*(*a1 + 16) || (v6 = sub_2624414FC(0x7074754F656C7572, 0xEB00000000737475), (v7 & 1) == 0))
  {
LABEL_8:
    v8 = sub_262461FB8(MEMORY[0x277D84F90]);
    if (!*(v4 + 16))
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  sub_26243FAE0(*(v5 + 56) + 40 * v6, &v31, &qword_27FF0C5F0, &qword_262463A90);
  v34 = v31;
  v35 = v32;
  v36 = v33;
  if (!*(&v32 + 1))
  {
    sub_2623F39E0(&v34, &qword_27FF0C5F0, &qword_262463A90);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD8, &unk_262467E70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = v37;
  if (!*(v4 + 16))
  {
    goto LABEL_14;
  }

LABEL_9:
  v9 = sub_2624414FC(0x7074754F656C7572, 0xEB00000000737475);
  if (v10)
  {
    sub_26243FAE0(*(v4 + 56) + 40 * v9, &v31, &qword_27FF0C5F0, &qword_262463A90);
    v34 = v31;
    v35 = v32;
    v36 = v33;
    if (*(&v32 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD8, &unk_262467E70);
      if (swift_dynamicCast())
      {
        v11 = v37;
        goto LABEL_15;
      }
    }

    else
    {
      sub_2623F39E0(&v34, &qword_27FF0C5F0, &qword_262463A90);
    }
  }

LABEL_14:
  v11 = sub_262461FB8(MEMORY[0x277D84F90]);
LABEL_15:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v34 = v8;
  sub_26243ECB4(v11, sub_26243DE70, 0, isUniquelyReferenced_nonNull_native, &v34);
  if (!v2)
  {

    v30 = v34;
    if (*(v5 + 16))
    {
      v13 = sub_2624414FC(0x6572656767697274, 0xEE0073656C755264);
      if (v14)
      {
        sub_26243FAE0(*(v5 + 56) + 40 * v13, &v31, &qword_27FF0C5F0, &qword_262463A90);
        v34 = v31;
        v35 = v32;
        v36 = v33;
        if (*(&v32 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFE0, &qword_26246BDF0);
          if (swift_dynamicCast())
          {
            v15 = v37;
            if (!*(v4 + 16))
            {
              goto LABEL_29;
            }

LABEL_24:
            v16 = sub_2624414FC(0x6572656767697274, 0xEE0073656C755264);
            if (v17)
            {
              sub_26243FAE0(*(v4 + 56) + 40 * v16, &v31, &qword_27FF0C5F0, &qword_262463A90);
              v34 = v31;
              v35 = v32;
              v36 = v33;
              if (*(&v32 + 1))
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFE0, &qword_26246BDF0);
                if (swift_dynamicCast())
                {
                  v18 = v37;
LABEL_30:
                  v19 = sub_262439BF0(v18, v15);
                  if (*(v5 + 16))
                  {
                    v20 = sub_2624414FC(0x45736973656D656ELL, 0xED000073726F7272);
                    if (v21)
                    {
                      sub_26243FAE0(*(v5 + 56) + 40 * v20, &v31, &qword_27FF0C5F0, &qword_262463A90);
                      v34 = v31;
                      v35 = v32;
                      v36 = v33;
                      if (*(&v32 + 1))
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D390, "Η");
                        if (swift_dynamicCast())
                        {
                          v22 = v37;
                          if (!*(v4 + 16))
                          {
                            goto LABEL_42;
                          }

LABEL_38:
                          v23 = sub_2624414FC(0x45736973656D656ELL, 0xED000073726F7272);
                          if (v24)
                          {
                            sub_26243FAE0(*(v4 + 56) + 40 * v23, &v31, &qword_27FF0C5F0, &qword_262463A90);
                            v34 = v31;
                            v35 = v32;
                            v36 = v33;
                            if (*(&v32 + 1))
                            {
                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D390, "Η");
                              if (swift_dynamicCast())
                              {
                                v25 = v37;
LABEL_43:
                                v26 = sub_262439AA4(v25, v22);

                                v27 = *a1;
                                v28 = swift_isUniquelyReferenced_nonNull_native();
                                *&v34 = *a1;
                                sub_26243ECB4(v4, sub_26243DE70, 0, v28, &v34);

                                *a1 = v34;
                                *&v31 = v30;
                                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD8, &unk_262467E70);
                                sub_26241EAD8();
                                sub_2624629E8();
                                sub_26245E858(&v34, 0x7074754F656C7572, 0xEB00000000737475);
                                *&v31 = v19;
                                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFE0, &qword_26246BDF0);
                                sub_26243F994(&qword_2813BD3B8, &qword_27FF0CFE0, &qword_26246BDF0);
                                sub_2624629E8();
                                sub_26245E858(&v34, 0x6572656767697274, 0xEE0073656C755264);
                                *&v31 = v26;
                                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D390, "Η");
                                sub_26243F994(&qword_2813BD3C0, &qword_27FF0D390, "Η");
                                sub_2624629E8();
                                return sub_26245E858(&v34, 0x45736973656D656ELL, 0xED000073726F7272);
                              }
                            }

                            else
                            {
                              sub_2623F39E0(&v34, &qword_27FF0C5F0, &qword_262463A90);
                            }
                          }

LABEL_42:
                          v25 = MEMORY[0x277D84FA0];
                          goto LABEL_43;
                        }
                      }

                      else
                      {
                        sub_2623F39E0(&v34, &qword_27FF0C5F0, &qword_262463A90);
                      }
                    }
                  }

                  v22 = MEMORY[0x277D84FA0];
                  if (!*(v4 + 16))
                  {
                    goto LABEL_42;
                  }

                  goto LABEL_38;
                }
              }

              else
              {
                sub_2623F39E0(&v34, &qword_27FF0C5F0, &qword_262463A90);
              }
            }

LABEL_29:
            v18 = MEMORY[0x277D84FA0];
            goto LABEL_30;
          }
        }

        else
        {
          sub_2623F39E0(&v34, &qword_27FF0C5F0, &qword_262463A90);
        }
      }
    }

    v15 = MEMORY[0x277D84FA0];
    if (!*(v4 + 16))
    {
      goto LABEL_29;
    }

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_262439AA4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v19 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_2623F3C50(v17))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(v2 + 48) + 72 * (v10 | (v9 << 6));
    v20[0] = *v11;
    v13 = *(v11 + 32);
    v12 = *(v11 + 48);
    v14 = *(v11 + 16);
    v21 = *(v11 + 64);
    v20[2] = v13;
    v20[3] = v12;
    v20[1] = v14;
    sub_26242706C(v20, v17);
    sub_26243A4DC(v15, v20);
    v17[2] = v15[2];
    v17[3] = v15[3];
    v18 = v16;
    v17[0] = v15[0];
    v17[1] = v15[1];
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v19;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_262439BF0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_26243A38C(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_262439CF4()
{
  if (*v0)
  {
    result = 1701667182;
  }

  else
  {
    result = 0x6E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t sub_262439D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262462C58();

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

uint64_t sub_262439E04(uint64_t a1)
{
  v2 = sub_26243FD84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262439E40(uint64_t a1)
{
  v2 = sub_26243FD84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262439E7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26243F08C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_262439EAC()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_262462CF8();
  sub_262462778();
  sub_262462778();
  return sub_262462D38();
}

uint64_t sub_262439F14()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_262462778();

  return sub_262462778();
}

uint64_t sub_262439F64()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_262462CF8();
  sub_262462778();
  sub_262462778();
  return sub_262462D38();
}

uint64_t sub_262439FC8(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_262462C58(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_262462C58();
    }
  }

  return result;
}

uint64_t sub_26243A06C()
{
  v1 = 0x737465737361;
  if (*v0 != 1)
  {
    v1 = 0x7365676465;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_26243A0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26243F270(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26243A0E8(uint64_t a1)
{
  v2 = sub_26243F61C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26243A124(uint64_t a1)
{
  v2 = sub_26243F61C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26243A160@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26243F380(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_26243A190(uint64_t a1)
{
  v4 = *(v1 + 48);
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = v4;
  *(v2 + 80) = *(v1 + 64);
  *(v2 + 96) = *(v1 + 80);
  v5 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v5;
  v6 = swift_task_alloc();
  *(v2 + 104) = v6;
  *v6 = v2;
  v6[1] = sub_26243A250;
  v7 = MEMORY[0x277D84F90];

  return sub_2624369C0(a1, v7);
}

uint64_t sub_26243A250(uint64_t a1)
{
  v4 = *(*v2 + 104);
  v5 = *v2;
  *(v5 + 112) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_26243FFD4, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_26243A38C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_262462CF8();
  sub_262462778();
  v9 = sub_262462D38();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_262462C58() & 1) != 0)
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

    sub_26243B3AC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_26243A4DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 48);
  v51 = *(a2 + 32);
  v52 = v6;
  v7 = *(a2 + 16);
  v49 = *a2;
  v50 = v7;
  v8 = *v2;
  v9 = *(*v2 + 40);
  v10 = *(a2 + 48);
  v46 = v51;
  v47 = v10;
  v53 = *(a2 + 64);
  v48 = *(a2 + 64);
  v44 = v49;
  v45 = v5;
  sub_262462CF8();
  NemesisError.hash(into:)();
  v11 = sub_262462D38();
  v12 = -1 << *(v8 + 32);
  v13 = v11 & ~v12;
  if ((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      v15 = *(v8 + 48) + 72 * v13;
      v44 = *v15;
      v17 = *(v15 + 32);
      v16 = *(v15 + 48);
      v18 = *(v15 + 64);
      v45 = *(v15 + 16);
      v46 = v17;
      v48 = v18;
      v47 = v16;
      v35 = *(v15 + 16);
      v36 = *(v15 + 32);
      v37 = *(v15 + 48);
      v38 = *(v15 + 64);
      v34 = *v15;
      sub_26242706C(&v44, v32);
      v19 = _s5Rules12NemesisErrorO2eeoiySbAC_ACtFZ_0(&v34, &v49);
      v41 = v36;
      v42 = v37;
      v43 = v38;
      v39 = v34;
      v40 = v35;
      sub_2623F3C50(&v39);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v32[2] = v51;
    v32[3] = v52;
    v33 = v53;
    v32[0] = v49;
    v32[1] = v50;
    sub_2623F3C50(v32);
    v25 = *(v8 + 48) + 72 * v13;
    v27 = *(v25 + 16);
    v26 = *(v25 + 32);
    v28 = *(v25 + 64);
    v37 = *(v25 + 48);
    v38 = v28;
    v34 = *v25;
    v35 = v27;
    v36 = v26;
    v29 = *(v25 + 48);
    *(a1 + 32) = *(v25 + 32);
    *(a1 + 48) = v29;
    *(a1 + 64) = *(v25 + 64);
    v30 = *(v25 + 16);
    *a1 = *v25;
    *(a1 + 16) = v30;
    sub_26242706C(&v34, v31);
    return 0;
  }

  else
  {
LABEL_5:
    v20 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v51;
    v42 = v52;
    v43 = v53;
    v39 = v49;
    v40 = v50;
    *&v34 = *v3;
    sub_26242706C(&v39, &v44);
    sub_26243B52C(&v39, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    v22 = v52;
    *(a1 + 32) = v51;
    *(a1 + 48) = v22;
    *(a1 + 64) = v53;
    v23 = v50;
    result = 1;
    *a1 = v49;
    *(a1 + 16) = v23;
  }

  return result;
}

uint64_t sub_26243A748(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_262462CF8();
  sub_262462778();
  sub_262462778();
  v12 = sub_262462D38();
  v13 = v10 + 56;
  v14 = -1 << *(v10 + 32);
  v15 = v12 & ~v14;
  if ((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v30 = v10;
    v17 = *(v10 + 48);
    while (1)
    {
      v18 = (v17 + 32 * v15);
      v19 = v18[2];
      v20 = v18[3];
      v21 = *v18 == a2 && v18[1] == a3;
      if (v21 || (sub_262462C58() & 1) != 0)
      {
        v22 = v19 == a4 && v20 == a5;
        if (v22 || (sub_262462C58() & 1) != 0)
        {
          break;
        }
      }

      v15 = (v15 + 1) & v16;
      if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v23 = (*(v30 + 48) + 32 * v15);
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[3];
    *a1 = *v23;
    a1[1] = v24;
    a1[2] = v25;
    a1[3] = v26;

    return 0;
  }

  else
  {
LABEL_15:
    v28 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v31;

    sub_26243B744(a2, a3, a4, a5, v15, isUniquelyReferenced_nonNull_native);
    *v31 = v33;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t sub_26243A920(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v20 = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18 = &v16;
  v19 = a2;
  v6 = (1 << v4) + 63;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = &v15 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    v9 = sub_26243E2A4(v8, v3, a2);
  }

  else
  {
    v13 = swift_slowAlloc();
    bzero(v13, v12);
    sub_26243FE30(v13, &v17);
    v14 = v17;
    MEMORY[0x266728E90](v13, -1, -1);
    v9 = v14;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

uint64_t sub_26243AAA0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v20 = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18 = &v16;
  v19 = a2;
  v6 = (1 << v4) + 63;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = &v15 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    v9 = sub_26243E538(v8, v3, a2);
  }

  else
  {
    v13 = swift_slowAlloc();
    bzero(v13, v12);
    sub_26243FA60(v13, &v17);
    v14 = v17;
    MEMORY[0x266728E90](v13, -1, -1);
    v9 = v14;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

uint64_t sub_26243AC20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D818, &qword_26246BE00);
  result = sub_262462A08();
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
      sub_262462CF8();
      sub_262462778();
      result = sub_262462D38();
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

uint64_t sub_26243AE80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D820, &qword_26246BE08);
  result = sub_262462A08();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v19 = *(v3 + 48) + 72 * (v16 | (v7 << 6));
      v33 = *(v19 + 32);
      v34 = *(v19 + 48);
      v31 = *v19;
      v32 = *(v19 + 16);
      v35 = *(v19 + 64);
      v20 = *(v6 + 40);
      v30 = *v19;
      sub_262462CF8();
      NemesisError.hash(into:)();
      result = sub_262462D38();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 72 * v14;
      *(v15 + 32) = v33;
      *(v15 + 48) = v34;
      *(v15 + 64) = v35;
      *v15 = v31;
      *(v15 + 16) = v32;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_26243B128(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D830, &qword_26246BE18);
  result = sub_262462A08();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
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
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      sub_262462CF8();
      sub_262462778();
      sub_262462778();
      result = sub_262462D38();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v23;
      ++*(v6 + 16);
      v3 = v34;
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

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v8, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_26243B3AC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_26243AC20(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_26243B910();
      goto LABEL_16;
    }

    sub_26243BD68(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_262462CF8();
  sub_262462778();
  result = sub_262462D38();
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

      result = sub_262462C58();
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
  result = sub_262462C68();
  __break(1u);
  return result;
}

uint64_t sub_26243B52C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(result + 48);
  v45 = *(result + 32);
  v46 = v7;
  v47 = *(result + 64);
  v8 = *(result + 16);
  v43 = *result;
  v44 = v8;
  v9 = *(*v3 + 16);
  v10 = *(*v3 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26243AE80(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_26243BA6C();
      goto LABEL_12;
    }

    sub_26243BFA0(v9 + 1);
  }

  v11 = *v3;
  v12 = *(*v3 + 40);
  v13 = *(v6 + 48);
  v40 = *(v6 + 32);
  v41 = v13;
  v42 = *(v6 + 64);
  v14 = *(v6 + 16);
  v38 = *v6;
  v39 = v14;
  sub_262462CF8();
  NemesisError.hash(into:)();
  result = sub_262462D38();
  v15 = -1 << *(v11 + 32);
  a2 = result & ~v15;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    do
    {
      v17 = *(v11 + 48) + 72 * a2;
      v38 = *v17;
      v19 = *(v17 + 32);
      v18 = *(v17 + 48);
      v20 = *(v17 + 64);
      v39 = *(v17 + 16);
      v40 = v19;
      v42 = v20;
      v41 = v18;
      v21 = *(v17 + 48);
      v33 = *(v17 + 32);
      v34 = v21;
      v35 = *(v17 + 64);
      v22 = *(v17 + 16);
      v31 = *v17;
      v32 = v22;
      sub_26242706C(&v38, v36);
      v23 = _s5Rules12NemesisErrorO2eeoiySbAC_ACtFZ_0(&v31, &v43);
      v36[2] = v33;
      v36[3] = v34;
      v37 = v35;
      v36[0] = v31;
      v36[1] = v32;
      result = sub_2623F3C50(v36);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v25 = *(v24 + 48) + 72 * a2;
  *(v25 + 64) = v47;
  v26 = v46;
  *(v25 + 32) = v45;
  *(v25 + 48) = v26;
  v27 = v44;
  *v25 = v43;
  *(v25 + 16) = v27;
  v28 = *(v24 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v24 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_262462C68();
  __break(1u);
  return result;
}

uint64_t sub_26243B744(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a6)
  {
    sub_26243B128(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_26243BBFC();
      goto LABEL_22;
    }

    sub_26243C224(v12 + 1);
  }

  v14 = *v6;
  v15 = *(*v6 + 40);
  sub_262462CF8();
  sub_262462778();
  sub_262462778();
  result = sub_262462D38();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = result & ~v17;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v14 + 48);
    while (1)
    {
      v20 = (v19 + 32 * a5);
      v21 = v20[2];
      v22 = v20[3];
      v23 = *v20 == v11 && v20[1] == a2;
      if (v23 || (result = sub_262462C58(), (result & 1) != 0))
      {
        if (v21 == a3 && v22 == a4)
        {
          break;
        }

        result = sub_262462C58();
        if (result)
        {
          break;
        }
      }

      a5 = (a5 + 1) & v18;
      if (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    result = sub_262462C68();
    __break(1u);
  }

LABEL_22:
  v25 = *v30;
  *(*v30 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v26 = (*(v25 + 48) + 32 * a5);
  *v26 = v11;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}

void *sub_26243B910()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D818, &qword_26246BE00);
  v2 = *v0;
  v3 = sub_2624629F8();
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

void *sub_26243BA6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D820, &qword_26246BE08);
  v2 = *v0;
  v3 = sub_2624629F8();
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
        v17 = 72 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = v18[3];
        v24 = *(v18 + 64);
        v23[3] = v21;
        v23[0] = *v18;
        v23[1] = v20;
        v23[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x41uLL);
        result = sub_26242706C(v23, v22);
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

void *sub_26243BBFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D830, &qword_26246BE18);
  v2 = *v0;
  v3 = sub_2624629F8();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
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

uint64_t sub_26243BD68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D818, &qword_26246BE00);
  result = sub_262462A08();
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
      sub_262462CF8();

      sub_262462778();
      result = sub_262462D38();
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

uint64_t sub_26243BFA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D820, &qword_26246BE08);
  result = sub_262462A08();
  v6 = result;
  if (*(v3 + 16))
  {
    v35 = v2;
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
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v21 = *(v3 + 48) + 72 * (v18 | (v7 << 6));
      v23 = *(v21 + 32);
      v22 = *(v21 + 48);
      v24 = *(v21 + 16);
      v46 = *(v21 + 64);
      v44 = v23;
      v45 = v22;
      v42 = *v21;
      v43 = v24;
      v25 = *(v6 + 40);
      v26 = *(v21 + 48);
      v39 = *(v21 + 32);
      v40 = v26;
      v41 = *(v21 + 64);
      v27 = *(v21 + 16);
      v37 = *v21;
      v38 = v27;
      sub_262462CF8();
      sub_26242706C(&v42, v36);
      NemesisError.hash(into:)();
      result = sub_262462D38();
      v28 = -1 << *(v6 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v12 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v12 + 8 * v30);
          if (v34 != -1)
          {
            v13 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v29) & ~*(v12 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 72 * v13;
      v15 = v43;
      v16 = v44;
      v17 = v45;
      *(v14 + 64) = v46;
      *(v14 + 32) = v16;
      *(v14 + 48) = v17;
      *(v14 + 16) = v15;
      *v14 = v42;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v35;
        goto LABEL_28;
      }

      v20 = *(v3 + 56 + 8 * v7);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
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

uint64_t sub_26243C224(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D830, &qword_26246BE18);
  result = sub_262462A08();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      sub_262462CF8();

      sub_262462778();
      sub_262462778();
      result = sub_262462D38();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v23;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
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

char *sub_26243C488(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D6A0, &unk_26246AEF0);
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

char *sub_26243C58C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D8E0, &unk_26246C210);
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

void *sub_26243C690(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFB8, &unk_262467E50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CCB0, &qword_2624669F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26243C840(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D868, &qword_26246BE50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D860, &qword_26246BE48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26243C974(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D808, &qword_26246BDE8);
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

void *sub_26243CA80(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D800, &unk_26246BDD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD8, &unk_262467E70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26243CBD8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_26243CD20(char *a1, int64_t a2, char a3)
{
  result = sub_26243CFA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26243CD40(char *a1, int64_t a2, char a3)
{
  result = sub_26243D0B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26243CD60(void *a1, int64_t a2, char a3)
{
  result = sub_26243D1B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26243CD80(void *a1, int64_t a2, char a3)
{
  result = sub_26243D2F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26243CDA0(void *a1, int64_t a2, char a3)
{
  result = sub_26243D440(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26243CDC0(void *a1, int64_t a2, char a3)
{
  result = sub_26243D574(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26243CEA0(uint64_t *a1, int a2)
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

uint64_t sub_26243CEE8(uint64_t result, int a2, int a3)
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

char *sub_26243CF44(char *a1, int64_t a2, char a3)
{
  result = sub_26243D6A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26243CF64(void *a1, int64_t a2, char a3)
{
  result = sub_26243D7D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26243CF84(char *a1, int64_t a2, char a3)
{
  result = sub_26243D920(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26243CFA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D880, &qword_26246BE68);
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

char *sub_26243D0B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D6A0, &unk_26246AEF0);
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

void *sub_26243D1B4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFB8, &unk_262467E50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CCB0, &qword_2624669F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26243D2F8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D8F0, &qword_26246C230);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D8F8, &qword_26246C238);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26243D440(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D8B8, &qword_26246C1E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D8C0, &qword_26246C1E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26243D574(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D868, &qword_26246BE50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D860, &qword_26246BE48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26243D6A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D828, &qword_26246BE10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26243D7D0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D858, &qword_26246BE40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D850, &qword_26246BE38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26243D920(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D808, &qword_26246BDE8);
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

uint64_t sub_26243DA2C(uint64_t a1, char a2, void *a3)
{
  v33 = *(a1 + 16);
  if (!v33)
  {
  }

  v32 = a1;
  v4 = 0;
  v5 = a1 + 32;
  while (1)
  {
    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_262462C78();
      __break(1u);
      goto LABEL_23;
    }

    v34 = v5;
    sub_26243FAE0(v5, &v44, &qword_27FF0D850, &qword_26246BE38);
    v6 = v44;
    v7 = v46;
    v8 = v47;
    v40 = v44;
    v41 = v45;
    v42 = v46;
    v43 = v47;
    v36 = v48;
    v37 = v49;
    v38 = v50;
    v39 = v51;
    v9 = *a3;
    v10 = v45;
    v12 = sub_2624415C0(v44, v45, v46, v47);
    v13 = v9[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_20;
    }

    v16 = v11;
    if (v9[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_262461DB0();
      if (v16)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v21 = (v20[6] + 32 * v12);
    *v21 = v6;
    v21[1] = v10;
    v21[2] = v7;
    v21[3] = v8;
    v22 = v20[7] + 56 * v12;
    v23 = v36;
    v24 = v37;
    v25 = v38;
    *(v22 + 48) = v39;
    *(v22 + 16) = v24;
    *(v22 + 32) = v25;
    *v22 = v23;
    v26 = v20[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_21;
    }

    ++v4;
    v20[2] = v28;
    v5 = v34 + 88;
    a2 = 1;
    a1 = v32;
    if (v33 == v4)
    {
    }
  }

  sub_262460A9C(v15, a2 & 1);
  v17 = *a3;
  v18 = sub_2624415C0(v6, v10, v7, v8);
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_22;
  }

  v12 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v29 = swift_allocError();
  swift_willThrow();
  v52 = v29;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_26243F964(&v36);

    return MEMORY[0x266728D50](v52);
  }

LABEL_23:
  sub_262462A28();
  MEMORY[0x266728460](0xD00000000000001BLL, 0x80000002624718E0);
  sub_262462AA8();
  MEMORY[0x266728460](39, 0xE100000000000000);
  result = sub_262462AC8();
  __break(1u);
  return result;
}

uint64_t sub_26243DD7C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26243C974(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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

uint64_t sub_26243DE70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_26243FAE0((a1 + 2), (a2 + 2), &qword_27FF0C5F0, &qword_262463A90);
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_26243DECC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_262462C58() & 1;
  }
}

uint64_t sub_26243DF24(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 32 * result);
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v8 = v4[3];

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_26243DFBC(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_262462C58(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      return sub_262462C58() & 1;
    }
  }

  return result;
}

uint64_t sub_26243E05C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v4 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_26243FAE0(*(v4 + 56) + 40 * v13, &v23, &qword_27FF0C5F0, &qword_262463A90);
    v21 = v24;
    v22 = v23;
    v17 = v25;
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v12;

    if (v15)
    {
      v20 = v1[5];
      v19 = v1[6];
      *&v23 = v16;
      *(&v23 + 1) = v15;
      v25 = v21;
      v24 = v22;
      v26 = v17;
      v20(&v23);
      return sub_2623F39E0(&v23, &qword_27FF0D810, &qword_26246BDF8);
    }

    else
    {
LABEL_13:
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26243E1B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x266728570](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_26243A38C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_26243E250(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_26243E2A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v24 = result;
  v23 = 0;
  v4 = 0;
  v5 = *(a2 + 16);
  v25 = v5;
  v26 = a2 + 32;
  v6 = a3 + 56;
  while (v4 != v5)
  {
    while (1)
    {
      if (v4 >= v5)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return result;
      }

      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_27;
      }

      v8 = (v26 + 16 * v4);
      v10 = *v8;
      v9 = v8[1];
      v11 = *(a3 + 40);
      sub_262462CF8();

      sub_262462778();
      v12 = sub_262462D38();
      v13 = -1 << *(a3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & *(v6 + 8 * (v14 >> 6))) != 0)
      {
        break;
      }

LABEL_5:

LABEL_6:
      v4 = v7;
      if (v7 == v5)
      {
        return 0;
      }
    }

    v17 = (*(a3 + 48) + 16 * v14);
    v18 = *v17 == v10 && v17[1] == v9;
    if (!v18)
    {
      v19 = ~v13;
      while ((sub_262462C58() & 1) == 0)
      {
        v14 = (v14 + 1) & v19;
        v15 = v14 >> 6;
        v16 = 1 << v14;
        if (((1 << v14) & *(v6 + 8 * (v14 >> 6))) == 0)
        {
          v5 = v25;
          goto LABEL_5;
        }

        v20 = (*(a3 + 48) + 16 * v14);
        if (*v20 == v10 && v20[1] == v9)
        {
          break;
        }
      }
    }

    v21 = *(v24 + 8 * v15);
    *(v24 + 8 * v15) = v21 | v16;
    if ((v21 & v16) != 0)
    {
      v5 = v25;
      goto LABEL_6;
    }

    v22 = v23 + 1;
    v5 = v25;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_28;
    }

    ++v23;
    v18 = v22 == *(a3 + 16);
    v4 = v7;
    result = 1;
    if (v18)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_26243E47C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_26243FA8C();
  result = MEMORY[0x266728570](v2, &type metadata for LogicGraphAsset.VersionName, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);

      sub_26243A748(&v10, v9, v8, v7, v6);

      v5 += 4;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_26243E538(uint64_t result, uint64_t a2, uint64_t a3)
{
  v24 = result;
  v23 = 0;
  v3 = 0;
  v4 = *(a2 + 16);
  v26 = a2 + 32;
  v32 = a3 + 56;
  v25 = v4;
  while (2)
  {
    if (v3 == v4)
    {
      return 0;
    }

    while (1)
    {
      if (v3 >= v4)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return result;
      }

      if (__OFADD__(v3, 1))
      {
        goto LABEL_27;
      }

      v5 = (v26 + 32 * v3);
      v7 = *v5;
      v6 = v5[1];
      v9 = v5[2];
      v8 = v5[3];
      v28 = v3 + 1;
      v29 = v3 + 1;
      v10 = *(a3 + 40);
      sub_262462CF8();

      sub_262462778();
      sub_262462778();
      v11 = sub_262462D38();
      v12 = -1 << *(a3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & *(v32 + 8 * (v13 >> 6))) != 0)
      {
        break;
      }

LABEL_4:

LABEL_5:
      v4 = v25;
      v3 = v29;
      if (v28 == v25)
      {
        return 0;
      }
    }

    v30 = ~v12;
    v31 = *(a3 + 48);
    while (1)
    {
      v16 = (v31 + 32 * v13);
      v18 = v16[2];
      v17 = v16[3];
      v19 = *v16 == v7 && v16[1] == v6;
      if (v19 || (sub_262462C58() & 1) != 0)
      {
        v20 = v18 == v9 && v17 == v8;
        if (v20 || (sub_262462C58() & 1) != 0)
        {
          break;
        }
      }

      v13 = (v13 + 1) & v30;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if ((*(v32 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_4;
      }
    }

    v21 = *(v24 + 8 * v14);
    *(v24 + 8 * v14) = v21 | v15;
    if ((v21 & v15) != 0)
    {
      goto LABEL_5;
    }

    v22 = v23 + 1;
    v3 = v29;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_28;
    }

    ++v23;
    v4 = v25;
    result = 1;
    if (v22 != *(a3 + 16))
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_26243E76C(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v42 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 32); ; i += 4)
  {
    v36 = v2;
    v9 = i[1];
    v38 = *i;
    v39 = v9;
    v10 = i[3];
    v40 = i[2];
    v41 = v10;
    v11 = v40;
    v12 = v10;
    sub_26243FAE0(&v38, v37, &qword_27FF0D860, &qword_26246BE48);
    sub_26243FAE0(&v38, v37, &qword_27FF0D860, &qword_26246BE48);

    v14 = sub_2624415C0(v11, *(&v11 + 1), v12, *(&v12 + 1));
    v15 = v1[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v18 = v13;
    if (v1[3] < v17)
    {
      sub_262460DAC(v17, 1);
      v1 = v42;
      v19 = sub_2624415C0(v11, *(&v11 + 1), v12, *(&v12 + 1));
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_19;
      }

      v14 = v19;
    }

    if (v18)
    {

      v21 = v1[7];
      v22 = *(v21 + 8 * v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v21 + 8 * v14) = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = sub_26243C840(0, v22[2] + 1, 1, v22);
        *(v21 + 8 * v14) = v22;
      }

      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        v22 = sub_26243C840((v24 > 1), v25 + 1, 1, v22);
        *(v21 + 8 * v14) = v22;
      }

      v4 = v36;
      v22[2] = v25 + 1;
      v5 = &v22[8 * v25];
      v6 = v38;
      v7 = v39;
      v8 = v41;
      v5[4] = v40;
      v5[5] = v8;
      v5[2] = v6;
      v5[3] = v7;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D868, &qword_26246BE50);
      v26 = swift_allocObject();
      v27 = v38;
      v28 = v39;
      v26[1] = xmmword_262463D10;
      v26[2] = v27;
      v29 = v40;
      v30 = v41;
      v26[3] = v28;
      v26[4] = v29;
      v26[5] = v30;
      v1[(v14 >> 6) + 8] |= 1 << v14;
      v31 = (v1[6] + 32 * v14);
      *v31 = v11;
      v31[1] = v12;
      *(v1[7] + 8 * v14) = v26;
      v32 = v1[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_18;
      }

      v1[2] = v34;
      v4 = v36;
    }

    v2 = v4 - 1;
    if (!v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_262462C78();
  __break(1u);
  return result;
}

uint64_t sub_26243EA10(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v42 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 32); ; i += 4)
  {
    v36 = v2;
    v9 = i[1];
    v38 = *i;
    v39 = v9;
    v10 = i[3];
    v40 = i[2];
    v41 = v10;
    v11 = v38;
    v12 = v39;
    sub_26243FAE0(&v38, v37, &qword_27FF0D860, &qword_26246BE48);
    sub_26243FAE0(&v38, v37, &qword_27FF0D860, &qword_26246BE48);

    v14 = sub_2624415C0(v11, *(&v11 + 1), v12, *(&v12 + 1));
    v15 = v1[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v18 = v13;
    if (v1[3] < v17)
    {
      sub_262460DAC(v17, 1);
      v1 = v42;
      v19 = sub_2624415C0(v11, *(&v11 + 1), v12, *(&v12 + 1));
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_19;
      }

      v14 = v19;
    }

    if (v18)
    {

      v21 = v1[7];
      v22 = *(v21 + 8 * v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v21 + 8 * v14) = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = sub_26243C840(0, v22[2] + 1, 1, v22);
        *(v21 + 8 * v14) = v22;
      }

      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        v22 = sub_26243C840((v24 > 1), v25 + 1, 1, v22);
        *(v21 + 8 * v14) = v22;
      }

      v4 = v36;
      v22[2] = v25 + 1;
      v5 = &v22[8 * v25];
      v6 = v38;
      v7 = v39;
      v8 = v41;
      v5[4] = v40;
      v5[5] = v8;
      v5[2] = v6;
      v5[3] = v7;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D868, &qword_26246BE50);
      v26 = swift_allocObject();
      v27 = v38;
      v28 = v39;
      v26[1] = xmmword_262463D10;
      v26[2] = v27;
      v29 = v40;
      v30 = v41;
      v26[3] = v28;
      v26[4] = v29;
      v26[5] = v30;
      v1[(v14 >> 6) + 8] |= 1 << v14;
      v31 = (v1[6] + 32 * v14);
      *v31 = v11;
      v31[1] = v12;
      *(v1[7] + 8 * v14) = v26;
      v32 = v1[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_18;
      }

      v1[2] = v34;
      v4 = v36;
    }

    v2 = v4 - 1;
    if (!v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_262462C78();
  __break(1u);
  return result;
}

unint64_t sub_26243ECB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v56 = a1;
  v57 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v58 = v8;
  v59 = 0;
  v60 = v11 & v9;
  v61 = a2;
  v62 = a3;

  sub_26243E05C(&v51);
  v12 = v52;
  if (!v52)
  {
    goto LABEL_25;
  }

  v13 = v51;
  v48 = v53;
  v49 = v54;
  v50 = v55;
  v14 = *a5;
  result = sub_2624414FC(v51, v52);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_26245F9EC(v20, a4 & 1);
    v22 = *a5;
    result = sub_2624414FC(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_262462C78();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_2624613F0();
    result = v26;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    sub_26243F9F0(&v48, v24[7] + 40 * v25);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v27 = (v24[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  v28 = v24[7] + 40 * result;
  v29 = v48;
  v30 = v49;
  *(v28 + 32) = v50;
  *v28 = v29;
  *(v28 + 16) = v30;
  v31 = v24[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (!v19)
  {
    v24[2] = v32;
LABEL_15:
    sub_26243E05C(&v51);
    v12 = v52;
    if (v52)
    {
      v21 = 1;
      do
      {
        v13 = v51;
        v48 = v53;
        v49 = v54;
        v50 = v55;
        v34 = *a5;
        result = sub_2624414FC(v51, v12);
        v36 = v34[2];
        v37 = (v35 & 1) == 0;
        v19 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v35;
        if (v34[3] < v38)
        {
          sub_26245F9EC(v38, 1);
          v39 = *a5;
          result = sub_2624414FC(v13, v12);
          if ((a4 & 1) != (v40 & 1))
          {
            goto LABEL_8;
          }
        }

        v41 = *a5;
        if (a4)
        {
          v33 = result;

          sub_26243F9F0(&v48, v41[7] + 40 * v33);
        }

        else
        {
          v41[(result >> 6) + 8] |= 1 << result;
          v42 = (v41[6] + 16 * result);
          *v42 = v13;
          v42[1] = v12;
          v43 = v41[7] + 40 * result;
          v44 = v48;
          v45 = v49;
          *(v43 + 32) = v50;
          *v43 = v44;
          *(v43 + 16) = v45;
          v46 = v41[2];
          v19 = __OFADD__(v46, 1);
          v47 = v46 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v41[2] = v47;
        }

        sub_26243E05C(&v51);
        v12 = v52;
      }

      while (v52);
    }

LABEL_25:
    sub_26243F9E8();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_26243EFD4(uint64_t a1, uint64_t a2)
{
  v11 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      v4 = *(v3 + 48);
      v12[2] = *(v3 + 32);
      v12[3] = v4;
      v13 = *(v3 + 64);
      v5 = *(v3 + 16);
      v12[0] = *v3;
      v12[1] = v5;
      sub_26242706C(v12, v9);
      sub_26243A4DC(v7, v12);
      v9[2] = v7[2];
      v9[3] = v7[3];
      v10 = v8;
      v9[0] = v7[0];
      v9[1] = v7[1];
      sub_2623F3C50(v9);
      v3 += 72;
      --v2;
    }

    while (v2);
    return v11;
  }

  return a2;
}

uint64_t sub_26243F08C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D890, &qword_26246C0D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26243FD84();
  sub_262462D88();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_262462B88();
    v11 = 1;
    sub_262462B88();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_26243F270(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_262462C58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737465737361 && a2 == 0xE600000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365676465 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_262462C58();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_26243F380(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D7E0, &qword_26246BDB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26243F61C();
  sub_262462D88();
  if (!v1)
  {
    LOBYTE(v12) = 0;
    v8 = sub_262462B88();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D7E8, &qword_26246BDB8);
    v11 = 1;
    sub_26243F670();
    sub_262462BB8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D7F0, &qword_26246BDC0);
    v11 = 2;
    sub_26243F748();
    v10 = 0;
    sub_262462BB8();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_26243F61C()
{
  result = qword_2813BD8F0;
  if (!qword_2813BD8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD8F0);
  }

  return result;
}

unint64_t sub_26243F670()
{
  result = qword_2813BD3D8;
  if (!qword_2813BD3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0D7E8, &qword_26246BDB8);
    sub_26243F6F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD3D8);
  }

  return result;
}

unint64_t sub_26243F6F4()
{
  result = qword_2813BD418;
  if (!qword_2813BD418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD418);
  }

  return result;
}

unint64_t sub_26243F748()
{
  result = qword_2813BD3D0;
  if (!qword_2813BD3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0D7F0, &qword_26246BDC0);
    sub_26243F7CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD3D0);
  }

  return result;
}

unint64_t sub_26243F7CC()
{
  result = qword_2813BD3E0;
  if (!qword_2813BD3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0D7F8, &qword_26246BDC8);
    sub_26243F850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD3E0);
  }

  return result;
}

unint64_t sub_26243F850()
{
  result = qword_2813BD8C0;
  if (!qword_2813BD8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD8C0);
  }

  return result;
}

uint64_t sub_26243F994(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26243F9F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5F0, &qword_262463A90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_26243FA8C()
{
  result = qword_2813BD8D0;
  if (!qword_2813BD8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD8D0);
  }

  return result;
}

uint64_t sub_26243FAE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26243FB58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26243FBA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26243FC28()
{
  result = qword_27FF0D888;
  if (!qword_27FF0D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D888);
  }

  return result;
}

unint64_t sub_26243FC80()
{
  result = qword_2813BD8C8;
  if (!qword_2813BD8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD8C8);
  }

  return result;
}

unint64_t sub_26243FCD8()
{
  result = qword_2813BD8E0;
  if (!qword_2813BD8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD8E0);
  }

  return result;
}

unint64_t sub_26243FD30()
{
  result = qword_2813BD8E8;
  if (!qword_2813BD8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD8E8);
  }

  return result;
}

unint64_t sub_26243FD84()
{
  result = qword_27FF0D898;
  if (!qword_27FF0D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D898);
  }

  return result;
}

uint64_t sub_26243FDD8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_262462C58() & 1;
  }
}

uint64_t sub_26243FE5C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void)@<X2>, _BYTE *a3@<X8>)
{
  result = a2(a1, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result & 1;
  }

  return result;
}

unint64_t sub_26243FEB0()
{
  result = qword_27FF0D8A0;
  if (!qword_27FF0D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D8A0);
  }

  return result;
}

unint64_t sub_26243FF08()
{
  result = qword_27FF0D8A8;
  if (!qword_27FF0D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D8A8);
  }

  return result;
}

unint64_t sub_26243FF60()
{
  result = qword_27FF0D8B0;
  if (!qword_27FF0D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D8B0);
  }

  return result;
}

uint64_t sub_26243FFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 80) = a1;
  *(v3 + 88) = a3;
  *(v3 + 96) = *a2;
  *(v3 + 112) = *(a2 + 16);
  *(v3 + 120) = *(a2 + 24);
  *(v3 + 136) = *(a2 + 40);
  *(v3 + 192) = *(a2 + 48);
  return MEMORY[0x2822009F8](sub_262440034, 0, 0);
}

uint64_t sub_262440034()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = sub_262462738();
  v5 = v4;
  v0[18] = v3;
  v0[19] = v4;
  v6 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = v0[13];
  if (!v6)
  {
    goto LABEL_14;
  }

  v8 = v0[12] & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v7) & 0xF;
  }

  if (v8 && ((v9 = v0[17], (v9 & 0x2000000000000000) != 0) ? (v10 = HIBYTE(v9) & 0xF) : (v10 = v0[16] & 0xFFFFFFFFFFFFLL), v10))
  {
    sub_2624079E4(0, &qword_27FF0D928, 0x277CBFF20);
    v11 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
    v0[20] = v11;
    v12 = *(MEMORY[0x277CBFE08] + 4);
    v13 = swift_task_alloc();
    v0[21] = v13;
    *v13 = v0;
    v13[1] = sub_262440274;
    v14 = v0[11];

    return MEMORY[0x2821119B0](v14, v11);
  }

  else
  {
LABEL_14:
    v15 = v0[17];
    v16 = v0[15];
    v17 = v0[11];

    sub_2623F1BBC();
    swift_allocError();
    *v18 = v3;
    *(v18 + 8) = v5;
    *(v18 + 16) = 0xD00000000000002BLL;
    *(v18 + 24) = 0x8000000262471FF0;
    *(v18 + 32) = v22;
    *(v18 + 48) = v23;
    *(v18 + 64) = 0;
    swift_willThrow();
    v19 = sub_262462588();
    (*(*(v19 - 8) + 8))(v17, v19);
    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_262440274(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v7 = sub_26244048C;
  }

  else
  {
    v8 = *(v4 + 160);
    *(v4 + 184) = a1;

    v7 = sub_2624403A4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2624403A4()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 192);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v12 = *(v0 + 96);
  v13 = *(v0 + 112);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = sub_262462588();
  (*(*(v9 - 8) + 8))(v7, v9);
  *v8 = v12;
  *(v8 + 16) = v13;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = v4;
  *(v8 + 56) = v1;
  *(v8 + 64) = v3;
  *(v8 + 72) = v2;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_26244048C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 144);
  v18 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = *(v0 + 104);
  v6 = *(v0 + 88);

  swift_getErrorValue();
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);

  v10 = sub_262462C88();
  v12 = v11;
  sub_2623F1BBC();
  swift_allocError();
  *v13 = v3;
  *(v13 + 8) = v2;
  *(v13 + 16) = v10;
  *(v13 + 24) = v12;
  v14 = *(v0 + 32);
  *(v13 + 32) = *(v0 + 16);
  *(v13 + 48) = v14;
  *(v13 + 64) = 0;
  swift_willThrow();
  MEMORY[0x266728D50](v1);
  v15 = sub_262462588();
  (*(*(v15 - 8) + 8))(v6, v15);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2624405F8(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = *(v1 + 56);
  *(v2 + 160) = *(v1 + 72);
  return MEMORY[0x2822009F8](sub_262440628, 0, 0);
}

uint64_t sub_262440628()
{
  sub_262440D14(v0[17]);
  v1 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v2 = sub_262441414();
  v0[21] = v2;
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x277CBFF68]);
  v5 = v3;
  v6 = [v4 init];
  v0[22] = v6;
  v7 = *(MEMORY[0x277CBFDF0] + 4);
  v8 = swift_task_alloc();
  v0[23] = v8;
  *v8 = v0;
  v8[1] = sub_26244085C;
  v9 = v0[18];

  return MEMORY[0x282111978](v5, v6);
}

uint64_t sub_26244085C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v8 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v5 = sub_262440BC0;
  }

  else
  {
    v6 = *(v3 + 168);

    v5 = sub_26244097C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26244097C()
{
  v1 = v0[24];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v0[24];
    v4 = v0[21];
    v5 = [v2 dictionary];
    sub_2624079E4(0, &qword_27FF0D910, 0x277CBFEF8);
    v6 = sub_262462698();

    v7 = sub_262440F94(v6);
    swift_unknownObjectRelease();

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    v10 = v0[24];
    v11 = v0[20];
    v12 = v0[21];
    v13 = v0[19];
    *&v18 = 0;
    *(&v18 + 1) = 0xE000000000000000;

    sub_262462A28();
    v0[12] = 0;
    v0[13] = 0xE000000000000000;
    MEMORY[0x266728460](0xD00000000000003BLL, 0x8000000262472300);
    v0[16] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D908, &qword_26246C2C8);
    sub_262462AA8();
    MEMORY[0x266728460](8200224, 0xE300000000000000);
    v14 = v0[12];
    v15 = v0[13];
    sub_2623F1BBC();
    swift_allocError();
    *v16 = v13;
    *(v16 + 8) = v11;
    *(v16 + 16) = v14;
    *(v16 + 24) = v15;
    *(v16 + 32) = v18;
    *(v16 + 48) = v19;
    *(v16 + 64) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_262440BC0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);

  sub_262462A28();

  swift_getErrorValue();
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 88);
  v8 = sub_262462C88();
  MEMORY[0x266728460](v8);

  MEMORY[0x266728460](32032, 0xE200000000000000);
  sub_2623F1BBC();
  swift_allocError();
  *v9 = v4;
  *(v9 + 8) = v3;
  *(v9 + 16) = 0xD000000000000026;
  *(v9 + 24) = 0x80000002624722D0;
  v10 = *(v0 + 32);
  *(v9 + 32) = *(v0 + 16);
  *(v9 + 48) = v10;
  *(v9 + 64) = 1;
  swift_willThrow();

  MEMORY[0x266728D50](v1);
  v11 = *(v0 + 8);

  return v11();
}

unint64_t sub_262440D14(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D920, &qword_26246C2D8);
    v2 = sub_262462B08();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        sub_2623F3970(*(a1 + 56) + 40 * v15, &v30);
        v28 = v18;
        v29 = v17;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5F0, &qword_262463A90);
        swift_dynamicCast();
        sub_2624079D4(&v24, v26);
        sub_2624079D4(v26, v27);
        sub_2624079D4(v27, &v25);
        result = sub_2624414FC(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_2624079D4(&v25, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_2624079D4(&v25, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_262440F94(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D918, &qword_26246C2D0);
    v1 = sub_262462B08();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v4)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(*(a1 + 56) + 8 * v13);
        sub_2624079E4(0, &qword_27FF0D910, 0x277CBFEF8);

        v18 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5F0, &qword_262463A90);
        swift_dynamicCast();
        v32 = v29;
        v33 = v30;
        v34 = v31;
        v28 = v29;
        v29 = v30;
        *&v30 = v31;
        result = sub_2624414FC(v16, v15);
        if (v19)
        {
          v8 = (v1[6] + 16 * result);
          v9 = v8[1];
          *v8 = v16;
          v8[1] = v15;
          v10 = result;

          result = sub_26243F9F0(&v28, v1[7] + 40 * v10);
          v7 = v11;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v1[2] >= v1[3])
          {
            goto LABEL_20;
          }

          *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v1[6] + 16 * result);
          *v20 = v16;
          v20[1] = v15;
          v21 = v1[7] + 40 * result;
          v22 = v28;
          v23 = v29;
          *(v21 + 32) = v30;
          *v21 = v22;
          *(v21 + 16) = v23;
          v24 = v1[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v1[2] = v26;
          v7 = v11;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_262441210(uint64_t a1)
{
  v4 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v4;
  *(v2 + 80) = v1[4];
  v5 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v5;
  v6 = swift_task_alloc();
  *(v2 + 96) = v6;
  *v6 = v2;
  v6[1] = sub_2624412C0;

  return sub_2624405F8(a1);
}

uint64_t sub_2624412C0(uint64_t a1)
{
  v4 = *(*v2 + 96);
  v5 = *v2;
  *(v5 + 104) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2624413FC, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

id sub_262441414()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_262462688();

  v7[0] = 0;
  v2 = [v0 initWithDictionary:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_262462548();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t sub_2624414FC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_262462CF8();
  sub_262462778();
  v6 = sub_262462D38();

  return sub_262441660(a1, a2, v6);
}

unint64_t sub_262441574(double a1)
{
  v3 = *(v1 + 40);
  v4 = sub_262462CE8();

  return sub_262441718(v4, a1);
}

unint64_t sub_2624415C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_262462CF8();
  sub_262462778();
  sub_262462778();
  v10 = sub_262462D38();

  return sub_262441780(a1, a2, a3, a4, v10);
}

unint64_t sub_262441660(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_262462C58())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_262441718(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_262441780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_262462C58() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_262462C58() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

uint64_t sub_262441880@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CED8, &qword_26246C340);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262444608();
  result = sub_262462D88();
  if (!v2)
  {
    v12 = sub_262462BC8();
    if (*(v12 + 16))
    {
      v13 = *(v12 + 32);

      v14 = *(sub_262462BC8() + 16);

      if (v14 == 1 || (sub_26240AC64() & 1) != 0)
      {
        switch(v13)
        {
          case 1:
          case 2:
            sub_2623F3CA4(a1, v32);
            v23 = sub_2624520B4(v32);
            *(a2 + 24) = &type metadata for BooleanField;
            v24 = v23;
            v26 = v25;
            v28 = v27;
            *(a2 + 32) = sub_262452470();
            *a2 = v24;
            *(a2 + 8) = v26;
            *(a2 + 16) = v28;
            return (*(v6 + 8))(v9, v5);
          case 3:
          case 4:
          case 5:
          case 6:
            sub_2623F3CA4(a1, v32);
            *(a2 + 24) = type metadata accessor for BooleanRule();
            *(a2 + 32) = sub_262453BFC(&qword_27FF0DBC0, type metadata accessor for BooleanRule);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
            sub_262443EC8(v32, boxed_opaque_existential_1);
            return (*(v6 + 8))(v9, v5);
          case 7:
            LOBYTE(v32[0]) = 7;
            *(a2 + 24) = &type metadata for Or;
            *(a2 + 32) = sub_262451C80();
            sub_262451CD4();
            goto LABEL_56;
          case 8:
            LOBYTE(v32[0]) = 8;
            *(a2 + 24) = &type metadata for And;
            *(a2 + 32) = sub_262451BD8();
            sub_262451C2C();
            goto LABEL_56;
          case 9:
            LOBYTE(v32[0]) = 9;
            *(a2 + 24) = &type metadata for Not;
            *(a2 + 32) = sub_262451B30();
            *a2 = swift_allocObject();
            sub_262451B84();
            goto LABEL_56;
          case 10:
            LOBYTE(v32[0]) = 10;
            *(a2 + 24) = &type metadata for BooleanEqual;
            *(a2 + 32) = sub_262451A88();
            *a2 = swift_allocObject();
            sub_262451ADC();
            goto LABEL_56;
          case 11:
            LOBYTE(v32[0]) = 11;
            *(a2 + 24) = &type metadata for BooleanIsNull;
            *(a2 + 32) = sub_2624519E0();
            *a2 = swift_allocObject();
            sub_262451A34();
            goto LABEL_56;
          case 12:
            LOBYTE(v32[0]) = 12;
            *(a2 + 24) = &type metadata for BooleanIsNone;
            *(a2 + 32) = sub_262451938();
            *a2 = swift_allocObject();
            sub_26245198C();
            goto LABEL_56;
          case 13:
            LOBYTE(v32[0]) = 13;
            *(a2 + 24) = &type metadata for BooleanIsMissing;
            *(a2 + 32) = sub_262451890();
            *a2 = swift_allocObject();
            sub_2624518E4();
            goto LABEL_56;
          case 14:
            LOBYTE(v32[0]) = 14;
            *(a2 + 24) = &type metadata for BooleanReplaceFailure;
            *(a2 + 32) = sub_2624517E8();
            *a2 = swift_allocObject();
            sub_26245183C();
            goto LABEL_56;
          case 15:
            LOBYTE(v32[0]) = 15;
            *(a2 + 24) = &type metadata for LessThan;
            *(a2 + 32) = sub_262451740();
            *a2 = swift_allocObject();
            sub_262451794();
            goto LABEL_56;
          case 16:
            LOBYTE(v32[0]) = 16;
            *(a2 + 24) = &type metadata for LessThanOrEqual;
            *(a2 + 32) = sub_262451698();
            *a2 = swift_allocObject();
            sub_2624516EC();
            goto LABEL_56;
          case 17:
            LOBYTE(v32[0]) = 17;
            *(a2 + 24) = &type metadata for GreaterThan;
            *(a2 + 32) = sub_2624515F0();
            *a2 = swift_allocObject();
            sub_262451644();
            goto LABEL_56;
          case 18:
            LOBYTE(v32[0]) = 18;
            *(a2 + 24) = &type metadata for GreaterThanOrEqual;
            *(a2 + 32) = sub_262451548();
            *a2 = swift_allocObject();
            sub_26245159C();
            goto LABEL_56;
          case 19:
            LOBYTE(v32[0]) = 19;
            *(a2 + 24) = &type metadata for NumberEqual;
            *(a2 + 32) = sub_2624514A0();
            *a2 = swift_allocObject();
            sub_2624514F4();
            goto LABEL_56;
          case 20:
            LOBYTE(v32[0]) = 20;
            *(a2 + 24) = &type metadata for NumberIsNull;
            *(a2 + 32) = sub_2624513F8();
            *a2 = swift_allocObject();
            sub_26245144C();
            goto LABEL_56;
          case 21:
            LOBYTE(v32[0]) = 21;
            *(a2 + 24) = &type metadata for NumberIsNone;
            *(a2 + 32) = sub_262451350();
            *a2 = swift_allocObject();
            sub_2624513A4();
            goto LABEL_56;
          case 22:
            LOBYTE(v32[0]) = 22;
            *(a2 + 24) = &type metadata for NumberIsMissing;
            *(a2 + 32) = sub_2624512A8();
            *a2 = swift_allocObject();
            sub_2624512FC();
            goto LABEL_56;
          case 23:
            LOBYTE(v32[0]) = 23;
            *(a2 + 24) = &type metadata for NumberListContains;
            *(a2 + 32) = sub_262451200();
            *a2 = swift_allocObject();
            sub_262451254();
            goto LABEL_56;
          case 24:
            LOBYTE(v32[0]) = 24;
            *(a2 + 24) = &type metadata for NumberListAll;
            *(a2 + 32) = sub_262451158();
            *a2 = swift_allocObject();
            sub_2624511AC();
            goto LABEL_56;
          case 25:
            LOBYTE(v32[0]) = 25;
            *(a2 + 24) = &type metadata for NumberListContainsAny;
            *(a2 + 32) = sub_2624510B0();
            *a2 = swift_allocObject();
            sub_262451104();
            goto LABEL_56;
          case 26:
            LOBYTE(v32[0]) = 26;
            *(a2 + 24) = &type metadata for NumberListContainsAll;
            *(a2 + 32) = sub_262451008();
            *a2 = swift_allocObject();
            sub_26245105C();
            goto LABEL_56;
          case 27:
            LOBYTE(v32[0]) = 27;
            *(a2 + 24) = &type metadata for NumberListEqual;
            *(a2 + 32) = sub_262450F60();
            *a2 = swift_allocObject();
            sub_262450FB4();
            goto LABEL_56;
          case 28:
            LOBYTE(v32[0]) = 28;
            *(a2 + 24) = &type metadata for NumberListIsNull;
            *(a2 + 32) = sub_262450EB8();
            *a2 = swift_allocObject();
            sub_262450F0C();
            goto LABEL_56;
          case 29:
            LOBYTE(v32[0]) = 29;
            *(a2 + 24) = &type metadata for NumberListIsNone;
            *(a2 + 32) = sub_262450E10();
            *a2 = swift_allocObject();
            sub_262450E64();
            goto LABEL_56;
          case 30:
            LOBYTE(v32[0]) = 30;
            *(a2 + 24) = &type metadata for NumberListIsMissing;
            *(a2 + 32) = sub_262450D68();
            *a2 = swift_allocObject();
            sub_262450DBC();
            goto LABEL_56;
          case 31:
            LOBYTE(v32[0]) = 31;
            *(a2 + 24) = &type metadata for RegexMatch;
            *(a2 + 32) = sub_262450CC0();
            *a2 = swift_allocObject();
            sub_262450D14();
            goto LABEL_56;
          case 32:
            LOBYTE(v32[0]) = 32;
            *(a2 + 24) = &type metadata for SubstringMatch;
            *(a2 + 32) = sub_262450C18();
            *a2 = swift_allocObject();
            sub_262450C6C();
            goto LABEL_56;
          case 33:
            LOBYTE(v32[0]) = 33;
            *(a2 + 24) = &type metadata for StringEqual;
            *(a2 + 32) = sub_262450B70();
            *a2 = swift_allocObject();
            sub_262450BC4();
            goto LABEL_56;
          case 34:
            LOBYTE(v32[0]) = 34;
            *(a2 + 24) = &type metadata for StringEqualIgnoreCase;
            *(a2 + 32) = sub_262450AC8();
            *a2 = swift_allocObject();
            sub_262450B1C();
            goto LABEL_56;
          case 35:
            LOBYTE(v32[0]) = 35;
            *(a2 + 24) = &type metadata for BooleanMatchCase;
            *(a2 + 32) = sub_262450A20();
            *a2 = swift_allocObject();
            sub_262450A74();
            goto LABEL_56;
          case 36:
            LOBYTE(v32[0]) = 36;
            *(a2 + 24) = &type metadata for StringIsNull;
            *(a2 + 32) = sub_262450978();
            *a2 = swift_allocObject();
            sub_2624509CC();
            goto LABEL_56;
          case 37:
            LOBYTE(v32[0]) = 37;
            *(a2 + 24) = &type metadata for StringIsNone;
            *(a2 + 32) = sub_2624508D0();
            *a2 = swift_allocObject();
            sub_262450924();
            goto LABEL_56;
          case 38:
            LOBYTE(v32[0]) = 38;
            *(a2 + 24) = &type metadata for StringIsMissing;
            *(a2 + 32) = sub_262450828();
            *a2 = swift_allocObject();
            sub_26245087C();
            goto LABEL_56;
          case 39:
            LOBYTE(v32[0]) = 39;
            *(a2 + 24) = &type metadata for StringListContains;
            *(a2 + 32) = sub_262450780();
            *a2 = swift_allocObject();
            sub_2624507D4();
            goto LABEL_56;
          case 40:
            LOBYTE(v32[0]) = 40;
            *(a2 + 24) = &type metadata for StringListAll;
            *(a2 + 32) = sub_2624506D8();
            *a2 = swift_allocObject();
            sub_26245072C();
            goto LABEL_56;
          case 41:
            LOBYTE(v32[0]) = 41;
            *(a2 + 24) = &type metadata for StringListContainsAny;
            *(a2 + 32) = sub_262450630();
            *a2 = swift_allocObject();
            sub_262450684();
            goto LABEL_56;
          case 42:
            LOBYTE(v32[0]) = 42;
            *(a2 + 24) = &type metadata for StringListContainsAll;
            *(a2 + 32) = sub_262450588();
            *a2 = swift_allocObject();
            sub_2624505DC();
            goto LABEL_56;
          case 43:
            LOBYTE(v32[0]) = 43;
            *(a2 + 24) = &type metadata for StringListEqual;
            *(a2 + 32) = sub_2624504E0();
            *a2 = swift_allocObject();
            sub_262450534();
            goto LABEL_56;
          case 44:
            LOBYTE(v32[0]) = 44;
            *(a2 + 24) = &type metadata for StringListIsNull;
            *(a2 + 32) = sub_262450438();
            *a2 = swift_allocObject();
            sub_26245048C();
            goto LABEL_56;
          case 45:
            LOBYTE(v32[0]) = 45;
            *(a2 + 24) = &type metadata for StringListIsNone;
            *(a2 + 32) = sub_262450390();
            *a2 = swift_allocObject();
            sub_2624503E4();
            goto LABEL_56;
          case 46:
            LOBYTE(v32[0]) = 46;
            *(a2 + 24) = &type metadata for StringListIsMissing;
            *(a2 + 32) = sub_2624502E8();
            *a2 = swift_allocObject();
            sub_26245033C();
            goto LABEL_56;
          case 47:
            LOBYTE(v32[0]) = 47;
            *(a2 + 24) = &type metadata for DecisionEqual;
            *(a2 + 32) = sub_262450240();
            *a2 = swift_allocObject();
            sub_262450294();
            goto LABEL_56;
          case 48:
            LOBYTE(v32[0]) = 48;
            *(a2 + 24) = &type metadata for DecisionIsNull;
            *(a2 + 32) = sub_262450198();
            *a2 = swift_allocObject();
            sub_2624501EC();
            goto LABEL_56;
          case 49:
            LOBYTE(v32[0]) = 49;
            *(a2 + 24) = &type metadata for DecisionIsNone;
            *(a2 + 32) = sub_2624500F0();
            *a2 = swift_allocObject();
            sub_262450144();
            goto LABEL_56;
          case 50:
            LOBYTE(v32[0]) = 50;
            *(a2 + 24) = &type metadata for DecisionIsMissing;
            *(a2 + 32) = sub_262450048();
            *a2 = swift_allocObject();
            sub_26245009C();
LABEL_56:
            sub_262462BB8();
            break;
          default:
            sub_2623F3CA4(a1, v32);
            v29 = sub_262451D74(v32);
            *(a2 + 24) = &type metadata for BooleanValue;
            v30 = v29;
            *(a2 + 32) = sub_2624524C4();
            *a2 = v30 & 1;
            break;
        }

        return (*(v6 + 8))(v9, v5);
      }
    }

    else
    {
    }

    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v17 = sub_262462D78();
    v18 = sub_262427A60(v17);
    v20 = v19;

    sub_2623F1BBC();
    swift_allocError();
    *v21 = v18;
    *(v21 + 8) = v20;
    *(v21 + 16) = 0xD000000000000011;
    *(v21 + 24) = 0x800000026246C2E0;
    v22 = v32[1];
    *(v21 + 32) = v32[0];
    *(v21 + 48) = v22;
    *(v21 + 64) = 3;
    swift_willThrow();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_2624426D0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  v10 = (*(v9 + 24))(&v17, a1, v8, v9);
  if (!v4)
  {
    v11 = v10;
    v12 = a3[3];
    v13 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v12);
    (*(v13 + 24))(&v16, v11, v12, v13);
    if (v17 && v16)
    {
      v15 = (a4)(v17);

      a4 = v15 & 1;
    }

    else
    {

      a4 = 2;
    }
  }

  return a4;
}

uint64_t sub_262442820(uint64_t a1, void *a2, void *a3)
{
  v6 = a2[3];
  v7 = a2[4];
  v8 = __swift_project_boxed_opaque_existential_1(a2, v6);
  v9 = a1;
  v10 = v8;
  v11 = (*(v7 + 24))(&v33, v9, v6, v7);
  if (!v3)
  {
    v36 = v11;
    v12 = a3[3];
    v13 = a3[4];
    v14 = v11;
    __swift_project_boxed_opaque_existential_1(a3, v12);
    v32 = (*(v13 + 24))(&v29, v14, v12, v13);
    v16 = v33;
    v17 = v34;
    v18 = v35;
    sub_262419944(v33, v34, v35);
    if (v18 != 255)
    {
      v26 = v16;
      v27 = v17;
      v28 = v18;
      v19 = v29;
      v20 = v30;
      v21 = v31;
      sub_262419944(v29, v30, v31);
      if (v21 != 255)
      {
        v23 = v19;
        v24 = v20;
        v25 = v21;
        v22 = _s5Rules8DecisionO2eeoiySbAC_ACtFZ_0(&v26, &v23);
        sub_2623F98B8(v23, v24, v25);
        sub_2623F98B8(v26, v27, v28);
        v10 = v22 & 1;
        sub_262419958(v29, v30, v31);
LABEL_9:
        sub_262419958(v33, v34, v35);

        return v10;
      }

      sub_2623F98B8(v16, v17, v18);
    }

    sub_262419958(v29, v30, v31);
    v10 = 2;
    goto LABEL_9;
  }

  return v10;
}

uint64_t sub_2624429FC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  result = (*(v7 + 24))(&v13, a1, v6, v7);
  if (!v3)
  {
    v9 = a3[3];
    v10 = a3[4];
    v11 = result;
    __swift_project_boxed_opaque_existential_1(a3, v9);
    (*(v10 + 24))(&v12, v11, v9, v10);

    if (v13 == 2)
    {
      return 2;
    }

    else if (v12 == 2)
    {
      return 2;
    }

    else
    {
      return ((v12 ^ v13) & 1) == 0;
    }
  }

  return result;
}

uint64_t sub_262442B0C(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  v9 = (*(v8 + 24))(&v17, a1, v7, v8);
  if (!v3)
  {
    v10 = v9;
    v11 = a3[3];
    v12 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v11);
    (*(v12 + 24))(&v15, v10, v11, v12);
    if (v18 && v16)
    {
      if (v17 == v15 && v18 == v16)
      {
        v14 = 1;
      }

      else
      {
        v14 = sub_262462C58();
      }

      v4 = v14 & 1;
    }

    else
    {

      v4 = 2;
    }
  }

  return v4;
}

uint64_t sub_262442C80(uint64_t a1, void *a2, void *a3)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  result = (*(v7 + 24))(&v14, a1, v6, v7);
  if (!v3)
  {
    v9 = a3[3];
    v10 = a3[4];
    v11 = result;
    __swift_project_boxed_opaque_existential_1(a3, v9);
    (*(v10 + 24))(&v12, v11, v9, v10);

    if (v15 & 1) != 0 || (v13)
    {
      return 2;
    }

    else
    {
      return v14 == v12;
    }
  }

  return result;
}

uint64_t sub_262442D90(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(v5 + 24))(v20, a1, v4, v5);
  if (v2)
  {
    v22 = v2;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
    if (swift_dynamicCast())
    {
      v19 = v21;
      v17 = v20[2];
      v18 = v20[3];
      v15 = v20[0];
      v16 = v20[1];
      if (v21 == 5)
      {
        MEMORY[0x266728D50](v2);
        v10 = v17;
        v11 = v18;
        v12 = v19;
        v8 = v15;
        v9 = v16;
        sub_262427BA0(a1, &v8);
        v13[2] = v10;
        v13[3] = v11;
        v14 = v12;
        v13[0] = v8;
        v13[1] = v9;
        sub_2623F3C50(v13);
        MEMORY[0x266728D50](v22);
        return 1;
      }

      sub_2623F3C50(&v15);
    }

    MEMORY[0x266728D50](v22);
    return swift_willThrow();
  }

  else
  {

    return 0;
  }
}

uint64_t sub_262442F0C(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(v5 + 24))(&v20, a1, v4, v5);
  if (v2)
  {
    v25 = v2;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
    if (swift_dynamicCast())
    {
      v19 = v24;
      v17 = v22;
      v18 = v23;
      v15 = v20;
      v16 = v21;
      if (v24 == 5)
      {
        MEMORY[0x266728D50](v2);
        v10 = v17;
        v11 = v18;
        v12 = v19;
        v8 = v15;
        v9 = v16;
        sub_262427BA0(a1, &v8);
        v13[2] = v10;
        v13[3] = v11;
        v14 = v12;
        v13[0] = v8;
        v13[1] = v9;
        sub_2623F3C50(v13);
        MEMORY[0x266728D50](v25);
        return 1;
      }

      sub_2623F3C50(&v15);
    }

    MEMORY[0x266728D50](v25);
    return swift_willThrow();
  }

  else
  {
    sub_262419958(v20, *(&v20 + 1), v21);
    return 0;
  }
}

uint64_t sub_26244308C(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(v5 + 24))(v20, a1, v4, v5);
  if (!v2)
  {
    return 0;
  }

  v22 = v2;
  v6 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
  if (swift_dynamicCast())
  {
    v19 = v21;
    v17 = v20[2];
    v18 = v20[3];
    v15 = v20[0];
    v16 = v20[1];
    if (v21 == 5)
    {
      MEMORY[0x266728D50](v2);
      v10 = v17;
      v11 = v18;
      v12 = v19;
      v8 = v15;
      v9 = v16;
      sub_262427BA0(a1, &v8);
      v13[2] = v10;
      v13[3] = v11;
      v14 = v12;
      v13[0] = v8;
      v13[1] = v9;
      sub_2623F3C50(v13);
      MEMORY[0x266728D50](v22);
      return 1;
    }

    sub_2623F3C50(&v15);
  }

  MEMORY[0x266728D50](v22);
  return swift_willThrow();
}

uint64_t sub_2624431F8(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(v5 + 24))(v20, a1, v4, v5);
  if (v2)
  {
    v22 = v2;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
    if (swift_dynamicCast())
    {
      v19 = v21;
      v17 = v20[2];
      v18 = v20[3];
      v15 = v20[0];
      v16 = v20[1];
      if (v21 == 5)
      {
        MEMORY[0x266728D50](v2);
        v10 = v17;
        v11 = v18;
        v12 = v19;
        v8 = v15;
        v9 = v16;
        sub_262427BA0(a1, &v8);
        v13[2] = v10;
        v13[3] = v11;
        v14 = v12;
        v13[0] = v8;
        v13[1] = v9;
        sub_2623F3C50(v13);
        MEMORY[0x266728D50](v22);
        return 1;
      }

      sub_2623F3C50(&v15);
    }

    MEMORY[0x266728D50](v22);
    return swift_willThrow();
  }

  else
  {

    return 0;
  }
}

uint64_t sub_262443374(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(v5 + 24))(v20, a1, v4, v5);
  if (v2)
  {
    v22 = v2;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
    if (swift_dynamicCast())
    {
      v19 = v21;
      v17 = v20[2];
      v18 = v20[3];
      v15 = v20[0];
      v16 = v20[1];
      if (v21 == 6)
      {
        MEMORY[0x266728D50](v2);
        v10 = v17;
        v11 = v18;
        v12 = v19;
        v8 = v15;
        v9 = v16;
        sub_262427BA0(a1, &v8);
        v13[2] = v10;
        v13[3] = v11;
        v14 = v12;
        v13[0] = v8;
        v13[1] = v9;
        sub_2623F3C50(v13);
        MEMORY[0x266728D50](v22);
        return 1;
      }

      sub_2623F3C50(&v15);
    }

    MEMORY[0x266728D50](v22);
    return swift_willThrow();
  }

  else
  {

    return 0;
  }
}

uint64_t sub_2624434F0(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(v5 + 24))(&v20, a1, v4, v5);
  if (v2)
  {
    v25 = v2;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
    if (swift_dynamicCast())
    {
      v19 = v24;
      v17 = v22;
      v18 = v23;
      v15 = v20;
      v16 = v21;
      if (v24 == 6)
      {
        MEMORY[0x266728D50](v2);
        v10 = v17;
        v11 = v18;
        v12 = v19;
        v8 = v15;
        v9 = v16;
        sub_262427BA0(a1, &v8);
        v13[2] = v10;
        v13[3] = v11;
        v14 = v12;
        v13[0] = v8;
        v13[1] = v9;
        sub_2623F3C50(v13);
        MEMORY[0x266728D50](v25);
        return 1;
      }

      sub_2623F3C50(&v15);
    }

    MEMORY[0x266728D50](v25);
    return swift_willThrow();
  }

  else
  {
    sub_262419958(v20, *(&v20 + 1), v21);
    return 0;
  }
}

uint64_t sub_262443670(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(v5 + 24))(v20, a1, v4, v5);
  if (!v2)
  {
    return 0;
  }

  v22 = v2;
  v6 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
  if (swift_dynamicCast())
  {
    v19 = v21;
    v17 = v20[2];
    v18 = v20[3];
    v15 = v20[0];
    v16 = v20[1];
    if (v21 == 6)
    {
      MEMORY[0x266728D50](v2);
      v10 = v17;
      v11 = v18;
      v12 = v19;
      v8 = v15;
      v9 = v16;
      sub_262427BA0(a1, &v8);
      v13[2] = v10;
      v13[3] = v11;
      v14 = v12;
      v13[0] = v8;
      v13[1] = v9;
      sub_2623F3C50(v13);
      MEMORY[0x266728D50](v22);
      return 1;
    }

    sub_2623F3C50(&v15);
  }

  MEMORY[0x266728D50](v22);
  return swift_willThrow();
}

uint64_t sub_2624437DC(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(v5 + 24))(v20, a1, v4, v5);
  if (v2)
  {
    v22 = v2;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
    if (swift_dynamicCast())
    {
      v19 = v21;
      v17 = v20[2];
      v18 = v20[3];
      v15 = v20[0];
      v16 = v20[1];
      if (v21 == 6)
      {
        MEMORY[0x266728D50](v2);
        v10 = v17;
        v11 = v18;
        v12 = v19;
        v8 = v15;
        v9 = v16;
        sub_262427BA0(a1, &v8);
        v13[2] = v10;
        v13[3] = v11;
        v14 = v12;
        v13[0] = v8;
        v13[1] = v9;
        sub_2623F3C50(v13);
        MEMORY[0x266728D50](v22);
        return 1;
      }

      sub_2623F3C50(&v15);
    }

    MEMORY[0x266728D50](v22);
    return swift_willThrow();
  }

  else
  {

    return 0;
  }
}

uint64_t sub_262443958(char a1)
{
  result = 0x65756C6176;
  switch(a1)
  {
    case 1:
      return 0x6D614E646C656966;
    case 2:
      return 0x746C7561666564;
    case 3:
      return 1701667182;
    case 4:
      return 0xD000000000000010;
    case 5:
      return 0x6C615673656C7572;
    case 6:
      return 0x6369676F6CLL;
    case 7:
      return 29263;
    case 8:
      return 6581825;
    case 9:
      return 7630670;
    case 10:
      return 0x456E61656C6F6F42;
    case 11:
    case 12:
      return 0x496E61656C6F6F42;
    case 13:
      return 0xD000000000000010;
    case 14:
    case 25:
    case 26:
    case 34:
    case 41:
    case 42:
      return 0xD000000000000015;
    case 15:
      return 0x6E6168547373654CLL;
    case 16:
      return 0x6E6168547373654CLL;
    case 17:
      return 0x5472657461657247;
    case 18:
    case 23:
    case 39:
      return 0xD000000000000012;
    case 19:
      v6 = 0x7265626D754ELL;
      return v6 & 0xFFFFFFFFFFFFLL | 0x7145000000000000;
    case 20:
      v5 = 0x7265626D754ELL;
      goto LABEL_27;
    case 21:
      v4 = 0x7265626D754ELL;
      goto LABEL_30;
    case 22:
      v8 = 0x7265626D754ELL;
      goto LABEL_45;
    case 24:
      v7 = 0x7265626D754ELL;
      goto LABEL_19;
    case 27:
      v3 = 0x7265626D754ELL;
      goto LABEL_9;
    case 28:
      return 0xD000000000000010;
    case 29:
      return 0xD000000000000010;
    case 30:
    case 46:
      return 0xD000000000000013;
    case 31:
      return 0x74614D7865676552;
    case 32:
      return 0x6E69727473627553;
    case 33:
      v6 = 0x676E69727453;
      return v6 & 0xFFFFFFFFFFFFLL | 0x7145000000000000;
    case 35:
      return 0xD000000000000010;
    case 36:
      v5 = 0x676E69727453;
LABEL_27:
      result = v5 & 0xFFFFFFFFFFFFLL | 0x7349000000000000;
      break;
    case 37:
      v4 = 0x676E69727453;
LABEL_30:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x7349000000000000;
      break;
    case 38:
      v8 = 0x676E69727453;
LABEL_45:
      result = v8 & 0xFFFFFFFFFFFFLL | 0x7349000000000000;
      break;
    case 40:
      v7 = 0x676E69727453;
LABEL_19:
      result = v7 & 0xFFFFFFFFFFFFLL | 0x694C000000000000;
      break;
    case 43:
      v3 = 0x676E69727453;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x694C000000000000;
      break;
    case 44:
      result = 0xD000000000000010;
      break;
    case 45:
      result = 0xD000000000000010;
      break;
    case 47:
    case 48:
    case 49:
      result = 0x6E6F697369636544;
      break;
    case 50:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_262443E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_262455244(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_262443E50(uint64_t a1)
{
  v2 = sub_262444608();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262443E8C(uint64_t a1)
{
  v2 = sub_262444608();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262443EC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v42 = sub_262462A88();
  v37 = *(v42 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v42);
  v40 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4E8, &qword_262463350);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = v34 - v7;
  v38 = type metadata accessor for RulesValidity();
  v36 = *(v38 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DC00, &unk_26246C380);
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v34 - v13;
  v15 = type metadata accessor for BooleanRule();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26245263C();
  v20 = v43;
  sub_262462D88();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v43 = v10;
  LOBYTE(v45[0]) = 0;
  v21 = v14;
  *v18 = sub_262462B88();
  *(v18 + 1) = v23;
  v34[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DBF0, &qword_26246C368);
  LOBYTE(v44[0]) = 1;
  sub_2624525C0();
  sub_262462BB8();
  v18[16] = v45[0];
  LOBYTE(v45[0]) = 2;
  sub_262453BFC(&qword_2813BDBE8, type metadata accessor for RulesValidity);
  v24 = v38;
  v25 = v39;
  sub_262462B78();
  v26 = a1;
  v42 = v21;
  v28 = v36 + 48;
  v27 = *(v36 + 48);
  if (v27(v25, 1, v24) == 1)
  {
    v36 = v28;
    v29 = v43;
    *v43 = 0;
    swift_storeEnumTagMultiPayload();
    v30 = v27(v25, 1, v24);
    v31 = v29;
    v32 = v35;
    if (v30 != 1)
    {
      sub_2623F39E0(v25, &qword_27FF0C4E8, &qword_262463350);
    }
  }

  else
  {
    v31 = v43;
    sub_2623F2530(v25, v43);
    v32 = v35;
  }

  sub_2623F2530(v31, &v18[*(v15 + 24)]);
  v46 = 3;
  sub_262462B58();
  type metadata accessor for BooleanExpressionDecoder();
  sub_262441880(v45, v44);
  v33 = v41;
  __swift_destroy_boxed_opaque_existential_1(v44);
  (*(v33 + 8))(v42, v11);
  sub_2623EB668(v45, &v18[*(v15 + 28)]);
  sub_262452690(v18, v32);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_2624526F4(v18, type metadata accessor for BooleanRule);
}

unint64_t sub_262444608()
{
  result = qword_2813BD6F8[0];
  if (!qword_2813BD6F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813BD6F8);
  }

  return result;
}

uint64_t sub_26244465C(uint64_t a1)
{
  v2 = sub_262452518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262444698(uint64_t a1)
{
  v2 = sub_262452518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2624446D4(_BYTE *a1, uint64_t a2)
{
  *a1 = *v2;

  return a2;
}

uint64_t sub_262444708@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_262451D74(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_262444738(uint64_t a1)
{
  v2 = sub_26245256C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262444774(uint64_t a1)
{
  v2 = sub_26245256C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2624447B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a4 == 2)
  {
    v38 = 0;
    memset(v37, 0, sizeof(v37));

    if (!*(a1 + 16))
    {
      goto LABEL_9;
    }
  }

  else
  {
    LOBYTE(v31) = a4 & 1;

    sub_2624629E8();
    if (!*(a1 + 16))
    {
LABEL_9:
      sub_2623F3970(v37, &v34);
      if (*(&v35 + 1))
      {
        v39 = v34;
        v40 = v35;
        v12 = v36;
        goto LABEL_15;
      }

      sub_2623F39E0(&v34, &qword_27FF0C5F0, &qword_262463A90);
      sub_2623F1BBC();
      swift_allocError();
      *v13 = a2;
      *(v13 + 8) = a3;
      v14 = v33;
      v15 = v32;
      *(v13 + 16) = v31;
      *(v13 + 32) = v15;
      *(v13 + 48) = v14;
      *(v13 + 64) = 6;
      swift_willThrow();
LABEL_22:
      sub_2623F39E0(v37, &qword_27FF0C5F0, &qword_262463A90);
      return v4;
    }
  }

  v8 = sub_2624414FC(a2, a3);
  if ((v9 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_2623F3970(*(a1 + 56) + 40 * v8, &v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5F0, &qword_262463A90);
  v10 = sub_262462918();
  v11 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];

  swift_unknownObjectRelease();
  if (v10 == v11)
  {
LABEL_13:
    sub_2623F3970(v37, &v28);
    if (*(&v29 + 1))
    {
      sub_2623F39E0(&v34, &qword_27FF0C5F0, &qword_262463A90);
      v39 = v28;
      v40 = v29;
      v12 = v30;
      goto LABEL_15;
    }

    sub_2623F39E0(&v28, &qword_27FF0C5F0, &qword_262463A90);
    sub_2623F1BBC();
    swift_allocError();
    *v18 = a2;
    *(v18 + 8) = a3;
    v19 = v33;
    v20 = v32;
    *(v18 + 16) = v31;
    *(v18 + 32) = v20;
    *(v18 + 48) = v19;
    *(v18 + 64) = 5;
    swift_willThrow();
    sub_2623F39E0(&v34, &qword_27FF0C5F0, &qword_262463A90);
    goto LABEL_22;
  }

  sub_2623F3970(&v34, &v31);
  if (!*(&v32 + 1))
  {
    sub_2623F39E0(&v31, &qword_27FF0C5F0, &qword_262463A90);
    goto LABEL_13;
  }

  sub_2623F39E0(&v34, &qword_27FF0C5F0, &qword_262463A90);
  v39 = v31;
  v40 = v32;
  v12 = v33;
LABEL_15:
  v41 = v12;
  sub_2623F39E0(v37, &qword_27FF0C5F0, &qword_262463A90);
  sub_2623F3A40(&v39, &v31);
  v16 = MEMORY[0x277D839B0];
  if (swift_dynamicCast())
  {

    sub_2623F3A9C(&v39);
    v4 = LOBYTE(v37[0]);
LABEL_31:

    return v4;
  }

  sub_2623F3A40(&v39, &v31);
  if (swift_dynamicCast())
  {
    v17 = v37[0];
    if (v37[0] == __PAIR128__(0xE400000000000000, 1702195828) || (sub_262462C58() & 1) != 0)
    {

      v4 = 1;
LABEL_30:
      sub_2623F3A9C(&v39);
      goto LABEL_31;
    }

    if (v17 == __PAIR128__(0xE500000000000000, 0x65736C6166))
    {

LABEL_26:

      v4 = 0;
      goto LABEL_30;
    }

    v21 = sub_262462C58();

    if (v21)
    {
      goto LABEL_26;
    }
  }

  if (v4 != 2)
  {

    goto LABEL_30;
  }

  *&v31 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DBE0, &qword_26246C358);
  v22 = sub_262462728();
  v24 = v23;
  sub_2623F1BBC();
  swift_allocError();
  *v25 = a2;
  *(v25 + 8) = a3;
  *(v25 + 16) = v22;
  *(v25 + 24) = v24;
  v26 = v32;
  *(v25 + 32) = v31;
  *(v25 + 48) = v26;
  *(v25 + 64) = 7;
  swift_willThrow();
  sub_2623F3A9C(&v39);
  return v4;
}

uint64_t sub_262444C90(_BYTE *a1, uint64_t a2)
{
  v5 = sub_2624447B0(a2, *v2, *(v2 + 8), *(v2 + 16));
  result = v6;
  if (!v3)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_262444CD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2624520B4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_262444D04(uint64_t a1)
{
  v2 = sub_26245263C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262444D40(uint64_t a1)
{
  v2 = sub_26245263C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262444D7C(uint64_t a1)
{
  v4 = type metadata accessor for BooleanRule();
  sub_2623F3CA4(v1 + *(v4 + 28), v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D150, &unk_262468F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D158, &unk_26246E140);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v6, v8);
    sub_26240BCB8(v7, a1, *v1, *(v1 + 8), *(v1 + 16), v1 + *(v4 + 24), v8);
    result = __swift_destroy_boxed_opaque_existential_1(v8);
    if (!v2)
    {
      return v7[0];
    }
  }

  else
  {

    return 2;
  }

  return result;
}

uint64_t sub_262444E78(_BYTE *a1, uint64_t a2)
{
  v4 = sub_262444D7C(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_262444EC8(uint64_t a1)
{
  v2 = sub_262457C84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262444F04(uint64_t a1)
{
  v2 = sub_262457C84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262444F40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);

  v7 = 0;
  if (v6)
  {
    v8 = a2 + 32;
    v9 = a1;
    while (1)
    {
      sub_2623F3CA4(v8, v16);
      v10 = v17;
      v11 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      v12 = (*(*(v11 + 8) + 24))(&v19, v9, v10);
      if (v3)
      {
        break;
      }

      v13 = v12;

      if (v19 == 2 || v7 == 2)
      {
        v7 = 2;
      }

      else
      {
        v7 = (v7 | v19) & 1;
      }

      __swift_destroy_boxed_opaque_existential_1(v16);
      v8 += 40;
      v9 = v13;
      if (!--v6)
      {
        return v7;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  return v7;
}

void *sub_26244508C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_262457924(a1, &qword_27FF0E070, &qword_26246E138, sub_262457C84);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2624450E4(uint64_t a1)
{
  v2 = sub_262457C30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262445120(uint64_t a1)
{
  v2 = sub_262457C30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244515C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);

  if (!v6)
  {
    return 1;
  }

  v7 = a2 + 32;
  v8 = 1;
  v9 = a1;
  while (1)
  {
    sub_2623F3CA4(v7, v16);
    v10 = v17;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v12 = (*(*(v11 + 8) + 24))(&v19, v9, v10);
    if (v3)
    {
      break;
    }

    v13 = v12;

    if (v19 == 2 || v8 == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = v8 & v19 & 1;
    }

    __swift_destroy_boxed_opaque_existential_1(v16);
    v7 += 40;
    v9 = v13;
    if (!--v6)
    {
      return v8;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v8;
}

uint64_t sub_2624452B0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void))
{
  v8 = a5(a2, *v5);
  result = v9;
  if (!v6)
  {
    *a1 = v8;
  }

  return result;
}

void *sub_2624452F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_262457924(a1, &qword_27FF0E060, &qword_26246E130, sub_262457C30);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26244534C(uint64_t a1)
{
  v2 = sub_2624578D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262445388(uint64_t a1)
{
  v2 = sub_2624578D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262445408(BOOL *a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  result = (*(*(v7 + 8) + 24))(&v10, a2, v6);
  if (!v3)
  {
    v9 = v10;
    if (v10 != 2)
    {
      v9 = (v10 & 1) == 0;
    }

    *a1 = v9;
  }

  return result;
}

uint64_t sub_2624454A0(uint64_t a1)
{
  v2 = sub_262457814();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2624454DC(uint64_t a1)
{
  v2 = sub_262457814();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262445518@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E048, &qword_26246E120);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262457814();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for BooleanExpressionDecoder();
  sub_262441880(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v17 = 1;
  sub_262462B58();
  sub_262441880(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v14, &v16);
  sub_262457868(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2624578A0(v15);
}

uint64_t sub_262445764(uint64_t a1)
{
  sub_2623F3CA4(v1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D150, &unk_262468F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D158, &unk_26246E140);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_2623EB668(v9, v11);
  sub_2623F3CA4(v1 + 40, v9);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    __swift_destroy_boxed_opaque_existential_1(v11);
LABEL_6:

    return 2;
  }

  sub_2623EB668(v7, v10);
  v4 = sub_2624429FC(a1, v11, v10);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v6 = v4;
    __swift_destroy_boxed_opaque_existential_1(v10);
    __swift_destroy_boxed_opaque_existential_1(v11);
    return v6;
  }
}

uint64_t sub_2624458C0(_BYTE *a1, uint64_t a2)
{
  v4 = sub_262445764(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_262445910(uint64_t a1)
{
  v2 = sub_2624577C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244594C(uint64_t a1)
{
  v2 = sub_2624577C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2624459CC(uint64_t a1)
{
  v2 = sub_26245776C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262445A08(uint64_t a1)
{
  v2 = sub_26245776C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262445A88(uint64_t a1)
{
  sub_2623F3CA4(v1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D150, &unk_262468F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D158, &unk_26246E140);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v7, v9);
    v4 = sub_26244308C(a1, v9);
    if (v2)
    {
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      v6 = v4;
      __swift_destroy_boxed_opaque_existential_1(v9);
      return v6;
    }
  }

  else
  {

    return 2;
  }
}

uint64_t sub_262445B6C(uint64_t a1)
{
  v2 = sub_262457718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262445BA8(uint64_t a1)
{
  v2 = sub_262457718();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262445C28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v22 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v17 = *(v8 - 8);
  v9 = *(v17 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v18[-1] - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_262462D88();
  if (!v5)
  {
    v13 = v17;
    v14 = v22;
    sub_262462B58();
    type metadata accessor for BooleanExpressionDecoder();
    sub_262441880(v18, v19);
    __swift_destroy_boxed_opaque_existential_1(v18);
    (*(v13 + 8))(v11, v8);
    sub_2623EB668(v19, v20);
    v15 = v20[1];
    *v14 = v20[0];
    *(v14 + 16) = v15;
    *(v14 + 32) = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_262445DE4(uint64_t a1)
{
  sub_2623F3CA4(v1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D150, &unk_262468F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D158, &unk_26246E140);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v7, v9);
    v4 = sub_262443670(a1, v9);
    if (v2)
    {
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      v6 = v4;
      __swift_destroy_boxed_opaque_existential_1(v9);
      return v6;
    }
  }

  else
  {

    return 2;
  }
}

uint64_t sub_262445EC8(_BYTE *a1, uint64_t a2)
{
  v4 = sub_262445DE4(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_262445F00(uint64_t a1)
{
  v2 = sub_26245765C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262445F3C(uint64_t a1)
{
  v2 = sub_26245765C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262445F78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_262462A88();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E008, &qword_26246E100);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v20 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_26245765C();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  v17[3] = v7;
  v15 = v19;
  v23[71] = 0;
  sub_262462B58();
  type metadata accessor for BooleanExpressionDecoder();
  sub_262441880(v21, v22);
  __swift_destroy_boxed_opaque_existential_1(v21);
  sub_2623EB668(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DBF0, &qword_26246C368);
  LOBYTE(v21[0]) = 1;
  sub_2624525C0();
  sub_262462BB8();
  (*(v9 + 8))(v12, v8);
  v23[40] = v22[0];
  sub_2624576B0(v23, v15);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_2624576E8(v23);
}

uint64_t sub_2624463B8(uint64_t a1)
{
  sub_2623F3CA4(v1, &v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D150, &unk_262468F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D158, &unk_26246E140);
  if (!swift_dynamicCast())
  {

    return 2;
  }

  sub_2623EB668(v11, v19);
  v4 = *(v1 + 40);
  v5 = v20;
  v6 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v6 + 24))(&v22, a1, v5, v6);
  if (!v2)
  {
    goto LABEL_6;
  }

  v18 = v2;
  v7 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
  if (swift_dynamicCast())
  {
    MEMORY[0x266728D50](v2);
    v11[2] = v15;
    v11[3] = v16;
    v12 = v17;
    v11[0] = v13;
    v11[1] = v14;
    v22 = v4;
    v9[2] = v15;
    v9[3] = v16;
    v10 = v17;
    v9[0] = v13;
    v9[1] = v14;
    sub_262427BA0(a1, v9);
    sub_2623F3C50(v11);
    MEMORY[0x266728D50](v18);
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v19);
    return v22;
  }

  MEMORY[0x266728D50](v18);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_262446580(_BYTE *a1, uint64_t a2)
{
  v4 = sub_2624463B8(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2624465D0(uint64_t a1)
{
  v2 = sub_2624575A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244660C(uint64_t a1)
{
  v2 = sub_2624575A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262446648@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DFF8, &qword_26246E0F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624575A0();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v17 = 1;
  sub_262462B58();
  sub_262427F88(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v14, &v16);
  sub_2624575F4(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26245762C(v15);
}

uint64_t sub_2624468A4(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  result = (*(*(v6 + 8) + 24))(&v13, a1, v5);
  if (!v2)
  {
    v8 = v13;
    v9 = v14;
    v10 = v3[8];
    v11 = v3[9];
    v12 = result;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v10);
    (*(*(v11 + 8) + 24))(&v13, v12, v10);

    if ((v9 | v14))
    {
      return 2;
    }

    else
    {
      return v8 < v13;
    }
  }

  return result;
}

uint64_t sub_2624469BC(_BYTE *a1, uint64_t a2)
{
  v4 = sub_2624468A4(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_262446A0C(uint64_t a1)
{
  v2 = sub_2624574E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262446A48(uint64_t a1)
{
  v2 = sub_2624574E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262446A84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DFE8, &qword_26246E0F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624574E4();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v17 = 1;
  sub_262462B58();
  sub_262427F88(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v14, &v16);
  sub_262457538(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262457570(v15);
}

uint64_t sub_262446CE0(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  result = (*(*(v6 + 8) + 24))(&v13, a1, v5);
  if (!v2)
  {
    v8 = v13;
    v9 = v14;
    v10 = v3[8];
    v11 = v3[9];
    v12 = result;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v10);
    (*(*(v11 + 8) + 24))(&v13, v12, v10);

    if ((v9 | v14))
    {
      return 2;
    }

    else
    {
      return v8 <= v13;
    }
  }

  return result;
}

uint64_t sub_262446DF8(_BYTE *a1, uint64_t a2)
{
  v4 = sub_262446CE0(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_262446E48(uint64_t a1)
{
  v2 = sub_262457428();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262446E84(uint64_t a1)
{
  v2 = sub_262457428();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262446EC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DFD8, &qword_26246E0E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262457428();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v17 = 1;
  sub_262462B58();
  sub_262427F88(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v14, &v16);
  sub_26245747C(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2624574B4(v15);
}

uint64_t sub_26244711C(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  result = (*(*(v6 + 8) + 24))(&v13, a1, v5);
  if (!v2)
  {
    v8 = v13;
    v9 = v14;
    v10 = v3[8];
    v11 = v3[9];
    v12 = result;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v10);
    (*(*(v11 + 8) + 24))(&v13, v12, v10);

    if ((v9 | v14))
    {
      return 2;
    }

    else
    {
      return v13 < v8;
    }
  }

  return result;
}

uint64_t sub_262447234(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244711C(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_262447284(uint64_t a1)
{
  v2 = sub_26245736C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2624472C0(uint64_t a1)
{
  v2 = sub_26245736C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2624472FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DFC8, &qword_26246E0E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26245736C();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v17 = 1;
  sub_262462B58();
  sub_262427F88(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v14, &v16);
  sub_2624573C0(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2624573F8(v15);
}

uint64_t sub_262447558(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  result = (*(*(v6 + 8) + 24))(&v13, a1, v5);
  if (!v2)
  {
    v8 = v13;
    v9 = v14;
    v10 = v3[8];
    v11 = v3[9];
    v12 = result;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v10);
    (*(*(v11 + 8) + 24))(&v13, v12, v10);

    if ((v9 | v14))
    {
      return 2;
    }

    else
    {
      return v13 <= v8;
    }
  }

  return result;
}

uint64_t sub_262447670(_BYTE *a1, uint64_t a2)
{
  v4 = sub_262447558(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2624476C0(uint64_t a1)
{
  v2 = sub_2624572B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2624476FC(uint64_t a1)
{
  v2 = sub_2624572B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262447738@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DFB8, &qword_26246E0D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624572B0();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v17 = 1;
  sub_262462B58();
  sub_262427F88(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v14, &v16);
  sub_262457304(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26245733C(v15);
}

uint64_t sub_262447994(uint64_t a1)
{
  sub_2623F3CA4(v1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D170, &qword_262468F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D178, &unk_26246E150);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_2623EB668(v9, v11);
  sub_2623F3CA4(v1 + 40, v9);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    __swift_destroy_boxed_opaque_existential_1(v11);
LABEL_6:

    return 2;
  }

  sub_2623EB668(v7, v10);
  v4 = sub_262442C80(a1, v11, v10);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v6 = v4;
    __swift_destroy_boxed_opaque_existential_1(v10);
    __swift_destroy_boxed_opaque_existential_1(v11);
    return v6;
  }
}

uint64_t sub_262447AF0(_BYTE *a1, uint64_t a2)
{
  v4 = sub_262447994(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_262447B40(uint64_t a1)
{
  v2 = sub_26245725C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262447B7C(uint64_t a1)
{
  v2 = sub_26245725C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262447BB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DFA8, &qword_26246E0D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26245725C();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for NumberExpressionDecoder();
    sub_262427F88(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v14);
    (*(v6 + 8))(v9, v5);
    sub_2623EB668(v15, v16);
    v11 = v16[1];
    *a2 = v16[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_262447D8C(uint64_t a1)
{
  v2 = sub_262457208();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262447DC8(uint64_t a1)
{
  v2 = sub_262457208();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262447E04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DF98, &qword_26246E0C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262457208();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for NumberExpressionDecoder();
    sub_262427F88(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v14);
    (*(v6 + 8))(v9, v5);
    sub_2623EB668(v15, v16);
    v11 = v16[1];
    *a2 = v16[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_262447FC0(uint64_t a1)
{
  sub_2623F3CA4(v1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D170, &qword_262468F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D178, &unk_26246E150);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v7, v9);
    v4 = sub_26244308C(a1, v9);
    if (v2)
    {
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      v6 = v4;
      __swift_destroy_boxed_opaque_existential_1(v9);
      return v6;
    }
  }

  else
  {

    return 2;
  }
}

uint64_t sub_2624480BC(uint64_t a1)
{
  v2 = sub_2624571B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2624480F8(uint64_t a1)
{
  v2 = sub_2624571B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262448134@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DF88, &qword_26246E0C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624571B4();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for NumberExpressionDecoder();
    sub_262427F88(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v14);
    (*(v6 + 8))(v9, v5);
    sub_2623EB668(v15, v16);
    v11 = v16[1];
    *a2 = v16[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2624482F0(uint64_t a1)
{
  sub_2623F3CA4(v1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D170, &qword_262468F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D178, &unk_26246E150);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v7, v9);
    v4 = sub_262443670(a1, v9);
    if (v2)
    {
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      v6 = v4;
      __swift_destroy_boxed_opaque_existential_1(v9);
      return v6;
    }
  }

  else
  {

    return 2;
  }
}

uint64_t sub_2624483D4(_BYTE *a1, uint64_t a2)
{
  v4 = sub_2624482F0(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_262448424(uint64_t a1)
{
  v2 = sub_2624570F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262448460(uint64_t a1)
{
  v2 = sub_2624570F8();

  return MEMORY[0x2821FE720](a1, v2);
}