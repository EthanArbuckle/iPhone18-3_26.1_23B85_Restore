uint64_t sub_230DDAEB4(uint64_t a1)
{
  v2 = sub_230DDB54C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkflowCachingOption.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CC78, &qword_230E7A7C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v16 = v1[3];
  v15[1] = *(v1 + 32);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DDB54C();
  sub_230E69A50();
  v21 = 0;
  v13 = v17;
  sub_230E69810();
  if (!v13)
  {
    v20 = 1;
    sub_230E69830();
    v19 = 2;
    sub_230E697C0();
    v18 = 3;
    sub_230D0D128();
    sub_230E69850();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t WorkflowCachingOption.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CC88, &qword_230E7A7D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v21 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DDB54C();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v12 = sub_230E69720();
  v14 = v13;
  v15 = v12;
  v25 = 1;
  sub_230E69740();
  v17 = v16;
  v24 = 2;
  v18 = sub_230E696D0();
  v22 = v19;
  v21 = v18;
  v23 = 3;
  sub_230D0D1D0();
  sub_230E69760();
  (*(v6 + 8))(v10, v5);
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v17;
  *(a2 + 24) = v21;
  *(a2 + 32) = v22 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230DDB3A8()
{
  result = qword_27DB5CC38;
  if (!qword_27DB5CC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CC38);
  }

  return result;
}

unint64_t sub_230DDB3FC()
{
  result = qword_27DB5CC40;
  if (!qword_27DB5CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CC40);
  }

  return result;
}

unint64_t sub_230DDB450()
{
  result = qword_27DB5CC48;
  if (!qword_27DB5CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CC48);
  }

  return result;
}

unint64_t sub_230DDB4A4()
{
  result = qword_27DB5CC50;
  if (!qword_27DB5CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CC50);
  }

  return result;
}

unint64_t sub_230DDB4F8()
{
  result = qword_27DB5CC70;
  if (!qword_27DB5CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CC70);
  }

  return result;
}

unint64_t sub_230DDB54C()
{
  result = qword_27DB5CC80;
  if (!qword_27DB5CC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CC80);
  }

  return result;
}

unint64_t sub_230DDB604()
{
  result = qword_27DB5CC90;
  if (!qword_27DB5CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CC90);
  }

  return result;
}

unint64_t sub_230DDB65C()
{
  result = qword_27DB5CC98;
  if (!qword_27DB5CC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CC98);
  }

  return result;
}

unint64_t sub_230DDB6B4()
{
  result = qword_27DB5CCA0;
  if (!qword_27DB5CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CCA0);
  }

  return result;
}

unint64_t sub_230DDB70C()
{
  result = qword_27DB5CCA8;
  if (!qword_27DB5CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CCA8);
  }

  return result;
}

unint64_t sub_230DDB764()
{
  result = qword_27DB5CCB0;
  if (!qword_27DB5CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CCB0);
  }

  return result;
}

unint64_t sub_230DDB7BC()
{
  result = qword_27DB5CCB8;
  if (!qword_27DB5CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CCB8);
  }

  return result;
}

unint64_t sub_230DDB814()
{
  result = qword_27DB5CCC0;
  if (!qword_27DB5CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CCC0);
  }

  return result;
}

unint64_t sub_230DDB86C()
{
  result = qword_27DB5CCC8;
  if (!qword_27DB5CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CCC8);
  }

  return result;
}

unint64_t sub_230DDB8C4()
{
  result = qword_27DB5CCD0;
  if (!qword_27DB5CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CCD0);
  }

  return result;
}

unint64_t sub_230DDB91C()
{
  result = qword_27DB5CCD8;
  if (!qword_27DB5CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CCD8);
  }

  return result;
}

unint64_t sub_230DDB974()
{
  result = qword_27DB5CCE0;
  if (!qword_27DB5CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CCE0);
  }

  return result;
}

uint64_t ServicesIntelligenceProvider.run(_:)(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  *(v3 + 688) = v2;
  *(v3 + 680) = a1;
  v5 = sub_230E68D80();
  *(v3 + 696) = v5;
  v6 = *(v5 - 8);
  *(v3 + 704) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 712) = swift_task_alloc();
  v8 = *(a2 + 80);
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = v8;
  *(v3 + 112) = *(a2 + 96);
  v9 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v9;
  v10 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v10;
  *(v3 + 113) = 33;
  v11 = swift_task_alloc();
  *(v3 + 720) = v11;
  *v11 = v3;
  v11[1] = sub_230DDBB34;
  v12 = *MEMORY[0x277D85DE8];

  return static RequestContext.from(_:correlationID:)(v3 + 632, (v3 + 113), 0, 0);
}

uint64_t sub_230DDBB34()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 720);
  v2 = *(*v0 + 688);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230DDBC70, v2, 0);
}

uint64_t sub_230DDBC70()
{
  v33 = v0;
  v32[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 712);
  v2 = *(v0 + 688);
  v3 = *(v0 + 632);
  v4 = *(v0 + 640);
  v5 = *(v0 + 648);
  *(v0 + 728) = v5;
  v6 = *(v0 + 656);
  v7 = *(v0 + 657);
  v8 = *(v0 + 664);
  *(v0 + 736) = v8;
  *(v0 + 592) = v3;
  *(v0 + 600) = v4;
  *(v0 + 608) = v5;
  *(v0 + 616) = v6;
  *(v0 + 617) = v7;
  *(v0 + 624) = v8;
  sub_230DC7630(v0 + 16, v0 + 488);

  sub_230E68D70();

  v9 = sub_230E68D60();
  v10 = sub_230E693E0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v31 = v6;
    v12 = swift_slowAlloc();
    v32[0] = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_230D7E620(0x666B726F576E7572, 0xEB00000000776F6CLL, v32);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_230D7E620(v4, v5, v32);
    *(v11 + 22) = 2080;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v32);

    *(v11 + 24) = v14;
    _os_log_impl(&dword_230D02000, v9, v10, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v11, 0x20u);
    swift_arrayDestroy();
    v15 = v12;
    v6 = v31;
    MEMORY[0x23191EAE0](v15, -1, -1);
    MEMORY[0x23191EAE0](v11, -1, -1);
  }

  if (v6)
  {
    v16 = RequestType.rawValue.getter();
    v18 = v17;

    sub_230D33FDC(v16, v18, v8);

    sub_230E68950();
    *(v0 + 744) = CFAbsoluteTimeGetCurrent();
    *(v0 + 116) = 0u;
    *(v0 + 132) = 0u;
    *(v0 + 148) = 0u;
    *(v0 + 164) = 0u;
    *(v0 + 180) = 0u;
    *(v0 + 196) = 0u;
    *(v0 + 212) = 0u;
    *(v0 + 228) = 0u;
    *(v0 + 244) = 0u;
    *(v0 + 260) = 0u;
    *(v0 + 276) = 0u;
    *(v0 + 292) = 0u;
    *(v0 + 308) = 0u;
    *(v0 + 324) = 0u;
    *(v0 + 340) = 0u;
    *(v0 + 356) = 0u;
    *(v0 + 372) = 0u;
    *(v0 + 388) = 0u;
    *(v0 + 404) = 0u;
    *(v0 + 420) = 0u;
    *(v0 + 436) = 0u;
    *(v0 + 452) = 0u;
    *(v0 + 468) = 0u;
    *(v0 + 484) = 0;
    *(v0 + 588) = 93;
    v19 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 116), (v0 + 588));
    *(v0 + 792) = v19;
    v20 = 0.0;
    if (!v19)
    {
      v21 = *(v0 + 164);
      v22 = *(v0 + 236);
      v23 = __CFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        __break(1u);
      }

      v20 = vcvtd_n_f64_u64(v24, 0x14uLL);
    }

    *(v0 + 768) = v20;
    *(v0 + 672) = 0;
    v25 = swift_task_alloc();
    *(v0 + 776) = v25;
    *v25 = v0;
    v26 = sub_230DDC210;
  }

  else
  {
    v25 = swift_task_alloc();
    *(v0 + 752) = v25;
    *v25 = v0;
    v26 = sub_230DDC0B8;
  }

  v25[1] = v26;
  v27 = *(v0 + 688);
  v28 = *(v0 + 680);
  v29 = *MEMORY[0x277D85DE8];

  return sub_230DDDB14(v28, v0 + 16, v27, v0 + 592);
}

uint64_t sub_230DDC0B8()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 752);
  v4 = *v1;
  *(*v1 + 760) = v0;

  v5 = *(v2 + 688);
  if (v0)
  {
    v6 = sub_230DDC6F8;
  }

  else
  {
    v6 = sub_230DDC600;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230DDC210()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 776);
  v4 = *v1;
  *(*v1 + 784) = v0;

  v5 = *(v2 + 688);
  if (v0)
  {
    v6 = sub_230DDC49C;
  }

  else
  {
    v6 = sub_230DDC368;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230DDC368()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 736);
  v2 = *(v0 + 728);
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  v5 = *(v0 + 696);
  v6 = *(v0 + 688);
  sub_230D39FD4(33, *(v0 + 768), *(v0 + 792) != 0, v0 + 592, (v0 + 672), *(v0 + 744));
  (*(v4 + 8))(v3, v5);
  sub_230D8151C(v0 + 16);

  v7 = *(v0 + 736);
  v8 = *(v0 + 728);
  v9 = *(v0 + 712);

  v10 = *(v0 + 8);
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

uint64_t sub_230DDC49C()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 784);
  v2 = *(v0 + 768);
  v3 = *(v0 + 744);
  v16 = *(v0 + 736);
  v4 = *(v0 + 728);
  v5 = *(v0 + 712);
  v6 = *(v0 + 704);
  v7 = *(v0 + 696);
  v8 = *(v0 + 688);
  v9 = *(v0 + 792) != 0;
  *(v0 + 672) = v1;
  swift_willThrow();
  v10 = v1;
  sub_230D39FD4(33, v2, v9, v0 + 592, (v0 + 672), v3);
  MEMORY[0x23191E910](v1);
  (*(v6 + 8))(v5, v7);
  sub_230D8151C(v0 + 16);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v11 = *(v0 + 784);
  v12 = *(v0 + 712);

  v13 = *(v0 + 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13();
}

uint64_t sub_230DDC600()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[86];
  (*(v0[88] + 8))(v0[89], v0[87]);
  sub_230D8151C((v0 + 2));

  v4 = v0[92];
  v5 = v0[91];
  v6 = v0[89];

  v7 = v0[1];
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_230DDC6F8()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[86];
  (*(v0[88] + 8))(v0[89], v0[87]);
  sub_230D8151C((v0 + 2));

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v4 = v0[95];
  v5 = v0[89];

  v6 = v0[1];
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t ServicesIntelligenceProvider.run(_:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  *(v4 + 688) = v3;
  *(v4 + 680) = a1;
  v7 = sub_230E68D80();
  *(v4 + 696) = v7;
  v8 = *(v7 - 8);
  *(v4 + 704) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 712) = swift_task_alloc();
  v10 = *(a2 + 80);
  *(v4 + 80) = *(a2 + 64);
  *(v4 + 96) = v10;
  *(v4 + 112) = *(a2 + 96);
  v11 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v11;
  v12 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v12;
  v13 = *(a3 + 16);
  *(v4 + 720) = *a3;
  *(v4 + 736) = v13;
  *(v4 + 752) = *(a3 + 32);
  v14 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230DDC910, v3, 0);
}

uint64_t sub_230DDC910()
{
  v32 = v0;
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 736);
  if (v1)
  {
    v2 = *(v0 + 752);
    v3 = *(v0 + 744);
    v4 = *(v0 + 720);
    v5 = *(v0 + 728);
    *(v0 + 776) = v2;
    *(v0 + 768) = v1;
    v6 = *(v0 + 712);
    v7 = *(v0 + 688);
    *(v0 + 592) = v4;
    *(v0 + 600) = v5;
    *(v0 + 608) = v1;
    *(v0 + 616) = v3 & 1;
    *(v0 + 617) = BYTE1(v3);
    *(v0 + 624) = v2;
    sub_230DC7630(v0 + 16, v0 + 488);

    sub_230D0585C(v4, v5, v1);
    sub_230E68D70();

    v8 = sub_230E68D60();
    v9 = sub_230E693E0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31[0] = v30;
      *v10 = 136315650;
      *(v10 + 4) = sub_230D7E620(0x666B726F576E7572, 0xEB00000000776F6CLL, v31);
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_230D7E620(v5, v1, v31);
      *(v10 + 22) = 2080;
      v11 = RequestType.rawValue.getter();
      MEMORY[0x23191DA00](v11);

      v12 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v31);

      *(v10 + 24) = v12;
      _os_log_impl(&dword_230D02000, v8, v9, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23191EAE0](v30, -1, -1);
      MEMORY[0x23191EAE0](v10, -1, -1);
    }

    if (v3)
    {
      v13 = RequestType.rawValue.getter();
      v15 = v14;

      sub_230D33FDC(v13, v15, v2);

      sub_230E68950();
      *(v0 + 784) = CFAbsoluteTimeGetCurrent();
      *(v0 + 116) = 0u;
      *(v0 + 132) = 0u;
      *(v0 + 148) = 0u;
      *(v0 + 164) = 0u;
      *(v0 + 180) = 0u;
      *(v0 + 196) = 0u;
      *(v0 + 212) = 0u;
      *(v0 + 228) = 0u;
      *(v0 + 244) = 0u;
      *(v0 + 260) = 0u;
      *(v0 + 276) = 0u;
      *(v0 + 292) = 0u;
      *(v0 + 308) = 0u;
      *(v0 + 324) = 0u;
      *(v0 + 340) = 0u;
      *(v0 + 356) = 0u;
      *(v0 + 372) = 0u;
      *(v0 + 388) = 0u;
      *(v0 + 404) = 0u;
      *(v0 + 420) = 0u;
      *(v0 + 436) = 0u;
      *(v0 + 452) = 0u;
      *(v0 + 468) = 0u;
      *(v0 + 484) = 0;
      *(v0 + 588) = 93;
      v16 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 116), (v0 + 588));
      *(v0 + 832) = v16;
      v17 = 0.0;
      if (!v16)
      {
        v18 = *(v0 + 164);
        v19 = *(v0 + 236);
        v20 = __CFADD__(v18, v19);
        v21 = v18 + v19;
        if (v20)
        {
          __break(1u);
        }

        v17 = vcvtd_n_f64_u64(v21, 0x14uLL);
      }

      *(v0 + 808) = v17;
      *(v0 + 672) = 0;
      v22 = swift_task_alloc();
      *(v0 + 816) = v22;
      *v22 = v0;
      v23 = sub_230DDD544;
    }

    else
    {
      v22 = swift_task_alloc();
      *(v0 + 792) = v22;
      *v22 = v0;
      v23 = sub_230DDD3EC;
    }

    v22[1] = v23;
    v27 = *(v0 + 688);
    v28 = *(v0 + 680);
    v29 = *MEMORY[0x277D85DE8];

    return sub_230DDDB14(v28, v0 + 16, v27, v0 + 592);
  }

  else
  {
    *(v0 + 113) = 33;
    v24 = swift_task_alloc();
    *(v0 + 760) = v24;
    *v24 = v0;
    v24[1] = sub_230DDCE24;
    v25 = *MEMORY[0x277D85DE8];

    return static RequestContext.from(_:correlationID:)(v0 + 632, (v0 + 113), 0, 0);
  }
}

uint64_t sub_230DDCE24()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 760);
  v2 = *(*v0 + 688);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230DDCF60, v2, 0);
}

uint64_t sub_230DDCF60()
{
  v38 = v0;
  v37[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 632);
  v2 = *(v0 + 640);
  v3 = *(v0 + 648);
  v4 = *(v0 + 656);
  v5 = *(v0 + 657);
  v6 = *(v0 + 664);
  *(v0 + 776) = v6;
  *(v0 + 768) = v3;
  v7 = *(v0 + 752);
  v8 = *(v0 + 744);
  v9 = *(v0 + 736);
  v10 = *(v0 + 728);
  v11 = *(v0 + 720);
  v12 = *(v0 + 712);
  v13 = *(v0 + 688);
  v36 = v4;
  *(v0 + 592) = v1;
  v35 = v2;
  *(v0 + 600) = v2;
  *(v0 + 608) = v3;
  *(v0 + 616) = v4;
  *(v0 + 617) = v5;
  *(v0 + 624) = v6;
  sub_230DC7630(v0 + 16, v0 + 488);

  sub_230D0585C(v11, v10, v9);
  sub_230E68D70();

  v14 = sub_230E68D60();
  v15 = sub_230E693E0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v37[0] = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_230D7E620(0x666B726F576E7572, 0xEB00000000776F6CLL, v37);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_230D7E620(v35, v3, v37);
    *(v16 + 22) = 2080;
    v18 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v18);

    v19 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v37);

    *(v16 + 24) = v19;
    _os_log_impl(&dword_230D02000, v14, v15, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v17, -1, -1);
    MEMORY[0x23191EAE0](v16, -1, -1);

    if (!v36)
    {
LABEL_3:
      v20 = swift_task_alloc();
      *(v0 + 792) = v20;
      *v20 = v0;
      v21 = sub_230DDD3EC;
      goto LABEL_9;
    }
  }

  else
  {

    if (!v36)
    {
      goto LABEL_3;
    }
  }

  v22 = RequestType.rawValue.getter();
  v24 = v23;

  sub_230D33FDC(v22, v24, v6);

  sub_230E68950();
  *(v0 + 784) = CFAbsoluteTimeGetCurrent();
  *(v0 + 116) = 0u;
  *(v0 + 132) = 0u;
  *(v0 + 148) = 0u;
  *(v0 + 164) = 0u;
  *(v0 + 180) = 0u;
  *(v0 + 196) = 0u;
  *(v0 + 212) = 0u;
  *(v0 + 228) = 0u;
  *(v0 + 244) = 0u;
  *(v0 + 260) = 0u;
  *(v0 + 276) = 0u;
  *(v0 + 292) = 0u;
  *(v0 + 308) = 0u;
  *(v0 + 324) = 0u;
  *(v0 + 340) = 0u;
  *(v0 + 356) = 0u;
  *(v0 + 372) = 0u;
  *(v0 + 388) = 0u;
  *(v0 + 404) = 0u;
  *(v0 + 420) = 0u;
  *(v0 + 436) = 0u;
  *(v0 + 452) = 0u;
  *(v0 + 468) = 0u;
  *(v0 + 484) = 0;
  *(v0 + 588) = 93;
  v25 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 116), (v0 + 588));
  *(v0 + 832) = v25;
  v26 = 0.0;
  if (!v25)
  {
    v27 = *(v0 + 164);
    v28 = *(v0 + 236);
    v29 = __CFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      __break(1u);
    }

    v26 = vcvtd_n_f64_u64(v30, 0x14uLL);
  }

  *(v0 + 808) = v26;
  *(v0 + 672) = 0;
  v20 = swift_task_alloc();
  *(v0 + 816) = v20;
  *v20 = v0;
  v21 = sub_230DDD544;
LABEL_9:
  v20[1] = v21;
  v31 = *(v0 + 688);
  v32 = *(v0 + 680);
  v33 = *MEMORY[0x277D85DE8];

  return sub_230DDDB14(v32, v0 + 16, v31, v0 + 592);
}

uint64_t sub_230DDD3EC()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 792);
  v4 = *v1;
  *(*v1 + 800) = v0;

  v5 = *(v2 + 688);
  if (v0)
  {
    v6 = sub_230DDDA2C;
  }

  else
  {
    v6 = sub_230DDD934;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230DDD544()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 816);
  v4 = *v1;
  *(*v1 + 824) = v0;

  v5 = *(v2 + 688);
  if (v0)
  {
    v6 = sub_230DDD7D0;
  }

  else
  {
    v6 = sub_230DDD69C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230DDD69C()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 776);
  v2 = *(v0 + 768);
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  v5 = *(v0 + 696);
  v6 = *(v0 + 688);
  sub_230D39FD4(33, *(v0 + 808), *(v0 + 832) != 0, v0 + 592, (v0 + 672), *(v0 + 784));
  (*(v4 + 8))(v3, v5);
  sub_230D8151C(v0 + 16);

  v7 = *(v0 + 776);
  v8 = *(v0 + 768);
  v9 = *(v0 + 712);

  v10 = *(v0 + 8);
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

uint64_t sub_230DDD7D0()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 824);
  v2 = *(v0 + 808);
  v3 = *(v0 + 784);
  v16 = *(v0 + 776);
  v4 = *(v0 + 768);
  v5 = *(v0 + 712);
  v6 = *(v0 + 704);
  v7 = *(v0 + 696);
  v8 = *(v0 + 688);
  v9 = *(v0 + 832) != 0;
  *(v0 + 672) = v1;
  swift_willThrow();
  v10 = v1;
  sub_230D39FD4(33, v2, v9, v0 + 592, (v0 + 672), v3);
  MEMORY[0x23191E910](v1);
  (*(v6 + 8))(v5, v7);
  sub_230D8151C(v0 + 16);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v11 = *(v0 + 824);
  v12 = *(v0 + 712);

  v13 = *(v0 + 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13();
}

uint64_t sub_230DDD934()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[86];
  (*(v0[88] + 8))(v0[89], v0[87]);
  sub_230D8151C((v0 + 2));

  v4 = v0[97];
  v5 = v0[96];
  v6 = v0[89];

  v7 = v0[1];
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_230DDDA2C()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[86];
  (*(v0[88] + 8))(v0[89], v0[87]);
  sub_230D8151C((v0 + 2));

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v4 = v0[100];
  v5 = v0[89];

  v6 = v0[1];
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t sub_230DDDB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  *(v4 + 3064) = a4;
  *(v4 + 3056) = a3;
  *(v4 + 3048) = a2;
  *(v4 + 3040) = a1;
  *(v4 + 138) = *a4;
  *(v4 + 3072) = *(a4 + 8);
  *(v4 + 139) = *(a4 + 24);
  *(v4 + 633) = *(a4 + 25);
  *(v4 + 3088) = *(a4 + 32);
  v6 = sub_230E68D80();
  *(v4 + 3096) = v6;
  v7 = *(v6 - 8);
  *(v4 + 3104) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 3112) = swift_task_alloc();
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230DDDC38, a3, 0);
}

uint64_t sub_230DDDC38()
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 3048);
  if (v1[6])
  {
    v2 = *(v0 + 3088);
    v3 = *(v0 + 633);
    v4 = *(v0 + 139);
    v5 = *(v0 + 3080);
    v6 = *(v0 + 3072);
    v7 = *(v0 + 138);
    v8 = *(v0 + 3064);
    v9 = *v1;
    v10 = v1[1];
    *(v0 + 2288) = v1[2];
    *(v0 + 2272) = v10;
    *(v0 + 2256) = v9;
    v11 = v1[3];
    v12 = v1[4];
    v13 = v1[5];
    *(v0 + 2352) = *(v1 + 96);
    *(v0 + 2336) = v13;
    *(v0 + 2320) = v12;
    *(v0 + 2304) = v11;
    *(v0 + 2952) = v7;
    *(v0 + 2960) = v6;
    *(v0 + 2968) = v5;
    *(v0 + 2976) = v4 & 1 | (v3 << 8);
    *(v0 + 2984) = v2;
    sub_230D1CDE0(v8, v0 + 2992);
    v14 = swift_task_alloc();
    *(v0 + 3120) = v14;
    *v14 = v0;
    v14[1] = sub_230DDDE88;
    v15 = *(v0 + 3056);
    v16 = *MEMORY[0x277D85DE8];

    return sub_230DE0184(v0 + 512, v0 + 2256, (v0 + 2952));
  }

  else
  {
    v18 = *(v0 + 3088);
    v19 = *(v0 + 3080);
    v20 = *(v0 + 139) & 1 | (*(v0 + 633) << 8);
    *(v0 + 3152) = *(v0 + 138);
    *(v0 + 3144) = v19;
    *(v0 + 3136) = v20;
    *(v0 + 3128) = v18;
    v21 = *(v0 + 3064);
    v22 = *(v0 + 3056);
    sub_230D1CDE0(v21, v0 + 2912);
    sub_230D1CDE0(v21, v0 + 2872);

    v23 = swift_task_alloc();
    *(v0 + 3160) = v23;
    *v23 = v0;
    v23[1] = sub_230DDE260;
    v24 = *(v0 + 3064);
    v25 = *(v0 + 3056);
    v26 = *MEMORY[0x277D85DE8];

    return sub_230D6F7D0(39, v24, v25, v25);
  }
}

uint64_t sub_230DDDE88()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = (*v0)[390];
  v3 = (*v0)[382];
  v9 = *v0;

  v4 = v1[372];
  v5 = v1[373];
  sub_230D666B4(v1[369], v1[370], v1[371]);
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230DDE038, v3, 0);
}

uint64_t sub_230DDE038()
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 592);
  *(v0 + 704) = *(v0 + 576);
  *(v0 + 720) = v1;
  *(v0 + 736) = *(v0 + 608);
  *(v0 + 745) = *(v0 + 617);
  v2 = *(v0 + 528);
  *(v0 + 640) = *(v0 + 512);
  *(v0 + 656) = v2;
  v3 = *(v0 + 560);
  *(v0 + 672) = *(v0 + 544);
  *(v0 + 688) = v3;
  if (sub_230D666F8(v0 + 640) == 1)
  {
    v4 = *(v0 + 3088);
    v5 = *(v0 + 3080);
    v6 = *(v0 + 139) & 1 | (*(v0 + 633) << 8);
    *(v0 + 3152) = *(v0 + 138);
    *(v0 + 3144) = v5;
    *(v0 + 3136) = v6;
    *(v0 + 3128) = v4;
    v7 = *(v0 + 3064);
    v8 = *(v0 + 3056);
    sub_230D1CDE0(v7, v0 + 2912);
    sub_230D1CDE0(v7, v0 + 2872);

    v9 = swift_task_alloc();
    *(v0 + 3160) = v9;
    *v9 = v0;
    v9[1] = sub_230DDE260;
    v10 = *(v0 + 3064);
    v11 = *(v0 + 3056);
    v12 = *MEMORY[0x277D85DE8];

    return sub_230D6F7D0(39, v10, v11, v11);
  }

  else
  {
    v14 = *(v0 + 3040);
    sub_230E68950();
    v15 = *(v0 + 640);
    v16 = *(v0 + 656);
    v17 = *(v0 + 688);
    v14[2] = *(v0 + 672);
    v14[3] = v17;
    *v14 = v15;
    v14[1] = v16;
    v18 = *(v0 + 704);
    v19 = *(v0 + 720);
    v20 = *(v0 + 736);
    *(v14 + 105) = *(v0 + 745);
    v14[5] = v19;
    v14[6] = v20;
    v14[4] = v18;
    v21 = *(v0 + 3112);

    v22 = *(v0 + 8);
    v23 = *MEMORY[0x277D85DE8];

    return v22();
  }
}

uint64_t sub_230DDE260(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 3160);
  v6 = *v2;
  *(v4 + 3168) = a1;
  *(v4 + 3176) = v1;

  v7 = *(v3 + 3064);
  v8 = *(v3 + 3056);
  sub_230D1CE3C(v7);
  if (v1)
  {
    v9 = sub_230DDF934;
  }

  else
  {
    v9 = sub_230DDE3E0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_230DDE3E0()
{
  v4 = *MEMORY[0x277D85DE8];
  sub_230D1CE3C(*(v0 + 3064));
  *(v0 + 137) = 48;
  v1 = swift_task_alloc();
  *(v0 + 3184) = v1;
  *v1 = v0;
  v1[1] = sub_230DDE4C4;
  v2 = *MEMORY[0x277D85DE8];

  return static RequestContext.from(_:correlationID:)(v0 + 2832, (v0 + 137), 0, 0);
}

uint64_t sub_230DDE4C4()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 3184);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230DDE5EC, 0, 0);
}

uint64_t sub_230DDE5EC()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2832);
  *(v0 + 634) = v1;
  v2 = *(v0 + 2840);
  *(v0 + 3192) = v2;
  v3 = *(v0 + 2848);
  *(v0 + 3200) = v3;
  v4 = *(v0 + 2856);
  *(v0 + 635) = v4;
  v5 = *(v0 + 2857);
  *(v0 + 761) = v5;
  v6 = *(v0 + 2864);
  *(v0 + 3208) = v6;
  *(v0 + 2672) = v1;
  *(v0 + 2680) = v2;
  *(v0 + 2688) = v3;
  *(v0 + 2696) = v4;
  *(v0 + 2697) = v5;
  *(v0 + 2704) = v6;
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 3168);
  v8 = *(v0 + 3048);
  v9 = qword_27DB5A438;
  *(v0 + 3216) = qword_27DB5A438;
  sub_230DC7630(v8, v0 + 2360);

  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230DDE738, v9, 0);
}

uint64_t sub_230DDE738()
{
  v32 = v0;
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = (v0 + 260);
  v2 = *(v0 + 3208);
  v3 = *(v0 + 3200);
  v4 = *(v0 + 3112);
  sub_230E68D70();

  v5 = sub_230E68D60();
  v6 = sub_230E693E0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 3200);
    v8 = *(v0 + 3192);
    v9 = *(v0 + 634);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31[0] = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_230D7E620(0x726F577972657571, 0xED0000776F6C666BLL, v31);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_230D7E620(v8, v7, v31);
    *(v10 + 22) = 2080;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v31);

    *(v10 + 24) = v13;
    _os_log_impl(&dword_230D02000, v5, v6, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v11, -1, -1);
    MEMORY[0x23191EAE0](v10, -1, -1);
  }

  if (*(v0 + 635) != 1)
  {
    goto LABEL_6;
  }

  v14 = *(v0 + 3208);
  v15 = *(v0 + 761);
  v30 = *(v0 + 634);
  v16 = RequestType.rawValue.getter();
  v18 = v17;

  LOBYTE(v16) = sub_230D33FDC(v16, v18, v14);

  if ((v16 & 1) != 0 || v15 >= 2)
  {
    sub_230E68950();
    *(v0 + 3224) = CFAbsoluteTimeGetCurrent();
    *(v0 + 140) = 0u;
    *(v0 + 156) = 0u;
    *(v0 + 172) = 0u;
    *(v0 + 188) = 0u;
    *(v0 + 204) = 0u;
    *(v0 + 220) = 0u;
    *(v0 + 236) = 0u;
    *(v0 + 252) = 0u;
    *(v0 + 268) = 0u;
    *(v0 + 284) = 0u;
    *(v0 + 300) = 0u;
    *(v0 + 316) = 0u;
    *(v0 + 332) = 0u;
    *(v0 + 348) = 0u;
    *(v0 + 364) = 0u;
    *(v0 + 380) = 0u;
    *(v0 + 396) = 0u;
    *(v0 + 412) = 0u;
    *(v0 + 428) = 0u;
    *(v0 + 444) = 0u;
    *(v0 + 460) = 0u;
    *(v0 + 476) = 0u;
    *(v0 + 492) = 0u;
    *(v0 + 508) = 0;
    *(v0 + 636) = 93;
    v21 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 140), (v0 + 636));
    *(v0 + 764) = v21;
    v22 = 0.0;
    if (!v21)
    {
      v23 = *(v0 + 188);
      v24 = __CFADD__(v23, *v1);
      v25 = v23 + *v1;
      if (v24)
      {
        __break(1u);
      }

      v22 = vcvtd_n_f64_u64(v25, 0x14uLL);
    }

    *(v0 + 3248) = v22;
    *(v0 + 3032) = 0;
    v19 = swift_task_alloc();
    *(v0 + 3256) = v19;
    *v19 = v0;
    v20 = sub_230DDECAC;
  }

  else
  {
LABEL_6:
    v19 = swift_task_alloc();
    *(v0 + 3232) = v19;
    *v19 = v0;
    v20 = sub_230DDEB54;
  }

  v19[1] = v20;
  v26 = *(v0 + 3168);
  v27 = *(v0 + 3048);
  v28 = *MEMORY[0x277D85DE8];

  return sub_230E56CCC(v0 + 1280, v27, v26, v0 + 2672);
}

uint64_t sub_230DDEB54()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 3232);
  v4 = *v1;
  *(*v1 + 3240) = v0;

  v5 = *(v2 + 3216);
  if (v0)
  {
    v6 = sub_230DDF83C;
  }

  else
  {
    v6 = sub_230DDF73C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230DDECAC()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 3256);
  v4 = *v1;
  *(*v1 + 3264) = v0;

  v5 = *(v2 + 3216);
  if (v0)
  {
    v6 = sub_230DDEF38;
  }

  else
  {
    v6 = sub_230DDEE04;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230DDEE04()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 3208);
  v2 = *(v0 + 3200);
  v3 = *(v0 + 3168);
  v4 = *(v0 + 3112);
  v5 = *(v0 + 3104);
  v6 = *(v0 + 3096);
  v7 = *(v0 + 3048);
  sub_230D3A494(48, *(v0 + 3248), *(v0 + 764) != 0, v0 + 2672, (v0 + 3032), *(v0 + 3224));
  (*(v5 + 8))(v4, v6);
  sub_230D8151C(v7);

  v8 = *(v0 + 3208);
  v9 = *(v0 + 3200);
  v10 = *(v0 + 3056);

  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230DDF0A4, v10, 0);
}

uint64_t sub_230DDEF38()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 3264);
  v2 = *(v0 + 3248);
  v3 = *(v0 + 3224);
  v4 = *(v0 + 3200);
  v15 = *(v0 + 3208);
  v5 = *(v0 + 3168);
  v6 = *(v0 + 3112);
  v7 = *(v0 + 3104);
  v8 = *(v0 + 3096);
  v9 = *(v0 + 3048);
  v10 = *(v0 + 764) != 0;
  *(v0 + 3032) = v1;
  swift_willThrow();
  v11 = v1;
  sub_230D3A494(48, v2, v10, v0 + 2672, (v0 + 3032), v3);
  MEMORY[0x23191E910](v1);
  (*(v7 + 8))(v6, v8);
  sub_230D8151C(v9);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  *(v0 + 3272) = *(v0 + 3264);
  v12 = *(v0 + 3056);
  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230DDF6A4, v12, 0);
}

uint64_t sub_230DDF0A4()
{
  v76 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1328);
  v2 = (v0 + 1280);
  *(v0 + 1440) = v1;
  v3 = *(v0 + 1344);
  *(v0 + 1456) = v3;
  v4 = *(v0 + 1360);
  *(v0 + 1472) = v4;
  *(v0 + 1481) = *(v0 + 1369);
  v5 = *(v0 + 1280);
  *(v0 + 1392) = v5;
  v6 = *(v0 + 1296);
  *(v0 + 1408) = v6;
  v7 = *(v0 + 1312);
  *(v0 + 1424) = v7;
  *(v0 + 1856) = v6;
  *(v0 + 1840) = v5;
  *(v0 + 1872) = v7;
  *(v0 + 1888) = v1;
  *(v0 + 1936) = *(v0 + 1376);
  *(v0 + 1920) = v4;
  *(v0 + 1904) = v3;
  v8 = *(v0 + 1496);
  if (v8 == 255)
  {
    v32 = *(v0 + 3168);
    v33 = *(v0 + 3048);
    sub_230E69540();

    MEMORY[0x23191DA00](*v33, v33[1]);
    sub_230D66764();
    swift_allocError();
    *v34 = 0xD000000000000016;
    *(v34 + 8) = 0x8000000230E83CF0;
    *(v34 + 16) = 3;
    swift_willThrow();

    v35 = *(v0 + 3112);

    v36 = *(v0 + 8);
    v37 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = *(v0 + 1360);
    *(v0 + 2008) = *(v0 + 1344);
    *(v0 + 2024) = v9;
    *(v0 + 2040) = *(v0 + 1376);
    v10 = *(v0 + 1296);
    *(v0 + 1944) = *v2;
    *(v0 + 1960) = v10;
    v11 = *(v0 + 1328);
    *(v0 + 1976) = *(v0 + 1312);
    *(v0 + 1992) = v11;
    if (v8)
    {
      v12 = *(v0 + 1312);
      *(v0 + 1552) = *(v0 + 1328);
      v13 = *(v0 + 1360);
      *(v0 + 1568) = *(v0 + 1344);
      *(v0 + 1584) = v13;
      *(v0 + 1593) = *(v0 + 1369);
      v14 = *(v0 + 1296);
      *(v0 + 1504) = *v2;
      *(v0 + 1520) = v14;
      v15 = *(v0 + 3064);
      v16 = *(v0 + 3048);
      *(v0 + 1536) = v12;
      sub_230D2D898(v0 + 1504, v0 + 1616);
      sub_230E68950();
      v17 = *v16;
      v18 = v16[1];
      *(v0 + 2496) = v16[2];
      *(v0 + 2480) = v18;
      *(v0 + 2464) = v17;
      v19 = v16[3];
      v20 = v16[4];
      v21 = v16[5];
      *(v0 + 2560) = *(v16 + 96);
      *(v0 + 2544) = v21;
      *(v0 + 2528) = v20;
      *(v0 + 2512) = v19;
      v22 = *(v0 + 2024);
      *(v0 + 2216) = *(v0 + 2008);
      *(v0 + 2232) = v22;
      *(v0 + 2248) = *(v0 + 2040);
      v23 = *(v0 + 1960);
      *(v0 + 2152) = *(v0 + 1944);
      *(v0 + 2168) = v23;
      v24 = *(v0 + 1992);
      *(v0 + 2184) = *(v0 + 1976);
      *(v0 + 2200) = v24;
      v25 = *v15;
      v26 = v15[1];
      *(v0 + 2824) = *(v15 + 4);
      *(v0 + 2792) = v25;
      *(v0 + 2808) = v26;
      v27 = swift_task_alloc();
      *(v0 + 3280) = v27;
      *v27 = v0;
      v27[1] = sub_230DDF9CC;
      v29 = *(v0 + 3056);
      v30 = *MEMORY[0x277D85DE8];

      return sub_230DE2498(v0 + 768, v0 + 2464, v28, (v0 + 2792));
    }

    v38 = (v0 + 896);
    v39 = MEMORY[0x277D84F90];
    sub_230E68950();
    sub_230E68950();
    sub_230E68950();
    sub_230D0FA64(v0 + 1392, v0 + 1728, &qword_27DB5CD10, &qword_230E7AE20);
    v40 = sub_230D0DE98(v39);
    v41 = *(v0 + 1920);
    *(v0 + 2112) = *(v0 + 1904);
    *(v0 + 2128) = v41;
    *(v0 + 2144) = *(v0 + 1936);
    v42 = *(v0 + 1856);
    *(v0 + 2048) = *(v0 + 1840);
    *(v0 + 2064) = v42;
    v43 = *(v0 + 1888);
    *(v0 + 2080) = *(v0 + 1872);
    *(v0 + 2096) = v43;
    sub_230E68950();
    sub_230D2D9F8(v0 + 1392, &qword_27DB5CD10, &qword_230E7AE20);
    v44 = *(v0 + 3048);
    v45 = *(v0 + 2064);
    *(v0 + 896) = *(v0 + 2048);
    *(v0 + 912) = v45;
    *(v0 + 992) = *(v0 + 2144);
    v46 = *(v0 + 2128);
    *(v0 + 960) = *(v0 + 2112);
    *(v0 + 976) = v46;
    v47 = *(v0 + 2096);
    *(v0 + 928) = *(v0 + 2080);
    *(v0 + 944) = v47;
    *(v0 + 1000) = v8;
    *(v0 + 1008) = v40;
    *(v0 + 1016) = 1;
    if (*(v44 + 3))
    {
      v48 = *(v0 + 3152);
      v49 = *(v0 + 3144);
      v50 = *(v0 + 3136);
      v51 = *(v0 + 3128);
      v52 = *(v0 + 3072);
      v53 = *(v0 + 3064);
      v54 = *(v0 + 912);
      *(v0 + 1152) = *v38;
      *(v0 + 1168) = v54;
      v55 = *(v0 + 944);
      *(v0 + 1184) = *(v0 + 928);
      *(v0 + 1200) = v55;
      *(v0 + 1257) = *(v0 + 1001);
      v56 = *(v0 + 976);
      *(v0 + 1248) = *(v0 + 992);
      v57 = *(v0 + 960);
      *(v0 + 1232) = v56;
      *(v0 + 1216) = v57;
      v58 = *v44;
      v59 = v44[2];
      *(v0 + 2584) = v44[1];
      *(v0 + 2600) = v59;
      *(v0 + 2568) = v58;
      v60 = v44[3];
      v61 = v44[4];
      v62 = v44[5];
      *(v0 + 2664) = *(v44 + 96);
      *(v0 + 2632) = v61;
      *(v0 + 2648) = v62;
      *(v0 + 2616) = v60;
      *(v0 + 2752) = v48;
      *(v0 + 2760) = v52;
      *(v0 + 2768) = v49;
      *(v0 + 2776) = v50;
      *(v0 + 2784) = v51;
      sub_230D1CDE0(v53, v0 + 2712);
      sub_230DC9814(v0 + 896, v0 + 16);
      v63 = swift_task_alloc();
      *(v0 + 3296) = v63;
      *v63 = v0;
      v63[1] = sub_230DDFDE0;
      v64 = *(v0 + 3056);
      v65 = *MEMORY[0x277D85DE8];

      return sub_230DE3418(v0 + 1152, (v0 + 2568), v0 + 2752);
    }

    v66 = *(v0 + 3168);

    v67 = *(v0 + 3040);
    v68 = *v38;
    v69 = *(v0 + 912);
    v70 = *(v0 + 944);
    v67[2] = *(v0 + 928);
    v67[3] = v70;
    *v67 = v68;
    v67[1] = v69;
    v71 = *(v0 + 960);
    v72 = *(v0 + 976);
    v73 = *(v0 + 992);
    *(v67 + 105) = *(v0 + 1001);
    v67[5] = v72;
    v67[6] = v73;
    v67[4] = v71;
    v74 = *(v0 + 3112);

    v36 = *(v0 + 8);
    v75 = *MEMORY[0x277D85DE8];
  }

  return v36();
}

uint64_t sub_230DDF6A4()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[396];

  v2 = v0[409];
  v3 = v0[389];

  v4 = v0[1];
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_230DDF73C()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[401];
  v2 = v0[400];
  v3 = v0[396];
  v4 = v0[381];
  (*(v0[388] + 8))(v0[389], v0[387]);
  sub_230D8151C(v4);

  v5 = v0[401];
  v6 = v0[400];
  v7 = v0[382];

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230DDF0A4, v7, 0);
}

uint64_t sub_230DDF83C()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[401];
  v2 = v0[400];
  v3 = v0[396];
  v4 = v0[381];
  (*(v0[388] + 8))(v0[389], v0[387]);
  sub_230D8151C(v4);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v0[409] = v0[405];
  v5 = v0[382];
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230DDF6A4, v5, 0);
}

uint64_t sub_230DDF934()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_230D1CE3C(v0[383]);
  v1 = v0[397];
  v2 = v0[389];

  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_230DDF9CC()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 3280);
  v11 = *v1;
  *(*v1 + 3288) = v0;

  if (v0)
  {
    v4 = *(v2 + 3056);
    v5 = *MEMORY[0x277D85DE8];
    v6 = sub_230DE00B4;
  }

  else
  {
    v7 = *(v2 + 3056);
    sub_230D2D9F8(v2 + 1392, &qword_27DB5CD10, &qword_230E7AE20);
    v8 = *MEMORY[0x277D85DE8];
    v6 = sub_230DDFB50;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v6, v4, 0);
}

uint64_t sub_230DDFB50()
{
  v43 = *MEMORY[0x277D85DE8];
  v1 = (v0 + 896);
  sub_230D2D9F8(v0 + 1392, &qword_27DB5CD10, &qword_230E7AE20);
  v2 = *(v0 + 848);
  *(v0 + 2112) = *(v0 + 832);
  v3 = *(v0 + 768);
  v4 = *(v0 + 784);
  *(v0 + 2048) = v3;
  *(v0 + 2128) = v2;
  *(v0 + 2064) = v4;
  v6 = *(v0 + 800);
  v5 = *(v0 + 816);
  *(v0 + 2096) = v5;
  *(v0 + 2144) = *(v0 + 864);
  *(v0 + 2080) = v6;
  v7 = *(v0 + 872);
  v8 = *(v0 + 880);
  v9 = *(v0 + 888);
  v10 = *(v0 + 3048);
  v11 = *(v0 + 2064);
  *(v0 + 896) = v3;
  *(v0 + 912) = v11;
  *(v0 + 928) = *(v0 + 2080);
  *(v0 + 944) = v5;
  *(v0 + 992) = *(v0 + 2144);
  v12 = *(v0 + 2128);
  *(v0 + 960) = *(v0 + 2112);
  *(v0 + 976) = v12;
  *(v0 + 1000) = v7;
  *(v0 + 1008) = v8;
  *(v0 + 1016) = v9;
  if (*(v10 + 3))
  {
    v13 = *(v0 + 3152);
    v14 = *(v0 + 3144);
    v15 = *(v0 + 3136);
    v16 = *(v0 + 3128);
    v17 = *(v0 + 3072);
    v18 = *(v0 + 3064);
    v19 = *(v0 + 912);
    *(v0 + 1152) = *v1;
    *(v0 + 1168) = v19;
    v20 = *(v0 + 944);
    *(v0 + 1184) = *(v0 + 928);
    *(v0 + 1200) = v20;
    *(v0 + 1257) = *(v0 + 1001);
    v21 = *(v0 + 976);
    *(v0 + 1248) = *(v0 + 992);
    v22 = *(v0 + 960);
    *(v0 + 1232) = v21;
    *(v0 + 1216) = v22;
    v23 = *v10;
    v24 = v10[2];
    *(v0 + 2584) = v10[1];
    *(v0 + 2600) = v24;
    *(v0 + 2568) = v23;
    v25 = v10[3];
    v26 = v10[4];
    v27 = v10[5];
    *(v0 + 2664) = *(v10 + 96);
    *(v0 + 2632) = v26;
    *(v0 + 2648) = v27;
    *(v0 + 2616) = v25;
    *(v0 + 2752) = v13;
    *(v0 + 2760) = v17;
    *(v0 + 2768) = v14;
    *(v0 + 2776) = v15;
    *(v0 + 2784) = v16;
    sub_230D1CDE0(v18, v0 + 2712);
    sub_230DC9814(v0 + 896, v0 + 16);
    v28 = swift_task_alloc();
    *(v0 + 3296) = v28;
    *v28 = v0;
    v28[1] = sub_230DDFDE0;
    v29 = *(v0 + 3056);
    v30 = *MEMORY[0x277D85DE8];

    return sub_230DE3418(v0 + 1152, (v0 + 2568), v0 + 2752);
  }

  else
  {
    v32 = *(v0 + 3168);

    v33 = *(v0 + 3040);
    v34 = *v1;
    v35 = *(v0 + 912);
    v36 = *(v0 + 944);
    v33[2] = *(v0 + 928);
    v33[3] = v36;
    *v33 = v34;
    v33[1] = v35;
    v37 = *(v0 + 960);
    v38 = *(v0 + 976);
    v39 = *(v0 + 992);
    *(v33 + 105) = *(v0 + 1001);
    v33[5] = v38;
    v33[6] = v39;
    v33[4] = v37;
    v40 = *(v0 + 3112);

    v41 = *(v0 + 8);
    v42 = *MEMORY[0x277D85DE8];

    return v41();
  }
}

uint64_t sub_230DDFDE0()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 3296);
  v3 = *(*v0 + 3056);
  v9 = *v0;

  v4 = *(v1 + 2776);
  v5 = *(v1 + 2784);
  sub_230D666B4(*(v1 + 2752), *(v1 + 2760), *(v1 + 2768));
  *(v1 + 1088) = *(v1 + 1216);
  *(v1 + 1104) = *(v1 + 1232);
  *(v1 + 1120) = *(v1 + 1248);
  *(v1 + 1129) = *(v1 + 1257);
  *(v1 + 1024) = *(v1 + 1152);
  *(v1 + 1040) = *(v1 + 1168);
  *(v1 + 1056) = *(v1 + 1184);
  *(v1 + 1072) = *(v1 + 1200);
  sub_230DC984C(v1 + 1024);
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230DDFFEC, v3, 0);
}

uint64_t sub_230DDFFEC()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 3168);

  v2 = *(v0 + 3040);
  v3 = *(v0 + 896);
  v4 = *(v0 + 912);
  v5 = *(v0 + 944);
  v2[2] = *(v0 + 928);
  v2[3] = v5;
  *v2 = v3;
  v2[1] = v4;
  v6 = *(v0 + 960);
  v7 = *(v0 + 976);
  v8 = *(v0 + 992);
  *(v2 + 105) = *(v0 + 1001);
  v2[5] = v7;
  v2[6] = v8;
  v2[4] = v6;
  v9 = *(v0 + 3112);

  v10 = *(v0 + 8);
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

uint64_t sub_230DE00B4()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[396];

  sub_230D2D9F8((v0 + 174), &qword_27DB5CD10, &qword_230E7AE20);
  sub_230D2D9F8((v0 + 174), &qword_27DB5CD10, &qword_230E7AE20);
  v2 = v0[411];
  v3 = v0[389];

  v4 = v0[1];
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_230DE0184(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(v4 + 1936) = *(a2 + 16);
  v5 = a3[1];
  *(v4 + 1840) = *a3;
  v6 = *a3;
  *(v4 + 1856) = v5;
  *(v4 + 1904) = a1;
  v7 = *(a2 + 8);
  *(v4 + 1920) = *a2;
  *(v4 + 1912) = v3;
  *(v4 + 1928) = v7;
  *(v4 + 141) = *(a2 + 96);
  *(v4 + 1872) = *(a3 + 4);
  *(v4 + 1952) = v6;
  *(v4 + 1968) = a3[1];
  *(v4 + 1984) = *(a3 + 4);
  return MEMORY[0x2822009F8](sub_230DE01F0, v3, 0);
}

uint64_t sub_230DE01F0()
{
  v1 = *(v0 + 1944);
  if (*(v0 + 141) != 1 || v1 == 0)
  {
    v3 = *(v0 + 1904);
    sub_230E68950();
    sub_230D65C88((v0 + 528));
    v4 = *(v0 + 528);
    v5 = *(v0 + 544);
    v6 = *(v0 + 576);
    v3[2] = *(v0 + 560);
    v3[3] = v6;
    *v3 = v4;
    v3[1] = v5;
    v7 = *(v0 + 592);
    v8 = *(v0 + 608);
    v9 = *(v0 + 624);
    *(v3 + 105) = *(v0 + 633);
    v3[5] = v8;
    v3[6] = v9;
    v3[4] = v7;
    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 1936);
    v13 = *(v0 + 1928);
    v14 = *(v0 + 1920);

    MEMORY[0x23191DA00](v14, v13);
    MEMORY[0x23191DA00](58, 0xE100000000000000);
    MEMORY[0x23191DA00](v12, v1);

    *(v0 + 1992) = 0x776F6C666B726F77;
    *(v0 + 2000) = 0xEF3A65686361632DLL;
    *(v0 + 139) = 0;
    v15 = *(v0 + 1856);
    *(v0 + 1520) = *(v0 + 1840);
    *(v0 + 1536) = v15;
    *(v0 + 1552) = *(v0 + 1872);
    v16 = swift_task_alloc();
    *(v0 + 2008) = v16;
    *v16 = v0;
    v16[1] = sub_230DE03EC;
    v18 = *(v0 + 1912);

    return ServicesIntelligenceProvider.getKVDatabaseClient(domain:dataClass:requestContext:)((v0 + 139), v17, v0 + 1520);
  }
}

uint64_t sub_230DE03EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2008);
  v6 = *v2;
  v4[252] = a1;
  v4[253] = v1;

  if (v1)
  {
    v7 = v4[250];
    v8 = v4[239];

    v9 = sub_230DE2354;
    v10 = v8;
  }

  else
  {
    v9 = sub_230DE052C;
    v10 = a1;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

uint64_t sub_230DE052C()
{
  v1 = v0[250];
  v2 = v0[249];
  v0[254] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6A8, &unk_230E6B3C0);
  v3 = swift_allocObject();
  v0[255] = v3;
  *(v3 + 16) = xmmword_230E6B3B0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = sub_230D0F12C(MEMORY[0x277D84F90]);
  v0[256] = v4;
  v5 = swift_task_alloc();
  v0[257] = v5;
  *v5 = v0;
  v5[1] = sub_230DE0644;
  v6 = v0[252];

  return sub_230DE94B8(v3, v4, (v0 + 230), v6);
}

uint64_t sub_230DE0644(uint64_t a1)
{
  v2 = *(*v1 + 2056);
  v3 = *(*v1 + 2048);
  v4 = *(*v1 + 2040);
  v5 = *(*v1 + 2016);
  v7 = *v1;
  *(*v1 + 2064) = a1;

  return MEMORY[0x2822009F8](sub_230DE079C, v5, 0);
}

uint64_t sub_230DE079C()
{
  if (*(v0[258] + 16))
  {
    v1 = sub_230DA41A0(v0[249], v0[250]);
    v2 = v0[239];
    if (v3)
    {
      v4 = (*(v0[258] + 56) + 16 * v1);
      v5 = *v4;
      v0[259] = *v4;
      v6 = v4[1];
      v0[260] = v6;
      sub_230D0DD0C(v5, v6);

      v7 = sub_230DE09A4;
    }

    else
    {
      v12 = v0[258];

      v7 = sub_230DEA6EC;
    }

    v10 = v7;
    v11 = v2;
  }

  else
  {
    v8 = v0[239];
    v9 = v0[258];

    v10 = sub_230DE0884;
    v11 = v8;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_230DE0884()
{
  v1 = *(v0 + 2016);
  v2 = *(v0 + 2000);
  v3 = *(v0 + 1992);
  v4 = *(v0 + 1904);
  sub_230E69540();
  MEMORY[0x23191DA00](0xD00000000000004CLL, 0x8000000230E839F0);
  MEMORY[0x23191DA00](v3, v2);

  sub_230E68950();

  sub_230D65C88((v0 + 16));
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  v7 = *(v0 + 64);
  v4[2] = *(v0 + 48);
  v4[3] = v7;
  *v4 = v5;
  v4[1] = v6;
  v8 = *(v0 + 80);
  v9 = *(v0 + 96);
  v10 = *(v0 + 112);
  *(v4 + 105) = *(v0 + 121);
  v4[5] = v9;
  v4[6] = v10;
  v4[4] = v8;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_230DE09A4()
{
  v1 = *(v0 + 2080);
  v2 = *(v0 + 2072);
  v3 = *(v0 + 2024);
  v4 = sub_230E686C0();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_230E686B0();
  sub_230DE9DE4();
  sub_230E686A0();
  if (v3)
  {
    v7 = *(v0 + 2032);
    v8 = *(v0 + 2016);
    v9 = *(v0 + 2000);
    v10 = *(v0 + 1992);
    MEMORY[0x23191E910](v3);

    sub_230E68950();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_230E6B3B0;
    *(v11 + 32) = v10;
    *(v11 + 40) = v9;
    *(v0 + 1344) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
    *(v0 + 1352) = sub_230DE9ED4(&qword_27DB5ABF8);
    *(v0 + 1320) = v11;
    v20 = sub_230DE1C80;
    v21 = v8;
LABEL_8:

    return MEMORY[0x2822009F8](v20, v21, 0);
  }

  v12 = *(v0 + 1280);
  *(v0 + 2088) = v12;
  v13 = *(v0 + 1288);
  *(v0 + 2096) = v13;
  v14 = *(v0 + 1296);
  v15 = *(v0 + 1304);
  *(v0 + 2104) = v15;
  if (sub_230DE99C4(v12, v13) == v14 && v16 == v15)
  {
  }

  else
  {
    v17 = sub_230E698C0();

    if ((v17 & 1) == 0)
    {
      v42 = *(v0 + 2032);
      v43 = *(v0 + 2016);
      v44 = *(v0 + 2000);
      v45 = *(v0 + 1992);
      sub_230E68950();
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_230E6B3B0;
      *(v46 + 32) = v45;
      *(v46 + 40) = v44;
      *(v0 + 1464) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
      *(v0 + 1472) = sub_230DE9ED4(&qword_27DB5ABF8);
      *(v0 + 1440) = v46;
      v20 = sub_230DE1590;
      v21 = v43;
      goto LABEL_8;
    }
  }

  v18 = *(v4 + 48);
  v19 = *(v4 + 52);
  swift_allocObject();
  sub_230E686B0();
  sub_230DE9E38();
  sub_230E686A0();
  v22 = *(v0 + 2072);
  v48 = *(v0 + 2080);
  v49 = *(v0 + 2016);
  v23 = *(v0 + 2000);
  v24 = *(v0 + 1904);

  v25 = *(v0 + 736);
  *(v0 + 208) = *(v0 + 720);
  *(v0 + 224) = v25;
  *(v0 + 240) = *(v0 + 752);
  *(v0 + 249) = *(v0 + 761);
  v26 = *(v0 + 672);
  *(v0 + 144) = *(v0 + 656);
  *(v0 + 160) = v26;
  v27 = *(v0 + 704);
  *(v0 + 176) = *(v0 + 688);
  *(v0 + 192) = v27;
  sub_230E68950();
  sub_230D0F4A8(v22, v48);

  sub_230D0F4A8(v12, v13);

  v28 = *(v0 + 256);
  sub_230D2D898(v0 + 144, v0 + 1168);

  sub_230DC984C(v0 + 144);
  v29 = *(v0 + 224);
  *(v0 + 336) = *(v0 + 208);
  *(v0 + 352) = v29;
  *(v0 + 361) = *(v0 + 233);
  v30 = *(v0 + 160);
  *(v0 + 272) = *(v0 + 144);
  *(v0 + 288) = v30;
  v31 = *(v0 + 192);
  *(v0 + 304) = *(v0 + 176);
  *(v0 + 320) = v31;
  *(v0 + 384) = v28;
  *(v0 + 392) = 0;
  nullsub_1(v0 + 272, v32, v33, v34);
  v35 = *(v0 + 272);
  v36 = *(v0 + 288);
  v37 = *(v0 + 320);
  v24[2] = *(v0 + 304);
  v24[3] = v37;
  *v24 = v35;
  v24[1] = v36;
  v38 = *(v0 + 336);
  v39 = *(v0 + 352);
  v40 = *(v0 + 368);
  *(v24 + 105) = *(v0 + 377);
  v24[5] = v39;
  v24[6] = v40;
  v24[4] = v38;
  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_230DE0EA0()
{
  if (*(v0 + 1856))
  {
    v1 = *(v0 + 1984);
    v2 = *(v0 + 1976);
    v3 = *(v0 + 1968);
    v4 = *(v0 + 1952);
    v5 = *(v0 + 1960);
    *(v0 + 2128) = v1;
    *(v0 + 2120) = v3;
    v6 = *(v0 + 2016);
    *(v0 + 1680) = v4;
    *(v0 + 1688) = v5;
    *(v0 + 1696) = v3;
    *(v0 + 1704) = v2 & 1;
    *(v0 + 1705) = BYTE1(v2);
    *(v0 + 1712) = v1;
    v7 = swift_task_alloc();
    *(v0 + 2136) = v7;
    v7[2] = v0 + 1600;
    v7[3] = v6;
    v7[4] = v0 + 1680;
    sub_230D0FA64(v0 + 1840, v0 + 1720, &qword_27DB5B8B8, &qword_230E7ADD0);
    v8 = swift_task_alloc();
    *(v0 + 2144) = v8;
    *v8 = v0;
    v8[1] = sub_230DE12DC;
    v9 = *(v0 + 2016);

    return sub_230D17BA0(7, v0 + 1680, &unk_230E7ADE0, v7);
  }

  else
  {
    *(v0 + 140) = 7;
    v11 = swift_task_alloc();
    *(v0 + 2112) = v11;
    *v11 = v0;
    v11[1] = sub_230DE1084;

    return static RequestContext.from(_:correlationID:)(v0 + 1640, (v0 + 140), 0, 0);
  }
}

uint64_t sub_230DE1084()
{
  v1 = *(*v0 + 2112);
  v2 = *(*v0 + 2016);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230DE1194, v2, 0);
}

uint64_t sub_230DE1194()
{
  v1 = *(v0 + 1640);
  v2 = *(v0 + 1648);
  v3 = *(v0 + 1656);
  v4 = *(v0 + 1664);
  v5 = *(v0 + 1665);
  v6 = *(v0 + 1672);
  *(v0 + 2128) = v6;
  *(v0 + 2120) = v3;
  v7 = *(v0 + 2016);
  *(v0 + 1680) = v1;
  *(v0 + 1688) = v2;
  *(v0 + 1696) = v3;
  *(v0 + 1704) = v4;
  *(v0 + 1705) = v5;
  *(v0 + 1712) = v6;
  v8 = swift_task_alloc();
  *(v0 + 2136) = v8;
  v8[2] = v0 + 1600;
  v8[3] = v7;
  v8[4] = v0 + 1680;
  sub_230D0FA64(v0 + 1840, v0 + 1720, &qword_27DB5B8B8, &qword_230E7ADD0);
  v9 = swift_task_alloc();
  *(v0 + 2144) = v9;
  *v9 = v0;
  v9[1] = sub_230DE12DC;
  v10 = *(v0 + 2016);

  return sub_230D17BA0(7, v0 + 1680, &unk_230E7ADE0, v8);
}

uint64_t sub_230DE12DC()
{
  v1 = *(*v0 + 2144);
  v2 = *(*v0 + 2136);
  v3 = *(*v0 + 2128);
  v4 = *(*v0 + 2120);
  v5 = *(*v0 + 2016);
  v7 = *v0;

  return MEMORY[0x2822009F8](sub_230DE1448, v5, 0);
}

uint64_t sub_230DE1448()
{
  if (v0[203])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 200);
  }

  v1 = v0[239];

  return MEMORY[0x2822009F8](sub_230DE14B8, v1, 0);
}

uint64_t sub_230DE14B8()
{
  v1 = *(v0 + 2104);
  v2 = *(v0 + 2096);
  v3 = *(v0 + 2088);
  v4 = *(v0 + 2016);
  v5 = *(v0 + 1904);
  sub_230D0F4A8(*(v0 + 2072), *(v0 + 2080));
  sub_230D0F4A8(v3, v2);

  sub_230D65C88((v0 + 400));
  v6 = *(v0 + 400);
  v7 = *(v0 + 416);
  v8 = *(v0 + 448);
  v5[2] = *(v0 + 432);
  v5[3] = v8;
  *v5 = v6;
  v5[1] = v7;
  v9 = *(v0 + 464);
  v10 = *(v0 + 480);
  v11 = *(v0 + 496);
  *(v5 + 105) = *(v0 + 505);
  v5[5] = v10;
  v5[6] = v11;
  v5[4] = v9;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_230DE1590()
{
  if (*(v0 + 1856))
  {
    v1 = *(v0 + 1984);
    v2 = *(v0 + 1976);
    v3 = *(v0 + 1968);
    v4 = *(v0 + 1952);
    v5 = *(v0 + 1960);
    *(v0 + 2168) = v1;
    *(v0 + 2160) = v3;
    v6 = *(v0 + 2016);
    *(v0 + 1760) = v4;
    *(v0 + 1768) = v5;
    *(v0 + 1776) = v3;
    *(v0 + 1784) = v2 & 1;
    *(v0 + 1785) = BYTE1(v2);
    *(v0 + 1792) = v1;
    v7 = swift_task_alloc();
    *(v0 + 2176) = v7;
    v7[2] = v0 + 1440;
    v7[3] = v6;
    v7[4] = v0 + 1760;
    sub_230D0FA64(v0 + 1840, v0 + 1560, &qword_27DB5B8B8, &qword_230E7ADD0);
    v8 = swift_task_alloc();
    *(v0 + 2184) = v8;
    *v8 = v0;
    v8[1] = sub_230DE19CC;
    v9 = *(v0 + 2016);

    return sub_230D17BA0(7, v0 + 1760, &unk_230E7ADD8, v7);
  }

  else
  {
    *(v0 + 138) = 7;
    v11 = swift_task_alloc();
    *(v0 + 2152) = v11;
    *v11 = v0;
    v11[1] = sub_230DE1774;

    return static RequestContext.from(_:correlationID:)(v0 + 1480, (v0 + 138), 0, 0);
  }
}

uint64_t sub_230DE1774()
{
  v1 = *(*v0 + 2152);
  v2 = *(*v0 + 2016);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230DE1884, v2, 0);
}

uint64_t sub_230DE1884()
{
  v1 = *(v0 + 1480);
  v2 = *(v0 + 1488);
  v3 = *(v0 + 1496);
  v4 = *(v0 + 1504);
  v5 = *(v0 + 1505);
  v6 = *(v0 + 1512);
  *(v0 + 2168) = v6;
  *(v0 + 2160) = v3;
  v7 = *(v0 + 2016);
  *(v0 + 1760) = v1;
  *(v0 + 1768) = v2;
  *(v0 + 1776) = v3;
  *(v0 + 1784) = v4;
  *(v0 + 1785) = v5;
  *(v0 + 1792) = v6;
  v8 = swift_task_alloc();
  *(v0 + 2176) = v8;
  v8[2] = v0 + 1440;
  v8[3] = v7;
  v8[4] = v0 + 1760;
  sub_230D0FA64(v0 + 1840, v0 + 1560, &qword_27DB5B8B8, &qword_230E7ADD0);
  v9 = swift_task_alloc();
  *(v0 + 2184) = v9;
  *v9 = v0;
  v9[1] = sub_230DE19CC;
  v10 = *(v0 + 2016);

  return sub_230D17BA0(7, v0 + 1760, &unk_230E7ADD8, v8);
}

uint64_t sub_230DE19CC()
{
  v1 = *(*v0 + 2184);
  v2 = *(*v0 + 2176);
  v3 = *(*v0 + 2168);
  v4 = *(*v0 + 2160);
  v5 = *(*v0 + 2016);
  v7 = *v0;

  return MEMORY[0x2822009F8](sub_230DE1B38, v5, 0);
}

uint64_t sub_230DE1B38()
{
  if (v0[183])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 180);
  }

  v1 = v0[239];

  return MEMORY[0x2822009F8](sub_230DE1BA8, v1, 0);
}

uint64_t sub_230DE1BA8()
{
  v1 = *(v0 + 2104);
  v2 = *(v0 + 2096);
  v3 = *(v0 + 2088);
  v4 = *(v0 + 2016);
  v5 = *(v0 + 1904);
  sub_230D0F4A8(*(v0 + 2072), *(v0 + 2080));
  sub_230D0F4A8(v3, v2);

  sub_230D65C88((v0 + 784));
  v6 = *(v0 + 784);
  v7 = *(v0 + 800);
  v8 = *(v0 + 832);
  v5[2] = *(v0 + 816);
  v5[3] = v8;
  *v5 = v6;
  v5[1] = v7;
  v9 = *(v0 + 848);
  v10 = *(v0 + 864);
  v11 = *(v0 + 880);
  *(v5 + 105) = *(v0 + 889);
  v5[5] = v10;
  v5[6] = v11;
  v5[4] = v9;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_230DE1C80()
{
  if (*(v0 + 1856))
  {
    v1 = *(v0 + 1984);
    v2 = *(v0 + 1976);
    v3 = *(v0 + 1968);
    v4 = *(v0 + 1952);
    v5 = *(v0 + 1960);
    *(v0 + 2208) = v1;
    *(v0 + 2200) = v3;
    v6 = *(v0 + 2016);
    *(v0 + 1800) = v4;
    *(v0 + 1808) = v5;
    *(v0 + 1816) = v3;
    *(v0 + 1824) = v2 & 1;
    *(v0 + 1825) = BYTE1(v2);
    *(v0 + 1832) = v1;
    v7 = swift_task_alloc();
    *(v0 + 2216) = v7;
    v7[2] = v0 + 1320;
    v7[3] = v6;
    v7[4] = v0 + 1800;
    sub_230D0FA64(v0 + 1840, v0 + 1400, &qword_27DB5B8B8, &qword_230E7ADD0);
    v8 = swift_task_alloc();
    *(v0 + 2224) = v8;
    *v8 = v0;
    v8[1] = sub_230DE20BC;
    v9 = *(v0 + 2016);

    return sub_230D17BA0(7, v0 + 1800, &unk_230E6C100, v7);
  }

  else
  {
    *(v0 + 137) = 7;
    v11 = swift_task_alloc();
    *(v0 + 2192) = v11;
    *v11 = v0;
    v11[1] = sub_230DE1E64;

    return static RequestContext.from(_:correlationID:)(v0 + 1360, (v0 + 137), 0, 0);
  }
}

uint64_t sub_230DE1E64()
{
  v1 = *(*v0 + 2192);
  v2 = *(*v0 + 2016);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230DE1F74, v2, 0);
}

uint64_t sub_230DE1F74()
{
  v1 = *(v0 + 1360);
  v2 = *(v0 + 1368);
  v3 = *(v0 + 1376);
  v4 = *(v0 + 1384);
  v5 = *(v0 + 1385);
  v6 = *(v0 + 1392);
  *(v0 + 2208) = v6;
  *(v0 + 2200) = v3;
  v7 = *(v0 + 2016);
  *(v0 + 1800) = v1;
  *(v0 + 1808) = v2;
  *(v0 + 1816) = v3;
  *(v0 + 1824) = v4;
  *(v0 + 1825) = v5;
  *(v0 + 1832) = v6;
  v8 = swift_task_alloc();
  *(v0 + 2216) = v8;
  v8[2] = v0 + 1320;
  v8[3] = v7;
  v8[4] = v0 + 1800;
  sub_230D0FA64(v0 + 1840, v0 + 1400, &qword_27DB5B8B8, &qword_230E7ADD0);
  v9 = swift_task_alloc();
  *(v0 + 2224) = v9;
  *v9 = v0;
  v9[1] = sub_230DE20BC;
  v10 = *(v0 + 2016);

  return sub_230D17BA0(7, v0 + 1800, &unk_230E6C100, v8);
}

uint64_t sub_230DE20BC()
{
  v1 = *(*v0 + 2224);
  v2 = *(*v0 + 2216);
  v3 = *(*v0 + 2208);
  v4 = *(*v0 + 2200);
  v5 = *(*v0 + 2016);
  v7 = *v0;

  return MEMORY[0x2822009F8](sub_230DE2228, v5, 0);
}

uint64_t sub_230DE2228()
{
  if (v0[168])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 165);
  }

  v1 = v0[239];

  return MEMORY[0x2822009F8](sub_230DE2298, v1, 0);
}

uint64_t sub_230DE2298()
{
  v1 = *(v0 + 2016);
  v2 = *(v0 + 1904);
  sub_230D0F4A8(*(v0 + 2072), *(v0 + 2080));

  sub_230D65C88((v0 + 1040));
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1056);
  v5 = *(v0 + 1088);
  v2[2] = *(v0 + 1072);
  v2[3] = v5;
  *v2 = v3;
  v2[1] = v4;
  v6 = *(v0 + 1104);
  v7 = *(v0 + 1120);
  v8 = *(v0 + 1136);
  *(v2 + 105) = *(v0 + 1145);
  v2[5] = v7;
  v2[6] = v8;
  v2[4] = v6;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_230DE2354()
{
  v1 = *(v0 + 2024);
  v2 = *(v0 + 1904);
  sub_230E69540();
  *(v0 + 1880) = 0;
  *(v0 + 1888) = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD000000000000045, 0x8000000230E839A0);
  *(v0 + 1896) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  v3 = *(v0 + 1880);
  v4 = *(v0 + 1888);
  sub_230E68950();
  MEMORY[0x23191E910](v1);

  sub_230D65C88((v0 + 912));
  v5 = *(v0 + 912);
  v6 = *(v0 + 928);
  v7 = *(v0 + 960);
  v2[2] = *(v0 + 944);
  v2[3] = v7;
  *v2 = v5;
  v2[1] = v6;
  v8 = *(v0 + 976);
  v9 = *(v0 + 992);
  v10 = *(v0 + 1008);
  *(v2 + 105) = *(v0 + 1017);
  v2[5] = v9;
  v2[6] = v10;
  v2[4] = v8;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_230DE2498(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  *(v5 + 1208) = v4;
  *(v5 + 1200) = a1;
  v8 = sub_230E68C30();
  *(v5 + 1216) = v8;
  v9 = *(v8 - 8);
  *(v5 + 1224) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 1232) = swift_task_alloc();
  *(v5 + 1240) = swift_task_alloc();
  v11 = *(a2 + 80);
  *(v5 + 736) = *(a2 + 64);
  *(v5 + 752) = v11;
  *(v5 + 768) = *(a2 + 96);
  v12 = *(a2 + 16);
  *(v5 + 672) = *a2;
  *(v5 + 688) = v12;
  v13 = *(a2 + 48);
  *(v5 + 704) = *(a2 + 32);
  *(v5 + 720) = v13;
  v14 = *a4;
  v15 = a4[1];
  *(v5 + 1016) = *(a4 + 4);
  *(v5 + 984) = v14;
  *(v5 + 1000) = v15;

  return MEMORY[0x2822009F8](sub_230DE25B4, v4, 0);
}

uint64_t sub_230DE25B4()
{
  v1 = *(v0 + 1208);
  sub_230D1CDE0(v0 + 984, v0 + 1024);
  sub_230D1CDE0(v0 + 984, v0 + 1064);
  sub_230DC7630(v0 + 672, v0 + 776);

  v2 = swift_task_alloc();
  *(v0 + 1248) = v2;
  *v2 = v0;
  v2[1] = sub_230DE26A4;
  v3 = *(v0 + 1208);

  return (sub_230D7EC1C)(34, v0 + 984);
}

uint64_t sub_230DE26A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1248);
  v8 = *v2;
  v3[157] = a1;
  v3[158] = v1;

  if (v1)
  {
    v5 = v3[151];
    sub_230D1CE3C((v3 + 123));
    v6 = sub_230DE2B2C;
  }

  else
  {
    v5 = v3[151];
    sub_230D1CE3C((v3 + 123));
    v6 = sub_230DE27D4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230DE27D4()
{
  v1 = *(v0 + 1264);
  sub_230D1CE3C(v0 + 984);
  v27 = *(v0 + 736);
  v28 = *(v0 + 752);
  v29[0] = *(v0 + 768);
  v24 = *(v0 + 672);
  v25 = *(v0 + 688);
  v26 = *(v0 + 720);
  *&v29[8] = *(v0 + 984);
  *&v29[24] = *(v0 + 1000);
  *&v29[40] = *(v0 + 1016);
  *(v0 + 48) = *(v0 + 704);
  *(v0 + 64) = v26;
  *(v0 + 16) = v24;
  *(v0 + 32) = v25;
  *(v0 + 80) = v27;
  *(v0 + 96) = v28;
  *(v0 + 112) = *v29;
  *(v0 + 128) = *&v29[16];
  *(v0 + 144) = *&v29[32];
  sub_230D1CDE0(v0 + 984, v0 + 1104);
  sub_230DC7630(v0 + 672, v0 + 880);
  sub_230E68950();
  v2 = sub_230E686F0();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_230E686E0();
  v5 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v5;
  *(v0 + 288) = *(v0 + 144);
  v6 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v6;
  v7 = *(v0 + 96);
  *(v0 + 224) = *(v0 + 80);
  *(v0 + 240) = v7;
  v8 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v8;
  sub_230DEA104();
  v9 = sub_230E686D0();
  *(v0 + 1272) = v9;
  *(v0 + 1280) = v10;
  v11 = *(v0 + 1256);
  if (v1)
  {
    MEMORY[0x23191E910](v1);

    sub_230DC8018(v0 + 16);
    sub_230E68950();
    sub_230D66764();
    swift_allocError();
    *v12 = 0xD000000000000028;
    *(v12 + 8) = 0x8000000230E841E0;
    *(v12 + 16) = 2;
    swift_willThrow();

    v13 = *(v0 + 1240);
    v14 = *(v0 + 1232);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 1240);
    v18 = v9;
    v19 = v10;

    sub_230DC8018(v0 + 16);
    sub_230E68C50();

    sub_230D0DD0C(v18, v19);
    MEMORY[0x23191D510](v18, v19);
    *(v0 + 1288) = sub_230E68C40();
    sub_230E68950();
    v20 = *(MEMORY[0x277D29DF8] + 4);
    v23 = (*MEMORY[0x277D29DF8] + MEMORY[0x277D29DF8]);
    v21 = swift_task_alloc();
    *(v0 + 1296) = v21;
    *v21 = v0;
    v21[1] = sub_230DE2BA4;
    v22 = *(v0 + 1232);

    return v23(v22);
  }
}

uint64_t sub_230DE2B2C()
{
  sub_230D1CE3C((v0 + 123));
  v1 = v0[158];
  v2 = v0[155];
  v3 = v0[154];

  v4 = v0[1];

  return v4();
}

uint64_t sub_230DE2BA4()
{
  v2 = *v1;
  v3 = *(*v1 + 1296);
  v4 = *v1;
  *(*v1 + 1304) = v0;

  v5 = *(v2 + 1208);
  if (v0)
  {
    v6 = sub_230DE3224;
  }

  else
  {
    v6 = sub_230DE2CD0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230DE2CD0()
{
  v1 = *(v0 + 1232);
  v2 = sub_230E68C10();
  if (v3 >> 60 == 15)
  {
    v4 = *(v0 + 1256);
    v5 = *(v0 + 1232);
    v6 = *(v0 + 1224);
    v7 = *(v0 + 1216);
    sub_230E68950();
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    sub_230E69540();
    MEMORY[0x23191DA00](0xD000000000000047, 0x8000000230E823C0);
    v8 = sub_230E68C80();
    MEMORY[0x23191DA00](v8);

    sub_230D66764();
    v9 = swift_allocError();
    *v10 = v49;
    *(v10 + 16) = 4;
    swift_willThrow();
    (*(v6 + 8))(v5, v7);
LABEL_5:
    v21 = *(v0 + 1288);
    v22 = *(v0 + 1280);
    v23 = *(v0 + 1272);
    v24 = *(v0 + 1256);
    sub_230E69540();
    *(v0 + 1168) = 0;
    *(v0 + 1176) = 0xE000000000000000;
    MEMORY[0x23191DA00](0xD000000000000047, 0x8000000230E84260);
    *(v0 + 1184) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
    sub_230E695F0();
    v25 = *(v0 + 1168);
    v26 = *(v0 + 1176);
    sub_230E68950();

    sub_230E69540();

    *&v50 = 0xD000000000000026;
    *(&v50 + 1) = 0x8000000230E82360;
    swift_getErrorValue();
    v27 = *(v0 + 1144);
    v28 = *(v0 + 1152);
    v29 = *(v0 + 1160);
    v30 = sub_230E69960();
    MEMORY[0x23191DA00](v30);

    sub_230D66764();
    swift_allocError();
    *v31 = v50;
    *(v31 + 16) = 0;
    swift_willThrow();
    MEMORY[0x23191E910](v9);

    sub_230D0F4A8(v23, v22);

    v32 = *(v0 + 1240);
    v33 = *(v0 + 1232);

    v34 = *(v0 + 8);
    goto LABEL_6;
  }

  v11 = v2;
  v12 = v3;
  v13 = *(v0 + 1304);
  sub_230E68950();
  v14 = sub_230E686C0();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_230E686B0();
  sub_230DE9E38();
  sub_230E686A0();
  if (v13)
  {
    v17 = *(v0 + 1232);
    v18 = *(v0 + 1224);
    v19 = *(v0 + 1216);
    MEMORY[0x23191E910](v13);

    sub_230E68950();
    sub_230D66764();
    v9 = swift_allocError();
    *v20 = 0xD000000000000031;
    *(v20 + 8) = 0x8000000230E843B0;
    *(v20 + 16) = 5;
    swift_willThrow();
    sub_230D0F494(v11, v12);
    (*(v18 + 8))(v17, v19);
    goto LABEL_5;
  }

  v43 = *(v0 + 1288);
  v44 = *(v0 + 1272);
  v45 = *(v0 + 1280);
  v46 = *(v0 + 1256);
  v36 = *(v0 + 1232);
  v37 = *(v0 + 1224);
  v47 = *(v0 + 1216);
  v48 = *(v0 + 1240);
  v38 = *(v0 + 1200);

  *(v0 + 537) = *(v0 + 409);
  v39 = *(v0 + 384);
  *(v0 + 496) = *(v0 + 368);
  *(v0 + 512) = v39;
  *(v0 + 528) = *(v0 + 400);
  v40 = *(v0 + 320);
  *(v0 + 432) = *(v0 + 304);
  *(v0 + 448) = v40;
  v41 = *(v0 + 352);
  *(v0 + 464) = *(v0 + 336);
  *(v0 + 480) = v41;
  v42 = *(v0 + 544);
  sub_230D2D898(v0 + 432, v0 + 560);

  sub_230DC984C(v0 + 432);
  v55 = *(v0 + 496);
  *v56 = *(v0 + 512);
  *&v56[9] = *(v0 + 521);
  v51 = *(v0 + 432);
  v52 = *(v0 + 448);
  v53 = *(v0 + 464);
  v54 = *(v0 + 480);
  sub_230E68950();
  sub_230D0F494(v11, v12);

  sub_230D0F4A8(v44, v45);

  (*(v37 + 8))(v36, v47);
  *(v38 + 64) = v55;
  *(v38 + 80) = *v56;
  *(v38 + 96) = *&v56[16];
  *v38 = v51;
  *(v38 + 16) = v52;
  *(v38 + 32) = v53;
  *(v38 + 48) = v54;
  *(v38 + 112) = v42;
  *(v38 + 120) = 1;

  v34 = *(v0 + 8);
LABEL_6:

  return v34();
}

uint64_t sub_230DE3224()
{
  v1 = v0[163];
  v2 = v0[161];
  v3 = v0[160];
  v4 = v0[159];
  v5 = v0[157];
  sub_230E69540();
  v0[146] = 0;
  v0[147] = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD000000000000047, 0x8000000230E84260);
  v0[148] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  v6 = v0[146];
  v7 = v0[147];
  sub_230E68950();

  sub_230E69540();

  swift_getErrorValue();
  v8 = v0[143];
  v9 = v0[144];
  v10 = v0[145];
  v11 = sub_230E69960();
  MEMORY[0x23191DA00](v11);

  sub_230D66764();
  swift_allocError();
  *v12 = 0xD000000000000026;
  *(v12 + 8) = 0x8000000230E82360;
  *(v12 + 16) = 0;
  swift_willThrow();
  MEMORY[0x23191E910](v1);

  sub_230D0F4A8(v4, v3);

  v13 = v0[155];
  v14 = v0[154];

  v15 = v0[1];

  return v15();
}

uint64_t sub_230DE3418(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v4 + 448) = a1;
  *(v4 + 456) = v3;
  v7 = sub_230E68910();
  *(v4 + 464) = v7;
  v8 = *(v7 - 8);
  *(v4 + 472) = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v11 = *a2;
  v12 = a2[1];
  *(v4 + 480) = v10;
  *(v4 + 488) = v11;
  *(v4 + 496) = v12;
  v13 = *(a2 + 2);
  *(v4 + 504) = *(a2 + 1);
  *(v4 + 520) = v13;
  *(v4 + 138) = *(a2 + 48);
  v14 = *(a3 + 16);
  *(v4 + 288) = *a3;
  *(v4 + 304) = v14;
  *(v4 + 320) = *(a3 + 32);

  return MEMORY[0x2822009F8](sub_230DE3514, v3, 0);
}

uint64_t sub_230DE3514()
{
  v1 = *(v0 + 512);
  if (v1)
  {
    v3 = *(v0 + 496);
    v2 = *(v0 + 504);
    v4 = *(v0 + 488);

    MEMORY[0x23191DA00](v4, v3);
    MEMORY[0x23191DA00](58, 0xE100000000000000);
    MEMORY[0x23191DA00](v2, v1);

    *(v0 + 536) = 0x776F6C666B726F77;
    *(v0 + 544) = 0xEF3A65686361632DLL;
    *(v0 + 137) = 0;
    v5 = *(v0 + 304);
    *(v0 + 328) = *(v0 + 288);
    *(v0 + 344) = v5;
    *(v0 + 360) = *(v0 + 320);
    v6 = swift_task_alloc();
    *(v0 + 552) = v6;
    *v6 = v0;
    v6[1] = sub_230DE36CC;
    v8 = *(v0 + 456);

    return ServicesIntelligenceProvider.getKVDatabaseClient(domain:dataClass:requestContext:)((v0 + 137), v7, v0 + 328);
  }

  else
  {
    sub_230E68950();
    v10 = *(v0 + 480);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_230DE36CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 552);
  v6 = *v2;
  v4[70] = a1;
  v4[71] = v1;

  v7 = v3[57];
  if (v1)
  {
    v8 = v4[68];

    v9 = sub_230DE4144;
  }

  else
  {
    v9 = sub_230DE3810;
  }

  return MEMORY[0x2822009F8](v9, v7, 0);
}

uint64_t sub_230DE3810()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 448);
  v3 = sub_230E686F0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_230E686E0();
  v6 = v2[3];
  v8 = *v2;
  v7 = v2[1];
  *(v0 + 48) = v2[2];
  *(v0 + 64) = v6;
  *(v0 + 16) = v8;
  *(v0 + 32) = v7;
  v10 = v2[5];
  v9 = v2[6];
  v11 = v2[4];
  *(v0 + 121) = *(v2 + 105);
  *(v0 + 96) = v10;
  *(v0 + 112) = v9;
  *(v0 + 80) = v11;
  sub_230DEA05C();
  v12 = sub_230E686D0();
  *(v0 + 576) = v12;
  *(v0 + 584) = v13;
  if (v1)
  {
    v14 = *(v0 + 560);
    v15 = *(v0 + 544);
    MEMORY[0x23191E910](v1);

    sub_230E68950();

    v30 = *(v0 + 480);

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    v16 = v12;
    v17 = v13;
    v19 = *(v0 + 472);
    v18 = *(v0 + 480);
    v20 = *(v0 + 464);

    v21 = sub_230DE99C4(v16, v17);
    v23 = v22;
    *(v0 + 592) = v22;
    sub_230D0DD0C(v16, v17);
    sub_230E68900();
    sub_230E688D0();
    v25 = v24;
    (*(v19 + 8))(v18, v20);
    v26 = *(v3 + 48);
    v27 = *(v3 + 52);
    swift_allocObject();
    sub_230E686E0();
    *(v0 + 368) = v16;
    *(v0 + 376) = v17;
    *(v0 + 384) = v21;
    *(v0 + 392) = v23;
    *(v0 + 400) = v25;
    sub_230DEA0B0();
    *(v0 + 600) = sub_230E686D0();
    *(v0 + 608) = v28;
    v29 = *(v0 + 560);
    sub_230D0F4A8(v16, v17);

    return MEMORY[0x2822009F8](sub_230DE3AE0, v29, 0);
  }
}

uint64_t sub_230DE3AE0()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 138);
  v6 = *(v0 + 528);
  v7 = *(v0 + 520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5ABE8, qword_230E6C090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E6B3B0;
  *(inited + 32) = v4;
  *(inited + 40) = v3;
  *(inited + 48) = v7;
  *(inited + 56) = 0;
  *(inited + 64) = v6;
  *(inited + 72) = v5 & 1;

  v9 = sub_230D0DA94(inited);
  *(v0 + 616) = v9;
  swift_setDeallocating();
  sub_230D2D9F8(inited + 32, &qword_27DB5ABF0, &qword_230E71DB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CD28, &qword_230E7AE30);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_230E6B3B0;
  *(v10 + 32) = v4;
  *(v10 + 40) = v3;
  *(v10 + 48) = v2;
  *(v10 + 56) = v1;
  sub_230D0DD0C(v2, v1);
  v11 = sub_230D0F244(v10);
  *(v0 + 624) = v11;
  swift_setDeallocating();
  sub_230D2D9F8(v10 + 32, &qword_27DB5CD30, &qword_230E7AE38);
  v12 = swift_task_alloc();
  *(v0 + 632) = v12;
  *v12 = v0;
  v12[1] = sub_230DE3CC4;
  v13 = *(v0 + 560);

  return sub_230E02C5C(v11, v9, v0 + 288);
}

uint64_t sub_230DE3CC4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 632);
  v6 = *v2;
  v4[80] = v1;

  v7 = v4[78];
  v8 = v4[77];
  v9 = v4[57];

  if (v1)
  {
    v10 = sub_230DE4000;
  }

  else
  {
    v4[81] = a1;
    v10 = sub_230DE3E38;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_230DE3E38()
{
  if (v0[81] == 1)
  {
    v1 = v0[76];
    v2 = v0[75];
    v3 = v0[74];
    v4 = v0[73];
    v5 = v0[72];
    v6 = v0[70];
    v7 = v0[65];
    sub_230E69540();
    v0[53] = 0;
    v0[54] = 0xE000000000000000;
    MEMORY[0x23191DA00](0xD000000000000053, 0x8000000230E840D0);
    sub_230E69320();
    MEMORY[0x23191DA00](115, 0xE100000000000000);
    v8 = v0[53];
    v9 = v0[54];
    sub_230E68950();
    sub_230D0F4A8(v2, v1);
    sub_230D0F4A8(v5, v4);
  }

  else
  {
    v10 = v0[76];
    v11 = v0[75];
    v12 = v0[74];
    v13 = v0[73];
    v14 = v0[72];
    v15 = v0[70];
    sub_230E68950();
    sub_230D0F4A8(v11, v10);
    sub_230D0F4A8(v14, v13);
  }

  v16 = v0[60];

  v17 = v0[1];

  return v17();
}

uint64_t sub_230DE4000()
{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[70];
  sub_230D0F4A8(v0[72], v0[73]);

  sub_230D0F4A8(v2, v1);
  v5 = v0[80];
  sub_230E69540();
  v0[51] = 0;
  v0[52] = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD000000000000042, 0x8000000230E83F80);
  v0[55] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  v6 = v0[51];
  v7 = v0[52];
  sub_230E68950();

  MEMORY[0x23191E910](v5);
  v8 = v0[60];

  v9 = v0[1];

  return v9();
}

uint64_t sub_230DE4144()
{
  v1 = v0[71];
  sub_230E69540();
  v0[51] = 0;
  v0[52] = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD000000000000042, 0x8000000230E83F80);
  v0[55] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  v2 = v0[51];
  v3 = v0[52];
  sub_230E68950();

  MEMORY[0x23191E910](v1);
  v4 = v0[60];

  v5 = v0[1];

  return v5();
}

uint64_t sub_230DE4248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 1296) = *(a2 + 80);
  v5 = *(a3 + 16);
  *(v4 + 1312) = *a3;
  *(v4 + 1272) = v3;
  *(v4 + 1264) = a1;
  v6 = *(a2 + 8);
  *(v4 + 1280) = *a2;
  *(v4 + 1288) = v6;
  *(v4 + 1328) = v5;
  *(v4 + 1344) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230DE4294, v3, 0);
}

uint64_t sub_230DE4294()
{
  v1 = *(v0 + 1328);
  if (v1)
  {
    v2 = *(v0 + 1344);
    v3 = *(v0 + 1336);
    v4 = *(v0 + 1312);
    v5 = *(v0 + 1320);
    *(v0 + 1368) = v2;
    *(v0 + 1360) = v1;
    v6 = *(v0 + 1272);
    *(v0 + 1184) = v4;
    *(v0 + 1192) = v5;
    *(v0 + 1200) = v1;
    *(v0 + 1208) = v3 & 1;
    *(v0 + 1209) = BYTE1(v3);
    *(v0 + 1216) = v2;

    sub_230D0585C(v4, v5, v1);
    v7 = swift_task_alloc();
    *(v0 + 1376) = v7;
    *v7 = v0;
    v7[1] = sub_230DE46C0;
    v8 = *(v0 + 1272);

    return sub_230D7CC14(v0 + 1136, 18, v0 + 1184, v8, v8, v0 + 1184);
  }

  else
  {
    *(v0 + 121) = 18;
    v10 = swift_task_alloc();
    *(v0 + 1352) = v10;
    *v10 = v0;
    v10[1] = sub_230DE4460;

    return static RequestContext.from(_:correlationID:)(v0 + 1224, (v0 + 121), 0, 0);
  }
}

uint64_t sub_230DE4460()
{
  v1 = *(*v0 + 1352);
  v2 = *(*v0 + 1272);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230DE4570, v2, 0);
}

uint64_t sub_230DE4570()
{
  v1 = *(v0 + 1224);
  v2 = *(v0 + 1232);
  v3 = *(v0 + 1240);
  v4 = *(v0 + 1248);
  v5 = *(v0 + 1249);
  v6 = *(v0 + 1256);
  *(v0 + 1368) = v6;
  *(v0 + 1360) = v3;
  v7 = *(v0 + 1344);
  v8 = *(v0 + 1336);
  v9 = *(v0 + 1328);
  v10 = *(v0 + 1320);
  v11 = *(v0 + 1312);
  v12 = *(v0 + 1272);
  *(v0 + 1184) = v1;
  *(v0 + 1192) = v2;
  *(v0 + 1200) = v3;
  *(v0 + 1208) = v4;
  *(v0 + 1209) = v5;
  *(v0 + 1216) = v6;

  sub_230D0585C(v11, v10, v9);
  v13 = swift_task_alloc();
  *(v0 + 1376) = v13;
  *v13 = v0;
  v13[1] = sub_230DE46C0;
  v14 = *(v0 + 1272);

  return sub_230D7CC14(v0 + 1136, 18, v0 + 1184, v14, v14, v0 + 1184);
}

uint64_t sub_230DE46C0()
{
  v1 = *(*v0 + 1376);
  v2 = *(*v0 + 1368);
  v3 = *(*v0 + 1360);
  v4 = *(*v0 + 1272);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_230DE4810, v4, 0);
}

uint64_t sub_230DE4810()
{
  v1 = *(v0 + 1136);
  if (!v1)
  {
    v18 = 0x8000000230E83CA0;
    v19 = 0xD000000000000016;
LABEL_24:
    sub_230D66764();
    swift_allocError();
    *v22 = v19;
    *(v22 + 8) = v18;
    *(v22 + 16) = 3;
    swift_willThrow();
    v23 = *(v0 + 8);
    goto LABEL_43;
  }

  v2 = (v0 + 464);
  v51 = (v0 + 912);
  v52 = *(v0 + 1144);
  v53 = *(v0 + 1152);
  v54 = *(v0 + 1160);
  v3 = *(v0 + 1168);
  v55 = *(v0 + 1176);
  v4 = (v1 + 56);
  v5 = *(v1 + 16) + 1;
  do
  {
    if (!--v5)
    {
      v20 = *(v0 + 1280);
      v21 = *(v0 + 1288);
      sub_230DE9FF0(v1);
      sub_230E69540();

      MEMORY[0x23191DA00](v20, v21);
      v19 = 0xD000000000000025;
      v18 = 0x8000000230E83CC0;
      goto LABEL_24;
    }

    v6 = *v4;
    if (*(v4 - 3) == *(v0 + 1280) && *(v4 - 2) == *(v0 + 1288))
    {
      break;
    }

    v4 += 4;
  }

  while ((sub_230E698C0() & 1) == 0);
  if (!*(v0 + 1304))
  {
    v24 = *(v6 + 16);
    if (!v24)
    {
LABEL_49:

      result = sub_230DE9FF0(v1);
      __break(1u);
      return result;
    }

    v25 = 32;
    do
    {
      v26 = *(v6 + v25 + 48);
      v27 = *(v6 + v25 + 64);
      v28 = *(v6 + v25 + 80);
      *(v0 + 105) = *(v6 + v25 + 89);
      v29 = *(v6 + v25 + 16);
      v30 = *(v6 + v25 + 32);
      *(v0 + 16) = *(v6 + v25);
      *(v0 + 32) = v29;
      *(v0 + 80) = v27;
      *(v0 + 96) = v28;
      *(v0 + 48) = v30;
      *(v0 + 64) = v26;
      if (*(v0 + 120))
      {
        if (!*(v0 + 112))
        {
          goto LABEL_31;
        }
      }

      else if (!*(v0 + 32))
      {
LABEL_31:
        sub_230D2D898(v0 + 16, v0 + 128);
        sub_230DE9FF0(v1);
        v2 = (v0 + 16);
        goto LABEL_42;
      }

      v25 += 112;
      --v24;
    }

    while (v24);

    sub_230DE9FF0(v1);
    if (*(v6 + 16))
    {
      v37 = *(v6 + 32);
      v38 = *(v6 + 64);
      *(v0 + 256) = *(v6 + 48);
      *(v0 + 272) = v38;
      *(v0 + 240) = v37;
      v39 = *(v6 + 80);
      v40 = *(v6 + 96);
      v41 = *(v6 + 112);
      *(v0 + 329) = *(v6 + 121);
      *(v0 + 304) = v40;
      *(v0 + 320) = v41;
      *(v0 + 288) = v39;
      sub_230D2D898(v0 + 240, v0 + 352);

      v2 = (v0 + 240);
      goto LABEL_42;
    }

    __break(1u);
    goto LABEL_47;
  }

  v8 = *(v6 + 16);
  if (!v8)
  {
LABEL_48:

    sub_230DE9FF0(v1);
    __break(1u);
    goto LABEL_49;
  }

  v9 = 32;
  v10 = *(v6 + 16);
  while (2)
  {
    v11 = *(v6 + v9);
    v12 = *(v6 + v9 + 32);
    *(v0 + 480) = *(v6 + v9 + 16);
    *(v0 + 496) = v12;
    *v2 = v11;
    v13 = *(v6 + v9 + 48);
    v14 = *(v6 + v9 + 64);
    v15 = *(v6 + v9 + 80);
    *(v0 + 553) = *(v6 + v9 + 89);
    *(v0 + 528) = v14;
    *(v0 + 544) = v15;
    *(v0 + 512) = v13;
    if (*(v0 + 568))
    {
      v16 = *(v0 + 560);
      if (v16)
      {
        v17 = *(v0 + 552);
LABEL_19:
        if (v17 == *(v0 + 1296) && v16 == *(v0 + 1304) || (sub_230E698C0() & 1) != 0)
        {
          sub_230D2D898(v0 + 464, v0 + 576);
          sub_230DE9FF0(v1);
          goto LABEL_42;
        }
      }
    }

    else
    {
      v16 = *(v0 + 480);
      if (v16)
      {
        v17 = *(v0 + 472);
        goto LABEL_19;
      }
    }

    v9 += 112;
    if (--v10)
    {
      continue;
    }

    break;
  }

  v31 = 32;
  do
  {
    v32 = *(v6 + v31 + 48);
    v33 = *(v6 + v31 + 64);
    v34 = *(v6 + v31 + 80);
    *(v0 + 777) = *(v6 + v31 + 89);
    v35 = *(v6 + v31 + 16);
    v36 = *(v6 + v31 + 32);
    *(v0 + 688) = *(v6 + v31);
    *(v0 + 704) = v35;
    *(v0 + 752) = v33;
    *(v0 + 768) = v34;
    *(v0 + 720) = v36;
    *(v0 + 736) = v32;
    if (*(v0 + 792))
    {
      if (!*(v0 + 784))
      {
        goto LABEL_37;
      }
    }

    else if (!*(v0 + 704))
    {
LABEL_37:
      sub_230D2D898(v0 + 688, v0 + 800);
      sub_230DE9FF0(v1);
      v2 = (v0 + 688);
      goto LABEL_42;
    }

    v31 += 112;
    --v8;
  }

  while (v8);

  sub_230DE9FF0(v1);
  if (!*(v6 + 16))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v42 = *(v6 + 32);
  v43 = *(v6 + 64);
  v2 = (v0 + 912);
  *(v0 + 928) = *(v6 + 48);
  *(v0 + 944) = v43;
  *v51 = v42;
  v44 = *(v6 + 80);
  v45 = *(v6 + 96);
  v46 = *(v6 + 112);
  *(v0 + 1001) = *(v6 + 121);
  *(v0 + 976) = v45;
  *(v0 + 992) = v46;
  *(v0 + 960) = v44;
  sub_230D2D898(v51, v0 + 1024);

LABEL_42:
  v47 = v2[4];
  *v58 = v2[5];
  *&v58[9] = *(v2 + 89);
  v56 = v2[1];
  v48 = v2[2];
  v57 = v2[3];
  v49 = *(v0 + 1264);
  *v49 = *v2;
  v49[1] = v56;
  v49[2] = v48;
  v49[3] = v57;
  *(v49 + 89) = *&v58[9];
  v49[4] = v47;
  v49[5] = *v58;
  v23 = *(v0 + 8);
LABEL_43:

  return v23();
}

uint64_t ServicesIntelligenceProvider.prewarmWorkflow(_:requestContext:)(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  *(v3 + 680) = v2;
  v6 = sub_230E68D80();
  *(v3 + 688) = v6;
  v7 = *(v6 - 8);
  *(v3 + 696) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 704) = swift_task_alloc();
  v9 = *(a1 + 80);
  *(v3 + 80) = *(a1 + 64);
  *(v3 + 96) = v9;
  *(v3 + 112) = *(a1 + 96);
  v10 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v10;
  v11 = *(a1 + 48);
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = v11;
  v12 = *(a2 + 16);
  *(v3 + 712) = *a2;
  *(v3 + 728) = v12;
  *(v3 + 744) = *(a2 + 32);
  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230DE4E4C, v2, 0);
}

uint64_t sub_230DE4E4C()
{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 728);
  if (v1)
  {
    v2 = *(v0 + 744);
    v3 = *(v0 + 736);
    v4 = *(v0 + 712);
    v5 = *(v0 + 720);
    *(v0 + 768) = v2;
    *(v0 + 760) = v1;
    v6 = *(v0 + 704);
    v7 = *(v0 + 680);
    *(v0 + 592) = v4;
    *(v0 + 600) = v5;
    *(v0 + 608) = v1;
    *(v0 + 616) = v3 & 1;
    *(v0 + 617) = BYTE1(v3);
    *(v0 + 624) = v2;
    sub_230DC7630(v0 + 16, v0 + 488);

    sub_230D0585C(v4, v5, v1);
    sub_230E68D70();

    v8 = sub_230E68D60();
    v9 = sub_230E693E0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30[0] = v29;
      *v10 = 136315650;
      *(v10 + 4) = sub_230D7E620(0xD000000000000010, 0x8000000230E807F0, v30);
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_230D7E620(v5, v1, v30);
      *(v10 + 22) = 2080;
      v11 = RequestType.rawValue.getter();
      MEMORY[0x23191DA00](v11);

      v12 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v30);

      *(v10 + 24) = v12;
      _os_log_impl(&dword_230D02000, v8, v9, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23191EAE0](v29, -1, -1);
      MEMORY[0x23191EAE0](v10, -1, -1);
    }

    if (v3 & 1) != 0 && ((v13 = RequestType.rawValue.getter(), v15 = v14, , LOBYTE(v13) = sub_230D33FDC(v13, v15, v2), , , (v13) || BYTE1(v3)))
    {
      sub_230E68950();
      *(v0 + 776) = CFAbsoluteTimeGetCurrent();
      *(v0 + 116) = 0u;
      *(v0 + 132) = 0u;
      *(v0 + 148) = 0u;
      *(v0 + 164) = 0u;
      *(v0 + 180) = 0u;
      *(v0 + 196) = 0u;
      *(v0 + 212) = 0u;
      *(v0 + 228) = 0u;
      *(v0 + 244) = 0u;
      *(v0 + 260) = 0u;
      *(v0 + 276) = 0u;
      *(v0 + 292) = 0u;
      *(v0 + 308) = 0u;
      *(v0 + 324) = 0u;
      *(v0 + 340) = 0u;
      *(v0 + 356) = 0u;
      *(v0 + 372) = 0u;
      *(v0 + 388) = 0u;
      *(v0 + 404) = 0u;
      *(v0 + 420) = 0u;
      *(v0 + 436) = 0u;
      *(v0 + 452) = 0u;
      *(v0 + 468) = 0u;
      *(v0 + 484) = 0;
      *(v0 + 588) = 93;
      v21 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 116), (v0 + 588));
      *(v0 + 824) = v21;
      v22 = 0.0;
      if (!v21)
      {
        v23 = *(v0 + 164);
        v24 = *(v0 + 236);
        v25 = __CFADD__(v23, v24);
        v26 = v23 + v24;
        if (v25)
        {
          __break(1u);
        }

        v22 = vcvtd_n_f64_u64(v26, 0x14uLL);
      }

      *(v0 + 800) = v22;
      *(v0 + 672) = 0;
      v16 = swift_task_alloc();
      *(v0 + 808) = v16;
      *v16 = v0;
      v17 = sub_230DE5A90;
    }

    else
    {
      v16 = swift_task_alloc();
      *(v0 + 784) = v16;
      *v16 = v0;
      v17 = sub_230DE5938;
    }

    v16[1] = v17;
    v27 = *(v0 + 680);
    v28 = *MEMORY[0x277D85DE8];

    return sub_230DE6060(v16, v0 + 16, v27, v0 + 592);
  }

  else
  {
    *(v0 + 113) = 32;
    v18 = swift_task_alloc();
    *(v0 + 752) = v18;
    *v18 = v0;
    v18[1] = sub_230DE5364;
    v19 = *MEMORY[0x277D85DE8];

    return static RequestContext.from(_:correlationID:)(v0 + 632, (v0 + 113), 0, 0);
  }
}

uint64_t sub_230DE5364()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 752);
  v2 = *(*v0 + 680);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230DE54A0, v2, 0);
}

uint64_t sub_230DE54A0()
{
  v38 = v0;
  v37[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 632);
  v2 = *(v0 + 640);
  v3 = *(v0 + 648);
  v4 = *(v0 + 656);
  v5 = *(v0 + 657);
  v6 = *(v0 + 664);
  *(v0 + 768) = v6;
  *(v0 + 760) = v3;
  v7 = *(v0 + 744);
  v8 = *(v0 + 736);
  v9 = *(v0 + 728);
  v10 = *(v0 + 720);
  v11 = *(v0 + 712);
  v12 = *(v0 + 704);
  v13 = *(v0 + 680);
  v36 = v4;
  *(v0 + 592) = v1;
  v35 = v2;
  *(v0 + 600) = v2;
  *(v0 + 608) = v3;
  *(v0 + 616) = v4;
  v34 = v5;
  *(v0 + 617) = v5;
  *(v0 + 624) = v6;
  sub_230DC7630(v0 + 16, v0 + 488);

  sub_230D0585C(v11, v10, v9);
  sub_230E68D70();

  v14 = sub_230E68D60();
  v15 = sub_230E693E0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v37[0] = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_230D7E620(0xD000000000000010, 0x8000000230E807F0, v37);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_230D7E620(v35, v3, v37);
    *(v16 + 22) = 2080;
    v18 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v18);

    v19 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v37);

    *(v16 + 24) = v19;
    _os_log_impl(&dword_230D02000, v14, v15, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v17, -1, -1);
    MEMORY[0x23191EAE0](v16, -1, -1);

    if (!v36)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (!v36)
    {
LABEL_7:
      v23 = swift_task_alloc();
      *(v0 + 784) = v23;
      *v23 = v0;
      v24 = sub_230DE5938;
      goto LABEL_12;
    }
  }

  v20 = RequestType.rawValue.getter();
  v22 = v21;

  LOBYTE(v20) = sub_230D33FDC(v20, v22, v6);

  if ((v20 & 1) == 0 && !v34)
  {
    goto LABEL_7;
  }

  sub_230E68950();
  *(v0 + 776) = CFAbsoluteTimeGetCurrent();
  *(v0 + 116) = 0u;
  *(v0 + 132) = 0u;
  *(v0 + 148) = 0u;
  *(v0 + 164) = 0u;
  *(v0 + 180) = 0u;
  *(v0 + 196) = 0u;
  *(v0 + 212) = 0u;
  *(v0 + 228) = 0u;
  *(v0 + 244) = 0u;
  *(v0 + 260) = 0u;
  *(v0 + 276) = 0u;
  *(v0 + 292) = 0u;
  *(v0 + 308) = 0u;
  *(v0 + 324) = 0u;
  *(v0 + 340) = 0u;
  *(v0 + 356) = 0u;
  *(v0 + 372) = 0u;
  *(v0 + 388) = 0u;
  *(v0 + 404) = 0u;
  *(v0 + 420) = 0u;
  *(v0 + 436) = 0u;
  *(v0 + 452) = 0u;
  *(v0 + 468) = 0u;
  *(v0 + 484) = 0;
  *(v0 + 588) = 93;
  v25 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 116), (v0 + 588));
  *(v0 + 824) = v25;
  v26 = 0.0;
  if (!v25)
  {
    v27 = *(v0 + 164);
    v28 = *(v0 + 236);
    v29 = __CFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      __break(1u);
    }

    v26 = vcvtd_n_f64_u64(v30, 0x14uLL);
  }

  *(v0 + 800) = v26;
  *(v0 + 672) = 0;
  v23 = swift_task_alloc();
  *(v0 + 808) = v23;
  *v23 = v0;
  v24 = sub_230DE5A90;
LABEL_12:
  v23[1] = v24;
  v31 = *(v0 + 680);
  v32 = *MEMORY[0x277D85DE8];

  return sub_230DE6060(v23, v0 + 16, v31, v0 + 592);
}

uint64_t sub_230DE5938()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 784);
  v4 = *v1;
  *(*v1 + 792) = v0;

  v5 = *(v2 + 680);
  if (v0)
  {
    v6 = sub_230DE5F78;
  }

  else
  {
    v6 = sub_230DE5E80;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230DE5A90()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 808);
  v4 = *v1;
  *(*v1 + 816) = v0;

  v5 = *(v2 + 680);
  if (v0)
  {
    v6 = sub_230DE5D1C;
  }

  else
  {
    v6 = sub_230DE5BE8;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230DE5BE8()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 768);
  v2 = *(v0 + 760);
  v3 = *(v0 + 704);
  v4 = *(v0 + 696);
  v5 = *(v0 + 688);
  v6 = *(v0 + 680);
  sub_230D38814(32, *(v0 + 800), *(v0 + 824) != 0, v0 + 592, (v0 + 672), *(v0 + 776));
  (*(v4 + 8))(v3, v5);
  sub_230D8151C(v0 + 16);

  v7 = *(v0 + 768);
  v8 = *(v0 + 760);
  v9 = *(v0 + 704);

  v10 = *(v0 + 8);
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

uint64_t sub_230DE5D1C()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 816);
  v2 = *(v0 + 800);
  v3 = *(v0 + 776);
  v16 = *(v0 + 768);
  v4 = *(v0 + 760);
  v5 = *(v0 + 704);
  v6 = *(v0 + 696);
  v7 = *(v0 + 688);
  v8 = *(v0 + 680);
  v9 = *(v0 + 824) != 0;
  *(v0 + 672) = v1;
  swift_willThrow();
  v10 = v1;
  sub_230D38814(32, v2, v9, v0 + 592, (v0 + 672), v3);
  MEMORY[0x23191E910](v1);
  (*(v6 + 8))(v5, v7);
  sub_230D8151C(v0 + 16);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v11 = *(v0 + 816);
  v12 = *(v0 + 704);

  v13 = *(v0 + 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13();
}

uint64_t sub_230DE5E80()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[96];
  v2 = v0[95];
  v3 = v0[85];
  (*(v0[87] + 8))(v0[88], v0[86]);
  sub_230D8151C((v0 + 2));

  v4 = v0[96];
  v5 = v0[95];
  v6 = v0[88];

  v7 = v0[1];
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_230DE5F78()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[96];
  v2 = v0[95];
  v3 = v0[85];
  (*(v0[87] + 8))(v0[88], v0[86]);
  sub_230D8151C((v0 + 2));

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v4 = v0[99];
  v5 = v0[88];

  v6 = v0[1];
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t sub_230DE6060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 1248) = a4;
  *(v4 + 1240) = a3;
  *(v4 + 1232) = a2;
  *(v4 + 137) = *a4;
  *(v4 + 1256) = *(a4 + 8);
  *(v4 + 138) = *(a4 + 24);
  *(v4 + 1272) = *(a4 + 32);
  return MEMORY[0x2822009F8](sub_230DE60AC, a3, 0);
}

uint64_t sub_230DE60AC()
{
  v1 = *(v0 + 1232);
  if (v1[6])
  {
    v2 = *(v0 + 1272);
    v3 = *(v0 + 139);
    v4 = *(v0 + 138);
    v5 = *(v0 + 1264);
    v6 = *(v0 + 1256);
    v7 = *(v0 + 137);
    v8 = *(v0 + 1248);
    v9 = *v1;
    v10 = v1[2];
    *(v0 + 848) = v1[1];
    *(v0 + 864) = v10;
    *(v0 + 832) = v9;
    v11 = v1[3];
    v12 = v1[4];
    v13 = v1[5];
    *(v0 + 928) = *(v1 + 96);
    *(v0 + 896) = v12;
    *(v0 + 912) = v13;
    *(v0 + 880) = v11;
    *(v0 + 1096) = v7;
    *(v0 + 1104) = v6;
    *(v0 + 1112) = v5;
    *(v0 + 1120) = v4 & 1 | (v3 << 8);
    *(v0 + 1128) = v2;
    sub_230D1CDE0(v8, v0 + 1136);
    v14 = swift_task_alloc();
    *(v0 + 1280) = v14;
    *v14 = v0;
    v14[1] = sub_230DE62A0;
    v15 = *(v0 + 1240);

    return sub_230DE0184(v0 + 272, v0 + 832, (v0 + 1096));
  }

  else
  {
    v17 = *(v0 + 1272);
    v18 = *(v0 + 1264);
    v19 = *(v0 + 137);
    v20 = *(v0 + 138) & 1 | (*(v0 + 139) << 8);
    v21 = *(v0 + 1256);
    v22 = *(v0 + 1248);
    v23 = *v1;
    v24 = v1[2];
    *(v0 + 640) = v1[1];
    *(v0 + 656) = v24;
    *(v0 + 624) = v23;
    v25 = v1[3];
    v26 = v1[4];
    v27 = v1[5];
    *(v0 + 720) = *(v1 + 96);
    *(v0 + 688) = v26;
    *(v0 + 704) = v27;
    *(v0 + 672) = v25;
    *(v0 + 936) = v19;
    *(v0 + 944) = v21;
    *(v0 + 952) = v18;
    *(v0 + 960) = v20;
    *(v0 + 968) = v17;
    sub_230D1CDE0(v22, v0 + 976);
    v28 = swift_task_alloc();
    *(v0 + 1288) = v28;
    *v28 = v0;
    v28[1] = sub_230DE65F0;
    v29 = *(v0 + 1240);

    return sub_230DE4248(v0 + 400, v0 + 624, v0 + 936);
  }
}

uint64_t sub_230DE62A0()
{
  v1 = *v0;
  v2 = (*v0)[160];
  v3 = (*v0)[155];
  v7 = *v0;

  v4 = v1[140];
  v5 = v1[141];
  sub_230D666B4(v1[137], v1[138], v1[139]);

  return MEMORY[0x2822009F8](sub_230DE6424, v3, 0);
}

uint64_t sub_230DE6424()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 352);
  *(v0 + 208) = v1;
  *(v0 + 224) = v2;
  v3 = *(v0 + 368);
  *(v0 + 240) = v3;
  v4 = *(v0 + 272);
  v5 = *(v0 + 288);
  *(v0 + 144) = v4;
  *(v0 + 160) = v5;
  v6 = *(v0 + 304);
  v7 = *(v0 + 320);
  *(v0 + 176) = v6;
  *(v0 + 192) = v7;
  v8 = *(v0 + 377);
  *(v0 + 249) = v8;
  *(v0 + 16) = v4;
  *(v0 + 32) = v5;
  *(v0 + 48) = v6;
  *(v0 + 64) = v7;
  *(v0 + 80) = v1;
  *(v0 + 96) = v2;
  *(v0 + 112) = v3;
  *(v0 + 121) = v8;
  if (sub_230D666F8(v0 + 16) == 1)
  {
    v9 = *(v0 + 1272);
    v10 = *(v0 + 1264);
    v11 = *(v0 + 137);
    v12 = *(v0 + 138) & 1 | (*(v0 + 139) << 8);
    v13 = *(v0 + 1256);
    v14 = *(v0 + 1248);
    v15 = *(v0 + 1232);
    v16 = *v15;
    v17 = v15[2];
    *(v0 + 640) = v15[1];
    *(v0 + 656) = v17;
    *(v0 + 624) = v16;
    v18 = v15[3];
    v19 = v15[4];
    v20 = v15[5];
    *(v0 + 720) = *(v15 + 96);
    *(v0 + 688) = v19;
    *(v0 + 704) = v20;
    *(v0 + 672) = v18;
    *(v0 + 936) = v11;
    *(v0 + 944) = v13;
    *(v0 + 952) = v10;
    *(v0 + 960) = v12;
    *(v0 + 968) = v9;
    sub_230D1CDE0(v14, v0 + 976);
    v21 = swift_task_alloc();
    *(v0 + 1288) = v21;
    *v21 = v0;
    v21[1] = sub_230DE65F0;
    v22 = *(v0 + 1240);

    return sub_230DE4248(v0 + 400, v0 + 624, v0 + 936);
  }

  else
  {
    sub_230D2D9F8(v0 + 144, &qword_27DB5CCE8, &unk_230E7ADB8);
    sub_230E68950();
    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_230DE65F0()
{
  v2 = *v1;
  v3 = (*v1)[161];
  v11 = *v1;
  (*v1)[162] = v0;

  if (v0)
  {
    v4 = v2[155];
    v5 = v2[120];
    v6 = v2[121];
    sub_230D666B4(v2[117], v2[118], v2[119]);
    v7 = sub_230DE6CA0;
  }

  else
  {
    v4 = v2[155];
    v8 = v2[120];
    v9 = v2[121];
    sub_230D666B4(v2[117], v2[118], v2[119]);
    v7 = sub_230DE673C;
  }

  return MEMORY[0x2822009F8](v7, v4, 0);
}

uint64_t sub_230DE673C()
{
  *(v0 + 601) = *(v0 + 489);
  v1 = *(v0 + 480);
  *(v0 + 576) = *(v0 + 464);
  *(v0 + 592) = v1;
  v2 = *(v0 + 416);
  *(v0 + 512) = *(v0 + 400);
  *(v0 + 528) = v2;
  v3 = *(v0 + 448);
  *(v0 + 544) = *(v0 + 432);
  *(v0 + 560) = v3;
  if (*(v0 + 616))
  {
    v4 = *(v0 + 1248);
    v5 = *(v0 + 1240);
    v6 = *(v0 + 1232);
    sub_230D1CDE0(v4, v0 + 1016);
    sub_230D1CDE0(v4, v0 + 1056);
    sub_230DC7630(v6, v0 + 728);

    v7 = swift_task_alloc();
    *(v0 + 1304) = v7;
    *v7 = v0;
    v7[1] = sub_230DE68CC;
    v8 = *(v0 + 1248);
    v9 = *(v0 + 1240);
    v10 = *(v0 + 1232);

    return sub_230D7EC1C(34, v8, v9, v10, v9, v8);
  }

  else
  {
    sub_230E68950();
    sub_230D2D8F4(v0 + 512);
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_230DE68CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1304);
  v6 = *v2;
  *(v4 + 1312) = a1;
  *(v4 + 1320) = v1;

  v7 = *(v3 + 1248);
  v8 = *(v3 + 1240);
  sub_230D1CE3C(v7);
  if (v1)
  {
    v9 = sub_230DE6C34;
  }

  else
  {
    v9 = sub_230DE6A20;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_230DE6A20()
{
  v1 = v0[165];
  v2 = v0[164];
  sub_230D1CE3C(v0[156]);
  sub_230E68C60();
  if (v1)
  {
    v3 = v0[164];
    sub_230E69540();
    v0[150] = 0;
    v0[151] = 0xE000000000000000;
    MEMORY[0x23191DA00](0xD000000000000043, 0x8000000230E83790);
    v0[152] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
    sub_230E695F0();
    v4 = v0[150];
    v5 = v0[151];
    sub_230E68950();

    sub_230E69540();

    swift_getErrorValue();
    v6 = v0[147];
    v7 = v0[148];
    v8 = v0[149];
    v9 = sub_230E69960();
    MEMORY[0x23191DA00](v9);

    sub_230D66764();
    swift_allocError();
    *v10 = 0xD000000000000013;
    *(v10 + 8) = 0x8000000230E837E0;
    *(v10 + 16) = 0;
    swift_willThrow();
    MEMORY[0x23191E910](v1);
  }

  else
  {
    v12 = v0[164];
    sub_230E68950();
  }

  sub_230D2D8F4((v0 + 64));
  v11 = v0[1];

  return v11();
}

uint64_t sub_230DE6C34()
{
  sub_230D1CE3C(v0[156]);
  sub_230D2D8F4((v0 + 64));
  v1 = v0[165];
  v2 = v0[1];

  return v2();
}

uint64_t sub_230DE6CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 200) = a3;
  *(v4 + 208) = a4;
  *(v4 + 184) = a1;
  *(v4 + 192) = a2;
  *(v4 + 312) = *a4;
  *(v4 + 216) = *(a4 + 8);
  *(v4 + 313) = *(a4 + 24);
  *(v4 + 232) = *(a4 + 32);
  return MEMORY[0x2822009F8](sub_230DE6D00, a3, 0);
}

uint64_t sub_230DE6D00()
{
  v1 = v0[24];
  v2 = *v1;
  v0[30] = *v1;
  v3 = v1[1];
  v0[31] = v3;
  if (v1[9])
  {

    v4 = getpid();
  }

  else
  {
    v4 = v1[8];
  }

  v0[32] = v4;
  v5 = v0[25];
  v6 = v0[26];
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000048, 0x8000000230E83BC0);
  MEMORY[0x23191DA00](v2, v3);
  MEMORY[0x23191DA00](0xD000000000000016, 0x8000000230E82630);
  v0[22] = v4;
  v7 = sub_230E69890();
  MEMORY[0x23191DA00](v7);

  sub_230E68950();

  sub_230D1CDE0(v6, (v0 + 2));
  sub_230D1CDE0(v6, (v0 + 7));

  v8 = swift_task_alloc();
  v0[33] = v8;
  *v8 = v0;
  v8[1] = sub_230DE6EE8;
  v10 = v0[25];
  v9 = v0[26];

  return sub_230D6F7D0(39, v9, v10, v10);
}

uint64_t sub_230DE6EE8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  *(v4 + 272) = a1;
  *(v4 + 280) = v1;

  v7 = *(v3 + 208);
  v8 = *(v3 + 200);
  sub_230D1CE3C(v7);
  if (v1)
  {
    v9 = sub_230DE7428;
  }

  else
  {
    v9 = sub_230DE7038;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_230DE7038()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 312);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 313) & 1 | (*(v0 + 314) << 8);
  sub_230D1CE3C(v4);
  *(v0 + 96) = v3;
  *(v0 + 104) = v5;
  *(v0 + 112) = v2;
  *(v0 + 120) = v6;
  *(v0 + 128) = v1;
  sub_230D1CDE0(v4, v0 + 136);
  v7 = swift_task_alloc();
  *(v0 + 288) = v7;
  *v7 = v0;
  v7[1] = sub_230DE7140;
  v8 = *(v0 + 272);
  v10 = *(v0 + 240);
  v9 = *(v0 + 248);

  return sub_230E57B20(v10, v9, v8, v0 + 96);
}

uint64_t sub_230DE7140(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[36];
  v15 = *v2;
  v3[37] = a1;
  v3[38] = v1;

  if (v1)
  {
    v5 = v3[31];
    v6 = v3[25];
    v7 = v3[15];
    v8 = v3[16];
    sub_230D666B4(v3[12], v3[13], v3[14]);

    v9 = sub_230D656D4;
    v10 = v6;
  }

  else
  {
    v11 = v3[25];
    v12 = v3[15];
    v13 = v3[16];
    sub_230D666B4(v3[12], v3[13], v3[14]);
    v9 = sub_230DE7298;
    v10 = v11;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

uint64_t sub_230DE7298()
{
  v1 = v0[34];
  if (*(v0[37] + 16))
  {
    v3 = v0[31];
    v2 = v0[32];
    v4 = v0[30];
    v5 = v0[23];
    sub_230E68950();
    sub_230E68C90();
    v6 = sub_230E68C70();

    *v5 = v6;
  }

  else
  {
    v8 = v0[31];

    sub_230E68950();
    sub_230D66764();
    swift_allocError();
    *v9 = 0xD00000000000001FLL;
    *(v9 + 8) = 0x8000000230E826D0;
    *(v9 + 16) = 3;
    swift_willThrow();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_230DE7428()
{
  v1 = v0[31];
  sub_230D1CE3C(v0[26]);

  v2 = v0[35];
  v3 = v0[1];

  return v3();
}

uint64_t ServicesIntelligenceProvider.clearCache(requestContext:)(uint64_t a1)
{
  *(v2 + 96) = v1;
  v3 = *(a1 + 16);
  *(v2 + 104) = *a1;
  *(v2 + 120) = v3;
  *(v2 + 136) = *(a1 + 32);
  return MEMORY[0x2822009F8](sub_230DE74CC, v1, 0);
}

uint64_t sub_230DE74CC()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    *(v0 + 152) = v1;
    *(v0 + 160) = v2;
    v6 = *(v0 + 96);
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v5, v4, v1);
    v7 = swift_task_alloc();
    *(v0 + 168) = v7;
    *v7 = v0;
    v7[1] = sub_230DE78D4;
    v8 = *(v0 + 96);

    return (sub_230D7C3E0)();
  }

  else
  {
    *(v0 + 176) = 31;
    v10 = swift_task_alloc();
    *(v0 + 144) = v10;
    *v10 = v0;
    v10[1] = sub_230DE768C;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 176), 0, 0);
  }
}

uint64_t sub_230DE768C()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230DE779C, v2, 0);
}

uint64_t sub_230DE779C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  *(v0 + 152) = v3;
  *(v0 + 160) = v7;
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);
  v11 = *(v0 + 112);
  v10 = *(v0 + 120);
  *(v0 + 16) = v1;
  v12 = *(v0 + 104);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v7;

  sub_230D0585C(v12, v11, v10);
  v13 = swift_task_alloc();
  *(v0 + 168) = v13;
  *v13 = v0;
  v13[1] = sub_230DE78D4;
  v14 = *(v0 + 96);

  return (sub_230D7C3E0)();
}

uint64_t sub_230DE78D4()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v4 = *(*v0 + 96);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_230D63F54, v4, 0);
}

uint64_t sub_230DE7A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 272) = a2;
  *(v3 + 280) = a3;
  return MEMORY[0x2822009F8](sub_230DE7A40, a2, 0);
}

uint64_t sub_230DE7A40()
{
  v1 = v0[35];
  sub_230D1CDE0(v1, (v0 + 2));
  sub_230D1CDE0(v1, (v0 + 7));

  v2 = swift_task_alloc();
  v0[36] = v2;
  *v2 = v0;
  v2[1] = sub_230DE7B1C;
  v4 = v0[34];
  v3 = v0[35];

  return (sub_230D72678)(15, v3);
}

uint64_t sub_230DE7B1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 288);
  v6 = *(*v2 + 280);
  v7 = *v2;
  *(v4 + 296) = a1;
  *(v4 + 304) = v1;

  sub_230D1CE3C(v6);
  v8 = *(v3 + 272);
  if (v1)
  {
    v9 = sub_230DE7C6C;
  }

  else
  {
    v9 = sub_230DE7CD8;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_230DE7C6C()
{
  v1 = v0[35];
  MEMORY[0x23191E910](v0[38]);
  sub_230D1CE3C(v1);
  v2 = v0[1];

  return v2();
}

uint64_t sub_230DE7CD8()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);
  sub_230D1CE3C(v2);
  sub_230D1CDE0(v2, v0 + 96);

  return MEMORY[0x2822009F8](sub_230DE7D54, v1, 0);
}

uint64_t sub_230DE7D54()
{
  v1 = v0[37];
  sub_230D1CDE0(v0[35], (v0 + 17));

  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_230DE7E48;
  v3 = v0[37];
  v4 = v0[35];

  return (sub_230D7F790)(7);
}

uint64_t sub_230DE7E48(uint64_t a1)
{
  v2 = *(*v1 + 312);
  v3 = *(*v1 + 296);
  v4 = *(*v1 + 280);
  v6 = *v1;
  *(*v1 + 320) = a1;

  sub_230D1CE3C(v4);

  return MEMORY[0x2822009F8](sub_230DE7F84, v3, 0);
}

uint64_t sub_230DE7F84()
{
  v1 = *(v0 + 272);
  sub_230D1CE3C(*(v0 + 280));

  return MEMORY[0x2822009F8](sub_230DE7FEC, v1, 0);
}

uint64_t sub_230DE7FEC()
{
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[35];
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000033, 0x8000000230E836F0);
  v0[32] = v1;
  v4 = sub_230E69890();
  MEMORY[0x23191DA00](v4);

  MEMORY[0x23191DA00](0x7220656863616320, 0xEE007364726F6365);
  sub_230E68950();

  sub_230D1CDE0(v3, (v0 + 22));

  return MEMORY[0x2822009F8](sub_230DE8124, v2, 0);
}

uint64_t sub_230DE8124()
{
  v1 = v0[37];
  sub_230D1CDE0(v0[35], (v0 + 27));

  v2 = swift_task_alloc();
  v0[41] = v2;
  *v2 = v0;
  v2[1] = sub_230DE81F8;
  v3 = v0[37];
  v4 = v0[35];

  return (sub_230D81570)(7);
}

uint64_t sub_230DE81F8(uint64_t a1)
{
  v2 = *(*v1 + 328);
  v3 = *(*v1 + 296);
  v4 = *(*v1 + 280);
  v6 = *v1;
  *(*v1 + 336) = a1;

  sub_230D1CE3C(v4);

  return MEMORY[0x2822009F8](sub_230DE8334, v3, 0);
}

uint64_t sub_230DE8334()
{
  v1 = *(v0 + 272);
  sub_230D1CE3C(*(v0 + 280));

  return MEMORY[0x2822009F8](sub_230DE839C, v1, 0);
}

uint64_t sub_230DE839C()
{
  v1 = v0[42];
  if (v1 < 1)
  {
    v4 = v0[37];
  }

  else
  {
    v2 = v0[37];
    sub_230E69540();
    MEMORY[0x23191DA00](0xD000000000000036, 0x8000000230E83730);
    v0[33] = v1;
    v3 = sub_230E69890();
    MEMORY[0x23191DA00](v3);

    MEMORY[0x23191DA00](0xD000000000000010, 0x8000000230E83770);
    sub_230E68950();
  }

  v5 = v0[1];

  return v5();
}

uint64_t ServicesIntelligenceProvider.cleanupExpiredCache(requestContext:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  *(v2 + 168) = v1;
  *(v2 + 176) = v3;
  v5 = a1[2];
  v6 = a1[3];
  *(v2 + 184) = v4;
  *(v2 + 192) = v5;
  v7 = a1[4];
  *(v2 + 200) = v6;
  *(v2 + 208) = v7;
  *(v2 + 280) = 0;
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 72) = v5;
  *(v2 + 80) = v6;
  *(v2 + 88) = v7;
  v9 = swift_task_alloc();
  *(v2 + 216) = v9;
  *v9 = v2;
  v9[1] = sub_230DE8598;

  return ServicesIntelligenceProvider.getKVDatabaseClient(domain:dataClass:requestContext:)((v2 + 280), v8, v2 + 56);
}

uint64_t sub_230DE8598(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  v4[28] = a1;
  v4[29] = v1;

  if (v1)
  {
    v7 = v4[21];
    v8 = sub_230DE8DA8;
  }

  else
  {
    v8 = sub_230DE86C8;
    v7 = a1;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_230DE86C8()
{
  v1 = *(v0 + 192);
  if (v1)
  {
    v3 = *(v0 + 200);
    v2 = *(v0 + 208);
    v4 = *(v0 + 176);
    v5 = *(v0 + 184);
    *(v0 + 248) = v1;
    *(v0 + 256) = v2;
    v6 = *(v0 + 224);
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v4, v5, v1);
    v7 = swift_task_alloc();
    *(v0 + 264) = v7;
    *v7 = v0;
    v7[1] = sub_230DE8AD0;
    v8 = *(v0 + 224);

    return (sub_230D81570)(7, v0 + 16);
  }

  else
  {
    *(v0 + 281) = 7;
    v10 = swift_task_alloc();
    *(v0 + 240) = v10;
    *v10 = v0;
    v10[1] = sub_230DE8884;

    return static RequestContext.from(_:correlationID:)(v0 + 96, (v0 + 281), 0, 0);
  }
}

uint64_t sub_230DE8884()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230DE8994, v2, 0);
}

uint64_t sub_230DE8994()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 121);
  v6 = *(v0 + 128);
  *(v0 + 248) = v3;
  *(v0 + 256) = v6;
  v7 = *(v0 + 224);
  v9 = *(v0 + 200);
  v8 = *(v0 + 208);
  v11 = *(v0 + 184);
  v10 = *(v0 + 192);
  *(v0 + 16) = v1;
  v12 = *(v0 + 176);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;

  sub_230D0585C(v12, v11, v10);
  v13 = swift_task_alloc();
  *(v0 + 264) = v13;
  *v13 = v0;
  v13[1] = sub_230DE8AD0;
  v14 = *(v0 + 224);

  return (sub_230D81570)(7, v0 + 16);
}

uint64_t sub_230DE8AD0(uint64_t a1)
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 256);
  v4 = *(*v1 + 248);
  v5 = *(*v1 + 224);
  v6 = *(*v1 + 168);
  v8 = *v1;
  *(*v1 + 272) = a1;

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](sub_230DE8C4C, v6, 0);
}

uint64_t sub_230DE8C4C()
{
  v1 = v0[34];
  if (v1 < 1)
  {
    v4 = v0[28];
    sub_230E68950();
  }

  else
  {
    v2 = v0[28];
    sub_230E69540();
    MEMORY[0x23191DA00](0xD00000000000003FLL, 0x8000000230E83690);
    v0[20] = v1;
    v3 = sub_230E69890();
    MEMORY[0x23191DA00](v3);

    MEMORY[0x23191DA00](0xD000000000000016, 0x8000000230E836D0);
    sub_230E68950();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_230DE8DA8()
{
  v1 = v0[29];
  sub_230E69540();
  v0[17] = 0;
  v0[18] = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD00000000000004ALL, 0x8000000230E835F0);
  v0[19] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  v2 = v0[17];
  v3 = v0[18];
  sub_230E68950();

  MEMORY[0x23191E910](v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_230DE8EB0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CD50, &qword_230E7AF40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v17[-v9 - 8];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DEA524();
  sub_230E69A50();
  v18 = *v3;
  v19 = v18;
  v17[23] = 0;
  sub_230DEA578(&v19, v17);
  sub_230D2C474();
  sub_230E69850();
  sub_230D0F4A8(v18, *(&v18 + 1));
  if (!v2)
  {
    v12 = *(v3 + 2);
    v13 = *(v3 + 3);
    LOBYTE(v18) = 1;
    sub_230E69810();
    v14 = *(v3 + 4);
    LOBYTE(v18) = 2;
    sub_230E69830();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_230DE906C()
{
  v1 = 0x6D75736B63656863;
  if (*v0 != 1)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65736E6F70736572;
  }
}

uint64_t sub_230DE90D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230DEA168(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230DE90FC(uint64_t a1)
{
  v2 = sub_230DEA524();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DE9138(uint64_t a1)
{
  v2 = sub_230DEA524();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_230DE9174@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_230DEA28C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_230DE91BC(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_230DE8EB0(a1);
}

uint64_t sub_230DE91F8(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_230E68F20();
      sub_230DE9E8C(&qword_27DB5CD00, MEMORY[0x277CC5540]);
      result = sub_230E68EE0();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_230DE93D8(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230DE93D8(uint64_t a1, uint64_t a2)
{
  result = sub_230E68730();
  if (!result || (result = sub_230E68750(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_230E68740();
      sub_230E68F20();
      sub_230DE9E8C(&qword_27DB5CD00, MEMORY[0x277CC5540]);
      return sub_230E68EE0();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_230DE94B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 184) = a3;
  *(v4 + 192) = a4;
  *(v4 + 176) = a2;
  v7 = *(a3 + 16);
  *(v4 + 200) = *a3;
  *(v4 + 216) = v7;
  *(v4 + 232) = *(a3 + 32);
  *(v4 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  *(v4 + 88) = sub_230DE9ED4(&qword_27DB5ABF8);
  *(v4 + 56) = a1;

  return MEMORY[0x2822009F8](sub_230DE9590, a4, 0);
}

uint64_t sub_230DE9590()
{
  v1 = *(v0 + 216);
  if (v1)
  {
    v3 = *(v0 + 224);
    v2 = *(v0 + 232);
    v5 = *(v0 + 200);
    v4 = *(v0 + 208);
    *(v0 + 248) = v1;
    *(v0 + 256) = v2;
    v6 = *(v0 + 184);
    v7 = *(v0 + 192);
    v8 = *(v0 + 176);
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;
    v9 = swift_task_alloc();
    *(v0 + 264) = v9;
    v9[2] = v0 + 56;
    v9[3] = v7;
    v9[4] = v0 + 16;
    v9[5] = v8;
    sub_230D0FA64(v6, v0 + 136, &qword_27DB5B8B8, &qword_230E7ADD0);
    v10 = swift_task_alloc();
    *(v0 + 272) = v10;
    *v10 = v0;
    v10[1] = sub_230D6633C;
    v11 = *(v0 + 192);

    return (sub_230D18BFC)(8, v0 + 16, &unk_230E7ADF0, v9);
  }

  else
  {
    *(v0 + 288) = 8;
    v13 = swift_task_alloc();
    *(v0 + 240) = v13;
    *v13 = v0;
    v13[1] = sub_230DE976C;

    return static RequestContext.from(_:correlationID:)(v0 + 96, (v0 + 288), 0, 0);
  }
}

uint64_t sub_230DE976C()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230DE987C, v2, 0);
}

uint64_t sub_230DE987C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 121);
  v6 = *(v0 + 128);
  *(v0 + 248) = v3;
  *(v0 + 256) = v6;
  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  *(v0 + 16) = v1;
  v9 = *(v0 + 176);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;
  v10 = swift_task_alloc();
  *(v0 + 264) = v10;
  v10[2] = v0 + 56;
  v10[3] = v8;
  v10[4] = v0 + 16;
  v10[5] = v9;
  sub_230D0FA64(v7, v0 + 136, &qword_27DB5B8B8, &qword_230E7ADD0);
  v11 = swift_task_alloc();
  *(v0 + 272) = v11;
  *v11 = v0;
  v11[1] = sub_230D6633C;
  v12 = *(v0 + 192);

  return (sub_230D18BFC)(8, v0 + 16, &unk_230E7ADF0, v10);
}

uint64_t sub_230DE99C4(uint64_t a1, unint64_t a2)
{
  v4 = sub_230E68F20();
  *&v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_230E68F10();
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v34 - v16;
  sub_230DE9E8C(&qword_27DB5CD00, MEMORY[0x277CC5540]);
  sub_230E68F00();
  sub_230D0DD0C(a1, a2);
  sub_230DE91F8(a1, a2);
  sub_230D0F4A8(a1, a2);
  sub_230E68EF0();
  (*(v38 + 8))(v8, v4);
  v18 = *(v37 + 16);
  v35 = v17;
  v18(v14, v17, v9);
  sub_230DE9E8C(&qword_27DB5CD08, MEMORY[0x277CC5290]);
  v36 = v9;
  result = sub_230E69160();
  v20 = v39;
  v21 = v40;
  v22 = *(v39 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v40 == v22)
  {
LABEL_2:

    v39 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
    sub_230DE9ED4(&qword_281565F50);
    v24 = sub_230E68FF0();

    (*(v37 + 8))(v35, v36);
    return v24;
  }

  else
  {
    v38 = xmmword_230E6B3B0;
    v25 = v40;
    while ((v21 & 0x8000000000000000) == 0)
    {
      if (v25 >= *(v20 + 16))
      {
        goto LABEL_13;
      }

      v26 = *(v20 + 32 + v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C208, &qword_230E75180);
      v27 = swift_allocObject();
      *(v27 + 16) = v38;
      *(v27 + 56) = MEMORY[0x277D84B78];
      *(v27 + 64) = MEMORY[0x277D84BC0];
      *(v27 + 32) = v26;
      v28 = sub_230E69090();
      v30 = v29;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_230E49E88(0, *(v23 + 16) + 1, 1, v23);
        v23 = result;
      }

      v32 = *(v23 + 16);
      v31 = *(v23 + 24);
      if (v32 >= v31 >> 1)
      {
        result = sub_230E49E88((v31 > 1), v32 + 1, 1, v23);
        v23 = result;
      }

      ++v25;
      *(v23 + 16) = v32 + 1;
      v33 = v23 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
      if (v22 == v25)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

unint64_t sub_230DE9DE4()
{
  result = qword_27DB5CCF0;
  if (!qword_27DB5CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CCF0);
  }

  return result;
}

unint64_t sub_230DE9E38()
{
  result = qword_27DB5CCF8;
  if (!qword_27DB5CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CCF8);
  }

  return result;
}

uint64_t sub_230DE9E8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_230DE9ED4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DB5D8F0, &unk_230E70E80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230DE9F24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_230D1BF00;

  return sub_230E1C6B0(a1, v4, v5, v7, v6);
}

uint64_t sub_230DE9FF0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_230DEA05C()
{
  result = qword_27DB5CD18;
  if (!qword_27DB5CD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CD18);
  }

  return result;
}

unint64_t sub_230DEA0B0()
{
  result = qword_27DB5CD20;
  if (!qword_27DB5CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CD20);
  }

  return result;
}

unint64_t sub_230DEA104()
{
  result = qword_27DB5CD38;
  if (!qword_27DB5CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CD38);
  }

  return result;
}

uint64_t sub_230DEA168(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEC00000061746144;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D75736B63656863 && a2 == 0xE800000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 2;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230DEA28C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CD40, &qword_230E7AF38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DEA524();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  sub_230D2C420();
  sub_230E69760();
  v22 = a2;
  v13 = v24;
  v12 = v25;
  LOBYTE(v24) = 1;
  v20 = sub_230E69720();
  v21 = v14;
  LOBYTE(v24) = 2;
  sub_230E69740();
  v16 = v15;
  (*(v6 + 8))(v10, v5);
  sub_230D0DD0C(v13, v12);
  v17 = v21;

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_230D0F4A8(v13, v12);

  v19 = v22;
  *v22 = v13;
  v19[1] = v12;
  v19[2] = v20;
  v19[3] = v17;
  v19[4] = v16;
  return result;
}

unint64_t sub_230DEA524()
{
  result = qword_27DB5CD48;
  if (!qword_27DB5CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CD48);
  }

  return result;
}

unint64_t sub_230DEA5E8()
{
  result = qword_27DB5CD58;
  if (!qword_27DB5CD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CD58);
  }

  return result;
}

unint64_t sub_230DEA640()
{
  result = qword_27DB5CD60;
  if (!qword_27DB5CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CD60);
  }

  return result;
}

unint64_t sub_230DEA698()
{
  result = qword_27DB5CD68;
  if (!qword_27DB5CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CD68);
  }

  return result;
}

uint64_t Configuration.useCases.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Configuration.kvDatabases.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Configuration.sqlDatabases.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Configuration.vectorDatabases.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Configuration.logging.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 32);

  *(v1 + 32) = v2;
  return result;
}

uint64_t Configuration.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CD70, &qword_230E7B060);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v21 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DEAD9C();
  sub_230E69A30();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CD78, &qword_230E7B068);
    v24 = 0;
    sub_230DEADF0();
    sub_230E69700();
    v13 = v25;
    v14 = MEMORY[0x277D84F90];
    if (!v25)
    {
      v13 = MEMORY[0x277D84F90];
    }

    v23 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CD90, &qword_230E7B070);
    v24 = 1;
    sub_230DEAEC8();
    sub_230E69700();
    if (v25)
    {
      v15 = v25;
    }

    else
    {
      v15 = v14;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CDA0, &qword_230E7B078);
    v24 = 2;
    sub_230DEAF4C(&qword_27DB5CDA8, &qword_27DB5AC40);
    sub_230E69700();
    v22 = a2;
    if (v25)
    {
      v16 = v25;
    }

    else
    {
      v16 = v14;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CDB0, &qword_230E7B080);
    v24 = 3;
    sub_230DEAFD4();
    sub_230E69700();
    v21 = v6;
    if (v25)
    {
      v17 = v25;
    }

    else
    {
      v17 = v14;
    }

    v24 = 4;
    sub_230DEB058();
    sub_230E69700();
    v18 = v25;

    LOBYTE(v25) = 5;
    v19 = sub_230E69750();
    (*(v21 + 8))(v10, v5);
    v20 = v22;
    *v22 = v23;
    v20[1] = v15;
    v20[2] = v16;
    v20[3] = v17;
    v20[4] = v18;
    v20[5] = v19;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

unint64_t sub_230DEAD9C()
{
  result = qword_281566790;
  if (!qword_281566790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566790);
  }

  return result;
}

unint64_t sub_230DEADF0()
{
  result = qword_27DB5CD80;
  if (!qword_27DB5CD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5CD78, &qword_230E7B068);
    sub_230DEAE74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CD80);
  }

  return result;
}

unint64_t sub_230DEAE74()
{
  result = qword_27DB5CD88;
  if (!qword_27DB5CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CD88);
  }

  return result;
}

unint64_t sub_230DEAEC8()
{
  result = qword_27DB5CD98;
  if (!qword_27DB5CD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5CD90, &qword_230E7B070);
    sub_230D0D730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CD98);
  }

  return result;
}

uint64_t sub_230DEAF4C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5CDA0, &qword_230E7B078);
    sub_230DEB730(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230DEAFD4()
{
  result = qword_27DB5CDB8;
  if (!qword_27DB5CDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5CDB0, &qword_230E7B080);
    sub_230D45B30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CDB8);
  }

  return result;
}

unint64_t sub_230DEB058()
{
  result = qword_27DB5CDC0;
  if (!qword_27DB5CDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CDC0);
  }

  return result;
}

uint64_t Configuration.init(useCases:kvDatabases:sqlDatabases:vectorDatabases:logging:version:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v9 = *a5;
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;

  a7[4] = v9;
  a7[5] = a6;
  return result;
}

uint64_t sub_230DEB0F0()
{
  v1 = *v0;
  v2 = 0x7365736143657375;
  v3 = 0x6144726F74636576;
  v4 = 0x676E6967676F6CLL;
  if (v1 != 4)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x616261746144766BLL;
  if (v1 != 1)
  {
    v5 = 0x62617461446C7173;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_230DEB1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230DEBBA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230DEB1F0(uint64_t a1)
{
  v2 = sub_230DEAD9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEB22C(uint64_t a1)
{
  v2 = sub_230DEAD9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Configuration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CDC8, &qword_230E7B088);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v22 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[3];
  v25 = v1[2];
  v26 = v10;
  v13 = v1[5];
  v23 = v1[4];
  v24 = v12;
  v15 = a1[3];
  v14 = a1[4];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v15);
  sub_230DEAD9C();

  sub_230E69A50();
  v28 = v11;
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CD78, &qword_230E7B068);
  sub_230DEB5D4();
  sub_230E69850();
  if (v2)
  {
  }

  else
  {
    v20 = v24;
    v19 = v25;

    v28 = v26;
    v27 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CD90, &qword_230E7B070);
    sub_230DEB6AC();
    sub_230E69850();
    v28 = v19;
    v27 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CDA0, &qword_230E7B078);
    sub_230DEAF4C(&qword_281565F80, &qword_281566328);
    sub_230E69850();
    v28 = v20;
    v27 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CDB0, &qword_230E7B080);
    sub_230DEB774();
    sub_230E69850();
    v28 = v23;
    v27 = 4;
    sub_230DEB7F8();

    sub_230E697F0();

    LOBYTE(v28) = 5;
    sub_230E69840();
  }

  return (*(v5 + 8))(v9, v18);
}

unint64_t sub_230DEB5D4()
{
  result = qword_27DB5CDD0;
  if (!qword_27DB5CDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5CD78, &qword_230E7B068);
    sub_230DEB658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CDD0);
  }

  return result;
}

unint64_t sub_230DEB658()
{
  result = qword_27DB5CDD8;
  if (!qword_27DB5CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CDD8);
  }

  return result;
}

unint64_t sub_230DEB6AC()
{
  result = qword_281565F88;
  if (!qword_281565F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5CD90, &qword_230E7B070);
    sub_230D0D784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281565F88);
  }

  return result;
}

uint64_t sub_230DEB730(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SQLDatabaseConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230DEB774()
{
  result = qword_281565F78;
  if (!qword_281565F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5CDB0, &qword_230E7B080);
    sub_230D45B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281565F78);
  }

  return result;
}

unint64_t sub_230DEB7F8()
{
  result = qword_2815664E0;
  if (!qword_2815664E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815664E0);
  }

  return result;
}

uint64_t sub_230DEB87C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_230DEB8C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_230DEB934()
{
  result = qword_27DB5CDE0;
  if (!qword_27DB5CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CDE0);
  }

  return result;
}

unint64_t sub_230DEB98C()
{
  result = qword_281566780;
  if (!qword_281566780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566780);
  }

  return result;
}

unint64_t sub_230DEB9E4()
{
  result = qword_281566788;
  if (!qword_281566788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566788);
  }

  return result;
}

uint64_t sub_230DEBA38()
{
  v0 = 0;
  v1 = MEMORY[0x277D84F90];
  v2 = MEMORY[0x277D84F90];
  while (1)
  {
    v3 = byte_2845A5CE0[v0 + 32];
    sub_230D49110(0, 1, 0);
    v4 = v1;
    v6 = *(v1 + 16);
    v5 = *(v1 + 24);
    v7 = v6 + 1;
    if (v6 >= v5 >> 1)
    {
      sub_230D49110((v5 > 1), v6 + 1, 1);
      v4 = v1;
    }

    *(v4 + 16) = v7;
    *(v4 + 32 + v6) = v3;
    v8 = *(v2 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v9 > *(v2 + 3) >> 1)
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      v2 = sub_230E4AB9C(isUniquelyReferenced_nonNull_native, v11, 1, v2);
    }

    if (!*(v4 + 16))
    {
      goto LABEL_19;
    }

    v12 = *(v2 + 2);
    if ((*(v2 + 3) >> 1) - v12 <= v6)
    {
      goto LABEL_17;
    }

    memcpy(&v2[v12 + 32], (v4 + 32), v6 + 1);

    v13 = *(v2 + 2);
    v14 = __OFADD__(v13, v7);
    v15 = v13 + v7;
    if (v14)
    {
      goto LABEL_18;
    }

    *(v2 + 2) = v15;
    if (++v0 == 10)
    {
      return v2;
    }
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

uint64_t sub_230DEBBA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365736143657375 && a2 == 0xE800000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616261746144766BLL && a2 == 0xEB00000000736573 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x62617461446C7173 && a2 == 0xEC00000073657361 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6144726F74636576 && a2 == 0xEF73657361626174 || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E6967676F6CLL && a2 == 0xE700000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_230DEBDB0(char a1)
{
  result = 0x6F6C6C6568;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
    case 11:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6572546863746566;
      break;
    case 5:
      result = 0x61436573556E7572;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0x74654D6873756C66;
      break;
    case 8:
    case 10:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0x44564B6E49746573;
      break;
    case 13:
    case 14:
    case 16:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0xD00000000000001ALL;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_230DEBFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230DF2D88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230DEBFF4(uint64_t a1)
{
  v2 = sub_230DEE464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC030(uint64_t a1)
{
  v2 = sub_230DEE464();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC06C(uint64_t a1)
{
  v2 = sub_230DEEA14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC0A8(uint64_t a1)
{
  v2 = sub_230DEEA14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC0E4(uint64_t a1)
{
  v2 = sub_230DEE774();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC120(uint64_t a1)
{
  v2 = sub_230DEE774();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC15C(uint64_t a1)
{
  v2 = sub_230DEEB10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC198(uint64_t a1)
{
  v2 = sub_230DEEB10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC1D4(uint64_t a1)
{
  v2 = sub_230DEE96C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC210(uint64_t a1)
{
  v2 = sub_230DEE96C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC24C(uint64_t a1)
{
  v2 = sub_230DEEC0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC288(uint64_t a1)
{
  v2 = sub_230DEEC0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC2C4(uint64_t a1)
{
  v2 = sub_230DEEABC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC300(uint64_t a1)
{
  v2 = sub_230DEEABC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC33C(uint64_t a1)
{
  v2 = sub_230DEE870();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC378(uint64_t a1)
{
  v2 = sub_230DEE870();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC3B4(uint64_t a1)
{
  v2 = sub_230DEED5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC3F0(uint64_t a1)
{
  v2 = sub_230DEED5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC42C(uint64_t a1)
{
  v2 = sub_230DEE5D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC468(uint64_t a1)
{
  v2 = sub_230DEE5D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC4A4(uint64_t a1)
{
  v2 = sub_230DEE6CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC4E0(uint64_t a1)
{
  v2 = sub_230DEE6CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC51C(uint64_t a1)
{
  v2 = sub_230DEECB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC558(uint64_t a1)
{
  v2 = sub_230DEECB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC594(uint64_t a1)
{
  v2 = sub_230DEEC60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC5D0(uint64_t a1)
{
  v2 = sub_230DEEC60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC60C(uint64_t a1)
{
  v2 = sub_230DEEBB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC648(uint64_t a1)
{
  v2 = sub_230DEEBB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC684(uint64_t a1)
{
  v2 = sub_230DEE624();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC6C0(uint64_t a1)
{
  v2 = sub_230DEE624();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_230E698C0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230E698C0();

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

uint64_t sub_230DEC7C8(uint64_t a1)
{
  v2 = sub_230DEE81C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC804(uint64_t a1)
{
  v2 = sub_230DEE81C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC840(uint64_t a1)
{
  v2 = sub_230DEE57C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC87C(uint64_t a1)
{
  v2 = sub_230DEE57C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC8B8(uint64_t a1)
{
  v2 = sub_230DEE4D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC8F4(uint64_t a1)
{
  v2 = sub_230DEE4D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC930(uint64_t a1)
{
  v2 = sub_230DEE8C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC96C(uint64_t a1)
{
  v2 = sub_230DEE8C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC9A8(uint64_t a1)
{
  v2 = sub_230DEED08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC9E4(uint64_t a1)
{
  v2 = sub_230DEED08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ServicesIntelligenceXPCRequest.encode(to:)(void *a1)
{
  v2 = v1;
  *&v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CDE8, &qword_230E7B270);
  *&v247 = *(v248 - 8);
  v4 = *(v247 + 64);
  MEMORY[0x28223BE20](v248, v5);
  v244 = &v195 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CDF0, &qword_230E7B278);
  v241 = *(v7 - 8);
  v242 = v7;
  v8 = *(v241 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v238 = &v195 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CDF8, &qword_230E7B280);
  v233 = *(v11 - 8);
  v234 = v11;
  v12 = *(v233 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v231 = &v195 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE00, &qword_230E7B288);
  v245 = *(v15 - 8);
  v246 = v15;
  v16 = *(v245 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v243 = &v195 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE08, &qword_230E7B290);
  v239 = *(v19 - 8);
  v240 = v19;
  v20 = *(v239 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v237 = &v195 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE10, &qword_230E7B298);
  v235 = *(v23 - 8);
  v236 = v23;
  v24 = *(v235 + 64);
  MEMORY[0x28223BE20](v23, v25);
  v232 = &v195 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE18, &qword_230E7B2A0);
  v229 = *(v27 - 8);
  v230 = v27;
  v28 = *(v229 + 64);
  MEMORY[0x28223BE20](v27, v29);
  v228 = &v195 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE20, &qword_230E7B2A8);
  v226 = *(v31 - 8);
  v227 = v31;
  v32 = *(v226 + 64);
  MEMORY[0x28223BE20](v31, v33);
  v223 = &v195 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE28, &qword_230E7B2B0);
  v224 = *(v35 - 8);
  v225 = v35;
  v36 = *(v224 + 64);
  MEMORY[0x28223BE20](v35, v37);
  v220 = &v195 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE30, &qword_230E7B2B8);
  v221 = *(v39 - 8);
  v222 = v39;
  v40 = *(v221 + 64);
  MEMORY[0x28223BE20](v39, v41);
  v219 = &v195 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE38, &qword_230E7B2C0);
  v217 = *(v43 - 8);
  v218 = v43;
  v44 = *(v217 + 64);
  MEMORY[0x28223BE20](v43, v45);
  v216 = &v195 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE40, &qword_230E7B2C8);
  v214 = *(v47 - 8);
  v215 = v47;
  v48 = *(v214 + 64);
  MEMORY[0x28223BE20](v47, v49);
  v213 = &v195 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE48, &qword_230E7B2D0);
  v211 = *(v51 - 8);
  v212 = v51;
  v52 = *(v211 + 64);
  MEMORY[0x28223BE20](v51, v53);
  v210 = &v195 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE50, &qword_230E7B2D8);
  v208 = *(v55 - 8);
  v209 = v55;
  v56 = *(v208 + 64);
  MEMORY[0x28223BE20](v55, v57);
  v207 = &v195 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE58, &qword_230E7B2E0);
  v205 = *(v59 - 8);
  v206 = v59;
  v60 = *(v205 + 64);
  MEMORY[0x28223BE20](v59, v61);
  v204 = &v195 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE60, &qword_230E7B2E8);
  v202 = *(v63 - 8);
  v203 = v63;
  v64 = *(v202 + 64);
  MEMORY[0x28223BE20](v63, v65);
  v201 = &v195 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE68, &qword_230E7B2F0);
  v199 = *(v67 - 8);
  v200 = v67;
  v68 = *(v199 + 64);
  MEMORY[0x28223BE20](v67, v69);
  v198 = &v195 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE70, &qword_230E7B2F8);
  v196 = *(v71 - 8);
  v197 = v71;
  v72 = *(v196 + 64);
  MEMORY[0x28223BE20](v71, v73);
  v75 = &v195 - v74;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE78, &qword_230E7B300);
  v195 = *(v76 - 8);
  v77 = *(v195 + 64);
  MEMORY[0x28223BE20](v76, v78);
  v80 = &v195 - v79;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE80, &qword_230E7B308);
  v249 = *(v252 - 8);
  v81 = *(v249 + 64);
  MEMORY[0x28223BE20](v252, v82);
  v84 = &v195 - v83;
  v85 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DEE464();
  v251 = v84;
  sub_230E69A50();
  v86 = v2[7];
  v260[6] = v2[6];
  v261[0] = v86;
  *(v261 + 9) = *(v2 + 121);
  v87 = v2[3];
  v260[2] = v2[2];
  v260[3] = v87;
  v88 = v2[5];
  v260[4] = v2[4];
  v260[5] = v88;
  v89 = v2[1];
  v260[0] = *v2;
  v260[1] = v89;
  switch(sub_230DEE4B8(v260))
  {
    case 1u:
      v153 = sub_230D04BB0(v260);
      LOBYTE(v253[0]) = 5;
      sub_230DEEBB8();
      v91 = v207;
      v93 = v251;
      v92 = v252;
      sub_230E697A0();
      v154 = *v153;
      v155 = *(v153 + 32);
      v253[1] = *(v153 + 16);
      v254 = v155;
      v253[0] = v154;
      v156 = *(v153 + 48);
      v157 = *(v153 + 64);
      v158 = *(v153 + 80);
      LOBYTE(v258) = *(v153 + 96);
      v256 = v157;
      v257 = v158;
      v255 = v156;
      sub_230DC7C2C();
      v94 = v209;
      sub_230E69850();
      v95 = v208;
      goto LABEL_28;
    case 2u:
      v135 = sub_230D04BB0(v260);
      v136 = *v135;
      v247 = *(v135 + 16);
      v248 = v136;
      v137 = *(v135 + 32);
      v138 = *(v135 + 40);
      LOBYTE(v253[0]) = 6;
      sub_230DEEB10();
      v139 = v210;
      v112 = v251;
      v111 = v252;
      sub_230E697A0();
      v253[0] = v248;
      v253[1] = v247;
      *&v254 = v137;
      *(&v254 + 1) = v138;
      sub_230DEEB64();
      v140 = v212;
      sub_230E69850();
      v141 = v211;
      goto LABEL_17;
    case 3u:
      v142 = sub_230D04BB0(v260);
      v143 = *v142;
      v144 = v142[1];
      LOBYTE(v253[0]) = 7;
      sub_230DEEABC();
      v139 = v213;
      v112 = v251;
      v111 = v252;
      sub_230E697A0();
      v140 = v215;
      sub_230E69810();
      v141 = v214;
LABEL_17:
      (*(v141 + 8))(v139, v140);
      return (*(v249 + 8))(v112, v111);
    case 4u:
      v116 = sub_230D04BB0(v260);
      v117 = *v116;
      v118 = *(v116 + 16);
      *&v248 = *(v116 + 8);
      v119 = *(v116 + 32);
      v246 = *(v116 + 24);
      *&v247 = v118;
      v121 = *(v116 + 40);
      v120 = *(v116 + 48);
      LOBYTE(v253[0]) = 8;
      sub_230DEEA14();
      v110 = v216;
      v112 = v251;
      v111 = v252;
      sub_230E697A0();
      LOBYTE(v253[0]) = v117;
      v262 = 0;
      sub_230D0D0D4();
      v113 = v218;
      v122 = v250;
      sub_230E69850();
      if (v122)
      {
        v115 = v217;
        goto LABEL_9;
      }

      v186 = v119;
      v187 = v246;
      LOBYTE(v253[0]) = 1;
      sub_230E69810();
      *&v253[0] = v187;
      *(&v253[0] + 1) = v186;
      *&v253[1] = v121;
      *(&v253[1] + 1) = v120;
      v262 = 2;
      sub_230DEEA68();
      sub_230E69850();
      v190 = v251;
      v191 = v217;
      goto LABEL_46;
    case 5u:
      v159 = sub_230D04BB0(v260);
      v160 = *v159;
      LOBYTE(v253[0]) = 9;
      sub_230DEE96C();
      v161 = v219;
      v112 = v251;
      v111 = v252;
      sub_230E697A0();
      LOBYTE(v253[0]) = v160;
      v262 = 0;
      sub_230D0D0D4();
      v162 = v222;
      v163 = v250;
      sub_230E69850();
      if (!v163)
      {
        v188 = *(v159 + 8);
        v189 = *(v159 + 16);
        LOBYTE(v253[0]) = 1;
        sub_230E69810();
        v192 = *(v159 + 104);
        v256 = *(v159 + 88);
        v257 = v192;
        v258 = *(v159 + 120);
        v259 = *(v159 + 136);
        v193 = *(v159 + 40);
        v253[0] = *(v159 + 24);
        v253[1] = v193;
        v194 = *(v159 + 72);
        v254 = *(v159 + 56);
        v255 = v194;
        v262 = 2;
        sub_230DEE9C0();
        sub_230E69850();
      }

      (*(v221 + 8))(v161, v162);
      return (*(v249 + 8))(v112, v111);
    case 6u:
      v165 = sub_230D04BB0(v260);
      v166 = *v165;
      v167 = *(v165 + 16);
      *&v248 = *(v165 + 8);
      v168 = *(v165 + 24);
      v247 = *(v165 + 32);
      v169 = *(v165 + 48);
      LOBYTE(v253[0]) = 10;
      sub_230DEE8C4();
      v170 = v220;
      v172 = v251;
      v171 = v252;
      sub_230E697A0();
      LOBYTE(v253[0]) = v166;
      v262 = 0;
      sub_230D0D0D4();
      v173 = v225;
      v174 = v250;
      sub_230E69850();
      if (!v174)
      {
        v250 = v169;
        LOBYTE(v253[0]) = 1;
        sub_230E69810();
        *&v253[0] = v168;
        *(v253 + 8) = v247;
        *(&v253[1] + 1) = v250;
        v262 = 2;
        sub_230DEE918();
        sub_230E69850();
      }

      (*(v224 + 8))(v170, v173);
      return (*(v249 + 8))(v172, v171);
    case 7u:
      v145 = sub_230D04BB0(v260);
      v146 = *v145;
      v248 = *(v145 + 8);
      LOBYTE(v253[0]) = 11;
      sub_230DEE870();
      v147 = v223;
      v149 = v251;
      v148 = v252;
      sub_230E697A0();
      LOBYTE(v253[0]) = v146;
      v262 = 0;
      sub_230D0D0D4();
      v150 = v227;
      v151 = v250;
      sub_230E69850();
      if (!v151)
      {
        v253[0] = v248;
        v262 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CF00, &qword_230E7B318);
        sub_230D1D1C4(&qword_27DB5CF08, &qword_27DB5CF00, &qword_230E7B318);
        sub_230E69850();
      }

      v152 = v226;
      goto LABEL_43;
    case 8u:
      v181 = sub_230D04BB0(v260);
      v182 = *v181;
      v248 = *(v181 + 8);
      LOBYTE(v253[0]) = 12;
      sub_230DEE81C();
      v147 = v228;
      v149 = v251;
      v148 = v252;
      sub_230E697A0();
      LOBYTE(v253[0]) = v182;
      v262 = 0;
      sub_230D0D0D4();
      v150 = v230;
      v183 = v250;
      sub_230E69850();
      if (!v183)
      {
        v253[0] = v248;
        v262 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CEE8, &qword_230E7B310);
        sub_230D1D1C4(&qword_27DB5CEF0, &qword_27DB5CEE8, &qword_230E7B310);
        sub_230E69850();
      }

      v152 = v229;
LABEL_43:
      (*(v152 + 8))(v147, v150);
      return (*(v249 + 8))(v149, v148);
    case 9u:
      v124 = sub_230D04BB0(v260);
      v125 = *v124;
      v126 = *(v124 + 8);
      v127 = *(v124 + 16);
      v128 = *(v124 + 24);
      LOBYTE(v253[0]) = 13;
      sub_230DEE774();
      v129 = v232;
      v131 = v251;
      v130 = v252;
      sub_230E697A0();
      LOBYTE(v253[0]) = v125;
      v262 = 0;
      sub_230D0D0D4();
      v132 = v236;
      v133 = v250;
      sub_230E69850();
      if (!v133)
      {
        LOBYTE(v253[0]) = 1;
        sub_230E69810();
        *&v253[0] = v128;
        v262 = 2;
        sub_230DEE7C8();
        sub_230E69850();
      }

      v134 = v235;
      goto LABEL_39;
    case 0xAu:
      v175 = sub_230D04BB0(v260);
      v176 = *v175;
      v177 = *(v175 + 8);
      v178 = *(v175 + 16);
      v179 = *(v175 + 24);
      LOBYTE(v253[0]) = 14;
      sub_230DEE6CC();
      v129 = v237;
      v131 = v251;
      v130 = v252;
      sub_230E697A0();
      LOBYTE(v253[0]) = v176;
      v262 = 0;
      sub_230D0D0D4();
      v132 = v240;
      v180 = v250;
      sub_230E69850();
      if (!v180)
      {
        LOBYTE(v253[0]) = 1;
        sub_230E69810();
        *&v253[0] = v179;
        v262 = 2;
        sub_230DEE720();
        sub_230E69850();
      }

      v134 = v239;
LABEL_39:
      (*(v134 + 8))(v129, v132);
      return (*(v249 + 8))(v131, v130);
    case 0xBu:
      v104 = sub_230D04BB0(v260);
      v105 = *v104;
      v106 = *(v104 + 16);
      *&v248 = *(v104 + 8);
      *&v247 = v106;
      v107 = *(v104 + 32);
      v244 = *(v104 + 24);
      v108 = *(v104 + 40);
      v109 = *(v104 + 48);
      LOBYTE(v253[0]) = 15;
      sub_230DEE624();
      v110 = v243;
      v112 = v251;
      v111 = v252;
      sub_230E697A0();
      LOBYTE(v253[0]) = v105;
      v262 = 0;
      sub_230D0D0D4();
      v113 = v246;
      v114 = v250;
      sub_230E69850();
      if (v114)
      {
        v115 = v245;
LABEL_9:
        (*(v115 + 8))(v110, v113);
        return (*(v249 + 8))(v112, v111);
      }

      else
      {
        v184 = v107;
        v185 = v244;
        LOBYTE(v253[0]) = 1;
        sub_230E69810();
        *&v253[0] = v185;
        *(&v253[0] + 1) = v184;
        *&v253[1] = v108;
        BYTE8(v253[1]) = v109;
        v262 = 2;
        sub_230DEE678();
        sub_230E69850();
        v190 = v251;
        v191 = v245;
LABEL_46:
        (*(v191 + 8))(v110, v113);
        return (*(v249 + 8))(v190, v252);
      }

    case 0xCu:
      v123 = *sub_230D04BB0(v260);
      LOBYTE(v253[0]) = 17;
      sub_230DEE57C();
      v91 = v238;
      v93 = v251;
      v92 = v252;
      sub_230E697A0();
      v94 = v242;
      sub_230E69840();
      v95 = v241;
      goto LABEL_28;
    case 0xDu:
      v164 = *sub_230D04BB0(v260);
      LOBYTE(v253[0]) = 18;
      sub_230DEE4D4();
      v91 = v244;
      v93 = v251;
      v92 = v252;
      sub_230E697A0();
      LOBYTE(v253[0]) = v164;
      sub_230DEE528();
      v94 = v248;
      sub_230E69850();
      v95 = v247;
      goto LABEL_28;
    case 0xEu:
      LOBYTE(v253[0]) = 0;
      sub_230DEED5C();
      v101 = v251;
      v102 = v252;
      sub_230E697A0();
      (*(v195 + 8))(v80, v76);
      return (*(v249 + 8))(v101, v102);
    case 0xFu:
      LOBYTE(v253[0]) = 1;
      sub_230DEED08();
      v97 = v251;
      v98 = v252;
      sub_230E697A0();
      (*(v196 + 8))(v75, v197);
      return (*(v249 + 8))(v97, v98);
    case 0x10u:
      LOBYTE(v253[0]) = 2;
      sub_230DEECB4();
      v96 = v198;
      v97 = v251;
      v98 = v252;
      sub_230E697A0();
      v100 = v199;
      v99 = v200;
      goto LABEL_33;
    case 0x11u:
      LOBYTE(v253[0]) = 3;
      sub_230DEEC60();
      v96 = v201;
      v97 = v251;
      v98 = v252;
      sub_230E697A0();
      v100 = v202;
      v99 = v203;
      goto LABEL_33;
    case 0x12u:
      LOBYTE(v253[0]) = 16;
      sub_230DEE5D0();
      v96 = v231;
      v97 = v251;
      v98 = v252;
      sub_230E697A0();
      v100 = v233;
      v99 = v234;
LABEL_33:
      (*(v100 + 8))(v96, v99);
      return (*(v249 + 8))(v97, v98);
    default:
      v90 = *sub_230D04BB0(v260);
      LOBYTE(v253[0]) = 4;
      sub_230DEEC0C();
      v91 = v204;
      v93 = v251;
      v92 = v252;
      sub_230E697A0();
      LOBYTE(v253[0]) = v90;
      sub_230D0D0D4();
      v94 = v206;
      sub_230E697F0();
      v95 = v205;
LABEL_28:
      (*(v95 + 8))(v91, v94);
      return (*(v249 + 8))(v93, v92);
  }
}

unint64_t sub_230DEE464()
{
  result = qword_27DB5CE88;
  if (!qword_27DB5CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CE88);
  }

  return result;
}

uint64_t sub_230DEE4B8(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 <= 0xDF)
  {
    return v1 >> 4;
  }

  else
  {
    return (*a1 + 14);
  }
}

unint64_t sub_230DEE4D4()
{
  result = qword_27DB5CE90;
  if (!qword_27DB5CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CE90);
  }

  return result;
}

unint64_t sub_230DEE528()
{
  result = qword_27DB5CE98;
  if (!qword_27DB5CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CE98);
  }

  return result;
}

unint64_t sub_230DEE57C()
{
  result = qword_27DB5CEA0;
  if (!qword_27DB5CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CEA0);
  }

  return result;
}

unint64_t sub_230DEE5D0()
{
  result = qword_27DB5CEA8;
  if (!qword_27DB5CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CEA8);
  }

  return result;
}

unint64_t sub_230DEE624()
{
  result = qword_27DB5CEB0;
  if (!qword_27DB5CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CEB0);
  }

  return result;
}

unint64_t sub_230DEE678()
{
  result = qword_27DB5CEB8;
  if (!qword_27DB5CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CEB8);
  }

  return result;
}

unint64_t sub_230DEE6CC()
{
  result = qword_27DB5CEC0;
  if (!qword_27DB5CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CEC0);
  }

  return result;
}

unint64_t sub_230DEE720()
{
  result = qword_27DB5CEC8;
  if (!qword_27DB5CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CEC8);
  }

  return result;
}

unint64_t sub_230DEE774()
{
  result = qword_27DB5CED0;
  if (!qword_27DB5CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CED0);
  }

  return result;
}

unint64_t sub_230DEE7C8()
{
  result = qword_27DB5CED8;
  if (!qword_27DB5CED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CED8);
  }

  return result;
}

unint64_t sub_230DEE81C()
{
  result = qword_27DB5CEE0;
  if (!qword_27DB5CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CEE0);
  }

  return result;
}

unint64_t sub_230DEE870()
{
  result = qword_27DB5CEF8;
  if (!qword_27DB5CEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CEF8);
  }

  return result;
}

unint64_t sub_230DEE8C4()
{
  result = qword_27DB5CF10;
  if (!qword_27DB5CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF10);
  }

  return result;
}

unint64_t sub_230DEE918()
{
  result = qword_27DB5CF18;
  if (!qword_27DB5CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF18);
  }

  return result;
}

unint64_t sub_230DEE96C()
{
  result = qword_27DB5CF20;
  if (!qword_27DB5CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF20);
  }

  return result;
}

unint64_t sub_230DEE9C0()
{
  result = qword_27DB5CF28;
  if (!qword_27DB5CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF28);
  }

  return result;
}

unint64_t sub_230DEEA14()
{
  result = qword_27DB5CF30;
  if (!qword_27DB5CF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF30);
  }

  return result;
}

unint64_t sub_230DEEA68()
{
  result = qword_27DB5CF38;
  if (!qword_27DB5CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF38);
  }

  return result;
}

unint64_t sub_230DEEABC()
{
  result = qword_27DB5CF40;
  if (!qword_27DB5CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF40);
  }

  return result;
}

unint64_t sub_230DEEB10()
{
  result = qword_27DB5CF48;
  if (!qword_27DB5CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF48);
  }

  return result;
}

unint64_t sub_230DEEB64()
{
  result = qword_27DB5CF50;
  if (!qword_27DB5CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF50);
  }

  return result;
}

unint64_t sub_230DEEBB8()
{
  result = qword_27DB5CF58;
  if (!qword_27DB5CF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF58);
  }

  return result;
}

unint64_t sub_230DEEC0C()
{
  result = qword_27DB5CF60;
  if (!qword_27DB5CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF60);
  }

  return result;
}

unint64_t sub_230DEEC60()
{
  result = qword_27DB5CF68;
  if (!qword_27DB5CF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF68);
  }

  return result;
}

unint64_t sub_230DEECB4()
{
  result = qword_27DB5CF70;
  if (!qword_27DB5CF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF70);
  }

  return result;
}

unint64_t sub_230DEED08()
{
  result = qword_27DB5CF78;
  if (!qword_27DB5CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF78);
  }

  return result;
}

unint64_t sub_230DEED5C()
{
  result = qword_27DB5CF80;
  if (!qword_27DB5CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF80);
  }

  return result;
}

uint64_t ServicesIntelligenceXPCRequest.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v261 = a2;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CF88, &qword_230E7B320);
  v236 = *(v260 - 8);
  v3 = *(v236 + 64);
  MEMORY[0x28223BE20](v260, v4);
  v254 = &v202 - v5;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CF90, &qword_230E7B328);
  v259 = *(v235 - 8);
  v6 = *(v259 + 64);
  MEMORY[0x28223BE20](v235, v7);
  v255 = &v202 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CF98, &qword_230E7B330);
  v229 = *(v9 - 8);
  v230 = v9;
  v10 = *(v229 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v251 = &v202 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CFA0, &qword_230E7B338);
  v14 = *(v13 - 8);
  v237 = v13;
  v238 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v256 = &v202 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CFA8, &qword_230E7B340);
  v233 = *(v18 - 8);
  v234 = v18;
  v19 = *(v233 + 64);
  MEMORY[0x28223BE20](v18, v20);
  v253 = &v202 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CFB0, &qword_230E7B348);
  v231 = *(v22 - 8);
  v232 = v22;
  v23 = *(v231 + 64);
  MEMORY[0x28223BE20](v22, v24);
  v252 = &v202 - v25;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CFB8, &qword_230E7B350);
  v228 = *(v240 - 8);
  v26 = *(v228 + 64);
  MEMORY[0x28223BE20](v240, v27);
  v250 = &v202 - v28;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CFC0, &qword_230E7B358);
  v225 = *(v239 - 8);
  v29 = *(v225 + 64);
  MEMORY[0x28223BE20](v239, v30);
  v249 = &v202 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CFC8, &qword_230E7B360);
  v226 = *(v32 - 8);
  v227 = v32;
  v33 = *(v226 + 64);
  MEMORY[0x28223BE20](v32, v34);
  v248 = &v202 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CFD0, &qword_230E7B368);
  v223 = *(v36 - 8);
  v224 = v36;
  v37 = *(v223 + 64);
  MEMORY[0x28223BE20](v36, v38);
  v247 = &v202 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CFD8, &qword_230E7B370);
  v221 = *(v40 - 8);
  v222 = v40;
  v41 = *(v221 + 64);
  MEMORY[0x28223BE20](v40, v42);
  v246 = &v202 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CFE0, &qword_230E7B378);
  v219 = *(v44 - 8);
  v220 = v44;
  v45 = *(v219 + 64);
  MEMORY[0x28223BE20](v44, v46);
  v258 = &v202 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CFE8, &qword_230E7B380);
  v217 = *(v48 - 8);
  v218 = v48;
  v49 = *(v217 + 64);
  MEMORY[0x28223BE20](v48, v50);
  v245 = &v202 - v51;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CFF0, &qword_230E7B388);
  v216 = *(v213 - 8);
  v52 = *(v216 + 64);
  MEMORY[0x28223BE20](v213, v53);
  v244 = &v202 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CFF8, &qword_230E7B390);
  v214 = *(v55 - 8);
  v215 = v55;
  v56 = *(v214 + 64);
  MEMORY[0x28223BE20](v55, v57);
  v243 = &v202 - v58;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D000, &qword_230E7B398);
  v212 = *(v257 - 8);
  v59 = *(v212 + 64);
  MEMORY[0x28223BE20](v257, v60);
  v242 = &v202 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D008, &qword_230E7B3A0);
  v210 = *(v62 - 8);
  v211 = v62;
  v63 = *(v210 + 64);
  MEMORY[0x28223BE20](v62, v64);
  v241 = &v202 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D010, &qword_230E7B3A8);
  v208 = *(v66 - 8);
  v209 = v66;
  v67 = *(v208 + 64);
  MEMORY[0x28223BE20](v66, v68);
  v70 = &v202 - v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D018, &qword_230E7B3B0);
  v207 = *(v71 - 8);
  v72 = *(v207 + 64);
  MEMORY[0x28223BE20](v71, v73);
  v75 = &v202 - v74;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D020, &unk_230E7B3B8);
  v262 = *(v76 - 8);
  v77 = *(v262 + 64);
  MEMORY[0x28223BE20](v76, v78);
  v80 = &v202 - v79;
  v81 = a1[3];
  v82 = a1[4];
  v263 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v81);
  sub_230DEE464();
  v83 = v286;
  sub_230E69A30();
  if (v83)
  {
    goto LABEL_9;
  }

  v203 = v71;
  v204 = v75;
  v205 = v70;
  v206 = 0;
  v85 = v257;
  v84 = v258;
  v87 = v259;
  v86 = v260;
  v88 = v261;
  v286 = v76;
  v89 = sub_230E69780();
  v90 = (2 * *(v89 + 16)) | 1;
  v282 = v89;
  v283 = v89 + 32;
  v284 = 0;
  v285 = v90;
  v91 = sub_230D089D0();
  if (v284 != v285 >> 1)
  {
LABEL_6:
    v96 = sub_230E69580();
    swift_allocError();
    v98 = v97;
    v99 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A5D0, &qword_230E6A950) + 48);
    *v98 = &type metadata for ServicesIntelligenceXPCRequest;
    v93 = v80;
    v94 = v286;
    sub_230E696A0();
    sub_230E69570();
    (*(*(v96 - 8) + 104))(v98, *MEMORY[0x277D84160], v96);
    swift_willThrow();
LABEL_7:
    (*(v262 + 8))(v93, v94);
LABEL_8:
    swift_unknownObjectRelease();
LABEL_9:
    v100 = v263;
    return __swift_destroy_boxed_opaque_existential_1(v100);
  }

  switch(v91)
  {
    case 0:
      v273[0] = 0;
      sub_230DEED5C();
      v92 = v204;
      v93 = v80;
      v94 = v286;
      v95 = v206;
      sub_230E69690();
      if (v95)
      {
        goto LABEL_7;
      }

      (*(v207 + 8))(v92, v203);
      (*(v262 + 8))(v93, v94);
      swift_unknownObjectRelease();
      sub_230DF163C(&v274);
      goto LABEL_33;
    case 1:
      v273[0] = 1;
      sub_230DEED08();
      v133 = v205;
      v132 = v206;
      v103 = v286;
      sub_230E69690();
      if (v132)
      {
        goto LABEL_41;
      }

      (*(v208 + 8))(v133, v209);
      (*(v262 + 8))(v80, v103);
      swift_unknownObjectRelease();
      sub_230DF1604(&v274);
      goto LABEL_33;
    case 2:
      v273[0] = 2;
      sub_230DEECB4();
      v122 = v241;
      v103 = v286;
      v123 = v206;
      sub_230E69690();
      if (v123)
      {
        goto LABEL_41;
      }

      (*(v210 + 8))(v122, v211);
      (*(v262 + 8))(v80, v103);
      swift_unknownObjectRelease();
      sub_230DF15CC(&v274);
      goto LABEL_33;
    case 3:
      v273[0] = 3;
      sub_230DEEC60();
      v127 = v242;
      v103 = v286;
      v128 = v206;
      sub_230E69690();
      if (v128)
      {
        goto LABEL_41;
      }

      (*(v212 + 8))(v127, v85);
      (*(v262 + 8))(v80, v103);
      swift_unknownObjectRelease();
      sub_230DF1594(&v274);
      goto LABEL_33;
    case 4:
      v273[0] = 4;
      sub_230DEEC0C();
      v112 = v243;
      v103 = v286;
      v113 = v206;
      sub_230E69690();
      if (v113)
      {
        goto LABEL_41;
      }

      sub_230D0D17C();
      v114 = v215;
      sub_230E69700();
      v115 = (v262 + 8);
      (*(v214 + 8))(v112, v114);
      (*v115)(v80, v103);
      swift_unknownObjectRelease();
      v273[0] = v264[0];
      sub_230DF1584(v273);
      goto LABEL_52;
    case 5:
      v273[0] = 5;
      sub_230DEEBB8();
      v137 = v244;
      v103 = v286;
      v138 = v206;
      sub_230E69690();
      if (v138)
      {
        goto LABEL_41;
      }

      sub_230DC7F8C();
      v139 = v213;
      sub_230E69760();
      v140 = (v262 + 8);
      (*(v216 + 8))(v137, v139);
      (*v140)(v80, v103);
      swift_unknownObjectRelease();
      *&v273[64] = v267;
      *&v273[80] = v268;
      v273[96] = v269;
      *v273 = v264[0];
      *&v273[16] = v264[1];
      *&v273[32] = v265;
      *&v273[48] = v266;
      sub_230DF1570(v273);
      goto LABEL_53;
    case 6:
      v273[0] = 6;
      sub_230DEEB10();
      v144 = v245;
      v103 = v286;
      v145 = v206;
      sub_230E69690();
      if (v145)
      {
        goto LABEL_41;
      }

      sub_230DF1508();
      v157 = v218;
      sub_230E69760();
      v158 = (v262 + 8);
      (*(v217 + 8))(v144, v157);
      (*v158)(v80, v103);
      swift_unknownObjectRelease();
      *v273 = v264[0];
      *&v273[16] = v264[1];
      *&v273[32] = v265;
      sub_230DF155C(v273);
LABEL_52:
      v280 = *&v273[96];
      v281[0] = *&v273[112];
      v176 = *&v273[121];
      goto LABEL_55;
    case 7:
      v273[0] = 7;
      sub_230DEEABC();
      v129 = v286;
      v130 = v206;
      sub_230E69690();
      if (v130)
      {
        goto LABEL_35;
      }

      v131 = v220;
      v172 = sub_230E69720();
      v173 = v131;
      v175 = v174;
      (*(v219 + 8))(v84, v173);
      (*(v262 + 8))(v80, v129);
      swift_unknownObjectRelease();
      *v273 = v172;
      *&v273[8] = v175;
      sub_230DF14F4(v273);
      v280 = *&v273[96];
      v281[0] = *&v273[112];
      v176 = *&v273[121];
      goto LABEL_55;
    case 8:
      v273[0] = 8;
      sub_230DEEA14();
      v152 = v246;
      v106 = v286;
      v153 = v206;
      sub_230E69690();
      if (v153)
      {
        goto LABEL_47;
      }

      v273[0] = 0;
      sub_230D0D17C();
      v160 = v222;
      sub_230E69760();
      v183 = v152;
      v184 = v272;
      v273[0] = 1;
      v260 = sub_230E69720();
      v200 = v199;
      v271 = 2;
      sub_230DF148C();
      sub_230E69760();
      (*(v221 + 8))(v183, v160);
      (*(v262 + 8))(v80, v106);
      swift_unknownObjectRelease();
      v273[0] = v184;
      *&v273[8] = v260;
      *&v273[16] = v200;
      *&v273[24] = v264[0];
      *&v273[40] = v264[1];
      sub_230DF14E0(v273);
      v280 = *&v273[96];
      v281[0] = *&v273[112];
      v176 = *&v273[121];
      goto LABEL_55;
    case 9:
      v273[0] = 9;
      sub_230DEE96C();
      v119 = v247;
      v106 = v286;
      v120 = v206;
      sub_230E69690();
      if (v120)
      {
        goto LABEL_47;
      }

      v273[0] = 0;
      sub_230D0D17C();
      v121 = v224;
      sub_230E69760();
      v167 = v119;
      v168 = v272;
      v273[0] = 1;
      v260 = sub_230E69720();
      v192 = v191;
      v271 = 2;
      sub_230DF1424();
      sub_230E69760();
      v206 = 0;
      (*(v223 + 8))(v167, v121);
      (*(v262 + 8))(v80, v106);
      swift_unknownObjectRelease();
      *&v273[88] = v267;
      *&v273[104] = v268;
      *&v273[120] = v269;
      *&v273[24] = v264[0];
      *&v273[40] = v264[1];
      *&v273[56] = v265;
      v273[136] = v270;
      *&v273[72] = v266;
      v273[0] = v168;
      *&v273[8] = v260;
      *&v273[16] = v192;
      sub_230DF1478(v273);
      v280 = *&v273[96];
      v281[0] = *&v273[112];
      *(v281 + 9) = *&v273[121];
      v276 = *&v273[32];
      v277 = *&v273[48];
      v278 = *&v273[64];
      v279 = *&v273[80];
      v274 = *v273;
      v275 = *&v273[16];
      v201 = v263;
      goto LABEL_56;
    case 10:
      v273[0] = 10;
      sub_230DEE8C4();
      v149 = v248;
      v106 = v286;
      v150 = v206;
      sub_230E69690();
      if (v150)
      {
        goto LABEL_47;
      }

      v273[0] = 0;
      sub_230D0D17C();
      v151 = v227;
      sub_230E69760();
      v181 = v149;
      v182 = v272;
      v273[0] = 1;
      v260 = sub_230E69720();
      v198 = v197;
      v271 = 2;
      sub_230DF13BC();
      sub_230E69760();
      (*(v226 + 8))(v181, v151);
      (*(v262 + 8))(v80, v106);
      swift_unknownObjectRelease();
      v273[0] = v182;
      *&v273[8] = v260;
      *&v273[16] = v198;
      *&v273[24] = *&v264[0];
      *&v273[32] = *(v264 + 8);
      *&v273[48] = *(&v264[1] + 1);
      sub_230DF1410(v273);
      goto LABEL_57;
    case 11:
      v273[0] = 11;
      sub_230DEE870();
      v109 = v249;
      v106 = v286;
      v110 = v206;
      sub_230E69690();
      if (v110)
      {
        goto LABEL_47;
      }

      v273[0] = 0;
      sub_230D0D17C();
      sub_230E69760();
      v111 = v262;
      v260 = v80;
      LODWORD(v259) = v272;
      v163 = v109;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CF00, &qword_230E7B318);
      v271 = 1;
      v164 = v239;
      sub_230D1D1C4(&qword_27DB5D050, &qword_27DB5CF00, &qword_230E7B318);
      sub_230E69760();
      (*(v225 + 8))(v163, v164);
      (*(v111 + 8))(v260, v106);
      swift_unknownObjectRelease();
      v273[0] = v259;
      *&v273[8] = v264[0];
      sub_230DF13A8(v273);
      goto LABEL_54;
    case 12:
      v273[0] = 12;
      sub_230DEE81C();
      v116 = v250;
      v106 = v286;
      v117 = v206;
      sub_230E69690();
      if (v117)
      {
        goto LABEL_47;
      }

      v273[0] = 0;
      sub_230D0D17C();
      sub_230E69760();
      v118 = v262;
      v260 = v80;
      LODWORD(v259) = v272;
      v165 = v116;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CEE8, &qword_230E7B310);
      v271 = 1;
      v166 = v240;
      sub_230D1D1C4(&qword_27DB5D048, &qword_27DB5CEE8, &qword_230E7B310);
      sub_230E69760();
      (*(v228 + 8))(v165, v166);
      (*(v118 + 8))(v260, v106);
      swift_unknownObjectRelease();
      v273[0] = v259;
      *&v273[8] = v264[0];
      sub_230DF1394(v273);
LABEL_54:
      v280 = *&v273[96];
      v281[0] = *&v273[112];
      v176 = *&v273[121];
      goto LABEL_55;
    case 13:
      v273[0] = 13;
      sub_230DEE774();
      v141 = v252;
      v106 = v286;
      v142 = v206;
      sub_230E69690();
      if (v142)
      {
        goto LABEL_47;
      }

      v273[0] = 0;
      sub_230D0D17C();
      v143 = v232;
      sub_230E69760();
      v179 = v141;
      v180 = v272;
      v273[0] = 1;
      v260 = sub_230E69720();
      v196 = v195;
      v271 = 2;
      sub_230DF132C();
      sub_230E69760();
      (*(v231 + 8))(v179, v143);
      (*(v262 + 8))(v80, v106);
      swift_unknownObjectRelease();
      v273[0] = v180;
      *&v273[8] = v260;
      *&v273[16] = v196;
      *&v273[24] = *&v264[0];
      sub_230DF1380(v273);
      goto LABEL_57;
    case 14:
      v273[0] = 14;
      sub_230DEE6CC();
      v105 = v253;
      v106 = v286;
      v107 = v206;
      sub_230E69690();
      if (v107)
      {
        goto LABEL_47;
      }

      v273[0] = 0;
      sub_230D0D17C();
      v108 = v234;
      sub_230E69760();
      v161 = v105;
      v162 = v272;
      v273[0] = 1;
      v260 = sub_230E69720();
      v186 = v185;
      v271 = 2;
      sub_230DF12C4();
      sub_230E69760();
      (*(v233 + 8))(v161, v108);
      (*(v262 + 8))(v80, v106);
      swift_unknownObjectRelease();
      v273[0] = v162;
      *&v273[8] = v260;
      *&v273[16] = v186;
      *&v273[24] = *&v264[0];
      sub_230DF1318(v273);
LABEL_57:
      v280 = *&v273[96];
      v281[0] = *&v273[112];
      v176 = *&v273[121];
      goto LABEL_55;
    case 15:
      v273[0] = 15;
      sub_230DEE624();
      v124 = v256;
      v106 = v286;
      v125 = v206;
      sub_230E69690();
      if (!v125)
      {
        v273[0] = 0;
        sub_230D0D17C();
        v126 = v237;
        sub_230E69760();
        v260 = v80;
        v169 = v272;
        v273[0] = 1;
        v170 = v124;
        v171 = sub_230E69720();
        v194 = v193;
        v259 = v171;
        v271 = 2;
        sub_230DF125C();
        sub_230E69760();
        (*(v238 + 8))(v170, v126);
        (*(v262 + 8))(v260, v106);
        swift_unknownObjectRelease();
        v273[0] = v169;
        *&v273[8] = v259;
        *&v273[16] = v194;
        *&v273[24] = v264[0];
        *&v273[40] = *&v264[1];
        v273[48] = BYTE8(v264[1]);
        sub_230DF12B0(v273);
        v280 = *&v273[96];
        v281[0] = *&v273[112];
        *(v281 + 9) = *&v273[121];
        v276 = *&v273[32];
        v277 = *&v273[48];
        v278 = *&v273[64];
        v279 = *&v273[80];
        v274 = *v273;
        v275 = *&v273[16];
        v201 = v263;
        goto LABEL_56;
      }

LABEL_47:
      (*(v262 + 8))(v80, v106);
      goto LABEL_8;
    case 16:
      v273[0] = 16;
      sub_230DEE5D0();
      v102 = v251;
      v103 = v286;
      v104 = v206;
      sub_230E69690();
      if (v104)
      {
LABEL_41:
        (*(v262 + 8))(v80, v103);
        goto LABEL_8;
      }

      (*(v229 + 8))(v102, v230);
      (*(v262 + 8))(v80, v103);
      swift_unknownObjectRelease();
      sub_230DF1224(&v274);
LABEL_33:
      v201 = v263;
      goto LABEL_56;
    case 17:
      v134 = v87;
      v273[0] = 17;
      sub_230DEE57C();
      v135 = v255;
      v129 = v286;
      v136 = v206;
      sub_230E69690();
      if (v136)
      {
LABEL_35:
        (*(v262 + 8))(v80, v129);
        goto LABEL_8;
      }

      v154 = v235;
      v155 = sub_230E69750();
      v156 = (v262 + 8);
      v177 = v154;
      v178 = v155;
      (*(v134 + 8))(v135, v177);
      (*v156)(v80, v129);
      swift_unknownObjectRelease();
      *v273 = v178;
      sub_230DF1210(v273);
      goto LABEL_53;
    case 18:
      v273[0] = 18;
      sub_230DEE4D4();
      v146 = v254;
      v147 = v286;
      v148 = v206;
      sub_230E69690();
      if (v148)
      {
        (*(v262 + 8))(v80, v147);
        swift_unknownObjectRelease();
        v100 = v263;
        return __swift_destroy_boxed_opaque_existential_1(v100);
      }

      sub_230DF11A8();
      sub_230E69760();
      v159 = (v262 + 8);
      (*(v236 + 8))(v146, v86);
      (*v159)(v80, v147);
      swift_unknownObjectRelease();
      v273[0] = v264[0];
      sub_230DF11FC(v273);
LABEL_53:
      v280 = *&v273[96];
      v281[0] = *&v273[112];
      v176 = *&v273[121];
LABEL_55:
      *(v281 + 9) = v176;
      v276 = *&v273[32];
      v277 = *&v273[48];
      v278 = *&v273[64];
      v279 = *&v273[80];
      v274 = *v273;
      v275 = *&v273[16];
      v201 = v263;
LABEL_56:
      v187 = v281[0];
      v88[6] = v280;
      v88[7] = v187;
      *(v88 + 121) = *(v281 + 9);
      v188 = v277;
      v88[2] = v276;
      v88[3] = v188;
      v189 = v279;
      v88[4] = v278;
      v88[5] = v189;
      v190 = v275;
      *v88 = v274;
      v88[1] = v190;
      result = __swift_destroy_boxed_opaque_existential_1(v201);
      break;
    default:
      goto LABEL_6;
  }

  return result;
}

unint64_t sub_230DF11A8()
{
  result = qword_27DB5D028;
  if (!qword_27DB5D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D028);
  }

  return result;
}

double sub_230DF1224(uint64_t a1)
{
  *a1 = 4;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = -32;
  return result;
}

unint64_t sub_230DF125C()
{
  result = qword_27DB5D030;
  if (!qword_27DB5D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D030);
  }

  return result;
}

unint64_t sub_230DF12C4()
{
  result = qword_27DB5D038;
  if (!qword_27DB5D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D038);
  }

  return result;
}

unint64_t sub_230DF132C()
{
  result = qword_27DB5D040;
  if (!qword_27DB5D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D040);
  }

  return result;
}

unint64_t sub_230DF13BC()
{
  result = qword_27DB5D058;
  if (!qword_27DB5D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D058);
  }

  return result;
}

unint64_t sub_230DF1424()
{
  result = qword_27DB5D060;
  if (!qword_27DB5D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D060);
  }

  return result;
}

unint64_t sub_230DF148C()
{
  result = qword_27DB5D068;
  if (!qword_27DB5D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D068);
  }

  return result;
}

unint64_t sub_230DF1508()
{
  result = qword_27DB5D070;
  if (!qword_27DB5D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D070);
  }

  return result;
}

double sub_230DF1594(uint64_t a1)
{
  *a1 = 3;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = -32;
  return result;
}

double sub_230DF15CC(uint64_t a1)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = -32;
  return result;
}

double sub_230DF1604(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = -32;
  return result;
}

double sub_230DF163C(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 136) = -32;
  return result;
}

uint64_t get_enum_tag_for_layout_string_20ServicesIntelligence0aB10XPCRequestO(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 <= 0xDF)
  {
    return v1 >> 4;
  }

  else
  {
    return (*a1 + 14);
  }
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_230DF16E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x72 && *(a1 + 137))
  {
    return (*a1 + 114);
  }

  v3 = ((*(a1 + 136) >> 4) & 0xFFFFFF8F | (16 * ((*(a1 + 136) >> 1) & 7))) ^ 0x7F;
  if (v3 >= 0x71)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_230DF1734(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x71)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 - 114;
    if (a3 >= 0x72)
    {
      *(result + 137) = 1;
    }
  }

  else
  {
    if (a3 >= 0x72)
    {
      *(result + 137) = 0;
    }

    if (a2)
    {
      *(result + 128) = 0;
      *(result + 96) = 0u;
      *(result + 112) = 0u;
      *(result + 64) = 0u;
      *(result + 80) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 136) = 2 * (((-a2 >> 4) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_230DF17C0(uint64_t result, unsigned int a2)
{
  if (a2 < 0xE)
  {
    *(result + 136) = *(result + 136) & 1 | (16 * a2);
  }

  else
  {
    *result = a2 - 14;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = -32;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServicesIntelligenceXPCRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServicesIntelligenceXPCRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_230DF1AA4()
{
  result = qword_27DB5D078;
  if (!qword_27DB5D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D078);
  }

  return result;
}

unint64_t sub_230DF1AFC()
{
  result = qword_27DB5D080;
  if (!qword_27DB5D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D080);
  }

  return result;
}

unint64_t sub_230DF1B54()
{
  result = qword_27DB5D088;
  if (!qword_27DB5D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D088);
  }

  return result;
}

unint64_t sub_230DF1BAC()
{
  result = qword_27DB5D090;
  if (!qword_27DB5D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D090);
  }

  return result;
}

unint64_t sub_230DF1C04()
{
  result = qword_27DB5D098;
  if (!qword_27DB5D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D098);
  }

  return result;
}

unint64_t sub_230DF1C5C()
{
  result = qword_27DB5D0A0;
  if (!qword_27DB5D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D0A0);
  }

  return result;
}

unint64_t sub_230DF1CB4()
{
  result = qword_27DB5D0A8;
  if (!qword_27DB5D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D0A8);
  }

  return result;
}

unint64_t sub_230DF1D0C()
{
  result = qword_27DB5D0B0;
  if (!qword_27DB5D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D0B0);
  }

  return result;
}

unint64_t sub_230DF1D64()
{
  result = qword_27DB5D0B8;
  if (!qword_27DB5D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D0B8);
  }

  return result;
}

unint64_t sub_230DF1DBC()
{
  result = qword_27DB5D0C0;
  if (!qword_27DB5D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D0C0);
  }

  return result;
}

unint64_t sub_230DF1E14()
{
  result = qword_27DB5D0C8;
  if (!qword_27DB5D0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D0C8);
  }

  return result;
}

unint64_t sub_230DF1E6C()
{
  result = qword_27DB5D0D0;
  if (!qword_27DB5D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D0D0);
  }

  return result;
}

unint64_t sub_230DF1EC4()
{
  result = qword_27DB5D0D8;
  if (!qword_27DB5D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D0D8);
  }

  return result;
}

unint64_t sub_230DF1F1C()
{
  result = qword_27DB5D0E0;
  if (!qword_27DB5D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D0E0);
  }

  return result;
}

unint64_t sub_230DF1F74()
{
  result = qword_27DB5D0E8;
  if (!qword_27DB5D0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D0E8);
  }

  return result;
}

unint64_t sub_230DF1FCC()
{
  result = qword_27DB5D0F0;
  if (!qword_27DB5D0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D0F0);
  }

  return result;
}

unint64_t sub_230DF2024()
{
  result = qword_27DB5D0F8;
  if (!qword_27DB5D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D0F8);
  }

  return result;
}

unint64_t sub_230DF207C()
{
  result = qword_27DB5D100;
  if (!qword_27DB5D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D100);
  }

  return result;
}

unint64_t sub_230DF20D4()
{
  result = qword_27DB5D108;
  if (!qword_27DB5D108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D108);
  }

  return result;
}

unint64_t sub_230DF212C()
{
  result = qword_27DB5D110;
  if (!qword_27DB5D110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D110);
  }

  return result;
}

unint64_t sub_230DF2184()
{
  result = qword_27DB5D118;
  if (!qword_27DB5D118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D118);
  }

  return result;
}

unint64_t sub_230DF21DC()
{
  result = qword_27DB5D120;
  if (!qword_27DB5D120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D120);
  }

  return result;
}

unint64_t sub_230DF2234()
{
  result = qword_27DB5D128;
  if (!qword_27DB5D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D128);
  }

  return result;
}

unint64_t sub_230DF228C()
{
  result = qword_27DB5D130;
  if (!qword_27DB5D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D130);
  }

  return result;
}

unint64_t sub_230DF22E4()
{
  result = qword_27DB5D138;
  if (!qword_27DB5D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D138);
  }

  return result;
}

unint64_t sub_230DF233C()
{
  result = qword_27DB5D140;
  if (!qword_27DB5D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D140);
  }

  return result;
}

unint64_t sub_230DF2394()
{
  result = qword_27DB5D148;
  if (!qword_27DB5D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D148);
  }

  return result;
}

unint64_t sub_230DF23EC()
{
  result = qword_27DB5D150;
  if (!qword_27DB5D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D150);
  }

  return result;
}

unint64_t sub_230DF2444()
{
  result = qword_27DB5D158;
  if (!qword_27DB5D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D158);
  }

  return result;
}

unint64_t sub_230DF249C()
{
  result = qword_27DB5D160;
  if (!qword_27DB5D160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D160);
  }

  return result;
}

unint64_t sub_230DF24F4()
{
  result = qword_27DB5D168;
  if (!qword_27DB5D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D168);
  }

  return result;
}

unint64_t sub_230DF254C()
{
  result = qword_27DB5D170;
  if (!qword_27DB5D170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D170);
  }

  return result;
}

unint64_t sub_230DF25A4()
{
  result = qword_27DB5D178;
  if (!qword_27DB5D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D178);
  }

  return result;
}

unint64_t sub_230DF25FC()
{
  result = qword_27DB5D180;
  if (!qword_27DB5D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D180);
  }

  return result;
}

unint64_t sub_230DF2654()
{
  result = qword_27DB5D188;
  if (!qword_27DB5D188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D188);
  }

  return result;
}

unint64_t sub_230DF26AC()
{
  result = qword_27DB5D190;
  if (!qword_27DB5D190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D190);
  }

  return result;
}

unint64_t sub_230DF2704()
{
  result = qword_27DB5D198;
  if (!qword_27DB5D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D198);
  }

  return result;
}

unint64_t sub_230DF275C()
{
  result = qword_27DB5D1A0;
  if (!qword_27DB5D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D1A0);
  }

  return result;
}

unint64_t sub_230DF27B4()
{
  result = qword_27DB5D1A8;
  if (!qword_27DB5D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D1A8);
  }

  return result;
}

unint64_t sub_230DF280C()
{
  result = qword_27DB5D1B0;
  if (!qword_27DB5D1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D1B0);
  }

  return result;
}

unint64_t sub_230DF2864()
{
  result = qword_27DB5D1B8;
  if (!qword_27DB5D1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D1B8);
  }

  return result;
}

unint64_t sub_230DF28BC()
{
  result = qword_27DB5D1C0;
  if (!qword_27DB5D1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D1C0);
  }

  return result;
}

unint64_t sub_230DF2914()
{
  result = qword_27DB5D1C8;
  if (!qword_27DB5D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D1C8);
  }

  return result;
}

unint64_t sub_230DF296C()
{
  result = qword_27DB5D1D0;
  if (!qword_27DB5D1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D1D0);
  }

  return result;
}

unint64_t sub_230DF29C4()
{
  result = qword_27DB5D1D8;
  if (!qword_27DB5D1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D1D8);
  }

  return result;
}

unint64_t sub_230DF2A1C()
{
  result = qword_27DB5D1E0;
  if (!qword_27DB5D1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D1E0);
  }

  return result;
}

unint64_t sub_230DF2A74()
{
  result = qword_27DB5D1E8;
  if (!qword_27DB5D1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D1E8);
  }

  return result;
}

unint64_t sub_230DF2ACC()
{
  result = qword_27DB5D1F0;
  if (!qword_27DB5D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D1F0);
  }

  return result;
}

unint64_t sub_230DF2B24()
{
  result = qword_27DB5D1F8;
  if (!qword_27DB5D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D1F8);
  }

  return result;
}

unint64_t sub_230DF2B7C()
{
  result = qword_27DB5D200;
  if (!qword_27DB5D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D200);
  }

  return result;
}

unint64_t sub_230DF2BD4()
{
  result = qword_27DB5D208;
  if (!qword_27DB5D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D208);
  }

  return result;
}

unint64_t sub_230DF2C2C()
{
  result = qword_27DB5D210;
  if (!qword_27DB5D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D210);
  }

  return result;
}

unint64_t sub_230DF2C84()
{
  result = qword_27DB5D218;
  if (!qword_27DB5D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D218);
  }

  return result;
}

unint64_t sub_230DF2CDC()
{
  result = qword_27DB5D220;
  if (!qword_27DB5D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D220);
  }

  return result;
}

unint64_t sub_230DF2D34()
{
  result = qword_27DB5D228;
  if (!qword_27DB5D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D228);
  }

  return result;
}

uint64_t sub_230DF2D88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6C6C6568 && a2 == 0xE500000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230E80650 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230E80780 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6572546863746566 && a2 == 0xEF73746E656D7461 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61436573556E7572 && a2 == 0xEA00000000006573 || (sub_230E698C0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000230E84450 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74654D6873756C66 && a2 == 0xEC00000073636972 || (sub_230E698C0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000230E80450 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230E80470 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000230E80490 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230E80500 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x44564B6E49746573 && a2 == 0xEF65736162617461 || (sub_230E698C0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000230E80550 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000230E80570 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230E80590 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000230E80870 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000230E80910 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000230E808F0 == a2)
  {

    return 18;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}