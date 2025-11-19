void sub_22042136C()
{
  if (!qword_280FA0330)
  {
    sub_22042B130();
    sub_2204215E8(&qword_280FA2370, MEMORY[0x277CFBAD0]);
    v0 = sub_22042BD60();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA0330);
    }
  }
}

uint64_t sub_220421400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220421468@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_22042AAB0();
  v4 = sub_22042A820();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  return result;
}

uint64_t sub_2204214CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_newsPersonalizationScorer + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_newsPersonalizationScorer), *(v0 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_newsPersonalizationScorer + 24));
  return sub_22042AA10();
}

uint64_t sub_220421520@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  a1[4] = sub_2204215E8(qword_280FA2718, type metadata accessor for NewsHeadlineScorer);
  *a1 = v1;
}

uint64_t sub_2204215B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2204215E8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22042164C()
{
  if (!qword_27CF52770)
  {
    sub_2203C38AC(255, &qword_280FA25C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v0 = sub_22042BF30();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF52770);
    }
  }
}

uint64_t sub_2204216C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223D7BF30](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22041F63C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_220421760()
{
  if (!qword_27CF52778)
  {
    v0 = sub_22042BD60();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF52778);
    }
  }
}

__n128 ComputeServiceConfigurationManager.configuration.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_22042A790();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_22042AA40();
  sub_2203C1FFC(v18);
  (*(v4 + 8))(v8, v3);
  v32 = v18[12];
  v33 = v18[13];
  v34 = v19;
  v28 = v18[8];
  v29 = v18[9];
  v30 = v18[10];
  v31 = v18[11];
  v24 = v18[4];
  v25 = v18[5];
  v26 = v18[6];
  v27 = v18[7];
  v20 = v18[0];
  v21 = v18[1];
  v22 = v18[2];
  v23 = v18[3];
  if (sub_2203C30A8(&v20) == 1)
  {
    sub_2203C30C0();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v11 = v33;
    *(a1 + 192) = v32;
    *(a1 + 208) = v11;
    *(a1 + 224) = v34;
    v12 = v29;
    *(a1 + 128) = v28;
    *(a1 + 144) = v12;
    v13 = v31;
    *(a1 + 160) = v30;
    *(a1 + 176) = v13;
    v14 = v25;
    *(a1 + 64) = v24;
    *(a1 + 80) = v14;
    v15 = v27;
    *(a1 + 96) = v26;
    *(a1 + 112) = v15;
    v16 = v21;
    *a1 = v20;
    *(a1 + 16) = v16;
    result = v23;
    *(a1 + 32) = v22;
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t ComputeServiceConfigurationManager.fetchConfigurationIfNeeded()(uint64_t a1)
{
  v2[60] = a1;
  v2[61] = v1;
  v3 = sub_22042A790();
  v2[62] = v3;
  v4 = *(v3 - 8);
  v2[63] = v4;
  v5 = *(v4 + 64) + 15;
  v2[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220421AB8, 0, 0);
}

uint64_t sub_220421AB8()
{
  v1 = v0[61];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v0[65] = sub_22042AA50();
  v3 = *(MEMORY[0x277D6CF28] + 4);
  v4 = swift_task_alloc();
  v0[66] = v4;
  *v4 = v0;
  v4[1] = sub_2203C3B48;
  v5 = v0[64];

  return MEMORY[0x2821D23D8](v5);
}

uint64_t sub_220421B84()
{
  v1 = v0[65];

  v2 = v0[67];
  v3 = v0[64];

  v4 = v0[1];

  return v4();
}

uint64_t ComputeServiceConfigurationManager.fetchConfigurationIfNeeded(cachedOnly:)(uint64_t a1, char a2)
{
  *(v3 + 720) = v2;
  *(v3 + 784) = a2;
  *(v3 + 712) = a1;
  v4 = sub_22042A790();
  *(v3 + 728) = v4;
  v5 = *(v4 - 8);
  *(v3 + 736) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 744) = swift_task_alloc();
  *(v3 + 752) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220421CC4, 0, 0);
}

uint64_t sub_220421CC4()
{
  v38 = v0;
  if (*(v0 + 784) == 1)
  {
    v1 = *(v0 + 752);
    v2 = *(v0 + 736);
    v3 = *(v0 + 728);
    v4 = *(v0 + 720);
    v5 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
    sub_22042AA40();
    sub_2203C1FFC(v36);
    (*(v2 + 8))(v1, v3);
    v6 = v36[13];
    *(v0 + 672) = v36[12];
    *(v0 + 688) = v6;
    *(v0 + 704) = v37;
    v7 = v36[9];
    *(v0 + 608) = v36[8];
    *(v0 + 624) = v7;
    v8 = v36[11];
    *(v0 + 640) = v36[10];
    *(v0 + 656) = v8;
    v9 = v36[5];
    *(v0 + 544) = v36[4];
    *(v0 + 560) = v9;
    v10 = v36[7];
    *(v0 + 576) = v36[6];
    *(v0 + 592) = v10;
    v11 = v36[1];
    *(v0 + 480) = v36[0];
    *(v0 + 496) = v11;
    v12 = v36[3];
    *(v0 + 512) = v36[2];
    *(v0 + 528) = v12;
    if (sub_2203C30A8(v0 + 480) == 1)
    {
      sub_2203C30C0();
      swift_allocError();
      swift_willThrow();
      v13 = *(v0 + 752);
      v14 = *(v0 + 744);
    }

    else
    {
      v21 = *(v0 + 712);
      v22 = *(v0 + 480);
      v23 = *(v0 + 512);
      *(v21 + 16) = *(v0 + 496);
      *(v21 + 32) = v23;
      *v21 = v22;
      v24 = *(v0 + 528);
      v25 = *(v0 + 544);
      v26 = *(v0 + 576);
      *(v21 + 80) = *(v0 + 560);
      *(v21 + 96) = v26;
      *(v21 + 48) = v24;
      *(v21 + 64) = v25;
      v27 = *(v0 + 592);
      v28 = *(v0 + 608);
      v29 = *(v0 + 640);
      *(v21 + 144) = *(v0 + 624);
      *(v21 + 160) = v29;
      *(v21 + 112) = v27;
      *(v21 + 128) = v28;
      v30 = *(v0 + 656);
      v31 = *(v0 + 672);
      v32 = *(v0 + 688);
      *(v21 + 224) = *(v0 + 704);
      *(v21 + 192) = v31;
      *(v21 + 208) = v32;
      *(v21 + 176) = v30;
      v33 = *(v0 + 752);
      v34 = *(v0 + 744);
    }

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v16 = *(v0 + 720);
    v17 = v16[6];
    __swift_project_boxed_opaque_existential_1(v16 + 2, v16[5]);
    *(v0 + 760) = sub_22042AA50();
    v18 = *(MEMORY[0x277D6CF28] + 4);
    v19 = swift_task_alloc();
    *(v0 + 768) = v19;
    *v19 = v0;
    v19[1] = sub_220421F4C;
    v20 = *(v0 + 744);

    return MEMORY[0x2821D23D8](v20);
  }
}

uint64_t sub_220421F4C()
{
  v2 = *v1;
  v3 = *(*v1 + 768);
  v7 = *v1;
  *(*v1 + 776) = v0;

  if (v0)
  {
    v4 = sub_220422200;
  }

  else
  {
    v5 = *(v2 + 760);

    v4 = sub_220422068;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_220422068()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  sub_2203C1FFC(v0 + 248);
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 424);
  v5 = *(v0 + 456);
  *(v0 + 208) = *(v0 + 440);
  *(v0 + 224) = v5;
  v6 = *(v0 + 360);
  v7 = *(v0 + 392);
  v8 = *(v0 + 408);
  *(v0 + 144) = *(v0 + 376);
  *(v0 + 160) = v7;
  *(v0 + 176) = v8;
  *(v0 + 192) = v4;
  v9 = *(v0 + 296);
  v10 = *(v0 + 328);
  v11 = *(v0 + 344);
  *(v0 + 80) = *(v0 + 312);
  *(v0 + 96) = v10;
  *(v0 + 112) = v11;
  *(v0 + 128) = v6;
  v12 = *(v0 + 264);
  v13 = *(v0 + 280);
  *(v0 + 16) = *(v0 + 248);
  *(v0 + 32) = v12;
  *(v0 + 240) = *(v0 + 472);
  *(v0 + 48) = v13;
  *(v0 + 64) = v9;
  if (sub_2203C30A8(v0 + 16) == 1)
  {
    sub_2203C30C0();
    swift_allocError();
    swift_willThrow();
    v14 = *(v0 + 752);
    v15 = *(v0 + 744);
  }

  else
  {
    v17 = *(v0 + 712);
    v18 = *(v0 + 16);
    v19 = *(v0 + 48);
    *(v17 + 16) = *(v0 + 32);
    *(v17 + 32) = v19;
    *v17 = v18;
    v20 = *(v0 + 64);
    v21 = *(v0 + 80);
    v22 = *(v0 + 112);
    *(v17 + 80) = *(v0 + 96);
    *(v17 + 96) = v22;
    *(v17 + 48) = v20;
    *(v17 + 64) = v21;
    v23 = *(v0 + 128);
    v24 = *(v0 + 144);
    v25 = *(v0 + 176);
    *(v17 + 144) = *(v0 + 160);
    *(v17 + 160) = v25;
    *(v17 + 112) = v23;
    *(v17 + 128) = v24;
    v26 = *(v0 + 192);
    v27 = *(v0 + 208);
    v28 = *(v0 + 224);
    *(v17 + 224) = *(v0 + 240);
    *(v17 + 192) = v27;
    *(v17 + 208) = v28;
    *(v17 + 176) = v26;
    v29 = *(v0 + 752);
    v30 = *(v0 + 744);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_220422200()
{
  v1 = v0[95];

  v2 = v0[97];
  v3 = v0[94];
  v4 = v0[93];

  v5 = v0[1];

  return v5();
}

uint64_t ComputeServiceConfigurationManager.onChangeOfConfiguration(perform:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  sub_22042AA30();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_22042ADA0();

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_220422334(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *))
{
  sub_2203C1FFC(v7);
  v21 = v7[12];
  v22 = v7[13];
  v23 = v8;
  v17 = v7[8];
  v18 = v7[9];
  v19 = v7[10];
  v20 = v7[11];
  v13 = v7[4];
  v14 = v7[5];
  v15 = v7[6];
  v16 = v7[7];
  v9 = v7[0];
  v10 = v7[1];
  v11 = v7[2];
  v12 = v7[3];
  result = sub_2203C30A8(&v9);
  if (result != 1)
  {
    v5[12] = v21;
    v5[13] = v22;
    v6 = v23;
    v5[8] = v17;
    v5[9] = v18;
    v5[10] = v19;
    v5[11] = v20;
    v5[4] = v13;
    v5[5] = v14;
    v5[6] = v15;
    v5[7] = v16;
    v5[0] = v9;
    v5[1] = v10;
    v5[2] = v11;
    v5[3] = v12;
    a3(v5);
    return sub_2203C2F70(v7, sub_2203E3508);
  }

  return result;
}

uint64_t ComputeServiceConfigurationManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_22042249C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2203C3E30;

  return ComputeServiceConfigurationManager.fetchConfigurationIfNeeded()(a1);
}

unint64_t sub_220422564()
{
  result = qword_27CF52790;
  if (!qword_27CF52790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF52790);
  }

  return result;
}

unint64_t sub_2204225B8()
{
  result = qword_280FA2408;
  if (!qword_280FA2408)
  {
    sub_22042AE70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA2408);
  }

  return result;
}

uint64_t sub_220422610()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_22042BA30();
  }

  sub_2203C1E9C();
  result = sub_22042BCE0();
  qword_280FA0810 = result;
  return result;
}

uint64_t sub_220422708()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_22042BA30();
  }

  sub_2203C1E9C();
  result = sub_22042BCE0();
  qword_280FA0A00 = result;
  return result;
}

uint64_t sub_2204227E0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_22042BA30();
  }

  sub_2203C1E9C();
  result = sub_22042BCE0();
  qword_280FA07F8 = result;
  return result;
}

uint64_t sub_2204228DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    sub_22042BA30();
  }

  sub_2203C1E9C();
  result = sub_22042BCE0();
  *a4 = result;
  return result;
}

uint64_t sub_2204229B0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_22042BA30();
  }

  sub_2203C1E9C();
  result = sub_22042BCE0();
  qword_280FA0658 = result;
  return result;
}

BOOL sub_220422A88()
{
  if (qword_280FA07F0 != -1)
  {
    swift_once();
  }

  v0 = qword_280FA07F8;
  v1 = sub_22042BC70();
  result = os_log_type_enabled(v0, v1);
  v3 = nullsub_1;
  if (result)
  {
    v3 = sub_220422B24;
  }

  qword_280FA56E0 = v3;
  *algn_280FA56E8 = 0;
  return result;
}

uint64_t sub_220422B24(uint64_t (*a1)(void))
{
  if (qword_280FA07F0 != -1)
  {
    swift_once();
  }

  sub_22042BC70();
  sub_2203C1EE8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22042D3F0;
  v3 = a1();
  v5 = v4;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2203C1FA8();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  sub_22042B8D0();
}

unint64_t sub_220422C2C()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  v1 = *v0;
  if (*v0 <= 3)
  {
    v6 = 0x6E776F6E6B6E75;
    v7 = 0x6570697773;
    if (v1 != 2)
    {
      v7 = 0x656E696C64616568;
    }

    if (v1)
    {
      v6 = 0x636E75614C707061;
    }

    if (v1 <= 1)
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
    v2 = 0xD000000000000011;
    v3 = 0x6976614E72657375;
    if (v1 != 7)
    {
      v3 = 0xD000000000000011;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x6B6E696C70656564;
    if (v1 != 4)
    {
      v4 = 0x6E6164726F666661;
    }

    if (v1 <= 5)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t StocksAppFeatureResolvers.resolveFeatures(inputKeys:configuration:nodeID:)@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v90 = a3;
  v91 = a4;
  v106 = a1;
  sub_220423604(0, &unk_280FA22F8, MEMORY[0x277CFBB58]);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v99 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v79 - v15;
  v109 = sub_22042B310();
  v104 = *(v109 - 8);
  v17 = *(v104 + 64);
  MEMORY[0x28223BE20](v109, v18);
  v98 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_22042B130();
  v20 = *(v143 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v143, v22);
  v97 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v108 = &v79 - v26;
  sub_220423604(0, &unk_280FA2358, MEMORY[0x277CFBAD0]);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v80 = &v79 - v30;
  v83 = sub_22042B370();
  v31 = *(v83 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v83, v33);
  v102 = &v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a2[13];
  v140 = a2[12];
  v141 = v35;
  v142 = *(a2 + 28);
  v36 = a2[9];
  v136 = a2[8];
  v137 = v36;
  v37 = a2[11];
  v138 = a2[10];
  v139 = v37;
  v38 = a2[5];
  v132 = a2[4];
  v133 = v38;
  v39 = a2[7];
  v134 = a2[6];
  v135 = v39;
  v40 = a2[1];
  v128 = *a2;
  v129 = v40;
  v41 = a2[3];
  v130 = a2[2];
  v131 = v41;
  v100 = a5;
  sub_22042B360();
  v127 = v106;
  v42 = *(v6 + 16);
  v89 = *(v42 + 16);
  if (v89)
  {
    v87 = v42 + 32;
    v107 = v20 + 16;
    v43 = v104;
    v95 = (v104 + 16);
    v96 = (v104 + 32);
    v93 = (v104 + 8);
    v94 = (v104 + 56);
    v104 = v20 + 8;
    v105 = (v43 + 48);
    v81 = (v31 + 8);

    v45 = 0;
    v85 = xmmword_22042D3E0;
    v46 = v102;
    v47 = v86;
    v82 = v20;
    v88 = v42;
    v103 = v16;
    while (v45 < *(v42 + 16))
    {
      v92 = v45;
      sub_2203C37C0(v87 + 40 * v45, v126);
      v48 = v126[4];
      __swift_project_boxed_opaque_existential_1(v126, v126[3]);
      v49 = v127;
      v123 = v140;
      v124 = v141;
      v125 = v142;
      v119 = v136;
      v120 = v137;
      v121 = v138;
      v122 = v139;
      v115 = v132;
      v116 = v133;
      v117 = v134;
      v118 = v135;
      v111 = v128;
      v112 = v129;
      v113 = v130;
      v114 = v131;
      v50 = *(v48 + 8);
      v51 = v47;
      sub_22042B220();
      if (v47)
      {
        __swift_destroy_boxed_opaque_existential_1(v126);
        if (qword_280FA1130 != -1)
        {
          swift_once();
        }

        LODWORD(v106) = sub_22042BC80();
        sub_2203C1EE8();
        v52 = swift_allocObject();
        *(v52 + 16) = v85;
        sub_220423D40(&qword_280FA2370);
        v53 = sub_22042BC00();
        v55 = v54;
        v56 = MEMORY[0x277D837D0];
        *(v52 + 56) = MEMORY[0x277D837D0];
        v57 = sub_2203C1FA8();
        *(v52 + 64) = v57;
        *(v52 + 32) = v53;
        *(v52 + 40) = v55;
        *&v111 = 0;
        *(&v111 + 1) = 0xE000000000000000;
        v110 = v51;
        sub_2203CFDB8(0, &unk_280FA01A0);
        sub_22042BDF0();
        v58 = v111;
        *(v52 + 96) = v56;
        *(v52 + 104) = v57;
        *(v52 + 72) = v58;
        sub_22042B8D0();

        result = MEMORY[0x223D7C730](v51);
        v47 = 0;
        v46 = v102;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v126);
        v59 = sub_22042B350();
        v60 = v49[2];
        v86 = 0;
        if (v60 && (v61 = *(v59 + 16)) != 0)
        {
          v62 = *(v82 + 80);
          v106 = v59;
          v63 = v59 + ((v62 + 32) & ~v62);
          v64 = *(v82 + 72);
          v65 = v80;
          do
          {
            sub_220423A4C(v63, v65);
            sub_220423CCC(v65, &unk_280FA2358, MEMORY[0x277CFBAD0]);
            v63 += v64;
            --v61;
          }

          while (v61);

          v47 = v86;
          v46 = v102;
        }

        else
        {
        }

        v66 = sub_22042B350();
        v67 = *(v66 + 16);
        if (v67)
        {
          v68 = (*(v82 + 80) + 32) & ~*(v82 + 80);
          v84 = v66;
          v69 = v66 + v68;
          v70 = *(v82 + 72);
          v72 = v108;
          v106 = *(v82 + 16);
          v71 = v106;
          v101 = v70;
          (v106)(v108, v66 + v68, v143);
          while (1)
          {
            sub_22042B380();
            if ((*v105)(v16, 1, v109) == 1)
            {
              (*v104)(v72, v143);
              sub_220423CCC(v16, &unk_280FA22F8, MEMORY[0x277CFBB58]);
            }

            else
            {
              v73 = v109;
              v74 = v143;
              v75 = v98;
              (*v96)(v98, v103, v109);
              v71(v97, v108, v74);
              v76 = v99;
              (*v95)(v99, v75, v73);
              (*v94)(v76, 0, 1, v73);
              v72 = v108;
              sub_22042B390();
              v77 = v75;
              v46 = v102;
              v16 = v103;
              v78 = v73;
              v70 = v101;
              (*v93)(v77, v78);
              (*v104)(v72, v74);
            }

            v69 += v70;
            --v67;
            v71 = v106;
            if (!v67)
            {
              break;
            }

            (v106)(v72, v69, v143);
          }

          v47 = v86;
        }

        else
        {
        }

        result = (*v81)(v46, v83);
      }

      v45 = v92 + 1;
      v42 = v88;
      if (v92 + 1 == v89)
      {
      }
    }

    __break(1u);
  }

  else
  {
  }

  return result;
}

void sub_220423604(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22042BCF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t StocksAppFeatureResolvers.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t StocksAppFeatureResolvers.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void *sub_2204236D4()
{
  v1 = v0;
  v2 = sub_22042B130();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042136C();
  v8 = *v0;
  v9 = sub_22042BD40();
  v10 = v9;
  if (*(v8 + 16))
  {
    v24 = v1;
    result = (v9 + 56);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 56 + 8 * v12)
    {
      result = memmove(result, (v8 + 56), 8 * v12);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v8 + 56);
    v18 = (v15 + 63) >> 6;
    v25 = v3 + 32;
    for (i = v3 + 16; v17; result = (*(v3 + 32))(*(v10 + 48) + v22, v7, v2))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v22 = *(v3 + 72) * (v19 | (v14 << 6));
      (*(v3 + 16))(v7, *(v8 + 48) + v22, v2);
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v21 = *(v8 + 56 + 8 * v14);
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
    *v1 = v10;
  }

  return result;
}

void *sub_2204238FC()
{
  v1 = v0;
  sub_220421760();
  v2 = *v0;
  v3 = sub_22042BD40();
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

uint64_t sub_220423A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_22042B130();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_220423D40(&qword_280FA2370);
  v36 = a1;
  v14 = sub_22042B9E0();
  v15 = v12 + 56;
  v34 = v12 + 56;
  v35 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v31 = v3;
    v32 = v7;
    v33 = a2;
    v18 = ~v16;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    while (1)
    {
      v19(v11, *(v35 + 48) + v22 * v17, v6);
      sub_220423D40(&qword_280FA2368);
      v23 = sub_22042BA10();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v34 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v24 = 1;
        v7 = v32;
        a2 = v33;
        return (*(v7 + 56))(a2, v24, 1, v6);
      }
    }

    v25 = v31;
    v26 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v25;
    v37 = *v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2204236D4();
      v28 = v37;
    }

    v7 = v32;
    a2 = v33;
    (*(v32 + 32))(v33, *(v28 + 48) + v22 * v17, v6);
    sub_220423D84(v17);
    v24 = 0;
    *v25 = v37;
  }

  else
  {
    v24 = 1;
  }

  return (*(v7 + 56))(a2, v24, 1, v6);
}

uint64_t sub_220423CCC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_220423604(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_220423D40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22042B130();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_220423D84(int64_t a1)
{
  v3 = sub_22042B130();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3, v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = *v1 + 56;
  v12 = -1 << *(*v1 + 32);
  v13 = (a1 + 1) & ~v12;
  if (((1 << v13) & *(v11 + 8 * (v13 >> 6))) != 0)
  {
    v14 = ~v12;
    v15 = *v1;

    v16 = sub_22042BD30();
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) != 0)
    {
      v39 = (v16 + 1) & v14;
      v18 = *(v4 + 16);
      v17 = v4 + 16;
      v19 = v14;
      v20 = *(v17 + 56);
      v40 = v17;
      v37 = (v17 - 8);
      v38 = v18;
      do
      {
        v21 = v11;
        v22 = v20;
        v23 = v20 * v13;
        v38(v9, *(v10 + 48) + v20 * v13, v3);
        v24 = v10;
        v25 = v19;
        v26 = v24;
        v27 = *(v24 + 40);
        sub_220423D40(&qword_280FA2370);
        v28 = sub_22042B9E0();
        (*v37)(v9, v3);
        v29 = v28 & v25;
        v19 = v25;
        if (a1 >= v39)
        {
          if (v29 >= v39 && a1 >= v29)
          {
LABEL_16:
            v10 = v26;
            v32 = *(v26 + 48);
            v20 = v22;
            v33 = v22 * a1;
            if (v22 * a1 < v23 || v32 + v22 * a1 >= (v32 + v23 + v22))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v13;
            }

            else
            {
              a1 = v13;
              if (v33 != v23)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v13;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v29 >= v39 || a1 >= v29)
        {
          goto LABEL_16;
        }

        v10 = v26;
        v20 = v22;
LABEL_5:
        v13 = (v13 + 1) & v19;
        v11 = v21;
      }

      while (((*(v21 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
    }

    *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v34 = *(v10 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v36;
    ++*(v10 + 36);
  }

  return result;
}

uint64_t sub_22042407C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_22042ACF0();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_22042A5B0();
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v13 = sub_22042A9D0();
  v3[19] = v13;
  v14 = *(v13 - 8);
  v3[20] = v14;
  v15 = *(v14 + 64) + 15;
  v3[21] = swift_task_alloc();
  sub_220425FE4(0, &qword_280FA0468, sub_220425F78);
  v17 = *(*(v16 - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v18 = sub_22042AAC0();
  v3[23] = v18;
  v19 = *(v18 - 8);
  v3[24] = v19;
  v20 = *(v19 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v21 = sub_22042B110();
  v3[28] = v21;
  v22 = *(v21 - 8);
  v3[29] = v22;
  v23 = *(v22 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  sub_220425FE4(0, &qword_280FA2378, MEMORY[0x277D68FD8]);
  v25 = *(*(v24 - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v26 = sub_22042B100();
  v3[33] = v26;
  v27 = *(v26 - 8);
  v3[34] = v27;
  v28 = *(v27 + 64) + 15;
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22042441C, 0, 0);
}

uint64_t sub_22042441C()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  sub_220426038(v0[8], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[10];
    v5 = v0[11];
    v6 = v0[7];
    sub_220426224(v0[32], &qword_280FA2378, MEMORY[0x277D68FD8]);
LABEL_3:
    (*(v5 + 56))(v6, 1, 1, v4);
    v7 = v0[35];
    v8 = v0[31];
    v9 = v0[32];
    v10 = v0[30];
    v12 = v0[26];
    v11 = v0[27];
    v13 = v0[25];
    v15 = v0[21];
    v14 = v0[22];
    v16 = v0[18];
    v87 = v0[15];
    v90 = v0[12];

    v17 = v0[1];
LABEL_19:

    return v17();
  }

  v19 = v0[30];
  v18 = v0[31];
  v20 = v0[28];
  v21 = v0[29];
  (*(v0[34] + 32))(v0[35], v0[32], v0[33]);
  sub_22042B0F0();
  (*(v21 + 104))(v19, *MEMORY[0x277D68FF0], v20);
  sub_220426308(&qword_27CF527A0, MEMORY[0x277D69018]);
  sub_22042BB00();
  sub_22042BB00();
  v23 = v0[30];
  v22 = v0[31];
  v24 = v0[28];
  v25 = v0[29];
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    v26 = *(v25 + 8);
    v26(v0[30], v0[28]);
    v26(v22, v24);
  }

  else
  {
    v27 = v0[3];
    v28 = v0[5];
    v29 = sub_22042BF50();
    v30 = *(v25 + 8);
    v30(v23, v24);
    v30(v22, v24);

    if ((v29 & 1) == 0)
    {
      v4 = v0[10];
      v5 = v0[11];
      v6 = v0[7];
      (*(v0[34] + 8))(v0[35], v0[33]);
      goto LABEL_3;
    }
  }

  v31 = v0[35];
  v32 = sub_22042B0E0();
  sub_220425718(58, 0xE100000000000000, v32, v33);
  v35 = v34;

  v36 = v0[35];
  if (v35)
  {
    v38 = v0[33];
    v37 = v0[34];
    type metadata accessor for GroupIDStockMessageTranslator.Errors();
    sub_220426308(&qword_27CF527A8, type metadata accessor for GroupIDStockMessageTranslator.Errors);
    swift_allocError();
    v40 = v39;
    *v39 = sub_22042B0E0();
    v40[1] = v41;
LABEL_18:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v37 + 8))(v36, v38);
    v70 = v0[35];
    v72 = v0[31];
    v71 = v0[32];
    v73 = v0[30];
    v75 = v0[26];
    v74 = v0[27];
    v76 = v0[25];
    v78 = v0[21];
    v77 = v0[22];
    v79 = v0[18];
    v86 = v0[15];
    v89 = v0[12];

    v17 = v0[1];
    goto LABEL_19;
  }

  sub_22042B0E0();
  v42 = sub_22042BAB0();

  v43 = sub_22042B0E0();
  v45 = v44;

  v46 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v46 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (v42 >> 14 >= 4 * v46)
  {
    v37 = v0[34];
    v36 = v0[35];
    v38 = v0[33];
    type metadata accessor for GroupIDStockMessageTranslator.Errors();
    sub_220426308(&qword_27CF527A8, type metadata accessor for GroupIDStockMessageTranslator.Errors);
    swift_allocError();
    v68 = v67;
    *v67 = sub_22042B0E0();
    v68[1] = v69;
    v68[2] = v42;
    goto LABEL_18;
  }

  v47 = v0[35];
  v48 = v0[18];
  v88 = v0[20];
  v91 = v0[19];
  v84 = v0[17];
  v85 = v0[16];
  v49 = v0[14];
  v50 = v0[15];
  v82 = v0[21];
  v83 = v0[13];
  v51 = v0[9];
  v52 = sub_22042B0E0();
  v54 = sub_2204261D8(v42, v52, v53);
  v56 = v55;
  v58 = v57;
  v60 = v59;

  v61 = MEMORY[0x223D7BDB0](v54, v56, v58, v60);
  v63 = v62;

  v0[36] = v61;
  v0[37] = v63;
  v81 = v51[11];
  __swift_project_boxed_opaque_existential_1(v51 + 7, v51[10]);
  sub_2203E69D4();
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_22042D3F0;
  *(v64 + 32) = v61;
  *(v64 + 40) = v63;

  sub_22042A9C0();
  sub_22042A5A0();
  (*(v49 + 104))(v50, *MEMORY[0x277D6CAB8], v83);
  v0[38] = sub_22042AA00();

  (*(v49 + 8))(v50, v83);
  (*(v84 + 8))(v48, v85);
  (*(v88 + 8))(v82, v91);
  v65 = *(MEMORY[0x277D6CF28] + 4);
  v66 = swift_task_alloc();
  v0[39] = v66;
  *v66 = v0;
  v66[1] = sub_220424B6C;

  return MEMORY[0x2821D23D8](v0 + 6);
}

uint64_t sub_220424B6C()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  v2[40] = v0;

  v5 = v2[38];
  if (v0)
  {
    v6 = v2[37];

    v7 = sub_2204254B8;
  }

  else
  {

    v7 = sub_220424CB0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_220424CB0()
{
  v1 = v0[22];
  sub_220425808(v0[6], v1);

  sub_220425F78();
  v3 = v2;
  v4 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v5 = v0[37];
  if (v4 == 1)
  {
    v6 = v0[35];
    v7 = v0[36];
    v9 = v0[33];
    v8 = v0[34];
    sub_220426224(v0[22], &qword_280FA0468, sub_220425F78);
    type metadata accessor for GroupIDStockMessageTranslator.Errors();
    sub_220426308(&qword_27CF527A8, type metadata accessor for GroupIDStockMessageTranslator.Errors);
    swift_allocError();
    *v10 = v7;
    v10[1] = v5;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v8 + 8))(v6, v9);
LABEL_3:
    v11 = v0[35];
    v13 = v0[31];
    v12 = v0[32];
    v14 = v0[30];
    v16 = v0[26];
    v15 = v0[27];
    v17 = v0[25];
    v19 = v0[21];
    v18 = v0[22];
    v20 = v0[18];
    v51 = v0[15];
    v52 = v0[12];

    v21 = v0[1];

    return v21();
  }

  v23 = v0[35];
  v25 = v0[26];
  v24 = v0[27];
  v26 = v0[23];
  v27 = v0[24];
  v28 = v0[22];
  v29 = v0[37];

  v30 = *(v28 + 8);

  v31 = *(v27 + 32);
  v31(v25, v28 + *(v3 + 48), v26);
  v31(v24, v25, v26);
  v32 = sub_22042AAA0();
  v34 = v33;
  if (v32 == sub_22042B0E0() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_22042BF50();

    if ((v36 & 1) == 0)
    {
      v41 = v0[34];
      v42 = v0[35];
      v53 = v0[33];
      v43 = v0[27];
      v44 = v0[23];
      v45 = v0[24];
      type metadata accessor for GroupIDStockMessageTranslator.Errors();
      sub_220426308(&qword_27CF527A8, type metadata accessor for GroupIDStockMessageTranslator.Errors);
      swift_allocError();
      v47 = v46;
      sub_220426280();
      v49 = *(v48 + 48);
      *v47 = sub_22042B0E0();
      v47[1] = v50;
      (*(v45 + 16))(v47 + v49, v43, v44);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v45 + 8))(v43, v44);
      (*(v41 + 8))(v42, v53);
      goto LABEL_3;
    }
  }

  v37 = swift_task_alloc();
  v0[41] = v37;
  *v37 = v0;
  v37[1] = sub_220425108;
  v38 = v0[35];
  v39 = v0[27];
  v40 = v0[9];

  return sub_2204259B4(v40, v39, v38);
}

uint64_t sub_220425108(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 328);
  v8 = *v3;
  *(*v3 + 336) = v2;

  if (v2)
  {
    v9 = sub_2204255D8;
  }

  else
  {
    *(v6 + 344) = a2;
    *(v6 + 352) = a1;
    v9 = sub_22042523C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22042523C()
{
  v1 = v0[43];
  v26 = v0[44];
  v2 = v0[34];
  v30 = v0[33];
  v31 = v0[35];
  v28 = v0[42];
  v29 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  v6 = v0[12];
  v33 = v0[11];
  v7 = v0[10];
  v8 = v0[7];
  v27 = v3;
  (*(v4 + 16))(v3);
  sub_22042B670();
  v9 = (v8 + *(v7 + 20));
  *v9 = 0;
  v9[1] = 0;
  v10 = (v8 + *(v7 + 24));
  *v10 = 0;
  v10[1] = 0;
  v11 = swift_task_alloc();
  v11[2] = v3;
  v11[3] = v26;
  v11[4] = v1;
  sub_220426308(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v12 = v6;
  sub_22042B810();

  sub_2203EFECC(v8);
  v13 = *(v4 + 8);
  v13(v29, v5);
  (*(v2 + 8))(v31, v30);
  sub_2203DFAD4(v12, v8);
  v13(v27, v5);
  (*(v33 + 56))(v8, 0, 1, v7);
  v14 = v0[35];
  v15 = v0[31];
  v16 = v0[32];
  v17 = v0[30];
  v19 = v0[26];
  v18 = v0[27];
  v20 = v0[25];
  v22 = v0[21];
  v21 = v0[22];
  v23 = v0[18];
  v32 = v0[15];
  v34 = v0[12];

  v24 = v0[1];

  return v24();
}

uint64_t sub_2204254B8()
{
  (*(v0[34] + 8))(v0[35], v0[33]);
  v1 = v0[35];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];
  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[18];
  v13 = v0[15];
  v14 = v0[12];
  v15 = v0[40];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2204255D8()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  (*(v0[24] + 8))(v0[27], v0[23]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[35];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[30];
  v9 = v0[26];
  v8 = v0[27];
  v10 = v0[25];
  v12 = v0[21];
  v11 = v0[22];
  v13 = v0[18];
  v16 = v0[15];
  v17 = v0[12];
  v18 = v0[42];

  v14 = v0[1];

  return v14();
}

unint64_t sub_220425718(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_22042BAD0() != a1 || v9 != a2)
  {
    v10 = sub_22042BF50();

    if (v10)
    {
      return v8;
    }

    v8 = sub_22042BAB0();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_220425808@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_220425F78();
  v5 = v4;
  v19 = *(v4 - 8);
  v6 = *(v19 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(a1 + 32);
  v11 = sub_22042BD20();
  if (v11 == 1 << *(a1 + 32))
  {
    v12 = *(v19 + 56);

    return v12(a2, 1, 1, v5);
  }

  else
  {
    v14 = *(v5 + 48);
    *a2 = sub_220426104(&v9[v14], v11, *(a1 + 36), 0, a1);
    a2[1] = v15;
    v16 = *(v5 + 48);
    v17 = sub_22042AAC0();
    (*(*(v17 - 8) + 32))(a2 + v16, &v9[v14], v17);
    return (*(v19 + 56))(a2, 0, 1, v5);
  }
}

uint64_t sub_2204259B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_22042A830();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220425A78, 0, 0);
}

uint64_t sub_220425A78()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_2203E69D4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22042D3F0;
  *(v4 + 32) = sub_22042AAB0();
  *(v4 + 40) = v5;
  v0[8] = sub_22042A9E0();

  v6 = *(MEMORY[0x277D6CF28] + 4);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_220425B88;
  v8 = v0[7];

  return MEMORY[0x2821D23D8](v8);
}

uint64_t sub_220425B88()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_220425EA8;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_220425CA4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_220425CA4()
{
  v1 = v0[7];
  v2 = v0[3];
  sub_22042AAB0();
  v3 = sub_22042A820();
  v5 = v4;

  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
  if (v5)
  {
    (*(v7 + 8))(v0[7], v0[5]);

    v9 = v0[1];

    return v9(v3, v5);
  }

  else
  {
    v12 = v0[3];
    v11 = v0[4];
    type metadata accessor for GroupIDStockMessageTranslator.Errors();
    sub_220426308(&qword_27CF527A8, type metadata accessor for GroupIDStockMessageTranslator.Errors);
    swift_allocError();
    v14 = v13;
    sub_220426280();
    v16 = *(v15 + 48);
    *v14 = sub_22042B0E0();
    v14[1] = v17;
    v18 = sub_22042AAC0();
    (*(*(v18 - 8) + 16))(v14 + v16, v12, v18);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v7 + 8))(v6, v8);
    v19 = v0[7];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_220425EA8()
{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_220425F14()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

void sub_220425F78()
{
  if (!qword_280FA0470)
  {
    sub_22042AAC0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280FA0470);
    }
  }
}

void sub_220425FE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22042BCF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_220426038(uint64_t a1, uint64_t a2)
{
  sub_220425FE4(0, &qword_280FA2378, MEMORY[0x277D68FD8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for GroupIDStockMessageTranslator.Errors()
{
  result = qword_27CF527B8;
  if (!qword_27CF527B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220426104(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = (*(a5 + 48) + 16 * a2);
    v9 = *v8;
    v10 = v8[1];
    v11 = sub_22042AAC0();
    (*(*(v11 - 8) + 16))(v6, v7 + *(*(v11 - 8) + 72) * a2, v11);

    return v9;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2204261D8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return MEMORY[0x2821FBFB0]();
}

uint64_t sub_220426224(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_220425FE4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_220426280()
{
  if (!qword_27CF527B0)
  {
    sub_22042AAC0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF527B0);
    }
  }
}

uint64_t sub_220426308(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_220426350()
{
  sub_220426280();
  if (v0 <= 0x3F)
  {
    sub_2204263D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2204263D4()
{
  if (!qword_27CF527C8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF527C8);
    }
  }
}

uint64_t sub_220426434(void *a1)
{
  v2 = MEMORY[0x277D83D88];
  sub_2203C109C(0, &unk_280FA2308, MEMORY[0x277CFBB28], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = v31 - v6;
  sub_2203C109C(0, &unk_280FA2318, MEMORY[0x277CFBB08], v2);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v31 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = type metadata accessor for ComputeServiceConfigurationManager();
  result = sub_22042AD20();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = result;
  v31[14] = v14;
  v31[15] = sub_22042A11C(&qword_280FA07B0, type metadata accessor for ComputeServiceConfigurationManager);
  v31[11] = v16;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = type metadata accessor for StocksAppFeatureResolvers();
  result = sub_22042AD20();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v19 = result;
  v31[9] = v18;
  v31[10] = sub_22042A11C(&qword_280FA1358, type metadata accessor for StocksAppFeatureResolvers);
  v31[6] = v19;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220429A74();
  result = sub_22042AD20();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = sub_22042B3D0();
  result = sub_22042AD20();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v23 = result;
  v31[4] = v22;
  v31[5] = sub_22042A11C(qword_280FA22D0, MEMORY[0x277D34B08]);
  v31[1] = v23;
  v24 = sub_22042B230();
  (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = sub_22042B290();
  sub_22042AD30();
  result = (*(*(v26 - 8) + 48))(v7, 1, v26);
  if (result == 1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22042B2F0();
  result = sub_22042AD20();
  if (result)
  {
    sub_220429A10(0, &qword_280FA2328, MEMORY[0x277CFBB00]);
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    return sub_22042B1B0();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_220426838()
{
  v0 = sub_22042A5E0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ComputeServiceRetentionTokenVendor();
  v6 = swift_allocObject();
  sub_22042A5D0();
  v7 = sub_22042A5C0();
  v9 = v8;
  (*(v1 + 8))(v5, v0);
  *(v6 + 16) = v7;
  *(v6 + 24) = v9;
  return v6;
}

uint64_t sub_22042692C(void *a1)
{
  sub_2203C1360(0, &unk_280FA0218, &qword_280FA13B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22042D3E0;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = type metadata accessor for UserEventsFeatureResolver();
  result = sub_22042AD20();
  if (result)
  {
    v6 = result;
    *(v2 + 56) = v4;
    *(v2 + 64) = sub_22042A11C(&qword_280FA0AB8, type metadata accessor for UserEventsFeatureResolver);
    *(v2 + 32) = v6;
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220429A10(0, &qword_280FA2260, MEMORY[0x277D34BC0]);
    v9 = v8;
    result = sub_22042AD20();
    if (result)
    {
      v10 = result;
      *(v2 + 96) = v9;
      *(v2 + 104) = sub_2203C1630();
      *(v2 + 72) = v10;
      type metadata accessor for StocksAppFeatureResolvers();
      result = swift_allocObject();
      *(result + 16) = v2;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220426A94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220429A10(0, &qword_280FA2328, MEMORY[0x277CFBB00]);
  v5 = v4;
  result = sub_22042AD20();
  if (result)
  {
    a2[3] = v5;
    a2[4] = &protocol witness table for <> ComputeService<A>;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220426B24(void *a1)
{
  sub_2203C109C(0, &qword_280FA22F0, MEMORY[0x277CFBB60], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v16 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for UserEventFeaturesFactory();
  result = sub_22042AD20();
  if (result)
  {
    v9 = result;
    type metadata accessor for UserEventsFeatureResolver();
    v10 = swift_allocObject();
    v11 = sub_22042B370();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    sub_220429FF0();
    v13 = *(v12 + 52);
    v14 = (*(v12 + 48) + 3) & 0x1FFFFFFFCLL;
    v15 = swift_allocObject();
    *(v15 + ((*(*v15 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
    sub_22042A088(v6, v15 + *(*v15 + *MEMORY[0x277D841D0] + 16));
    *(v10 + 16) = v15;
    *(v10 + 24) = v9;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220426CF8()
{
  sub_220429A10(0, &qword_280FA2260, MEMORY[0x277D34BC0]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_22042B500();
}

uint64_t sub_220426D4C(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203CFDB8(0, &unk_280FA2250);
  result = sub_22042AD30();
  if (v8)
  {
    v4 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2203BFCDC();
    result = sub_22042AD20();
    if (result)
    {
      v5 = result;
      type metadata accessor for UserEventFeaturesFactory();
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      *(v6 + 24) = sub_22042B540() & 1;
      __swift_destroy_boxed_opaque_existential_1(v7);
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220426E4C(void *a1)
{
  sub_2203C109C(0, &qword_280FA2540, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v24 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v24 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_22042A500();
  sub_22042AD10();
  v17 = *(*(v16 - 8) + 48);
  result = v17(v14, 1, v16);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22042AD10();
  result = v17(v11, 1, v16);
  if (result == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22042AD10();
  result = v17(v7, 1, v16);
  if (result != 1)
  {
    sub_220429A74();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    return sub_22042B3A0();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_2204270D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_22042B2D0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22042B270();
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_22042B260();
  v26 = *(v12 - 8);
  v27 = v12;
  v13 = *(v26 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v28 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22042A790();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ComputeServiceConfigurationManager();
  result = sub_22042AD20();
  if (result)
  {
    v24 = result[6];
    __swift_project_boxed_opaque_existential_1(result + 2, result[5]);
    sub_22042AA40();
    sub_2203C1FFC(&v33);
    (*(v17 + 8))(v21, v16);
    v48[12] = v45;
    v48[13] = v46;
    v48[8] = v41;
    v48[9] = v42;
    v48[10] = v43;
    v48[11] = v44;
    v48[4] = v37;
    v48[5] = v38;
    v48[6] = v39;
    v48[7] = v40;
    v48[0] = v33;
    v48[1] = v34;
    v48[2] = v35;
    v48[3] = v36;
    v50[12] = v45;
    v51 = v46;
    v50[8] = v41;
    v50[9] = v42;
    v50[10] = v43;
    v50[11] = v44;
    v50[4] = v37;
    v50[5] = v38;
    v50[6] = v39;
    v50[7] = v40;
    v50[0] = v33;
    v50[1] = v34;
    v49 = v47;
    v52 = v47;
    v50[2] = v35;
    v50[3] = v36;
    if (sub_2203C30A8(v50) == 1)
    {
      v25 = 10.0;
    }

    else
    {
      sub_220429F48(v48, &qword_280FA08C0);
      v25 = (v51 / 1000);
    }

    (*(v26 + 104))(v28, *MEMORY[0x277CFBB10], v27);
    *v11 = v25;
    *(v11 + 8) = 0;
    (*(v29 + 104))(v11, *MEMORY[0x277CFBB18], v30);
    sub_22042B2C0();
    sub_22042B250();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2204274EC@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220429A10(0, &qword_280FA2328, MEMORY[0x277CFBB00]);
  result = sub_22042AD20();
  if (result)
  {
    v6 = result;
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2203C3314(0, &qword_280FA0368, &protocolRef_FCUserEventHistoryStorageType);
    sub_22042B900();
    v8 = sub_22042AD00();

    if (v8)
    {
      a2[3] = &type metadata for StocksRadarAttachmentProvider;
      result = sub_220429EF4();
      a2[4] = result;
      *a2 = v6;
      a2[1] = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2204275FC(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203C3314(0, &qword_280FA0360, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_22042AD20();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220429A10(0, &qword_280FA2328, MEMORY[0x277CFBB00]);
  result = sub_22042AD20();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203CFDB8(0, &qword_280FA09F0);
  result = sub_22042AD30();
  if (!v29)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203C3314(0, &unk_280FA0378, &protocolRef_FCPaidAccessCheckerType);
  result = sub_22042AD20();
  if (result)
  {
    v9 = result;
    v10 = v29;
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
    v12 = *(*(v10 - 8) + 64);
    MEMORY[0x28223BE20](v11, v11);
    v14 = (v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v26 = type metadata accessor for ArticleFeaturesFactory();
    v27 = &off_2834015A8;
    v25[0] = v16;
    v17 = objc_allocWithZone(type metadata accessor for ComputeServiceScoringService());
    v18 = v26;
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
    v20 = *(*(v18 - 8) + 64);
    MEMORY[0x28223BE20](v19, v19);
    v22 = (v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    v24 = sub_220429AE0(v4, v6, *v22, v9, v17);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v25);
    __swift_destroy_boxed_opaque_existential_1(v28);
    return v24;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_22042793C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = a2(0);
  result = sub_22042AD20();
  if (result)
  {
    a4[3] = v8;
    a4[4] = a3;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2204279C0(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203CFDB8(0, &qword_280FA24C0);
  result = sub_22042AD30();
  if (v5)
  {
    type metadata accessor for ComputeServiceConfigurationManager();
    v3 = swift_allocObject();
    sub_2203C5934(&v4, v3 + 16);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220427A5C(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203CFDB8(0, &unk_280FA04B8);
  result = sub_22042AD30();
  if (v6)
  {
    v3 = sub_22042B3D0();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    return sub_22042B3C0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220427AF0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203CFDB8(0, &qword_280FA2288);
  result = sub_22042AD30();
  if (v8)
  {
    v5 = type metadata accessor for ArticleFeaturesFactory();
    v6 = swift_allocObject();
    result = sub_2203C5934(&v7, v6 + 16);
    a2[3] = v5;
    a2[4] = &off_2834015A8;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_220427BA0(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ComputeServiceConfigurationManager();
  result = sub_22042AD20();
  if (result)
  {
    v4 = result;
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220429A10(0, &qword_280FA2328, MEMORY[0x277CFBB00]);
    result = sub_22042AD20();
    if (result)
    {
      v6 = result;
      v7 = objc_allocWithZone(type metadata accessor for ComputeServiceUnloaderService());
      return sub_2203E2E54(v4, v6);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220427CC4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = a2(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return a3();
}

uint64_t sub_220427D08(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220429A10(0, &qword_280FA2328, MEMORY[0x277CFBB00]);
  result = sub_22042AD20();
  if (result)
  {
    v3 = result;
    type metadata accessor for StocksComputeServiceStartupTask();
    result = swift_allocObject();
    *(result + 16) = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220427D94(uint64_t a1, void *a2)
{
  v2 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = type metadata accessor for StocksComputeServiceStartupTask();
  result = sub_22042AD20();
  if (result)
  {
    v5 = result;
    v6[3] = v3;
    v6[4] = sub_22042A11C(&unk_280FA12A0, type metadata accessor for StocksComputeServiceStartupTask);
    v6[0] = v5;
    sub_22042ADF0();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220427E88(uint64_t *a1, void *a2)
{
  v26 = sub_22042B270();
  v4 = *(v26 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v26, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203C109C(0, &unk_280FA2308, MEMORY[0x277CFBB28], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v25 - v12;
  v14 = sub_22042B290();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  v20 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22042AD30();
  result = (*(v15 + 48))(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  (*(v15 + 32))(v19, v13, v14);
  sub_22042B280();
  v22 = v26;
  if ((*(v4 + 88))(v8, v26) == *MEMORY[0x277CFBB20])
  {
    (*(v15 + 8))(v19, v14);
    return (*(v4 + 8))(v8, v22);
  }

  (*(v4 + 8))(v8, v22);
  sub_22042ACE0();
  if ((sub_22042ACD0() & 1) == 0)
  {
    return (*(v15 + 8))(v19, v14);
  }

  v23 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ArticleScoringRequestEventProcessor();
  result = sub_22042AD20();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v24 = result;

  sub_22042B2E0();

  return (*(v15 + 8))(v19, v14);
}

id sub_2204281D8(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203C109C(0, &unk_280FA2240, MEMORY[0x277D34C00], MEMORY[0x277D83D88]);
  result = sub_22042AD10();
  if (v6 == 1)
  {
    __break(1u);
  }

  else
  {
    v3 = type metadata accessor for ArticleScoringRequestEventProcessor();
    v4 = objc_allocWithZone(v3);
    *&v4[qword_27CF525F8] = v6;
    v5.receiver = v4;
    v5.super_class = v3;
    return objc_msgSendSuper2(&v5, sel_init);
  }

  return result;
}

uint64_t sub_2204282C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2203C109C(0, &qword_280FA2540, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v24 - v7;
  sub_2203C12B0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = sub_22042B580();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v15 = objc_opt_self();
  v16 = [v15 kilobytes];
  v17 = [v15 megabytes];
  sub_2203C1318(0, &qword_280FA0370, 0x277CCAE18);
  sub_22042A3F0();
  sub_22042B570();
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = sub_22042A500();
  sub_22042AA90();
  sub_22042AD10();

  result = (*(*(v19 - 8) + 48))(v8, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v21 = sub_22042B5B0();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    result = sub_22042B590();
    *a2 = result;
  }

  return result;
}

uint64_t sub_220428658@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203CFDB8(0, &qword_280FA24F0);
  result = sub_22042AD30();
  if (!v20)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203CFDB8(0, &qword_280FA24F8);
  result = sub_22042AD30();
  if (!v18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203CFDB8(0, &qword_280FA24C0);
  result = sub_22042AD30();
  if (!v16)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203CFDB8(0, &qword_280FA24C8);
  result = sub_22042AD30();
  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ComputeServiceScoringService();
  result = sub_22042AD20();
  if (result)
  {
    v10 = result;
    v11 = type metadata accessor for NewsHeadlineScorerFactory();
    v12 = swift_allocObject();
    sub_2203C5934(&v19, v12 + 16);
    sub_2203C5934(&v17, v12 + 56);
    sub_2203C5934(&v15, v12 + 96);
    sub_2203C5934(&v13, v12 + 136);
    *(v12 + 176) = v10;
    a2[3] = v11;
    result = sub_22042A11C(qword_280FA0AD0, type metadata accessor for NewsHeadlineScorerFactory);
    a2[4] = result;
    *a2 = v12;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_220428888()
{
  v0 = sub_22042A490();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22042A500();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042AAF0();
  sub_22042AAE0();
  sub_22042AAD0();

  v13[0] = 0xD000000000000012;
  v13[1] = 0x8000000220433BD0;
  (*(v1 + 104))(v5, *MEMORY[0x277CC91C0], v0);
  sub_2203C0F94();
  sub_22042A4E0();
  (*(v1 + 8))(v5, v0);
  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_220428A74@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22[1] = a4;
  v7 = sub_22042A490();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203C109C(0, &qword_280FA2540, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = v22 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = sub_22042A500();
  sub_22042AD10();
  v20 = *(v19 - 8);
  result = (*(v20 + 48))(v17, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v22[2] = a2;
    v22[3] = a3;
    (*(v8 + 104))(v12, *MEMORY[0x277CC91C0], v7);
    sub_2203C0F94();
    sub_22042A4E0();
    (*(v8 + 8))(v12, v7);
    return (*(v20 + 8))(v17, v19);
  }

  return result;
}

void *sub_220428CF8(uint64_t a1, void *a2)
{
  v56 = a2;
  v2 = sub_22042B8E0();
  v58 = *(v2 - 8);
  v3 = *(v58 + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v52 = (&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5, v7);
  v9 = (&v51 - v8);
  sub_2203C109C(0, &qword_280FA2540, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v54 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v57 = &v51 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v51 - v19;
  v21 = sub_22042B200();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22042A500();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v31 = MEMORY[0x28223BE20](v27, v30);
  v55 = &v51 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v35 = &v51 - v34;
  sub_22042B170();
  sub_22042B1F0();
  (*(v22 + 8))(v26, v21);
  v53 = *(v28 + 48);
  if (v53(v20, 1, v27) != 1)
  {
    (*(v28 + 32))(v35, v20, v27);
    v37 = swift_allocObject();
    *(v37 + 16) = sub_22042A4D0();
    *(v37 + 24) = v38;
    *v9 = v37;
    v39 = v58;
    (*(v58 + 104))(v9, *MEMORY[0x277D6D6D0], v2);
    i = sub_22041F084(0, 1, 1, MEMORY[0x277D84F90]);
    isEscapingClosureAtFileLocation = i[2];
    v40 = i[3];
    v42 = isEscapingClosureAtFileLocation + 1;
    if (isEscapingClosureAtFileLocation >= v40 >> 1)
    {
      goto LABEL_15;
    }

    goto LABEL_4;
  }

  v35 = v2;
  sub_22042A1F8(v20);
  for (i = MEMORY[0x277D84F90]; ; (*(v39 + 32))(i + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * isEscapingClosureAtFileLocation, v9, v2))
  {
    v2 = v57;
    (*(v28 + 56))(v57, 1, 1, v27);
    v9 = swift_allocObject();
    v9[2] = v2;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_22042A284;
    *(v42 + 24) = v9;
    aBlock[4] = sub_22042A28C;
    v60 = v42;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_220429924;
    aBlock[3] = &block_descriptor;
    v43 = _Block_copy(aBlock);
    v39 = v60;

    [v56 readBaseDirectoryWithAccessor_];
    _Block_release(v43);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_15:
    i = sub_22041F084(v40 > 1, v42, 1, i);
LABEL_4:
    (*(v28 + 8))(v35, v27);
    i[2] = v42;
    v35 = v2;
  }

  v44 = v54;
  sub_22042A2CC(v2, v54);
  if (v53(v44, 1, v27) == 1)
  {
    sub_22042A1F8(v44);
  }

  else
  {
    (*(v28 + 32))(v55, v44, v27);
    v45 = swift_allocObject();
    *(v45 + 16) = sub_22042A4D0();
    *(v45 + 24) = v46;
    v47 = v52;
    *v52 = v45;
    (*(v58 + 104))(v47, *MEMORY[0x277D6D6D0], v35);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_22041F084(0, i[2] + 1, 1, i);
    }

    v49 = i[2];
    v48 = i[3];
    if (v49 >= v48 >> 1)
    {
      i = sub_22041F084(v48 > 1, v49 + 1, 1, i);
    }

    (*(v28 + 8))(v55, v27);
    i[2] = v49 + 1;
    (*(v58 + 32))(i + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v49, v47, v35);
  }

  sub_22042A1F8(v2);

  return i;
}

uint64_t sub_2204293F0(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v47 = a1;
  v51 = *MEMORY[0x277D85DE8];
  v46 = sub_22042A490();
  v2 = *(v46 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v46, v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22042A5E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22042A500();
  v44 = *(v13 - 8);
  v45 = v13;
  v14 = *(v44 + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v43 - v20;
  sub_22042A4A0();
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_22042BD70();

  v49 = 0xD00000000000001ALL;
  v50 = 0x8000000220433C60;
  sub_22042A5D0();
  v22 = sub_22042A5C0();
  v24 = v23;
  (*(v8 + 8))(v12, v7);
  MEMORY[0x223D7BDE0](v22, v24);

  v25 = v46;
  (*(v2 + 104))(v6, *MEMORY[0x277CC91C0], v46);
  sub_2203C0F94();
  sub_22042A4F0();
  (*(v2 + 8))(v6, v25);
  v26 = v44;

  v27 = *(v26 + 8);
  v28 = v18;
  v29 = v45;
  v27(v28, v45);
  v30 = [objc_opt_self() defaultManager];
  v31 = sub_22042A4B0();
  v32 = sub_22042A4B0();
  v49 = 0;
  LODWORD(v8) = [v30 copyItemAtURL:v31 toURL:v32 error:&v49];

  if (v8)
  {
    v33 = v49;
    v34 = v43;
    sub_22042A1F8(v43);
    (*(v26 + 32))(v34, v21, v29);
    result = (*(v26 + 56))(v34, 0, 1, v29);
  }

  else
  {
    v36 = v21;
    v37 = v49;
    v38 = sub_22042A480();

    swift_willThrow();
    if (qword_280FA09F8 != -1)
    {
      swift_once();
    }

    sub_22042BC80();
    sub_2203C1360(0, &qword_280FA01B0, &qword_280FA0190);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_22042D3F0;
    v49 = 0;
    v50 = 0xE000000000000000;
    v48 = v38;
    sub_2203CFDB8(0, &unk_280FA01A0);
    sub_22042BDF0();
    v40 = v49;
    v41 = v50;
    *(v39 + 56) = MEMORY[0x277D837D0];
    *(v39 + 64) = sub_2203C1FA8();
    *(v39 + 32) = v40;
    *(v39 + 40) = v41;
    sub_22042B8D0();

    MEMORY[0x223D7C730](v38);
    result = (v27)(v36, v29);
  }

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_220429924(uint64_t a1)
{
  v2 = sub_22042A500();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  sub_22042A4C0();
  v9(v7);
  return (*(v3 + 8))(v7, v2);
}

void sub_220429A10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2203C0E7C();
    v7 = a3(a1, &type metadata for ComputeServiceConfiguration, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_220429A74()
{
  if (!qword_280FA22E8)
  {
    sub_22042B5C0();
    sub_2203C0E7C();
    v0 = sub_22042B3B0();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA22E8);
    }
  }
}

id sub_220429AE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  ObjectType = swift_getObjectType();
  v10 = sub_22042AE10();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v33[3] = type metadata accessor for ArticleFeaturesFactory();
  v33[4] = &off_2834015A8;
  v33[0] = a3;
  v13 = OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_prepareForUseDeduper;
  *&v31 = MEMORY[0x277D84F90];
  sub_22042A11C(&qword_280FA2410, MEMORY[0x277D6CD10]);
  sub_2203C109C(0, &unk_280FA0448, MEMORY[0x277D6CD10], MEMORY[0x277D83940]);
  sub_2203C3824();
  sub_22042BD10();
  sub_2203C38FC();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *&a5[v13] = sub_22042AD50();
  sub_2203C1318(0, &qword_280FA0340, 0x277D86200);
  v17 = sub_22042BCD0();
  sub_22042BC70();
  sub_22042B8D0();

  v18 = [a1 cachedSubscription];
  if (objc_getAssociatedObject(v18, v18 + 1))
  {
    sub_22042BD00();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31 = v29;
  v32 = v30;
  if (!*(&v30 + 1))
  {
    sub_220429F48(&v31, &qword_280FA0188);
    goto LABEL_9;
  }

  sub_2203C1318(0, &qword_280FA0350, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v19 = 0;
    v20 = 0;
    goto LABEL_10;
  }

  v19 = v27;
  v20 = [v27 integerValue];
  if (v20 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v18, ~v20))
  {
    sub_22042BD00();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31 = v29;
  v32 = v30;
  if (!*(&v30 + 1))
  {
    sub_220429F48(&v31, &qword_280FA0188);
    goto LABEL_17;
  }

  sub_2203C1318(0, &qword_280FA0350, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v23 = -51;
    goto LABEL_18;
  }

  v21 = v27;
  v22 = [v21 integerValue];

  v23 = v22 - 51;
LABEL_18:
  a5[OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_isSubscribed] = ((v23 ^ v20) & 1) == 0;
  *&a5[OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_computeService] = a2;
  sub_2203C37C0(v33, &a5[OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_articleFeaturesFactory]);
  *&a5[OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_paidAccessChecker] = a4;
  v28.receiver = a5;
  v28.super_class = ObjectType;

  swift_unknownObjectRetain();
  v24 = objc_msgSendSuper2(&v28, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return v24;
}

unint64_t sub_220429EF4()
{
  result = qword_280FA12B0;
  if (!qword_280FA12B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA12B0);
  }

  return result;
}

uint64_t sub_220429F48(uint64_t a1, unint64_t *a2)
{
  sub_220429FA4(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_220429FA4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22042BCF0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_220429FF0()
{
  if (!qword_280FA0320)
  {
    sub_2203C109C(255, &qword_280FA22F0, MEMORY[0x277CFBB60], MEMORY[0x277D83D88]);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22042BD90();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA0320);
    }
  }
}

uint64_t sub_22042A088(uint64_t a1, uint64_t a2)
{
  sub_2203C109C(0, &qword_280FA22F0, MEMORY[0x277CFBB60], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22042A11C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22042A164(uint64_t *a1, int a2)
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

uint64_t sub_22042A1AC(uint64_t result, int a2, int a3)
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

uint64_t sub_22042A1F8(uint64_t a1)
{
  sub_2203C109C(0, &qword_280FA2540, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22042A28C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22042A2CC(uint64_t a1, uint64_t a2)
{
  sub_2203C109C(0, &qword_280FA2540, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}