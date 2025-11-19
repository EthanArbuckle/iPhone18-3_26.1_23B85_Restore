uint64_t sub_2205E33C0()
{
  v34 = type metadata accessor for StockFeedSectionDescriptor();
  MEMORY[0x28223BE20](v34, v0);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205E9AA4(0, &qword_281297DE0, MEMORY[0x277D6D710]);
  v4 = v3;
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v29 - v6;
  sub_22055D1DC();
  v31 = v8 - 8;
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CF9C(0);
  v13 = v12;
  v33 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v29 - v19;
  sub_22088B6BC();
  v35[4] = v35[5];
  sub_2205E9B98(0);
  sub_22044432C(&qword_281297CB0, sub_2205E9B98);
  sub_22088BF9C();

  v21 = *(v33 + 16);
  v32 = v20;
  v21(v16, v20, v13);
  sub_22044432C(&qword_281296F28, sub_22055CF9C);
  sub_2208915BC();
  v22 = *(v31 + 44);
  sub_22044432C(&qword_281296F20, sub_22055CF9C);
  sub_22089199C();
  if (*&v11[v22] == v35[0])
  {
LABEL_5:
    v26 = 0;
  }

  else
  {
    v23 = (v30 + 16);
    v24 = (v30 + 8);
    while (1)
    {
      v25 = sub_2208919BC();
      (*v23)(v7);
      v25(v35, 0);
      sub_2208919AC();
      sub_22088B2AC();
      (*v24)(v7, v4);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      sub_2205E86C4(v2, type metadata accessor for StockFeedSectionDescriptor);
      sub_22089199C();
      if (*&v11[v22] == v35[0])
      {
        goto LABEL_5;
      }
    }

    sub_220459628();
    sub_2205E8724(&v2[*(v27 + 64)], &qword_281296C60, MEMORY[0x277D31C50]);
    v26 = 1;
  }

  sub_2205E86C4(v11, sub_22055D1DC);
  (*(v33 + 8))(v32, v13);
  return v26;
}

uint64_t sub_2205E3858(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ((sub_22088C38C() & 1) == 0)
  {
    return sub_2205E38C8(a3, a4);
  }

  v6 = a3[3];
  v7 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v6);
  return MEMORY[0x223D85A60](0, v6, v7);
}

uint64_t sub_2205E38C8(void *a1, uint64_t a2)
{
  v5 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_22088845C();
  v8 = v7;
  v9 = *(v5 + 88);
  v10 = *(v9 + 96);
  v11 = *(v5 + 80);

  v18 = v10(v6, v8, a2, v11, v9);
  sub_22046DA2C(a1, v17);
  v12 = swift_allocObject();
  sub_220457328(v17, v12 + 16);
  sub_2205E7490(0);
  sub_22044432C(&qword_281297D38, sub_2205E7490);
  sub_22088B6DC();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_1((Strong + 88), *(Strong + 112));
    v14 = off_283424CD8;
    v15 = type metadata accessor for StockFeedTracker();
    v14(v15, &off_283424C98);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_2205E3AD8()
{
  v1 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(*v0 + 128));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v7 + 16))(v0, &off_283415908, v6, v7);
  v8 = *v0;
  sub_2205E9C00(0, &qword_281299050, MEMORY[0x277D69810]);
  v10 = *(v9 + 48);
  v11 = *(v8 + 152);
  v12 = sub_22088685C();
  (*(*(v12 - 8) + 16))(v4, v0 + v11, v12);
  *&v4[v10] = 0;
  type metadata accessor for StocksActivity.StockFeed(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_22088BDBC();
  return sub_2205E86C4(v4, type metadata accessor for StocksActivity);
}

uint64_t sub_2205E3C9C()
{
  v1 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(*v0 + 128));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v7 + 24))(v0, &off_283415908, v6, v7);
  v8 = *v0;
  sub_2205E9C00(0, &qword_281299050, MEMORY[0x277D69810]);
  v10 = *(v9 + 48);
  v11 = *(v8 + 152);
  v12 = sub_22088685C();
  (*(*(v12 - 8) + 16))(v4, v0 + v11, v12);
  *&v4[v10] = 0;
  type metadata accessor for StocksActivity.StockFeed(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_22088BDAC();
  return sub_2205E86C4(v4, type metadata accessor for StocksActivity);
}

uint64_t sub_2205E3E60(unint64_t a1, int a2, unsigned __int8 *a3)
{
  sub_2205EA904(0, &qword_2812995A0, type metadata accessor for StockFeedRouteModel);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v18[-v8];
  v10 = type metadata accessor for StockFeedRouteModel();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *a3;
  v20 = v15;
  sub_2205E4088(a1, a2, &v20, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_2205E8724(v9, &qword_2812995A0, type metadata accessor for StockFeedRouteModel);
  }

  sub_2205E9F58(v9, v14, type metadata accessor for StockFeedRouteModel);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = v15;
    sub_22083D058(v14, &v19, Strong);
    swift_unknownObjectRelease();
  }

  return sub_2205E86C4(v14, type metadata accessor for StockFeedRouteModel);
}

uint64_t sub_2205E4088@<X0>(unint64_t a1@<X0>, int a2@<W1>, unsigned __int8 *a3@<X2>, id *a4@<X8>)
{
  v5 = v4;
  v110 = a2;
  v129 = a4;
  v127 = *v5;
  v8 = sub_220887C9C();
  v120 = *(v8 - 8);
  v121 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v109 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v113 = &v104 - v13;
  v14 = sub_22088822C();
  v114 = *(v14 - 8);
  v115 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v118 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_220884E9C();
  v123 = *(v17 - 8);
  v124 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v111 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205EA904(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v112 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v122 = &v104 - v25;
  v26 = sub_2208876BC();
  MEMORY[0x28223BE20](v26 - 8, v27);
  v119 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22088698C();
  v126 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v30);
  v107 = &v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v108 = &v104 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v128 = (&v104 - v37);
  sub_2205603E4();
  MEMORY[0x28223BE20](v38 - 8, v39);
  v41 = &v104 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454720();
  v43 = v42;
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v45);
  v47 = &v104 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v48, v49);
  v51 = &v104 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = *a3;
  sub_22055D328();
  v125 = a1;
  sub_22088AD8C();
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    v80 = type metadata accessor for StockFeedRouteModel();
    (*(*(v80 - 8) + 56))(v129, 1, 1, v80);
    return sub_2205E86C4(v51, type metadata accessor for StockFeedModel);
  }

  v52 = *(v44 + 32);
  v117 = v47;
  v52(v47, v51, v43);
  Strong = swift_unknownObjectWeakLoadStrong();
  v54 = v127;
  if (Strong)
  {
    sub_22083CE0C(Strong);
    swift_unknownObjectRelease();
  }

  sub_2208903FC();
  v55 = sub_22089030C();
  v56 = (*(*(v55 - 8) + 48))(v41, 1, v55);
  sub_2205E86C4(v41, sub_2205603E4);
  if (v56 != 1)
  {
    v57 = swift_unknownObjectWeakLoadStrong();
    if (v57)
    {
      __swift_project_boxed_opaque_existential_1((v57 + 88), *(v57 + 112));
      sub_22081A674(v125);
      swift_unknownObjectRelease();
    }
  }

  v58 = v128;
  v59 = v117;
  sub_22088FF6C();
  v60 = v126;
  v61 = (*(v126 + 88))(v58, v29);
  if (v61 != *MEMORY[0x277D69850])
  {
    if (v61 == *MEMORY[0x277D69840])
    {
      (*(v44 + 8))(v59, v43);
      (*(v60 + 96))(v58, v29);
      v82 = v129;
      *v129 = *v58;
      type metadata accessor for StocksActivity.Article(0);
      swift_storeEnumTagMultiPayload();
      v83 = type metadata accessor for StockFeedRouteModel();
      swift_storeEnumTagMultiPayload();
      return (*(*(v83 - 8) + 56))(v82, 0, 1, v83);
    }

    goto LABEL_20;
  }

  v106 = v43;
  (*(v60 + 96))(v58, v29);
  v62 = *v58;
  v63 = [*v58 routeURL];
  v105 = v44;
  v104 = v62;
  if (!v63)
  {
    v84 = v122;
    (*(v123 + 56))(v122, 1, 1, v124);
    sub_2205E8724(v84, &qword_2812994E0, MEMORY[0x277CC9260]);
    sub_220887EDC();
    swift_allocObject();
    v85 = sub_220887ECC();
    v86 = *(*v5 + 184);
    *(v5 + v86) = v85;

    v87 = *(v5 + *(*v5 + 136));

    sub_22088AD4C();
    if (*(v5 + v86))
    {
      v130 = v87;
      sub_2205E8780();
      v89 = v88;
      swift_allocObject();

      v124 = sub_2208873CC();
      sub_22088AD4C();
      swift_unknownObjectRetain();
      v90 = v108;
      v79 = v117;
      sub_22088FF6C();
      v91 = v126;
      (*(v126 + 16))(v107, v90, v29);
      sub_2208928FC();
      (*(v91 + 8))(v90, v29);
      sub_2208881DC();
      v131 = v89;
      v132 = sub_22044432C(&unk_281299590, sub_2205E8780);
      v130 = v124;
      v54 = v127;
      swift_getWitnessTable();
      sub_220887E9C();
      swift_allocObject();

      sub_220887E8C();
      v93 = v120;
      v92 = v121;
      v94 = MEMORY[0x277D2FEF8];
      if ((v110 & 1) == 0)
      {
        v94 = MEMORY[0x277D2FF08];
      }

      v95 = v109;
      (*(v120 + 104))(v109, *v94, v121);
      v76 = v119;
      sub_2208876AC();

      v96 = v95;
      v78 = v106;
      (*(v93 + 8))(v96, v92);
      v77 = v129;
      goto LABEL_17;
    }

    __break(1u);
LABEL_20:
    result = sub_2208928AC();
    __break(1u);
    return result;
  }

  v64 = v111;
  v65 = v63;
  sub_220884E4C();

  v67 = v122;
  v66 = v123;
  v68 = v124;
  (*(v123 + 32))(v122, v64, v124);
  v69 = *(v66 + 56);
  v69(v67, 0, 1, v68);
  v70 = MEMORY[0x277CC9260];
  sub_2205E8724(v67, &qword_2812994E0, MEMORY[0x277CC9260]);
  swift_unknownObjectRetain();
  v71 = v118;
  sub_2208881FC();
  v72 = v112;
  v69(v112, 1, 1, v68);
  v74 = v120;
  v73 = v121;
  v75 = v113;
  (*(v120 + 104))(v113, *MEMORY[0x277D2FF08], v121);
  v76 = v119;
  sub_22088767C();
  (*(v74 + 8))(v75, v73);
  sub_2205E8724(v72, &qword_2812994E0, v70);
  (*(v114 + 8))(v71, v115);
  v77 = v129;
  v78 = v106;
  v79 = v117;
LABEL_17:
  sub_2205E89AC(v76, v77, MEMORY[0x277D2FB40]);
  v97 = 2 * (v116 != 0);
  sub_22052EC94();
  v99 = *(v98 + 48);
  sub_2204481D8();
  v101 = (v77 + *(v100 + 64));
  *(v77 + *(v100 + 48)) = v97;
  v101[3] = v54;
  v101[4] = &off_283415930;

  swift_unknownObjectRelease();
  *v101 = v5;
  sub_2205E86C4(v76, MEMORY[0x277D2FB40]);
  (*(v105 + 8))(v79, v78);
  type metadata accessor for StocksActivity.Article(0);
  swift_storeEnumTagMultiPayload();
  v102 = type metadata accessor for StockFeedRouteModel();
  swift_storeEnumTagMultiPayload();
  (*(*(v102 - 8) + 56))(v77, 0, 1, v102);
  v103 = sub_220885CDC();
  return (*(*(v103 - 8) + 8))(v128 + v99, v103);
}

void sub_2205E4E14(uint64_t a1)
{
  v27 = a1;
  v2 = *v1;
  v3 = type metadata accessor for StockEarningsModel();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v7 = sub_220889A6C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v27 - v14;
  v28 = [objc_allocWithZone(MEMORY[0x277CC5A40]) init];
  v16 = [objc_opt_self() authorizationStatusForEntityType_];
  if ((v16 - 1) >= 2)
  {
    if ((v16 - 3) >= 2)
    {
      if (!v16)
      {
        sub_2205E89AC(v27, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StockEarningsModel);
        v23 = (*(v4 + 80) + 40) & ~*(v4 + 80);
        v24 = swift_allocObject();
        v24[2] = *(v2 + 80);
        v24[3] = *(v2 + 88);
        v24[4] = v1;
        sub_2205E9F58(&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for StockEarningsModel);
        aBlock[4] = sub_2205E74B0;
        aBlock[5] = v24;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2205E5518;
        aBlock[3] = &block_descriptor_11;
        v25 = _Block_copy(aBlock);

        [v28 requestWriteOnlyAccessToEventsWithCompletion_];

        _Block_release(v25);
        return;
      }
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v18 = Strong;
        (*(v8 + 104))(v15, *MEMORY[0x277D689A0], v7);
        v19 = swift_unknownObjectWeakLoadStrong();
        if (v19)
        {
          sub_2205E7534(v18, v15, v27, v19);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();

        (*(v8 + 8))(v15, v7);
        return;
      }
    }

    goto LABEL_15;
  }

  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20)
  {
LABEL_15:
    v26 = v28;

    return;
  }

  v21 = v20;
  (*(v8 + 104))(v11, *MEMORY[0x277D68998], v7);
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    sub_2205E7534(v21, v11, v27, v22);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  (*(v8 + 8))(v11, v7);
}

uint64_t sub_2205E5238(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = type metadata accessor for StockEarningsModel();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  sub_2205E89AC(a4, &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StockEarningsModel);
  v11 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v12 = swift_allocObject();
  v12[2] = *(v6 + 80);
  v12[3] = *(v6 + 88);
  v12[4] = a3;
  sub_2205E9F58(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for StockEarningsModel);

  sub_220888FEC();
}

uint64_t sub_2205E53E4(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_220889A6C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    (*(v6 + 104))(v9, *a3, v5);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_2205E7534(v11, v9, a2, Strong);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

void sub_2205E5518(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_2205E5648()
{
  *(v0 + *(*v0 + 184)) = 0;

  sub_2205E2118(0);
  v1 = sub_220620398();
  sub_22044D56C(0, &qword_28127E420);
  v2 = sub_2208922DC();
  sub_220891AFC();
  if (v1)
  {
    sub_22088A7EC();

    sub_2205E5780();
  }

  else
  {
    sub_22088A7EC();
  }
}

void sub_2205E5780()
{
  sub_220888FBC();
  sub_22044D56C(0, &qword_28127E7C0);
  v0 = sub_220891D0C();
  sub_220888E6C();

  v1 = sub_220891D0C();
  sub_220888EAC();
}

uint64_t sub_2205E58D0(uint64_t a1)
{
  v2 = v1;
  v46 = *v1;
  sub_22046EAA0(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v47 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v45 = &v39 - v9;
  v44 = type metadata accessor for StockFeedQuoteData();
  MEMORY[0x28223BE20](v44, v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_220886A4C();
  v13 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_220885D4C();
  v43 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205EA904(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v39 - v23;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v40 = v17;
    v25 = sub_22088676C();
    v26 = *(v25 - 8);
    v27 = *(v26 + 16);
    v41 = a1;
    v27(v24, a1, v25);
    (*(v26 + 56))(v24, 0, 1, v25);
    v28 = (*(v2 + *(*v2 + 120)) + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_watchlistManager);
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    sub_2208863EC();
    sub_2208869CC();
    (*(v13 + 8))(v16, v42);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_2205E8A14(v24, v20, Strong);
      swift_unknownObjectRelease();
    }

    v30 = v40;
    swift_unknownObjectRelease();
    (*(v43 + 8))(v20, v30);
    sub_2205E8724(v24, &qword_2812990C0, MEMORY[0x277D697F8]);
    a1 = v41;
  }

  v31 = sub_22088676C();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v12, a1, v31);
  (*(v32 + 56))(v12, 0, 1, v31);
  v33 = *(v44 + 20);
  v34 = sub_2208855EC();
  (*(*(v34 - 8) + 56))(&v12[v33], 1, 1, v34);
  v35 = v45;
  sub_2205E04EC(v45);
  v36 = v47;
  sub_2205E0728(v47);
  v37 = (*(*(v46 + 88) + 88))(v12, 0, v35, v36, *(v46 + 80));
  sub_2205E86C4(v36, sub_22046EAA0);
  sub_2205E86C4(v35, sub_22046EAA0);
  sub_2205E86C4(v12, type metadata accessor for StockFeedQuoteData);
  v48 = v37;
  sub_2205E7490(0);
  sub_22044432C(&qword_281297D38, sub_2205E7490);
  sub_22088B6DC();
}

uint64_t sub_2205E5EB8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  sub_22046EAA0(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v16 - v12;
  sub_2205E04EC(v16 - v12);
  sub_2205E0728(v9);
  v14 = (*(*(v5 + 88) + 88))(a1, a3, v13, v9, *(v5 + 80));
  sub_2205E86C4(v9, sub_22046EAA0);
  sub_2205E86C4(v13, sub_22046EAA0);
  v16[1] = v14;
  sub_2205E7490(0);
  sub_22044432C(&qword_281297D38, sub_2205E7490);
  sub_22088B6DC();
}

uint64_t sub_2205E6084(void *a1, uint64_t a2)
{
  (*(*(*a2 + 88) + 56))(*a1, *(*a2 + 80));
  sub_2205E7490(0);
  sub_22044432C(&qword_281297D38, sub_2205E7490);
  sub_22088B6DC();
}

void sub_2205E6184()
{
  sub_220891ADC();
  sub_2205E840C(0, &qword_28127DE60, &qword_28127DE10, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_220899360;
  sub_2204446D4(0, &qword_28127DE30);
  sub_22089264C();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_22048D860();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_22044D56C(0, &qword_28127E420);
  v1 = sub_2208922DC();
  sub_22088A7EC();
}

uint64_t sub_2205E62C4(uint64_t a1)
{
  (*(*(*v1 + 88) + 104))(a1, *(*v1 + 80));
  sub_2205E7490(0);
  sub_22044432C(&qword_281297D38, sub_2205E7490);
  sub_22088B6DC();
  sub_2205EA534();

  sub_2208886AC();
}

uint64_t sub_2205E6458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v62 = a2;
  v74 = a1;
  sub_2205EA904(0, &qword_281299820, MEMORY[0x277D2D430]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v63 = &v57 - v6;
  v7 = sub_22088ECCC();
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v57 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_22088971C();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v10);
  v59 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205EA904(0, &qword_2812993D0, MEMORY[0x277CC9AF8]);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v71 = &v57 - v14;
  v70 = sub_2208854AC();
  v73 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v15);
  v72 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205EA904(0, &unk_281297FA0, sub_22055D328);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v57 - v19;
  sub_22055D328();
  v22 = v21;
  v75 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CF9C(0);
  v27 = v26;
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v29);
  v69 = &v57 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v57 - v33;
  v66 = v3;
  v68 = *(v3 + 32);
  sub_22088B6BC();
  v78 = v76[0];
  sub_2205E9B98(0);
  v36 = v35;
  sub_22044432C(&qword_281297CB0, sub_2205E9B98);
  v67 = v36;
  sub_22088BF9C();

  sub_2208881EC();
  sub_22088E70C();
  v37 = v75;

  if ((*(v37 + 48))(v20, 1, v22) == 1)
  {
    (*(v28 + 8))(v34, v27);
    v38 = &unk_281297FA0;
    v39 = sub_22055D328;
    v40 = v20;
    return sub_2205E8724(v40, v38, v39);
  }

  (*(v37 + 32))(v25, v20, v22);
  v41 = v71;
  sub_22088E7EC();
  v42 = v73;
  v43 = v70;
  if ((*(v73 + 48))(v41, 1, v70) == 1)
  {
    (*(v37 + 8))(v25, v22);
    (*(v28 + 8))(v34, v27);
    v38 = &qword_2812993D0;
    v39 = MEMORY[0x277CC9AF8];
    v40 = v41;
    return sub_2205E8724(v40, v38, v39);
  }

  v74 = v22;
  (*(v42 + 32))(v72, v41, v43);
  sub_22088B6BC();
  v78 = v76[0];
  v45 = v69;
  sub_22088BF9C();

  sub_22044432C(&qword_281293DE0, type metadata accessor for StockFeedModel);
  v46 = sub_22088E7FC();
  v47 = *(v28 + 8);
  result = v47(v45, v27);
  if (v46 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v46 > 0x7FFFFFFF)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v48 = v25;
  v71 = v47;
  v49 = v59;
  sub_22088970C();
  sub_22044432C(&qword_281298470, MEMORY[0x277D68720]);
  v50 = v61;
  sub_2208872CC();
  (*(v60 + 8))(v49, v50);
  sub_22044432C(&qword_2812995A8, type metadata accessor for StockFeedSectionDescriptor);
  v51 = v34;
  v52 = v63;
  sub_22088E78C();
  v54 = v64;
  v53 = v65;
  if ((*(v64 + 48))(v52, 1, v65) == 1)
  {
    sub_2205E8724(v52, &qword_281299820, MEMORY[0x277D2D430]);
  }

  else
  {
    v69 = v48;
    v55 = v27;
    v56 = v57;
    (*(v54 + 32))(v57, v52, v53);
    sub_2205EA414(v58, v76);
    if (v77)
    {
      __swift_project_boxed_opaque_existential_1(v76, v77);
      sub_22044432C(&qword_2812995B0, MEMORY[0x277D2D430]);
      sub_22088ED7C();
      (*(v54 + 8))(v56, v53);
      __swift_destroy_boxed_opaque_existential_1(v76);
    }

    else
    {
      (*(v54 + 8))(v56, v53);
      sub_2205EA4A4(v76);
    }

    v27 = v55;
    v48 = v69;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2205EA120(v72);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  (*(v73 + 8))(v72, v43);
  (*(v75 + 8))(v48, v74);
  return (v71)(v51, v27);
}

uint64_t sub_2205E6E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v45 = a2;
  v2 = sub_22088698C();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454720();
  v39 = v5;
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v36 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v42, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205EA904(0, &unk_281297FA0, sub_22055D328);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v36 - v13;
  sub_22055D328();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v18);
  v43 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CF9C(0);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088B6BC();
  v46 = v47;
  sub_2205E9B98(0);
  sub_22044432C(&qword_281297CB0, sub_2205E9B98);
  sub_22088BF9C();

  sub_2208881EC();
  sub_22088E70C();

  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    (*(v22 + 8))(v25, v21);
    sub_2205E8724(v14, &unk_281297FA0, sub_22055D328);
    v26 = sub_2208898CC();
    return (*(*(v26 - 8) + 56))(v45, 1, 1, v26);
  }

  else
  {
    (*(v17 + 32))(v43, v14, v16);
    v28 = v10;
    sub_22088AD8C();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v29 = v36;
      v30 = v37;
      v31 = v28;
      v32 = v39;
      (*(v37 + 32))(v36, v31, v39);
      v33 = v38;
      sub_22088FF6C();
      sub_22057BB68();
      (*(v40 + 8))(v33, v41);
      (*(v30 + 8))(v29, v32);
      (*(v17 + 8))(v43, v16);
      (*(v22 + 8))(v25, v21);
      v34 = sub_2208898CC();
      return (*(*(v34 - 8) + 56))(v45, 0, 1, v34);
    }

    else
    {
      (*(v17 + 8))(v43, v16);
      (*(v22 + 8))(v25, v21);
      v35 = sub_2208898CC();
      (*(*(v35 - 8) + 56))(v45, 1, 1, v35);
      return sub_2205E86C4(v10, type metadata accessor for StockFeedModel);
    }
  }
}

void sub_2205E7454()
{
  sub_2205E2118(1);

  sub_2205E5780();
}

uint64_t sub_2205E74B0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for StockEarningsModel() - 8);
  v6 = *(v2 + 32);
  v7 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_2205E5238(a1, a2, v6, v7);
}

uint64_t sub_2205E7534(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v115 = a4;
  v109 = a3;
  *&v112 = a1;
  sub_2205EA904(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v99 = &v98 - v7;
  v114 = sub_22088990C();
  v111 = *(v114 - 8);
  v8 = *(v111 + 64);
  MEMORY[0x28223BE20](v114, v9);
  v113 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v116 = &v98 - v12;
  v13 = sub_2208853AC();
  v106 = *(v13 - 8);
  v107 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v105 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046EAA0(0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v108 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_22088543C();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104, v19);
  v102 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_2208853CC();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101, v21);
  v110 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_220889A6C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v27 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v98 - v30;
  v34 = MEMORY[0x28223BE20](v32, v33);
  v36 = &v98 - v35;
  v37 = *(v24 + 16);
  v37(&v98 - v35, a2, v23, v34);
  v38 = (*(v24 + 88))(v36, v23);
  if (v38 == *MEMORY[0x277D68998])
  {
    v39 = *(v24 + 104);
    v40 = v31;
    v98 = v31;
    v39(v31, v38, v23);
    v41 = v111;
    v42 = *(v111 + 104);
    v110 = v8;
    v43 = v116;
    v44 = v114;
    v42();
    *&v112 = *(*__swift_project_boxed_opaque_existential_1((v112 + 88), *(v112 + 112)) + 16);
    (v37)(v27, v40, v23);
    v45 = v113;
    (*(v41 + 16))(v113, v43, v44);
    v46 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v47 = (v25 + *(v41 + 80) + v46) & ~*(v41 + 80);
    v48 = swift_allocObject();
    (*(v24 + 32))(v48 + v46, v27, v23);
    (*(v41 + 32))(v48 + v47, v45, v44);
    sub_22088726C();

    (*(v41 + 8))(v116, v44);
    (*(v24 + 8))(v98, v23);
    v123 = &type metadata for CalendarAccessRequestAlert;
    v124 = sub_2205E83B8();
    sub_22088E0CC();
    swift_allocObject();
    sub_22088E07C();
    sub_22088E09C();

    sub_22088E08C();
  }

  if (v38 != *MEMORY[0x277D689A0])
  {
    return (*(v24 + 8))(v36, v23);
  }

  v50 = [objc_allocWithZone(MEMORY[0x277CC5A40]) init];
  v51 = [objc_opt_self() eventWithEventStore_];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v53 = objc_opt_self();
  v54 = v51;
  v113 = v53;
  v114 = ObjCClassFromMetadata;
  v55 = [v53 bundleForClass_];
  sub_220884CAC();

  sub_2205E840C(0, &qword_28127DE60, &qword_28127DE10, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v111 = v56;
  v57 = swift_allocObject();
  v112 = xmmword_220899360;
  *(v57 + 16) = xmmword_220899360;
  v58 = v109;
  v59 = sub_22088684C();
  v61 = v60;
  *(v57 + 56) = MEMORY[0x277D837D0];
  v62 = sub_22048D860();
  *(v57 + 64) = v62;
  *(v57 + 32) = v59;
  *(v57 + 40) = v61;
  sub_22089139C();

  v63 = sub_22089132C();

  [v54 setTitle_];

  v116 = v50;
  v64 = [v50 defaultCalendarForNewEvents];
  [v54 setCalendar_];

  sub_22088538C();
  v65 = type metadata accessor for StockEarningsModel();
  (*(v103 + 16))(v102, v58 + *(v65 + 28), v104);
  sub_22088539C();
  v67 = v106;
  v66 = v107;
  v68 = v105;
  (*(v106 + 104))(v105, *MEMORY[0x277CC9980], v107);
  v69 = v108;
  sub_22088537C();
  (*(v67 + 8))(v68, v66);
  v70 = sub_22088516C();
  v71 = *(v70 - 8);
  result = (*(v71 + 48))(v69, 1, v70);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v72 = sub_22088509C();
  (*(v71 + 8))(v69, v70);
  [v54 setStartDate_];

  v73 = sub_22088509C();
  [v54 setEndDate_];

  [v54 setAllDay_];
  [v54 setAvailability_];
  v74 = sub_22088684C();
  v121 = 0xD000000000000020;
  v122 = 0x80000002208C4FA0;
  MEMORY[0x223D89680](v74);

  v75 = v99;
  sub_220884E8C();

  v76 = sub_220884E9C();
  v77 = *(v76 - 8);
  v78 = 0;
  if ((*(v77 + 48))(v75, 1, v76) != 1)
  {
    v78 = sub_220884E3C();
    (*(v77 + 8))(v75, v76);
  }

  [v54 setURL_];

  v79 = [v113 bundleForClass_];
  sub_220884CAC();

  v80 = swift_allocObject();
  *(v80 + 16) = v112;
  v81 = sub_2208867BC();
  *(v80 + 56) = MEMORY[0x277D837D0];
  *(v80 + 64) = v62;
  *(v80 + 32) = v81;
  *(v80 + 40) = v82;
  v83 = sub_22089139C();
  v85 = v84;

  v86 = sub_2208867BC();
  v88 = v87;
  v89 = sub_2205E0428(v86, v87);
  if (!v90)
  {
    goto LABEL_14;
  }

  if (v89 != 46 || v90 != 0xE100000000000000)
  {
    v91 = sub_2208928BC();

    if (v91)
    {
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

LABEL_13:
  v121 = v83;
  v122 = v85;
  v119 = v86;
  v120 = v88;

  MEMORY[0x223D89680](46, 0xE100000000000000);
  v117 = v86;
  v118 = v88;
  sub_22059B6A4();
  sub_22089236C();

LABEL_15:
  v92 = v115;
  v93 = v101;
  v94 = v100;
  v95 = sub_22089132C();

  [v54 setNotes_];

  v96 = [objc_allocWithZone(MEMORY[0x277CC5B70]) init];
  [v96 setEditViewDelegate_];
  [v96 setEvent_];
  v97 = v116;
  [v96 setEventStore_];
  [v92 presentViewController:v96 animated:1 completion:0];

  return (*(v94 + 8))(v110, v93);
}

uint64_t sub_2205E82E4(uint64_t a1)
{
  v3 = *(sub_220889A6C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_22088990C() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_22081C600(a1, v1 + v4, v7);
}

unint64_t sub_2205E83B8()
{
  result = qword_27CF57768;
  if (!qword_27CF57768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57768);
  }

  return result;
}

void sub_2205E840C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2204446D4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for StockEarningsModel();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  v4 = sub_22088685C();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = v1[5];
  v6 = sub_22088516C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v2 + v5, v6);
  v9 = v1[6];
  if (!(*(v7 + 48))(v0 + v2 + v9, 1, v6))
  {
    v8(v3 + v9, v6);
  }

  v10 = v1[7];
  v11 = sub_22088543C();
  (*(*(v11 - 8) + 8))(v3 + v10, v11);

  return swift_deallocObject();
}

uint64_t sub_2205E86C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2205E8724(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2205EA904(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2205E8780()
{
  if (!qword_281299570)
  {
    sub_2205E88C0();
    sub_22044432C(&qword_281297880, sub_2205E88C0);
    sub_22044432C(&unk_281299578, type metadata accessor for StockFeedLayoutModel);
    sub_22044432C(&qword_28128E7E0, type metadata accessor for StockFeedLayoutModel);
    sub_22044432C(&qword_281299588, type metadata accessor for StockFeedLayoutModel);
    v0 = sub_2208873DC();
    if (!v1)
    {
      atomic_store(v0, &qword_281299570);
    }
  }
}

void sub_2205E88C0()
{
  if (!qword_281297878)
  {
    type metadata accessor for StockFeedLayoutSectionDescriptor(255);
    type metadata accessor for StockFeedLayoutModel();
    sub_22044432C(qword_281283F90, type metadata accessor for StockFeedLayoutSectionDescriptor);
    sub_22044432C(qword_28128E7F8, type metadata accessor for StockFeedLayoutModel);
    v0 = sub_22088C63C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297878);
    }
  }
}

uint64_t sub_2205E89AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2205E8A14(uint64_t a1, uint64_t a2, void *a3)
{
  v133 = a2;
  v134 = sub_220885D4C();
  v132 = *(v134 - 8);
  MEMORY[0x28223BE20](v134, v5);
  v131 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_2208852DC();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130, v7);
  v128 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_2208857EC();
  v125 = *(v127 - 8);
  MEMORY[0x28223BE20](v127, v9);
  v126 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_22088699C();
  v144 = *(v136 - 8);
  MEMORY[0x28223BE20](v136, v11);
  v120 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v142 = &v119 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v19 = (&v119 - v18);
  v20 = MEMORY[0x277D697F8];
  sub_2205EA904(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v119 - v27;
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v119 - v31;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v119 - v35;
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v119 - v39;
  v123 = type metadata accessor for PriceViewModel();
  MEMORY[0x28223BE20](v123, v41);
  v143 = (&v119 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = OBJC_IVAR____TtC8StocksUI23StockFeedViewController_latestQuote;
  swift_beginAccess();
  sub_22056BA7C(a1, a3 + v43);
  swift_endAccess();
  sub_2206434EC();
  sub_2204B27FC(a1, v40, &qword_2812990C0, v20);
  v145 = a3;
  v135 = OBJC_IVAR____TtC8StocksUI23StockFeedViewController_stock;
  v141 = v19;
  sub_2208867CC();
  sub_2204B27FC(v40, v36, &qword_2812990C0, v20);
  v44 = sub_22088676C();
  v45 = *(v44 - 8);
  v46 = *(v45 + 48);
  if (v46(v36, 1, v44) == 1)
  {
    sub_2205E8724(v36, &qword_2812990C0, MEMORY[0x277D697F8]);
    v140 = 0.0;
    LODWORD(v146) = 1;
  }

  else
  {
    v140 = COERCE_DOUBLE(sub_22088675C());
    LODWORD(v146) = v47;
    (*(v45 + 8))(v36, v44);
  }

  sub_2204B27FC(v40, v32, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v46(v32, 1, v44) == 1)
  {
    sub_2205E8724(v32, &qword_2812990C0, MEMORY[0x277D697F8]);
    v137 = 0.0;
    v139 = 1;
  }

  else
  {
    v137 = COERCE_DOUBLE(sub_22088666C());
    v139 = v48;
    (*(v45 + 8))(v32, v44);
  }

  sub_2204B27FC(v40, v28, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v46(v28, 1, v44) == 1)
  {
    sub_2205E8724(v28, &qword_2812990C0, MEMORY[0x277D697F8]);
    v122 = 0;
    LODWORD(v121) = 1;
  }

  else
  {
    v122 = sub_22088671C();
    LODWORD(v121) = v49;
    (*(v45 + 8))(v28, v44);
  }

  v124 = v40;
  sub_2204B27FC(v40, v24, &qword_2812990C0, MEMORY[0x277D697F8]);
  v50 = v46(v24, 1, v44);
  v51 = v136;
  v52 = v144;
  if (v50 == 1)
  {
    sub_2205E8724(v24, &qword_2812990C0, MEMORY[0x277D697F8]);
    v138 = 0;
    v53 = 0;
  }

  else
  {
    v138 = sub_22088668C();
    v53 = v54;
    (*(v45 + 8))(v24, v44);
  }

  v55 = v128;
  v56 = v125;
  v57 = v126;
  v58 = (v52 + 16);
  v59 = *(v52 + 16);
  v60 = v142;
  v59(v142, v141, v51);
  v61 = v127;
  v56[13](v57, *MEMORY[0x277D69288], v127);
  sub_22088524C();
  v62 = v57;
  v63 = v143;
  *v143 = v140;
  *(v63 + 8) = v146 & 1;
  v63[2] = v137;
  *(v63 + 24) = v139 & 1;
  *(v63 + 4) = v122;
  *(v63 + 40) = v121 & 1;
  *(v63 + 6) = v138;
  *(v63 + 7) = v53;
  v128 = v53;
  v64 = v123;
  v122 = *(v123 + 40);
  v65 = v60;
  v66 = v62;
  v126 = v58;
  v125 = v59;
  v59(v63 + v122, v65, v51);
  *(v63 + 8) = 9666786;
  v63[9] = -4.19867257e-140;
  v67 = v56[2];
  v121 = *(v64 + 36);
  v67(v63 + v121, v66, v61);
  v68 = v129;
  v69 = v130;
  (*(v129 + 16))(v63 + *(v64 + 44), v55, v130);
  if (qword_281294078 != -1)
  {
    swift_once();
  }

  v70 = qword_2812B6B48;
  (v56[1])(v66, v61);
  v71 = *(v144 + 8);
  v127 = v144 + 8;
  v71(v142, v51);
  v72 = v141;
  v141 = v71;
  v71(v72, v51);
  sub_2205E8724(v124, &qword_2812990C0, MEMORY[0x277D697F8]);
  v73 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  swift_beginAccess();
  v74 = *(v68 + 40);
  v142 = v70;
  v74(v70 + v73, v55, v69);
  swift_endAccess();
  v76 = v131;
  v75 = v132;
  v77 = v134;
  (*(v132 + 16))(v131, v133, v134);
  v78 = (*(v75 + 88))(v76, v77);
  if (v78 != *MEMORY[0x277D69480])
  {
    if (v78 == *MEMORY[0x277D69468])
    {
      if (((v146 | v139) & 1) == 0)
      {
        if (v140 - v137 <= 0.0)
        {
          v84 = 0.0;
        }

        else
        {
          v84 = v137 / (v140 - v137);
        }

        if (qword_27CF55AB8 == -1)
        {
          goto LABEL_39;
        }

        goto LABEL_71;
      }
    }

    else
    {
      if (v78 != *MEMORY[0x277D69478])
      {
LABEL_73:
        result = sub_2208928AC();
        __break(1u);
        return result;
      }

      if ((sub_2208857CC() & 1) == 0)
      {
        v80 = sub_220691100(0);
        v79 = v89;
        goto LABEL_43;
      }

      if (((v146 | v139) & 1) == 0)
      {
        if (v140 - v137 <= 0.0)
        {
          v84 = 0.0;
        }

        else
        {
          v84 = v137 / (v140 - v137);
        }

        if (qword_27CF55AB8 == -1)
        {
LABEL_39:
          v85 = qword_27CF6D008;
          v86 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          v87 = [v85 stringFromNumber_];

          if (v87)
          {
            v80 = sub_22089136C();
            v79 = v88;

            goto LABEL_43;
          }

          goto LABEL_41;
        }

LABEL_71:
        swift_once();
        goto LABEL_39;
      }
    }

LABEL_41:
    v79 = 0xA300000000000000;
    v80 = 9666786;
    goto LABEL_43;
  }

  v79 = 0xA300000000000000;
  v80 = 9666786;
  if ((v139 & 1) == 0)
  {
    v81 = v140 >= 5.0;
    if (v140 == 0.0)
    {
      v81 = 1;
    }

    v82 = sub_2204DBC04(v81 & ~v146, v137);
    if (v83)
    {
      v80 = v82;
    }

    else
    {
      v80 = 9666786;
    }

    if (v83)
    {
      v79 = v83;
    }
  }

LABEL_43:
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v91 = [objc_opt_self() bundleForClass_];
  v92 = sub_220884CAC();

  sub_2205E840C(0, &qword_28127DE60, &qword_28127DE10, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_22089B140;
  v94 = sub_22088684C();
  v96 = v95;
  v97 = MEMORY[0x277D837D0];
  *(v93 + 56) = MEMORY[0x277D837D0];
  v98 = sub_22048D860();
  *(v93 + 64) = v98;
  *(v93 + 32) = v94;
  *(v93 + 40) = v96;
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298FC0 != -1)
  {
    swift_once();
  }

  sub_220886B9C();

  v99 = 9666786;
  if (v146)
  {
    v100 = 0xA300000000000000;
  }

  else
  {
    v101 = v140;
    if (v147)
    {
      v146 = v92;
      v102 = v80;
      v103 = v144;
      v104 = v120;
      v105 = v136;
      (v125)(v120, v143 + v122, v136);
      v106 = (*(v103 + 88))(v104, v105);
      v107 = 2;
      if (v106 == *MEMORY[0x277D69898])
      {
        v99 = 9666786;
        v108 = v138;
        v80 = v102;
      }

      else
      {
        v99 = 9666786;
        v108 = v138;
        v80 = v102;
        if (v106 != *MEMORY[0x277D698A0] && v106 != *MEMORY[0x277D69870] && v106 != *MEMORY[0x277D69888] && v106 != *MEMORY[0x277D69878] && v106 != *MEMORY[0x277D69890])
        {
          if (v106 == *MEMORY[0x277D69880])
          {
            v107 = 0;
          }

          else
          {
            if (v106 != *MEMORY[0x277D69868])
            {
              v141(v120, v136);
            }

            v107 = 2;
          }
        }
      }
    }

    else
    {
      v107 = 0;
      v108 = v138;
    }

    v109 = sub_2204BD7B8(v108, v128, 5, 1, v107, v101);
    if (v110)
    {
      v99 = v109;
    }

    v100 = 0xA300000000000000;
    if (v110)
    {
      v100 = v110;
    }
  }

  *(v93 + 96) = v97;
  *(v93 + 104) = v98;
  *(v93 + 72) = v99;
  *(v93 + 80) = v100;
  *(v93 + 136) = v97;
  *(v93 + 144) = v98;
  *(v93 + 112) = v80;
  *(v93 + 120) = v79;

  sub_22089139C();

  v111 = sub_22089132C();

  v112 = v145;
  [v145 setTitle_];

  v113 = [v112 view];
  if (!v113)
  {
    __break(1u);
    goto LABEL_73;
  }

  v114 = v113;

  v115 = [v114 window];

  if (v115)
  {
    v116 = [v115 windowScene];

    if (v116)
    {
      v117 = [v145 title];
      [v116 setTitle_];
    }
  }

  return sub_2205E86C4(v143, type metadata accessor for PriceViewModel);
}

void sub_2205E9AA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockFeedSectionDescriptor();
    v8[1] = type metadata accessor for StockFeedModel();
    v8[2] = sub_22044432C(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
    v8[3] = sub_22044432C(&qword_281293DD0, type metadata accessor for StockFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2205E9C00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2205E9C70()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return MEMORY[0x223D85A60](0, v1, v2);
}

void sub_2205E9D08()
{
  if (!qword_281290BC0)
  {
    sub_2205E9D84();
    sub_2205E9DD8();
    v0 = type metadata accessor for DualOfflineManager.State();
    if (!v1)
    {
      atomic_store(v0, &qword_281290BC0);
    }
  }
}

unint64_t sub_2205E9D84()
{
  result = qword_28128D598;
  if (!qword_28128D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128D598);
  }

  return result;
}

unint64_t sub_2205E9DD8()
{
  result = qword_28128D580;
  if (!qword_28128D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128D580);
  }

  return result;
}

void sub_2205E9E2C()
{
  if (!qword_281296900)
  {
    sub_22089030C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281296900);
    }
  }
}

uint64_t sub_2205E9ED8(uint64_t a1, uint64_t a2)
{
  sub_2205EA904(0, &unk_281299470, sub_22046EAA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205E9F58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2205EA040()
{
  if (!qword_28127DDF0)
  {
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127DDF0);
    }
  }
}

void sub_2205EA120(uint64_t a1)
{
  sub_2205EA904(0, &qword_2812993D0, MEMORY[0x277CC9AF8]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v16[-v4];
  sub_22088C72C();
  sub_22088867C();

  if (v16[15] == 1)
  {
    swift_getObjectType();
    v6 = sub_2208854AC();
    v7 = *(v6 - 8);
    (*(v7 + 16))(v5, a1, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    sub_22088DDCC();
  }

  sub_22088C71C();
  v8 = sub_22088BFCC();

  v9 = [v8 indexPathsForVisibleItems];

  v10 = sub_2208854AC();
  v11 = sub_2208916EC();

  v12 = sub_2206FA288(a1, v11);

  sub_22088C71C();
  v13 = sub_22088BFCC();

  if (v12)
  {
    v14 = *(v10 - 8);
    (*(v14 + 16))(v5, a1, v10);
    (*(v14 + 56))(v5, 0, 1, v10);
    sub_220891BDC();

    sub_2205E8724(v5, &qword_2812993D0, MEMORY[0x277CC9AF8]);
  }

  else
  {
    v15 = sub_22088544C();
    [v13 selectItemAtIndexPath:v15 animated:0 scrollPosition:2];
  }
}

uint64_t sub_2205EA414(uint64_t a1, uint64_t a2)
{
  sub_2205E840C(0, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205EA4A4(uint64_t a1)
{
  sub_2205E840C(0, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2205EA534()
{
  result = qword_27CF57778;
  if (!qword_27CF57778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57778);
  }

  return result;
}

uint64_t sub_2205EA58C(uint64_t a1)
{
  v2 = v1;
  v23 = a1;
  v3 = *v1;
  v25 = sub_220886A4C();
  v4 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_220885D4C();
  v8 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D697C0];
  sub_2205EA904(0, &unk_2812990E0, MEMORY[0x277D697C0]);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v22 - v15;
  v22[1] = v3[14];
  v17 = sub_22088665C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, v23, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  v19 = (*(v2 + *(*v2 + 120)) + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_watchlistManager);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  sub_2208863EC();
  sub_2208869CC();
  (*(v4 + 8))(v7, v25);
  v20 = (*(v3[11] + 120))(v16, v11, v3[10]);
  (*(v8 + 8))(v11, v24);
  sub_2205E8724(v16, &unk_2812990E0, v12);
  v26 = v20;
  sub_2205E7490(0);
  sub_22044432C(&qword_281297D38, sub_2205E7490);
  sub_22088B6DC();
}

void sub_2205EA904(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

char *sub_2205EA96C(double a1, double a2, double a3)
{
  v6 = sub_2205EAB4C(a1, a2, a3);
  v20 = MEMORY[0x277D84F90];
  result = sub_2204B40D4(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    goto LABEL_30;
  }

  result = v20;
  v8 = 0;
  v9 = 0;
  if (!v6)
  {
    v12 = a1;
    goto LABEL_16;
  }

  v10 = a1;
  do
  {
    v11 = v10 <= a2;
    if (a3 > 0.0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      if (v8 & 1 | (v10 != a2))
      {
        goto LABEL_28;
      }

      v8 = 1;
      v12 = v10;
    }

    else
    {
      v13 = __OFADD__(v9++, 1);
      if (v13)
      {
        goto LABEL_29;
      }

      v12 = a1 + v9 * a3;
    }

    v21 = result;
    v15 = *(result + 2);
    v14 = *(result + 3);
    if (v15 >= v14 >> 1)
    {
      sub_2204B40D4((v14 > 1), v15 + 1, 1);
      result = v21;
    }

    *(result + 2) = v15 + 1;
    *&result[8 * v15 + 32] = v10;
    v10 = v12;
    --v6;
  }

  while (v6);
  while (1)
  {
LABEL_16:
    v16 = v12 <= a2;
    if (a3 > 0.0)
    {
      v16 = v12 >= a2;
    }

    if (!v16)
    {
      break;
    }

    if ((v12 != a2) | v8 & 1)
    {
      return result;
    }

    v8 = 1;
    v17 = v12;
LABEL_23:
    v22 = result;
    v19 = *(result + 2);
    v18 = *(result + 3);
    if (v19 >= v18 >> 1)
    {
      sub_2204B40D4((v18 > 1), v19 + 1, 1);
      result = v22;
    }

    *(result + 2) = v19 + 1;
    *&result[8 * v19 + 32] = v12;
    v12 = v17;
  }

  v13 = __OFADD__(v9++, 1);
  if (!v13)
  {
    v17 = a1 + v9 * a3;
    goto LABEL_23;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_2205EAB4C(double a1, double a2, double a3)
{
  result = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1;
  do
  {
    v8 = v6 <= a2;
    if (a3 > 0.0)
    {
      v8 = v6 >= a2;
    }

    if (v8)
    {
      if ((v6 != a2) | v4 & 1)
      {
        return result;
      }

      v4 = 1;
    }

    else
    {
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_12;
      }

      v6 = a1 + v5 * a3;
    }

    v7 = __OFADD__(result++, 1);
  }

  while (!v7);
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t ShareLinkContext.hashValue.getter()
{
  v1 = *v0;
  sub_2208929EC();
  MEMORY[0x223D8ABA0](v1);
  return sub_220892A2C();
}

uint64_t ShareLinkProvider.shareLink(for:)@<X0>(uint64_t a1@<X8>)
{
  sub_220479EE4(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v15 - v5;
  v7 = sub_220884E9C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_220891DCC();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2205EB28C(v6, &qword_2812994E0, MEMORY[0x277CC9260]);
    v12 = 1;
  }

  else
  {
    v13 = *(v8 + 32);
    v13(v11, v6, v7);
    if (*(v1 + 16))
    {
      sub_2205EAE58(v11, a1);
      (*(v8 + 8))(v11, v7);
    }

    else
    {
      v13(a1, v11, v7);
    }

    v12 = 0;
  }

  return (*(v8 + 56))(a1, v12, 1, v7);
}

uint64_t sub_2205EAE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_220479EE4(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v23 - v6;
  sub_220479EE4(0, &qword_281299510, MEMORY[0x277CC8958]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v23 - v10;
  v12 = sub_220884B5C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220884ACC();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2205EB28C(v11, &qword_281299510, MEMORY[0x277CC8958]);
    v17 = sub_220884E9C();
    return (*(*(v17 - 8) + 16))(a2, a1, v17);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v19 = sub_220884AFC();
    v23 = 0x79616C50776F6E2FLL;
    v24 = 0xEB00000000676E69;
    MEMORY[0x223D89680](v19);

    MEMORY[0x223D7CCB0](v23, v24);
    sub_220884ADC();
    (*(v13 + 8))(v16, v12);
    v20 = sub_220884E9C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    if (v22(v7, 1, v20) == 1)
    {
      (*(v21 + 16))(a2, a1, v20);
      result = v22(v7, 1, v20);
      if (result != 1)
      {
        return sub_2205EB28C(v7, &qword_2812994E0, MEMORY[0x277CC9260]);
      }
    }

    else
    {
      return (*(v21 + 32))(a2, v7, v20);
    }
  }

  return result;
}

unint64_t sub_2205EB1E8()
{
  result = qword_27CF57780;
  if (!qword_27CF57780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57780);
  }

  return result;
}

uint64_t sub_2205EB28C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_220479EE4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2205EB320(uint64_t a1, char *a2, __int128 *a3)
{
  v7 = type metadata accessor for StockChartCalloutLayoutOptions();
  v8 = (v7 - 8);
  *&v10 = MEMORY[0x28223BE20](v7, v9).n128_u64[0];
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 bounds];
  v14 = v13;
  v16 = v15;
  v17 = type metadata accessor for StockChartRangeCalloutViewModel(0);
  v18 = v17[6];
  v19 = v8[7];
  v20 = sub_2208854FC();
  v21 = *(*(v20 - 8) + 16);
  v22 = a3[1];
  v45 = *a3;
  v44 = v22;
  v21(&v12[v19], a1 + v18, v20);
  v23 = v17[7];
  v24 = v8[8];
  v25 = sub_22088543C();
  (*(*(v25 - 8) + 16))(&v12[v24], a1 + v23, v25);
  v26 = [a2 traitCollection];
  *v12 = v14;
  *(v12 + 1) = v16;
  *&v12[v8[9]] = v26;
  v27 = &v12[v8[10]];
  v28 = v44;
  *v27 = v45;
  *(v27 + 1) = v28;
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_2206E6BA8(a1, a1 + v17[5], v12, v46);
  v29 = v46[0];
  if (v46[0])
  {
    v31 = *&v46[13];
    v30 = *&v46[14];
    v33 = *&v46[11];
    v32 = *&v46[12];
    v34 = v46[10];
    v36 = *&v46[8];
    v35 = *&v46[9];
    v38 = *&v46[6];
    v37 = *&v46[7];
    v39 = v46[5];
    v40 = *&a2[OBJC_IVAR____TtC8StocksUI26StockChartRangeCalloutView_dateLabel];
    [v40 setFrame_];
    [v40 setAdjustsFontSizeToFitWidth_];
    [v40 setAttributedText_];
    v41 = *&a2[OBJC_IVAR____TtC8StocksUI26StockChartRangeCalloutView_priceChangeLabel];
    [v41 setFrame_];
    [v41 setAttributedText_];
    v42 = *&a2[OBJC_IVAR____TtC8StocksUI26StockChartRangeCalloutView_percentageChangeLabel];
    [v42 setFrame_];
    [v42 setAttributedText_];
    sub_2205EB6B4(v46, sub_2205EB714);
  }

  return sub_2205EB6B4(v12, type metadata accessor for StockChartCalloutLayoutOptions);
}

id sub_2205EB648()
{
  v0 = objc_allocWithZone(type metadata accessor for StockChartRangeCalloutView());

  return [v0 initWithFrame_];
}

uint64_t sub_2205EB6B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2205EB714()
{
  if (!qword_27CF57788)
  {
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF57788);
    }
  }
}

uint64_t sub_2205EB7AC@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v62 = a4;
  v63 = a2;
  v60 = a3;
  v64 = a1;
  v66 = a5;
  v59 = type metadata accessor for EmptyListViewLayoutOptions();
  MEMORY[0x28223BE20](v59, v5);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TodayViewLayoutOptions();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v61 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for StockListLayoutModel();
  MEMORY[0x28223BE20](v65, v11);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StockViewLayoutOptions();
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = (&v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22046B36C();
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = *v25;
      v28 = v25[1];
      v30 = v25[2];
      v29 = v25[3];
      v31 = sub_22088C32C();
      v7 = v61;
      (*(*(v31 - 8) + 16))(v61, v63, v31);
      __swift_project_boxed_opaque_existential_1(v64 + 7, v64[10]);
      sub_2204BCCB8(v27, v28, v30, v29, v67);
      *v13 = v27;
      *(v13 + 1) = v28;
      *(v13 + 2) = v30;
      *(v13 + 3) = v29;
      v32 = v67[3];
      *(v13 + 4) = v67[2];
      *(v13 + 5) = v32;
      v33 = v67[5];
      *(v13 + 6) = v67[4];
      *(v13 + 7) = v33;
      v34 = v67[1];
      *(v13 + 2) = v67[0];
      *(v13 + 3) = v34;
      swift_storeEnumTagMultiPayload();
      sub_22045BF94(qword_28128E4D0, type metadata accessor for StockListLayoutModel);
      sub_22088BC2C();
      v35 = type metadata accessor for TodayViewLayoutOptions;
    }

    else
    {
      v49 = sub_22088C32C();
      (*(*(v49 - 8) + 16))(v7, v63, v49);
      v50 = v59;
      v51 = &v7[*(v59 + 20)];
      *v51 = 0;
      v51[8] = 1;
      v52 = &v7[*(v50 + 24)];
      *v52 = 0;
      v52[8] = 1;
      v7[*(v50 + 28)] = 1;
      __swift_project_boxed_opaque_existential_1(v64 + 17, v64[20]);
      sub_2205ECAF0(v7, v67);
      v53 = v67[7];
      *(v13 + 6) = v67[6];
      *(v13 + 7) = v53;
      *(v13 + 8) = v67[8];
      *(v13 + 72) = v67[9];
      v54 = v67[3];
      *(v13 + 2) = v67[2];
      *(v13 + 3) = v54;
      v55 = v67[5];
      *(v13 + 4) = v67[4];
      *(v13 + 5) = v55;
      v56 = v67[1];
      *v13 = v67[0];
      *(v13 + 1) = v56;
      swift_storeEnumTagMultiPayload();
      sub_22045BF94(qword_28128E4D0, type metadata accessor for StockListLayoutModel);
      sub_22088BC2C();
      v35 = type metadata accessor for EmptyListViewLayoutOptions;
    }

    v47 = v35;
    v48 = v7;
  }

  else
  {
    sub_2204BD5B0(v25, v21, type metadata accessor for StockListStockModel);
    v36 = sub_22088C32C();
    (*(*(v36 - 8) + 16))(v17, v63, v36);
    v37 = &v17[v14[5]];
    v38 = v62;
    *v37 = v60;
    *(v37 + 1) = v38;
    *&v17[v14[6]] = 0x4020000000000000;
    *&v17[v14[7]] = 0x4037000000000000;
    v39 = &v17[v14[8]];
    __asm { FMOV            V0.2D, #4.0 }

    *v39 = _Q0;
    *(v39 + 1) = _Q0;
    __swift_project_boxed_opaque_existential_1(v64 + 2, v64[5]);

    sub_2204BE814(v21, v17, v67);
    sub_220455E3C();
    v46 = *(v45 + 48);
    sub_2204BD680(v21, v13, type metadata accessor for StockViewModel);
    memcpy(&v13[v46], v67, 0x150uLL);
    swift_storeEnumTagMultiPayload();
    sub_22045BF94(qword_28128E4D0, type metadata accessor for StockListLayoutModel);
    sub_22088BC2C();
    sub_2204BD394(v17, type metadata accessor for StockViewLayoutOptions);
    v47 = type metadata accessor for StockListStockModel;
    v48 = v21;
  }

  return sub_2204BD394(v48, v47);
}

double sub_2205EBDE0@<D0>(int64_t a1@<X0>, double *a2@<X8>)
{
  v49 = a2;
  v54 = type metadata accessor for StockListLayoutModel();
  MEMORY[0x28223BE20](v54, v6);
  v53 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204BC25C();
  v52 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B9CF0();
  sub_22045BF94(&qword_27CF57790, sub_2204B9CF0);
  v13 = sub_22089197C();
  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    v26 = *(MEMORY[0x277D84F90] + 16);
    if (v26)
    {
      goto LABEL_8;
    }

LABEL_11:
    v4 = 0.0;
    goto LABEL_17;
  }

  v15 = v13;
  v16 = v9;
  v55[0] = MEMORY[0x277D84F90];
  sub_22070BC04(0, v13 & ~(v13 >> 63), 0);
  v17 = v55[0];
  sub_22089193C();
  if (v15 < 0)
  {
    __break(1u);
LABEL_32:
    sub_22070BC04((v18 > 1), a1, 1);
    v37 = v59;
    goto LABEL_19;
  }

  v48[1] = v2;
  v51 = (v16 + 16);
  v50 = (v16 + 8);
  do
  {
    v19 = sub_2208919BC();
    v20 = v52;
    (*v51)(v12);
    v19(v56, 0);
    v21 = v53;
    sub_22088BC3C();
    sub_22045BF94(&unk_28128E4C0, type metadata accessor for StockListLayoutModel);
    sub_22088D90C();
    v23 = v22;
    sub_2204BD394(v21, type metadata accessor for StockListLayoutModel);
    (*v50)(v12, v20);
    v55[0] = v17;
    v25 = *(v17 + 16);
    v24 = *(v17 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_22070BC04((v24 > 1), v25 + 1, 1);
      v17 = v55[0];
    }

    *(v17 + 16) = v25 + 1;
    *(v17 + 8 * v25 + 32) = v23;
    sub_2208919AC();
    --v15;
  }

  while (v15);
  v14 = MEMORY[0x277D84F90];
  v26 = *(v17 + 16);
  if (!v26)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (v26 <= 3)
  {
    v27 = 0;
    v4 = 0.0;
LABEL_15:
    v30 = v26 - v27;
    v31 = (v17 + 8 * v27 + 32);
    do
    {
      v32 = *v31++;
      v4 = v4 + v32;
      --v30;
    }

    while (v30);
    goto LABEL_17;
  }

  v27 = v26 & 0x7FFFFFFFFFFFFFFCLL;
  v28 = (v17 + 48);
  v4 = 0.0;
  v29 = v26 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v4 = v4 + *(v28 - 2) + *(v28 - 1) + *v28 + v28[1];
    v28 += 4;
    v29 -= 4;
  }

  while (v29);
  if (v26 != v27)
  {
    goto LABEL_15;
  }

LABEL_17:

  sub_22088C34C();
  if (v58 >= 2u)
  {
    v41 = 0.0;
    v39 = v49;
    goto LABEL_30;
  }

  sub_2205ED230(0, &qword_28127DFF0, sub_2205ED294, MEMORY[0x277D84560]);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_220899360;
  *(v33 + 56) = &type metadata for StockListSectionHeaderViewLayoutAttributes;
  *(v33 + 64) = sub_2205ED2F8();
  v34 = swift_allocObject();
  *(v33 + 32) = v34;
  v35 = v56[3];
  *(v34 + 48) = v56[2];
  *(v34 + 64) = v35;
  *(v34 + 80) = v57;
  v36 = v56[1];
  *(v34 + 16) = v56[0];
  *(v34 + 32) = v36;
  v59 = v14;
  sub_22070BC04(0, 1, 0);
  v37 = v59;
  sub_22046DA2C(v33 + 32, v55);
  __swift_project_boxed_opaque_existential_1(v55, v55[3]);
  sub_22088D8CC();
  Height = CGRectGetHeight(v60);
  __swift_destroy_boxed_opaque_existential_1(v55);
  v59 = v37;
  v16 = *(v37 + 16);
  v18 = *(v37 + 24);
  a1 = v16 + 1;
  if (v16 >= v18 >> 1)
  {
    goto LABEL_32;
  }

LABEL_19:
  *(v37 + 16) = a1;
  *(v37 + 8 * v16 + 32) = Height;

  v38 = *(v37 + 16);
  v39 = v49;
  if (v38)
  {
    if (v38 > 3)
    {
      v40 = v38 & 0x7FFFFFFFFFFFFFFCLL;
      v42 = (v37 + 48);
      v41 = 0.0;
      v43 = v38 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v41 = v41 + *(v42 - 2) + *(v42 - 1) + *v42 + v42[1];
        v42 += 4;
        v43 -= 4;
      }

      while (v43);
      if (v38 == v40)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v40 = 0;
      v41 = 0.0;
    }

    v44 = v38 - v40;
    v45 = (v37 + 8 * v40 + 32);
    do
    {
      v46 = *v45++;
      v41 = v41 + v46;
      --v44;
    }

    while (v44);
LABEL_29:

    goto LABEL_30;
  }

  v41 = 0.0;
LABEL_30:
  result = v4 + v41;
  *v39 = v4 + v41;
  return result;
}

uint64_t sub_2205EC3C4@<X0>(void *a1@<X1>, uint64_t a2@<X2>, CGRect *a3@<X3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v69 = a4;
  v66 = a2;
  v67 = a1;
  v63 = type metadata accessor for EmptyListViewLayoutOptions();
  MEMORY[0x28223BE20](v63, v9);
  v65 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TodayViewLayoutOptions();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v64 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for StockListLayoutModel();
  MEMORY[0x28223BE20](v68, v14);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StockViewLayoutOptions();
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = (&v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  Height = CGRectGetHeight(*a3);
  sub_22046B36C();
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v31 = *v28;
      v32 = v28[1];
      v33 = v28[2];
      v34 = v28[3];
      v35 = sub_22088C32C();
      v36 = v64;
      (*(*(v35 - 8) + 16))(v64, v66, v35);
      __swift_project_boxed_opaque_existential_1(v67 + 7, v67[10]);
      sub_2204BCCB8(v31, v32, v33, v34, v70);
      *v16 = v31;
      *(v16 + 1) = v32;
      *(v16 + 2) = v33;
      *(v16 + 3) = v34;
      v37 = v70[3];
      *(v16 + 4) = v70[2];
      *(v16 + 5) = v37;
      v38 = v70[5];
      *(v16 + 6) = v70[4];
      *(v16 + 7) = v38;
      v39 = v70[1];
      *(v16 + 2) = v70[0];
      *(v16 + 3) = v39;
      swift_storeEnumTagMultiPayload();
      sub_22045BF94(qword_28128E4D0, type metadata accessor for StockListLayoutModel);
      sub_22088BC2C();
      v40 = type metadata accessor for TodayViewLayoutOptions;
      v41 = v36;
    }

    else
    {
      v52 = sub_22088C32C();
      v53 = v65;
      (*(*(v52 - 8) + 16))(v65, v66, v52);
      v54 = v63;
      v55 = v53 + *(v63 + 20);
      *v55 = a6;
      *(v55 + 8) = 0;
      v56 = v53 + *(v54 + 24);
      *v56 = Height + a5;
      *(v56 + 8) = 0;
      *(v53 + *(v54 + 28)) = 1;
      __swift_project_boxed_opaque_existential_1(v67 + 17, v67[20]);
      sub_2205ECAF0(v53, v70);
      v57 = v70[7];
      *(v16 + 6) = v70[6];
      *(v16 + 7) = v57;
      *(v16 + 8) = v70[8];
      *(v16 + 72) = v70[9];
      v58 = v70[3];
      *(v16 + 2) = v70[2];
      *(v16 + 3) = v58;
      v59 = v70[5];
      *(v16 + 4) = v70[4];
      *(v16 + 5) = v59;
      v60 = v70[1];
      *v16 = v70[0];
      *(v16 + 1) = v60;
      swift_storeEnumTagMultiPayload();
      sub_22045BF94(qword_28128E4D0, type metadata accessor for StockListLayoutModel);
      sub_22088BC2C();
      v40 = type metadata accessor for EmptyListViewLayoutOptions;
      v41 = v53;
    }
  }

  else
  {
    sub_2204BD5B0(v28, v24, type metadata accessor for StockListStockModel);
    v42 = sub_22088C32C();
    (*(*(v42 - 8) + 16))(v20, v66, v42);
    v43 = &v20[v17[5]];
    *v43 = 0;
    *(v43 + 1) = 0;
    *&v20[v17[6]] = 0x4020000000000000;
    *&v20[v17[7]] = 0x4037000000000000;
    v44 = &v20[v17[8]];
    __asm { FMOV            V0.2D, #4.0 }

    *v44 = _Q0;
    *(v44 + 1) = _Q0;
    __swift_project_boxed_opaque_existential_1(v67 + 2, v67[5]);
    sub_2204BE814(v24, v20, v70);
    sub_220455E3C();
    v51 = *(v50 + 48);
    sub_2204BD680(v24, v16, type metadata accessor for StockViewModel);
    memcpy(&v16[v51], v70, 0x150uLL);
    swift_storeEnumTagMultiPayload();
    sub_22045BF94(qword_28128E4D0, type metadata accessor for StockListLayoutModel);
    sub_22088BC2C();
    sub_2204BD394(v20, type metadata accessor for StockViewLayoutOptions);
    v40 = type metadata accessor for StockListStockModel;
    v41 = v24;
  }

  return sub_2204BD394(v41, v40);
}

double sub_2205ECAF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v108 = sub_22088C29C();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108, v6);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088C31C();
  v10 = v9;
  sub_22088C22C();
  sub_220891A7C();
  v12 = v11;
  v13 = type metadata accessor for EmptyListViewLayoutOptions();
  v14 = a1 + *(v13 + 24);
  if (*(v14 + 8))
  {
    v15 = 0.0;
  }

  else
  {
    v15 = *v14;
  }

  v16 = v10 - v12 - v15 + -16.0;
  sub_22088C31C();
  v18 = v17;
  sub_22088C20C();
  v110 = v19;
  v111 = v20;
  v22 = v21;
  v24 = v23;
  v115 = sub_22088C24C();
  sub_22088C22C();
  v26 = v25;
  sub_22088C31C();
  v28 = v27;
  sub_22088C27C();
  v29 = sub_22088C28C();
  v30 = COERCE_DOUBLE([v29 horizontalSizeClass]);

  v31 = *(a1 + *(v13 + 28));
  v112 = v30;
  if (v31)
  {
    v32 = v28 * 0.5 - v26 - v15;
  }

  else
  {
    v118.origin.x = 0.0;
    v118.origin.y = 0.0;
    v118.size.width = v18;
    v118.size.height = v16;
    v32 = v15 + v26 + (CGRectGetHeight(v118) - v26 - v15) * 0.5;
  }

  v104 = v32;
  v33 = v3[5];
  v34 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v33);
  v35 = *(v34 + 8);
  v36 = *(v35 + 8);
  v117[3] = v33;
  v117[4] = v34;
  __swift_allocate_boxed_opaque_existential_1(v117);
  v37 = v115;
  v36(v115, v33, v35);
  v119.origin.x = 0.0;
  v105 = 0.0;
  v119.origin.y = 0.0;
  v119.size.width = v18;
  v116 = v16;
  v119.size.height = v16;
  v38 = CGRectGetWidth(v119) - v24 - v22;
  v106 = v8;
  v114 = v18;
  sub_2206624CC(v37, v8);
  v40 = v39 * v38;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v42 = objc_opt_self();
  v43 = [v42 bundleForClass_];
  v44 = sub_220884CAC();
  v46 = v45;

  v47 = (*(v34 + 16))(v44, v46, v33, v34);

  v48 = [v42 bundleForClass_];
  v49 = v47;
  v50 = sub_220884CAC();
  v52 = v51;

  v53 = (*(v34 + 24))(v50, v52, v33, v34);

  sub_220891EEC();
  [v47 boundingRectWithSize:1 options:0 context:?];
  v102 = v54;
  v101 = v55;
  v100 = v56;
  v113 = v57;
  v58 = v40;
  sub_220891EEC();
  [v53 boundingRectWithSize:1 options:0 context:?];
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v109 = v24;
  v66 = v65;
  v67 = 0.0;
  v68 = v112;
  if (*&v112 != 1)
  {
    sub_220891A6C();
    v67 = v69;
  }

  v94 = v67;
  v120.origin.x = v60;
  v120.origin.y = v62;
  v120.size.width = v64;
  v120.size.height = v66;
  Height = CGRectGetHeight(v120);
  v98 = v64;
  v70 = v105;
  v121.origin.x = v105;
  v121.origin.y = v105;
  v121.size.width = v114;
  v103 = v22;
  v121.size.height = v116;
  Width = CGRectGetWidth(v121);
  v95 = v58;
  v97 = v66;
  v96 = v60;
  v112 = (Width - v58 - v67) * 0.5;
  v72 = v102;
  v122.origin.x = v102;
  v73 = v101;
  v122.origin.y = v101;
  v74 = v100;
  v122.size.width = v100;
  v122.size.height = v113;
  v104 = v104 - CGRectGetHeight(v122);
  v123.origin.x = v60;
  v123.origin.y = v62;
  v123.size.width = v64;
  v123.size.height = v66;
  v75 = v104 - CGRectGetHeight(v123) * 0.5 + -4.0;
  if (v75 > 0.0)
  {
    v76 = v75;
  }

  else
  {
    v76 = 0.0;
  }

  v104 = v76;
  v124.origin.x = v72;
  v124.origin.y = v73;
  v124.size.width = v74;
  v124.size.height = v113;
  v77 = ceil(CGRectGetHeight(v124));
  v113 = v77;
  v125.origin.x = v70;
  v125.origin.y = v70;
  v78 = v114;
  v125.size.width = v114;
  v125.size.height = v116;
  v79 = CGRectGetWidth(v125);
  v80 = v95;
  v81 = (v79 - v95 - v94) * 0.5;
  v102 = v81;
  v126.origin.x = v112;
  v126.origin.y = v76;
  v126.size.width = v95;
  v126.size.height = v77;
  v82 = CGRectGetMaxY(v126) + 4.0;
  v101 = v82;
  v127.origin.x = v96;
  v127.origin.y = v62;
  v127.size.width = v98;
  v127.size.height = v97;
  v83 = ceil(CGRectGetHeight(v127));
  v128.origin.x = v81;
  v128.origin.y = v82;
  v128.size.width = v80;
  v128.size.height = v83;
  v84 = CGRectGetMaxY(v128) + 8.0;
  v85 = Height;
  v86 = Height + v84;
  v129.origin.x = v70;
  v129.origin.y = v70;
  v129.size.width = v78;
  v129.size.height = v116;
  v87 = CGRectGetHeight(v129);

  (*(v107 + 8))(v106, v108);
  if (v87 <= v86)
  {
    v87 = v86;
  }

  __swift_destroy_boxed_opaque_existential_1(v117);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v78;
  *(a2 + 24) = v87;
  *(a2 + 32) = v84;
  *(a2 + 40) = v85;
  v88 = v104;
  *(a2 + 48) = v112;
  *(a2 + 56) = v88;
  v89 = v113;
  *(a2 + 64) = v80;
  *(a2 + 72) = v89;
  v90 = v101;
  *(a2 + 80) = v102;
  *(a2 + 88) = v90;
  *(a2 + 96) = v80;
  *(a2 + 104) = v83;
  v91 = v103;
  *(a2 + 112) = v110;
  *(a2 + 120) = v91;
  result = v109;
  *(a2 + 128) = v111;
  *(a2 + 136) = result;
  *(a2 + 144) = 1;
  *(a2 + 145) = *&v68 != 1;
  return result;
}

void sub_2205ED230(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2205ED294()
{
  result = qword_281297220;
  if (!qword_281297220)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281297220);
  }

  return result;
}

unint64_t sub_2205ED2F8()
{
  result = qword_28127FEA8[0];
  if (!qword_28127FEA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28127FEA8);
  }

  return result;
}

uint64_t sub_2205ED394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
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

id sub_2205ED524()
{
  v1 = v0;
  sub_2204A5DF0();
  inited = swift_initStackObject();
  v3 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_220899920;
  v4 = *v3;
  *(inited + 32) = *v3;
  v5 = v0[7];
  if (v5)
  {
    v6 = v0[7];
  }

  else
  {
    v6 = *MEMORY[0x277D76840];
  }

  v7 = *MEMORY[0x277D76828];
  v8 = v4;
  v9 = v5;
  if (sub_220891DDC())
  {
    v10 = v7;

    v6 = v10;
  }

  v11 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v12 = sub_22044D56C(0, &qword_28127E570);
  v13 = v11;
  v14 = sub_220891F1C();

  v15 = MEMORY[0x277D740C0];
  *(inited + 40) = v14;
  v16 = *v15;
  *(inited + 64) = v12;
  *(inited + 72) = v16;
  v17 = v1[5];
  v18 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v17);
  v19 = *(v18 + 16);
  v20 = *(v19 + 256);
  v21 = v16;
  v22 = v20(v17, v19);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v22;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v23 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v24 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v25 = sub_22089125C();

  v26 = [v23 initWithString:v24 attributes:v25];

  return v26;
}

id sub_2205ED7AC()
{
  sub_2204A5DF0();
  inited = swift_initStackObject();
  v2 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_220899920;
  v3 = *v2;
  *(inited + 32) = *v2;
  v4 = v0[7];
  if (v4)
  {
    v5 = v0[7];
  }

  else
  {
    v5 = *MEMORY[0x277D76840];
  }

  v6 = *MEMORY[0x277D767F8];
  v7 = v3;
  v8 = v4;
  if (sub_220891DDC())
  {
    v9 = v6;

    v5 = v9;
  }

  v10 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v11 = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:v10];

  v12 = sub_22044D56C(0, &qword_28127E570);
  v13 = MEMORY[0x277D740C0];
  *(inited + 40) = v11;
  v14 = *v13;
  *(inited + 64) = v12;
  *(inited + 72) = v14;
  v15 = v0[5];
  v16 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
  v17 = *(v16 + 16);
  v18 = *(v17 + 264);
  v19 = v14;
  v20 = v18(v15, v17);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v20;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v21 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v22 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v23 = sub_22089125C();

  v24 = [v21 initWithString:v22 attributes:v23];

  return v24;
}

uint64_t sub_2205EDA64(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v1)
    {
      swift_getObjectType();
      v3 = sub_22088CBCC();
      [v3 setAlpha_];

      v4 = sub_22058B190();
      [v4 setAlpha_];

      v5 = sub_2208582A4();
      [*&v5[OBJC_IVAR____TtC8StocksUI15CardToolbarView_separatorView] setAlpha_];

      v6 = sub_2208582A4();
      [v6 setAlpha_];
    }

    else if ((*(result + OBJC_IVAR____TtC8StocksUI25ForYouFeedViewCoordinator_horizontalSizeClass + 8) & 1) == 0)
    {
      v7 = *(result + OBJC_IVAR____TtC8StocksUI25ForYouFeedViewCoordinator_horizontalSizeClass);
      if (v7 == 2)
      {
        sub_2205EE35C();
      }

      else if (v7 == 1)
      {
        sub_2205EE07C();
      }
    }
  }

  return result;
}

void sub_2205EDBA4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10)
{
  sub_22088867C();
  if ((v39 & 1) == 0 && (*(v18 + OBJC_IVAR____TtC8StocksUI25ForYouFeedViewCoordinator_horizontalSizeClass + 8) & 1) == 0 && *(v18 + OBJC_IVAR____TtC8StocksUI25ForYouFeedViewCoordinator_horizontalSizeClass) == 1)
  {
    v40.origin.x = a1;
    v40.origin.y = a2;
    v40.size.width = a3;
    v40.size.height = a4;
    v38 = CGRectGetMaxY(v40) - a10 + -10.0;
    v41.origin.x = a1;
    v41.origin.y = a2;
    v41.size.width = a3;
    v41.size.height = a4;
    MaxY = CGRectGetMaxY(v41);
    v42.origin.x = a5;
    v42.origin.y = a6;
    v42.size.width = a7;
    v42.size.height = a8;
    v27 = (MaxY - CGRectGetMinY(v42)) * 0.5;
    v43.origin.x = a1;
    v43.origin.y = a2;
    v43.size.width = a3;
    v43.size.height = a4;
    v28 = fmin((v38 + v27 - CGRectGetMaxY(v43)) / 3.0, 100.0);
    v29 = a9 - (v38 - v28);
    if (v29 < 0.0)
    {
      v29 = 0.0;
    }

    v30 = v29 / v28;
    v31 = 1.0;
    if (v29 / v28 >= 1.0 || (v31 = v29 / v28, v30 > 0.0))
    {
      v32 = sub_22058B190();
      [v32 setHidden_];

      v30 = v31;
    }

    swift_getObjectType();
    v33 = sub_22088CBCC();
    [v33 setAlpha_];

    v34 = sub_22058B190();
    [v34 setAlpha_];

    v35 = sub_2208582A4();
    [*&v35[OBJC_IVAR____TtC8StocksUI15CardToolbarView_separatorView] setAlpha_];

    v36 = sub_2208582A4();
    [v36 setAlpha_];
  }
}

void sub_2205EDDD4(uint64_t a1)
{
  v3 = sub_22088CC6C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22088867C();
  if ((v17[15] & 1) == 0 && (*(v1 + OBJC_IVAR____TtC8StocksUI25ForYouFeedViewCoordinator_horizontalSizeClass + 8) & 1) == 0 && *(v1 + OBJC_IVAR____TtC8StocksUI25ForYouFeedViewCoordinator_horizontalSizeClass) == 1)
  {
    (*(v4 + 16))(v7, a1, v3);
    v8 = (*(v4 + 88))(v7, v3);
    if (v8 != *MEMORY[0x277D6E258])
    {
      if (v8 == *MEMORY[0x277D6E260])
      {
        swift_getObjectType();
        v13 = sub_22088CBCC();
        [v13 setAlpha_];

        v14 = sub_22058B190();
        [v14 setAlpha_];

        v15 = sub_22058B190();
        [v15 setHidden_];

        v16 = sub_2208582A4();
        [*&v16[OBJC_IVAR____TtC8StocksUI15CardToolbarView_separatorView] setAlpha_];

        v12 = sub_2208582A4();
        [v12 setAlpha_];
        goto LABEL_8;
      }

      if (v8 != *MEMORY[0x277D6E250])
      {
        (*(v4 + 8))(v7, v3);
        return;
      }
    }

    swift_getObjectType();
    v9 = sub_22088CBCC();
    [v9 setAlpha_];

    v10 = sub_22058B190();
    [v10 setAlpha_];

    v11 = sub_2208582A4();
    [*&v11[OBJC_IVAR____TtC8StocksUI15CardToolbarView_separatorView] setAlpha_];

    v12 = sub_2208582A4();
    [v12 setAlpha_];
LABEL_8:
  }
}

uint64_t sub_2205EE07C()
{
  v1 = sub_22088CC6C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205EE5D8();
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v21 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v21 - v16;
  v18 = OBJC_IVAR____TtC8StocksUI25ForYouFeedViewCoordinator_presentationState;
  swift_beginAccess();
  sub_2205EE630(v0 + v18, v14);
  v19 = *(v2 + 48);
  if (v19(v14, 1, v1) == 1)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = v5;
      sub_2207F8A38(v17);
      v5 = v21;
      swift_unknownObjectRelease();
    }

    else
    {
      (*(v2 + 56))(v17, 1, 1, v1);
    }

    if (v19(v14, 1, v1) != 1)
    {
      sub_2205EE694(v14);
    }
  }

  else
  {
    (*(v2 + 32))(v17, v14, v1);
    (*(v2 + 56))(v17, 0, 1, v1);
  }

  sub_2205EE630(v17, v10);
  if (v19(v10, 1, v1) == 1)
  {
    sub_2205EE694(v17);
    v17 = v10;
  }

  else
  {
    (*(v2 + 32))(v5, v10, v1);
    sub_2205EDDD4(v5);
    (*(v2 + 8))(v5, v1);
  }

  return sub_2205EE694(v17);
}

void sub_2205EE35C()
{
  swift_getObjectType();
  v0 = sub_22088CBCC();
  [v0 setAlpha_];

  v1 = sub_22058B190();
  [v1 setAlpha_];

  v2 = sub_2208582A4();
  [*&v2[OBJC_IVAR____TtC8StocksUI15CardToolbarView_separatorView] setAlpha_];

  v3 = sub_2208582A4();
  [v3 setAlpha_];
}

uint64_t sub_2205EE42C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_22054B9F8(v0 + 80);
  sub_2205EE694(v0 + OBJC_IVAR____TtC8StocksUI25ForYouFeedViewCoordinator_presentationState);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ForYouFeedViewCoordinator()
{
  result = qword_281289A78;
  if (!qword_281289A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2205EE50C()
{
  sub_2205EE5D8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2205EE5D8()
{
  if (!qword_2812976D0)
  {
    sub_22088CC6C();
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_2812976D0);
    }
  }
}

uint64_t sub_2205EE630(uint64_t a1, uint64_t a2)
{
  sub_2205EE5D8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205EE694(uint64_t a1)
{
  sub_2205EE5D8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2205EE6F0(uint64_t a1, int a2)
{
  v3 = v2;
  v55 = a2;
  v5 = sub_220887C5C();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v47 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220887D8C();
  v9 = *(v8 - 8);
  v51 = v8;
  v52 = v9;
  MEMORY[0x28223BE20](v8, v10);
  v50 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205EF164(0, &qword_2812989B8, MEMORY[0x277D30338]);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v46 - v14;
  v56 = sub_22088822C();
  v16 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v17);
  v53 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2208873BC();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22088772C();
  v25 = *(v24 - 8);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v25 + 16);
  v54 = a1;
  v30(v29, a1, v24, v27);
  v31 = (*(v25 + 88))(v29, v24);
  if (v31 == *MEMORY[0x277D2FB70])
  {
    (*(v25 + 96))(v29, v24);
    (*(v20 + 32))(v23, v29, v19);
    v32 = v3;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v51 = *(v3 + 40);
      swift_getObjectType();
      v52 = v15;
      v33 = v53;
      sub_2208873AC();
      sub_22088771C();
      sub_22088739C();
      v32 = v3;
      v15 = v52;
      sub_220887DFC();
      swift_unknownObjectRelease();

      sub_2205EF238(v57, &unk_281296D10, sub_2204693CC);
      (*(v16 + 8))(v33, v56);
    }

    sub_2208873AC();
    (*(v20 + 8))(v23, v19);
    (*(v16 + 56))(v15, 0, 1, v56);
    v34 = OBJC_IVAR____TtC8StocksUI24ArticleViewerCoordinator_currentArticle;
    swift_beginAccess();
    v35 = v32 + v34;
LABEL_5:
    sub_2205EF1B8(v15, v35);
    return swift_endAccess();
  }

  if (v31 != *MEMORY[0x277D2FB58] && v31 != *MEMORY[0x277D2FB68] && v31 == *MEMORY[0x277D2FB60])
  {
    (*(v25 + 96))(v29, v24);
    v37 = v51;
    v38 = v50;
    (*(v52 + 4))(v50, v29, v51);
    Strong = swift_unknownObjectWeakLoadStrong();
    v40 = v48;
    v41 = v49;
    v42 = v47;
    if (Strong)
    {
      v46[1] = *(v3 + 40);
      v46[0] = swift_getObjectType();
      sub_220887D7C();
      v43 = v53;
      sub_220887C4C();
      (*(v40 + 8))(v42, v41);
      sub_22088771C();
      v58 = 0;
      memset(v57, 0, sizeof(v57));
      sub_220887DFC();
      v37 = v51;
      swift_unknownObjectRelease();

      sub_2205EF238(v57, &unk_281296D10, sub_2204693CC);
      v44 = v43;
      v38 = v50;
      (*(v16 + 8))(v44, v56);
    }

    sub_220887D7C();
    sub_220887C4C();
    (*(v40 + 8))(v42, v41);
    (*(v52 + 1))(v38, v37);
    (*(v16 + 56))(v15, 0, 1, v56);
    v45 = OBJC_IVAR____TtC8StocksUI24ArticleViewerCoordinator_currentArticle;
    swift_beginAccess();
    v35 = v3 + v45;
    goto LABEL_5;
  }

  return (*(v25 + 8))(v29, v24);
}

uint64_t sub_2205EEDDC()
{
  sub_22054B9F8(v0 + 16);
  sub_22054B9F8(v0 + 32);
  sub_2205EF238(v0 + OBJC_IVAR____TtC8StocksUI24ArticleViewerCoordinator_currentArticle, &qword_2812989B8, MEMORY[0x277D30338]);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArticleViewerCoordinator()
{
  result = qword_28128A680;
  if (!qword_28128A680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2205EEEC0()
{
  sub_2205EF164(319, &qword_2812989B8, MEMORY[0x277D30338]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2205EEFC0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2205EF024(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_2205EF0BC;
}

void sub_2205EF0BC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_2205EF164(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2205EF1B8(uint64_t a1, uint64_t a2)
{
  sub_2205EF164(0, &qword_2812989B8, MEMORY[0x277D30338]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205EF238(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2205EF164(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2205EF294()
{
  v0 = sub_22088A06C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220887A2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088759C();
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == *MEMORY[0x277D2FD80])
  {
    v11 = MEMORY[0x277D68F70];
LABEL_8:
    (*(v1 + 104))(v4, *v11, v0);
    return sub_22088927C();
  }

  if (v10 == *MEMORY[0x277D2FD78])
  {
    goto LABEL_7;
  }

  if (v10 == *MEMORY[0x277D2FD68])
  {
    v11 = MEMORY[0x277D68F60];
    goto LABEL_8;
  }

  if (v10 == *MEMORY[0x277D2FD70])
  {
LABEL_7:
    v11 = MEMORY[0x277D68F68];
    goto LABEL_8;
  }

  result = sub_22089267C();
  __break(1u);
  return result;
}

uint64_t sub_2205EF4CC(uint64_t a1)
{
  v76 = a1;
  v74 = sub_22088685C();
  v72 = *(v74 - 8);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v74, v1);
  v71 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22088EBFC();
  v4 = *(v3 - 8);
  v69 = v3;
  v70 = v4;
  MEMORY[0x28223BE20](v3, v5);
  v68 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088915C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v64 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_22088699C();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v10);
  v62 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_22088914C();
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v12);
  v61 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_22088909C();
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v14);
  v58 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_220889FFC();
  v16 = *(v75 - 8);
  MEMORY[0x28223BE20](v75, v17);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_220889FEC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22088A07C();
  v26 = *(v25 - 8);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 104))(v30, *MEMORY[0x277D68F80], v25, v28);
  v31 = sub_22088721C();
  (*(v26 + 8))(v30, v25);
  v32 = *MEMORY[0x277D68EF0];
  v33 = *(v16 + 104);
  v33(v19, v32, v75);
  sub_22088681C();
  sub_220889FCC();
  sub_2205EFFAC(&qword_2812982D8, MEMORY[0x277D68ED8]);
  sub_2208872CC();
  (*(v21 + 8))(v24, v20);
  v33(v19, v32, v75);
  v34 = v58;
  sub_22088908C();
  sub_2205EFFAC(&qword_281298590, MEMORY[0x277D68210]);
  v35 = v59;
  v57 = v31;
  sub_2208872CC();
  (*(v60 + 8))(v34, v35);
  v36 = v76;
  sub_22088681C();
  v37 = v62;
  v38 = v36;
  sub_2208867CC();
  sub_22067D2D4(v64);
  (*(v63 + 8))(v37, v65);
  sub_22088683C();
  v39 = v61;
  sub_22088912C();
  sub_2205EFFAC(&qword_281298578, MEMORY[0x277D68270]);
  v40 = v66;
  sub_2208872CC();
  (*(v67 + 8))(v39, v40);
  v41 = v77;
  __swift_project_boxed_opaque_existential_1((v77 + 64), *(v77 + 88));
  sub_22088ED6C();
  __swift_project_boxed_opaque_existential_1(v79, v79[3]);
  *&v78[0] = 0x2D52454B434954;
  *(&v78[0] + 1) = 0xE700000000000000;
  v42 = sub_22088681C();
  MEMORY[0x223D89680](v42);

  v43 = v68;
  sub_22088EBEC();
  sub_2205EFFAC(&unk_281296D88, MEMORY[0x277D2D120]);
  v44 = v69;
  sub_22088ED7C();
  (*(v70 + 8))(v43, v44);
  __swift_project_boxed_opaque_existential_1((v41 + 16), *(v41 + 40));
  type metadata accessor for StockFeedViewController();
  sub_22046DA2C(v79, v78);
  v46 = v71;
  v45 = v72;
  v47 = v74;
  (*(v72 + 16))(v71, v38, v74);
  v48 = v45;
  v49 = (*(v45 + 80) + 56) & ~*(v45 + 80);
  v50 = (v73 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  sub_220457328(v78, v51 + 16);
  v52 = v51 + v49;
  v53 = v57;
  (*(v48 + 32))(v52, v46, v47);
  *(v51 + v50) = v53;

  v54 = sub_2208884AC();

  if (v54)
  {
    v56 = v54;
    __swift_destroy_boxed_opaque_existential_1(v79);

    return v56;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2205EFEA8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204693CC();
  sub_22088837C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088685C();
  sub_22088837C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  return sub_22088836C();
}

uint64_t sub_2205EFFAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2205EFFF4(void *a1)
{
  sub_22088685C();

  return sub_2205EFEA8(a1);
}

uint64_t sub_2205F0094()
{
  v77 = type metadata accessor for StockSearchModel();
  MEMORY[0x28223BE20](v77, v0);
  v2 = &v59 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for StockViewModel();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088685C();
  v78 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v76 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v82 = &v59 - v12;
  sub_2204D4A18();
  v75 = v13;
  v79 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v74 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205F099C();
  v65 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220576D44();
  v21 = v20;
  v73 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v64 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v66 = &v59 - v26;
  sub_2204D4924();
  v28 = v27;
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205F0A30();
  v34 = v33 - 8;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v38 = &v59 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = MEMORY[0x277D84F90];
  (*(v29 + 16))(v32, v80, v28, v36);
  v80 = sub_2204D4924;
  sub_2205F0AC4(&qword_2812995C0, sub_2204D4924);
  sub_2208915BC();
  v68 = *(v34 + 44);
  v39 = v66;
  v40 = v38;
  v41 = sub_2205F0AC4(&qword_281296E80, v80);
  sub_22089199C();
  if (*(v40 + v68) != v83[0])
  {
    v61 = (v73 + 16);
    v71 = (v79 + 16);
    v70 = (v79 + 8);
    v69 = (v78 + 16);
    v80 = (v78 + 32);
    v60 = (v73 + 8);
    v72 = v19;
    v73 = v2;
    v81 = v7;
    v63 = v28;
    v62 = v40;
    v67 = v41;
    do
    {
      v79 = sub_2208919BC();
      v43 = *v61;
      (*v61)(v39);
      (v79)(v83, 0);
      sub_2208919AC();
      (v43)(v64, v39, v21);
      sub_2205F0AC4(&unk_27CF577A0, sub_220576D44);
      sub_2208915BC();
      v44 = *(v65 + 36);
      sub_2205F0AC4(&qword_27CF56C60, sub_220576D44);
      sub_22089199C();
      v45 = MEMORY[0x277D84F90];
      if (*&v44[v19] != v83[0])
      {
        v79 = v44;
        do
        {
          v46 = v6;
          v47 = sub_2208919BC();
          v48 = v74;
          v49 = v75;
          (*v71)(v74);
          v47(v83, 0);
          sub_2208919AC();
          sub_22088AD8C();
          (*v70)(v48, v49);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_22049550C();
            v51 = *(v50 + 48);
            sub_22050381C(v2, v6);
            v52 = sub_220886A4C();
            (*(*(v52 - 8) + 8))(&v2[v51], v52);
          }

          else
          {
            sub_22050381C(v2, v6);
          }

          v53 = v76;
          v54 = v81;
          (*v69)(v76, v6, v81);
          sub_2204D60C8(v6, type metadata accessor for StockViewModel);
          v55 = *v80;
          (*v80)(v82, v53, v54);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = sub_22048E1D8(0, *(v45 + 2) + 1, 1, v45);
          }

          v56 = v79;
          v58 = *(v45 + 2);
          v57 = *(v45 + 3);
          if (v58 >= v57 >> 1)
          {
            v45 = sub_22048E1D8(v57 > 1, v58 + 1, 1, v45);
          }

          *(v45 + 2) = v58 + 1;
          v55(&v45[((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v58], v82, v81);
          v19 = v72;
          sub_22089199C();
          v6 = v46;
          v2 = v73;
        }

        while (*&v56[v19] != v83[0]);
      }

      sub_2204D60C8(v19, sub_2205F099C);
      v39 = v66;
      (*v60)(v66, v21);
      sub_22048E0F8(v45);
      v40 = v62;
      sub_22089199C();
    }

    while (*(v40 + v68) != v83[0]);
  }

  sub_2204D60C8(v40, sub_2205F0A30);
  return v84;
}

void sub_2205F099C()
{
  if (!qword_27CF57798)
  {
    sub_220576D44();
    sub_2205F0AC4(&qword_27CF56C60, sub_220576D44);
    v0 = sub_22089265C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF57798);
    }
  }
}

void sub_2205F0A30()
{
  if (!qword_2812995B8)
  {
    sub_2204D4924();
    sub_2205F0AC4(&qword_281296E80, sub_2204D4924);
    v0 = sub_22089265C();
    if (!v1)
    {
      atomic_store(v0, &qword_2812995B8);
    }
  }
}

uint64_t sub_2205F0AC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2205F0B5C()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_33;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v3)
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D8A700](v4, v2);
        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v6 = v13;
          goto LABEL_17;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          v3 = sub_2208926AC();
          goto LABEL_3;
        }

        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_2208925CC();
        sub_2208925FC();
        sub_22089260C();
        sub_2208925DC();
      }

      else
      {
      }

      ++v4;
      if (v5 == v3)
      {
        goto LABEL_15;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_17:

  *(v1 + 16) = v6;

  v1 = *(v1 + 16);
  if (v1 >> 62)
  {
    v2 = sub_2208926AC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v7 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D8A700](v7, v1);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v7 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v8 = *(v1 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_29:
          __break(1u);
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v8 + 24);
        ObjectType = swift_getObjectType();
        (*(v10 + 8))(ObjectType, v10);
        swift_unknownObjectRelease();
      }

      ++v7;
    }

    while (v9 != v2);
  }
}

uint64_t sub_2205F0DBC(uint64_t *a1)
{
  swift_beginAccess();
  v3 = v1[2];
  v11 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_20:
    v4 = sub_2208926AC();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v10 = v1;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D8A700](v5, v3);
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v1 = v10;
          v8 = v11;
          goto LABEL_18;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_15;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v1 = Strong, swift_unknownObjectRelease(), v1 == a1))
      {
      }

      else
      {
        sub_2208925CC();
        sub_2208925FC();
        sub_22089260C();
        v1 = &v11;
        sub_2208925DC();
      }

      ++v5;
      if (v6 == v4)
      {
        goto LABEL_16;
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_18:

  v1[2] = v8;
}

uint64_t sub_2205F0F44()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2205F0FC4()
{
  sub_22054B9F8(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2205F0FFC()
{
  swift_getObjectType();
  sub_22088F8DC();
  sub_2205F3D44();
  sub_220891C3C();
  sub_2205F3C48();
  sub_220891C3C();
  sub_2205F3B80();
  sub_220891C3C();
  sub_2205F39C8();
  sub_220891C3C();
  sub_2205F3908();
  sub_220891C3C();
  sub_2205144F4();
  sub_220891C3C();
  sub_2205F34B4();
  return sub_220891C3C();
}

uint64_t (*sub_2205F10F0(uint64_t a1, uint64_t (*a2)(), void (*a3)(uint64_t, char *, uint64_t), uint64_t a4))()
{
  v282 = a4;
  v279 = a2;
  v266 = a1;
  v6 = sub_22088B8CC();
  v7 = *(v6 - 8);
  v244 = v6;
  v245 = v7;
  MEMORY[0x28223BE20](v6, v8);
  v243 = (&v243 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v11);
  v246 = (&v243 - v12);
  v13 = sub_22088C5AC();
  v248 = *(v13 - 8);
  v249 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v247 = &v243 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = sub_2208854AC();
  v275 = *(v265 - 8);
  MEMORY[0x28223BE20](v265, v16);
  v258 = v17;
  v264 = &v243 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D328();
  v263 = v18;
  v274 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v256 = v20;
  v273 = &v243 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22088FACC();
  v268 = *(v21 - 8);
  v269 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v262 = (&v243 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24, v25);
  v267 = &v243 - v26;
  v27 = sub_22088FD8C();
  v271 = *(v27 - 8);
  v272 = v27;
  MEMORY[0x28223BE20](v27, v28);
  v276 = &v243 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for StockFeedEarningsViewModel();
  v257 = *(v30 - 8);
  MEMORY[0x28223BE20](v30 - 8, v31);
  v259 = v32;
  v260 = &v243 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34);
  v261 = &v243 - v35;
  v36 = type metadata accessor for QuoteDetailViewModel();
  v253 = *(v36 - 8);
  MEMORY[0x28223BE20](v36 - 8, v37);
  v254 = (&v243 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v252 = v38;
  MEMORY[0x28223BE20](v39, v40);
  v255 = (&v243 - v41);
  v42 = type metadata accessor for StockChartModel();
  MEMORY[0x28223BE20](v42 - 8, v43);
  v251 = &v243 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for StockFeedMastheadViewLayoutAttributes();
  MEMORY[0x28223BE20](v45 - 8, v46);
  v250 = &v243 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for StockFeedMastheadModel();
  MEMORY[0x28223BE20](v48 - 8, v49);
  v270 = &v243 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for StockFeedLayoutModel();
  MEMORY[0x28223BE20](v51, v52);
  v54 = (&v243 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  v281 = v4;
  sub_22046DA2C(v4 + 32, v290);
  v56 = *(&v290[1] + 1);
  v55 = *&v290[2];
  __swift_project_boxed_opaque_existential_1(v290, *(&v290[1] + 1));
  v280 = a3;
  v57 = [a3 traitCollection];
  v58 = *(v55 + 8);
  v59 = *(v58 + 8);
  v289[3] = v56;
  v289[4] = v55;
  ObjectType = v55;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v289);
  v59(v57, v56, v58);

  __swift_destroy_boxed_opaque_existential_1(v290);
  sub_22055D3C0();
  sub_22088BC3C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        sub_2205F3BD8(0, qword_28128EE98, type metadata accessor for QuoteDetailViewModel);
        memcpy(v290, v54 + *(v143 + 48), 0x109uLL);
        v144 = v255;
        sub_2205F3CDC(v54, v255, type metadata accessor for QuoteDetailViewModel);
        sub_2205F39C8();
        v68 = sub_220891C1C();
        v145 = sub_22088B9EC();
        sub_220664A10(v144, v290, v145);
        sub_2205D7964(v290);

        v146 = sub_22088B9EC();
        v147 = *&v146[OBJC_IVAR____TtC8StocksUI15QuoteDetailView_attributionButton];

        v148 = *&v147[OBJC_IVAR____TtC8StocksUI17AttributionButton_onTap];
        v149 = swift_allocObject();
        swift_weakInit();
        v150 = v254;
        sub_2205F3A5C(v144, v254, type metadata accessor for QuoteDetailViewModel);
        v151 = (*(v253 + 80) + 24) & ~*(v253 + 80);
        v152 = swift_allocObject();
        *(v152 + 16) = v149;
        sub_2205F3CDC(v150, v152 + v151, type metadata accessor for QuoteDetailViewModel);

        sub_2205F3DD8(v144, type metadata accessor for QuoteDetailViewModel);
        goto LABEL_23;
      }

      sub_2205F3BD8(0, qword_281293018, type metadata accessor for StockChartModel);
      v92 = v54 + *(v91 + 48);
      v93 = *(v92 + 11);
      v290[10] = *(v92 + 10);
      v290[11] = v93;
      *&v290[12] = *(v92 + 24);
      v94 = *(v92 + 7);
      v290[6] = *(v92 + 6);
      v290[7] = v94;
      v95 = *(v92 + 9);
      v290[8] = *(v92 + 8);
      v290[9] = v95;
      v96 = *(v92 + 5);
      v290[4] = *(v92 + 4);
      v290[5] = v96;
      v97 = *(v92 + 3);
      v290[2] = *(v92 + 2);
      v290[3] = v97;
      v98 = *(v92 + 1);
      v290[0] = *v92;
      v290[1] = v98;
      v77 = type metadata accessor for StockChartModel;
      v99 = v251;
      sub_2205F3CDC(v54, v251, type metadata accessor for StockChartModel);
      sub_2205F3B80();
      v68 = sub_220891C1C();
      v100 = *(v281 + 224);
      sub_22088A9AC();
      sub_220667344(v99, v290, v100);
      sub_2205D79B8(v290);
      v101 = v99;
      goto LABEL_14;
    }

    if (!EnumCaseMultiPayload)
    {
      sub_22055D8C0();
      v62 = *(v61 + 48);
      v279 = type metadata accessor for StockFeedMastheadModel;
      v63 = v270;
      sub_2205F3CDC(v54, v270, type metadata accessor for StockFeedMastheadModel);
      v64 = v250;
      sub_2205F3CDC(v54 + v62, v250, type metadata accessor for StockFeedMastheadViewLayoutAttributes);
      sub_2205F3D44();
      v65 = sub_220891C1C();
      v66 = *(ObjectType + 16);
      v67 = *(v66 + 80);
      v68 = v65;
      v69 = v67(v56, v66);
      [v68 setBackgroundColor_];

      v70 = sub_22088B9EC();
      sub_22067AB0C(v63, v64, v70);

      sub_2205F3DD8(v64, type metadata accessor for StockFeedMastheadViewLayoutAttributes);
      sub_2205F3DD8(v63, v279);
      goto LABEL_23;
    }

    sub_2205F3BD8(0, qword_28128C5A8, type metadata accessor for StockFeedMastheadModel);
    memcpy(v290, v54 + *(v117 + 48), 0x208uLL);
    v77 = type metadata accessor for StockFeedMastheadModel;
    v78 = v270;
    sub_2205F3CDC(v54, v270, type metadata accessor for StockFeedMastheadModel);
    sub_2205F3C48();
    v118 = sub_220891C1C();
    v119 = *(ObjectType + 16);
    v120 = *(v119 + 80);
    v68 = v118;
    v121 = v120(v56, v119);
    [v68 setBackgroundColor_];

    v122 = sub_22088B9EC();
    sub_2205D7CD4(v78, v290, v122);

LABEL_13:
    v101 = v78;
LABEL_14:
    sub_2205F3DD8(v101, v77);
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v123 = v54[6];
      v124 = v54[7];
      v125 = v54[8];
      v126 = v54[9];
      sub_2205144F4();
      v127 = sub_220891C1C();
      v128 = *(ObjectType + 16);
      v129 = *(v128 + 80);
      v68 = v127;
      v130 = v129(v56, v128);
      [v68 setBackgroundColor_];

      v131 = *(v281 + 136);
      v132 = sub_22088B9EC();
      v133 = OBJC_IVAR____TtC8StocksUI11PlacardView_messageLabel;
      [*&v132[OBJC_IVAR____TtC8StocksUI11PlacardView_messageLabel] setFrame_];
      v134 = *&v132[v133];
      v135 = sub_22089132C();
      [v134 setText_];

      swift_beginAccess();
      v136 = __swift_project_boxed_opaque_existential_1((v131 + 16), *(v131 + 40));
      v137 = *&v132[v133];
      v138 = *v136;
      sub_220561394();
      v139 = sub_220891F2C();
      [v137 setFont_];

      v141 = v138[5];
      v140 = v138[6];
      __swift_project_boxed_opaque_existential_1(v138 + 2, v141);
      v142 = (*(*(v140 + 16) + 40))(v141);
      [v137 setTextColor_];

      goto LABEL_23;
    }

    sub_2205F3BD8(0, &qword_281288D90, type metadata accessor for StockFeedEarningsViewModel);
    v72 = v54 + *(v71 + 48);
    v73 = *(v72 + 5);
    v290[4] = *(v72 + 4);
    v290[5] = v73;
    v74 = *(v72 + 7);
    v290[6] = *(v72 + 6);
    v290[7] = v74;
    v75 = *(v72 + 1);
    v290[0] = *v72;
    v290[1] = v75;
    v76 = *(v72 + 3);
    v290[2] = *(v72 + 2);
    v290[3] = v76;
    v77 = type metadata accessor for StockFeedEarningsViewModel;
    v78 = v261;
    sub_2205F3CDC(v54, v261, type metadata accessor for StockFeedEarningsViewModel);
    sub_2205F3908();
    v79 = sub_220891C1C();
    v80 = *(ObjectType + 16);
    v81 = *(v80 + 80);
    v68 = v79;
    v82 = v81(v56, v80);
    [v68 setBackgroundColor_];

    v83 = sub_22088B9EC();
    sub_2206F0220(v78, v290, v83);

    v84 = sub_22088B9EC();
    v85 = *&v84[OBJC_IVAR____TtC8StocksUI21StockFeedEarningsView_addCalendarButton];

    v86 = *&v85[qword_28128D6E0];
    v87 = swift_allocObject();
    swift_weakInit();
    v88 = v260;
    sub_2205F3A5C(v78, v260, type metadata accessor for StockFeedEarningsViewModel);
    v89 = (*(v257 + 80) + 24) & ~*(v257 + 80);
    v90 = swift_allocObject();
    *(v90 + 16) = v87;
    sub_2205F3CDC(v88, v90 + v89, type metadata accessor for StockFeedEarningsViewModel);

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v102 = *(v54 + 5);
    v290[4] = *(v54 + 4);
    v290[5] = v102;
    v103 = *(v54 + 7);
    v290[6] = *(v54 + 6);
    v290[7] = v103;
    v104 = *(v54 + 1);
    v290[0] = *v54;
    v290[1] = v104;
    v105 = *(v54 + 3);
    v290[2] = *(v54 + 2);
    v290[3] = v105;
    sub_2205F34B4();
    v106 = sub_220891C1C();
    v107 = *(ObjectType + 16);
    v108 = *(v107 + 80);
    v68 = v106;
    v109 = v108(v56, v107);
    [v68 setBackgroundColor_];

    sub_220814B10(v286);
    v283[0] = v286[0];
    v283[1] = v286[1];
    v284 = v287;
    v285 = v288;
    v110 = sub_22088B9EC();
    sub_2205D4B08(v283, v290, v110);

    v111 = sub_22088B9EC();
    v112 = *&v111[OBJC_IVAR____TtC8StocksUI23BilingualFeedPromptView_enableBilingualFeedButton];

    v113 = *&v112[qword_27CF57ED0];
    swift_allocObject();
    swift_weakInit();

    v114 = sub_22088B9EC();
    v115 = *&v114[OBJC_IVAR____TtC8StocksUI23BilingualFeedPromptView_neverShowBilingualFeedPromptsButton];

    v116 = *&v115[qword_27CF57ED0];
    swift_allocObject();
    swift_weakInit();
  }

  else
  {
    (*(v271 + 32))(v276, v54, v272);
    v153 = *(v281 + 216);
    boxed_opaque_existential_1 = *(v281 + 208);
    v279 = v153;
    ObjectType = swift_getObjectType();
    v154 = swift_allocObject();
    swift_weakInit();
    v155 = v274;
    v156 = v263;
    v259 = *(v274 + 16);
    v260 = v274 + 16;
    v259(v273, v266, v263);
    v157 = v275;
    v158 = *(v275 + 16);
    v159 = v264;
    v160 = v265;
    v257 = v275 + 16;
    v255 = v158;
    (v158)(v264, v282, v265);
    v161 = *(v155 + 80);
    v162 = (v161 + 24) & ~v161;
    v163 = *(v157 + 80);
    v164 = (v256 + v163 + v162) & ~v163;
    v256 = v161 | v163;
    v258 += v164;
    v165 = swift_allocObject();
    *(v165 + 16) = v154;
    v166 = *(v155 + 32);
    v261 = v162;
    v274 = v155 + 32;
    v254 = v166;
    (v166)(v165 + v162, v273, v156);
    v167 = *(v157 + 32);
    v270 = v164;
    v275 = v157 + 32;
    v167(v165 + v164, v159, v160);

    v168 = v267;
    v169 = v276;
    sub_22088F8EC();

    v171 = v268;
    v170 = v269;
    v172 = v262;
    (*(v268 + 16))(v262, v168, v269);
    v173 = (*(v171 + 88))(v172, v170);
    if (v173 == *MEMORY[0x277D32538])
    {
      (*(v171 + 96))(v172, v170);
      v174 = *v172;
      v175 = v281;
      v176 = *(v281 + 56);
      v177 = *(v281 + 64);
      v178 = __swift_project_boxed_opaque_existential_1((v281 + 32), v176);
      v179 = *(v176 - 8);
      v180 = MEMORY[0x28223BE20](v178, v178);
      v182 = &v243 - ((v181 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v179 + 16))(v182, v180);
      v183 = *(v177 + 16);
      v184 = *(v183 + 80);
      v68 = v174;
      v185 = v184(v176, v183);
      (*(v179 + 8))(v182, v176);
      [v68 setBackgroundColor_];

      v186 = sub_22088B9CC();
      v187 = v175[7];
      v188 = v175[8];
      v189 = __swift_project_boxed_opaque_existential_1(v175 + 4, v187);
      v190 = *(v187 - 8);
      v191 = MEMORY[0x28223BE20](v189, v189);
      v193 = &v243 - ((v192 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v190 + 16))(v193, v191);
      v194 = (*(*(v188 + 16) + 104))(v187);
      (*(v190 + 8))(v193, v187);
      [v186 setBackgroundColor_];

      v195 = sub_22088B9CC();
      sub_22088C58C();

      v196 = sub_22088B9CC();
      sub_22088C59C();

      v197 = sub_22088B9CC();
      (*(v248 + 104))(v247, *MEMORY[0x277D6DEE8], v249);
      sub_22088C5BC();

      v198 = [v68 layer];
      [v198 setCornerRadius_];

      [v68 setClipsToBounds_];
    }

    else
    {
      if (v173 != *MEMORY[0x277D32540])
      {
        v68 = sub_22088FABC();
        v240 = [v68 layer];
        [v240 setCornerRadius_];

        [v68 setClipsToBounds_];
        v241 = *(v171 + 8);
        v241(v168, v170);
        (*(v271 + 8))(v169, v272);
        v241(v172, v170);
        goto LABEL_23;
      }

      (*(v171 + 96))(v172, v170);
      v279 = *v172;
      v199 = swift_allocObject();
      v200 = sub_22088C91C();
      v201 = MEMORY[0x277D6E038];
      v199[5] = v200;
      v199[6] = v201;
      __swift_allocate_boxed_opaque_existential_1(v199 + 2);
      sub_22088C90C();
      *v246 = v199;
      v202 = v244;
      v203 = v245;
      v204 = *(v245 + 104);
      v204();
      sub_2205F3680();
      v206 = v205;
      v207 = swift_allocBox();
      v209 = v208;
      v210 = *(v206 + 48);
      v280 = v167;
      v211 = *(v203 + 16);
      v212 = v246;
      v211(v208, v246, v202);
      v211(v209 + v210, v212, v202);
      v213 = v243;
      *v243 = v207;
      v214 = v202;
      (v204)(v213, *MEMORY[0x277D6D930], v202);
      v215 = v279;
      sub_22088B9DC();
      v216 = v215;
      v217 = sub_22088B9CC();
      v218 = *(v281 + 56);
      v219 = *(v281 + 64);
      v220 = __swift_project_boxed_opaque_existential_1((v281 + 32), v218);
      v221 = *(v218 - 8);
      v222 = MEMORY[0x28223BE20](v220, v220);
      v224 = &v243 - ((v223 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v221 + 16))(v224, v222);
      v225 = (*(*(v219 + 16) + 104))(v218);
      (*(v221 + 8))(v224, v218);
      [v217 setBackgroundColor_];

      v226 = sub_22088B9CC();
      sub_22088C58C();

      v227 = sub_22088B9CC();
      sub_22088C59C();

      v228 = sub_22088B9CC();
      (*(v248 + 104))(v247, *MEMORY[0x277D6DEE8], v249);
      sub_22088C5BC();

      v229 = sub_22088B9EC();
      v230 = sub_22089027C();

      v231 = sub_220890C1C();
      v232 = swift_allocObject();
      swift_weakInit();
      v233 = v273;
      v234 = v263;
      v259(v273, v266, v263);
      v236 = v264;
      v235 = v265;
      (v255)(v264, v282, v265);
      v237 = swift_allocObject();
      *(v237 + 16) = v232;
      (v254)(v237 + v261, v233, v234);
      v280(v237 + v270, v236, v235);
      *&v290[2] = sub_2205F3838;
      *(&v290[2] + 1) = v237;
      *&v290[0] = MEMORY[0x277D85DD0];
      *(&v290[0] + 1) = 1107296256;
      *&v290[1] = sub_2204C35E8;
      *(&v290[1] + 1) = &block_descriptor_12;
      v238 = _Block_copy(v290);

      [v231 onTouchUpInside_];
      _Block_release(v238);

      v68 = v216;
      v239 = [v68 layer];
      [v239 setCornerRadius_];

      [v68 setClipsToBounds_];
      (*(v245 + 8))(v246, v214);
    }

    (*(v268 + 8))(v267, v269);
    (*(v271 + 8))(v276, v272);
  }

LABEL_23:
  __swift_destroy_boxed_opaque_existential_1(v289);
  return v68;
}

uint64_t sub_2205F2CFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = type metadata accessor for QuoteDetailViewModel();
      sub_220649320(a2 + *(v4 + 20));

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2205F2D94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = type metadata accessor for StockFeedEarningsViewModel();
      sub_2206496E0(a2 + *(v4 + 20), *(a2 + *(v4 + 32)), *(a2 + *(v4 + 32) + 8));

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2205F2E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_22088FFCC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088F52C();
  if ((*(v7 + 88))(v10, v6) != *MEMORY[0x277D32F88])
  {
    return (*(v7 + 8))(v10, v6);
  }

  (*(v7 + 96))(v10, v6);
  v11 = sub_22089023C();
  v12 = *(v11 - 8);
  if ((*(v12 + 88))(v10, v11) != *MEMORY[0x277D33338])
  {
    return (*(v12 + 8))(v10, v11);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_220649BE8(a3, a4);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2205F3044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_220649BE8(a2, a3);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2205F30DC(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      a2();

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2205F3168()
{
  sub_22054B9F8(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 168);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 232);
  return v0;
}

uint64_t sub_2205F31E0()
{
  sub_2205F3168();

  return swift_deallocClassInstance();
}

uint64_t (*sub_2205F3260@<X0>(uint64_t a1@<X0>, uint64_t (*a2)()@<X1>, void (**a3)(uint64_t, char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>))()
{
  result = sub_2205F10F0(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_2205F3290(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_22046DA2C(v2 + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(v5 + 8);
  v7 = *(v6 + 8);
  v10 = v4;
  v11 = v5;
  __swift_allocate_boxed_opaque_existential_1(&v9);
  v7(a2, v4, v6);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v2 + 32);
  sub_220457328(&v9, v2 + 32);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v12);
  swift_getObjectType();
  sub_22088D31C();
  swift_getObjectType();
  sub_22088D31C();
  swift_getObjectType();
  sub_22088D31C();
  swift_getObjectType();
  sub_22088D31C();
  swift_getObjectType();
  return sub_22088D31C();
}

void sub_2205F34B4()
{
  if (!qword_281297B70)
  {
    type metadata accessor for BilingualFeedPromptView();
    sub_220514614(&qword_28128BEF8, type metadata accessor for BilingualFeedPromptView);
    v0 = sub_22088B9FC();
    if (!v1)
    {
      atomic_store(v0, &qword_281297B70);
    }
  }
}

uint64_t sub_2205F35A8(uint64_t a1)
{
  sub_22055D328();
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = *(sub_2208854AC() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2205F2E38(a1, v7, v1 + v4, v8);
}

void sub_2205F3680()
{
  if (!qword_281297C28)
  {
    sub_22088B8CC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281297C28);
    }
  }
}

uint64_t objectdestroy_5Tm()
{
  sub_22055D328();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = sub_2208854AC();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);

  (*(v3 + 8))(v0 + v4, v2);
  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_2205F3838()
{
  sub_22055D328();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(sub_2208854AC() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2205F3044(v5, v0 + v2, v6);
}

void sub_2205F3908()
{
  if (!qword_281297B80)
  {
    type metadata accessor for StockFeedEarningsView();
    sub_220514614(&qword_28128D6C0, type metadata accessor for StockFeedEarningsView);
    v0 = sub_22088B9FC();
    if (!v1)
    {
      atomic_store(v0, &qword_281297B80);
    }
  }
}

void sub_2205F39C8()
{
  if (!qword_281297B90)
  {
    type metadata accessor for QuoteDetailView();
    sub_220514614(&qword_281293178, type metadata accessor for QuoteDetailView);
    v0 = sub_22088B9FC();
    if (!v1)
    {
      atomic_store(v0, &qword_281297B90);
    }
  }
}

uint64_t sub_2205F3A5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2205F3AF0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

void sub_2205F3B80()
{
  if (!qword_281298060)
  {
    type metadata accessor for StockChartViewController(255);
    v0 = sub_22088A9BC();
    if (!v1)
    {
      atomic_store(v0, &qword_281298060);
    }
  }
}

void sub_2205F3BD8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2205F3C48()
{
  if (!qword_281297B88)
  {
    type metadata accessor for StockFeedPriceView();
    sub_220514614(&qword_281290628, type metadata accessor for StockFeedPriceView);
    v0 = sub_22088B9FC();
    if (!v1)
    {
      atomic_store(v0, &qword_281297B88);
    }
  }
}

uint64_t sub_2205F3CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2205F3D44()
{
  if (!qword_281297B78)
  {
    type metadata accessor for StockFeedMastheadView();
    sub_220514614(&qword_28128D5B8, type metadata accessor for StockFeedMastheadView);
    v0 = sub_22088B9FC();
    if (!v1)
    {
      atomic_store(v0, &qword_281297B78);
    }
  }
}

uint64_t sub_2205F3DD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id StockActivityItemsConfiguration.__allocating_init(stock:quote:)(char *a1, uint64_t a2)
{
  v24 = a2;
  v25 = a1;
  sub_220453FB8(0, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v24 - v7;
  v9 = sub_22088685C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(v2);
  sub_22048BC00();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22089B130;
  v16 = *(v10 + 16);
  v16(v13, a1, v9);
  sub_2204B1CA8(a2, v8);
  v17 = type metadata accessor for StockShareActivityItemSource();
  v18 = objc_allocWithZone(v17);
  v16(&v18[OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_stock], v13, v9);
  sub_2204B1CA8(v8, &v18[OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_quote]);
  v26.receiver = v18;
  v26.super_class = v17;
  v19 = objc_msgSendSuper2(&v26, sel_init);
  sub_220570398(v8);
  v20 = *(v10 + 8);
  v20(v13, v9);
  *(v15 + 32) = v19;
  sub_22044869C(0, &qword_28127E6C8);
  v21 = sub_2208916DC();

  v22 = [v14 initNAWithActivityItemSources_];

  sub_220570398(v24);
  v20(v25, v9);
  return v22;
}

uint64_t type metadata accessor for StockShareActivityItemSource()
{
  result = qword_281286C80;
  if (!qword_281286C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2205F41A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), SEL *a5)
{
  v10 = objc_allocWithZone(v5);
  a4(0, a2, a3);
  v11 = sub_2208916DC();

  v12 = [v10 *a5];

  return v12;
}

id sub_2205F4268(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), SEL *a5)
{
  ObjectType = swift_getObjectType();
  a4(0, a2, a3);
  v11 = sub_2208916DC();

  v14.receiver = v5;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, *a5, v11);

  return v12;
}

id sub_2205F431C(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v7, *a4, a3);
}

uint64_t sub_2205F4390(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v285 = sub_220884E9C();
  v283 = *(v285 - 8);
  MEMORY[0x28223BE20](v285, v6);
  v282 = &v238 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = sub_220885D4C();
  v302 = *(v301 - 8);
  MEMORY[0x28223BE20](v301, v8);
  v278 = &v238 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v297 = &v238 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v276 = &v238 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v277 = &v238 - v18;
  v275 = sub_22088501C();
  v274 = *(v275 - 8);
  MEMORY[0x28223BE20](v275, v19);
  v271 = &v238 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = sub_22088502C();
  v272 = *(v273 - 8);
  MEMORY[0x28223BE20](v273, v21);
  v270 = &v238 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = sub_220884FFC();
  v268 = *(v269 - 8);
  MEMORY[0x28223BE20](v269, v23);
  v267 = &v238 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = sub_220884F9C();
  v265 = *(v266 - 8);
  MEMORY[0x28223BE20](v266, v25);
  v262 = &v238 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = sub_220884FAC();
  v263 = *(v264 - 8);
  MEMORY[0x28223BE20](v264, v27);
  v261 = &v238 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22088543C();
  MEMORY[0x28223BE20](v29 - 8, v30);
  v258 = &v238 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2208853CC();
  MEMORY[0x28223BE20](v32 - 8, v33);
  v257 = &v238 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_220884DAC();
  MEMORY[0x28223BE20](v35 - 8, v36);
  v255 = &v238 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x277D83D88];
  sub_220453FB8(0, &qword_2812994C8, MEMORY[0x277CC9388], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v39 - 8, v40);
  v253 = &v238 - v41;
  sub_220453FB8(0, &qword_2812994C0, MEMORY[0x277CC93A0], v38);
  MEMORY[0x28223BE20](v42 - 8, v43);
  v293 = &v238 - v44;
  v260 = sub_22088505C();
  v259 = *(v260 - 8);
  MEMORY[0x28223BE20](v260, v45);
  v252 = &v238 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47, v48);
  v254 = &v238 - v49;
  MEMORY[0x28223BE20](v50, v51);
  v256 = &v238 - v52;
  MEMORY[0x28223BE20](v53, v54);
  v295 = &v238 - v55;
  v296 = sub_22088516C();
  v300 = *(v296 - 8);
  MEMORY[0x28223BE20](v296, v56);
  v294 = &v238 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = sub_2208852DC();
  v250 = *(v251 - 8);
  MEMORY[0x28223BE20](v251, v58);
  v292 = &v238 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = sub_2208857EC();
  v248 = *(v249 - 8);
  MEMORY[0x28223BE20](v249, v60);
  v246 = &v238 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = sub_22088699C();
  v291 = *(v247 - 1);
  MEMORY[0x28223BE20](v247, v62);
  v290 = &v238 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64, v65);
  v288 = &v238 - v66;
  v245 = type metadata accessor for PriceViewModel();
  MEMORY[0x28223BE20](v245, v67);
  v298 = (&v238 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_220453FB8(0, &qword_2812990C0, MEMORY[0x277D697F8], v38);
  MEMORY[0x28223BE20](v69 - 8, v70);
  v244 = (&v238 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v72, v73);
  v243 = &v238 - v74;
  MEMORY[0x28223BE20](v75, v76);
  v280 = &v238 - v77;
  MEMORY[0x28223BE20](v78, v79);
  *&v242 = &v238 - v80;
  MEMORY[0x28223BE20](v81, v82);
  v289 = &v238 - v83;
  MEMORY[0x28223BE20](v84, v85);
  v87 = &v238 - v86;
  v88 = sub_22088676C();
  v89 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v90);
  v303 = &v238 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = a1;
  v317 = a2;
  __swift_allocate_boxed_opaque_existential_1(&v315);
  sub_22088C17C();
  __swift_mutable_project_boxed_opaque_existential_1(&v315, v316);
  sub_22088C13C();
  v313 = a1;
  v314 = a2;
  __swift_allocate_boxed_opaque_existential_1(&v312);
  v286 = a1;
  v287 = a2;
  sub_22088C17C();
  v92 = OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_stock;
  v308 = sub_22088684C();
  v309 = v93;

  MEMORY[0x223D89680](548913696, 0xA400000000000000);

  v95 = v308;
  v94 = v309;
  v96 = sub_2208867BC();
  v98 = v97;
  v308 = v95;
  v309 = v94;
  v99 = v88;
  v100 = v89;

  MEMORY[0x223D89680](v96, v98);

  v101 = v309;
  __swift_mutable_project_boxed_opaque_existential_1(&v312, v313);
  sub_22088C14C();
  v102 = v3;
  sub_2204B1CA8(v3 + OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_quote, v87);
  v103 = *(v100 + 6);
  v104 = v103(v87, 1, v99);
  v284 = v102;
  v281 = v92;
  if (v104 == 1)
  {

    sub_220570398(v87);
LABEL_92:
    sub_22046DA2C(&v312, &v308);
    __swift_mutable_project_boxed_opaque_existential_1(&v315, v316);
    sub_22088C15C();
    sub_2205F7828(&v308);
    v226 = v286;
    v227 = v287;
    v310 = v286;
    v311 = v287;
    __swift_allocate_boxed_opaque_existential_1(&v308);
    sub_22088C17C();
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v229 = objc_opt_self();
    v230 = [v229 bundleForClass_];
    v231 = sub_220884CAC();
    v233 = v232;

    v305[0] = v231;
    v305[1] = v233;

    MEMORY[0x223D89680](32, 0xE100000000000000);

    __swift_mutable_project_boxed_opaque_existential_1(&v308, v310);
    sub_22088C12C();

    v234 = v282;
    sub_22088678C();
    sub_220884E0C();
    (*(v283 + 8))(v234, v285);
    __swift_mutable_project_boxed_opaque_existential_1(&v308, v310);
    sub_22088C11C();

    sub_22046DA2C(&v308, v305);
    __swift_mutable_project_boxed_opaque_existential_1(&v315, v316);
    sub_22088C15C();
    sub_2205F7828(v305);
    v306 = v226;
    v307 = v227;
    __swift_allocate_boxed_opaque_existential_1(v305);
    sub_22088C17C();
    v235 = [v229 bundleForClass_];
    sub_220884CAC();

    __swift_mutable_project_boxed_opaque_existential_1(v305, v306);
    sub_22088C12C();

    sub_22046DA2C(v305, v304);
    __swift_mutable_project_boxed_opaque_existential_1(&v315, v316);
    sub_22088C15C();
    sub_2205F7828(v304);
    __swift_project_boxed_opaque_existential_1(&v315, v316);
    v236 = sub_22088C16C();
    __swift_destroy_boxed_opaque_existential_1(v305);
    __swift_destroy_boxed_opaque_existential_1(&v308);
    __swift_destroy_boxed_opaque_existential_1(&v312);
    __swift_destroy_boxed_opaque_existential_1(&v315);
    return v236;
  }

  v241 = v101;
  v105 = v303;
  (*(v100 + 4))(v303, v87, v99);
  __swift_mutable_project_boxed_opaque_existential_1(&v312, v313);
  sub_22088C13C();
  v106 = v289;
  (*(v100 + 2))(v289, v105, v99);
  (*(v100 + 7))(v106, 0, 1, v99);
  v107 = v288;
  sub_2208867CC();
  v108 = *&v242;
  sub_2204B1CA8(v106, *&v242);
  if (v103(v108, 1, v99) == 1)
  {
    sub_220570398(v108);
    v279 = 0.0;
    v299 = 1;
  }

  else
  {
    v279 = COERCE_DOUBLE(sub_22088675C());
    v299 = v109;
    (*(v100 + 1))(v108, v99);
  }

  v110 = v291;
  v111 = v280;
  sub_2204B1CA8(v106, v280);
  if (v103(v111, 1, v99) == 1)
  {
    sub_220570398(v111);
    v242 = 0.0;
    LODWORD(v280) = 1;
  }

  else
  {
    v242 = COERCE_DOUBLE(sub_22088666C());
    LODWORD(v280) = v112;
    (*(v100 + 1))(v111, v99);
  }

  v113 = v243;
  sub_2204B1CA8(v106, v243);
  if (v103(v113, 1, v99) == 1)
  {
    sub_220570398(v113);
    v240 = 0;
    v239 = 1;
  }

  else
  {
    v240 = sub_22088671C();
    v239 = v114;
    (*(v100 + 1))(v113, v99);
  }

  v115 = v244;
  v244 = v100;
  sub_2204B1CA8(v106, v115);
  v116 = v103(v115, 1, v99);
  v238 = v99;
  if (v116 == 1)
  {
    sub_220570398(v115);
    v243 = 0;
    v117 = 0;
  }

  else
  {
    v243 = sub_22088668C();
    v117 = v118;
    v244[1](v115, v99);
  }

  v119 = v298;
  v120 = v290;
  v121 = *(v110 + 2);
  v122 = v247;
  v121(v290, v107, v247);
  v123 = v248;
  v124 = v246;
  v125 = v120;
  v126 = v249;
  (*(v248 + 104))(v246, *MEMORY[0x277D69288], v249);
  v127 = v292;
  sub_22088524C();
  *v119 = v279;
  *(v119 + 8) = v299 & 1;
  v119[2] = v242;
  *(v119 + 24) = v280 & 1;
  *(v119 + 4) = v240;
  *(v119 + 40) = v239 & 1;
  *(v119 + 6) = v243;
  *(v119 + 7) = v117;
  v128 = v245;
  v121(v119 + *(v245 + 40), v125, v122);
  *(v119 + 8) = 9666786;
  v119[9] = -4.19867257e-140;
  v129 = *(v123 + 16);
  v243 = *(v128 + 36);
  v129(v119 + v243, v124, v126);
  v130 = *(v128 + 44);
  v131 = v250;
  v132 = v251;
  (*(v250 + 16))(v119 + v130, v127, v251);
  if (qword_281294078 != -1)
  {
    swift_once();
  }

  v133 = qword_2812B6B48;
  (*(v123 + 8))(v124, v126);
  v134 = *(v291 + 1);
  v134(v290, v122);
  v134(v288, v122);
  sub_220570398(v289);
  v135 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  swift_beginAccess();
  (*(v131 + 40))(v133 + v135, v127, v132);
  swift_endAccess();
  if ((v299 & 1) == 0)
  {
    v136 = v279;
    if (v279 == 0.0 || fabs(v279) >= 5.0)
    {
      if (qword_281294138 != -1)
      {
        swift_once();
      }

      v137 = &qword_2812B6B60;
    }

    else
    {
      if (qword_27CF55B40 != -1)
      {
        swift_once();
      }

      v137 = &qword_27CF6D0B0;
    }

    v138 = *v137;
    [v138 setNumberStyle_];
    v139 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v140 = [v138 stringFromNumber_];

    if (v140)
    {
      v245 = sub_22089136C();
      v246 = v141;

      goto LABEL_30;
    }
  }

  v246 = 0xA300000000000000;
  v245 = 9666786;
LABEL_30:
  v142 = v294;
  sub_2208866FC();
  v143 = v293;
  sub_220884EFC();
  v144 = sub_220884F0C();
  v145 = *(v144 - 8);
  v250 = *(v145 + 56);
  v251 = v145 + 56;
  (v250)(v143, 0, 1, v144);
  v248 = sub_220884EEC();
  v146 = *(v248 - 8);
  v247 = *(v146 + 56);
  v249 = v146 + 56;
  v147 = v253;
  (v247)(v253, 1, 1, v248);
  sub_220884D8C();
  sub_22088524C();
  sub_22088533C();
  sub_22088540C();
  v148 = v295;
  sub_220884F2C();
  v289 = sub_2205F78B0();
  v149 = v148;
  v150 = v260;
  sub_22088514C();
  v259 = *(v259 + 8);
  (v259)(v149, v150);
  v288 = *(v300 + 8);
  v300 += 8;
  (v288)(v142, v296);
  v290 = v308;
  v291 = v309;
  sub_2208866FC();
  (v250)(v293, 1, 1, v144);
  (v247)(v147, 1, 1, v248);
  sub_220884D8C();
  sub_22088524C();
  sub_22088533C();
  sub_22088540C();
  v151 = v252;
  sub_220884F2C();
  v152 = v262;
  sub_220884F8C();
  v153 = v261;
  sub_220884F7C();
  (*(v265 + 8))(v152, v266);
  v154 = v254;
  sub_220884F3C();
  (*(v263 + 8))(v153, v264);
  v155 = v151;
  v156 = v259;
  (v259)(v155, v150);
  v157 = v267;
  sub_220884FEC();
  v158 = v256;
  sub_22088503C();
  (*(v268 + 8))(v157, v269);
  v156(v154, v150);
  v159 = v274;
  v160 = v271;
  v161 = v275;
  (*(v274 + 104))(v271, *MEMORY[0x277CC9400], v275);
  v162 = v270;
  sub_22088500C();
  (*(v159 + 8))(v160, v161);
  v163 = v295;
  sub_22088504C();
  (*(v272 + 8))(v162, v273);
  v156(v158, v150);
  v164 = v294;
  sub_22088514C();
  v156(v163, v150);
  v165 = v296;
  v166 = v288;
  (v288)(v164, v296);
  v167 = v308;
  v168 = v309;
  sub_2208866FC();
  v169 = sub_220838C44();
  v166(v164, v165);
  type metadata accessor for Localized();
  v170 = swift_getObjCClassFromMetadata();
  v171 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();
  v173 = v172;

  sub_220448068(0, &qword_28127DE60, &qword_28127DE10, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v174 = swift_allocObject();
  *(v174 + 16) = xmmword_22089B140;
  v175 = MEMORY[0x277D83C10];
  *(v174 + 56) = MEMORY[0x277D83B88];
  *(v174 + 64) = v175;
  *(v174 + 32) = v169;
  v176 = MEMORY[0x277D837D0];
  *(v174 + 96) = MEMORY[0x277D837D0];
  v177 = sub_22048D860();
  v178 = v291;
  *(v174 + 72) = v290;
  *(v174 + 80) = v178;
  *(v174 + 136) = v176;
  *(v174 + 144) = v177;
  *(v174 + 104) = v177;
  *(v174 + 112) = v167;
  *(v174 + 120) = v168;

  v296 = v168;

  v293 = v173;
  v294 = sub_22089139C();
  v295 = v179;
  v180 = *MEMORY[0x277D69480];
  v181 = v302;
  v182 = v277;
  v183 = *MEMORY[0x277D69480];
  v184 = v301;
  v300 = v302[13];
  (v300)(v277, v183, v301);
  v185 = v181[2];
  v186 = v276;
  v185(v276, v182, v184);
  v187 = v181[11];
  v188 = v187(v186, v184);
  if (v188 != v180)
  {
    if (v188 == *MEMORY[0x277D69468])
    {
      if ((v299 | v280))
      {
        v189 = 0xA300000000000000;
        v190 = 9666786;
        goto LABEL_60;
      }

      if (v279 - v242 <= 0.0)
      {
        v194 = 0.0;
      }

      else
      {
        v194 = v242 / (v279 - v242);
      }

      if (qword_27CF55AB8 == -1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (v188 != *MEMORY[0x277D69478])
      {
        goto LABEL_98;
      }

      if ((sub_2208857CC() & 1) == 0)
      {
        v190 = sub_220691100(0);
        v189 = v199;
        goto LABEL_59;
      }

      if ((v299 | v280))
      {
        goto LABEL_57;
      }

      if (v279 - v242 <= 0.0)
      {
        v194 = 0.0;
      }

      else
      {
        v194 = v242 / (v279 - v242);
      }

      if (qword_27CF55AB8 == -1)
      {
LABEL_55:
        v195 = qword_27CF6D008;
        v196 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        v197 = [v195 stringFromNumber_];

        if (v197)
        {
          v190 = sub_22089136C();
          v189 = v198;

LABEL_59:
          v181 = v302;
          goto LABEL_60;
        }

LABEL_57:
        v189 = 0xA300000000000000;
        v190 = 9666786;
        goto LABEL_59;
      }
    }

    swift_once();
    goto LABEL_55;
  }

  v189 = 0xA300000000000000;
  v190 = 9666786;
  if ((v280 & 1) == 0)
  {
    v191 = v279 >= 5.0;
    if (v279 == 0.0)
    {
      v191 = 1;
    }

    v192 = sub_2204DBC04(v191 & ~v299, v242);
    if (v193)
    {
      v190 = v192;
    }

    else
    {
      v190 = 9666786;
    }

    if (v193)
    {
      v189 = v193;
    }
  }

LABEL_60:
  v290 = v190;
  v292 = v189;
  v200 = v181[1];
  v201 = v301;
  v302 = v181 + 1;
  v200(v182, v301);
  v202 = *MEMORY[0x277D69468];
  v203 = v297;
  (v300)(v297, *MEMORY[0x277D69468], v201);
  v204 = v278;
  v185(v278, v203, v201);
  v205 = v187(v204, v201);
  if (v205 == v180)
  {
    v206 = 0xA300000000000000;
    v207 = v303;
    if (v280)
    {
      v208 = v298;
      v209 = 9666786;
    }

    else
    {
      v210 = v279 >= 5.0;
      if (v279 == 0.0)
      {
        v210 = 1;
      }

      v211 = sub_2204DBC04(v210 & ~v299, v242);
      v209 = 9666786;
      if (v212)
      {
        v209 = v211;
        v206 = v212;
      }

      v208 = v298;
    }

    goto LABEL_87;
  }

  v207 = v303;
  if (v205 != v202)
  {
    v208 = v298;
    if (v205 != *MEMORY[0x277D69478])
    {
      goto LABEL_98;
    }

    v209 = 9666786;
    if ((sub_2208857CC() & 1) == 0)
    {
      v209 = sub_220691100(0);
      v206 = v218;
      goto LABEL_87;
    }

    if ((v299 | v280))
    {
      goto LABEL_85;
    }

    if (v279 - v242 <= 0.0)
    {
      v213 = 0.0;
    }

    else
    {
      v213 = v242 / (v279 - v242);
    }

    if (qword_27CF55AB8 == -1)
    {
LABEL_83:
      v214 = qword_27CF6D008;
      v215 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v216 = [v214 stringFromNumber_];

      if (v216)
      {
        v209 = sub_22089136C();
        v206 = v217;

        goto LABEL_87;
      }

LABEL_85:
      v206 = 0xA300000000000000;
      goto LABEL_87;
    }

LABEL_94:
    swift_once();
    goto LABEL_83;
  }

  v208 = v298;
  v209 = 9666786;
  if (((v299 | v280) & 1) == 0)
  {
    if (v279 - v242 <= 0.0)
    {
      v213 = 0.0;
    }

    else
    {
      v213 = v242 / (v279 - v242);
    }

    if (qword_27CF55AB8 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_94;
  }

  v206 = 0xA300000000000000;
LABEL_87:
  v200(v297, v301);
  sub_22088668C();
  if (!v219)
  {

    v225 = 0;
    v224 = 0xE000000000000000;
    goto LABEL_91;
  }

  v220 = sub_22088668C();
  if (v221)
  {
    v222 = v220;
    v223 = v221;

    v308 = v222;
    v309 = v223;

    MEMORY[0x223D89680](32, 0xE100000000000000);

    v225 = v308;
    v224 = v309;
LABEL_91:
    v308 = v245;
    v309 = v246;

    MEMORY[0x223D89680](32, 0xE100000000000000);

    MEMORY[0x223D89680](v225, v224);

    MEMORY[0x223D89680](v294, v295);

    __swift_mutable_project_boxed_opaque_existential_1(&v312, v313);
    sub_22088C12C();

    __swift_mutable_project_boxed_opaque_existential_1(&v312, v313);
    sub_22088C13C();
    v308 = v290;
    v309 = v292;

    MEMORY[0x223D89680](32, 0xE100000000000000);

    MEMORY[0x223D89680](v209, v206);

    __swift_mutable_project_boxed_opaque_existential_1(&v312, v313);
    sub_22088C12C();

    sub_2205F7908(v208);
    v244[1](v207, v238);
    goto LABEL_92;
  }

  __break(1u);
LABEL_98:
  result = sub_2208928AC();
  __break(1u);
  return result;
}

void sub_2205F6AC0()
{
  sub_22088685C();
  if (v0 <= 0x3F)
  {
    sub_220453FB8(319, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double sub_2205F6D0C@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    *(a2 + 24) = sub_220884E9C();
    __swift_allocate_boxed_opaque_existential_1(a2);
    sub_22088678C();
    return result;
  }

  v4 = sub_22089136C();
  v6 = v5;
  if (v4 == sub_22089136C() && v6 == v7)
  {
    v11 = a1;

LABEL_12:
    v12 = sub_22088BB2C();
    v13 = sub_2205F4390(v12, MEMORY[0x277D6DA38]);
    if (v14)
    {
      v15 = v13;
      v16 = v14;
      *(a2 + 24) = MEMORY[0x277D837D0];

      *a2 = v15;
      *(a2 + 8) = v16;
    }

    else
    {

      result = 0.0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    return result;
  }

  v9 = sub_2208928BC();
  v17 = a1;

  if (v9)
  {
    goto LABEL_12;
  }

  *(a2 + 24) = sub_220884E9C();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_22088678C();

  return result;
}

uint64_t sub_2205F7134()
{
  sub_22048BC00();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22089B130;
  *(v1 + 32) = v0;
  sub_220453FB8(0, &qword_27CF57720, type metadata accessor for ActivityType, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22089D630;
  v3 = *MEMORY[0x277D54708];
  v4 = *MEMORY[0x277D54778];
  *(v2 + 32) = *MEMORY[0x277D54708];
  *(v2 + 40) = v4;
  v5 = *MEMORY[0x277D54718];
  v6 = *MEMORY[0x277D54780];
  *(v2 + 48) = *MEMORY[0x277D54718];
  *(v2 + 56) = v6;
  v7 = *MEMORY[0x277D54750];
  v8 = *MEMORY[0x277D54768];
  *(v2 + 64) = *MEMORY[0x277D54750];
  *(v2 + 72) = v8;
  v9 = *MEMORY[0x277D54720];
  *(v2 + 80) = *MEMORY[0x277D54720];
  v10 = objc_allocWithZone(sub_22088C8CC());
  v11 = v20;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  return sub_22088C8BC();
}

NSData *sub_2205F72B0()
{
  v0 = sub_220884E9C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CD46C8]) init];
  sub_22088678C();
  v6 = sub_220884E3C();
  v7 = *(v1 + 8);
  v7(v4, v0);
  [v5 setOriginalURL_];

  sub_22088678C();
  v8 = sub_220884E3C();
  v7(v4, v0);
  [v5 setURL_];

  v9 = [objc_allocWithZone(MEMORY[0x277CD46F8]) init];
  sub_220448068(0, &qword_28127DE60, &qword_28127DE10, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_220899920;
  v11 = sub_22088684C();
  v13 = v12;
  v14 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v15 = sub_22048D860();
  *(v10 + 64) = v15;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v16 = sub_2208867BC();
  *(v10 + 96) = v14;
  *(v10 + 104) = v15;
  *(v10 + 72) = v16;
  *(v10 + 80) = v17;
  sub_22089139C();
  v18 = sub_22089132C();

  [v9 setCombinedTitle_];

  sub_22088684C();
  v19 = sub_22089132C();

  [v9 setTitle_];

  sub_2208867BC();
  v20 = sub_22089132C();

  [v9 setSubtitle_];

  v21 = sub_22089132C();
  [v9 setFootnote_];

  v22 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v23 = sub_22089132C();
  v24 = [v22 initWithBundleIdentifier_];

  v25 = [objc_opt_self() mainScreen];
  [v25 scale];
  v27 = v26;

  v28 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:60.0 scale:{60.0, v27}];
  sub_22048BC00();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_22089B130;
  *(v29 + 32) = v28;
  sub_22044D56C(0, &qword_27CF577C0);
  v30 = v28;
  v31 = sub_2208916DC();

  [v24 prepareImagesForImageDescriptors_];

  v32 = [v24 imageForDescriptor_];
  if (!v32)
  {
    goto LABEL_5;
  }

  v33 = v32;
  result = [v32 CGImage];
  if (result)
  {
    v35 = result;
    v46 = v5;
    v36 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

    result = UIImagePNGRepresentation(v36);
    if (result)
    {
      v37 = result;
      v38 = sub_220884ECC();
      v40 = v39;

      v41 = objc_allocWithZone(MEMORY[0x277CD46B0]);
      v42 = sub_220884EBC();
      v43 = sub_22089132C();
      v44 = [v41 initWithData:v42 MIMEType:v43];

      sub_220457EE8(v38, v40);
      [v9 setIcon_];

      v5 = v46;
LABEL_5:
      [v5 setSpecialization_];

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2205F7828(uint64_t a1)
{
  sub_220448068(0, &qword_27CF577C8, &qword_27CF577D0, MEMORY[0x277D6DDB0], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2205F78B0()
{
  result = qword_2812994B8;
  if (!qword_2812994B8)
  {
    sub_22088505C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812994B8);
  }

  return result;
}

uint64_t sub_2205F7908(uint64_t a1)
{
  v2 = type metadata accessor for PriceViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2205F7968()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_2205F7A00()
{
  sub_22089146C();
}

uint64_t sub_2205F7A84()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_2205F7B18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2205F7E4C();
  *a1 = result;
  return result;
}

void sub_2205F7B48(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEB00000000647261;
  v5 = 0x63616C507377656ELL;
  if (v2 != 1)
  {
    v5 = 25697;
    v4 = 0xE200000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1937204590;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_2205F7BA0()
{
  result = qword_281290648;
  if (!qword_281290648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281290648);
  }

  return result;
}

uint64_t sub_2205F7BF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x63616C507377656ELL;
  v4 = 0xEB00000000647261;
  if (v2 != 1)
  {
    v3 = 25697;
    v4 = 0xE200000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1937204590;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x63616C507377656ELL;
  v8 = 0xEB00000000647261;
  if (*a2 != 1)
  {
    v7 = 25697;
    v8 = 0xE200000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1937204590;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2208928BC();
  }

  return v11 & 1;
}

unint64_t sub_2205F7D98()
{
  result = qword_281290640;
  if (!qword_281290640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281290640);
  }

  return result;
}

uint64_t sub_2205F7DFC()
{
  v1 = 0x616C50207377654ELL;
  if (*v0 != 1)
  {
    v1 = 25665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1937204558;
  }
}

uint64_t sub_2205F7E4C()
{
  v0 = sub_22089270C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2205F7EAC()
{
  result = qword_27CF577D8;
  if (!qword_27CF577D8)
  {
    sub_2205F7F04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF577D8);
  }

  return result;
}

void sub_2205F7F04()
{
  if (!qword_27CF577E0)
  {
    v0 = sub_2208917AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF577E0);
    }
  }
}

void *sub_2205F7F54(uint64_t a1)
{
  v3 = type metadata accessor for WatchlistCreationRouteModel();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3, v7);
  v8 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextInputAlert();
  v9 = swift_allocObject();
  v9[5] = &type metadata for WatchlistCreationAlert;
  v9[6] = &off_28341FF18;
  v9[9] = 0;
  v9[10] = 0;
  v9[12] = 0;
  v9[13] = 0;
  v9[11] = sub_22045F7BC;
  sub_2205F8458(a1, v8);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  sub_2205F84BC(v8, v11 + v10);
  v9[7] = sub_2205F8520;
  v9[8] = v11;
  v12 = (a1 + *(v4 + 28));
  v13 = *v12;
  v14 = v12[1];
  if (*v12)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = v14;
    v9[9] = sub_2204D48F4;
    v9[10] = v15;
  }

  v9[11] = sub_2205F83D0;
  v9[12] = 0;

  sub_2204A80F4(v13);
  return v9;
}

uint64_t sub_2205F8108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a3;
  v8 = type metadata accessor for WatchlistCreationRouteModel();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v11;
  v13 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v4;
  v28 = a1;
  v29 = a2;
  type metadata accessor for WatchlistCreationResult();
  sub_220888FBC();
  v26 = sub_22046D5B4();
  v14 = sub_220891D0C();
  sub_2205F8458(a3, v13);
  v15 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v25 = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  sub_2205F84BC(v13, v16 + v15);
  sub_220886A4C();

  sub_220888E3C();

  v17 = v24;
  sub_2205F8458(v24, v13);
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  sub_2205F84BC(v13, v18 + v15);

  v19 = sub_220888D9C();
  sub_220888E3C();

  v20 = sub_220891D0C();
  sub_2205F8458(v17, v13);
  v21 = swift_allocObject();
  *(v21 + 16) = v4;
  sub_2205F84BC(v13, v21 + v15);

  sub_220888E4C();
}

BOOL sub_2205F83D0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  return v2 != 0;
}

uint64_t sub_2205F83EC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2205F8458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchlistCreationRouteModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205F84BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchlistCreationRouteModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205F859C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for WatchlistCreationResult();
  MEMORY[0x28223BE20](v6, v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v12 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    MEMORY[0x28223BE20](v8, v9);
    v19[-4] = a1;
    v19[-3] = a2;
    v19[-2] = a3;
    sub_220886A4C();
    sub_220888FBC();
    v13 = sub_220888D9C();
    sub_220888E3C();

    v14 = sub_220888D9C();
    v15 = sub_220888EFC();

    return v15;
  }

  else
  {
    v17 = *(v6 + 20);
    v18 = sub_220886A4C();
    (*(*(v18 - 8) + 56))(&v11[v17], 1, 1, v18);
    *v11 = 1;
    sub_22047C3B8(0, &qword_27CF57808, type metadata accessor for WatchlistCreationResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_220888ECC();
  }
}

uint64_t type metadata accessor for WatchlistCreationResult()
{
  result = qword_27CF57818;
  if (!qword_27CF57818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2205F8824(char *a1, uint64_t a2, uint64_t a3)
{
  sub_22047C3B8(0, &qword_281298FF0, MEMORY[0x277D698E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v25 - v7;
  v9 = sub_220886A4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v25 - v16;
  v18 = *a1;
  if (v18 == 3)
  {
    v19 = type metadata accessor for WatchlistCreationResult();
    sub_2205FAF20(&a1[*(v19 + 20)], v8, &qword_281298FF0, MEMORY[0x277D698E0], MEMORY[0x277D83D88], sub_22047C3B8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      v20 = MEMORY[0x277D698E0];
      sub_2205FB270(v8, &qword_281298FF0, MEMORY[0x277D698E0], MEMORY[0x277D83D88], sub_22047C3B8);
      sub_2205F8C4C(2, a3);
      sub_2205FACD4();
      swift_allocError();
      *v21 = 2;
      sub_22047C3B8(0, &qword_27CF577E8, v20, MEMORY[0x277D6CF30]);
      swift_allocObject();
      return sub_220888EBC();
    }

    else
    {
      (*(v10 + 32))(v17, v8, v9);
      (*(v10 + 16))(v13, v17, v9);
      sub_22047C3B8(0, &qword_27CF577E8, MEMORY[0x277D698E0], MEMORY[0x277D6CF30]);
      swift_allocObject();
      v24 = sub_220888ECC();
      (*(v10 + 8))(v17, v9);
      return v24;
    }
  }

  else
  {
    sub_2205F8C4C(*a1, a3);
    sub_2205FACD4();
    swift_allocError();
    *v23 = v18;
    sub_22047C3B8(0, &qword_27CF577E8, MEMORY[0x277D698E0], MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_220888EBC();
  }
}

uint64_t sub_2205F8C4C(char a1, uint64_t a2)
{
  v3 = v2;
  v41 = a2;
  sub_22047C3B8(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v39 - v10;
  v12 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WatchlistCreationRouteModel();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8, v19);
  *(&v50 + 1) = &type metadata for WatchlistCreationErrorAlert;
  v51 = sub_2205FAD28();
  LOBYTE(v49) = a1;
  sub_22088E0CC();
  swift_allocObject();
  v20 = sub_22088E07C();
  sub_2205F8458(v41, &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v3;
  v23 = v11;
  sub_2205F84BC(&v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);

  sub_22088E0AC();

  v24 = *(v3 + 56);
  v41 = v20;
  *v15 = v20;
  v15[40] = 0;
  swift_storeEnumTagMultiPayload();
  v25 = sub_22088969C();
  (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  v46 = v24;
  sub_2205FAF20(v47, &v42, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  if (*(&v43 + 1))
  {
    sub_220458198(&v42, v44);

    v26 = sub_220597454(v44);
    v28 = v27;
    v30 = v29;
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {

    sub_2205FB270(&v42, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v26 = qword_2812908F8;
    v28 = qword_281290900;
    v30 = qword_281290908;

    sub_2204A80F4(v28);
  }

  v43 = 0u;
  v42 = 0u;
  v31 = v40;
  sub_2205FAF20(v23, v40, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_22047C3B8);
  sub_2205FAF20(&v49, v44, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  v32 = (*(v39 + 80) + 24) & ~*(v39 + 80);
  v33 = (v6 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  sub_2205A0994(v31, v34 + v32);
  v35 = v34 + v33;
  v36 = v44[1];
  *v35 = v44[0];
  *(v35 + 16) = v36;
  *(v35 + 32) = v45;
  v37 = (v34 + ((v33 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v37 = v26;
  v37[1] = v28;
  v37[2] = v30;

  sub_2204A80F4(v28);
  sub_2204549FC();
  sub_2205FAF98(&unk_281297EC0, sub_2204549FC);
  sub_22088E92C();

  sub_2204DA45C(v28);

  sub_2205FB270(v47, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_2205FB270(&v49, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_2205FB270(v23, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_22047C3B8);
  sub_2205BA954(v15);
  return sub_2205FB270(&v42, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205FB3E0);
}

uint64_t sub_2205F94B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v5 = sub_220886A4C();
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047C3B8(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = sub_22088685C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a2;
  sub_22088B48C();
  if (v26)
  {
    sub_2204446D4(0, &qword_281297F10);
    sub_22088731C();
    if (swift_dynamicCast())
    {
      sub_220889A7C();
      v21 = v8;
      sub_2205FAF98(&qword_27CF577F0, MEMORY[0x277D689B0]);
      v8 = v21;
      sub_22088730C();
    }
  }

  else
  {
    sub_2205FB270(v25, &unk_281297F00, &qword_281297F10, MEMORY[0x277D6D540], sub_220448010);
  }

  sub_2205FAF20(v24, v12, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88], sub_22047C3B8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2205FB270(v12, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88], sub_22047C3B8);
    (*(v23 + 16))(v8, a1, v5);
    sub_22047C3B8(0, &qword_27CF577E8, MEMORY[0x277D698E0], MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_220888ECC();
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    sub_22046DA2C(v22 + 16, v25);
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v19 = sub_220885FFC();
    (*(v14 + 8))(v17, v13);
    __swift_destroy_boxed_opaque_existential_1(v25);
    return v19;
  }
}

uint64_t sub_2205F99F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v5 = MEMORY[0x277D83D88];
  sub_22047C3B8(0, &qword_281298FF0, MEMORY[0x277D698E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v27 = &v27 - v8;
  v9 = MEMORY[0x277D69810];
  sub_22047C3B8(0, &qword_281299060, MEMORY[0x277D69810], v5);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v27 - v12;
  v14 = *(a2 + 40);
  v15 = __swift_project_boxed_opaque_existential_1((a2 + 16), v14);
  v16 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v15, v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v17);
  sub_220885F4C();
  (*(v16 + 8))(v19, v14);
  v20 = a1;
  sub_22088EB7C();

  sub_2205FAF20(v28, v13, &qword_281299060, v9, v5, sub_22047C3B8);
  v21 = sub_22088685C();
  LODWORD(v14) = (*(*(v21 - 8) + 48))(v13, 1, v21);
  result = sub_2205FB270(v13, &qword_281299060, v9, v5, sub_22047C3B8);
  if (v14 == 1)
  {
    sub_22088B45C();
    swift_getObjectType();
    if (qword_281297010 != -1)
    {
      swift_once();
    }

    v23 = sub_220886A4C();
    v24 = *(v23 - 8);
    v25 = v27;
    (*(v24 + 16))(v27, v20, v23);
    (*(v24 + 56))(v25, 0, 1, v23);
    v26 = v29;
    sub_22088B81C();
    if (v26)
    {

      swift_unknownObjectRelease();
      return sub_2205FB270(v25, &qword_281298FF0, MEMORY[0x277D698E0], MEMORY[0x277D83D88], sub_22047C3B8);
    }

    else
    {
      sub_2205FB270(v25, &qword_281298FF0, MEMORY[0x277D698E0], MEMORY[0x277D83D88], sub_22047C3B8);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2205F9EE4(uint64_t a1)
{
  sub_22046DA2C(a1 + 16, v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1 = sub_220885F1C();
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v1;
}

uint64_t sub_2205F9F70(uint64_t a1)
{
  v2 = type metadata accessor for WatchlistCreationResult();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 28);
  v8 = sub_220886A4C();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v5[v7], a1, v8);
  (*(v9 + 56))(&v5[v7], 0, 1, v8);
  *v5 = 3;
  sub_22047C3B8(0, &qword_27CF57808, type metadata accessor for WatchlistCreationResult, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_2205FA0C4(void *a1)
{
  v2 = type metadata accessor for WatchlistCreationResult();
  MEMORY[0x28223BE20](v2, v3);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047C3B8(0, &qword_27CF57810, MEMORY[0x277D69328], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v34 - v8;
  v10 = sub_22088583C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = v34 - v17;
  v34[1] = a1;
  v19 = a1;
  sub_2204446D4(0, &qword_28127DE30);
  v20 = swift_dynamicCast();
  v21 = *(v11 + 56);
  if ((v20 & 1) == 0)
  {
    v21(v9, 1, 1, v10);
    sub_2205FB270(v9, &qword_27CF57810, MEMORY[0x277D69328], MEMORY[0x277D83D88], sub_22047C3B8);
    goto LABEL_5;
  }

  v21(v9, 0, 1, v10);
  (*(v11 + 32))(v18, v9, v10);
  (*(v11 + 16))(v14, v18, v10);
  v22 = (*(v11 + 88))(v14, v10);
  if (v22 != *MEMORY[0x277D69320])
  {
    if (v22 == *MEMORY[0x277D69318])
    {
      v28 = *(v2 + 20);
      v29 = sub_220886A4C();
      (*(*(v29 - 8) + 56))(&v5[v28], 1, 1, v29);
      *v5 = 1;
      goto LABEL_10;
    }

    if (v22 == *MEMORY[0x277D69310])
    {
      v30 = *(v2 + 20);
      v31 = sub_220886A4C();
      (*(*(v31 - 8) + 56))(&v5[v30], 1, 1, v31);
      *v5 = 2;
      goto LABEL_10;
    }

    v33 = *(v11 + 8);
    v33(v18, v10);
    v33(v14, v10);
LABEL_5:
    v25 = *(v2 + 20);
    v26 = sub_220886A4C();
    (*(*(v26 - 8) + 56))(&v5[v25], 1, 1, v26);
    *v5 = 2;
    sub_22047C3B8(0, &qword_27CF57808, type metadata accessor for WatchlistCreationResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_220888ECC();
  }

  v23 = *(v2 + 20);
  v24 = sub_220886A4C();
  (*(*(v24 - 8) + 56))(&v5[v23], 1, 1, v24);
  *v5 = 0;
LABEL_10:
  sub_22047C3B8(0, &qword_27CF57808, type metadata accessor for WatchlistCreationResult, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v32 = sub_220888ECC();
  (*(v11 + 8))(v18, v10);
  return v32;
}

uint64_t sub_2205FA5F8(uint64_t a1, uint64_t a2)
{
  sub_22047C3B8(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  v8 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v31[-v11];
  v13 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v31[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(a1 + 56);
  sub_2205F8458(a2, v16);
  swift_storeEnumTagMultiPayload();
  v18 = sub_22088969C();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v36 = v17;
  sub_2205FAF20(v37, &v32, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  if (*(&v33 + 1))
  {
    sub_220458198(&v32, v34);
    v19 = sub_220597454(v34);
    v21 = v20;
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    sub_2205FB270(&v32, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v19 = qword_2812908F8;
    v21 = qword_281290900;
    v23 = qword_281290908;

    sub_2204A80F4(v21);
  }

  v33 = 0u;
  v32 = 0u;
  sub_2205FAF20(v12, v8, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_22047C3B8);
  sub_2205FAF20(v39, v34, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  v24 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v25 = (v6 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  sub_2205A0994(v8, v26 + v24);
  v27 = v26 + v25;
  v28 = v34[1];
  *v27 = v34[0];
  *(v27 + 16) = v28;
  *(v27 + 32) = v35;
  v29 = (v26 + ((v25 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v29 = v19;
  v29[1] = v21;
  v29[2] = v23;

  sub_2204A80F4(v21);
  sub_2204549FC();
  sub_2205FAF98(&unk_281297EC0, sub_2204549FC);
  sub_22088E92C();

  sub_2204DA45C(v21);
  sub_2205FB270(v37, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_2205FB270(v39, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_2205FB270(v12, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_22047C3B8);
  sub_2205BA954(v16);
  return sub_2205FB270(&v32, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205FB3E0);
}

unint64_t sub_2205FACD4()
{
  result = qword_27CF577F8;
  if (!qword_27CF577F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF577F8);
  }

  return result;
}

unint64_t sub_2205FAD28()
{
  result = qword_27CF57800;
  if (!qword_27CF57800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57800);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for WatchlistCreationRouteModel();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = sub_22088685C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  if (*(v0 + v2 + *(v1 + 20)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2205FAEBC()
{
  v1 = *(type metadata accessor for WatchlistCreationRouteModel() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_2205FA5F8(v2, v3);
}

uint64_t sub_2205FAF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_2205FAF98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_19Tm()
{
  sub_22047C3B8(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2205FB16C(uint64_t a1)
{
  sub_22047C3B8(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];

  return sub_220598700(a1, v7, v1 + v5, v1 + v6, v9, v10, v11);
}

uint64_t sub_2205FB270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_2205FB308()
{
  sub_2205FB3E0(319, &qword_27CF57828, &type metadata for WatchlistCreationError, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22047C3B8(319, &qword_281298FF0, MEMORY[0x277D698E0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2205FB3E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2205FB434()
{
  result = qword_27CF57830;
  if (!qword_27CF57830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57830);
  }

  return result;
}

void *sub_2205FB48C(void *a1)
{
  v3 = sub_22088F11C();
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088F14C();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088F17C();
  v26 = v9;
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v25 - v16;
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2205FBB10(0, &qword_281298908, sub_2204953AC, MEMORY[0x277D6CB60]);
  swift_allocObject();
  v1[2] = sub_22088866C();
  v28 = a1;
  sub_22046DA2C(a1, (v1 + 3));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2205FBC20(&qword_281281AF8, v18, type metadata accessor for GoToWatchlistMenuGroupOptionProvider);

  sub_220885FAC();

  sub_22046D5B4();
  v19 = sub_220891D0C();
  sub_22088F16C();
  sub_22088F18C();
  v20 = *(v10 + 8);
  v25 = v10 + 8;
  v20(v14, v9);
  aBlock[4] = sub_2205FBB08;
  v34 = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2204C35E8;
  aBlock[3] = &block_descriptor_13;
  v21 = _Block_copy(aBlock);

  v22 = v27;
  sub_22088F13C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2205FBC20(&qword_281296CA0, 255, MEMORY[0x277D85198]);
  sub_22056D204();
  sub_2205FBC20(&qword_28127EA50, 255, sub_22056D204);
  v23 = v29;
  sub_2208923FC();
  MEMORY[0x223D89E80](v17, v22, v23, v21);
  _Block_release(v21);

  (*(v32 + 8))(v23, v3);
  (*(v30 + 8))(v22, v31);
  v20(v17, v26);
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);

  aBlock[0] = sub_220885FCC();
  sub_2205FBB74();
  sub_2208886AC();

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v1;
}

uint64_t sub_2205FB994(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 24), *(a1 + 48));

  sub_220885FCC();
  sub_2205FBB74();
  sub_2208886AC();
}

uint64_t sub_2205FBA1C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2205FBA80()
{
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));

  sub_220885FCC();
  sub_2205FBB74();
  sub_2208886AC();
}

void sub_2205FBB10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2205FBB74()
{
  result = qword_28127EB20;
  if (!qword_28127EB20)
  {
    sub_2204953AC();
    sub_2205FBC20(&qword_281298FF8, 255, MEMORY[0x277D698E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127EB20);
  }

  return result;
}

uint64_t sub_2205FBC20(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2205FBC94()
{
  v1 = v0;
  v2 = sub_22088685C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205FBE28(v1, v10);
  v11 = (*(v3 + 48))(v10, 2, v2);
  if (v11)
  {
    if (v11 == 1)
    {
      return 0x7961646F74;
    }

    else
    {
      return 1701736302;
    }
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v13 = sub_22088677C();
    (*(v3 + 8))(v6, v2);
    return v13;
  }
}

uint64_t sub_2205FBE28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockListSelectionModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205FBE8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088685C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StockListSelectionModel();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205FC158();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 56);
  sub_2205FBE28(a1, v16);
  sub_2205FBE28(a2, &v16[v18]);
  v19 = *(v5 + 48);
  v20 = v19(v16, 2, v4);
  if (!v20)
  {
    sub_2205FBE28(v16, v12);
    if (!v19(&v16[v18], 2, v4))
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      v24 = MEMORY[0x223D7E940](v12, v8);
      v26 = *(v5 + 8);
      v26(v8, v4);
      v26(v12, v4);
      v22 = type metadata accessor for StockListSelectionModel;
      goto LABEL_10;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_9;
  }

  if (v20 == 1)
  {
    v21 = v19(&v16[v18], 2, v4);
    v22 = type metadata accessor for StockListSelectionModel;
    if (v21 == 1)
    {
      goto LABEL_8;
    }

LABEL_9:
    v24 = 0;
    v22 = sub_2205FC158;
    goto LABEL_10;
  }

  v23 = v19(&v16[v18], 2, v4);
  v22 = type metadata accessor for StockListSelectionModel;
  if (v23 != 2)
  {
    goto LABEL_9;
  }

LABEL_8:
  v24 = 1;
LABEL_10:
  sub_220479404(v16, v22);
  return v24 & 1;
}

void sub_2205FC158()
{
  if (!qword_28128ACE0[0])
  {
    type metadata accessor for StockListSelectionModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_28128ACE0);
    }
  }
}

uint64_t sub_2205FC1C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2205FC210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2205FC274(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v386 = a3;
  v387 = a2;
  v394 = a1;
  v366 = sub_22088B64C();
  v365 = *(v366 - 8);
  MEMORY[0x28223BE20](v366, v4);
  v364 = &v351 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206006E8(0, &qword_281297850, MEMORY[0x277D6DF88]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v9);
  v11 = (&v351 - v10);
  v383 = sub_22088F23C();
  v410 = *(v383 - 8);
  MEMORY[0x28223BE20](v383, v12);
  v379 = &v351 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v431 = sub_22088698C();
  v427 = *(v431 - 8);
  MEMORY[0x28223BE20](v431, v14);
  v424 = &v351 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v423 = (&v351 - v18);
  MEMORY[0x28223BE20](v19, v20);
  v425 = &v351 - v21;
  MEMORY[0x28223BE20](v22, v23);
  v422 = &v351 - v24;
  MEMORY[0x28223BE20](v25, v26);
  v421 = (&v351 - v27);
  v363 = type metadata accessor for NewsStockFeedGroup();
  MEMORY[0x28223BE20](v363, v28);
  v382 = &v351 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v362 = (&v351 - v32);
  MEMORY[0x28223BE20](v33, v34);
  v373 = &v351 - v35;
  v428 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v428, v36);
  v413 = &v351 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v414 = (&v351 - v40);
  MEMORY[0x28223BE20](v41, v42);
  v393 = (&v351 - v43);
  sub_22055D328();
  v429 = *(v44 - 8);
  v430 = v44;
  MEMORY[0x28223BE20](v44, v45);
  v412 = &v351 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47, v48);
  v411 = (&v351 - v49);
  MEMORY[0x28223BE20](v50, v51);
  v378 = &v351 - v52;
  sub_22055D524();
  MEMORY[0x28223BE20](v53 - 8, v54);
  v368 = (&v351 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v56, v57);
  v367 = (&v351 - v58);
  MEMORY[0x28223BE20](v59, v60);
  v392 = &v351 - v61;
  v403 = type metadata accessor for StockFeedSectionDescriptor();
  MEMORY[0x28223BE20](v403, v62);
  v375 = (&v351 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v64, v65);
  v372 = (&v351 - v66);
  MEMORY[0x28223BE20](v67, v68);
  v374 = (&v351 - v69);
  MEMORY[0x28223BE20](v70, v71);
  v371 = (&v351 - v72);
  MEMORY[0x28223BE20](v73, v74);
  v391 = &v351 - v75;
  v370 = type metadata accessor for NewsPlacardStockFeedGroup();
  MEMORY[0x28223BE20](v370, v76);
  v360 = (&v351 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v78, v79);
  v381 = &v351 - v80;
  MEMORY[0x28223BE20](v81, v82);
  *&v359 = &v351 - v83;
  MEMORY[0x28223BE20](v84, v85);
  v380 = &v351 - v86;
  v432 = sub_22088FFFC();
  v418 = *(v432 - 8);
  MEMORY[0x28223BE20](v432, v87);
  v420 = &v351 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v89, v90);
  v415 = &v351 - v91;
  MEMORY[0x28223BE20](v92, v93);
  v419 = &v351 - v94;
  MEMORY[0x28223BE20](v95, v96);
  v417 = &v351 - v97;
  MEMORY[0x28223BE20](v98, v99);
  v426 = &v351 - v100;
  v399 = type metadata accessor for StockFeedGroup();
  v395 = *(v399 - 8);
  MEMORY[0x28223BE20](v399, v101);
  v377 = (&v351 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v103, v104);
  v384 = &v351 - v105;
  MEMORY[0x28223BE20](v106, v107);
  v397 = &v351 - v108;
  MEMORY[0x28223BE20](v109, v110);
  v376 = &v351 - v111;
  MEMORY[0x28223BE20](v112, v113);
  v385 = &v351 - v114;
  MEMORY[0x28223BE20](v115, v116);
  v396 = &v351 - v117;
  MEMORY[0x28223BE20](v118, v119);
  v121 = &v351 - v120;
  MEMORY[0x28223BE20](v122, v123);
  v416 = (&v351 - v124);
  sub_2206006E8(0, &unk_281296F10, MEMORY[0x277D6EC60]);
  v126 = v125;
  v369 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v127);
  v400 = &v351 - v128;
  sub_22055E01C(0);
  MEMORY[0x28223BE20](v129 - 8, v130);
  v132 = &v351 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CE80(0);
  v134 = v133;
  v135 = *(v133 - 8);
  MEMORY[0x28223BE20](v133, v136);
  v390 = &v351 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v138, v139);
  v389 = &v351 - v140;
  MEMORY[0x28223BE20](v141, v142);
  v361 = (&v351 - v143);
  MEMORY[0x28223BE20](v144, v145);
  v147 = &v351 - v146;
  v398 = v3;
  v401 = v126;
  v148 = v394;
  sub_22088E76C();
  if ((*(v135 + 48))(v132, 1, v134) == 1)
  {
    sub_220600894(v132, sub_22055E01C);
    sub_2206007DC();
    *v11 = swift_allocError();
    (*(v8 + 104))(v11, *MEMORY[0x277D6DF68], v7);
    v387(v11);
    return (*(v8 + 8))(v11, v7);
  }

  v356 = v8;
  v358 = v11;
  v357 = v7;
  (*(v135 + 32))(v147, v132, v134);
  v150 = sub_2206D141C();
  v151 = v134;
  if (v152)
  {
    sub_2206007DC();
    v153 = swift_allocError();
    v154 = v358;
    *v358 = v153;
    v155 = v356;
    v156 = v357;
    (*(v356 + 104))(v154, *MEMORY[0x277D6DF68], v357);
    v387(v154);
    (*(v155 + 8))(v154, v156);
    return (*(v135 + 8))(v147, v134);
  }

  v157 = v150;
  v355 = v147;
  v354 = v135;
  (*(v369 + 16))(v400, v148, v401);
  v158 = v398[4];
  v159 = v158 >> 61;
  v388 = v134;
  if ((v158 >> 61) <= 1)
  {
    v352 = v157;
    if (!v159)
    {
      sub_2206009C4();
      v241 = v240;
      v242 = swift_projectBox();
      v243 = *(v242 + *(v241 + 48));
      v244 = v416;
      sub_2206008F4(v242, v416, type metadata accessor for StockFeedGroup);
      __swift_project_boxed_opaque_existential_1(v398 + 5, v398[8]);
      type metadata accessor for StockFeedServiceConfig();
      sub_220444374(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);

      v245 = v426;
      sub_22088F6CC();
      v246 = v361;
      sub_22072933C(v244, v245, v361);
      (*(v418 + 1))(v245, v432);
      sub_22088E75C();
      v247 = *(v354 + 8);
      v247(v246, v151);
      result = sub_2208544BC(v243, v246);
      if (__OFADD__(v352, 1))
      {
        goto LABEL_185;
      }

      sub_22088E73C();
      v247(v246, v151);
      sub_22088FA1C();
      sub_22088FA0C();
      v248 = sub_22088F9EC();

      v249 = 0;
      if (v248)
      {
        v249 = sub_22088F45C();
      }

      else
      {
        *(&v433 + 1) = 0;
        *&v434 = 0;
      }

      v347 = v358;
      *&v433 = v248;
      *(&v434 + 1) = v249;
      v253 = v401;
      v257 = v400;
      sub_22088E7BC();

      sub_220600894(v416, type metadata accessor for StockFeedGroup);
      goto LABEL_180;
    }

    v260 = *((v158 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v384 = *((v158 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    sub_22088B2BC();
    sub_22088E74C();

    v390 = v260;
    v261 = v373;
    v262 = v371;
    v382 = *(v260 + 2);
    if (!v382)
    {
LABEL_166:
      v344 = v361;
      result = sub_2208544BC(v384, v361);
      if (__OFADD__(v352, *(v390 + 2)))
      {
        goto LABEL_186;
      }

      sub_22088E73C();
      (*(v354 + 8))(v344, v151);
      sub_22088FA1C();

      sub_22088FA0C();
      type metadata accessor for StockFeedServiceConfig();
      sub_220444374(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);
      v345 = sub_22088F9EC();

      v346 = 0;
      if (v345)
      {
        v346 = sub_22088F45C();
      }

      else
      {
        *(&v433 + 1) = 0;
        *&v434 = 0;
      }

      *&v433 = v345;
      *(&v434 + 1) = v346;
      v253 = v401;
      v257 = v400;
      sub_22088E7BC();

      v347 = v358;
      goto LABEL_180;
    }

    v263 = 0;
    v381 = &v390[(*(v395 + 80) + 32) & ~*(v395 + 80)];
    v375 = (v410 + 32);
    v372 = (v410 + 16);
    v368 = (v410 + 8);
    v415 = v418 + 8;
    v424 = (v427 + 16);
    v423 = v418 + 16;
    v407 = (v427 + 8);
    v406 = v429 + 32;
    v360 = (v429 + 8);
    v377 = (v354 + 8);
    v353 = xmmword_220899360;
    while (1)
    {
      if (v263 >= *(v390 + 2))
      {
        goto LABEL_184;
      }

      v272 = *(v395 + 72);
      v397 = v263;
      v273 = v396;
      sub_2206008F4(&v381[v272 * v263], v396, type metadata accessor for StockFeedGroup);
      v274 = __swift_project_boxed_opaque_existential_1(v398 + 5, v398[8]);
      type metadata accessor for StockFeedServiceConfig();
      sub_220444374(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);
      sub_22088F6CC();
      v416 = *v274;
      v275 = v385;
      sub_2206008F4(v273, v385, type metadata accessor for StockFeedGroup);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload != 1)
      {
        v264 = v379;
        v265 = v383;
        (*v375)(v379, v275, v383);
        (*v372)(v391, v264, v265);
        swift_storeEnumTagMultiPayload();
        sub_220600830(0, &qword_28127E100, sub_22055D328, MEMORY[0x277D84560]);
        v266 = swift_allocObject();
        *(v266 + 16) = v353;
        __swift_project_boxed_opaque_existential_1(v416 + 7, v416[10]);
        sub_22088FB2C();
        swift_storeEnumTagMultiPayload();
        sub_220444374(&qword_281293DD0, type metadata accessor for StockFeedModel);
        sub_22088AD7C();
        v267 = sub_220444374(&qword_281297FB8, sub_22055D328);
        v268 = sub_220444374(&qword_281297FC0, sub_22055D328);
        MEMORY[0x223D80A10](v266, v430, v267, v268);
        sub_220444374(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
        v269 = v389;
        sub_22088B29C();
        v270 = v264;
        v262 = v371;
        v261 = v373;
        v271 = v265;
        v151 = v388;
        (*v368)(v270, v271);
LABEL_94:
        (*v415)(v417, v432);
        goto LABEL_95;
      }

      sub_22060095C(v275, v261, type metadata accessor for NewsStockFeedGroup);
      sub_2206008F4(v396, v376, type metadata accessor for StockFeedGroup);
      v277 = swift_getEnumCaseMultiPayload();
      if (v277)
      {
        if (v277 == 1)
        {
          v278 = v362;
          sub_22060095C(v376, v362, type metadata accessor for NewsStockFeedGroup);
          sub_220459628();
          v280 = *(v279 + 64);
          v281 = v278[1];
          *v262 = *v278;
          *(v262 + 8) = v281;
          v282 = *(v363 + 32);
          *(v262 + 16) = *(v278 + *(v363 + 28));
          sub_22051E1E0(v278 + v282, v262 + v280);

          sub_220600894(v278, type metadata accessor for NewsStockFeedGroup);
        }

        else
        {
          (*v375)(v262, v376, v383);
        }
      }

      else
      {
        v290 = v359;
        sub_22060095C(v376, v359, type metadata accessor for NewsPlacardStockFeedGroup);
        sub_220600894(v290, type metadata accessor for NewsPlacardStockFeedGroup);
      }

      swift_storeEnumTagMultiPayload();
      sub_2206008F4(v262, v374, type metadata accessor for StockFeedSectionDescriptor);
      v291 = v261[2];
      v292 = *(v291 + 2);
      if (v292)
      {
        v438 = MEMORY[0x277D84F90];
        result = sub_22070BC24(0, v292, 0);
        v293 = 0;
        v294 = v438;
        v295 = *v261;
        v296 = v261[1];
        v410 = v295;
        v408 = &v291[(*(v427 + 80) + 32) & ~*(v427 + 80)];
        v297 = &off_27844B000;
        v413 = v291;
        v412 = v292;
        v409 = v296;
        while (1)
        {
          if (v293 >= *(v291 + 2))
          {
            goto LABEL_182;
          }

          v298 = *(v427 + 16);
          v299 = v421;
          v300 = v431;
          (v298)(v421, &v408[*(v427 + 72) * v293], v431);
          (v298)(v422, v299, v300);
          v418 = *v423;
          (v418)(v419, v417, v432);
          v301 = v416[12];

          v302 = sub_2208868DC();
          v303 = [v302 isPaid];
          if ([v302 respondsToSelector_])
          {
            v304 = [v302 v297[495]];
          }

          else
          {
            v304 = 0;
          }

          v305 = [v302 sourceChannel];
          if (v305)
          {
            v306 = [v305 identifier];
            swift_unknownObjectRelease();
            v307 = sub_22089136C();
            v309 = v308;
          }

          else
          {
            v307 = 0;
            v309 = 0;
          }

          v420 = v294;
          if (v303)
          {
            v310 = [v301 purchaseProvider];
            if (v309)
            {
              v404 = v301;
              v405 = v298;
              v402 = v310;
              v311 = [v310 purchasedTagIDs];
              v312 = sub_2208918EC();

              if (*(v312 + 16))
              {
                sub_2208929EC();
                sub_22089146C();
                v313 = sub_220892A2C();
                v314 = -1 << *(v312 + 32);
                v315 = v313 & ~v314;
                if ((*(v312 + 56 + ((v315 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v315))
                {
                  v316 = ~v314;
                  while (1)
                  {
                    v317 = (*(v312 + 48) + 16 * v315);
                    v318 = *v317 == v307 && v309 == v317[1];
                    if (v318 || (sub_2208928BC() & 1) != 0)
                    {
                      break;
                    }

                    v315 = (v315 + 1) & v316;
                    if (((*(v312 + 56 + ((v315 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v315) & 1) == 0)
                    {
                      goto LABEL_131;
                    }
                  }

                  swift_unknownObjectRelease();

                  swift_unknownObjectRelease();
                  v319 = 1;
                  v298 = v405;
                  goto LABEL_158;
                }
              }

LABEL_131:

              v298 = v405;
              v301 = v404;
            }

            swift_unknownObjectRelease();
            if (v304)
            {
LABEL_135:
              if (!v309)
              {
                goto LABEL_156;
              }

              v320 = [objc_msgSend(v301 bundleSubscriptionProvider)];
              swift_unknownObjectRelease();
              if (objc_getAssociatedObject(v320, v320 + 1))
              {
                sub_2208923BC();
                swift_unknownObjectRelease();
              }

              else
              {
                v436 = 0u;
                v437 = 0u;
              }

              v433 = v436;
              v434 = v437;
              if (*(&v437 + 1))
              {
                sub_2204DD8BC();
                if (swift_dynamicCast())
                {
                  v321 = v435;
                  v322 = [v435 integerValue];
                  if (v322 == -1)
                  {

LABEL_152:
                    v328 = [objc_msgSend(v301 bundleSubscriptionProvider)];
                    swift_unknownObjectRelease();
                    v329 = [v328 bundleChannelIDs];

                    v330 = sub_22089132C();
                    v319 = [v329 containsObject_];

                    swift_unknownObjectRelease();
                    goto LABEL_158;
                  }

LABEL_146:
                  v402 = v322;
                  if (objc_getAssociatedObject(v320, ~v322))
                  {
                    sub_2208923BC();
                    swift_unknownObjectRelease();
                  }

                  else
                  {
                    v436 = 0u;
                    v437 = 0u;
                  }

                  v433 = v436;
                  v434 = v437;
                  if (*(&v437 + 1))
                  {
                    sub_2204DD8BC();
                    if (swift_dynamicCast())
                    {
                      v323 = v435;
                      v405 = v298;
                      v324 = v323;
                      v325 = [v323 integerValue];
                      v404 = v301;
                      v326 = v325;

                      v298 = v405;
                      v327 = v326 ^ v402;
                      v301 = v404;
                      if ((v327 & 1) == 0)
                      {
                        goto LABEL_155;
                      }

                      goto LABEL_152;
                    }
                  }

                  else
                  {
                    sub_220600894(&v433, sub_22055F87C);
                  }

                  if ((v402 & 1) == 0)
                  {
LABEL_155:

LABEL_156:
                    swift_unknownObjectRelease();
                    v319 = 0;
                    goto LABEL_158;
                  }

                  goto LABEL_152;
                }
              }

              else
              {
                sub_220600894(&v433, sub_22055F87C);
              }

              v321 = 0;
              v322 = 0;
              goto LABEL_146;
            }

            swift_unknownObjectRelease();

            v319 = 0;
          }

          else
          {
            if (v304)
            {
              goto LABEL_135;
            }

            swift_unknownObjectRelease();

            v319 = 1;
          }

LABEL_158:
          v331 = v422;
          v332 = v431;
          (v298)(v425, v422, v431);
          v333 = v419;
          v334 = v432;
          (v418)(v426, v419, v432);
          LOBYTE(v433) = v319;
          v335 = MEMORY[0x277D69858];
          sub_220444374(&unk_281299030, MEMORY[0x277D69858]);
          sub_220444374(&unk_281299040, v335);
          sub_22088FF9C();
          (*v415)(v333, v334);
          v336 = *v407;
          (*v407)(v331, v332);
          swift_storeEnumTagMultiPayload();
          sub_220444374(&qword_281293DD0, type metadata accessor for StockFeedModel);
          v337 = v411;
          sub_22088AD7C();
          v336(v421, v332);
          v294 = v420;
          v438 = v420;
          v339 = *(v420 + 2);
          v338 = *(v420 + 3);
          if (v339 >= v338 >> 1)
          {
            sub_22070BC24(v338 > 1, v339 + 1, 1);
            v294 = v438;
          }

          ++v293;
          *(v294 + 2) = v339 + 1;
          result = (*(v429 + 32))(&v294[((*(v429 + 80) + 32) & ~*(v429 + 80)) + *(v429 + 72) * v339], v337, v430);
          v297 = &off_27844B000;
          v291 = v413;
          if (v293 == v412)
          {
            v151 = v388;
            v261 = v373;
            v262 = v371;
            goto LABEL_163;
          }
        }
      }

      v294 = MEMORY[0x277D84F90];
LABEL_163:
      v340 = sub_220444374(&qword_281297FB8, sub_22055D328);
      v341 = sub_220444374(&qword_281297FC0, sub_22055D328);
      MEMORY[0x223D80A20](v294, v430, v340, v341);
      sub_220444374(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
      sub_220444374(&qword_281293DD0, type metadata accessor for StockFeedModel);
      v269 = v389;
      sub_22088B29C();
      sub_220600894(v262, type metadata accessor for StockFeedSectionDescriptor);
      (*v415)(v417, v432);
      sub_220600894(v261, type metadata accessor for NewsStockFeedGroup);
LABEL_95:
      v263 = v397 + 1;
      sub_22088E72C();
      (*v377)(v269, v151);
      result = sub_220600894(v396, type metadata accessor for StockFeedGroup);
      if (v263 == v382)
      {
        goto LABEL_166;
      }
    }

    sub_22060095C(v275, v380, type metadata accessor for NewsPlacardStockFeedGroup);
    __swift_project_boxed_opaque_existential_1(v416 + 2, v416[5]);
    if ((sub_220885E7C() & 1) != 0 && *(v380 + *(v370 + 20)) == 1)
    {
      swift_storeEnumTagMultiPayload();
      v283 = sub_220444374(&qword_281297FB8, sub_22055D328);
      v284 = sub_220444374(&qword_281297FC0, sub_22055D328);
      MEMORY[0x223D80A10](MEMORY[0x277D84F90], v430, v283, v284);
      sub_220444374(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
      sub_220444374(&qword_281293DD0, type metadata accessor for StockFeedModel);
      sub_22088B29C();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      v285 = sub_220444374(&qword_281297FB8, sub_22055D328);
      v286 = sub_220444374(&qword_281297FC0, sub_22055D328);
      MEMORY[0x223D80A10](MEMORY[0x277D84F90], v430, v285, v286);
      sub_220444374(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
      sub_220444374(&qword_281293DD0, type metadata accessor for StockFeedModel);
      sub_22088B29C();
      if (qword_281299528 != -1)
      {
        swift_once();
      }

      v287 = *algn_2812B6D88;
      v288 = v393;
      *v393 = qword_2812B6D80;
      v288[1] = v287;
      swift_storeEnumTagMultiPayload();
    }

    v289 = v378;
    sub_22088AD7C();
    v269 = v389;
    sub_22088B30C();
    (*v360)(v289, v430);
    sub_220600894(v380, type metadata accessor for NewsPlacardStockFeedGroup);
    goto LABEL_94;
  }

  if (v159 == 2)
  {
    sub_2206009C4();
    v250 = swift_projectBox();
    sub_2206008F4(v250, v121, type metadata accessor for StockFeedGroup);
    __swift_project_boxed_opaque_existential_1(v398 + 5, v398[8]);
    type metadata accessor for StockFeedServiceConfig();
    sub_220444374(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);

    v251 = v426;
    sub_22088F6CC();
    v252 = v361;
    sub_22072933C(v121, v251, v361);
    (*(v418 + 1))(v251, v432);
    v253 = v401;
    v254 = v400;
    sub_22088E75C();
    (*(v354 + 8))(v252, v388);
    sub_22088FA1C();
    sub_22088FA0C();
    v255 = sub_22088F9EC();

    v256 = 0;
    if (v255)
    {
      v256 = sub_22088F45C();
    }

    else
    {
      *(&v433 + 1) = 0;
      *&v434 = 0;
    }

    v347 = v358;
    *&v433 = v255;
    *(&v434 + 1) = v256;
    sub_22088E7BC();

    sub_220600894(v121, type metadata accessor for StockFeedGroup);
    v257 = v254;
    goto LABEL_180;
  }

  if (v159 != 3)
  {

    sub_22088B2BC();
    v253 = v401;
    v257 = v400;
    sub_22088E74C();

    sub_22088FA1C();
    sub_22088FA0C();
    type metadata accessor for StockFeedServiceConfig();
    sub_220444374(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);
    v258 = sub_22088F9EC();

    v259 = 0;
    if (v258)
    {
      v259 = sub_22088F45C();
    }

    else
    {
      *(&v433 + 1) = 0;
      *&v434 = 0;
    }

    v347 = v358;
    *&v433 = v258;
    *(&v434 + 1) = v259;
    sub_22088E7BC();
    goto LABEL_177;
  }

  v160 = *((v158 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v389 = *((v158 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_22088B2BC();
  sub_22088E74C();

  v385 = v160;
  v161 = v372;
  v162 = v384;
  v380 = *(v160 + 16);
  if (!v380)
  {
LABEL_164:
    sub_22088FA1C();

    sub_22088FA0C();
    type metadata accessor for StockFeedServiceConfig();
    sub_220444374(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);
    v342 = sub_22088F9EC();

    v343 = 0;
    if (v342)
    {
      v343 = sub_22088F45C();
    }

    else
    {
      *(&v433 + 1) = 0;
      *&v434 = 0;
    }

    v253 = v401;
    v257 = v400;
    v347 = v358;
    *&v433 = v342;
    *(&v434 + 1) = v343;
    sub_22088E7BC();
LABEL_177:

LABEL_180:
    v348 = v365;
    v349 = v364;
    v350 = v366;
    (*(v365 + 104))(v364, *MEMORY[0x277D6D868], v366);
    sub_220444374(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
    sub_220444374(&qword_281293DD0, type metadata accessor for StockFeedModel);
    sub_220444374(&unk_281288C00, type metadata accessor for StockFeedSectionDescriptor);
    sub_22088C67C();
    (*(v348 + 8))(v349, v350);
    v387(v347);
    (*(v356 + 8))(v347, v357);
    (*(v369 + 8))(v257, v253);
    return (*(v354 + 8))(v355, v388);
  }

  v163 = 0;
  v376 = v385 + ((*(v395 + 80) + 32) & ~*(v395 + 80));
  v373 = (v410 + 32);
  v371 = (v410 + 16);
  v367 = (v410 + 8);
  v411 = (v418 + 8);
  v422 = (v427 + 16);
  v421 = (v418 + 16);
  v405 = (v427 + 8);
  v404 = (v429 + 32);
  v361 = (v429 + 8);
  v374 = (v354 + 8);
  v359 = xmmword_220899360;
  while (1)
  {
    if (v163 >= *(v385 + 16))
    {
      goto LABEL_183;
    }

    v174 = *(v395 + 72);
    v396 = v163;
    v175 = v397;
    sub_2206008F4(v376 + v174 * v163, v397, type metadata accessor for StockFeedGroup);
    v176 = __swift_project_boxed_opaque_existential_1(v398 + 5, v398[8]);
    type metadata accessor for StockFeedServiceConfig();
    sub_220444374(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);
    sub_22088F6CC();
    v414 = *v176;
    sub_2206008F4(v175, v162, type metadata accessor for StockFeedGroup);
    v177 = swift_getEnumCaseMultiPayload();
    if (!v177)
    {
      sub_22060095C(v162, v381, type metadata accessor for NewsPlacardStockFeedGroup);
      __swift_project_boxed_opaque_existential_1(v414 + 2, v414[5]);
      if ((sub_220885E7C() & 1) != 0 && v381[*(v370 + 20)] == 1)
      {
        swift_storeEnumTagMultiPayload();
        v185 = sub_220444374(&qword_281297FB8, sub_22055D328);
        v186 = sub_220444374(&qword_281297FC0, sub_22055D328);
        MEMORY[0x223D80A10](MEMORY[0x277D84F90], v430, v185, v186);
        sub_220444374(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
        sub_220444374(&qword_281293DD0, type metadata accessor for StockFeedModel);
        sub_22088B29C();
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        v187 = sub_220444374(&qword_281297FB8, sub_22055D328);
        v188 = sub_220444374(&qword_281297FC0, sub_22055D328);
        MEMORY[0x223D80A10](MEMORY[0x277D84F90], v430, v187, v188);
        sub_220444374(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
        sub_220444374(&qword_281293DD0, type metadata accessor for StockFeedModel);
        sub_22088B29C();
        if (qword_281299528 != -1)
        {
          swift_once();
        }

        v189 = *algn_2812B6D88;
        v190 = v393;
        *v393 = qword_2812B6D80;
        v190[1] = v189;
        swift_storeEnumTagMultiPayload();
      }

      v191 = v378;
      sub_22088AD7C();
      v171 = v388;
      v169 = v390;
      sub_22088B30C();
      (*v361)(v191, v430);
      sub_220600894(v381, type metadata accessor for NewsPlacardStockFeedGroup);
      (*v411)(v415, v432);
      goto LABEL_12;
    }

    if (v177 == 1)
    {
      break;
    }

    v164 = v379;
    v165 = v383;
    (*v373)(v379, v384, v383);
    (*v371)(v391, v164, v165);
    swift_storeEnumTagMultiPayload();
    sub_220600830(0, &qword_28127E100, sub_22055D328, MEMORY[0x277D84560]);
    v166 = swift_allocObject();
    *(v166 + 16) = v359;
    __swift_project_boxed_opaque_existential_1(v414 + 7, v414[10]);
    sub_22088FB2C();
    swift_storeEnumTagMultiPayload();
    sub_220444374(&qword_281293DD0, type metadata accessor for StockFeedModel);
    sub_22088AD7C();
    v167 = sub_220444374(&qword_281297FB8, sub_22055D328);
    v168 = sub_220444374(&qword_281297FC0, sub_22055D328);
    MEMORY[0x223D80A10](v166, v430, v167, v168);
    sub_220444374(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
    v161 = v372;
    v169 = v390;
    sub_22088B29C();
    v170 = v164;
    v162 = v384;
    (*v367)(v170, v165);
    (*v411)(v415, v432);
LABEL_11:
    v171 = v388;
LABEL_12:
    v172 = v396 + 1;
    sub_22088E72C();
    v173 = v171;
    v163 = v172;
    (*v374)(v169, v173);
    result = sub_220600894(v397, type metadata accessor for StockFeedGroup);
    if (v172 == v380)
    {
      goto LABEL_164;
    }
  }

  v178 = v382;
  sub_22060095C(v162, v382, type metadata accessor for NewsStockFeedGroup);
  sub_2206008F4(v397, v377, type metadata accessor for StockFeedGroup);
  v179 = swift_getEnumCaseMultiPayload();
  if (v179)
  {
    if (v179 == 1)
    {
      v180 = v362;
      sub_22060095C(v377, v362, type metadata accessor for NewsStockFeedGroup);
      sub_220459628();
      v182 = *(v181 + 64);
      v183 = v180[1];
      *v161 = *v180;
      *(v161 + 8) = v183;
      v184 = *(v363 + 32);
      *(v161 + 16) = *(v180 + *(v363 + 28));
      sub_22051E1E0(v180 + v184, v161 + v182);
      v178 = v382;

      sub_220600894(v180, type metadata accessor for NewsStockFeedGroup);
    }

    else
    {
      (*v373)(v161, v377, v383);
    }
  }

  else
  {
    v192 = v360;
    sub_22060095C(v377, v360, type metadata accessor for NewsPlacardStockFeedGroup);
    sub_220600894(v192, type metadata accessor for NewsPlacardStockFeedGroup);
    v178 = v382;
  }

  swift_storeEnumTagMultiPayload();
  sub_2206008F4(v161, v375, type metadata accessor for StockFeedSectionDescriptor);
  v193 = *(v178 + 16);
  v194 = *(v193 + 16);
  if (!v194)
  {
    v197 = MEMORY[0x277D84F90];
LABEL_82:
    v238 = sub_220444374(&qword_281297FB8, sub_22055D328);
    v239 = sub_220444374(&qword_281297FC0, sub_22055D328);
    MEMORY[0x223D80A20](v197, v430, v238, v239);
    sub_220444374(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
    sub_220444374(&qword_281293DD0, type metadata accessor for StockFeedModel);
    v169 = v390;
    sub_22088B29C();
    sub_220600894(v161, type metadata accessor for StockFeedSectionDescriptor);
    (*v411)(v415, v432);
    sub_220600894(v382, type metadata accessor for NewsStockFeedGroup);
    goto LABEL_11;
  }

  v195 = v178;
  v438 = MEMORY[0x277D84F90];
  result = sub_22070BC24(0, v194, 0);
  v196 = 0;
  v197 = v438;
  v198 = v195[1];
  v408 = *v195;
  v406 = v193 + ((*(v427 + 80) + 32) & ~*(v427 + 80));
  v410 = v193;
  v409 = v194;
  v407 = v198;
  while (v196 < *(v193 + 16))
  {
    v419 = v197;
    v199 = *(v427 + 16);
    v200 = v423;
    v201 = v431;
    (v199)(v423, v406 + *(v427 + 72) * v196, v431);
    v418 = v199;
    (v199)(v424, v200, v201);
    v417 = *v421;
    (v417)(v420, v415, v432);
    v416 = v414[12];

    v202 = sub_2208868DC();
    v203 = [v202 isPaid];
    if ([v202 respondsToSelector_])
    {
      v204 = [v202 isBundlePaid];
    }

    else
    {
      v204 = 0;
    }

    v205 = [v202 sourceChannel];
    if (v205)
    {
      v206 = [v205 identifier];
      swift_unknownObjectRelease();
      v207 = sub_22089136C();
      v209 = v208;

      if (!v203)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v207 = 0;
      v209 = 0;
      if (!v203)
      {
LABEL_50:
        if ((v204 & 1) == 0)
        {
          swift_unknownObjectRelease();

LABEL_74:
          v219 = 1;
          goto LABEL_77;
        }

LABEL_51:
        if (!v209)
        {
          goto LABEL_72;
        }

        v220 = [objc_msgSend(v416 bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        if (objc_getAssociatedObject(v220, v220 + 1))
        {
          sub_2208923BC();
          swift_unknownObjectRelease();
        }

        else
        {
          v436 = 0u;
          v437 = 0u;
        }

        v433 = v436;
        v434 = v437;
        if (*(&v437 + 1))
        {
          sub_2204DD8BC();
          if (swift_dynamicCast())
          {
            v221 = v435;
            v222 = [v435 integerValue];
            if (v222 == -1)
            {

LABEL_76:
              v226 = [objc_msgSend(v416 bundleSubscriptionProvider)];
              swift_unknownObjectRelease();
              v227 = [v226 bundleChannelIDs];

              v228 = sub_22089132C();
              v219 = [v227 containsObject_];

              swift_unknownObjectRelease();
              goto LABEL_77;
            }

            v223 = v222;
LABEL_62:
            if (objc_getAssociatedObject(v220, ~v223))
            {
              sub_2208923BC();
              swift_unknownObjectRelease();
            }

            else
            {
              v436 = 0u;
              v437 = 0u;
            }

            v433 = v436;
            v434 = v437;
            if (*(&v437 + 1))
            {
              sub_2204DD8BC();
              if (swift_dynamicCast())
              {
                v224 = v435;
                v225 = [v224 integerValue];

                if ((v225 ^ v223))
                {
                  goto LABEL_76;
                }

                goto LABEL_71;
              }
            }

            else
            {
              sub_220600894(&v433, sub_22055F87C);
            }

            if (v223)
            {
              goto LABEL_76;
            }

LABEL_71:

LABEL_72:
            swift_unknownObjectRelease();
            v219 = 0;
            goto LABEL_77;
          }
        }

        else
        {
          sub_220600894(&v433, sub_22055F87C);
        }

        v221 = 0;
        v223 = 0;
        goto LABEL_62;
      }
    }

    v210 = [v416 purchaseProvider];
    if (v209)
    {
      v402 = v210;
      v211 = [v210 purchasedTagIDs];
      v212 = sub_2208918EC();

      if (*(v212 + 16))
      {
        sub_2208929EC();
        sub_22089146C();
        v213 = sub_220892A2C();
        v214 = -1 << *(v212 + 32);
        v215 = v213 & ~v214;
        if ((*(v212 + 56 + ((v215 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v215))
        {
          v216 = ~v214;
          while (1)
          {
            v217 = (*(v212 + 48) + 16 * v215);
            v218 = *v217 == v207 && v209 == v217[1];
            if (v218 || (sub_2208928BC() & 1) != 0)
            {
              break;
            }

            v215 = (v215 + 1) & v216;
            if (((*(v212 + 56 + ((v215 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v215) & 1) == 0)
            {
              goto LABEL_46;
            }
          }

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          goto LABEL_74;
        }
      }

LABEL_46:
    }

    swift_unknownObjectRelease();
    if (v204)
    {
      goto LABEL_51;
    }

    swift_unknownObjectRelease();

    v219 = 0;
LABEL_77:
    v229 = v424;
    v230 = v431;
    (v418)(v425, v424, v431);
    v231 = v420;
    v232 = v432;
    (v417)(v426, v420, v432);
    LOBYTE(v433) = v219;
    v233 = MEMORY[0x277D69858];
    sub_220444374(&unk_281299030, MEMORY[0x277D69858]);
    sub_220444374(&unk_281299040, v233);
    sub_22088FF9C();
    (*v411)(v231, v232);
    v234 = *v405;
    (*v405)(v229, v230);
    swift_storeEnumTagMultiPayload();
    sub_220444374(&qword_281293DD0, type metadata accessor for StockFeedModel);
    v235 = v412;
    sub_22088AD7C();
    v234(v423, v230);
    v197 = v419;
    v438 = v419;
    v237 = *(v419 + 2);
    v236 = *(v419 + 3);
    if (v237 >= v236 >> 1)
    {
      sub_22070BC24(v236 > 1, v237 + 1, 1);
      v197 = v438;
    }

    ++v196;
    *(v197 + 2) = v237 + 1;
    result = (*(v429 + 32))(&v197[((*(v429 + 80) + 32) & ~*(v429 + 80)) + *(v429 + 72) * v237], v235, v430);
    v193 = v410;
    if (v196 == v409)
    {
      v161 = v372;
      v162 = v384;
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
  return result;
}

uint64_t sub_2206004B0()
{
  sub_220600830(0, &qword_28127E048, MEMORY[0x277D6DE60], MEMORY[0x277D84560]);
  v0 = sub_22088C37C();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_220899360;
  (*(v1 + 104))(v3 + v2, *MEMORY[0x277D6DE38], v0);
  v4 = sub_2207E15E8(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v4;
}

unint64_t sub_220600604()
{
  result = qword_281280508;
  if (!qword_281280508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281280508);
  }

  return result;
}

void sub_2206006E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockFeedSectionDescriptor();
    v8[1] = type metadata accessor for StockFeedModel();
    v8[2] = sub_220444374(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
    v8[3] = sub_220444374(&qword_281293DD0, type metadata accessor for StockFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2206007DC()
{
  result = qword_27CF57838;
  if (!qword_27CF57838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57838);
  }

  return result;
}

void sub_220600830(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_220600894(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2206008F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22060095C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2206009C4()
{
  if (!qword_27CF57840)
  {
    type metadata accessor for StockFeedGroup();
    sub_220600A34();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF57840);
    }
  }
}

void sub_220600A34()
{
  if (!qword_281296B60)
  {
    type metadata accessor for StockFeedServiceConfig();
    sub_220444374(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);
    v0 = sub_22088F6DC();
    if (!v1)
    {
      atomic_store(v0, &qword_281296B60);
    }
  }
}

unint64_t sub_220600ADC()
{
  result = qword_27CF57848;
  if (!qword_27CF57848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57848);
  }

  return result;
}

uint64_t sub_220600B30(uint64_t a1, uint64_t a2)
{
  v5 = sub_2208854FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088665C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046DA2C(v2 + 16, v31);
  (*(v11 + 16))(v14, a1, v10);
  (*(v6 + 16))(v9, a2, v5);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  v16 = MEMORY[0x28223BE20](v15, v15);
  v18 = (v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = *v18;
  v21 = type metadata accessor for StockChartStyler();
  v30[3] = v21;
  v30[4] = &off_283413188;
  v30[0] = v20;
  type metadata accessor for StockChartCategoryLabelFormatter();
  v22 = swift_allocObject();
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v30, v21);
  v24 = MEMORY[0x28223BE20](v23, v23);
  v26 = (v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26, v24);
  v28 = sub_220600E64(*v26, v14, v9, v22);
  __swift_destroy_boxed_opaque_existential_1(v30);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v28;
}

uint64_t sub_220600E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2208853CC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for StockChartStyler();
  v24 = &off_283413188;
  *&v22 = a1;
  v13 = OBJC_IVAR____TtC8StocksUI32StockChartCategoryLabelFormatter_calendar;
  v14 = [objc_opt_self() currentCalendar];
  sub_22088534C();

  (*(v9 + 32))(a4 + v13, v12, v8);
  v15 = OBJC_IVAR____TtC8StocksUI32StockChartCategoryLabelFormatter_dateFormatters;
  *(a4 + v15) = sub_2205CE888(MEMORY[0x277D84F90]);
  sub_220457328(&v22, a4 + 16);
  v16 = OBJC_IVAR____TtC8StocksUI32StockChartCategoryLabelFormatter_chart;
  v17 = sub_22088665C();
  (*(*(v17 - 8) + 32))(a4 + v16, a2, v17);
  v18 = OBJC_IVAR____TtC8StocksUI32StockChartCategoryLabelFormatter_chartRange;
  v19 = sub_2208854FC();
  (*(*(v19 - 8) + 32))(a4 + v18, a3, v19);
  return a4;
}

uint64_t sub_220601044(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22060108C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2206010E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_220601148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[3] = type metadata accessor for TickerCardContainerStyler();
  v11[4] = &off_28341A918;
  v11[0] = a3;
  *(a4 + qword_281285D80 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + qword_281285D70) = 0;
  v7 = qword_281285D78;
  *(a4 + v7) = [objc_allocWithZone(MEMORY[0x277D355A8]) init];
  v8 = qword_281285D88;
  *(a4 + v8) = [objc_allocWithZone(sub_22088AEDC()) initWithFrame_];
  *(a4 + qword_281285D98) = 0;
  *(a4 + qword_281285D90) = a2;
  sub_22046DA2C(v11, a4 + qword_281285D68);
  v9 = sub_22088C7DC();
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9;
}

uint64_t sub_220601268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34[3] = type metadata accessor for TickerCardContainerStyler();
  v34[4] = &off_28341A918;
  v34[0] = a3;
  *(a4 + qword_281282170 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + qword_281282160) = 0;
  v7 = qword_281282168;
  *(a4 + v7) = [objc_allocWithZone(MEMORY[0x277D355A8]) init];
  v8 = qword_281282178;
  *(a4 + v8) = [objc_allocWithZone(sub_22088AEDC()) initWithFrame_];
  *(a4 + qword_281282190) = 0;
  *(a4 + qword_281282180) = 0x4062A00000000000;
  *(a4 + qword_281282188) = a2;
  sub_22046DA2C(v34, a4 + qword_281282158);
  sub_2206010E4(0, &qword_28127E008, sub_2206016CC, MEMORY[0x277D84560]);
  sub_2206016CC();
  v10 = v9;
  v11 = *(*(v9 - 8) + 72);
  v12 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_22089EF70;
  v13 = *(v10 + 48);
  v14 = *MEMORY[0x277D6E260];
  v15 = sub_22088CC6C();
  v30 = *(*(v15 - 8) + 104);
  v30(v33 + v12, v14, v15);
  *(v33 + v12 + v13) = 0x4062A00000000000;
  v16 = *MEMORY[0x277D6E5F8];
  v17 = sub_22088D2AC();
  v18 = *(*(v17 - 8) + 104);
  v18(v33 + v12 + v13, v16, v17);
  v31 = v18;
  v32 = v11;
  v19 = v33 + v12 + v11;
  v20 = *(v10 + 48);
  v30(v19, *MEMORY[0x277D6E250], v15);
  *(v19 + v20) = 0x3FE0000000000000;
  v18(v19 + v20, *MEMORY[0x277D6E5E8], v17);
  v21 = 2 * v11;
  v22 = v33 + v12 + 2 * v11;
  v23 = *(v10 + 48);
  v30(v22, *MEMORY[0x277D6E258], v15);
  v24 = objc_opt_self();

  *(v22 + v23) = [v24 largeDetent];
  v25 = *MEMORY[0x277D6E5F0];
  v31(v22 + v23, v25, v17);
  v26 = v33 + v12 + v21 + v32;
  v27 = *(v10 + 48);
  v30(v26, *MEMORY[0x277D6E230], v15);
  *(v26 + v27) = [v24 largeDetent];
  v31(v26 + v27, v25, v17);
  sub_2205CECAC(v33);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v28 = sub_22088D24C();
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v28;
}

void sub_2206016CC()
{
  if (!qword_2812976C8)
  {
    sub_22088CC6C();
    sub_22088D2AC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2812976C8);
    }
  }
}

id sub_220601798(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_22060182C()
{
  v1 = OBJC_IVAR____TtC8StocksUI18StockSparklineView_sparklineView;
  *(v0 + v1) = [objc_allocWithZone(sub_220890CDC()) initWithFrame_];
  v2 = OBJC_IVAR____TtC8StocksUI18StockSparklineView_baselineIndicatorLayer;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v3 = OBJC_IVAR____TtC8StocksUI18StockSparklineView_nonAnimatingDelegate;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for StockSparklineView.NonAnimatingDelegate()) init];
  sub_22089267C();
  __break(1u);
}

uint64_t sub_220601908(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  v5 = *(v4 + 8);
  v6 = *(v5 + 8);
  *&v9[25] = v3;
  *&v9[33] = v4;
  __swift_allocate_boxed_opaque_existential_1(&v9[1]);
  v6(a1, v3, v5);
  sub_220601A1C();
  v7 = *(v4 + 16);
  (*(v7 + 48))(v3, v7);
  (*(v7 + 24))(v9, v3, v7);
  sub_22088D95C();
  return __swift_destroy_boxed_opaque_existential_1(&v9[1]);
}

unint64_t sub_220601A1C()
{
  result = qword_27CF578D0;
  if (!qword_27CF578D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF578D0);
  }

  return result;
}

uint64_t type metadata accessor for StockFeedQuoteData()
{
  result = qword_281290618;
  if (!qword_281290618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220601AE4()
{
  sub_22045401C(319, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v0 <= 0x3F)
  {
    sub_22045401C(319, &qword_281299370, MEMORY[0x277D69178]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id sub_220601BA0()
{
  v1 = v0;
  v2 = sub_2208902EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s8StocksUI16OfflineAlertableV5titleSSSgvg_0();
  _s8StocksUI16OfflineAlertableV7messageSSSgvg_0();
  v7 = sub_22089132C();

  v8 = sub_22089132C();

  v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  result = [v9 view];
  if (result)
  {
    v11 = result;
    v13 = v1[5];
    v12 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v13);
    v14 = (*(*(v12 + 16) + 136))(v13);
    [v11 setTintColor_];

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = objc_opt_self();
    v17 = [v16 bundleForClass_];
    sub_220884CAC();

    v18 = sub_22089132C();

    v19 = objc_opt_self();
    v20 = [v19 actionWithTitle:v18 style:0 handler:0];

    [v9 addAction_];
    v21 = sub_2208902FC();
    (*(v3 + 104))(v6, *MEMORY[0x277D333B0], v2);
    v22 = sub_2206FA2D0(v6, v21);

    (*(v3 + 8))(v6, v2);
    if (v22)
    {
      v23 = [v16 bundleForClass_];
      sub_220884CAC();

      v24 = sub_22089132C();

      aBlock[4] = sub_22060215C;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2205659F0;
      aBlock[3] = &block_descriptor_14;
      v25 = _Block_copy(aBlock);

      v26 = [v19 actionWithTitle:v24 style:0 handler:v25];
      _Block_release(v25);

      [v9 addAction_];
    }

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220602038(uint64_t a1)
{
  v6[3] = type metadata accessor for OfflineAlertable();
  v6[4] = sub_220602104();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  v3 = sub_22089030C();
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, a1, v3);
  sub_22088E0CC();
  swift_allocObject();
  v4 = sub_22088E07C();
  sub_22088E0BC();

  return v4;
}

unint64_t sub_220602104()
{
  result = qword_27CF578D8;
  if (!qword_27CF578D8)
  {
    type metadata accessor for OfflineAlertable();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF578D8);
  }

  return result;
}

uint64_t sub_220602160@<X0>(uint64_t a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1((v1 + qword_27CF578E8), *(v1 + qword_27CF578E8 + 24));
  v3 = sub_22088F8FC();
  if (v3 > 3)
  {
    if (v3 == 4 || v3 == 5)
    {
      sub_2205E9E2C();
      v5 = v6;
      sub_2208907BC();
      sub_2208907BC();
      goto LABEL_13;
    }

    if (v3 == 6)
    {
LABEL_12:
      sub_2205E9E2C();
      v5 = v13;
      sub_2208907CC();
      sub_2208907CC();
      goto LABEL_13;
    }

LABEL_17:
    result = sub_22089267C();
    __break(1u);
    return result;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      sub_2205E9E2C();
      v5 = v4;
      sub_2208907AC();
      sub_2208907AC();
LABEL_13:
      v8 = *(*(v5 - 8) + 56);
      v10 = a1;
      v11 = 0;
      v9 = v5;
      goto LABEL_14;
    }

    if (v3 == 3)
    {
      sub_220891ADC();
      sub_22048D2F4();
      v12 = sub_2208922DC();
      sub_22088A7EC();

      goto LABEL_12;
    }

    goto LABEL_17;
  }

  sub_2205E9E2C();
  v8 = *(*(v7 - 8) + 56);
  v9 = v7;
  v10 = a1;
  v11 = 1;
LABEL_14:

  return v8(v10, v11, 1, v9);
}

void sub_2206023F0(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_2206025A8();
  swift_unknownObjectRelease();
}

uint64_t sub_2206024B8(uint64_t a1)
{
  sub_2204DA45C(*(a1 + qword_27CF578E0));
  v2 = a1 + qword_27CF578E8;

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_220602510()
{
  sub_2205E9E2C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_2206025A8()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v8[0] = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v8[1] = v1;
  v2 = type metadata accessor for DualOfflineManager.State();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v8 - v5;
  v7 = *(v0 + qword_27CF578E0);
  if (v7)
  {

    sub_220602160(v6);
    v7(v6);
    sub_2204DA45C(v7);
    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_220602898@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22088594C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2206028F8()
{
  sub_220885ACC();
  sub_220888FBC();
  v0 = sub_220888D9C();
  v1 = sub_220888E4C();

  return v1;
}

uint64_t sub_220602A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v81 = a3;
  sub_220603D2C(0, qword_28128B590, type metadata accessor for NewsStockFeedGroupKnobs);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v69 = &v68 - v6;
  v72 = type metadata accessor for StockFeedGroupKnobs();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v7);
  v73 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220603D2C(0, &qword_28128FB18, type metadata accessor for StockFeedGroupKnobs);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v75 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v68 - v14;
  sub_220603D2C(0, qword_28128E858, type metadata accessor for StockFeedKnobsConfig);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v79 = &v68 - v18;
  v74 = type metadata accessor for StockFeedKnobsConfig();
  v80 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v19);
  v71 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v77 = &v68 - v23;
  sub_220603D2C(0, &qword_281296B78, MEMORY[0x277D32028]);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = &v68 - v26;
  sub_220603D2C(0, &qword_281299480, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v31 = &v68 - v30;
  sub_220603D2C(0, qword_281292F18, type metadata accessor for StockFeedConfig);
  MEMORY[0x28223BE20](v32 - 8, v33);
  v35 = &v68 - v34;
  v36 = type metadata accessor for StockFeedConfig();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v38);
  v40 = (&v68 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = a1;
  sub_220603DE8(a1, v35, qword_281292F18, type metadata accessor for StockFeedConfig);
  v41 = *(v37 + 48);
  if (v41(v35, 1, v36) == 1)
  {
    sub_22088515C();
    v42 = sub_22088516C();
    (*(*(v42 - 8) + 56))(v31, 0, 1, v42);
    v43 = sub_22088F67C();
    (*(*(v43 - 8) + 56))(v27, 1, 1, v43);
    *v40 = MEMORY[0x277D84F90];
    sub_220528A8C(v31, v40 + *(v36 + 20), &qword_281299480, MEMORY[0x277CC9578]);
    sub_220528A8C(v27, v40 + *(v36 + 24), &qword_281296B78, MEMORY[0x277D32028]);
    if (v41(v35, 1, v36) != 1)
    {
      sub_220603E54(v35, qword_281292F18, type metadata accessor for StockFeedConfig);
    }
  }

  else
  {
    sub_220603D80(v35, v40, type metadata accessor for StockFeedConfig);
  }

  v44 = v40;
  v45 = v81;
  sub_220603D80(v44, v81, type metadata accessor for StockFeedConfig);
  v46 = v76;
  v47 = v79;
  sub_220603DE8(v76, v79, qword_28128E858, type metadata accessor for StockFeedKnobsConfig);
  v49 = v80 + 48;
  v48 = *(v80 + 48);
  v50 = v74;
  v51 = v48(v47, 1, v74);
  v52 = v77;
  v53 = v75;
  if (v51 == 1)
  {
    v54 = v15;
    v55 = v70;
    v56 = v72;
    (*(v70 + 56))(v54, 1, 1, v72);
    sub_220603DE8(v54, v53, &qword_28128FB18, type metadata accessor for StockFeedGroupKnobs);
    v57 = *(v55 + 48);
    if (v57(v53, 1, v56) == 1)
    {
      v58 = type metadata accessor for NewsStockFeedGroupKnobs();
      v59 = *(*(v58 - 8) + 56);
      v70 = v54;
      v60 = v69;
      v59(v69, 1, 1, v58);
      v80 = v49;
      v61 = v56;
      v62 = v73;
      sub_22068599C(v60, v73);
      sub_220603E54(v46, qword_28128E858, type metadata accessor for StockFeedKnobsConfig);
      sub_220603E54(v78, qword_281292F18, type metadata accessor for StockFeedConfig);
      sub_220603E54(v70, &qword_28128FB18, type metadata accessor for StockFeedGroupKnobs);
      if (v57(v53, 1, v61) != 1)
      {
        sub_220603E54(v53, &qword_28128FB18, type metadata accessor for StockFeedGroupKnobs);
      }
    }

    else
    {
      sub_220603E54(v46, qword_28128E858, type metadata accessor for StockFeedKnobsConfig);
      sub_220603E54(v78, qword_281292F18, type metadata accessor for StockFeedConfig);
      sub_220603E54(v54, &qword_28128FB18, type metadata accessor for StockFeedGroupKnobs);
      v62 = v73;
      sub_220603D80(v53, v73, type metadata accessor for StockFeedGroupKnobs);
    }

    v63 = v71;
    sub_220603D80(v62, v71, type metadata accessor for StockFeedGroupKnobs);
    *(v63 + *(v50 + 20)) = 0x7FFFFFFFFFFFFFFFLL;
    sub_220603D80(v63, v52, type metadata accessor for StockFeedKnobsConfig);
    v64 = v79;
    v65 = v48(v79, 1, v50);
    v45 = v81;
    if (v65 != 1)
    {
      sub_220603E54(v64, qword_28128E858, type metadata accessor for StockFeedKnobsConfig);
    }
  }

  else
  {
    sub_220603E54(v46, qword_28128E858, type metadata accessor for StockFeedKnobsConfig);
    sub_220603E54(v78, qword_281292F18, type metadata accessor for StockFeedConfig);
    sub_220603D80(v47, v52, type metadata accessor for StockFeedKnobsConfig);
  }

  v66 = type metadata accessor for StockFeedContentConfig();
  return sub_220603D80(v52, v45 + *(v66 + 20), type metadata accessor for StockFeedKnobsConfig);
}