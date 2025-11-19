uint64_t sub_220744B60(uint64_t a1, uint64_t a2)
{
  sub_220500B98(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_220744BC4(uint64_t a1)
{
  v3 = *(sub_22088CE3C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_220889B9C() - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_22073CB5C(a1, v1 + v4, v7, v8);
}

uint64_t sub_220744CA8(uint64_t a1)
{
  sub_220516884(0, &qword_281297B30, MEMORY[0x277D6DA48]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = *(sub_22089049C() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_220743B68(a1, v7, v1 + v4, v8);
}

uint64_t sub_220744D9C(uint64_t a1)
{
  sub_220516884(0, &qword_281297B30, MEMORY[0x277D6DA48]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = *(sub_22088698C() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_22088FEFC() - 8);
  v10 = *(v1 + 16);
  v11 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_220741828(a1, v10, v1 + v4, v1 + v7, v11);
}

uint64_t sub_220744EF4()
{
  sub_22074503C(v0 + OBJC_IVAR____TtC8StocksUI33StockChartCalloutViewModelFactory_chart);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StockChartCalloutViewModelFactory()
{
  result = qword_281283340;
  if (!qword_281283340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220744FAC()
{
  sub_2205C41F4(319);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_22074503C(uint64_t a1)
{
  sub_2205C41F4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_220745098@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_22088C31C();
  v6 = v5;
  sub_22088C22C();
  sub_220891A6C();
  v8 = v6 - v7;
  v9 = sub_22088C2AC();
  sub_22088C20C();
  *v52 = v8;
  v52[1] = v9;
  v52[2] = v10;
  v52[3] = v11;
  v52[4] = v12;
  v52[5] = v13;
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v14 = sub_2206149F0();
  sub_2208124BC(v14, v52, &v47);

  v53.size.height = v48;
  v45 = v48;
  v46 = v47;
  v53.origin.x = 0.0;
  v53.origin.y = 0.0;
  v53.size.width = v8;
  v15 = CGRectGetMaxY(v53) + 0.0;
  sub_22088C31C();
  v17 = v16;
  sub_22088C22C();
  sub_220891A6C();
  v19 = v17 - v18;
  sub_22088C31C();
  sub_22088C20C();
  sub_220891A6C();
  v21 = v19 - v20;
  v22 = type metadata accessor for StockChartViewLayoutOptions();
  if (*(a1 + *(v22 + 24) + 8))
  {
    v23 = *(a1 + *(v22 + 20));
  }

  else
  {
    sub_22088737C();
    v23 = v24;
  }

  sub_22088C20C();
  v26 = v25;
  sub_22088C20C();
  v28 = v27;
  v42 = v27;
  v54.origin.x = v26;
  v54.origin.y = v15;
  v54.size.width = v21;
  v54.size.height = v23;
  v41 = CGRectGetMaxY(v54) + 5.0;
  sub_22088C31C();
  v30 = v29;
  sub_22088C22C();
  sub_220891A6C();
  v44 = v30 - v31;
  sub_22088C31C();
  v55.size.height = 15.0;
  v55.origin.x = v28;
  v55.origin.y = v41;
  v55.size.width = v8;
  MaxY = CGRectGetMaxY(v55);
  sub_22088C1FC();
  v39 = v50;
  v40 = v49;
  v32 = v51;
  v43 = 1.0 / v33;

  v56.origin.x = v26;
  v56.origin.y = v15;
  v56.size.width = v21;
  v56.size.height = v23;
  MinX = CGRectGetMinX(v56);
  v57.origin.x = 0.0;
  v57.origin.y = 0.0;
  v57.size.width = v8;
  v57.size.height = v45;
  MinY = CGRectGetMinY(v57);
  v58.origin.x = v26;
  v58.origin.y = v15;
  v58.size.width = v21;
  v58.size.height = v23;
  Width = CGRectGetWidth(v58);
  sub_22074536C(&v47);

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v44;
  *(a2 + 24) = MaxY;
  *(a2 + 32) = v26;
  *(a2 + 40) = v15;
  *(a2 + 48) = v21;
  *(a2 + 56) = v23;
  *(a2 + 64) = v42;
  *(a2 + 72) = v41;
  *(a2 + 80) = v8;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = 0x402E000000000000;
  *(a2 + 112) = v8;
  *(a2 + 120) = v45;
  *(a2 + 128) = v46;
  *(a2 + 136) = v45;
  *(a2 + 144) = v40;
  *(a2 + 152) = v39;
  *(a2 + 160) = v32;
  *(a2 + 168) = MinX;
  *(a2 + 176) = MinY;
  result = v43;
  *(a2 + 184) = Width;
  *(a2 + 192) = v43;
  return result;
}

void sub_220745434()
{
  if (!qword_28127E2F0)
  {
    sub_22088685C();
    v0 = sub_2208926EC();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E2F0);
    }
  }
}

void sub_22074549C(uint64_t a1, char a2, void *a3)
{
  v61 = sub_22088685C();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v7);
  v60 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204E323C();
  v58 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v13 = (&v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_24;
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v11 + 48);
  v15 = *(v58 + 80);
  v57 = a1;
  v16 = (v59 + 32);
  v54 = a1 + ((v15 + 32) & ~v15);
  sub_2204BD750(v54, v13, sub_2204E323C);
  v17 = v13[1];
  v64 = *v13;
  v18 = v64;
  v65 = v17;
  v19 = *v16;
  v55 = v14;
  v53 = v19;
  v19(v60, v13 + v14, v61);
  v20 = *a3;
  v22 = sub_2204AF97C(v18, v17);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (a2)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_2207D0AB0();
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_2207CE804(v25, a2 & 1);
  v27 = sub_2204AF97C(v18, v17);
  if ((v26 & 1) == (v28 & 1))
  {
    v22 = v27;
    if ((v26 & 1) == 0)
    {
LABEL_14:
      v31 = *a3;
      *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v32 = (v31[6] + 16 * v22);
      *v32 = v18;
      v32[1] = v17;
      v53((v31[7] + *(v59 + 72) * v22), v60, v61);
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v35;
      if (v56 != 1)
      {
        v36 = 1;
        while (v36 < *(v57 + 16))
        {
          sub_2204BD750(v54 + *(v58 + 72) * v36, v13, sub_2204E323C);
          v37 = v13[1];
          v64 = *v13;
          v38 = v64;
          v65 = v37;
          v39 = *v16;
          (*v16)(v60, v13 + v55, v61);
          v40 = *a3;
          v41 = sub_2204AF97C(v38, v37);
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v34 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v34)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            sub_2207CE804(v45, 1);
            v41 = sub_2204AF97C(v38, v37);
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v49 = (v48[6] + 16 * v41);
          *v49 = v38;
          v49[1] = v37;
          v39((v48[7] + *(v59 + 72) * v41), v60, v61);
          v50 = v48[2];
          v34 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v48[2] = v51;
          if (v56 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v29 = swift_allocError();
    swift_willThrow();
    v66 = v29;
    v30 = v29;
    sub_2204446D4(0, &qword_28127DE30);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_22089291C();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_22089254C();
  MEMORY[0x223D89680](0xD00000000000001BLL, 0x80000002208D25D0);
  sub_22089264C();
  MEMORY[0x223D89680](39, 0xE100000000000000);
  sub_22089267C();
  __break(1u);
}

uint64_t type metadata accessor for LandingPagePromiseViewController()
{
  result = qword_27CF593E0;
  if (!qword_27CF593E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_220745A98(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088BD1C();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v29 = sub_22088519C();
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2208871DC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22055F760();
  v31 = v15;
  v32 = a1;
  sub_22088E11C();
  if (v34)
  {
    sub_22088731C();
    if (swift_dynamicCast())
    {
      *v14 = 0xD000000000000013;
      v14[1] = 0x80000002208D2650;
      (*(v11 + 104))(v14, *MEMORY[0x277CEAE50], v10);
      v16 = a2;

      sub_2208872DC();

      (*(v11 + 8))(v14, v10);
    }

    else
    {
      v16 = a2;
    }
  }

  else
  {
    v16 = a2;
    sub_22056D130(v33);
  }

  type metadata accessor for LandingPagePromiseViewController();
  sub_22088518C();
  sub_22088517C();
  v17 = (*(v6 + 8))(v9, v29);
  MEMORY[0x28223BE20](v17, v18);
  v19 = v30;
  *(&v28 - 4) = v16;
  *(&v28 - 3) = v19;
  sub_22088BD0C();
  v27 = &v28 - 6;
  v20 = sub_22088C0CC();
  v21 = [objc_opt_self() currentDevice];
  v22 = [v21 userInterfaceIdiom];

  if (v22 == 1)
  {
    v23 = 2;
    goto LABEL_10;
  }

  if (!v22)
  {
    v23 = 1;
LABEL_10:
    [v20 setModalPresentationStyle_];
  }

  v24 = sub_22088E0EC();
  v25 = v20;
  v24();

  return v25;
}

void sub_220745E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a3;
  v36 = a4;
  v33 = a1;
  v34 = a2;
  sub_22055F760();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10, v14);
  v15 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CampaignRouteModel();
  v30 = *(v16 - 8);
  v17 = *(v30 + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v19 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a5;
  v38 = a6;
  sub_22088A3FC();
  v32 = sub_220888FBC();
  sub_22046D5B4();
  v31 = sub_220891D0C();
  sub_220748828(a5, v19);
  (*(v12 + 16))(v15, a7, v11);
  v20 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v21 = (v17 + *(v12 + 80) + v20) & ~*(v12 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_22074888C(v19, v23 + v20);
  (*(v12 + 32))(v23 + v21, v15, v11);
  *(v23 + v22) = a6;
  v24 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
  v25 = v34;
  *v24 = v33;
  v24[1] = v25;
  type metadata accessor for Router();

  v26 = v31;
  sub_220888E6C();

  v27 = swift_allocObject();
  *(v27 + 16) = v35;
  *(v27 + 24) = v36;

  v28 = sub_220888D9C();
  sub_220888E9C();
}

uint64_t sub_220746194(void *a1, uint64_t a2)
{
  v4 = sub_22088A3BC();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a1[1];
  if (v10)
  {
    *v9 = *a1;
    v9[1] = v10;
    v11 = MEMORY[0x277D34F48];
  }

  else
  {
    v11 = MEMORY[0x277D34F40];
  }

  (*(v5 + 104))(v9, *v11, v4, v7);
  __swift_project_boxed_opaque_existential_1((a2 + 176), *(a2 + 200));

  v12 = sub_22088A45C();
  (*(v5 + 8))(v9, v4);
  return v12;
}

uint64_t sub_2207462E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v105 = a7;
  v106 = a6;
  v91 = a5;
  v90 = a4;
  v114 = a2;
  v115 = a3;
  v107 = a1;
  v104 = sub_22088A50C();
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104, v7);
  v103 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047A238(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v101 = &v86 - v11;
  sub_22047A238(0, &qword_281298210, MEMORY[0x277D35078]);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v100 = &v86 - v14;
  v95 = sub_22088A3AC();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95, v15);
  v98 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047A238(0, &qword_2812982D0, MEMORY[0x277D68ED8]);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v86 - v19;
  v99 = sub_22088A2FC();
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99, v21);
  v96 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_22088A56C();
  v108 = *(v113 - 8);
  MEMORY[0x28223BE20](v113, v23);
  v93 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v111 = &v86 - v27;
  v112 = sub_22088A3EC();
  v110 = *(v112 - 8);
  MEMORY[0x28223BE20](v112, v28);
  v109 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_2208899EC();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89, v30);
  v87 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for CampaignRouteModel();
  v92 = *(v119 - 1);
  v32 = *(v92 + 64);
  MEMORY[0x28223BE20](v119, v33);
  v34 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_22088A3DC();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v37);
  v39 = (&v86 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_22088A3FC();
  v41 = *(v40 - 8);
  v43 = MEMORY[0x28223BE20](v40, v42);
  v45 = (&v86 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v45, v107, v40, v43);
  v46 = (*(v41 + 88))(v45, v40);
  if (v46 == *MEMORY[0x277D34F58])
  {
    (*(v41 + 96))(v45, v40);
    v48 = *v45;
    v47 = v45[1];
    sub_220748AF8();
    v50 = *(v49 + 48);
    v110 = v39;
    v111 = v36;
    v51 = *(v36 + 4);
    v112 = v35;
    v51(v39, v45 + v50, v35);
    v52 = v115;
    v108 = v48;
    v109 = v47;
    v53 = sub_22074708C(v115, v48, v47);
    v54 = v114[5];
    v113 = v114[6];
    __swift_project_boxed_opaque_existential_1(v114 + 2, v54);
    sub_220446A58(0, &qword_27CF59408);
    sub_220748828(v52, &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    v55 = (*(v92 + 80) + 16) & ~*(v92 + 80);
    v56 = (v32 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    sub_22074888C(v34, v57 + v55);
    *(v57 + v56) = v53;

    sub_2208884BC();

    if (v117)
    {

      sub_220457328(&v116, v118);
      sub_220747500(v90, v91);
      sub_2208872FC();

      if (*(v52 + v119[7] + 8))
      {

        v58 = v87;
        sub_2208899DC();
        sub_220448D00(&unk_2812983E0, MEMORY[0x277D68948]);
        v59 = v89;
        sub_2208872CC();
        (*(v88 + 8))(v58, v59);
      }

      __swift_project_boxed_opaque_existential_1(v118, v118[3]);
      v60 = v110;
      sub_22088A3CC();
      v61 = sub_220887F1C();

      Strong = swift_unknownObjectWeakLoadStrong();
      v64 = v111;
      v63 = v112;
      if (Strong)
      {
        swift_unknownObjectRetain();
        sub_22088C88C();
        swift_unknownObjectRelease();
      }

      (v106)(v61);

      (*(v64 + 1))(v60, v63);
      return __swift_destroy_boxed_opaque_existential_1(v118);
    }

    __break(1u);
LABEL_29:
    result = sub_2208928AC();
    __break(1u);
    return result;
  }

  v66 = v115;
  if (v46 != *MEMORY[0x277D34F50])
  {
    goto LABEL_29;
  }

  (*(v41 + 96))(v45, v40);
  v110[4](v109, v45, v112);
  v67 = *(v66 + v119[8]);
  v68 = sub_22089174C();
  v69 = (v108 + 104);
  if (v68)
  {
    if ((sub_22089176C() & 1) == 0)
    {
      if (sub_22089175C())
      {
        v71 = MEMORY[0x277D351E0];
      }

      else
      {
        v71 = MEMORY[0x277D351D0];
      }

      (*v69)(v111, *v71, v113);
      goto LABEL_18;
    }

    v70 = MEMORY[0x277D35170];
  }

  else
  {
    v70 = MEMORY[0x277D351D0];
  }

  (*v69)(v111, *v70, v113);
LABEL_18:
  v72 = sub_2207475BC();
  if (v73)
  {
    v74 = v72;
  }

  else
  {
    v74 = 0;
  }

  v107 = v74;
  v75 = 0xE000000000000000;
  if (v73)
  {
    v75 = v73;
  }

  v92 = v75;
  sub_2207909DC(v67, v20);
  v76 = sub_220889FEC();
  v77 = *(v76 - 8);
  if ((*(v77 + 48))(v20, 1, v76) == 1)
  {
    sub_220748A1C(v20, &qword_2812982D0, MEMORY[0x277D68ED8]);
    v91 = 0;
    v90 = 0xE000000000000000;
  }

  else
  {
    v91 = sub_220889FBC();
    v90 = v78;
    (*(v77 + 8))(v20, v76);
  }

  v79 = v108;
  v80 = v111;
  v81 = v113;
  (*(v108 + 16))(v93, v111, v113);
  (*(v94 + 104))(v98, *MEMORY[0x277D34F38], v95);
  sub_220748A78(v115 + v119[10], v100);
  v82 = sub_220884E9C();
  (*(*(v82 - 8) + 56))(v101, 1, 1, v82);
  (*(v102 + 104))(v103, *MEMORY[0x277D350C0], v104);

  v83 = v96;
  sub_22088A27C();
  v84 = v109;
  v85 = sub_22074794C(v109, v83, v114);
  v106();

  (*(v97 + 8))(v83, v99);
  (*(v79 + 8))(v80, v81);
  return (v110[1])(v84, v112);
}

void *sub_22074708C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22088A20C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + *(type metadata accessor for CampaignRouteModel() + 32));
  if (sub_22089176C())
  {
  }

  else
  {
    *v10 = a2;
    *(v10 + 1) = a3;
    *(v10 + 1) = 0u;
    *(v10 + 2) = 0u;
    *(v10 + 3) = 0u;
    (*(v7 + 104))(v10, *MEMORY[0x277D34DF8], v6);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_220588198(0, v11[2] + 1, 1, v11);
    }

    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      v11 = sub_220588198(v12 > 1, v13 + 1, 1, v11);
    }

    v11[2] = v13 + 1;
    (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, v10, v6);
  }

  return v11;
}

uint64_t sub_220747244(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v24 = a1;
  sub_22047A238(0, &qword_281298210, MEMORY[0x277D35078]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v21 - v6;
  sub_22047A238(0, &qword_27CF59410, MEMORY[0x277D30210]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v21 - v10;
  v12 = sub_2208879EC();
  v22 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CampaignRouteModel();
  v17 = *(v16 + 20);
  v18 = sub_220887FAC();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v11, a2 + v17, v18);
  (*(v19 + 56))(v11, 0, 1, v18);
  sub_220748A78(a2 + *(v16 + 40), v7);

  sub_2208879DC();
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_22088837C();
  return (*(v22 + 8))(v15, v12);
}

uint64_t sub_220747500(uint64_t a1, uint64_t a2)
{
  sub_22055F760();
  sub_22088E11C();
  if (v6)
  {
    sub_22088731C();
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_22056D130(v5);
  }

  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2207475BC()
{
  sub_22047A238(0, &qword_27CF59420, MEMORY[0x277D34D78]);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v23 - v3;
  sub_22047A238(0, qword_281298170, MEMORY[0x277D35380]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v23 - v7;
  v9 = sub_22088A61C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v24 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_220446A58(0, &unk_281298250);
  result = sub_2208884DC();
  if (v25)
  {
    swift_getObjectType();
    v14 = *MEMORY[0x277D34D58];
    v15 = sub_22088A1EC();
    v16 = *(v15 - 8);
    (*(v16 + 104))(v4, v14, v15);
    (*(v16 + 56))(v4, 0, 1, v15);
    sub_22088A30C();
    sub_220748A1C(v4, &qword_27CF59420, MEMORY[0x277D34D78]);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      swift_unknownObjectRelease();
      sub_220748A1C(v8, qword_281298170, MEMORY[0x277D35380]);
    }

    else
    {
      v17 = v24;
      (*(v10 + 32))(v24, v8, v9);
      v18 = sub_22088A60C();
      if (v18)
      {
        v19 = v18;
        v20 = sub_220891A0C();
        v22 = v21;
        swift_unknownObjectRelease();

        (*(v10 + 8))(v17, v9);
        if (v22)
        {
          return v20;
        }
      }

      else
      {
        (*(v10 + 8))(v17, v9);
        swift_unknownObjectRelease();
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22074794C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a2;
  v68 = a3;
  v65 = a1;
  sub_22047A238(0, &qword_27CF59418, MEMORY[0x277D34E88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v62 = &v58 - v5;
  sub_22047A238(0, &qword_27CF59420, MEMORY[0x277D34D78]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v61 = &v58 - v8;
  v69 = sub_220884E9C();
  v9 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_22088519C();
  v66 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v13);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22088A2FC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v64 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22088A1EC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v63 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22088A61C();
  v70 = *(v24 - 8);
  v71 = v24;
  MEMORY[0x28223BE20](v24, v25);
  v73 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22088A3EC();
  v28 = *(v27 - 8);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v32 = &v58 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v32, v65, v27, v30);
  v33 = (*(v28 + 88))(v32, v27);
  if (v33 == *MEMORY[0x277D34F68])
  {
    (*(v28 + 96))(v32, v27);
    v34 = v9;
    (*(v9 + 32))(v12, v32, v69);
    v35 = v61;
    (*(v21 + 56))(v61, 1, 1, v20);
    v36 = v62;
    (*(v17 + 16))(v62, v67, v16);
    (*(v17 + 56))(v36, 0, 1, v16);
    __swift_project_boxed_opaque_existential_1((v68 + 136), *(v68 + 160));
    sub_22088518C();
    sub_22088517C();
    (*(v66 + 8))(v15, v72);
    v37 = sub_22088A59C();

    sub_220748A1C(v36, &qword_27CF59418, MEMORY[0x277D34E88]);
    sub_220748A1C(v35, &qword_27CF59420, MEMORY[0x277D34D78]);
    (*(v34 + 8))(v12, v69);
    return v37;
  }

  v69 = v20;
  v38 = v15;
  v39 = v67;
  v40 = v68;
  if (v33 == *MEMORY[0x277D34F60])
  {
    (*(v28 + 96))(v32, v27);
    (*(v70 + 32))(v73, v32, v71);
    v41 = sub_22088A5EC();
    v60 = v38;
    if (v41)
    {
      v42 = v39;
      v43 = v17;
LABEL_15:
      sub_22088A2BC();
      v44 = v16;
      goto LABEL_16;
    }

    v42 = v39;
    v44 = v16;
    v43 = v17;
    if ((sub_22088A5CC() & 1) == 0)
    {
LABEL_16:
      v59 = v44;
      v51 = sub_22088A5FC();
      v52 = v63;
      (*(v21 + 104))(v63, *MEMORY[0x277D34D60], v69);
      v53 = v64;
      (*(v43 + 16))(v64, v42, v44);
      v54 = *(v40 + 160);
      v67 = *(v40 + 168);
      __swift_project_boxed_opaque_existential_1((v40 + 136), v54);
      v55 = v60;
      sub_22088518C();
      sub_22088517C();
      (*(v66 + 8))(v55, v72);
      v37 = sub_22088A5AC();

      (*(v43 + 8))(v53, v59);
      (*(v21 + 8))(v52, v69);
      (*(v70 + 8))(v73, v71);
      return v37;
    }

    v45 = [*(v40 + 216) possiblyUnfetchedAppConfiguration];
    if ([v45 respondsToSelector_])
    {
      v46 = [v45 paidBundleConfig];
      swift_unknownObjectRelease();
      v47 = [v46 offeredBundlePurchaseIDs];

      if (v47)
      {
        v48 = sub_2208916EC();

        if (*(v48 + 16))
        {

          sub_22088A5DC();
          if (!v49)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }
      }

      sub_22088A5DC();
      if (!v57)
      {
        goto LABEL_14;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      sub_22088A5DC();
      if (!v50)
      {
LABEL_14:
        v43 = v17;
        sub_22088A29C();
        goto LABEL_15;
      }
    }

LABEL_13:

    goto LABEL_14;
  }

  result = sub_22089267C();
  __break(1u);
  return result;
}

void sub_220748248(void *a1, void (*a2)(void *))
{
  v4 = sub_22088C0EC();
  sub_220448D00(&qword_27CF593F0, MEMORY[0x277D6DD70]);
  v5 = swift_allocError();
  v7 = v6;
  v6[3] = sub_220887C7C();
  v7[4] = sub_220448D00(&qword_27CF593F8, MEMORY[0x277D2FEF0]);
  __swift_allocate_boxed_opaque_existential_1(v7);
  v8 = a1;
  sub_220887C6C();
  (*(*(v4 - 8) + 104))(v7, *MEMORY[0x277D6DD60], v4);
  a2(v5);
}

uint64_t sub_2207483A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v19[1] = a7;
  v19[2] = a8;
  v19[0] = a6;
  v12 = sub_22088BD1C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(v9);
  (*(v13 + 16))(v16, a4, v12);
  sub_22046DA2C(a5, v20);
  v17 = sub_22088C0DC();
  __swift_destroy_boxed_opaque_existential_1(a5);
  (*(v13 + 8))(a4, v12);
  return v17;
}

id sub_220748544(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for LandingPagePromiseViewController();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_2207485C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LandingPagePromiseViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_220748600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22088B97C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x277D6D980])
  {
    v11 = MEMORY[0x277D6E208];
LABEL_5:
    v12 = *v11;
    v13 = sub_22088CC1C();
    (*(*(v13 - 8) + 104))(a2, v12, v13);
    v14 = *MEMORY[0x277D6E200];
    v15 = sub_22088CC2C();
    return (*(*(v15 - 8) + 104))(a2, v14, v15);
  }

  if (v10 == *MEMORY[0x277D6D978])
  {
    v11 = MEMORY[0x277D6E210];
    goto LABEL_5;
  }

  result = sub_22089267C();
  __break(1u);
  return result;
}

uint64_t sub_220748828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CampaignRouteModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22074888C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CampaignRouteModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2207488F0(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for CampaignRouteModel() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_22055F760();
  v9 = (v6 + v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = (*(*(v8 - 8) + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2207462E4(a1, a2, v2 + v6, v2 + v9, *(v2 + v10), *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_220748A1C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22047A238(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_220748A78(uint64_t a1, uint64_t a2)
{
  sub_22047A238(0, &qword_281298210, MEMORY[0x277D35078]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_220748AF8()
{
  if (!qword_27CF59400)
  {
    sub_22088A3DC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF59400);
    }
  }
}

uint64_t sub_220748B64(void *a1)
{
  v3 = *(type metadata accessor for CampaignRouteModel() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_220747244(a1, v1 + v4, v5);
}

void sub_220748C00(uint64_t a1, double *a2, char *a3)
{
  v4 = v3;
  sub_2206E8A48(0, &qword_28127E448, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v35 - v9;
  v36 = objc_opt_self();
  v11 = [v36 secondarySystemBackgroundColor];
  [a3 setBackgroundColor_];

  v12 = *&a3[OBJC_IVAR____TtC8StocksUI19CreateWatchlistView_newWatchlistButton];
  v13 = *(type metadata accessor for CreateWatchlistViewLayoutAttributes() + 24);
  v14 = sub_22089226C();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v10, a2 + v13, v14);
  (*(v15 + 56))(v10, 0, 1, v14);
  sub_22089228C();
  [v12 setFrame_];
  swift_beginAccess();
  v16 = __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v18 = *(*v16 + 40);
  v17 = *(*v16 + 48);
  __swift_project_boxed_opaque_existential_1((*v16 + 16), v18);
  v19 = (*(*(v17 + 16) + 128))(v18);
  [v12 setTintColor_];

  sub_2206E8A48(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899360;
  v21 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v22 = sub_220561394();
  v23 = v21;
  v24 = sub_220891F2C();
  *(inited + 64) = v22;
  *(inited + 40) = v24;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2205613E0(inited + 32);
  v25 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v26 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_220749100(&qword_28127E6A8, 255, type metadata accessor for Key);
  v27 = sub_22089125C();

  v28 = [v25 initWithString:v26 attributes:v27];

  [v12 setAttributedTitle:v28 forState:0];
  v29 = *__swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v30 = [v36 secondarySystemBackgroundColor];
  [v12 setBackgroundColor_];

  v32 = v29[5];
  v31 = v29[6];
  __swift_project_boxed_opaque_existential_1(v29 + 2, v32);
  v33 = (*(*(v31 + 16) + 128))(v32);
  [v12 setTintColor_];

  v34 = sub_22089132C();
  [a3 setAccessibilityLabel_];
}

uint64_t sub_2207490A8(uint64_t a1, uint64_t a2)
{
  result = sub_220749100(&qword_27CF59428, a2, type metadata accessor for CreateWatchlistViewRenderer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_220749100(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

char *sub_2207491DC()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC8StocksUI28StockChartCalloutHandleLayer_knobLayer;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  *&v0[OBJC_IVAR____TtC8StocksUI28StockChartCalloutHandleLayer_knobLocation] = 0;
  v17.receiver = v0;
  v17.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v17, sel_init);
  v4 = OBJC_IVAR____TtC8StocksUI28StockChartCalloutHandleLayer_knobLayer;
  v5 = *&v3[OBJC_IVAR____TtC8StocksUI28StockChartCalloutHandleLayer_knobLayer];
  v6 = objc_opt_self();
  v7 = v3;
  v8 = v5;
  v9 = [v6 bezierPathWithOvalInRect_];
  v10 = [v9 CGPath];

  [v8 setPath_];
  [*&v3[v4] setBounds_];
  v11 = *&v3[v4];
  sub_2207495A0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  v13 = objc_allocWithZone(MEMORY[0x277CBEB68]);
  v14 = v11;
  *(inited + 48) = [v13 init];
  *(inited + 56) = 0x756F72676B636162;
  *(inited + 64) = 0xEF726F6C6F43646ELL;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  sub_2205CFB38(inited);
  swift_setDeallocating();
  sub_2207495F8();
  swift_arrayDestroy();
  sub_220749660();
  v15 = sub_22089125C();

  [v14 setActions_];

  [v7 addSublayer_];
  return v7;
}

void sub_2207495A0()
{
  if (!qword_28127DEC8)
  {
    sub_2207495F8();
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127DEC8);
    }
  }
}

void sub_2207495F8()
{
  if (!qword_28127EB88)
  {
    sub_220749660();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127EB88);
    }
  }
}

unint64_t sub_220749660()
{
  result = qword_28127E510;
  if (!qword_28127E510)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28127E510);
  }

  return result;
}

uint64_t sub_220749710(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(*v3 + 40);
  v6 = *(*v3 + 48);
  __swift_project_boxed_opaque_existential_1((*v3 + 16), v5);
  return a3(v5, v6) & 1;
}

void sub_22074977C(void (*a1)(uint64_t, id), uint64_t a2, void *a3)
{
  v5 = *(v3 + *a3);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_9:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = v12 | (v11 << 6);
      v14 = *(*(v5 + 48) + v13);
      v15 = *(*(v5 + 56) + 8 * v13);
      a1(v14, v15);

      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v5 + 64 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }
}

uint64_t sub_220749890(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8StocksUI15QuoteDetailView_scrollView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC8StocksUI15QuoteDetailView_separatorsView;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for ShapeView()) initWithFrame_];
  v12 = OBJC_IVAR____TtC8StocksUI15QuoteDetailView_attributionButtonContainerView;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v13 = OBJC_IVAR____TtC8StocksUI15QuoteDetailView_attributionButton;
  type metadata accessor for AttributionButton();
  v14 = [swift_getObjCClassFromMetadata() buttonWithType_];
  v15 = *&v14[OBJC_IVAR____TtC8StocksUI17AttributionButton_onTap];
  sub_22088E18C();

  v16 = 0;
  v82 = v5;
  *&v5[v13] = v14;
  v17 = MEMORY[0x277D84F98];
  while (1)
  {
    v20 = byte_283411568[v16 + 32];
    v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
    if (!v21)
    {
      v32 = sub_2205CDFF4(v20);
      if (v33)
      {
        v34 = v32;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_2207D0D40();
        }

        sub_22059B294(v34, v17);
      }

      goto LABEL_3;
    }

    v22 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = sub_2205CDFF4(v20);
    v26 = v17[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      break;
    }

    v30 = v25;
    if (v17[3] >= v29)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = v24;
        sub_2207D0D40();
        v24 = v37;
        if ((v30 & 1) == 0)
        {
LABEL_15:
          v17[(v24 >> 6) + 8] |= 1 << v24;
          *(v17[6] + v24) = v20;
          *(v17[7] + 8 * v24) = v22;
          v35 = v17[2];
          v28 = __OFADD__(v35, 1);
          v36 = v35 + 1;
          if (v28)
          {
            goto LABEL_62;
          }

          v17[2] = v36;
          goto LABEL_3;
        }

        goto LABEL_2;
      }
    }

    else
    {
      sub_2207CEB98(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_2205CDFF4(v20);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_64;
      }
    }

    if ((v30 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_2:
    v18 = v17[7];
    v19 = *(v18 + 8 * v24);
    *(v18 + 8 * v24) = v22;

LABEL_3:
    if (++v16 == 12)
    {
      v38 = 0;
      *&v82[OBJC_IVAR____TtC8StocksUI15QuoteDetailView_nameLabels] = v17;
      v39 = MEMORY[0x277D84F98];
      while (1)
      {
        v42 = byte_283411568[v38 + 32];
        v43 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
        if (!v43)
        {
          v53 = sub_2205CDFF4(v42);
          if (v54)
          {
            v55 = v53;
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              sub_2207D0D40();
            }

            sub_22059B294(v55, v39);
          }

          goto LABEL_21;
        }

        v44 = v43;
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v46 = sub_2205CDFF4(v42);
        v48 = v39[2];
        v49 = (v47 & 1) == 0;
        v28 = __OFADD__(v48, v49);
        v50 = v48 + v49;
        if (v28)
        {
          goto LABEL_61;
        }

        v51 = v47;
        if (v39[3] >= v50)
        {
          if ((v45 & 1) == 0)
          {
            v58 = v46;
            sub_2207D0D40();
            v46 = v58;
            if ((v51 & 1) == 0)
            {
LABEL_33:
              v39[(v46 >> 6) + 8] |= 1 << v46;
              *(v39[6] + v46) = v42;
              *(v39[7] + 8 * v46) = v44;
              v56 = v39[2];
              v28 = __OFADD__(v56, 1);
              v57 = v56 + 1;
              if (v28)
              {
                goto LABEL_63;
              }

              v39[2] = v57;
              goto LABEL_21;
            }

            goto LABEL_20;
          }
        }

        else
        {
          sub_2207CEB98(v50, v45);
          v46 = sub_2205CDFF4(v42);
          if ((v51 & 1) != (v52 & 1))
          {
            goto LABEL_64;
          }
        }

        if ((v51 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_20:
        v40 = v39[7];
        v41 = *(v40 + 8 * v46);
        *(v40 + 8 * v46) = v44;

LABEL_21:
        if (++v38 == 12)
        {
          *&v82[OBJC_IVAR____TtC8StocksUI15QuoteDetailView_valueLabels] = v39;
          v83.receiver = v82;
          v83.super_class = ObjectType;
          v59 = objc_msgSendSuper2(&v83, sel_initWithFrame_, a1, a2, a3, a4);
          v60 = OBJC_IVAR____TtC8StocksUI15QuoteDetailView_scrollView;
          v61 = *&v59[OBJC_IVAR____TtC8StocksUI15QuoteDetailView_scrollView];
          v62 = v59;
          [v61 setAlwaysBounceVertical_];
          [*&v59[v60] setShowsVerticalScrollIndicator_];
          [*&v59[v60] setShowsHorizontalScrollIndicator_];
          [*&v59[v60] setDirectionalLockEnabled_];
          [v62 addSubview_];
          [*&v59[v60] addSubview_];
          v63 = OBJC_IVAR____TtC8StocksUI15QuoteDetailView_attributionButtonContainerView;
          [v62 addSubview_];
          [*&v62[v63] addSubview_];
          v64 = *&v62[OBJC_IVAR____TtC8StocksUI15QuoteDetailView_nameLabels];
          v65 = 1 << *(v64 + 32);
          v66 = -1;
          if (v65 < 64)
          {
            v66 = ~(-1 << v65);
          }

          v67 = v66 & *(v64 + 64);
          v68 = (v65 + 63) >> 6;

          v69 = 0;
          if (v67)
          {
            while (1)
            {
              v70 = v69;
LABEL_45:
              v71 = __clz(__rbit64(v67));
              v67 &= v67 - 1;
              [*&v59[v60] addSubview_];
              if (!v67)
              {
                goto LABEL_41;
              }
            }
          }

          while (1)
          {
LABEL_41:
            v70 = v69 + 1;
            if (__OFADD__(v69, 1))
            {
              __break(1u);
              goto LABEL_59;
            }

            if (v70 >= v68)
            {
              break;
            }

            v67 = *(v64 + 64 + 8 * v70);
            ++v69;
            if (v67)
            {
              v69 = v70;
              goto LABEL_45;
            }
          }

          v72 = *&v62[OBJC_IVAR____TtC8StocksUI15QuoteDetailView_valueLabels];
          v73 = 1 << *(v72 + 32);
          v74 = -1;
          if (v73 < 64)
          {
            v74 = ~(-1 << v73);
          }

          v75 = v74 & *(v72 + 64);
          v76 = (v73 + 63) >> 6;

          v77 = 0;
          while (v75)
          {
            v78 = v77;
LABEL_55:
            v79 = __clz(__rbit64(v75));
            v75 &= v75 - 1;
            [*&v59[v60] addSubview_];
          }

          while (1)
          {
            v78 = v77 + 1;
            if (__OFADD__(v77, 1))
            {
              break;
            }

            if (v78 >= v76)
            {

              return v62;
            }

            v75 = *(v72 + 64 + 8 * v78);
            ++v77;
            if (v75)
            {
              v77 = v78;
              goto LABEL_55;
            }
          }

LABEL_59:
          __break(1u);
          goto LABEL_60;
        }
      }
    }
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  result = sub_22089291C();
  __break(1u);
  return result;
}

void sub_22074A08C()
{
  sub_22074A118(&qword_281293178);

  JUMPOUT(0x223D86790);
}

uint64_t sub_22074A118(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for QuoteDetailView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22074A158()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8StocksUI15QuoteDetailView_scrollView;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
  v3 = OBJC_IVAR____TtC8StocksUI15QuoteDetailView_separatorsView;
  *(v1 + v3) = [objc_allocWithZone(type metadata accessor for ShapeView()) initWithFrame_];
  v4 = OBJC_IVAR____TtC8StocksUI15QuoteDetailView_attributionButtonContainerView;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v5 = OBJC_IVAR____TtC8StocksUI15QuoteDetailView_attributionButton;
  type metadata accessor for AttributionButton();
  v6 = [swift_getObjCClassFromMetadata() buttonWithType_];
  v7 = *&v6[OBJC_IVAR____TtC8StocksUI17AttributionButton_onTap];
  sub_22088E18C();

  *(v1 + v5) = v6;
  sub_22089267C();
  __break(1u);
}

uint64_t type metadata accessor for StockChartViewLayoutOptions()
{
  result = qword_281288038;
  if (!qword_281288038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22074A324()
{
  sub_22088C32C();
  if (v0 <= 0x3F)
  {
    sub_2204BCAA4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t AppEvent.hashValue.getter()
{
  v1 = *v0;
  sub_2208929EC();
  MEMORY[0x223D8ABA0](v1);
  return sub_220892A2C();
}

uint64_t sub_22074A45C(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v3 = sub_22088954C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088926C();
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047A28C(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v37 - v14;
  v16 = sub_220884E9C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088EDFC();
  v21 = (*(v17 + 48))(v15, 1, v16);
  v40 = v4;
  v41 = v3;
  if (v21 == 1)
  {
    sub_22047C4E4(v15);
LABEL_9:
    sub_22088EDCC();
    sub_22088953C();
    sub_22047A28C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v32 = sub_220886F8C();
    v33 = *(v32 - 8);
    v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_220899360;
    (*(v33 + 104))(v35 + v34, *MEMORY[0x277CEAD18], v32);
    sub_22074B9C0(&qword_2812984C0, MEMORY[0x277D68600]);
    v36 = v41;
    sub_220886F1C();

    sub_220889C0C();
    sub_22074B9C0(&qword_27CF59488, MEMORY[0x277D68B50]);
    memset(v43, 0, sizeof(v43));
    sub_220886F3C();
    sub_22056D130(v43);
    return (*(v40 + 8))(v7, v36);
  }

  v37 = v8;
  v39 = a2;
  (*(v17 + 32))(v20, v15, v16);
  v22 = [objc_allocWithZone(MEMORY[0x277D55100]) init];
  v23 = sub_220884E3C();
  v24 = [v22 identifierForURL_];

  if (!v24)
  {
LABEL_8:
    (*(v17 + 8))(v20, v16);
    goto LABEL_9;
  }

  sub_22089136C();

  result = sub_22088EDDC();
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v26 <= -2147483650.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v26 < 2147483650.0)
  {
    sub_22088925C();
    sub_22047A28C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v27 = sub_220886F8C();
    v28 = *(v27 - 8);
    v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_220899360;
    (*(v28 + 104))(v30 + v29, *MEMORY[0x277CEAD18], v27);
    sub_22074B9C0(&qword_27CF59478, MEMORY[0x277D683B0]);
    v31 = v37;
    sub_220886F1C();

    (*(v38 + 8))(v11, v31);
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_22074AB1C(uint64_t a1, uint64_t a2)
{
  v77 = a1;
  v3 = sub_22088954C();
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v74 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088926C();
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v65 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047A28C(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v64 - v11;
  v13 = sub_220884E9C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v73 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22088979C();
  v69 = *(v17 - 8);
  v70 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22088EDAC();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v64 - v28;
  v30 = sub_2208896BC();
  v71 = *(v30 - 8);
  v72 = v30;
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&result = COERCE_DOUBLE(sub_22088EDEC());
  if ((v35 & 1) == 0)
  {
    v64 = v14;
    v68 = a2;
    v36 = *&result * 1000.0;
    if (COERCE__INT64(fabs(*&result * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v36 > -9.22337204e18)
    {
      if (v36 < 9.22337204e18)
      {
        sub_22088EDBC();
        (*(v22 + 32))(v25, v29, v21);
        v37 = (*(v22 + 88))(v25, v21);
        if (v37 == *MEMORY[0x277D2D5D0])
        {
          (*(v69 + 104))(v20, *MEMORY[0x277D687B0], v70);
LABEL_17:
          sub_2208896AC();
          sub_22047A28C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
          v41 = sub_220886F8C();
          v42 = *(v41 - 8);
          v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
          v44 = swift_allocObject();
          *(v44 + 16) = xmmword_220899360;
          (*(v42 + 104))(v44 + v43, *MEMORY[0x277CEAD18], v41);
          sub_22074B9C0(&qword_27CF59480, MEMORY[0x277D686E0]);
          v45 = v72;
          sub_220886F1C();

          (*(v71 + 8))(v33, v45);
          v14 = v64;
          goto LABEL_18;
        }

        if (v37 == *MEMORY[0x277D2D5A8])
        {
          v38 = MEMORY[0x277D68788];
        }

        else if (v37 == *MEMORY[0x277D2D5B0])
        {
          v38 = MEMORY[0x277D68790];
        }

        else if (v37 == *MEMORY[0x277D2D5C0])
        {
          v38 = MEMORY[0x277D687A0];
        }

        else
        {
          if (v37 != *MEMORY[0x277D2D5B8])
          {
            v40 = *(v69 + 104);
            if (v37 != *MEMORY[0x277D2D5C8])
            {
              v40(v20, *MEMORY[0x277D687B0], v70);
              (*(v22 + 8))(v25, v21);
              goto LABEL_17;
            }

            v39 = *MEMORY[0x277D687A8];
            goto LABEL_16;
          }

          v38 = MEMORY[0x277D68798];
        }

        v39 = *v38;
        v40 = *(v69 + 104);
LABEL_16:
        v40(v20, v39, v70);
        goto LABEL_17;
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_18:
  sub_22088EDFC();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_22047C4E4(v12);
LABEL_26:
    sub_22088EDCC();
    v58 = v74;
    sub_22088953C();
    sub_22047A28C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v59 = sub_220886F8C();
    v60 = *(v59 - 8);
    v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_220899360;
    (*(v60 + 104))(v62 + v61, *MEMORY[0x277CEAD18], v59);
    sub_22074B9C0(&qword_2812984C0, MEMORY[0x277D68600]);
    v63 = v76;
    sub_220886F1C();

    sub_22088978C();
    sub_22074B9C0(&qword_27CF59470, MEMORY[0x277D68780]);
    memset(v78, 0, 32);
    sub_220886F3C();
    sub_22056D130(v78);
    *&result = COERCE_DOUBLE((*(v75 + 8))(v58, v63));
    return result;
  }

  v46 = v14;
  v47 = v73;
  (*(v14 + 32))(v73, v12, v13);
  v48 = [objc_allocWithZone(MEMORY[0x277D55100]) init];
  v49 = sub_220884E3C();
  v50 = [v48 identifierForURL_];

  if (!v50)
  {
LABEL_25:
    (*(v46 + 8))(v47, v13);
    goto LABEL_26;
  }

  sub_22089136C();

  *&result = COERCE_DOUBLE(sub_22088EDDC());
  if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_33;
  }

  if (v51 <= -2147483650.0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v51 < 2147483650.0)
  {
    v52 = v65;
    sub_22088925C();
    sub_22047A28C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v53 = sub_220886F8C();
    v54 = *(v53 - 8);
    v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_220899360;
    (*(v54 + 104))(v56 + v55, *MEMORY[0x277CEAD18], v53);
    sub_22074B9C0(&qword_27CF59478, MEMORY[0x277D683B0]);
    v57 = v67;
    sub_220886F1C();

    (*(v66 + 8))(v52, v57);
    goto LABEL_25;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_22074B720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[1] = a5;
  v7 = sub_22088EE0C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  __swift_project_boxed_opaque_existential_1((*v5 + 24), *(*v5 + 48));
  result = sub_220889D0C();
  if (result)
  {
    (*(v8 + 16))(v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
    v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v13 = swift_allocObject();
    (*(v8 + 32))(v13 + v12, v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    sub_22088726C();
  }

  return result;
}

uint64_t objectdestroyTm_11()
{
  v1 = sub_22088EE0C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_22074B93C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(sub_22088EE0C() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_22074B9C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22074BA08()
{
  v0 = sub_220884E7C();
  if (v1)
  {
    v2 = v1;
    if (v0 == sub_220884DEC() && v2 == v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_2208928BC();
    }

    v6 = sub_220884E6C();
    v8 = v7;
    v9 = sub_220884DDC();
    if (v8)
    {
      if (v6 == v9 && v8 == v10)
      {
        v11 = 1;
      }

      else
      {
        v11 = sub_2208928BC();
      }
    }

    else
    {
      v11 = 0;
    }

    v5 = v4 | v11;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_22074BAFC(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v2 = sub_22088516C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220889FAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_220889F9C();
  v22 = *(v20 - 8);
  v13 = MEMORY[0x28223BE20](v20, v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D68EC8];
  if (*(v21 + 64) < 0)
  {
    v16 = MEMORY[0x277D68EC0];
  }

  (*(v8 + 104))(v11, *v16, v7, v13);
  sub_220889F8C();
  sub_22074C308(&qword_2812982E0, 255, MEMORY[0x277D68EB8]);
  sub_220886F1C();
  sub_22088977C();
  sub_2208877FC();
  sub_22074C308(&qword_281298468, 255, MEMORY[0x277D68770]);
  sub_220886ECC();
  v17 = *(v3 + 8);
  v17(v6, v2);
  sub_2208877EC();
  sub_220886EDC();
  v17(v6, v2);
  return (*(v22 + 8))(v15, v20);
}

uint64_t sub_22074BE60()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  sub_22059A860(*(v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_22074BED4(uint64_t a1, uint64_t a2)
{
  if (*(*v2 + 16))
  {
    sub_22074C308(&qword_27CF59498, a2, type metadata accessor for TipInteractor);

    sub_220886C6C();
  }

  return result;
}

uint64_t sub_22074BF70(uint64_t a1)
{
  sub_22047C320(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220884E9C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  sub_22047C2BC(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_22047C4E4(v6);
  }

  (*(v8 + 32))(v11, v6, v7);
  __swift_project_boxed_opaque_existential_1((v12 + 24), *(v12 + 48));
  sub_22088B62C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_22074C100(uint64_t a1)
{
  v3 = sub_22088780C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v8 = *v1;
  (*(v4 + 16))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v7);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  (*(v4 + 32))(v10 + v9, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  sub_22088726C();
}

uint64_t sub_22074C294(uint64_t a1)
{
  sub_22088780C();
  v3 = *(v1 + 16);

  return sub_22074BAFC(a1, v3);
}

uint64_t sub_22074C308(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22074C374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_220476DF0(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

uint64_t sub_22074C4DC()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v2);
  return (*(*(v3 + 16) + 40))(v2);
}

uint64_t sub_22074C53C()
{
  sub_22074C5D4();

  return sub_22088D90C();
}

unint64_t sub_22074C57C()
{
  result = qword_281283C00;
  if (!qword_281283C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281283C00);
  }

  return result;
}

unint64_t sub_22074C5D4()
{
  result = qword_281283C08;
  if (!qword_281283C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281283C08);
  }

  return result;
}

uint64_t sub_22074C628(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v64 = a1;
  v2 = sub_2208891DC();
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v48 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2208895EC();
  v6 = *(v5 - 8);
  v57 = v5;
  v58 = v6;
  MEMORY[0x28223BE20](v5, v7);
  v56 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088956C();
  v10 = *(v9 - 8);
  v54 = v9;
  v55 = v10;
  MEMORY[0x28223BE20](v9, v11);
  v53 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_220889FFC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_220889FEC();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, *MEMORY[0x277D68EE0], v13, v21);
  sub_220889FCC();
  sub_2207526F0(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v63 = v24;
  v25 = sub_220886F8C();
  v26 = *(v25 - 8);
  v61 = *(v26 + 72);
  v27 = *(v26 + 80);
  v28 = (v27 + 32) & ~v27;
  v29 = swift_allocObject();
  v60 = xmmword_220899360;
  *(v29 + 16) = xmmword_220899360;
  v52 = *MEMORY[0x277CEAD10];
  v51 = *(v26 + 104);
  v51(v29 + v28);
  v59 = "articleFooterContext";
  sub_22075275C(&qword_2812982D8, MEMORY[0x277D68ED8]);
  sub_220886F1C();

  (*(v19 + 8))(v23, v18);
  v30 = sub_22088798C();
  sub_22088797C();
  v31 = v53;
  sub_22088955C();
  sub_22075275C(&qword_2812984B8, MEMORY[0x277D68610]);
  v32 = v54;
  sub_220886F1C();
  (*(v55 + 8))(v31, v32);
  swift_getObjectType();
  v33 = v56;
  sub_2206F61F0(v56);
  v53 = v27;
  v34 = swift_allocObject();
  *(v34 + 16) = v60;
  v54 = v28;
  v55 = v25;
  v35 = v34 + v28;
  v36 = v52;
  v37 = v25;
  v38 = v51;
  (v51)(v35, v52, v37);
  sub_22075275C(&qword_2812984B0, MEMORY[0x277D686A0]);
  v39 = v33;
  v40 = v57;
  sub_220886F1C();

  (*(v58 + 8))(v39, v40);
  v41 = [v30 sourceChannel];
  if (!v41)
  {
    return swift_unknownObjectRelease();
  }

  v42 = v41;
  __swift_project_boxed_opaque_existential_1((v62 + 24), *(v62 + 48));
  v43 = v48;
  sub_2206EC95C(v42);
  v44 = v54;
  v45 = swift_allocObject();
  *(v45 + 16) = v60;
  v38(v45 + v44, v36, v55);
  sub_22075275C(&qword_281298560, MEMORY[0x277D68340]);
  v46 = v50;
  sub_220886F1C();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return (*(v49 + 8))(v43, v46);
}

uint64_t sub_22074CD6C(uint64_t a1)
{
  v26 = a1;
  v2 = sub_22088916C();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v25 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22088A02C();
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088519C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22088A01C();
  v15 = *(v14 - 8);
  v22 = v14;
  v23 = v15;
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v1 + 16);
  sub_22088518C();
  sub_22088517C();
  (*(v10 + 8))(v13, v9);
  (*(v5 + 104))(v8, *MEMORY[0x277D68F28], v24);
  sub_22074D074(v25);
  sub_22088A00C();
  sub_22075275C(&unk_2812982B0, MEMORY[0x277D68F18]);
  v19 = v22;
  sub_2208872CC();
  (*(v23 + 8))(v18, v19);
  return sub_22088725C();
}

uint64_t sub_22074D074@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_220886F7C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088D81C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088D6AC();
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == *MEMORY[0x277D6E830])
  {
    v13 = *MEMORY[0x277D682F8];
    v14 = sub_22088916C();
    return (*(*(v14 - 8) + 104))(a1, v13, v14);
  }

  else if (v12 == *MEMORY[0x277D6E840] || v12 == *MEMORY[0x277D6E848] || v12 == *MEMORY[0x277D6E838])
  {
    sub_22088729C();
    sub_2207526F0(0, &unk_28127E158, MEMORY[0x277CEAE60], MEMORY[0x277D84560]);
    v18 = *(sub_2208871DC() - 8);
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_220899360;
    v21 = (v20 + v19);
    *v21 = 0x656C6369747261;
    v21[1] = 0xE700000000000000;
    (*(v18 + 104))();
    v22 = sub_220886F6C();

    (*(v3 + 8))(v6, v2);
    v23 = sub_22088916C();
    if (v22)
    {
      v24 = MEMORY[0x277D682D0];
    }

    else
    {
      v24 = MEMORY[0x277D682C8];
    }

    return (*(*(v23 - 8) + 104))(a1, *v24, v23);
  }

  else
  {
    result = sub_22089267C();
    __break(1u);
  }

  return result;
}

uint64_t sub_22074D430(char *a1)
{
  sub_2207520F8();
  v62 = *(v2 - 1);
  v63 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v60 = v4;
  v61 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v64 = &v57 - v7;
  sub_220751EEC(0, &qword_27CF594E0, MEMORY[0x277D6DA48]);
  v9 = v8;
  v69 = *(v8 - 1);
  v66 = *(v69 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v71 = &v57 - v11;
  sub_2207521E0();
  v72 = v12;
  v67 = *(v12 - 8);
  v13 = *(v67 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v65 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v68 = &v57 - v17;
  v18 = sub_22088778C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220751D9C();
  v24 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088BBEC();
  sub_22088AD8C();
  (*(v25 + 8))(v28, v24);
  v29 = (*(v19 + 88))(v22, v18);
  if (v29 == *MEMORY[0x277D2FB98])
  {
    (*(v19 + 96))(v22, v18);
    v31 = v67;
    v30 = v68;
    v63 = *(v67 + 32);
    v32 = v22;
    v33 = v72;
    v63(v68, v32, v72);
    v34 = v69;
    v35 = v70;
    v64 = v70[2];
    (*(v69 + 16))(v71, a1, v9);
    v36 = v65;
    (*(v31 + 16))(v65, v30, v33);
    v37 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v38 = (v66 + *(v31 + 80) + v37) & ~*(v31 + 80);
    v39 = swift_allocObject();
    (*(v34 + 32))(v39 + v37, v71, v9);
    v40 = v72;
    v63((v39 + v38), v36, v72);
    *(v39 + ((v13 + v38 + 7) & 0xFFFFFFFFFFFFFFF8)) = v35;

    sub_22088726C();

    return (*(v31 + 8))(v68, v40);
  }

  else
  {
    v65 = a1;
    v43 = v69;
    v42 = v70;
    v68 = v9;
    if (v29 == *MEMORY[0x277D2FBA0])
    {
      (*(v19 + 96))(v22, v18);
      sub_2207522C8();
      v45 = *(v44 + 48);
      v46 = v62;
      v47 = v63;
      v48 = v64;
      v58 = *(v62 + 32);
      v59 = v45;
      v58(v64, v22, v63);
      __swift_project_boxed_opaque_existential_1(v42 + 9, v42[12]);
      if (sub_220889D0C())
      {
        v70 = v42[2];
        v49 = v48;
        v50 = v43;
        v51 = *(v43 + 16);
        v52 = v68;
        v51(v71, v65, v68);
        v53 = v61;
        (*(v46 + 16))(v61, v49, v47);
        v54 = (*(v50 + 80) + 16) & ~*(v50 + 80);
        v55 = (v66 + *(v46 + 80) + v54) & ~*(v46 + 80);
        v56 = swift_allocObject();
        (*(v50 + 32))(v56 + v54, v71, v52);
        v58((v56 + v55), v53, v47);
        sub_22088726C();

        (*(v46 + 8))(v64, v47);
      }

      else
      {
        (*(v46 + 8))(v48, v47);
      }

      return (*(v67 + 8))(&v22[v59], v72);
    }

    else
    {
      return (*(v19 + 8))(v22, v18);
    }
  }
}

uint64_t sub_22074DB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v171 = a4;
  v211 = a3;
  v235 = a1;
  v191 = sub_22088516C();
  v190 = *(v191 - 8);
  MEMORY[0x28223BE20](v191, v5);
  v189 = &v164 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_22088776C();
  v185 = *(v186 - 8);
  MEMORY[0x28223BE20](v186, v7);
  v182 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_22088FFFC();
  v183 = *(v184 - 8);
  MEMORY[0x28223BE20](v184, v9);
  v179 = &v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_22088FEFC();
  v180 = *(v181 - 8);
  MEMORY[0x28223BE20](v181, v11);
  v178 = &v164 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_22088A04C();
  v187 = *(v188 - 8);
  MEMORY[0x28223BE20](v188, v13);
  v210 = &v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_22088A10C();
  v166 = *(v167 - 8);
  MEMORY[0x28223BE20](v167, v15);
  v165 = &v164 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_2208891DC();
  v169 = *(v170 - 8);
  MEMORY[0x28223BE20](v170, v17);
  v168 = &v164 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_2208895EC();
  v197 = *(v198 - 8);
  MEMORY[0x28223BE20](v198, v19);
  v196 = &v164 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22089011C();
  v195 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v22);
  v194 = &v164 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220751E78();
  MEMORY[0x28223BE20](v24 - 8, v25);
  v208 = &v164 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v227 = &v164 - v29;
  sub_220751EEC(0, &qword_27CF58C50, MEMORY[0x277D6D710]);
  v212 = v30;
  v220 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v31);
  v177 = &v164 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34);
  v192 = &v164 - v35;
  sub_2207526F0(0, &qword_281297500, MEMORY[0x277D6E740], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v36 - 8, v37);
  v207 = &v164 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v40);
  v206 = (&v164 - v41);
  v42 = sub_22088A0DC();
  v43 = *(v42 - 8);
  v218 = v42;
  v219 = v43;
  MEMORY[0x28223BE20](v42, v44);
  v209 = &v164 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v47);
  v193 = &v164 - v48;
  v203 = sub_2208899AC();
  v202 = *(v203 - 8);
  MEMORY[0x28223BE20](v203, v49);
  v201 = &v164 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220751D9C();
  v230 = v51;
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v53);
  v200 = &v164 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55, v56);
  v205 = &v164 - v57;
  MEMORY[0x28223BE20](v58, v59);
  v61 = &v164 - v60;
  sub_220751EEC(0, &qword_27CF58C60, MEMORY[0x277D6EC60]);
  v63 = v62;
  v64 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v65);
  v199 = &v164 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67, v68);
  v204 = &v164 - v69;
  MEMORY[0x28223BE20](v70, v71);
  v73 = &v164 - v72;
  v228 = sub_22088971C();
  v74 = *(v228 - 1);
  MEMORY[0x28223BE20](v228, v75);
  v77 = &v164 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220751EEC(0, &qword_27CF594E0, MEMORY[0x277D6DA48]);
  v79 = v78;
  sub_22088BC0C();
  v221 = v79;
  v213 = a2;
  sub_22088BBEC();
  v80 = sub_22075275C(&qword_27CF594B0, MEMORY[0x277D2FBA8]);
  v222 = v63;
  result = sub_22088E7FC();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v176 = v21;
  sub_22088970C();
  v82 = *(v52 + 8);
  v217 = v52 + 8;
  v226 = v82;
  v82(v61, v230);
  v83 = *(v64 + 8);
  v216 = v64 + 8;
  v215 = v83;
  v83(v73, v222);
  sub_2207526F0(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v85 = v84;
  v86 = sub_220886F8C();
  v87 = *(v86 - 8);
  v214 = v80;
  v88 = v87;
  v89 = *(v87 + 80);
  v90 = (v89 + 32) & ~v89;
  v234 = *(v87 + 72);
  v229 = v89;
  v224 = v85;
  v91 = swift_allocObject();
  v232 = xmmword_220899360;
  *(v91 + 16) = xmmword_220899360;
  v92 = *MEMORY[0x277CEAD18];
  v93 = *(v88 + 104);
  v223 = v90;
  v94 = v91 + v90;
  v95 = v92;
  v225 = v86;
  v231 = v88 + 104;
  v93(v94, v92, v86);
  v96 = v93;
  sub_22075275C(&qword_281298470, MEMORY[0x277D68720]);
  v233 = "articleFooterContext";
  v97 = v228;
  sub_220886F1C();

  (*(v74 + 8))(v77, v97);
  sub_22088BC0C();
  sub_22088BBEC();
  result = sub_22088E80C();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v98 = v201;
  sub_22088999C();
  v226(v61, v230);
  v99 = v222;
  v215(v73, v222);
  v100 = v223;
  v101 = swift_allocObject();
  *(v101 + 16) = v232;
  LODWORD(v214) = v95;
  v228 = v96;
  v96(v101 + v100, v95, v225);
  sub_22075275C(&qword_2812983F0, MEMORY[0x277D68928]);
  v102 = v203;
  sub_220886F1C();

  v202[1](v98, v102);
  v103 = v204;
  sub_22088BC0C();
  v104 = v205;
  sub_22088BBEC();
  v105 = sub_22088D5BC();
  v106 = *(v105 - 8);
  v107 = *(v106 + 56);
  v108 = v206;
  v203 = v105;
  v202 = v107;
  v201 = (v106 + 56);
  (v107)(v206, 1, 1);
  sub_22088AD4C();
  v109 = v227;
  sub_22088E76C();

  v110 = v220;
  v111 = *(v220 + 48);
  v112 = v212;
  v175 = v220 + 48;
  v174 = v111;
  result = v111(v109, 1, v212);
  if (result == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v113 = *(v110 + 32);
  v114 = v192;
  v173 = v110 + 32;
  v172 = v113;
  v113(v192, v109, v112);
  v115 = v193;
  sub_22073BD40(v114, v108, v193);
  v116 = *(v110 + 8);
  v220 = v110 + 8;
  v192 = v116;
  (v116)(v114, v112);
  sub_220751FE0(v108);
  v226(v104, v230);
  v215(v103, v99);
  v117 = v223;
  v118 = swift_allocObject();
  *(v118 + 16) = v232;
  v119 = v214;
  v120 = v225;
  (v228)(v118 + v117, v214);
  v121 = sub_22075275C(&unk_281298290, MEMORY[0x277D68FD8]);
  v122 = v218;
  v205 = v121;
  sub_220886F1C();

  v123 = *(v219 + 8);
  v219 += 8;
  v206 = v123;
  v123(v115, v122);
  sub_2207521E0();
  v124 = v194;
  v204 = v125;
  sub_22088FF6C();
  v126 = sub_2208900FC();
  (*(v195 + 8))(v124, v176);
  swift_getObjectType();
  v127 = v196;
  sub_2206F61F0(v196);
  v128 = swift_allocObject();
  *(v128 + 16) = v232;
  (v228)(v128 + v117, v119, v120);
  sub_22075275C(&qword_2812984B0, MEMORY[0x277D686A0]);
  v129 = v198;
  sub_220886F1C();

  (*(v197 + 8))(v127, v129);
  v227 = v126;
  v130 = [v126 sourceChannel];
  if (v130)
  {
    v131 = v130;
    __swift_project_boxed_opaque_existential_1((v171 + 24), *(v171 + 48));
    v132 = v168;
    sub_2206EC95C(v131);
    v133 = swift_allocObject();
    *(v133 + 16) = v232;
    (v228)(v133 + v117, v119, v120);
    sub_22075275C(&qword_281298560, MEMORY[0x277D68340]);
    v134 = v170;
    sub_220886F1C();
    swift_unknownObjectRelease();

    (*(v169 + 8))(v132, v134);
  }

  v135 = [v227 respondsToSelector_];
  v136 = v208;
  v137 = v207;
  v138 = v200;
  v139 = v199;
  v140 = v226;
  if (v135)
  {
    v141 = [v227 parentIssue];
    if (v141)
    {
      v142 = v141;
      v143 = [v141 identifier];
      sub_22089136C();

      v144 = v165;
      v140 = v226;
      sub_22088A0FC();
      v145 = v223;
      v146 = swift_allocObject();
      *(v146 + 16) = v232;
      (v228)(v146 + v145, v214, v225);
      sub_22075275C(&qword_281298280, MEMORY[0x277D69030]);
      v147 = v167;
      sub_220886F1C();

      v148 = v144;
      v137 = v207;
      v149 = v147;
      v136 = v208;
      (*(v166 + 8))(v148, v149);
    }
  }

  sub_22088BC0C();
  sub_22088BBEC();
  (v202)(v137, 1, 1, v203);
  v150 = v230;
  sub_22088AD4C();
  v151 = v139;
  v152 = v222;
  sub_22088E76C();

  v153 = v212;
  result = v174(v136, 1, v212);
  if (result != 1)
  {
    v154 = v177;
    v172(v177, v136, v153);
    sub_22073BD40(v154, v137, v209);
    (v192)(v154, v153);
    sub_220751FE0(v137);
    v140(v138, v150);
    v215(v151, v152);
    v155 = v223;
    v156 = swift_allocObject();
    *(v156 + 16) = v232;
    (v228)(v156 + v155, v214, v225);
    sub_220886F1C();

    v157 = v179;
    sub_22088FF7C();
    v158 = v182;
    sub_22088FF8C();
    sub_22088775C();
    (*(v185 + 8))(v158, v186);
    v159 = v178;
    sub_22088FFEC();
    (*(v183 + 8))(v157, v184);
    sub_220605740();
    (*(v180 + 8))(v159, v181);
    sub_22075275C(&unk_2812982A0, MEMORY[0x277D68F38]);
    v160 = v188;
    sub_220886F1C();
    sub_220889D5C();
    v161 = v189;
    sub_22088BC1C();
    sub_22075275C(&qword_281298338, MEMORY[0x277D68C90]);
    sub_220886ECC();
    v162 = *(v190 + 8);
    v163 = v191;
    v162(v161, v191);
    sub_22088BBFC();
    sub_220886EDC();
    swift_unknownObjectRelease();
    v162(v161, v163);
    (*(v187 + 8))(v210, v160);
    return v206(v209, v218);
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22074F4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v156 = a3;
  v164 = a1;
  v124 = sub_22088516C();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124, v4);
  v122 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_22088954C();
  v121 = *(v153 - 8);
  MEMORY[0x28223BE20](v153, v6);
  v152 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_220889FFC();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118, v8);
  v116 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_22088909C();
  v120 = *(v151 - 8);
  MEMORY[0x28223BE20](v151, v10);
  v149 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_22088918C();
  v119 = *(v150 - 8);
  MEMORY[0x28223BE20](v150, v12);
  v148 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220751E78();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v134 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220751EEC(0, &qword_27CF58C50, MEMORY[0x277D6D710]);
  v135 = v17;
  v133 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v114 = &v110 - v19;
  sub_2207526F0(0, &qword_281297500, MEMORY[0x277D6E740], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v132 = &v110 - v22;
  v147 = sub_22088A0DC();
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147, v23);
  v115 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v145 = &v110 - v27;
  v28 = sub_2208895EC();
  v129 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v29);
  v128 = &v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_22088EF8C();
  v161 = *(v155 - 8);
  MEMORY[0x28223BE20](v155, v31);
  v154 = &v110 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_2208899AC();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127, v33);
  v125 = &v110 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220751D9C();
  v165 = v35;
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v37);
  v131 = &v110 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v110 - v41;
  sub_220751EEC(0, &qword_27CF58C60, MEMORY[0x277D6EC60]);
  v44 = v43;
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v46);
  v130 = &v110 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48, v49);
  v51 = &v110 - v50;
  v136 = sub_22088971C();
  v52 = *(v136 - 8);
  MEMORY[0x28223BE20](v136, v53);
  v55 = &v110 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220751EEC(0, &qword_27CF594E0, MEMORY[0x277D6DA48]);
  v57 = v56;
  sub_22088BC0C();
  v162 = v57;
  v163 = a2;
  sub_22088BBEC();
  v58 = sub_22075275C(&qword_27CF594B0, MEMORY[0x277D2FBA8]);
  result = sub_22088E7FC();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v112 = v28;
  sub_22088970C();
  v141 = *(v36 + 8);
  v139 = v36 + 8;
  v141(v42, v165);
  v60 = *(v45 + 8);
  v142 = v45 + 8;
  v140 = v60;
  v60(v51, v44);
  sub_2207526F0(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v62 = v61;
  v63 = sub_220886F8C();
  v64 = *(v63 - 8);
  v113 = v58;
  v65 = v64;
  v66 = v44;
  v67 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v68 = v67 + *(v64 + 72);
  v143 = *(v64 + 80);
  v157 = v68;
  v158 = v62;
  v69 = swift_allocObject();
  v166 = xmmword_220899360;
  *(v69 + 16) = xmmword_220899360;
  v70 = *MEMORY[0x277CEAD18];
  v71 = *(v65 + 104);
  v144 = v67;
  v167 = v70;
  v159 = v63;
  v160 = v65 + 104;
  v71(v69 + v67);
  v72 = v71;
  sub_22075275C(&qword_281298470, MEMORY[0x277D68720]);
  v73 = v136;
  sub_220886F1C();

  (*(v52 + 8))(v55, v73);
  sub_22088BC0C();
  sub_22088BBEC();
  result = sub_22088E80C();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v137 = v72;
  v74 = v72;
  v75 = v125;
  sub_22088999C();
  v138 = "articleFooterContext";
  v141(v42, v165);
  v111 = v66;
  v140(v51, v66);
  v76 = swift_allocObject();
  *(v76 + 16) = v166;
  v77 = v144;
  v78 = v159;
  (v74)(v76 + v144, v167, v159);
  sub_22075275C(&qword_2812983F0, MEMORY[0x277D68928]);
  v79 = v127;
  sub_220886F1C();

  v126[1](v75, v79);
  sub_2207520F8();
  v80 = v154;
  v127 = v81;
  sub_22088FF6C();
  v82 = sub_22088EF7C();
  v83 = *(v161 + 8);
  v161 += 8;
  v126 = v83;
  (v83)(v80, v155);
  swift_getObjectType();
  v84 = v128;
  v136 = v82;
  sub_2206F61F0(v128);
  v85 = swift_allocObject();
  *(v85 + 16) = v166;
  v86 = v111;
  (v137)(v85 + v77, v167, v78);
  sub_22075275C(&qword_2812984B0, MEMORY[0x277D686A0]);
  v87 = v165;
  v88 = v112;
  sub_220886F1C();

  (*(v129 + 8))(v84, v88);
  v89 = v130;
  sub_22088BC0C();
  v90 = v131;
  sub_22088BBEC();
  v91 = sub_22088D5BC();
  v92 = v132;
  (*(*(v91 - 8) + 56))(v132, 1, 1, v91);
  sub_22088AD4C();
  v93 = v134;
  v94 = v86;
  sub_22088E76C();
  v95 = v93;

  v96 = v133;
  v97 = v135;
  result = (*(v133 + 48))(v95, 1, v135);
  if (result != 1)
  {
    v98 = v114;
    (*(v96 + 32))(v114, v95, v97);
    v99 = v145;
    sub_22073BD40(v98, v92, v145);
    (*(v96 + 8))(v98, v97);
    sub_220751FE0(v92);
    v141(v90, v87);
    v140(v89, v94);
    v100 = swift_allocObject();
    *(v100 + 16) = v166;
    v101 = v144;
    v102 = v137;
    (v137)(v100 + v144, v167, v159);
    sub_22075275C(&unk_281298290, MEMORY[0x277D68FD8]);
    v103 = v147;
    sub_220886F1C();

    (*(v146 + 16))(v115, v99, v103);
    sub_22088917C();
    sub_22075275C(qword_27CF59148, MEMORY[0x277D68310]);
    sub_220886F1C();
    (*(v117 + 104))(v116, *MEMORY[0x277D68EE0], v118);
    sub_22088908C();
    sub_22075275C(&qword_281298590, MEMORY[0x277D68210]);
    sub_220886F1C();
    v104 = v154;
    v105 = sub_22088FF6C();
    MEMORY[0x223D87110](v105);
    (v126)(v104, v155);
    sub_22088953C();
    v106 = swift_allocObject();
    *(v106 + 16) = v166;
    v102(v106 + v101, v167, v159);
    sub_22075275C(&qword_2812984C0, MEMORY[0x277D68600]);
    sub_220886F1C();

    sub_220889C7C();
    v107 = v122;
    sub_22088BC1C();
    sub_22075275C(&qword_27CF59508, MEMORY[0x277D68BA0]);
    sub_220886ECC();
    v108 = *(v123 + 8);
    v109 = v124;
    v108(v107, v124);
    sub_22088BBFC();
    sub_220886EDC();
    swift_unknownObjectRelease();
    v108(v107, v109);
    (*(v121 + 8))(v152, v153);
    (*(v120 + 8))(v149, v151);
    (*(v119 + 8))(v148, v150);
    return (*(v146 + 8))(v145, v147);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_22075089C(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v3 = sub_22088516C();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220751EEC(0, &qword_27CF58C50, MEMORY[0x277D6D710]);
  v36 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v35 - v10;
  sub_220751EEC(0, &qword_27CF58C60, MEMORY[0x277D6EC60]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v35 - v16;
  v18 = sub_22088A0DC();
  v19 = *(v18 - 8);
  v38 = v18;
  v39 = v19;
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207526F0(0, &qword_281297500, MEMORY[0x277D6E740], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v35 - v25;
  sub_220751EEC(0, &qword_27CF594B8, MEMORY[0x277D6E3A0]);
  v37 = v26;
  v35 = a2;
  sub_22088CDFC();
  sub_22088CDDC();
  sub_22088CDCC();
  sub_22073BD40(v11, v26, v22);
  (*(v8 + 8))(v11, v36);
  (*(v14 + 8))(v17, v13);
  sub_2207526F0(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v27 = sub_220886F8C();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_220899360;
  (*(v28 + 104))(v30 + v29, *MEMORY[0x277CEAD10], v27);
  sub_22075275C(&unk_281298290, MEMORY[0x277D68FD8]);
  v31 = v38;
  sub_220886F1C();

  (*(v39 + 8))(v22, v31);
  sub_220889AEC();
  sub_22088CDEC();
  sub_22075275C(&qword_27CF594C0, MEMORY[0x277D68A50]);
  sub_220886ECC();
  v32 = v42;
  v33 = *(v41 + 8);
  v33(v6, v42);
  sub_22088CDBC();
  sub_220886EDC();
  v33(v6, v32);
  return sub_220751FE0(v37);
}

uint64_t sub_220750E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a2;
  v57 = a3;
  v58 = a1;
  v3 = sub_2208899AC();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088971C();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220751E78();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v55 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220751EEC(0, &qword_27CF58C50, MEMORY[0x277D6D710]);
  v54 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v45 - v15;
  sub_2207526F0(0, &qword_281297500, MEMORY[0x277D6E740], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v45 - v19;
  v21 = sub_22088A0DC();
  v52 = *(v21 - 8);
  v53 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_220889FFC();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_220889FEC();
  v31 = *(v30 - 8);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v35 = &v45 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 104))(v29, *MEMORY[0x277D68EE0], v25, v33);
  sub_220889FCC();
  sub_22075275C(&qword_2812982D8, MEMORY[0x277D68ED8]);
  sub_220886F1C();
  (*(v31 + 8))(v35, v30);
  v36 = sub_22088D5BC();
  (*(*(v36 - 8) + 56))(v20, 1, 1, v36);
  sub_220751D9C();
  sub_22088AD4C();
  sub_220751EEC(0, &qword_27CF58C60, MEMORY[0x277D6EC60]);
  v37 = v55;
  sub_22088E76C();
  v38 = v54;

  result = (*(v13 + 48))(v37, 1, v38);
  if (result == 1)
  {
    goto LABEL_11;
  }

  (*(v13 + 32))(v16, v37, v38);
  sub_22073BD40(v16, v20, v24);
  (*(v13 + 8))(v16, v38);
  sub_220751FE0(v20);
  sub_22075275C(&unk_281298290, MEMORY[0x277D68FD8]);
  v40 = v53;
  sub_220886F1C();
  (*(v52 + 8))(v24, v40);
  sub_22075275C(&qword_27CF594B0, MEMORY[0x277D2FBA8]);
  result = sub_22088E7FC();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v41 = v49;
  sub_22088970C();
  sub_22075275C(&qword_281298470, MEMORY[0x277D68720]);
  v42 = v51;
  sub_220886F1C();
  (*(v50 + 8))(v41, v42);
  result = sub_22088E80C();
  if (result >= 0xFFFFFFFF80000000)
  {
    if (result <= 0x7FFFFFFF)
    {
      v43 = v46;
      sub_22088999C();
      sub_22075275C(&qword_2812983F0, MEMORY[0x277D68928]);
      v44 = v48;
      sub_220886F1C();
      return (*(v47 + 8))(v43, v44);
    }

    goto LABEL_10;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_22075165C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_2207516D0()
{

  sub_22088726C();
}

uint64_t sub_220751750()
{
  v0 = sub_22088516C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2208896FC();
  sub_22088CE2C();
  sub_22075275C(&qword_281298478, MEMORY[0x277D68710]);
  sub_22088728C();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_22088CE1C();
  sub_2208872AC();
  return (v5)(v4, v0);
}

uint64_t sub_2207518FC(uint64_t a1)
{
  sub_220751EEC(0, &qword_27CF594B8, MEMORY[0x277D6E3A0]);
  v3 = v2;
  v4 = *(v2 - 8);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v12 - v7;
  (*(v4 + 16))(&v12 - v7, a1, v3, v6);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, v8, v3);
  sub_22088726C();
}

uint64_t sub_220751A58()
{
  v0 = sub_2208871DC();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = 0x656E696C64616568;
  v5[1] = 0xE800000000000000;
  (*(v1 + 104))(v5, *MEMORY[0x277CEAE48], v0, v3);
  sub_2208872DC();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_220751B68(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  sub_220751D9C();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3, v7);
  v8 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220751EEC(0, &qword_27CF58C60, MEMORY[0x277D6EC60]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v9, v13);
  v16 = &v21 - v15;
  (*(v11 + 16))(&v21 - v15, a2, v10, v14);
  (*(v5 + 16))(v8, v22, v4);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = (v12 + *(v5 + 80) + v17) & ~*(v5 + 80);
  v19 = swift_allocObject();
  (*(v11 + 32))(v19 + v17, v16, v10);
  (*(v5 + 32))(v19 + v18, v8, v4);
  sub_22088726C();
}

void sub_220751D9C()
{
  if (!qword_27CF594A0)
  {
    sub_22088778C();
    sub_22075275C(&qword_27CF58C58, MEMORY[0x277D2FBA8]);
    v0 = sub_22088ADAC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF594A0);
    }
  }
}

void sub_220751E78()
{
  if (!qword_27CF594A8)
  {
    sub_220751EEC(255, &qword_27CF58C50, MEMORY[0x277D6D710]);
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF594A8);
    }
  }
}

void sub_220751EEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = sub_220887F2C();
    v8[1] = sub_22088778C();
    v8[2] = sub_22075275C(&unk_27CF59390, MEMORY[0x277D301D0]);
    v8[3] = sub_22075275C(&qword_27CF58C58, MEMORY[0x277D2FBA8]);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_220751FE0(uint64_t a1)
{
  sub_2207526F0(0, &qword_281297500, MEMORY[0x277D6E740], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22075206C(uint64_t a1)
{
  sub_220751EEC(0, &qword_27CF594B8, MEMORY[0x277D6E3A0]);
  v4 = v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_22075089C(a1, v4);
}

void sub_2207520F8()
{
  if (!qword_27CF594C8)
  {
    sub_22088EF8C();
    sub_22088776C();
    v0 = MEMORY[0x277D2D6B0];
    sub_22075275C(&qword_27CF594D0, MEMORY[0x277D2D6B0]);
    sub_22075275C(&qword_27CF594D8, v0);
    v1 = sub_22088FFBC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF594C8);
    }
  }
}

void sub_2207521E0()
{
  if (!qword_27CF594E8)
  {
    sub_22089011C();
    sub_22088776C();
    v0 = MEMORY[0x277D33058];
    sub_22075275C(&qword_27CF594F0, MEMORY[0x277D33058]);
    sub_22075275C(&qword_27CF594F8, v0);
    v1 = sub_22088FFBC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF594E8);
    }
  }
}

void sub_2207522C8()
{
  if (!qword_27CF59500)
  {
    sub_2207520F8();
    sub_2207521E0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF59500);
    }
  }
}

uint64_t objectdestroyTm_12(unint64_t *a1, uint64_t (*a2)(uint64_t, void *), uint64_t (*a3)(void))
{
  sub_220751EEC(0, a1, a2);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = a3(0);
  v11 = *(v10 - 8);
  v12 = (v8 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  (*(v7 + 8))(v3 + v8, v6);
  (*(v11 + 8))(v3 + v12, v10);

  return swift_deallocObject();
}

uint64_t sub_2207524DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, unint64_t, uint64_t))
{
  sub_220751EEC(0, a2, a3);
  v9 = (*(*(v8 - 8) + 80) + 16) & ~*(*(v8 - 8) + 80);
  v10 = *(*(v8 - 8) + 64);
  v11 = *(a4(0) - 8);
  v12 = v5 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80));

  return a5(a1, v5 + v9, v12);
}

uint64_t sub_2207525D4(uint64_t a1)
{
  sub_220751EEC(0, &qword_27CF594E0, MEMORY[0x277D6DA48]);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  sub_2207521E0();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_22074DB00(a1, v1 + v4, v1 + v8, v9);
}

void sub_2207526F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22075275C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2207527A4(uint64_t a1)
{
  v28 = a1;
  v3 = *v1;
  v4 = v1[5];
  v32 = v1[6];
  v33 = v3;
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v31 = *(v4 - 8);
  v6 = *(v31 + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v30 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v28 - v30;
  (*(*(v32 + 8) + 8))(a1, v4, v8);
  v10 = v1[10];
  v29 = v1[11];
  v11 = v29;
  v12 = __swift_project_boxed_opaque_existential_1(v1 + 7, v10);
  v13 = *(v10 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v17 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = (*(*(v11 + 8) + 8))(v28, v10, v16);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v21 = v31;
  v22 = &v28 - v30;
  v23 = (*(v31 + 16))(&v28 - v30, v9, v4, v20);
  v25 = MEMORY[0x28223BE20](v23, v24);
  (*(v13 + 16))(&v28 - v17, &v28 - v17, v10, v25);
  v26 = sub_2204E6820(v22, &v28 - v17, v33, v4, v10, v32, v29);
  (*(v13 + 8))(&v28 - v17, v10);
  (*(v21 + 8))(v9, v4);
  return v26;
}

id sub_220752A48(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  v6 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v7 = sub_22089132C();
  v8 = [v6 initWithString_];

  [v5 appendAttributedString_];
  if (a3)
  {
    v9 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v10 = a3;
    v11 = sub_22089132C();
    v12 = [v9 initWithString_];

    [v5 appendAttributedString_];
    type metadata accessor for IconTextAttachment();
    v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v13 setImage_];
    v14 = &v13[OBJC_IVAR____TtC8StocksUI18IconTextAttachment_baselineAdjustment];
    *v14 = 0x3FF0000000000000;
    v14[8] = 0;
    v15 = &v13[OBJC_IVAR____TtC8StocksUI18IconTextAttachment_imageHeightOverride];
    *v15 = 0x402A000000000000;
    v15[8] = 0;
    v16 = [objc_opt_self() attributedStringWithAttachment_];
    [v5 appendAttributedString_];
  }

  sub_2204A5DF0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899360;
  v18 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v19 = v3[5];
  v20 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v19);
  v21 = *(v20 + 16);
  v22 = *(v21 + 216);
  v23 = v18;
  v24 = v22(v19, v21);
  *(inited + 64) = sub_22044D56C(0, &qword_28127E530);
  *(inited + 40) = v24;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2205613E0(inited + 32);
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v25 = sub_22089125C();

  v26 = v5;
  [v26 addAttributes:v25 range:{0, objc_msgSend(v26, sel_length)}];

  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_220899360;
  v28 = *MEMORY[0x277D740A8];
  *(v27 + 32) = *MEMORY[0x277D740A8];
  v29 = v28;
  sub_22088F0DC();
  v30 = sub_22044D56C(0, &qword_28127E570);
  v31 = sub_220891F2C();
  *(v27 + 64) = v30;
  *(v27 + 40) = v31;
  sub_2204A5EAC(v27);
  swift_setDeallocating();
  sub_2205613E0(v27 + 32);
  v32 = sub_22089125C();

  [v26 addAttributes:v32 range:{0, objc_msgSend(v26, sel_length)}];

  return v26;
}

uint64_t sub_220752E4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2207527A4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_220752E78()
{
  v1 = OBJC_IVAR____TtC8StocksUI31StubStockForYouFeedGroupEmitter_config;
  sub_220452A8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StubStockForYouFeedGroupEmitter()
{
  result = qword_27CF59518;
  if (!qword_27CF59518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220752F68()
{
  sub_220452A8C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_220752FF8()
{
  sub_22052BD60(0, &qword_28127E198, MEMORY[0x277D69810], MEMORY[0x277D84560]);
  sub_22088685C();
  *(swift_allocObject() + 16) = xmmword_22089EF70;
  sub_2208867DC();
  sub_2208867EC();
  sub_2208867FC();
  sub_22088682C();
  sub_22052BD60(0, &qword_2812985E0, sub_22055F87C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_220753164()
{
  sub_2205028F4(&qword_27CF59538, type metadata accessor for StubStockForYouFeedGroupEmitter);

  return sub_22088882C();
}

uint64_t sub_220753338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockForYouFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22075339C()
{
  v1 = v0;
  v2 = type metadata accessor for CuratedForYouFeedGroup();
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ForYouFeedSectionDescriptor();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FB25C(v1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      sub_2204FC284(v9, type metadata accessor for ForYouFeedSectionDescriptor);
    }

    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_2204B3C8C(v9, &qword_281296C60, MEMORY[0x277D31C50]);
    v14 = 1;
    return v14 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_22045849C();
    v12 = *(v11 + 48);
    sub_2204B3C8C(&v9[*(v11 + 64)], &qword_281296C60, MEMORY[0x277D31C50]);
    sub_2204FC284(&v9[v12], type metadata accessor for StockViewModel);
    v13 = sub_22088685C();
    (*(*(v13 - 8) + 8))(v9, v13);
LABEL_7:
    v14 = 0;
    return v14 & 1;
  }

  sub_220523070(v9, v5, type metadata accessor for CuratedForYouFeedGroup);
  v16 = &v5[*(v2 + 20)];
  if (*v16 == 0x69726F7453706F74 && *(v16 + 1) == 0xEA00000000007365)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_2208928BC();
  }

  sub_2204FC284(v5, type metadata accessor for CuratedForYouFeedGroup);
  return v14 & 1;
}

uint64_t sub_22075360C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ForYouFeedSectionDescriptor();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FB25C(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) < 2)
    {
      v16 = *MEMORY[0x277D69008];
      v17 = sub_22088A0EC();
      return (*(*(v17 - 8) + 104))(a1, v16, v17);
    }

    v20 = MEMORY[0x277D68FE8];
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v18 = *MEMORY[0x277D68FE0];
      v19 = sub_22088A0EC();
      (*(*(v19 - 8) + 104))(a1, v18, v19);
      return sub_2204B3C8C(v7, &qword_281296C60, MEMORY[0x277D31C50]);
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_22045849C();
      v10 = *(v9 + 48);
      v11 = *(v9 + 64);
      v12 = *MEMORY[0x277D68FF0];
      v13 = sub_22088A0EC();
      (*(*(v13 - 8) + 104))(a1, v12, v13);
      sub_2204B3C8C(&v7[v11], &qword_281296C60, MEMORY[0x277D31C50]);
      sub_2204FC284(&v7[v10], type metadata accessor for StockViewModel);
      v14 = sub_22088685C();
      return (*(*(v14 - 8) + 8))(v7, v14);
    }

    v20 = MEMORY[0x277D68FF8];
  }

  v21 = *v20;
  v22 = sub_22088A0EC();
  (*(*(v22 - 8) + 104))(a1, v21, v22);
  return sub_2204FC284(v7, type metadata accessor for ForYouFeedSectionDescriptor);
}

uint64_t sub_2207538C8()
{
  v1 = v0;
  v2 = type metadata accessor for CuratedForYouFeedGroup();
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ForYouFeedSectionDescriptor();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FB25C(v1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload > 2)
  {
    result = 0;
    if ((v11 - 4) < 2)
    {
      return result;
    }

    sub_2204FC284(v9, type metadata accessor for ForYouFeedSectionDescriptor);
    return 0;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_2204B3C8C(v9, &qword_281296C60, MEMORY[0x277D31C50]);
    return 0;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_22045849C();
    v13 = *(v12 + 48);
    sub_2204B3C8C(&v9[*(v12 + 64)], &qword_281296C60, MEMORY[0x277D31C50]);
    sub_2204FC284(&v9[v13], type metadata accessor for StockViewModel);
    v14 = sub_22088685C();
    (*(*(v14 - 8) + 8))(v9, v14);
    return 0;
  }

  sub_220523070(v9, v5, type metadata accessor for CuratedForYouFeedGroup);
  v16 = *&v5[*(v2 + 20)];

  sub_2204FC284(v5, type metadata accessor for CuratedForYouFeedGroup);
  return v16;
}

uint64_t sub_220753B34()
{
  sub_220530500(&qword_281285400);

  return sub_22088D90C();
}

uint64_t sub_220753B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v59 = sub_22088516C();
  v6 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v7);
  v58 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v52 = &v52 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v55 = v3;
  v56 = &v52 - v14;
  sub_22046DA2C(v3 + 56, v63);
  v15 = *(*__swift_project_boxed_opaque_existential_1(v63, v63[3]) + 16);
  v60 = a3;
  v16 = *(*v15 + *MEMORY[0x277D841D0] + 16);
  v17 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v15 + v17));
  sub_220754E98(v15 + v16);
  os_unfair_lock_unlock((v15 + v17));
  v18 = __swift_destroy_boxed_opaque_existential_1(v63);
  v20 = *(a1 + 16);
  if (v20)
  {
    v53 = (v6 + 32);
    v57 = MEMORY[0x277D84F90];
    v21 = (a1 + 40);
    v22 = v6;
    while (1)
    {
      v23 = *(v21 - 1);
      v24 = *v21;
      v62 = 0;
      MEMORY[0x28223BE20](v18, v19);
      *(&v52 - 2) = &v62;
      if ((v24 & 0x1000000000000000) == 0)
      {
        if ((v24 & 0x2000000000000000) != 0)
        {
          v63[0] = v23;
          v63[1] = v24 & 0xFFFFFFFFFFFFFFLL;

          if (v23 <= 0x20u && ((1 << v23) & 0x100003E01) != 0)
          {
            goto LABEL_17;
          }

          v27 = _swift_stdlib_strtod_clocale();
          if (!v27)
          {
            goto LABEL_17;
          }

LABEL_21:
          if (!*v27)
          {
            goto LABEL_22;
          }

          goto LABEL_17;
        }

        if ((v23 & 0x1000000000000000) != 0)
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

          if (v25 <= 0x20 && ((1 << v25) & 0x100003E01) != 0)
          {
            goto LABEL_17;
          }

          v27 = _swift_stdlib_strtod_clocale();
          if (!v27)
          {
            goto LABEL_17;
          }

          goto LABEL_21;
        }
      }

      sub_22089253C();
      if (v61)
      {
LABEL_22:
        v29 = v52;
        sub_2208850EC();

        v30 = *v53;
        (*v53)(v56, v29, v59);
        v31 = v57;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_220587B60(0, v31[2] + 1, 1, v31);
        }

        v33 = v31[2];
        v32 = v31[3];
        if (v33 >= v32 >> 1)
        {
          v31 = sub_220587B60(v32 > 1, v33 + 1, 1, v31);
        }

        v31[2] = v33 + 1;
        v34 = (*(v22 + 80) + 32) & ~*(v22 + 80);
        v57 = v31;
        v18 = v30(v31 + v34 + *(v22 + 72) * v33, v56, v59);
        goto LABEL_18;
      }

LABEL_17:

LABEL_18:
      v21 += 2;
      if (!--v20)
      {
        goto LABEL_30;
      }
    }
  }

  v57 = MEMORY[0x277D84F90];
  v22 = v6;
LABEL_30:
  v35 = sub_220754234(v54, v57, v55);

  v36 = v35[2];
  if (v36)
  {
    v63[0] = MEMORY[0x277D84F90];
    sub_22048EE54(0, v36, 0);
    v37 = v63[0];
    v39 = *(v22 + 16);
    v38 = v22 + 16;
    v40 = *(v38 + 64);
    v55 = v35;
    v41 = v35 + ((v40 + 32) & ~v40);
    v56 = *(v38 + 56);
    v57 = v39;
    v42 = (v38 - 8);
    do
    {
      v43 = v58;
      v44 = v59;
      (v57)(v58, v41, v59);
      sub_2208850FC();
      v45 = sub_22089185C();
      v47 = v46;
      (*v42)(v43, v44);
      v63[0] = v37;
      v49 = *(v37 + 16);
      v48 = *(v37 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_22048EE54((v48 > 1), v49 + 1, 1);
        v37 = v63[0];
      }

      *(v37 + 16) = v49 + 1;
      v50 = v37 + 16 * v49;
      *(v50 + 32) = v45;
      *(v50 + 40) = v47;
      v41 = &v56[v41];
      --v36;
    }

    while (v36);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v37;
}

uint64_t sub_220754098()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  v1 = OBJC_IVAR____TtC8StocksUI27StockChartDescriptorFactory_stock;
  v2 = sub_22088685C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StockChartDescriptorFactory()
{
  result = qword_2812880F8;
  if (!qword_2812880F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220754198()
{
  result = sub_22088685C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_220754234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a3;
  sub_22044D9F8(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v71 - v7;
  v77 = sub_2208853CC();
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v9);
  v73 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_220884BDC();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v11);
  v72 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v71 - v15;
  v17 = sub_22088516C();
  v78 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v71 - v23;
  v25 = sub_2208854FC();
  v26 = *(v25 - 8);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v30, a1, v25, v28);
  v31 = (*(v26 + 88))(v30, v25);
  if (v31 != *MEMORY[0x277D69120])
  {
    if (v31 == *MEMORY[0x277D69128])
    {
      __swift_project_boxed_opaque_existential_1((v79 + 56), *(v79 + 80));
      v47 = 1;
LABEL_8:
      v48 = 0;
      return sub_220883680(v47, v48, a2);
    }

    if (v31 == *MEMORY[0x277D69138])
    {
      __swift_project_boxed_opaque_existential_1((v79 + 56), *(v79 + 80));
      v47 = 0x8000000000000001;
      v48 = 7;
      return sub_220883680(v47, v48, a2);
    }

    if (v31 == *MEMORY[0x277D69110] || v31 == *MEMORY[0x277D69158])
    {
      __swift_project_boxed_opaque_existential_1((v79 + 56), *(v79 + 80));
      v47 = 2;
      goto LABEL_8;
    }

    if (v31 == *MEMORY[0x277D69100])
    {
      __swift_project_boxed_opaque_existential_1((v79 + 56), *(v79 + 80));
      v47 = 0x8000000000000002;
      v48 = 2;
      return sub_220883680(v47, v48, a2);
    }

    if (v31 == *MEMORY[0x277D69130])
    {
      __swift_project_boxed_opaque_existential_1((v79 + 56), *(v79 + 80));
      v47 = 0x8000000000000002;
      v48 = 4;
      return sub_220883680(v47, v48, a2);
    }

    if (v31 == *MEMORY[0x277D69148])
    {
      __swift_project_boxed_opaque_existential_1((v79 + 56), *(v79 + 80));
      v47 = 0x8000000000000002;
      v48 = 6;
      return sub_220883680(v47, v48, a2);
    }

    if (v31 == *MEMORY[0x277D69150])
    {
      __swift_project_boxed_opaque_existential_1((v79 + 56), *(v79 + 80));
      result = sub_220883680(3, 0, a2);
      if (result[2] < 6uLL)
      {
        return result;
      }

      v57 = v78;
      v58 = result;
      (*(v78 + 16))(v8, result + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v17);
      (*(v57 + 56))(v8, 0, 1, v17);
      result = sub_22047EB44(v8, &qword_281299480, MEMORY[0x277CC9578]);
      v59 = v58[2];
      if (v59)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v80 = v58;
        if (!isUniquelyReferenced_nonNull_native || (v59 - 1) > v58[3] >> 1)
        {
          v58 = sub_220587B60(isUniquelyReferenced_nonNull_native, v59, 1, v58);
          v80 = v58;
        }

        sub_220662D10(0, 1, 0);
        return v58;
      }

      __break(1u);
    }

    else
    {
      if (v31 != *MEMORY[0x277D69140] && v31 != *MEMORY[0x277D69118])
      {
        (*(v26 + 8))(v30, v25);
        return MEMORY[0x277D84F90];
      }

      if (!*(a2 + 16) || (v61 = v73, sub_22088538C(), sub_22044D9F8(0, &qword_28127E1C8, MEMORY[0x277CC99D0], MEMORY[0x277D84560]), v62 = sub_2208853AC(), v63 = *(v62 - 8), v64 = (*(v63 + 80) + 32) & ~*(v63 + 80), v65 = swift_allocObject(), *(v65 + 16) = xmmword_220899360, (*(v63 + 104))(v65 + v64, *MEMORY[0x277CC9988], v62), sub_2207E1070(v65), swift_setDeallocating(), (*(v63 + 8))(v65 + v64, v62), swift_deallocClassInstance(), v66 = v72, sub_22088530C(), , (*(v75 + 8))(v61, v77), v67 = sub_220884B9C(), LOBYTE(v63) = v68, result = (*(v74 + 8))(v66, v76), (v63 & 1) != 0))
      {
        __swift_project_boxed_opaque_existential_1((v79 + 56), *(v79 + 80));
        return sub_220883680(0x8000000000000003, 3, a2);
      }

      v69 = ceilf(v67 / 5.0);
      if ((LODWORD(v69) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        if (v69 > -9.2234e18)
        {
          if (v69 < 9.2234e18)
          {
            if (v69 <= 1)
            {
              v70 = 1;
            }

            else
            {
              v70 = v69;
            }

            __swift_project_boxed_opaque_existential_1((v79 + 56), *(v79 + 80));
            v47 = 0x8000000000000003;
            v48 = v70;
            return sub_220883680(v47, v48, a2);
          }

LABEL_52:
          __break(1u);
          return result;
        }

LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

  v32 = *(a2 + 16);
  if (!v32)
  {
    return MEMORY[0x277D84F90];
  }

  v33 = v78 + 16;
  v34 = *(v78 + 16);
  v35 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v72 = a2;
  v36 = a2 + v35;
  v34(v24, a2 + v35, v17);
  v34(v20, v36 + *(v33 + 56) * (v32 - 1), v17);
  v37 = [objc_opt_self() currentCalendar];
  v38 = v73;
  sub_22088534C();

  sub_22044D9F8(0, &qword_28127E1C8, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v39 = sub_2208853AC();
  v40 = *(v39 - 8);
  v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_220899360;
  (*(v40 + 104))(v42 + v41, *MEMORY[0x277CC9980], v39);
  sub_2207E1070(v42);
  swift_setDeallocating();
  (*(v40 + 8))(v42 + v41, v39);
  swift_deallocClassInstance();
  sub_22088530C();

  (*(v75 + 8))(v38, v77);
  v43 = sub_220884B8C();
  LOBYTE(v40) = v44;
  (*(v74 + 8))(v16, v76);
  if (v40)
  {
    v45 = *(v78 + 8);
    v45(v20, v17);
    v45(v24, v17);
    return MEMORY[0x277D84F90];
  }

  v49 = sub_220754DAC(v43);
  v51 = v50;
  __swift_project_boxed_opaque_existential_1((v79 + 56), *(v79 + 80));
  v52 = sub_220883680(v49, v51, v72);
  v53 = v52[2];
  if (v53)
  {
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v52;
    v55 = v78;
    if (!v54 || (v53 - 1) > v52[3] >> 1)
    {
      v52 = sub_220587B60(v54, v53, 1, v52);
      v80 = v52;
    }

    sub_220662D10(0, 1, 0);
  }

  else
  {
    v55 = v78;
  }

  v56 = *(v55 + 8);
  v56(v20, v17);
  v56(v24, v17);
  return v52;
}

uint64_t sub_220754DAC(uint64_t result)
{
  if (result < 7)
  {
    return 0;
  }

  v1 = ceilf(result / 5.0);
  if (v1 == INFINITY)
  {
    __break(1u);
  }

  else if (v1 > -9.2234e18)
  {
    if (v1 < 9.2234e18)
    {
      return 0x8000000000000000;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

_BYTE *sub_220754E1C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

_BYTE *sub_220754EB4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_220754F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v76 = a2;
  v4 = sub_22088516C();
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v79 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v80 = &v69 - v9;
  sub_22044D9F8(0, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v69 - v12;
  v83 = sub_22088676C();
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83, v14);
  v75 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_2208865FC();
  v16 = *(v84 - 8);
  MEMORY[0x28223BE20](v84, v17);
  v74 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v73 = &v69 - v21;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v69 - v24;
  MEMORY[0x28223BE20](v26, v27);
  v82 = &v69 - v28;
  v29 = sub_2208854FC();
  v30 = *(v29 - 8);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v34 = &v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v34, a3, v29, v32);
  v35 = (*(v30 + 88))(v34, v29);
  v36 = *MEMORY[0x277D69120];
  (*(v30 + 8))(v34, v29);
  v37 = sub_22088662C();
  v38 = v37;
  if (v35 != v36)
  {
    return v38;
  }

  v39 = *(v37 + 16);
  if (!v39)
  {

    return sub_22088662C();
  }

  v40 = v16;
  v72 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v71 = *(v16 + 72);
  v41 = v84;
  (*(v16 + 16))(v25, v37 + v72 + v71 * (v39 - 1), v84);

  v42 = v82;
  v70 = *(v16 + 32);
  v70(v82, v25, v41);
  v38 = sub_22088662C();
  sub_2204B1CA8(v76, v13);
  v43 = v81;
  v44 = v83;
  if ((*(v81 + 48))(v13, 1, v83) == 1)
  {
    sub_22047EB44(v13, &qword_2812990C0, MEMORY[0x277D697F8]);
    v45 = v78;
    goto LABEL_19;
  }

  v76 = v16 + 32;
  v46 = v75;
  (*(v43 + 32))(v75, v13, v44);
  v47 = v80;
  v48 = v43;
  sub_2208865BC();
  v49 = v79;
  sub_2208866FC();
  v50 = sub_2208850BC();
  v51 = v42;
  v52 = *(v77 + 8);
  v53 = v49;
  v45 = v78;
  v52(v53, v78);
  v52(v47, v45);
  if (v50)
  {
    v54 = COERCE_DOUBLE(sub_2208865DC());
    v56 = v55;
    v57 = COERCE_DOUBLE(sub_22088675C());
    if (v56)
    {
      v41 = v84;
      if ((v58 & 1) == 0)
      {
LABEL_14:
        v59 = v79;
        sub_2208865BC();
        sub_22088508C();
        v52(v59, v45);
        v60 = v75;
        sub_22088675C();
        v61 = v73;
        sub_2208865CC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_220587B2C(0, *(v38 + 2) + 1, 1, v38);
        }

        v63 = *(v38 + 2);
        v62 = *(v38 + 3);
        v42 = v82;
        if (v63 >= v62 >> 1)
        {
          v38 = sub_220587B2C(v62 > 1, v63 + 1, 1, v38);
        }

        (*(v81 + 8))(v60, v83);
        *(v38 + 2) = v63 + 1;
        v70(&v38[v72 + v63 * v71], v61, v41);
        goto LABEL_19;
      }
    }

    else
    {
      v41 = v84;
      if ((v58 & 1) != 0 || v54 != v57)
      {
        goto LABEL_14;
      }
    }

    (*(v81 + 8))(v75, v83);
    v42 = v82;
  }

  else
  {
    (*(v48 + 8))(v46, v83);
    v42 = v51;
    v41 = v84;
  }

LABEL_19:
  if (*(v38 + 2) == 1)
  {
    v64 = v79;
    sub_2208865BC();
    sub_22088508C();
    (*(v77 + 8))(v64, v45);
    sub_2208865DC();
    v65 = v74;
    sub_2208865CC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_220587B2C(0, *(v38 + 2) + 1, 1, v38);
    }

    v67 = *(v38 + 2);
    v66 = *(v38 + 3);
    if (v67 >= v66 >> 1)
    {
      v38 = sub_220587B2C(v66 > 1, v67 + 1, 1, v38);
    }

    (*(v40 + 8))(v42, v41);
    *(v38 + 2) = v67 + 1;
    v70(&v38[v72 + v67 * v71], v65, v41);
  }

  else
  {
    (*(v40 + 8))(v42, v41);
  }

  return v38;
}

uint64_t sub_2207557B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088665C();
  v69 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v66 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D697C0];
  sub_2204541E0(0, &unk_2812990E0, MEMORY[0x277D697C0]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v67 = &v60 - v10;
  sub_220755F20(0, &qword_2812990D8, &unk_2812990E0, v7);
  v12 = v11;
  MEMORY[0x28223BE20](v11, v13);
  v68 = &v60 - v14;
  v15 = sub_22088676C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x277D697F8];
  sub_2204541E0(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v60 - v23;
  sub_220755F20(0, &qword_2812990A8, &qword_2812990C0, v20);
  v26 = v25;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v60 - v29;
  if ((MEMORY[0x223D7E940](a1, a2, v28) & 1) == 0)
  {
    return 0;
  }

  v61 = v12;
  v63 = v4;
  v62 = type metadata accessor for StockFeedMastheadModel();
  v31 = *(v62 + 20);
  v32 = a1;
  v33 = a2;
  v34 = *(v26 + 48);
  v35 = MEMORY[0x277D697F8];
  v64 = v32;
  sub_2204B2BEC(v32 + v31, v30, &qword_2812990C0, MEMORY[0x277D697F8]);
  v65 = v33;
  sub_2204B2BEC(v33 + v31, &v30[v34], &qword_2812990C0, v35);
  v36 = *(v16 + 48);
  if (v36(v30, 1, v15) == 1)
  {
    if (v36(&v30[v34], 1, v15) == 1)
    {
      sub_220755F84(v30, &qword_2812990C0, MEMORY[0x277D697F8]);
      goto LABEL_9;
    }

LABEL_7:
    v37 = &qword_2812990A8;
    v38 = &qword_2812990C0;
    v39 = MEMORY[0x277D697F8];
    v40 = v30;
LABEL_15:
    sub_220755FE0(v40, v37, v38, v39);
    return 0;
  }

  sub_2204B2BEC(v30, v24, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v36(&v30[v34], 1, v15) == 1)
  {
    (*(v16 + 8))(v24, v15);
    goto LABEL_7;
  }

  (*(v16 + 32))(v19, &v30[v34], v15);
  sub_22075603C(&qword_2812990C8, MEMORY[0x277D697F8]);
  v41 = sub_2208912FC();
  v42 = *(v16 + 8);
  v42(v19, v15);
  v42(v24, v15);
  sub_220755F84(v30, &qword_2812990C0, MEMORY[0x277D697F8]);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v43 = v62;
  v44 = *(v62 + 24);
  v45 = *(v61 + 48);
  v46 = MEMORY[0x277D697C0];
  v47 = v64;
  v48 = v68;
  sub_2204B2BEC(v64 + v44, v68, &unk_2812990E0, MEMORY[0x277D697C0]);
  v49 = v65 + v44;
  v50 = v65;
  sub_2204B2BEC(v49, v48 + v45, &unk_2812990E0, v46);
  v51 = v69;
  v52 = *(v69 + 48);
  v53 = v63;
  if (v52(v48, 1, v63) != 1)
  {
    v54 = v67;
    sub_2204B2BEC(v48, v67, &unk_2812990E0, MEMORY[0x277D697C0]);
    if (v52(v48 + v45, 1, v53) != 1)
    {
      v56 = v48 + v45;
      v57 = v66;
      (*(v51 + 32))(v66, v56, v53);
      sub_22075603C(&qword_2812990F0, MEMORY[0x277D697C0]);
      v58 = sub_2208912FC();
      v59 = *(v51 + 8);
      v59(v57, v53);
      v59(v54, v53);
      sub_220755F84(v48, &unk_2812990E0, MEMORY[0x277D697C0]);
      if ((v58 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_19;
    }

    (*(v51 + 8))(v54, v53);
    goto LABEL_14;
  }

  if (v52(v48 + v45, 1, v53) != 1)
  {
LABEL_14:
    v37 = &qword_2812990D8;
    v38 = &unk_2812990E0;
    v39 = MEMORY[0x277D697C0];
    v40 = v48;
    goto LABEL_15;
  }

  sub_220755F84(v48, &unk_2812990E0, MEMORY[0x277D697C0]);
LABEL_19:
  if (sub_220656DB4(v47 + *(v43 + 28), v50 + *(v43 + 28)))
  {
    return (*(v47 + *(v43 + 32)) == 2) ^ (*(v50 + *(v43 + 32)) != 2);
  }

  return 0;
}

void sub_220755F20(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2204541E0(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_220755F84(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2204541E0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_220755FE0(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_220755F20(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_22075603C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220756084@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  sub_22044CD9C();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v36 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220452A8C();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207573B8();
  v11 = v10;
  v35 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ForYouFeedGroupConfig();
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220757414();
  v19 = v38;
  sub_220892A4C();
  if (v19)
  {
    v22 = a1;
  }

  else
  {
    v38 = v18;
    v20 = v35;
    v21 = v36;
    sub_220757468();
    sub_22089279C();
    v28 = v14;
    v29 = v11;
    if (v37[0])
    {
      sub_22046DA2C(a1, v37);
      type metadata accessor for CuratedForYouFeedGroupConfigData();
      sub_22050293C(&qword_281284728, type metadata accessor for CuratedForYouFeedGroupConfigData);
      sub_22050293C(&qword_281284730, type metadata accessor for CuratedForYouFeedGroupConfigData);
      sub_22088F49C();
      (*(v20 + 8))(v28, v29);
      v25 = a1;
      v26 = v38;
      (*(v32 + 32))(v38, v21, v33);
      v27 = v34;
    }

    else
    {
      v25 = a1;
      sub_22046DA2C(a1, v37);
      type metadata accessor for StockForYouFeedGroupConfigData();
      sub_22050293C(&qword_281285558, type metadata accessor for StockForYouFeedGroupConfigData);
      sub_22050293C(&qword_281285560, type metadata accessor for StockForYouFeedGroupConfigData);
      v24 = v9;
      sub_22088F49C();
      v27 = v34;
      (*(v20 + 8))(v28, v29);
      v26 = v38;
      (*(v30 + 32))(v38, v24, v31);
    }

    swift_storeEnumTagMultiPayload();
    sub_2207574BC(v26, v27);
    v22 = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_22075654C(uint64_t a1)
{
  v19[1] = a1;
  sub_22044CD9C();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220452A8C();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ForYouFeedGroupConfig();
  MEMORY[0x28223BE20](v14, v15);
  v17 = v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052C670(v1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v7, v17, v3);
    sub_22088F4BC();
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    sub_22088F4BC();
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_2207567A0()
{
  sub_2208929EC();
  sub_22089146C();
  return sub_220892A2C();
}

uint64_t sub_2207567EC()
{
  sub_2208929EC();
  sub_22089146C();
  return sub_220892A2C();
}

uint64_t sub_220756834@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_22089270C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_220756888@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_22089270C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2207568E0(uint64_t a1)
{
  v2 = sub_220757414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22075691C(uint64_t a1)
{
  v2 = sub_220757414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220756958(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64657461727563;
  }

  else
  {
    v3 = 0x6B636F7473;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x64657461727563;
  }

  else
  {
    v5 = 0x6B636F7473;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2208928BC();
  }

  return v8 & 1;
}

uint64_t sub_2207569FC()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_220756A7C()
{
  sub_22089146C();
}

uint64_t sub_220756AE8()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_220756B64@<X0>(char *a1@<X8>)
{
  v2 = sub_22089270C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_220756BC4(uint64_t *a1@<X8>)
{
  v2 = 0x6B636F7473;
  if (*v1)
  {
    v2 = 0x64657461727563;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_220756D30(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v22 = a3;
  sub_22044CD9C();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220452A8C();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052C670(v3, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v9, v19, v5);
    v22(v5);
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    (*(v12 + 32))(v15, v19, v11);
    v22(v11);
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_220756F90(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = v3;
  sub_22044CD9C();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220452A8C();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052C670(v5, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v11, v21, v7);
    v22 = a3(v7);
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    v22 = a3(v13);
    (*(v14 + 8))(v17, v13);
  }

  return v22;
}

uint64_t sub_220757214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22050293C(&qword_28128DF98, type metadata accessor for ForYouFeedGroupConfig);

  return MEMORY[0x282190458](a1, a2, a3, v6);
}

void sub_2207573B8()
{
  if (!qword_28127E248)
  {
    sub_220757414();
    v0 = sub_2208927BC();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E248);
    }
  }
}

unint64_t sub_220757414()
{
  result = qword_28128DFC0;
  if (!qword_28128DFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128DFC0);
  }

  return result;
}

unint64_t sub_220757468()
{
  result = qword_28128DFA0;
  if (!qword_28128DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128DFA0);
  }

  return result;
}

uint64_t sub_2207574BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouFeedGroupConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_220757544()
{
  result = qword_27CF59558;
  if (!qword_27CF59558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59558);
  }

  return result;
}

unint64_t sub_22075759C()
{
  result = qword_27CF59560;
  if (!qword_27CF59560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59560);
  }

  return result;
}

unint64_t sub_2207575F4()
{
  result = qword_28128DFB0;
  if (!qword_28128DFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128DFB0);
  }

  return result;
}

unint64_t sub_22075764C()
{
  result = qword_28128DFB8;
  if (!qword_28128DFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128DFB8);
  }

  return result;
}

unint64_t sub_2207576A0()
{
  result = qword_28128DFA8;
  if (!qword_28128DFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128DFA8);
  }

  return result;
}

void sub_2207576F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27[1] = a2;
  v28 = sub_2208897CC();
  v27[0] = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220757A94();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_220886E8C();
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v19 + 16))(v27 - v18, a1, v15, v17);
  if (swift_dynamicCast())
  {
    (*(v11 + 8))(v14, v10);
    v20 = sub_220886E6C();
    v21 = sub_2208871CC();
    v23 = v22;

    if (!v3)
    {
      sub_220757B28(&qword_27CF59568, MEMORY[0x277D687C0]);
      v24 = v28;
      sub_22088827C();
      sub_220457EE8(v21, v23);
      (*(v27[0] + 32))(a3, v8, v24);
      v25 = type metadata accessor for EngagementEvent();
      swift_storeEnumTagMultiPayload();
      (*(*(v25 - 8) + 56))(a3, 0, 1, v25);
    }
  }

  else
  {
    v26 = type metadata accessor for EngagementEvent();
    (*(*(v26 - 8) + 56))(a3, 1, 1, v26);
  }
}

void sub_220757A94()
{
  if (!qword_281298C48)
  {
    sub_2208897DC();
    sub_220757B28(&qword_281298460, MEMORY[0x277D687D0]);
    v0 = sub_220886E8C();
    if (!v1)
    {
      atomic_store(v0, &qword_281298C48);
    }
  }
}

uint64_t sub_220757B28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220757B70(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_2206C1FA0(sub_2204CB288, v4);
}

void sub_220757C90(void *a1, uint64_t a2, uint64_t a3)
{
  v70 = a3;
  v69 = a2;
  v4 = sub_22088F11C();
  v76 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v73 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_22088F14C();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75, v7);
  v72 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_22088F17C();
  v9 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v10);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v77 = &v63 - v15;
  v68 = v16;
  MEMORY[0x28223BE20](v17, v18);
  v78 = &v63 - v19;
  v64 = sub_22088CC6C();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v20);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22089132C();
  v24 = [a1 objectForKey_];

  if (v24)
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
    sub_2204A62A4(&v84, &aBlock);
    type metadata accessor for ForYouFeedViewController();
    swift_dynamicCast();
    v25 = v79;
    v26 = sub_22089132C();
    v27 = [a1 objectForKey_];

    if (v27)
    {
      sub_2208923BC();
      swift_unknownObjectRelease();
    }

    else
    {
      v84 = 0u;
      v85 = 0u;
    }

    aBlock = v84;
    v81 = v85;
    v67 = v4;
    v66 = v12;
    if (!*(&v85 + 1))
    {
      sub_22056D130(&aBlock);
      goto LABEL_11;
    }

    sub_22044D56C(0, &qword_27CF56C10);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_11;
    }

    v28 = v79;
    v29 = [v79 isCollapsed];

    if (!v29)
    {
      goto LABEL_11;
    }

    v30 = sub_22089132C();
    v31 = [a1 objectForKey_];

    if (v31)
    {
      sub_2208923BC();
      swift_unknownObjectRelease();
      sub_2204A62A4(&v84, &aBlock);
      sub_22056D25C();
      swift_dynamicCast();
      v32 = v79;
      swift_getObjectType();
      v33 = v63;
      v34 = v64;
      (*(v63 + 104))(v22, *MEMORY[0x277D6E258], v64);
      sub_22088D08C();

      (*(v33 + 8))(v22, v34);
LABEL_11:
      v65 = v25;
      sub_22088C71C();
      v35 = sub_22088BFCC();

      [v35 bounds];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;

      v86.origin.x = v37;
      v86.origin.y = v39;
      v86.size.width = v41;
      v86.size.height = v43;
      v44 = CGRectGetHeight(v86) * 20.0;
      sub_22088C71C();
      v63 = sub_22088BFCC();

      v45 = v77;
      sub_22088F16C();
      v46 = v78;
      sub_22088F18C();
      v47 = *(v9 + 8);
      v48 = v71;
      v47(v45, v71);
      v64 = v9 + 8;
      v49 = swift_allocObject();
      v50 = v70;
      *(v49 + 16) = v69;
      *(v49 + 24) = v50;
      sub_22044D56C(0, &qword_28127E7C0);

      v70 = sub_220891D0C();
      v51 = v66;
      sub_22088F16C();
      sub_22088F18C();
      v47(v51, v48);
      v52 = v47;
      (*(v9 + 16))(v51, v46, v48);
      v53 = (*(v9 + 80) + 56) & ~*(v9 + 80);
      v54 = swift_allocObject();
      *(v54 + 16) = v44;
      *(v54 + 24) = 0;
      v55 = v63;
      *(v54 + 32) = v63;
      *(v54 + 40) = sub_2207585CC;
      *(v54 + 48) = v49;
      (*(v9 + 32))(v54 + v53, v51, v48);
      v82 = sub_22056D194;
      v83 = v54;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v81 = sub_2204C35E8;
      *(&v81 + 1) = &block_descriptor_37;
      v56 = _Block_copy(&aBlock);
      v57 = v55;

      v58 = v72;
      sub_22088F13C();
      *&aBlock = MEMORY[0x277D84F90];
      sub_22046275C(&qword_281296CA0, MEMORY[0x277D85198]);
      sub_22056D204();
      sub_22046275C(&qword_28127EA50, sub_22056D204);
      v59 = v73;
      v60 = v67;
      sub_2208923FC();
      v61 = v77;
      v62 = v70;
      MEMORY[0x223D89E80](v77, v58, v59, v56);
      _Block_release(v56);

      (*(v76 + 8))(v59, v60);
      (*(v74 + 8))(v58, v75);
      v52(v61, v48);
      v52(v78, v48);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
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

uint64_t sub_220758620(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_220758668(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2207586CC(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v285 = a3;
  v286 = a2;
  v293 = a1;
  v284 = sub_22088B64C();
  v283 = *(v284 - 8);
  MEMORY[0x28223BE20](v284, v3);
  v287 = &v268 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22075B8C4(0, &qword_281297850, MEMORY[0x277D6DF88]);
  v282 = v5;
  v281 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v280 = &v268 - v7;
  v316 = sub_22088F23C();
  v270 = *(v316 - 8);
  MEMORY[0x28223BE20](v316, v8);
  v310 = &v268 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088698C();
  v11 = *(v10 - 8);
  v337 = v10;
  v338 = v11;
  MEMORY[0x28223BE20](v10, v12);
  v329 = (&v268 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14, v15);
  v328 = &v268 - v16;
  v278 = type metadata accessor for NewsStockFeedGroup();
  MEMORY[0x28223BE20](v278, v17);
  v331 = (&v268 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19, v20);
  v277 = (&v268 - v21);
  MEMORY[0x28223BE20](v22, v23);
  v330 = (&v268 - v24);
  v25 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v25, v26);
  v313 = &v268 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D328();
  v339 = *(v28 - 8);
  v340 = v28;
  MEMORY[0x28223BE20](v28, v29);
  v336 = &v268 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v335 = &v268 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v301 = &v268 - v36;
  sub_22055D524();
  MEMORY[0x28223BE20](v37 - 8, v38);
  *&v292 = &v268 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v41);
  v291 = &v268 - v42;
  MEMORY[0x28223BE20](v43, v44);
  v312 = &v268 - v45;
  v294 = type metadata accessor for NewsPlacardStockFeedGroup();
  MEMORY[0x28223BE20](v294, v46);
  v272 = &v268 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48, v49);
  v303 = &v268 - v50;
  MEMORY[0x28223BE20](v51, v52);
  v271 = &v268 - v53;
  MEMORY[0x28223BE20](v54, v55);
  v302 = (&v268 - v56);
  v319 = sub_22088FFFC();
  v276 = *(v319 - 8);
  MEMORY[0x28223BE20](v319, v57);
  v333 = &v268 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59, v60);
  v332 = &v268 - v61;
  MEMORY[0x28223BE20](v62, v63);
  v274 = &v268 - v64;
  v314 = type metadata accessor for StockFeedGroup();
  v317 = *(v314 - 8);
  MEMORY[0x28223BE20](v314, v65);
  v300 = (&v268 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v67, v68);
  v307 = (&v268 - v69);
  MEMORY[0x28223BE20](v70, v71);
  v309 = &v268 - v72;
  MEMORY[0x28223BE20](v73, v74);
  v299 = (&v268 - v75);
  MEMORY[0x28223BE20](v76, v77);
  v306 = (&v268 - v78);
  MEMORY[0x28223BE20](v79, v80);
  v308 = &v268 - v81;
  MEMORY[0x28223BE20](v82, v83);
  v269 = &v268 - v84;
  MEMORY[0x28223BE20](v85, v86);
  v273 = &v268 - v87;
  v327 = type metadata accessor for StockFeedSectionDescriptor();
  MEMORY[0x28223BE20](v327 - 8, v88);
  v297 = (&v268 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v90, v91);
  v298 = (&v268 - v92);
  MEMORY[0x28223BE20](v93, v94);
  v296 = (&v268 - v95);
  MEMORY[0x28223BE20](v96, v97);
  *&v295 = &v268 - v98;
  MEMORY[0x28223BE20](v99, v100);
  v311 = &v268 - v101;
  MEMORY[0x28223BE20](v102, v103);
  v326 = &v268 - v104;
  sub_22055CE80(0);
  v334 = v105;
  v315 = *(v105 - 8);
  MEMORY[0x28223BE20](v105, v106);
  v305 = &v268 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v108, v109);
  v304 = &v268 - v110;
  MEMORY[0x28223BE20](v111, v112);
  v275 = &v268 - v113;
  MEMORY[0x28223BE20](v114, v115);
  v320 = &v268 - v116;
  MEMORY[0x28223BE20](v117, v118);
  v120 = &v268 - v119;
  sub_22055D1DC();
  v122 = v121 - 8;
  MEMORY[0x28223BE20](v121, v123);
  v125 = &v268 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220587530();
  MEMORY[0x28223BE20](v126 - 8, v127);
  v290 = &v268 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_22088519C();
  v130 = *(v129 - 8);
  MEMORY[0x28223BE20](v129, v131);
  v133 = &v268 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CF9C(0);
  v135 = v134;
  v136 = *(v134 - 8);
  MEMORY[0x28223BE20](v134, v137);
  v139 = &v268 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v140, v141);
  v322 = &v268 - v142;
  sub_22088518C();
  v289 = sub_22088517C();
  v288 = v143;
  (*(v130 + 8))(v133, v129);
  v279 = v136;
  (*(v136 + 16))(v139, v293, v135);
  sub_220444524(&qword_281296F28, sub_22055CF9C);
  sub_2208915BC();
  v144 = *(v122 + 44);
  sub_220444524(&qword_281296F20, sub_22055CF9C);
  sub_22089199C();
  v145 = MEMORY[0x277D84F90];
  v146 = *&v125[v144] == v341;
  v325 = v25;
  v324 = v135;
  if (!v146)
  {
    v193 = (v315 + 16);
    v323 = (v315 + 8);
    v318 = (v315 + 32);
    do
    {
      v194 = sub_2208919BC();
      (*v193)(v120);
      v194(&v341, 0);
      sub_2208919AC();
      sub_22088B2AC();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 3)
      {
        (*v323)(v120, v334);
      }

      else if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          goto LABEL_43;
        }

        (*v323)(v120, v334);
        sub_22075B9B8(v326, type metadata accessor for StockFeedSectionDescriptor);
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          sub_22075B9B8(v326, type metadata accessor for StockFeedMastheadModel);
LABEL_43:
          v196 = *v318;
          (*v318)(v320, v120, v334);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v345 = v145;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22070BF64(0, *(v145 + 16) + 1, 1);
            v145 = v345;
          }

          v199 = *(v145 + 16);
          v198 = *(v145 + 24);
          if (v199 >= v198 >> 1)
          {
            sub_22070BF64(v198 > 1, v199 + 1, 1);
            v145 = v345;
          }

          *(v145 + 16) = v199 + 1;
          v196(v145 + ((*(v315 + 80) + 32) & ~*(v315 + 80)) + *(v315 + 72) * v199, v320, v334);
          goto LABEL_35;
        }

        (*v323)(v120, v334);
        v200 = v326;

        sub_220459628();
        sub_22075B9B8(v200 + *(v201 + 64), sub_2204595F4);
      }

LABEL_35:
      sub_22089199C();
    }

    while (*&v125[v144] != v341);
  }

  sub_22075B9B8(v125, sub_22055D1DC);
  v147 = sub_220444524(&qword_281297DF8, sub_22055CE80);
  v148 = sub_220444524(&qword_281297E00, sub_22055CE80);
  v149 = v334;
  MEMORY[0x223D80A20](v145, v334, v147, v148);
  v150 = sub_220444524(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
  v151 = sub_220444524(&qword_281293DD0, type metadata accessor for StockFeedModel);
  v323 = v150;
  v326 = v151;
  sub_22088E6EC();
  v152 = v321[2];
  v153 = v152 >> 61;
  if ((v152 >> 61) <= 1)
  {
    if (!v153)
    {
      sub_2206009C4();
      v203 = v202;
      v204 = swift_projectBox();
      v205 = *(v204 + *(v203 + 48));
      v206 = v273;
      sub_22075BA18(v204, v273, type metadata accessor for StockFeedGroup);
      __swift_project_boxed_opaque_existential_1(v321 + 3, v321[6]);
      type metadata accessor for StockFeedServiceConfig();
      sub_220444524(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);

      v207 = v274;
      sub_22088F6CC();
      v208 = v275;
      sub_22072933C(v206, v207, v275);
      (*(v276 + 8))(v207, v319);
      sub_22088E72C();
      v209 = *(v315 + 8);
      v209(v208, v149);
      sub_2208544BC(v205, v208);
      sub_22088E72C();
      v209(v208, v149);
      sub_22088FA1C();
      sub_22088FA0C();
      v210 = sub_22088F9EC();

      v211 = 0;
      if (v210)
      {
        v211 = sub_22088F45C();
      }

      else
      {
        v342 = 0;
        v343 = 0;
      }

      v261 = v287;
      v341 = v210;
      v344 = v211;
      v262 = v324;
      v263 = v322;
      sub_22088E7BC();

      sub_22075B9B8(v273, type metadata accessor for StockFeedGroup);
      goto LABEL_99;
    }

    v220 = *((v152 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v329 = *((v152 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v320 = v220;
    v221 = v308;
    v318 = *(v220 + 2);
    if (v318)
    {
      v155 = 0;
      v309 = &v320[(*(v317 + 80) + 32) & ~*(v317 + 80)];
      v303 = (v270 + 32);
      v300 = (v270 + 16);
      v298 = (v270 + 8);
      v336 = v338 + 16;
      v222 = (v338 + 8);
      v333 = (v339 + 32);
      v297 = (v339 + 8);
      v307 = (v276 + 8);
      v305 = (v315 + 8);
      v292 = xmmword_220899360;
      while (v155 < *(v320 + 2))
      {
        v230 = *(v317 + 72);
        v331 = v155;
        sub_22075BA18(&v309[v230 * v155], v221, type metadata accessor for StockFeedGroup);
        v231 = __swift_project_boxed_opaque_existential_1(v321 + 3, v321[6]);
        type metadata accessor for StockFeedServiceConfig();
        sub_220444524(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);
        sub_22088F6CC();
        v155 = *v231;
        v232 = v306;
        sub_22075BA18(v221, v306, type metadata accessor for StockFeedGroup);
        v233 = swift_getEnumCaseMultiPayload();
        if (v233)
        {
          if (v233 == 1)
          {
            sub_22060095C(v232, v330, type metadata accessor for NewsStockFeedGroup);
            sub_22075BA18(v221, v299, type metadata accessor for StockFeedGroup);
            v234 = swift_getEnumCaseMultiPayload();
            if (v234)
            {
              v235 = v337;
              v236 = v328;
              if (v234 == 1)
              {
                v237 = v277;
                sub_22060095C(v299, v277, type metadata accessor for NewsStockFeedGroup);
                sub_220459628();
                v239 = *(v238 + 64);
                v240 = v237[1];
                v241 = v295;
                *v295 = *v237;
                *(v241 + 8) = v240;
                v242 = *(v278 + 32);
                *(v241 + 16) = *(v237 + *(v278 + 28));
                sub_22075BA18(v237 + v242, v241 + v239, sub_2204595F4);
                v243 = v241;

                sub_22075B9B8(v237, type metadata accessor for NewsStockFeedGroup);
              }

              else
              {
                v243 = v295;
                (*v303)(v295, v299, v316);
              }
            }

            else
            {
              v250 = v271;
              sub_22060095C(v299, v271, type metadata accessor for NewsPlacardStockFeedGroup);
              sub_22075B9B8(v250, type metadata accessor for NewsPlacardStockFeedGroup);
              v235 = v337;
              v236 = v328;
              v243 = v295;
            }

            swift_storeEnumTagMultiPayload();
            sub_22075BA18(v243, v296, type metadata accessor for StockFeedSectionDescriptor);
            v150 = v330[2];
            v145 = *(v150 + 16);
            if (v145)
            {
              v341 = MEMORY[0x277D84F90];
              sub_22070BC24(0, v145, 0);
              v251 = 0;
              v252 = v341;
              v253 = v150 + ((*(v338 + 80) + 32) & ~*(v338 + 80));
              while (v251 < *(v150 + 16))
              {
                (*(v338 + 16))(v236, v253 + *(v338 + 72) * v251, v235);
                sub_22072A47C(v236, v332, v330, v155, v335);
                (*v222)(v236, v235);
                v341 = v252;
                v255 = *(v252 + 16);
                v254 = *(v252 + 24);
                if (v255 >= v254 >> 1)
                {
                  sub_22070BC24(v254 > 1, v255 + 1, 1);
                  v252 = v341;
                }

                ++v251;
                *(v252 + 16) = v255 + 1;
                (*(v339 + 32))(v252 + ((*(v339 + 80) + 32) & ~*(v339 + 80)) + *(v339 + 72) * v255, v335, v340);
                v235 = v337;
                v236 = v328;
                if (v145 == v251)
                {
                  goto LABEL_84;
                }
              }

LABEL_101:
              __break(1u);
              goto LABEL_102;
            }

            v252 = MEMORY[0x277D84F90];
LABEL_84:
            v256 = sub_220444524(&qword_281297FB8, sub_22055D328);
            v257 = sub_220444524(&qword_281297FC0, sub_22055D328);
            v150 = v291;
            MEMORY[0x223D80A20](v252, v340, v256, v257);
            v145 = v304;
            sub_22088B29C();
            sub_22075B9B8(v295, type metadata accessor for StockFeedSectionDescriptor);
            sub_22075B9B8(v330, type metadata accessor for NewsStockFeedGroup);
            v149 = v334;
            v221 = v308;
          }

          else
          {
            v223 = v310;
            v224 = v232;
            v225 = v316;
            (*v303)(v310, v224, v316);
            (*v300)(v311, v223, v225);
            swift_storeEnumTagMultiPayload();
            sub_220453D34(0, &qword_28127E100, sub_22055D328, MEMORY[0x277D84560]);
            v226 = swift_allocObject();
            *(v226 + 16) = v292;
            __swift_project_boxed_opaque_existential_1(v155 + 7, v155[10]);
            sub_22088FB2C();
            swift_storeEnumTagMultiPayload();
            sub_22088AD7C();
            v227 = sub_220444524(&qword_281297FB8, sub_22055D328);
            v228 = sub_220444524(&qword_281297FC0, sub_22055D328);
            v150 = v312;
            MEMORY[0x223D80A10](v226, v340, v227, v228);
            v145 = v304;
            v221 = v308;
            sub_22088B29C();
            (*v298)(v310, v316);
            v149 = v334;
          }

          v229 = v331;
        }

        else
        {
          sub_22060095C(v232, v302, type metadata accessor for NewsPlacardStockFeedGroup);
          __swift_project_boxed_opaque_existential_1(v155 + 2, v155[5]);
          if ((sub_220885E7C() & 1) != 0 && *(v302 + *(v294 + 20)) == 1)
          {
            swift_storeEnumTagMultiPayload();
            v244 = sub_220444524(&qword_281297FB8, sub_22055D328);
            v245 = sub_220444524(&qword_281297FC0, sub_22055D328);
            MEMORY[0x223D80A10](MEMORY[0x277D84F90], v340, v244, v245);
            v145 = v304;
            sub_22088B29C();
            v150 = v313;
            swift_storeEnumTagMultiPayload();
            v149 = v334;
            v229 = v331;
          }

          else
          {
            swift_storeEnumTagMultiPayload();
            v246 = sub_220444524(&qword_281297FB8, sub_22055D328);
            v247 = sub_220444524(&qword_281297FC0, sub_22055D328);
            MEMORY[0x223D80A10](MEMORY[0x277D84F90], v340, v246, v247);
            v145 = v304;
            sub_22088B29C();
            v150 = v313;
            v149 = v334;
            v229 = v331;
            if (qword_281299528 != -1)
            {
              swift_once();
            }

            v248 = *algn_2812B6D88;
            *v150 = qword_2812B6D80;
            *(v150 + 8) = v248;
            swift_storeEnumTagMultiPayload();
          }

          v249 = v301;
          sub_22088AD7C();
          sub_22088B30C();
          (*v297)(v249, v340);
          sub_22075B9B8(v302, type metadata accessor for NewsPlacardStockFeedGroup);
          v221 = v308;
        }

        v155 = (v229 + 1);
        (*v307)(v332, v319);
        sub_22088E72C();
        (*v305)(v145, v149);
        sub_22075B9B8(v221, type metadata accessor for StockFeedGroup);
        if (v155 == v318)
        {
          goto LABEL_87;
        }
      }

      goto LABEL_103;
    }

LABEL_87:
    v258 = v275;
    sub_2208544BC(v329, v275);
    sub_22088E72C();
    (*(v315 + 8))(v258, v149);
    sub_22088FA1C();

    sub_22088FA0C();
    type metadata accessor for StockFeedServiceConfig();
    sub_220444524(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);
    v259 = sub_22088F9EC();

    v260 = 0;
    if (v259)
    {
      v260 = sub_22088F45C();
    }

    else
    {
      v342 = 0;
      v343 = 0;
    }

    v261 = v287;
    v341 = v259;
    v344 = v260;
    v262 = v324;
    v263 = v322;
    sub_22088E7BC();
    goto LABEL_98;
  }

  if (v153 == 2)
  {
    sub_2206009C4();
    v212 = swift_projectBox();
    v213 = v269;
    sub_22075BA18(v212, v269, type metadata accessor for StockFeedGroup);
    __swift_project_boxed_opaque_existential_1(v321 + 3, v321[6]);
    type metadata accessor for StockFeedServiceConfig();
    sub_220444524(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);

    v214 = v274;
    sub_22088F6CC();
    v215 = v275;
    sub_22072933C(v213, v214, v275);
    (*(v276 + 8))(v214, v319);
    sub_22088E72C();
    (*(v315 + 8))(v215, v149);
    sub_22088FA1C();
    sub_22088FA0C();
    v216 = sub_22088F9EC();

    v217 = 0;
    if (v216)
    {
      v217 = sub_22088F45C();
    }

    else
    {
      v342 = 0;
      v343 = 0;
    }

    v261 = v287;
    v341 = v216;
    v344 = v217;
    v262 = v324;
    v263 = v322;
    sub_22088E7BC();

    sub_22075B9B8(v213, type metadata accessor for StockFeedGroup);
    goto LABEL_99;
  }

  if (v153 != 3)
  {
    sub_22088FA1C();

    sub_22088FA0C();
    type metadata accessor for StockFeedServiceConfig();
    sub_220444524(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);
    v218 = sub_22088F9EC();

    v219 = 0;
    if (!v218)
    {
      v342 = 0;
      v343 = 0;
      goto LABEL_92;
    }

LABEL_55:
    v219 = sub_22088F45C();
LABEL_92:
    v261 = v287;
    v341 = v218;
    v344 = v219;
    v262 = v324;
    v263 = v322;
    sub_22088E7BC();
LABEL_98:

LABEL_99:
    v264 = v283;
    v265 = v284;
    (*(v283 + 104))(v261, *MEMORY[0x277D6D868], v284);
    sub_220444524(&unk_281288C00, type metadata accessor for StockFeedSectionDescriptor);
    v266 = v280;
    sub_22088C67C();
    (*(v264 + 8))(v261, v265);
    v286(v266);
    (*(v281 + 8))(v266, v282);
    return (*(v279 + 8))(v263, v262);
  }

  v154 = *((v152 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v328 = *((v152 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v320 = v154;
  v155 = v329;
  v156 = v309;
  v318 = *(v154 + 2);
  if (!v318)
  {
LABEL_85:
    sub_22088FA1C();

    sub_22088FA0C();
    type metadata accessor for StockFeedServiceConfig();
    sub_220444524(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);
    v218 = sub_22088F9EC();

    v219 = 0;
    if (!v218)
    {
      v342 = 0;
      v343 = 0;
      goto LABEL_92;
    }

    goto LABEL_55;
  }

  v150 = 0;
  v308 = &v320[(*(v317 + 80) + 32) & ~*(v317 + 80)];
  v304 = (v270 + 32);
  v302 = (v270 + 16);
  v299 = (v270 + 8);
  v335 = v338 + 16;
  v145 = v338 + 8;
  v332 = (v339 + 32);
  v296 = (v339 + 8);
  v306 = (v276 + 8);
  v315 += 8;
  v295 = xmmword_220899360;
  while (v150 < *(v320 + 2))
  {
    v165 = *(v317 + 72);
    v330 = v150;
    sub_22075BA18(&v308[v165 * v150], v156, type metadata accessor for StockFeedGroup);
    v166 = __swift_project_boxed_opaque_existential_1(v321 + 3, v321[6]);
    type metadata accessor for StockFeedServiceConfig();
    sub_220444524(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);
    sub_22088F6CC();
    v167 = *v166;
    v168 = v307;
    sub_22075BA18(v156, v307, type metadata accessor for StockFeedGroup);
    v169 = swift_getEnumCaseMultiPayload();
    if (v169)
    {
      if (v169 == 1)
      {
        sub_22060095C(v168, v331, type metadata accessor for NewsStockFeedGroup);
        v150 = v300;
        sub_22075BA18(v156, v300, type metadata accessor for StockFeedGroup);
        v170 = swift_getEnumCaseMultiPayload();
        if (v170)
        {
          v171 = v298;
          if (v170 == 1)
          {
            v150 = v277;
            sub_22060095C(v300, v277, type metadata accessor for NewsStockFeedGroup);
            sub_220459628();
            v173 = *(v172 + 64);
            v174 = *(v150 + 8);
            *v171 = *v150;
            v171[1] = v174;
            v175 = *(v278 + 32);
            *(v171 + 16) = *(v150 + *(v278 + 28));
            sub_22075BA18(v150 + v175, v171 + v173, sub_2204595F4);

            sub_22075B9B8(v150, type metadata accessor for NewsStockFeedGroup);
          }

          else
          {
            (*v304)(v298, v300, v316);
          }
        }

        else
        {
          v183 = v272;
          sub_22060095C(v300, v272, type metadata accessor for NewsPlacardStockFeedGroup);
          v150 = *(v183 + *(v294 + 20));
          sub_22075B9B8(v183, type metadata accessor for NewsPlacardStockFeedGroup);
          v171 = v298;
        }

        swift_storeEnumTagMultiPayload();
        sub_22075BA18(v171, v297, type metadata accessor for StockFeedSectionDescriptor);
        v184 = v331[2];
        v185 = *(v184 + 16);
        if (v185)
        {
          v341 = MEMORY[0x277D84F90];
          sub_22070BC24(0, v185, 0);
          v186 = 0;
          v187 = v341;
          v188 = v184 + ((*(v338 + 80) + 32) & ~*(v338 + 80));
          while (v186 < *(v184 + 16))
          {
            v189 = v337;
            (*(v338 + 16))(v155, v188 + *(v338 + 72) * v186, v337);
            sub_22072A47C(v155, v333, v331, v167, v336);
            (*v145)(v155, v189);
            v341 = v187;
            v150 = *(v187 + 16);
            v190 = *(v187 + 24);
            if (v150 >= v190 >> 1)
            {
              sub_22070BC24(v190 > 1, v150 + 1, 1);
              v187 = v341;
            }

            ++v186;
            *(v187 + 16) = v150 + 1;
            (*(v339 + 32))(v187 + ((*(v339 + 80) + 32) & ~*(v339 + 80)) + *(v339 + 72) * v150, v336, v340);
            v155 = v329;
            if (v185 == v186)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
          goto LABEL_101;
        }

        v187 = MEMORY[0x277D84F90];
LABEL_34:
        v191 = sub_220444524(&qword_281297FB8, sub_22055D328);
        v192 = sub_220444524(&qword_281297FC0, sub_22055D328);
        MEMORY[0x223D80A20](v187, v340, v191, v192);
        v163 = v305;
        sub_22088B29C();
        sub_22075B9B8(v298, type metadata accessor for StockFeedSectionDescriptor);
        sub_22075B9B8(v331, type metadata accessor for NewsStockFeedGroup);
      }

      else
      {
        v157 = v310;
        v158 = v168;
        v159 = v316;
        (*v304)(v310, v158, v316);
        (*v302)(v311, v157, v159);
        swift_storeEnumTagMultiPayload();
        sub_220453D34(0, &qword_28127E100, sub_22055D328, MEMORY[0x277D84560]);
        v160 = swift_allocObject();
        *(v160 + 16) = v295;
        __swift_project_boxed_opaque_existential_1(v167 + 7, v167[10]);
        sub_22088FB2C();
        swift_storeEnumTagMultiPayload();
        sub_22088AD7C();
        v161 = sub_220444524(&qword_281297FB8, sub_22055D328);
        v162 = sub_220444524(&qword_281297FC0, sub_22055D328);
        MEMORY[0x223D80A10](v160, v340, v161, v162);
        v163 = v305;
        v155 = v329;
        sub_22088B29C();
        (*v299)(v310, v316);
      }

      v164 = v334;
    }

    else
    {
      sub_22060095C(v168, v303, type metadata accessor for NewsPlacardStockFeedGroup);
      __swift_project_boxed_opaque_existential_1(v167 + 2, v167[5]);
      if ((sub_220885E7C() & 1) != 0 && v303[*(v294 + 20)] == 1)
      {
        swift_storeEnumTagMultiPayload();
        v176 = sub_220444524(&qword_281297FB8, sub_22055D328);
        v177 = sub_220444524(&qword_281297FC0, sub_22055D328);
        MEMORY[0x223D80A10](MEMORY[0x277D84F90], v340, v176, v177);
        v163 = v305;
        sub_22088B29C();
        swift_storeEnumTagMultiPayload();
        v164 = v334;
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        v178 = sub_220444524(&qword_281297FB8, sub_22055D328);
        v179 = sub_220444524(&qword_281297FC0, sub_22055D328);
        MEMORY[0x223D80A10](MEMORY[0x277D84F90], v340, v178, v179);
        v163 = v305;
        sub_22088B29C();
        v180 = v313;
        v164 = v334;
        if (qword_281299528 != -1)
        {
          swift_once();
        }

        v181 = *algn_2812B6D88;
        *v180 = qword_2812B6D80;
        v180[1] = v181;
        swift_storeEnumTagMultiPayload();
      }

      v182 = v301;
      sub_22088AD7C();
      sub_22088B30C();
      (*v296)(v182, v340);
      sub_22075B9B8(v303, type metadata accessor for NewsPlacardStockFeedGroup);
    }

    v150 = v330 + 1;
    (*v306)(v333, v319);
    sub_22088E72C();
    (*v315)(v163, v164);
    v156 = v309;
    sub_22075B9B8(v309, type metadata accessor for StockFeedGroup);
    if (v150 == v318)
    {
      goto LABEL_85;
    }
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
  (*v145)(v155, v150);

  __break(1u);
  return result;
}

unint64_t sub_22075B7E0()
{
  result = qword_27CF59570;
  if (!qword_27CF59570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59570);
  }

  return result;
}

void sub_22075B8C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockFeedSectionDescriptor();
    v8[1] = type metadata accessor for StockFeedModel();
    v8[2] = sub_220444524(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
    v8[3] = sub_220444524(&qword_281293DD0, type metadata accessor for StockFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_22075B9B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22075BA18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22075BA80()
{
  if (qword_281294340 != -1)
  {
    swift_once();
  }

  sub_22048D7F8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_220899360;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v2 = sub_22088613C();
  v3 = MEMORY[0x277D839F0];
  *(v1 + 56) = MEMORY[0x277D839B0];
  *(v1 + 64) = v3;
  *(v1 + 32) = v2 & 1;
  sub_220891AFC();
  sub_22088A7EC();

  sub_22048E0A4(0);
  sub_220888FBC();
  v4 = sub_220888D9C();
  sub_220528958();
  sub_220888E5C();

  v5 = sub_220888D9C();
  sub_220888E6C();

  v6 = sub_220888D9C();
  v7 = sub_220888E4C();

  sub_22075BCC0();
  return v7;
}

uint64_t sub_22075BCC0()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  if (sub_22088613C())
  {
    sub_22048E0A4(0);
    sub_220888FBC();
    v1 = sub_220888D9C();
    sub_22075BFA0();
    sub_220888E5C();

    v2 = sub_220888D9C();
    v3 = sub_220888E4C();

    return v3;
  }

  else
  {
    sub_22075BF30();
    swift_allocError();
    sub_22075C0AC(0, &qword_27CF59580, &type metadata for ForYouFeedPoolStockContent, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_220888EBC();
  }
}

uint64_t sub_22075BE64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_22046DA2C((a1 + 1), (a2 + 1));
  *a2 = v3;
}

uint64_t sub_22075BEAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22075BA80();
  *a1 = result;
  a1[1] = v3;
  a1[2] = MEMORY[0x277D84FA0];
  return result;
}

unint64_t sub_22075BF30()
{
  result = qword_27CF59578;
  if (!qword_27CF59578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59578);
  }

  return result;
}

void sub_22075BFA0()
{
  if (!qword_28127EC48)
  {
    sub_22075C020();
    sub_2204446D4(255, &unk_281299230);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127EC48);
    }
  }
}

void sub_22075C020()
{
  if (!qword_28127EC50)
  {
    sub_22075C0AC(255, &qword_28127E9C0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v0 = sub_22089128C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127EC50);
    }
  }
}

void sub_22075C0AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_22075C110()
{
  result = qword_27CF59588;
  if (!qword_27CF59588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59588);
  }

  return result;
}

uint64_t sub_22075C164(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x736E6F6974706FLL;
    v6 = 0x6F506C6C6F726373;
    if (a1 != 8)
    {
      v6 = 0xD000000000000013;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x656C6369747261;
    if (a1 != 5)
    {
      v7 = 7107189;
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
    v1 = 1701869940;
    v2 = 0x6B636F7473;
    v3 = 0x6565466B636F7473;
    if (a1 != 3)
    {
      v3 = 0x7972657571;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x546E6F6974636573;
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

uint64_t sub_22075C2AC(void *a1)
{
  v3 = v1;
  sub_220760C54(0, &qword_28127E1F0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220760998();
  sub_220892A5C();
  LOBYTE(v18) = *v3;
  v22 = 0;
  sub_220760CB8();
  sub_22089283C();
  if (!v2)
  {
    LOBYTE(v18) = v3[1];
    v22 = 1;
    sub_220760D0C();
    sub_2208927FC();
    v11 = type metadata accessor for StocksActivityUserInfo();
    LOBYTE(v18) = 2;
    sub_22088685C();
    sub_220448D90(&qword_281299078, MEMORY[0x277D69810]);
    sub_2208927FC();
    LOBYTE(v18) = 3;
    type metadata accessor for StocksActivity.StockFeed.Series(0);
    sub_220448D90(qword_281295358, type metadata accessor for StocksActivity.StockFeed.Series);
    sub_2208927FC();
    LOBYTE(v18) = 4;
    sub_2208927CC();
    LOBYTE(v18) = 5;
    type metadata accessor for ArticleUserInfoModel();
    sub_220448D90(&qword_28128F3E0, type metadata accessor for ArticleUserInfoModel);
    sub_2208927FC();
    LOBYTE(v18) = 6;
    sub_220884E9C();
    sub_220448D90(&qword_2812994F8, MEMORY[0x277CC9260]);
    sub_2208927FC();
    LOBYTE(v18) = 7;
    sub_2208927EC();
    v12 = &v3[*(v11 + 48)];
    v13 = v12[1];
    v14 = v12[2];
    v15 = v12[3];
    v18 = *v12;
    v19 = v13;
    v20 = v14;
    v21 = v15;
    v22 = 8;
    sub_2206B2110(v18, v13);
    sub_220760D60();
    sub_2208927FC();
    sub_2207609EC(v18, v19);
    LOBYTE(v18) = 9;
    sub_2208927CC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_22075C730@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_220447700(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v52 = &v49 - v6;
  sub_220447700(0, qword_28128F390, type metadata accessor for ArticleUserInfoModel, v3);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v53 = &v49 - v9;
  sub_220447700(0, qword_281295308, type metadata accessor for StocksActivity.StockFeed.Series, v3);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v49 - v12;
  sub_220447700(0, &qword_281299060, MEMORY[0x277D69810], v3);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v49 - v16;
  sub_220760C54(0, &qword_281299830, MEMORY[0x277D844C8]);
  v19 = *(v18 - 8);
  v54 = v18;
  v55 = v19;
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v49 - v21;
  v23 = type metadata accessor for StocksActivityUserInfo();
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_220760998();
  v56 = v22;
  v28 = v57;
  sub_220892A4C();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(v58);
  }

  v29 = v13;
  v30 = v53;
  v31 = v55;
  v50 = v23;
  v61 = 0;
  sub_220760A70();
  sub_22089279C();
  *v26 = v59;
  v61 = 1;
  sub_220760AC4();
  sub_22089276C();
  v57 = v26;
  v26[1] = v59;
  sub_22088685C();
  LOBYTE(v59) = 2;
  sub_220448D90(&qword_281299848, MEMORY[0x277D69810]);
  sub_22089276C();
  v32 = v50;
  sub_220760B18(v17, &v57[v50[6]], &qword_281299060, MEMORY[0x277D69810]);
  type metadata accessor for StocksActivity.StockFeed.Series(0);
  LOBYTE(v59) = 3;
  sub_220448D90(&qword_281299850, type metadata accessor for StocksActivity.StockFeed.Series);
  sub_22089276C();
  v33 = v57;
  sub_220760B18(v29, &v57[v32[7]], qword_281295308, type metadata accessor for StocksActivity.StockFeed.Series);
  LOBYTE(v59) = 4;
  v49 = 0;
  v34 = sub_22089273C();
  v35 = &v33[v32[8]];
  *v35 = v34;
  v35[1] = v36;
  type metadata accessor for ArticleUserInfoModel();
  LOBYTE(v59) = 5;
  sub_220448D90(&qword_281299858, type metadata accessor for ArticleUserInfoModel);
  sub_22089276C();
  sub_220760B18(v30, &v33[v50[9]], qword_28128F390, type metadata accessor for ArticleUserInfoModel);
  sub_220884E9C();
  LOBYTE(v59) = 6;
  sub_220448D90(&qword_2812997D0, MEMORY[0x277CC9260]);
  v37 = v52;
  sub_22089276C();
  sub_220760B18(v37, &v33[v50[10]], &qword_2812994E0, MEMORY[0x277CC9260]);
  LOBYTE(v59) = 7;
  v38 = sub_22089275C();
  v39 = &v33[v50[11]];
  *v39 = v38;
  v39[8] = v40 & 1;
  v61 = 8;
  sub_220760B98();
  sub_22089276C();
  v41 = &v33[v50[12]];
  v42 = v60;
  *v41 = v59;
  *(v41 + 1) = v42;
  LOBYTE(v59) = 9;
  v43 = sub_22089273C();
  v45 = v44;
  (*(v31 + 8))(v56, v54);
  v46 = v51;
  v47 = &v26[v50[13]];
  *v47 = v43;
  v47[1] = v45;
  sub_220760BEC(v26, v46, type metadata accessor for StocksActivityUserInfo);
  __swift_destroy_boxed_opaque_existential_1(v58);
  return sub_22076087C(v26, type metadata accessor for StocksActivityUserInfo);
}

uint64_t sub_22075D1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22075D978(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22075D1D8(uint64_t a1)
{
  v2 = sub_220760998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22075D214(uint64_t a1)
{
  v2 = sub_220760998();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t type metadata accessor for StocksActivityUserInfo()
{
  result = qword_2812960A8;
  if (!qword_2812960A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22075D2F4()
{
  sub_22075EAA0(319, &qword_281291A58, &type metadata for ForYouFeedSection, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_220447700(319, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_220447700(319, qword_281295308, type metadata accessor for StocksActivity.StockFeed.Series, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22075EAA0(319, &qword_28127EBE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_220447700(319, qword_28128F390, type metadata accessor for ArticleUserInfoModel, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_220447700(319, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_22075EAA0(319, &qword_28127E908, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_22075EAA0(319, &qword_281293ED8, &type metadata for ScrollPosition, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
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

uint64_t sub_22075D5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for StocksV2UserActivitySerializer();

  return MEMORY[0x2821D4698](a1, v5, a3);
}

uint64_t sub_22075D610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for StocksV2UserActivitySerializer();

  return MEMORY[0x2821D46A8](a1, v5, a3);
}

unint64_t sub_22075D65C(unint64_t a1)
{
  sub_220447700(0, &qword_28127DEC0, sub_22052BFB4, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899360;
  *(inited + 32) = 1635017060;
  *(inited + 40) = 0xE400000000000000;
  v4 = sub_22075EAF0(a1, 0);
  if (v1)
  {

    swift_setDeallocating();
    sub_22052BFB4();
    swift_arrayDestroy();
  }

  else
  {
    *(inited + 72) = MEMORY[0x277CC9318];
    *(inited + 48) = v4;
    *(inited + 56) = v5;
    a1 = sub_22052BDC4(inited);
    swift_setDeallocating();
    sub_22076087C(inited + 32, sub_22052BFB4);
  }

  return a1;
}

unint64_t sub_22075D784(uint64_t a1, unint64_t a2)
{
  sub_220447700(0, &qword_28127DEC0, sub_22052BFB4, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899360;
  *(inited + 32) = 1635017060;
  *(inited + 40) = 0xE400000000000000;
  v6 = sub_22075EAF0(a1, a2);
  if (v2)
  {

    swift_setDeallocating();
    sub_22052BFB4();
    swift_arrayDestroy();
  }

  else
  {
    *(inited + 72) = MEMORY[0x277CC9318];
    *(inited + 48) = v6;
    *(inited + 56) = v7;
    a2 = sub_22052BDC4(inited);
    swift_setDeallocating();
    sub_22076087C(inited + 32, sub_22052BFB4);
  }

  return a2;
}

uint64_t sub_22075D8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for StocksV2UserActivitySerializer();

  return MEMORY[0x2821D46A0](a1, v5, a3);
}

uint64_t sub_22075D908(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t sub_22075D978(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_2208928BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x546E6F6974636573 && a2 == 0xEB00000000657079 || (sub_2208928BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B636F7473 && a2 == 0xE500000000000000 || (sub_2208928BC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6565466B636F7473 && a2 == 0xEF73656972655364 || (sub_2208928BC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000 || (sub_2208928BC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C6369747261 && a2 == 0xE700000000000000 || (sub_2208928BC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_2208928BC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_2208928BC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6F506C6C6F726373 && a2 == 0xEE006E6F69746973 || (sub_2208928BC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002208D3070 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_2208928BC();

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

uint64_t sub_22075DCB8(uint64_t a1)
{
  v2 = type metadata accessor for StocksActivity.StockFeed.Series(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088685C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StocksActivity.StockFeed(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = v47 - v17;
  v19 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220760BEC(a1, v22, type metadata accessor for StocksActivity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_2206A1D94();
        v25 = *(v24 + 48);
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v27 = [objc_opt_self() bundleForClass_];
        v28 = sub_220884CAC();

        v29 = sub_22088CC6C();
        (*(*(v29 - 8) + 8))(&v22[v25], v29);
        v30 = type metadata accessor for ForYouSectionDescriptor;
LABEL_8:
        v33 = v30;
        v34 = v22;
LABEL_17:
        sub_22076087C(v34, v33);
        return v28;
      }

      if (EnumCaseMultiPayload == 2)
      {
        sub_2207608DC(v22, v18, type metadata accessor for StocksActivity.StockFeed);
        type metadata accessor for Localized();
        v37 = swift_getObjCClassFromMetadata();
        v38 = [objc_opt_self() bundleForClass_];
        sub_220884CAC();

        sub_220448068(0, &qword_28127DE60, &qword_28127DE10, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_220899360;
        sub_220760BEC(v18, v14, type metadata accessor for StocksActivity.StockFeed);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_2207608DC(v14, v5, type metadata accessor for StocksActivity.StockFeed.Series);
          (*(v7 + 16))(v10, v5, v6);
          sub_22076087C(v5, type metadata accessor for StocksActivity.StockFeed.Series);
        }

        else
        {
          (*(v7 + 32))(v10, v14, v6);
        }

        v43 = sub_22088684C();
        v45 = v44;
        (*(v7 + 8))(v10, v6);
        *(v39 + 56) = MEMORY[0x277D837D0];
        *(v39 + 64) = sub_22048D860();
        *(v39 + 32) = v43;
        *(v39 + 40) = v45;
        v28 = sub_22089139C();

        v33 = type metadata accessor for StocksActivity.StockFeed;
        v34 = v18;
        goto LABEL_17;
      }

      goto LABEL_19;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 3:
LABEL_9:
      sub_22076087C(v22, type metadata accessor for StocksActivity);
      type metadata accessor for Localized();
      v35 = swift_getObjCClassFromMetadata();
      v36 = [objc_opt_self() bundleForClass_];
      v28 = sub_220884CAC();

      return v28;
    case 4:
      type metadata accessor for Localized();
      v31 = swift_getObjCClassFromMetadata();
      v32 = [objc_opt_self() bundleForClass_];
      v28 = sub_220884CAC();

      v30 = type metadata accessor for StocksActivity;
      goto LABEL_8;
    case 5:
      type metadata accessor for Localized();
      v40 = swift_getObjCClassFromMetadata();
      v41 = [objc_opt_self() bundleForClass_];
      v28 = sub_220884CAC();

      v42 = sub_220884E9C();
      (*(*(v42 - 8) + 8))(v22, v42);
      return v28;
  }

LABEL_19:
  v47[0] = 0;
  v47[1] = 0xE000000000000000;
  sub_22089254C();
  MEMORY[0x223D89680](0xD000000000000019, 0x80000002208D2E80);
  sub_22089264C();
  result = sub_22089267C();
  __break(1u);
  return result;
}

uint64_t sub_22075E564(uint64_t a1)
{
  v2 = type metadata accessor for StocksActivity.StockFeed.Series(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088685C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StocksActivity.StockFeed(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v34 - v17;
  v19 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220760BEC(a1, v22, type metadata accessor for StocksActivity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = MEMORY[0x277D84F90];
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_2206A1D94();
      v29 = *(v28 + 48);
      v30 = sub_22088CC6C();
      (*(*(v30 - 8) + 8))(&v22[v29], v30);
      v25 = type metadata accessor for ForYouSectionDescriptor;
      goto LABEL_3;
    case 2:
      sub_2207608DC(v22, v18, type metadata accessor for StocksActivity.StockFeed);
      sub_22075EAA0(0, &qword_28127DEE8, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_220899360;
      sub_220760BEC(v18, v14, type metadata accessor for StocksActivity.StockFeed);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2207608DC(v14, v5, type metadata accessor for StocksActivity.StockFeed.Series);
        (*(v7 + 16))(v10, v5, v6);
        sub_22076087C(v5, type metadata accessor for StocksActivity.StockFeed.Series);
      }

      else
      {
        (*(v7 + 32))(v10, v14, v6);
      }

      v31 = sub_22088681C();
      v33 = v32;
      (*(v7 + 8))(v10, v6);
      *(v26 + 32) = v31;
      *(v26 + 40) = v33;
      sub_22076087C(v18, type metadata accessor for StocksActivity.StockFeed);
      return v26;
    case 5:
      v27 = sub_220884E9C();
      (*(*(v27 - 8) + 8))(v22, v27);
      return MEMORY[0x277D84F90];
    case 11:
      sub_220447880();

      sub_220760A00(v22, &qword_281299060, MEMORY[0x277D69810]);
      return MEMORY[0x277D84F90];
    case 13:
      return result;
    default:
      v25 = type metadata accessor for StocksActivity;
LABEL_3:
      sub_22076087C(v22, v25);
      return MEMORY[0x277D84F90];
  }
}

id sub_22075E9D8(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CC34B8]) initWithItemContentType_];
  sub_22075DCB8(a1);
  v3 = sub_22089132C();

  [v2 setDisplayName_];

  sub_22075E564(a1);
  v4 = sub_2208916DC();

  [v2 setKeywords_];

  return v2;
}

void sub_22075EAA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_22075EAF0(uint64_t a1, uint64_t a2)
{
  *&v242 = a2;
  v250 = sub_220884E9C();
  v243 = *(v250 - 8);
  MEMORY[0x28223BE20](v250, v3);
  v233 = &v225 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = type metadata accessor for StocksActivity.Article(0);
  MEMORY[0x28223BE20](v231, v5);
  v232 = &v225 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v239 = &v225 - v9;
  v10 = type metadata accessor for StocksActivity.StockFeed.Series(0);
  v11 = *(v10 - 8);
  v245 = v10;
  v246 = v11;
  MEMORY[0x28223BE20](v10, v12);
  v234 = &v225 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22088AD3C();
  v236 = *(v14 - 8);
  v237 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v235 = &v225 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for StocksActivity.StockFeed(0);
  MEMORY[0x28223BE20](v230, v17);
  v19 = &v225 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  *&v241 = &v225 - v22;
  v252 = sub_22088685C();
  v247 = *(v252 - 8);
  MEMORY[0x28223BE20](v252, v23);
  v240 = &v225 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v227 = &v225 - v27;
  v28 = type metadata accessor for ForYouSectionDescriptor();
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v225 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v238 = &v225 - v34;
  v248 = type metadata accessor for StocksActivityUserInfo();
  MEMORY[0x28223BE20](v248, v35);
  v37 = &v225 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v225 - v40;
  MEMORY[0x28223BE20](v42, v43);
  v45 = &v225 - v44;
  MEMORY[0x28223BE20](v46, v47);
  v228 = &v225 - v48;
  MEMORY[0x28223BE20](v49, v50);
  v229 = &v225 - v51;
  MEMORY[0x28223BE20](v52, v53);
  v226 = &v225 - v54;
  MEMORY[0x28223BE20](v55, v56);
  v225 = &v225 - v57;
  MEMORY[0x28223BE20](v58, v59);
  v61 = &v225 - v60;
  v62 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v62, v63);
  v244 = a1;
  v65 = a1;
  v66 = &v225 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220760BEC(v65, v66, type metadata accessor for StocksActivity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v98 = v66;
      v99 = *v66;
      v100 = *(v98 + 1);
      sub_2208849EC();
      swift_allocObject();
      sub_2208849DC();
      StocksActivity.type.getter(v251);
      v101 = v251[0];
      v102 = v248;
      (*(v247 + 56))(&v45[*(v248 + 24)], 1, 1, v252);
      (*(v246 + 56))(&v45[v102[7]], 1, 1, v245);
      v103 = v102[9];
      v104 = type metadata accessor for ArticleUserInfoModel();
      (*(*(v104 - 8) + 56))(&v45[v103], 1, 1, v104);
      (*(v243 + 56))(&v45[v102[10]], 1, 1, v250);
      *v45 = v101;
      v45[1] = 2;
      v105 = &v45[v102[8]];
      *v105 = v99;
      *(v105 + 1) = v100;
      v106 = &v45[v102[11]];
      *v106 = 0;
      v106[8] = 1;
      v107 = &v45[v102[12]];
      *v107 = xmmword_2208B2020;
      *(v107 + 2) = 0;
      *(v107 + 3) = 0;
      v108 = &v45[v102[13]];
      *v108 = 0;
      *(v108 + 1) = 0;
      sub_220448D90(&qword_2812960B8, type metadata accessor for StocksActivityUserInfo);
      v109 = v249;
      v110 = sub_2208849CC();
      if (v109)
      {
        sub_22076087C(v45, type metadata accessor for StocksActivityUserInfo);
      }

      else
      {
        v204 = v110;
        sub_22076087C(v45, type metadata accessor for StocksActivityUserInfo);

        return v204;
      }
    }

    v76 = v252;
    if (EnumCaseMultiPayload == 4)
    {
      v77 = v239;
      sub_2207608DC(v66, v239, type metadata accessor for StocksActivity.Article);
      v78 = v232;
      sub_220760BEC(v77, v232, type metadata accessor for StocksActivity.Article);
      v79 = swift_getEnumCaseMultiPayload();
      v80 = type metadata accessor for StocksActivity.Article;
      v81 = v250;
      if (v79 == 1)
      {
        v82 = 0;
      }

      else
      {
        sub_2204481D8();
        v82 = *(v78 + *(v167 + 48));
        sub_2207607F4(v78 + *(v167 + 64));
        v80 = MEMORY[0x277D2FB40];
      }

      v168 = v242;
      sub_22076087C(v78, v80);
      if (v168)
      {
        v170 = v235;
        v169 = v236;
        v171 = v237;
        (*(v236 + 104))(v235, *MEMORY[0x277D6D3C8], v237);
        v172 = sub_2206FA360(v170, v168);
        (*(v169 + 8))(v170, v171);
        v82 |= v172 & ((v82 & 1) == 0);
      }

      sub_2208849EC();
      swift_allocObject();
      sub_2208849DC();
      StocksActivity.type.getter(v251);
      v173 = v251[0];
      v174 = v248;
      (*(v247 + 56))(&v41[*(v248 + 24)], 1, 1, v76);
      (*(v246 + 56))(&v41[v174[7]], 1, 1, v245);
      v175 = v174[9];
      v176 = v239;
      sub_2207DE838(&v41[v175]);
      v177 = type metadata accessor for ArticleUserInfoModel();
      (*(*(v177 - 8) + 56))(&v41[v175], 0, 1, v177);
      (*(v243 + 56))(&v41[v174[10]], 1, 1, v81);
      *v41 = v173;
      v41[1] = 2;
      v178 = &v41[v174[8]];
      *v178 = 0;
      *(v178 + 1) = 0;
      v179 = &v41[v174[11]];
      *v179 = v82;
      v179[8] = 0;
      v180 = &v41[v174[12]];
      *v180 = xmmword_2208B2020;
      *(v180 + 2) = 0;
      *(v180 + 3) = 0;
      v181 = &v41[v174[13]];
      *v181 = 0;
      *(v181 + 1) = 0;
      sub_220448D90(&qword_2812960B8, type metadata accessor for StocksActivityUserInfo);
      v182 = v249;
      v183 = sub_2208849CC();
      if (v182)
      {

        sub_22076087C(v41, type metadata accessor for StocksActivityUserInfo);
        return sub_22076087C(v176, type metadata accessor for StocksActivity.Article);
      }

      else
      {
        v205 = v183;

        sub_22076087C(v41, type metadata accessor for StocksActivityUserInfo);
        sub_22076087C(v176, type metadata accessor for StocksActivity.Article);
        return v205;
      }
    }

    v136 = v250;
    if (EnumCaseMultiPayload == 5)
    {
      v137 = v243;
      v138 = v233;
      (*(v243 + 32))(v233, v66, v250);
      sub_2208849EC();
      swift_allocObject();
      sub_2208849DC();
      StocksActivity.type.getter(v251);
      v139 = v251[0];
      v140 = v248;
      v141 = v76;
      v142 = v138;
      (*(v247 + 56))(&v37[*(v248 + 24)], 1, 1, v141);
      (*(v246 + 56))(&v37[v140[7]], 1, 1, v245);
      v143 = v140[9];
      v144 = type metadata accessor for ArticleUserInfoModel();
      (*(*(v144 - 8) + 56))(&v37[v143], 1, 1, v144);
      v145 = v140[10];
      (*(v137 + 16))(&v37[v145], v142, v136);
      (*(v137 + 56))(&v37[v145], 0, 1, v136);
      *v37 = v139;
      v37[1] = 2;
      v146 = &v37[v140[8]];
      *v146 = 0;
      *(v146 + 1) = 0;
      v147 = &v37[v140[11]];
      *v147 = 0;
      v147[8] = 1;
      v148 = &v37[v140[12]];
      *v148 = xmmword_2208B2020;
      *(v148 + 2) = 0;
      *(v148 + 3) = 0;
      v149 = &v37[v140[13]];
      *v149 = 0;
      *(v149 + 1) = 0;
      sub_220448D90(&qword_2812960B8, type metadata accessor for StocksActivityUserInfo);
      v150 = v249;
      v151 = sub_2208849CC();
      if (v150)
      {

        sub_22076087C(v37, type metadata accessor for StocksActivityUserInfo);
        return (*(v137 + 8))(v142, v136);
      }

      else
      {
        v206 = v151;

        sub_22076087C(v37, type metadata accessor for StocksActivityUserInfo);
        (*(v137 + 8))(v142, v136);
        return v206;
      }
    }

LABEL_45:
    v251[0] = 0;
    v251[1] = 0xE000000000000000;
    sub_22089254C();

    strcpy(v251, "This activity ");
    HIBYTE(v251[1]) = -18;
    v224 = StocksActivity.identifier.getter();
    MEMORY[0x223D89680](v224);

    MEMORY[0x223D89680](0xD000000000000021, 0x80000002208D3040);
    result = sub_22089267C();
    __break(1u);
    return result;
  }

  if (!EnumCaseMultiPayload)
  {
    v83 = *(v66 + 4);
    v84 = *(v66 + 5);
    sub_2208849EC();
    swift_allocObject();
    v85 = *v66;
    v241 = *(v66 + 1);
    v242 = v85;
    sub_2208849DC();
    StocksActivity.type.getter(v251);
    v86 = v251[0];
    v87 = v248;
    (*(v247 + 56))(&v61[*(v248 + 24)], 1, 1, v252);
    (*(v246 + 56))(&v61[v87[7]], 1, 1, v245);
    v88 = v87[9];
    v89 = type metadata accessor for ArticleUserInfoModel();
    (*(*(v89 - 8) + 56))(&v61[v88], 1, 1, v89);
    (*(v243 + 56))(&v61[v87[10]], 1, 1, v250);
    *v61 = v86;
    v61[1] = 2;
    v90 = &v61[v87[8]];
    *v90 = 0;
    *(v90 + 1) = 0;
    v91 = &v61[v87[11]];
    *v91 = 0;
    v91[8] = 1;
    v92 = &v61[v87[12]];
    v93 = v241;
    *v92 = v242;
    *(v92 + 1) = v93;
    v94 = &v61[v87[13]];
    *v94 = v83;
    *(v94 + 1) = v84;
    sub_220448D90(&qword_2812960B8, type metadata accessor for StocksActivityUserInfo);
    v95 = v249;
    v96 = sub_2208849CC();
    sub_22076087C(v61, type metadata accessor for StocksActivityUserInfo);

    if (!v95)
    {
      return v96;
    }

    return result;
  }

  v68 = v252;
  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v111 = v241;
      sub_2207608DC(v66, v241, type metadata accessor for StocksActivity.StockFeed);
      sub_220760BEC(v111, v19, type metadata accessor for StocksActivity.StockFeed);
      v112 = swift_getEnumCaseMultiPayload();
      v113 = v243;
      v114 = v240;
      if (v112 == 1)
      {
        sub_2204471FC(0, &qword_2812952A0, type metadata accessor for StocksActivity.StockFeed.Series);
        v116 = *&v19[*(v115 + 48)];
        sub_2207608DC(v19, v234, type metadata accessor for StocksActivity.StockFeed.Series);
        v117 = v247;
        v118 = v242;
        if (v242)
        {
          v120 = v235;
          v119 = v236;
          v121 = v237;
          (*(v236 + 104))(v235, *MEMORY[0x277D6D3C8], v237);
          v122 = sub_2206FA360(v120, v118);
          (*(v119 + 8))(v120, v121);
          v116 |= v122 & ((v116 & 1) == 0);
        }

        sub_2208849EC();
        swift_allocObject();
        sub_2208849DC();
        StocksActivity.type.getter(v251);
        v123 = v251[0];
        v124 = v248;
        v125 = v228;
        (*(v117 + 56))(&v228[*(v248 + 24)], 1, 1, v68);
        v126 = v124[7];
        v127 = v234;
        sub_220760BEC(v234, &v125[v126], type metadata accessor for StocksActivity.StockFeed.Series);
        (*(v246 + 56))(&v125[v126], 0, 1, v245);
        v128 = v124[9];
        v129 = type metadata accessor for ArticleUserInfoModel();
        (*(*(v129 - 8) + 56))(&v125[v128], 1, 1, v129);
        (*(v113 + 56))(&v125[v124[10]], 1, 1, v250);
        *v125 = v123;
        v125[1] = 2;
        v130 = &v125[v124[8]];
        *v130 = 0;
        v130[1] = 0;
        v131 = &v125[v124[11]];
        *v131 = v116;
        v131[8] = 0;
        v132 = &v125[v124[12]];
        *v132 = xmmword_2208B2020;
        *(v132 + 2) = 0;
        *(v132 + 3) = 0;
        v133 = &v125[v124[13]];
        *v133 = 0;
        v133[1] = 0;
        sub_220448D90(&qword_2812960B8, type metadata accessor for StocksActivityUserInfo);
        v134 = v249;
        v135 = sub_2208849CC();

        sub_22076087C(v125, type metadata accessor for StocksActivityUserInfo);
        sub_22076087C(v127, type metadata accessor for StocksActivity.StockFeed.Series);
        result = sub_22076087C(v241, type metadata accessor for StocksActivity.StockFeed);
        if (!v134)
        {
          return v135;
        }
      }

      else
      {
        sub_2204471FC(0, &qword_281299050, MEMORY[0x277D69810]);
        v185 = *&v19[*(v184 + 48)];
        v186 = v247;
        (*(v247 + 32))(v114, v19, v68);
        v187 = v242;
        if (v242)
        {
          v189 = v235;
          v188 = v236;
          v190 = v237;
          (*(v236 + 104))(v235, *MEMORY[0x277D6D3C8], v237);
          v191 = sub_2206FA360(v189, v187);
          (*(v188 + 8))(v189, v190);
          v185 |= v191 & ((v185 & 1) == 0);
        }

        sub_2208849EC();
        swift_allocObject();
        sub_2208849DC();
        StocksActivity.type.getter(v251);
        v192 = v251[0];
        v193 = v248;
        v194 = *(v248 + 24);
        v195 = v229;
        (*(v186 + 16))(&v229[v194], v240, v68);
        (*(v186 + 56))(&v195[v194], 0, 1, v68);
        (*(v246 + 56))(&v195[v193[7]], 1, 1, v245);
        v196 = v193[9];
        v197 = type metadata accessor for ArticleUserInfoModel();
        (*(*(v197 - 8) + 56))(&v195[v196], 1, 1, v197);
        (*(v113 + 56))(&v195[v193[10]], 1, 1, v250);
        *v195 = v192;
        v195[1] = 2;
        v198 = &v195[v193[8]];
        *v198 = 0;
        v198[1] = 0;
        v199 = &v195[v193[11]];
        *v199 = v185;
        v199[8] = 0;
        v200 = &v195[v193[12]];
        *v200 = xmmword_2208B2020;
        *(v200 + 2) = 0;
        *(v200 + 3) = 0;
        v201 = &v195[v193[13]];
        *v201 = 0;
        v201[1] = 0;
        sub_220448D90(&qword_2812960B8, type metadata accessor for StocksActivityUserInfo);
        v202 = v249;
        v203 = sub_2208849CC();
        if (v202)
        {

          sub_22076087C(v195, type metadata accessor for StocksActivityUserInfo);
          (*(v186 + 8))(v240, v68);
          return sub_22076087C(v241, type metadata accessor for StocksActivity.StockFeed);
        }

        else
        {
          v219 = v203;

          sub_22076087C(v195, type metadata accessor for StocksActivityUserInfo);
          (*(v186 + 8))(v240, v68);
          sub_22076087C(v241, type metadata accessor for StocksActivity.StockFeed);
          return v219;
        }
      }

      return result;
    }

    goto LABEL_45;
  }

  sub_2206A1D94();
  v70 = *(v69 + 48);
  v71 = v238;
  sub_2207608DC(v66, v238, type metadata accessor for ForYouSectionDescriptor);
  sub_220760BEC(v71, v31, type metadata accessor for ForYouSectionDescriptor);
  v72 = swift_getEnumCaseMultiPayload();
  v73 = v250;
  if ((v72 - 1) < 2)
  {
    sub_22076087C(v31, type metadata accessor for ForYouSectionDescriptor);
    sub_220760944();
    swift_allocError();
    *v74 = 0;
    v74[1] = 0;
    swift_willThrow();
    v75 = v71;
LABEL_40:
    sub_22076087C(v75, type metadata accessor for ForYouSectionDescriptor);
    v218 = sub_22088CC6C();
    return (*(*(v218 - 8) + 8))(&v66[v70], v218);
  }

  if (v72)
  {
    sub_2208849EC();
    swift_allocObject();
    sub_2208849DC();
    StocksActivity.type.getter(v251);
    v207 = v251[0];
    v208 = v248;
    v209 = v225;
    (*(v247 + 56))(&v225[*(v248 + 24)], 1, 1, v68);
    (*(v246 + 56))(&v209[v208[7]], 1, 1, v245);
    v210 = v208[9];
    v211 = type metadata accessor for ArticleUserInfoModel();
    (*(*(v211 - 8) + 56))(&v209[v210], 1, 1, v211);
    (*(v243 + 56))(&v209[v208[10]], 1, 1, v73);
    *v209 = v207;
    v209[1] = 0;
    v212 = &v209[v208[8]];
    *v212 = 0;
    v212[1] = 0;
    v213 = &v209[v208[11]];
    *v213 = 0;
    v213[8] = 1;
    v214 = &v209[v208[12]];
    *v214 = xmmword_2208B2020;
    *(v214 + 2) = 0;
    *(v214 + 3) = 0;
    v215 = &v209[v208[13]];
    *v215 = 0;
    v215[1] = 0;
    sub_220448D90(&qword_2812960B8, type metadata accessor for StocksActivityUserInfo);
    v216 = v249;
    v217 = sub_2208849CC();
    if (!v216)
    {
      v222 = v217;

      sub_22076087C(v209, type metadata accessor for StocksActivityUserInfo);
      sub_22076087C(v238, type metadata accessor for ForYouSectionDescriptor);
      v223 = sub_22088CC6C();
      (*(*(v223 - 8) + 8))(&v66[v70], v223);
      return v222;
    }

    sub_22076087C(v209, type metadata accessor for StocksActivityUserInfo);
    v75 = v238;
    goto LABEL_40;
  }

  *&v241 = v70;
  *&v242 = v66;
  v152 = v247;
  v153 = v227;
  (*(v247 + 32))(v227, v31, v68);
  sub_2208849EC();
  swift_allocObject();
  sub_2208849DC();
  StocksActivity.type.getter(v251);
  v154 = v251[0];
  v155 = v248;
  v156 = *(v248 + 24);
  v157 = v226;
  (*(v152 + 16))(&v226[v156], v153, v68);
  (*(v152 + 56))(&v157[v156], 0, 1, v68);
  (*(v246 + 56))(&v157[v155[7]], 1, 1, v245);
  v158 = v155[9];
  v159 = type metadata accessor for ArticleUserInfoModel();
  (*(*(v159 - 8) + 56))(&v157[v158], 1, 1, v159);
  (*(v243 + 56))(&v157[v155[10]], 1, 1, v73);
  *v157 = v154;
  v157[1] = 1;
  v160 = &v157[v155[8]];
  *v160 = 0;
  v160[1] = 0;
  v161 = &v157[v155[11]];
  *v161 = 0;
  v161[8] = 1;
  v162 = &v157[v155[12]];
  *v162 = xmmword_2208B2020;
  *(v162 + 2) = 0;
  *(v162 + 3) = 0;
  v163 = &v157[v155[13]];
  *v163 = 0;
  v163[1] = 0;
  sub_220448D90(&qword_2812960B8, type metadata accessor for StocksActivityUserInfo);
  v164 = v249;
  v165 = sub_2208849CC();
  if (v164)
  {

    sub_22076087C(v157, type metadata accessor for StocksActivityUserInfo);
    (*(v152 + 8))(v153, v68);
    sub_22076087C(v238, type metadata accessor for ForYouSectionDescriptor);
    v166 = sub_22088CC6C();
    return (*(*(v166 - 8) + 8))(v242 + v241, v166);
  }

  else
  {
    v220 = v165;

    sub_22076087C(v157, type metadata accessor for StocksActivityUserInfo);
    (*(v152 + 8))(v153, v68);
    sub_22076087C(v238, type metadata accessor for ForYouSectionDescriptor);
    v221 = sub_22088CC6C();
    (*(*(v221 - 8) + 8))(v242 + v241, v221);
    return v220;
  }
}

uint64_t sub_2207607F4(uint64_t a1)
{
  sub_220448068(0, &qword_281285B20, &qword_281285B30, &protocol descriptor for ArticleScienceDataProviderType, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22076087C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2207608DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_220760944()
{
  result = qword_27CF59590;
  if (!qword_27CF59590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59590);
  }

  return result;
}

unint64_t sub_220760998()
{
  result = qword_2812960D0;
  if (!qword_2812960D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812960D0);
  }

  return result;
}

uint64_t sub_2207609EC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_220760A00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220447700(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_220760A70()
{
  result = qword_281299838;
  if (!qword_281299838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281299838);
  }

  return result;
}

unint64_t sub_220760AC4()
{
  result = qword_281299840;
  if (!qword_281299840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281299840);
  }

  return result;
}

uint64_t sub_220760B18(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220447700(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_220760B98()
{
  result = qword_27CF59598;
  if (!qword_27CF59598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59598);
  }

  return result;
}

uint64_t sub_220760BEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_220760C54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220760998();
    v7 = a3(a1, &type metadata for StocksActivityUserInfo.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220760CB8()
{
  result = qword_2812960E8;
  if (!qword_2812960E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812960E8);
  }

  return result;
}

unint64_t sub_220760D0C()
{
  result = qword_281291A68;
  if (!qword_281291A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281291A68);
  }

  return result;
}

unint64_t sub_220760D60()
{
  result = qword_281293EE0;
  if (!qword_281293EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281293EE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StocksActivityUserInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StocksActivityUserInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220760F18()
{
  result = qword_27CF595A0;
  if (!qword_27CF595A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF595A0);
  }

  return result;
}

unint64_t sub_220760F70()
{
  result = qword_2812960C0;
  if (!qword_2812960C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812960C0);
  }

  return result;
}

unint64_t sub_220760FC8()
{
  result = qword_2812960C8;
  if (!qword_2812960C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812960C8);
  }

  return result;
}

uint64_t sub_22076103C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_220761108()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_2207611D0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_220761288()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

id sub_22076137C(void *a1, void *a2)
{
  type metadata accessor for WatchlistCreationAlert.Localization();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  sub_220884CAC();

  v7 = sub_22089132C();

  [a1 setPlaceholder_];

  type metadata accessor for Localized();
  v8 = swift_getObjCClassFromMetadata();
  v9 = [v5 bundleForClass_];
  sub_220884CAC();

  v10 = sub_22089132C();

  [a1 setAccessibilityLabel_];

  if (a2)
  {
    v11 = [v5 bundleForClass_];
    sub_220884CAC();

    v12 = sub_22089132C();

    [a2 setText_];
  }

  [a1 setEnablesReturnKeyAutomatically_];
  [a1 setReturnKeyType_];

  return [a1 setAutocapitalizationType_];
}

uint64_t sub_2207616D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_220888CFC();

  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  v7 = sub_220888D9C();
  v8 = sub_220888E4C();

  return v8;
}

void sub_220761858(void *a1, uint64_t a2, char *a3)
{
  v80 = a2;
  v87 = sub_2208887CC();
  v103 = *(v87 - 8);
  MEMORY[0x28223BE20](v87, v5);
  v86 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220762514(0, &qword_281298898, MEMORY[0x277D6CBF0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v100 = &v74 - v9;
  v96 = sub_22088880C();
  v101 = *(v96 - 8);
  MEMORY[0x28223BE20](v96, v10);
  v85 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_220884E9C();
  v12 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v13);
  v99 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v98 = &v74 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v97 = &v74 - v20;
  v79 = sub_22088831C();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79, v21);
  v77 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = swift_allocObject();
  *(v81 + 16) = a3;
  v23 = MEMORY[0x277D84560];
  sub_220762514(0, &qword_28127E130, MEMORY[0x277D6CCC0], MEMORY[0x277D84560]);
  sub_220888A9C();
  v24 = swift_allocObject();
  v104 = xmmword_220899360;
  *(v24 + 16) = xmmword_220899360;
  sub_220762514(0, &qword_28127E140, MEMORY[0x277D6CCA0], v23);
  v25 = *(sub_220888A2C() - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v104;
  v28 = (v27 + v26);
  *v28 = 0x6C6F626D7973;
  v28[1] = 0xE600000000000000;
  (*(v25 + 104))();
  _Block_copy(a3);
  sub_2205CEF04(MEMORY[0x277D84F90]);
  v102 = v24;
  sub_220888A3C();
  v29 = [a1 documentController];
  if (!v29)
  {
    (*(a3 + 2))(a3);
    v62 = objc_allocWithZone(MEMORY[0x277D30EA8]);
    v109 = nullsub_1;
    v110 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v106 = 1107296256;
    v107 = sub_2204C35E8;
    v108 = &block_descriptor_38;
    v63 = _Block_copy(&aBlock);

    v64 = [v62 initWithBlock_];
    _Block_release(v63);
    if (v64)
    {

      goto LABEL_31;
    }

    goto LABEL_36;
  }

  v75 = v29;
  v30 = [v29 additions];
  sub_220762578();
  v31 = sub_2208916EC();

  v32 = v31 & 0xFFFFFFFFFFFFFF8;
  if (v31 >> 62)
  {
LABEL_34:
    v33 = sub_2208926AC();
  }

  else
  {
    v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = v88;
  v74 = a3;
  if (!v33)
  {
    v76 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v35 = 0;
  v36 = 0;
  *&v104 = v31 & 0xC000000000000001;
  v92 = (v12 + 16);
  v93 = (v12 + 32);
  v91 = (v12 + 8);
  v90 = (v101 + 56);
  v84 = (v101 + 32);
  v83 = (v103 + 8);
  v82 = (v101 + 8);
  v76 = MEMORY[0x277D84F90];
  v103 = v33;
  v94 = v32;
  v95 = v31;
  do
  {
    v37 = v35;
    v38 = v34;
    while (1)
    {
      if (v104)
      {
        v39 = MEMORY[0x223D8A700](v37, v31);
      }

      else
      {
        if (v37 >= *(v32 + 16))
        {
          goto LABEL_33;
        }

        v39 = *(v31 + 8 * v37 + 32);
      }

      a3 = v39;
      v35 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      objc_opt_self();
      v40 = swift_dynamicCastObjCClass();
      if (v40)
      {
        break;
      }

LABEL_8:

      ++v37;
      if (v35 == v103)
      {
        goto LABEL_29;
      }
    }

    v12 = v40;
    v41 = a3;
    v42 = [v12 URL];
    if (!v42)
    {

      goto LABEL_8;
    }

    v101 = v41;
    v43 = v98;
    v44 = v42;
    sub_220884E4C();

    v45 = v97;
    (*v93)(v97, v43, v38);
    (*v92)(v99, v45, v38);
    sub_220888A0C();
    swift_allocObject();
    v46 = sub_2208889EC();
    v47 = v38;
    v48 = v100;
    v12 = v46;
    sub_2208889FC();
    if (v36)
    {

      (*v91)(v45, v47);
      (*v90)(v48, 1, 1, v96);
      sub_2207625C4(v48);
      v36 = 0;
      v32 = v94;
      v31 = v95;
      v38 = v47;
      goto LABEL_8;
    }

    v89 = 0;
    v49 = v96;
    (*v90)(v48, 0, 1, v96);
    v50 = v85;
    (*v84)(v85, v48, v49);
    v51 = v86;
    sub_2208887EC();
    v12 = sub_2208887BC();
    v53 = v52;

    v54 = v101;

    (*v83)(v51, v87);
    v55 = v50;
    v56 = v53;
    v38 = v88;
    (*v82)(v55, v49);
    (*v91)(v45, v38);
    if (!v56)
    {
      v32 = v94;
      v31 = v95;
      v36 = v89;
      goto LABEL_8;
    }

    v34 = v38;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v76 = sub_22045E924(0, *(v76 + 2) + 1, 1, v76);
    }

    v36 = v89;
    v58 = *(v76 + 2);
    v57 = *(v76 + 3);
    v59 = v103;
    if (v58 >= v57 >> 1)
    {
      v76 = sub_22045E924((v57 > 1), v58 + 1, 1, v76);
      v59 = v103;
    }

    v60 = v76;
    *(v76 + 2) = v58 + 1;
    v61 = &v60[16 * v58];
    *(v61 + 4) = v12;
    *(v61 + 5) = v56;
    v32 = v94;
    v31 = v95;
  }

  while (v35 != v59);
LABEL_29:

  __swift_project_boxed_opaque_existential_1((v80 + OBJC_IVAR____TtC8StocksUI19LinkedStockProvider_metadataManager), *(v80 + OBJC_IVAR____TtC8StocksUI19LinkedStockProvider_metadataManager + 24));
  v65 = v78;
  v66 = v77;
  v67 = v79;
  (*(v78 + 104))(v77, *MEMORY[0x277D6CA28], v79);
  a3 = v76;
  sub_22088628C();
  (*(v65 + 8))(v66, v67);
  v68 = swift_allocObject();
  v69 = v81;
  *(v68 + 16) = sub_2205889EC;
  *(v68 + 24) = v69;

  v70 = sub_220888D9C();
  type metadata accessor for LinkedStockProvider();
  sub_220888E5C();

  v71 = objc_allocWithZone(MEMORY[0x277D30EA8]);
  v109 = nullsub_1;
  v110 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v106 = 1107296256;
  v107 = sub_2204C35E8;
  v108 = &block_descriptor_7;
  v72 = _Block_copy(&aBlock);

  v73 = [v71 initWithBlock_];
  _Block_release(v72);
  if (!v73)
  {
    _Block_release(v74);
    __break(1u);
LABEL_36:
    _Block_release(a3);
    __break(1u);
    return;
  }

LABEL_31:
}

void sub_220762514(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_220762578()
{
  result = qword_28127E8E0;
  if (!qword_28127E8E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E8E0);
  }

  return result;
}

uint64_t sub_2207625C4(uint64_t a1)
{
  sub_220762514(0, &qword_281298898, MEMORY[0x277D6CBF0], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2207626A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC8StocksUI23StockListViewController_toolbarState) == 2)
    {
LABEL_9:

      return;
    }

    sub_2204A0BAC(*(Strong + OBJC_IVAR____TtC8StocksUI23StockListViewController_toolbarState) & 1, HIBYTE(*(Strong + OBJC_IVAR____TtC8StocksUI23StockListViewController_toolbarState)) & 1);
    if (sub_22088F0DC())
    {
      sub_22044D56C(0, &qword_28127E850);
      v2 = sub_2208916DC();
      v5.receiver = v1;
      v5.super_class = type metadata accessor for StockListViewController();
      objc_msgSendSuper2(&v5, sel_setToolbarItems_animated_, v2, 1);
    }

    else
    {
      v3 = sub_220891C4C();
      if (!v3)
      {
LABEL_8:

        goto LABEL_9;
      }

      v4 = v3;
      sub_22044D56C(0, &qword_28127E850);
      v2 = sub_2208916DC();
      [v4 setToolbarItems:v2 animated:1];
    }

    goto LABEL_8;
  }
}

uint64_t sub_2207627D8(unsigned __int8 *a1, char *a2)
{
  v3 = *a1;
  v4 = [a2 editButtonItem];
  [v4 setEnabled_];

  v5 = sub_220891CBC();
  v6 = [v5 rightBarButtonItem];

  [v6 setEnabled_];
  v7 = *(*&a2[OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler] + 40);
  ObjectType = swift_getObjectType();
  return (*(v7 + 136))(v3, 0, 0, ObjectType, v7);
}

void sub_2207628B4(void *a1)
{
  v2 = OBJC_IVAR____TtC8StocksUI23StockListViewController_scrollTracker;
  *(v1 + v2) = [objc_allocWithZone(sub_22088AE6C()) init];
  *(v1 + OBJC_IVAR____TtC8StocksUI23StockListViewController_backgroundView) = 0;
  *(v1 + OBJC_IVAR____TtC8StocksUI23StockListViewController____lazy_storage___exchangeStatusToolbarItem) = 0;
  *(v1 + OBJC_IVAR____TtC8StocksUI23StockListViewController_toolbarState) = 2;
  v3 = v1 + OBJC_IVAR____TtC8StocksUI23StockListViewController_lastContentOffset;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v4 = OBJC_IVAR____TtC8StocksUI23StockListViewController_logger;
  if (qword_281298078 != -1)
  {
    swift_once();
  }

  v5 = sub_22088A84C();
  v6 = __swift_project_value_buffer(v5, qword_2812B6CB8);
  (*(*(v5 - 8) + 16))(v1 + v4, v6, v5);
  *(v1 + OBJC_IVAR____TtC8StocksUI23StockListViewController_contentSizeCategoryObserver) = 0;
  *(v1 + OBJC_IVAR____TtC8StocksUI23StockListViewController_applicationStateObserver) = 0;
  sub_22089267C();
  __break(1u);
}

id sub_220762A34()
{
  ObjectType = swift_getObjectType();
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  [v3 removeObserver:v0 name:*MEMORY[0x277D765F0] object:0];

  v4 = [v2 defaultCenter];
  [v4 removeObserver:v0 name:*MEMORY[0x277D76520] object:0];

  v5 = *&v0[OBJC_IVAR____TtC8StocksUI23StockListViewController_contentSizeCategoryObserver];
  if (v5)
  {
    swift_unknownObjectRetain();
    v6 = [v2 defaultCenter];
    [v6 removeObserver_];
    swift_unknownObjectRelease();
  }

  v7 = *&v0[OBJC_IVAR____TtC8StocksUI23StockListViewController_applicationStateObserver];
  if (v7)
  {
    swift_unknownObjectRetain();
    v8 = [v2 defaultCenter];
    [v8 removeObserver_];
    swift_unknownObjectRelease();
  }

  v10.receiver = v0;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

uint64_t sub_220762DC4()
{
  swift_getObjectType();

  return sub_220886C6C();
}

uint64_t sub_220762E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2A10](a1, ObjectType, a5);
}

uint64_t sub_220762E6C(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2A08](a1, ObjectType);
}

void sub_220762EBC(void *a1, char a2)
{
  ObjectType = swift_getObjectType();
  if (sub_22088F0DC())
  {
    if (a1)
    {
      sub_22044D56C(0, &qword_28127E850);
      a1 = sub_2208916DC();
    }

    v10.receiver = v2;
    v10.super_class = ObjectType;
    objc_msgSendSuper2(&v10, sel_setToolbarItems_animated_, a1, a2 & 1);
  }

  else
  {
    v6 = sub_220891C4C();
    if (v6)
    {
      v7 = v6;
      if (a1)
      {
        sub_22044D56C(0, &qword_28127E850);
        v8 = sub_2208916DC();
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;
      [v7 setToolbarItems_animated_];
    }
  }
}

uint64_t sub_220762FD8(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if (sub_22088F0DC())
    {
      v4 = [v1 searchBar];
      [v4 setLookToDictateEnabled_];

      [v1 setDelegate_];
    }

    else
    {
      sub_2207654A4(v1);
    }

    v5 = OBJC_IVAR____TtC8StocksUI23StockListViewController_styler;
    swift_beginAccess();
    sub_22046DA2C(v3 + v5, v8);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v6 = [v1 searchBar];
    v7 = [v3 traitCollection];
    sub_22087D218(v6, v1, v7);

    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return result;
}

uint64_t sub_220763128(uint64_t a1)
{
  v2 = sub_220884A6C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_220884A5C();

  v7(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_22076321C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = v1;
    if (([v1 isEditing] & 1) == 0)
    {
      v3 = sub_220891CBC();

      v2 = sub_220492C48();
      [v3 setRightBarButtonItem_];
    }
  }
}

void sub_2207632BC(int a1, int a2)
{
  v45 = a1;
  sub_2205EE5D8();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2204D5FA0();
  v9 = v8;
  v47 = *(v8 - 1);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v39[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_22088CC6C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v46 = &v39[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v39[-v19];
  v43 = v2;
  v21 = sub_220891C4C();
  if (v21)
  {
    v23 = v21;
    v24 = v22;
    ObjectType = swift_getObjectType();
    v25 = sub_22088D05C();
    v42 = v24;
    if (v25 >> 62)
    {
      v26 = sub_2208926AC();
      v24 = v42;
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFSUB__(v26, 1))
    {
      __break(1u);
    }

    else
    {
      v41 = v20;
      v40 = a2;
      v50 = sub_22088D06C();
      v27 = MEMORY[0x277D6E270];
      sub_2204A1E8C(0, &qword_28127EA70, MEMORY[0x277D6E270], MEMORY[0x277D83940]);
      v44 = v23;
      sub_22076C6A8(&qword_28127EA68, &qword_28127EA70, v27);
      sub_22089194C();

      v49 = v26 - 1;
      sub_22088862C();
      (*(v47 + 8))(v12, v9);
      if ((*(v14 + 48))(v7, 1, v13) == 1)
      {

        sub_2204A2890(v7, sub_2205EE5D8);
        return;
      }

      v12 = v44;
      v24 = v41;
      (*(v14 + 32))(v41, v7, v13);
      v9 = v46;
      v28 = v45;
      if ((v45 & 1) == 0)
      {
        (*(v14 + 104))(v46, *MEMORY[0x277D6E258], v13);
        sub_22045C20C(&unk_2812976E0, MEMORY[0x277D6E270]);
        v29 = sub_2208912FC();
        v30 = *(v14 + 8);
        v30(v9, v13);
        if (v29)
        {
          v30(v24, v13);

          return;
        }
      }

      v31 = sub_22088A82C();
      v32 = sub_220891AFC();
      v33 = os_log_type_enabled(v31, v32);
      v34 = v40;
      if (v33)
      {
        v35 = swift_slowAlloc();
        *v35 = 67109376;
        *(v35 + 4) = v28 & 1;
        *(v35 + 8) = 1024;
        *(v35 + 10) = v34 & 1;
        _os_log_impl(&dword_22043F000, v31, v32, "Hiding ForYou card ifExpanded=%{BOOL}d, animated=%{BOOL}d", v35, 0xEu);
        MEMORY[0x223D8B7F0](v35, -1, -1);
      }

      v36 = sub_22088D05C();
      if (!(v36 >> 62))
      {
        v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_14;
      }
    }

    v37 = sub_2208926AC();
LABEL_14:

    if (__OFSUB__(v37, 1))
    {
      __break(1u);
    }

    else
    {
      (*(v14 + 104))(v9, *MEMORY[0x277D6E238], v13);
      sub_22088D08C();

      v38 = *(v14 + 8);
      v38(v9, v13);
      v38(v24, v13);
    }
  }
}

void sub_220763878(void *a1, uint64_t a2)
{
  v3 = v2;
  v35 = a1;
  v5 = sub_22088F11C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088F14C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220888C9C();
  v15 = aBlock;
  if (aBlock)
  {
    v33 = v11;
    v34 = v6;
    v16 = [aBlock searchBar];
    if ((sub_22088F0DC() & 1) != 0 && (v17 = [objc_opt_self() currentDevice], v18 = objc_msgSend(v17, sel_userInterfaceIdiom), v17, !v18))
    {
      sub_22076591C(v15);
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v28 = swift_allocObject();
      v28[2] = v35;
      v28[3] = a2;
      v28[4] = v16;
      v28[5] = v27;
      v28[6] = v15;
      v40 = sub_22076C70C;
      v41 = v28;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_2204C35E8;
      v39 = &block_descriptor_53;
      v29 = _Block_copy(&aBlock);

      v30 = v16;
      v31 = v15;

      [v3 presentViewController:v31 animated:1 completion:v29];

      _Block_release(v29);
    }

    else
    {
      v19 = [v15 view];
      if (v19)
      {
        v20 = v19;
        v21 = [v19 superview];

        if (v21)
        {

          sub_220765BE4(v35, a2, v16, v3);
        }

        else
        {
          sub_22044D56C(0, &qword_28127E7C0);
          v32 = sub_220891D0C();
          v22 = swift_allocObject();
          v22[2] = v35;
          v22[3] = a2;
          v22[4] = v16;
          v22[5] = v3;
          v40 = sub_22076C700;
          v41 = v22;
          aBlock = MEMORY[0x277D85DD0];
          v37 = 1107296256;
          v38 = sub_2204C35E8;
          v39 = &block_descriptor_46;
          v23 = _Block_copy(&aBlock);

          v35 = v16;
          v24 = v3;

          sub_22088F13C();
          aBlock = MEMORY[0x277D84F90];
          sub_22045C20C(&qword_281296CA0, MEMORY[0x277D85198]);
          v25 = MEMORY[0x277D85198];
          sub_2204A1E8C(0, &qword_28127EA60, MEMORY[0x277D85198], MEMORY[0x277D83940]);
          sub_22076C6A8(&qword_28127EA50, &qword_28127EA60, v25);
          sub_2208923FC();
          v26 = v32;
          MEMORY[0x223D89EC0](0, v14, v9, v23);
          _Block_release(v23);

          (*(v34 + 8))(v9, v5);
          (*(v33 + 8))(v14, v10);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_220763DB8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler);
    v2 = result;
    swift_unknownObjectRetain();

    __swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72));
    sub_220780C14(0);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_220763E3C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [objc_opt_self() currentDevice];
    v3 = [v2 userInterfaceIdiom];

    LOBYTE(v2) = v3 == 0;
    v4 = *&v1[OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler];
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = 257;
    *(v5 + 26) = v2;
    v6 = *(v4 + 40);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 136);
    v9 = v1;
    v8(1, sub_22076CBC0, v5, ObjectType, v6);
  }

  return result;
}

uint64_t sub_220763F70(uint64_t a1, char a2)
{
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  v7 = *&v2[OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler];
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = a1;
  *(v8 + 25) = a2;
  *(v8 + 26) = v6 == 0;
  v9 = *(v7 + 40);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 136);
  v12 = v2;
  v11(a1, sub_22076CBC0, v8, ObjectType, v9);
}

void sub_220764084(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_22076AC3C(a1);
  }
}

uint64_t sub_220764128@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  sub_22045BE48(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v31 = v30 - v4;
  sub_2204D04A4(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v30 - v11;
  v13 = sub_2208854AC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22088DDBC();
  v18 = *(v14 + 48);
  if (v18(v8, 1, v13) == 1)
  {
    v30[1] = v1;
    sub_22088C71C();
    v19 = sub_22088BFCC();

    v20 = [v19 indexPathsForSelectedItems];

    if (v20)
    {
      v21 = sub_2208916EC();

      if (*(v21 + 16))
      {
        (*(v14 + 16))(v12, v21 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v13);
        v22 = 0;
      }

      else
      {
        v22 = 1;
      }
    }

    else
    {
      v22 = 1;
    }

    (*(v14 + 56))(v12, v22, 1, v13);
    if (v18(v8, 1, v13) != 1)
    {
      sub_2204A2890(v8, sub_2204D04A4);
    }
  }

  else
  {
    (*(v14 + 32))(v12, v8, v13);
    (*(v14 + 56))(v12, 0, 1, v13);
  }

  if (v18(v12, 1, v13) == 1)
  {
    sub_2204A2890(v12, sub_2204D04A4);
    sub_22046B36C();
    return (*(*(v23 - 8) + 56))(v34, 1, 1, v23);
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    sub_22088C73C();
    v35 = v36;
    v25 = MEMORY[0x277D6D8B8];
    sub_22045BE48(0, &qword_281297C88, MEMORY[0x277D6D8B8]);
    sub_220456038(&qword_281297C90, &qword_281297C88, v25);
    v26 = v31;
    sub_22088BF9C();

    v28 = v33;
    v27 = v34;
    sub_22088E82C();
    (*(v32 + 8))(v26, v28);
    (*(v14 + 8))(v17, v13);
    sub_22046B36C();
    return (*(*(v29 - 8) + 56))(v27, 0, 1, v29);
  }
}

id sub_22076463C(char *a1, int a2, char a3, char a4)
{
  sub_2204D04A4(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StockListViewController();
  v56.receiver = a1;
  v56.super_class = v12;
  objc_msgSendSuper2(&v56, sel_setEditing_animated_, a2 & 1, a3 & 1);
  if ((a2 & 1) == 0)
  {
    v19 = sub_220492C48();
    if (!v19)
    {
      goto LABEL_12;
    }

    v20 = v19;
    v53 = a2;
    v21 = sub_220891CBC();
    sub_220493AE8(0, &qword_28127DE50, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    if (a4)
    {
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_22089B120;
      *(v22 + 32) = v20;
      v18 = v20;
      v23 = sub_22089132C();
      v24 = [objc_opt_self() systemImageNamed_];

      v25 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v24 style:0 target:a1 action:sel_presentSearchFromBarButtonItem];
      *(v22 + 40) = v25;
      sub_22044D56C(0, &qword_28127E850);
      v26 = sub_2208916DC();

      [v21 setRightBarButtonItems_];
    }

    else
    {
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_22089B130;
      *(v27 + 32) = v20;
      sub_22044D56C(0, &qword_28127E850);
      v18 = v20;
      v28 = sub_2208916DC();

      [v21 setRightBarButtonItems_];

      v29 = sub_220891CBC();
      v30 = [v29 searchController];

      if (v30)
      {
        v31 = [v30 searchBar];

        [v31 setEnabled_];
      }
    }

    a2 = v53;
    goto LABEL_11;
  }

  v13 = sub_220891CBC();
  sub_220493AE8(0, &qword_28127DE50, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22089B130;
  *(v14 + 32) = [a1 editButtonItem];
  sub_22044D56C(0, &qword_28127E850);
  v15 = sub_2208916DC();

  [v13 setRightBarButtonItems_];

  if ((a4 & 1) == 0)
  {
    v16 = sub_220891CBC();
    v17 = [v16 searchController];

    if (v17)
    {
      v18 = [v17 searchBar];

      [v18 setEnabled_];
LABEL_11:
    }
  }

LABEL_12:
  v32 = sub_220492A40();
  [v32 setNeedsLayout];

  v33 = sub_220492A40();
  [v33 layoutIfNeeded];

  sub_2204A0BAC(a2 & 1, 1);
  if (sub_22088F0DC())
  {
    sub_22044D56C(0, &qword_28127E850);
    v34 = sub_2208916DC();
    v54.receiver = a1;
    v54.super_class = v12;
    objc_msgSendSuper2(&v54, sel_setToolbarItems_animated_, v34, a3 & 1);
  }

  else
  {
    v35 = sub_220891C4C();
    if (!v35)
    {
      goto LABEL_17;
    }

    v36 = v35;
    sub_22044D56C(0, &qword_28127E850);
    v34 = sub_2208916DC();
    [v36 setToolbarItems:v34 animated:a3 & 1];
  }

LABEL_17:

  if (a2)
  {
    v53 = a2;
    swift_getObjectType();
    v37 = sub_2208854AC();
    v38 = *(*(v37 - 8) + 56);
    v38(v11, 1, 1, v37);
    sub_22088DDCC();
    sub_22088C71C();
    v39 = sub_22088BFCC();

    v38(v11, 1, 1, v37);
    sub_220891BDC();

    sub_2204A2890(v11, sub_2204D04A4);
    v40 = sub_22088A82C();
    v41 = sub_220891AFC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_22043F000, v40, v41, "Hiding ForYou card due to entering edit state", v42, 2u);
      MEMORY[0x223D8B7F0](v42, -1, -1);
    }

    sub_2207632BC(1, a3 & 1);
    LOBYTE(a2) = v53;
  }

  else
  {
    v43 = *(*&a1[OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler] + 40);
    ObjectType = swift_getObjectType();
    if (((*(v43 + 32))(ObjectType, v43) & 1) == 0)
    {
      v45 = sub_22088A82C();
      v46 = sub_220891AFC();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_22043F000, v45, v46, "Showing ForYou card due to exiting edit state", v47, 2u);
        MEMORY[0x223D8B7F0](v47, -1, -1);
      }

      sub_2204D5A7C(a3 & 1);
    }
  }

  v48 = objc_opt_self();
  [v48 begin];
  v49 = swift_allocObject();
  *(v49 + 16) = a2 & 1;
  *(v49 + 24) = a1;
  aBlock[4] = sub_22076C730;
  aBlock[5] = v49;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2204C35E8;
  aBlock[3] = &block_descriptor_62;
  v50 = _Block_copy(aBlock);
  a1;

  [v48 setCompletionBlock_];
  _Block_release(v50);
  sub_22088C70C();
  return [v48 commit];
}

void sub_220764E90(char a1, void *a2)
{
  v4 = sub_22088F11C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088F14C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v21 = v12;
    sub_22044D56C(0, &qword_28127E7C0);
    v20 = sub_220891D0C();
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    aBlock[4] = sub_22076C73C;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2204C35E8;
    aBlock[3] = &block_descriptor_68;
    v16 = _Block_copy(aBlock);
    v17 = a2;

    sub_22088F13C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_22045C20C(&qword_281296CA0, MEMORY[0x277D85198]);
    v18 = MEMORY[0x277D85198];
    sub_2204A1E8C(0, &qword_28127EA60, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_22076C6A8(&qword_28127EA50, &qword_28127EA60, v18);
    sub_2208923FC();
    v19 = v20;
    MEMORY[0x223D89EC0](0, v14, v8, v16);
    _Block_release(v16);

    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v14, v21);
  }
}