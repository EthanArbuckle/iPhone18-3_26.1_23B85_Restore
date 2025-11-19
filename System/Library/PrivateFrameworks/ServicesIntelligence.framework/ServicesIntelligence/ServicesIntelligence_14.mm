uint64_t sub_230E20534()
{
  v1 = v0[67];
  v2 = v0[65];
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[62];
  v6 = v0[58];
  v7 = v0[55];
  v19 = v0[56];
  v20 = v0[66];
  v18 = v0[54];
  v16 = v0[57];
  v17 = v0[53];
  v9 = v0[51];
  v8 = v0[52];
  swift_willThrow();

  (*(v8 + 8))(v17, v9);
  (*(v7 + 8))(v19, v18);

  v10 = v0[67];
  v11 = v0[56];
  v12 = v0[53];
  v13 = v0[50];

  v14 = v0[1];

  return v14();
}

uint64_t sub_230E20654(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return MEMORY[0x282200958](v8, v9);
  }

  else
  {
    if (a2)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      *(v12 + 8) = a3;
      v13 = a2;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v7);
  }
}

uint64_t sub_230E20734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  *(v4 + 1952) = a4;
  *(v4 + 1944) = a3;
  *(v4 + 1936) = a2;
  *(v4 + 1928) = a1;
  *(v4 + 2720) = *a4;
  *(v4 + 1960) = *(a4 + 8);
  *(v4 + 2721) = *(a4 + 24);
  *(v4 + 1976) = *(a4 + 32);
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0) - 8) + 64) + 15;
  *(v4 + 1984) = swift_task_alloc();
  v7 = sub_230E68910();
  *(v4 + 1992) = v7;
  v8 = *(v7 - 8);
  *(v4 + 2000) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 2008) = swift_task_alloc();
  v10 = sub_230E68D80();
  *(v4 + 2016) = v10;
  v11 = *(v10 - 8);
  *(v4 + 2024) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 2032) = swift_task_alloc();
  *(v4 + 2040) = swift_task_alloc();
  *(v4 + 2048) = swift_task_alloc();
  *(v4 + 2056) = swift_task_alloc();
  *(v4 + 2064) = swift_task_alloc();
  *(v4 + 2072) = swift_task_alloc();
  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E20930, a2, 0);
}

uint64_t sub_230E20930()
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = v0[259];
  v2 = v0[243];
  sub_230E68D70();
  sub_230E1E0EC(v2, (v0 + 103));
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[243];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 40);
    sub_230D814C8(v6);
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][processConfiguration] Started with version %ld", v7, 0xCu);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  else
  {
    sub_230D814C8(v0[243]);
  }

  v8 = v0[259];
  v9 = v0[253];
  v10 = v0[252];
  v11 = v0[244];
  v12 = v0[242];

  v13 = *(v9 + 8);
  v0[260] = v13;
  v0[261] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v8, v10);
  sub_230D1CDE0(v11, (v0 + 222));
  sub_230D1CDE0(v11, (v0 + 212));

  v14 = swift_task_alloc();
  v0[262] = v14;
  *v14 = v0;
  v14[1] = sub_230E20B64;
  v15 = v0[244];
  v16 = v0[242];
  v17 = *MEMORY[0x277D85DE8];

  return sub_230D6F7D0(39, v15, v16, v16);
}

uint64_t sub_230E20B64(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2096);
  v6 = *v2;
  *(v4 + 2104) = a1;
  *(v4 + 2112) = v1;

  v7 = *(v3 + 1952);
  v8 = *(v3 + 1936);
  sub_230D1CE3C(v7);
  if (v1)
  {
    v9 = sub_230E21884;
  }

  else
  {
    v9 = sub_230E20CE4;
  }

  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_230E20CE4()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1976);
  v2 = *(v0 + 1968);
  v3 = *(v0 + 1960);
  v4 = *(v0 + 2720);
  v5 = *(v0 + 1952);
  v6 = *(v0 + 2721) & 1 | (*(v0 + 2722) << 8);
  sub_230D1CE3C(v5);
  *(v0 + 1176) = v4;
  *(v0 + 1184) = v3;
  *(v0 + 1192) = v2;
  *(v0 + 1200) = v6;
  *(v0 + 1208) = v1;
  sub_230D1CDE0(v5, v0 + 1056);
  v7 = swift_task_alloc();
  *(v0 + 2120) = v7;
  *v7 = v0;
  v7[1] = sub_230E20E18;
  v8 = *(v0 + 2104);
  v9 = *MEMORY[0x277D85DE8];

  return sub_230E45E9C(v8, v0 + 1176);
}

uint64_t sub_230E20E18(uint64_t a1, char a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = *(*v3 + 2120);
  v5 = *v3;
  *(v5 + 2128) = a1;
  *(v5 + 2723) = a2;
  *(v5 + 2136) = v2;

  if (v2)
  {
    v6 = *(v5 + 1936);
    v7 = *(v5 + 1200);
    v8 = *(v5 + 1208);
    sub_230D666B4(*(v5 + 1176), *(v5 + 1184), *(v5 + 1192));
    v9 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230E21628, v6, 0);
  }

  else
  {
    v10 = *(v5 + 1976);
    v11 = *(v5 + 1968);
    v12 = *(v5 + 1960);
    v13 = *(v5 + 2720);
    v14 = *(v5 + 1952);
    v15 = *(v5 + 2721) & 1 | (*(v5 + 2722) << 8);
    v16 = *(v5 + 1200);
    v17 = *(v5 + 1208);
    sub_230D666B4(*(v5 + 1176), *(v5 + 1184), *(v5 + 1192));
    *(v5 + 1096) = v13;
    *(v5 + 1104) = v12;
    *(v5 + 1112) = v11;
    *(v5 + 1120) = v15;
    *(v5 + 1128) = v10;
    sub_230D1CDE0(v14, v5 + 1136);
    v18 = swift_task_alloc();
    *(v5 + 2144) = v18;
    *v18 = v5;
    v18[1] = sub_230E2107C;
    v19 = *(v5 + 2104);
    v20 = *MEMORY[0x277D85DE8];

    return static SystemDatabase.getSystemStatus(using:requestContext:)(v5 + 2718, v19, v5 + 1096);
  }
}

uint64_t sub_230E2107C()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = (*v0)[268];
  v3 = (*v0)[242];
  v9 = *v0;

  v4 = v1[140];
  v5 = v1[141];
  sub_230D666B4(v1[137], v1[138], v1[139]);
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E2122C, v3, 0);
}

uint64_t sub_230E2122C()
{
  v41 = v0;
  v40[1] = *MEMORY[0x277D85DE8];
  if (sub_230E3AB40(*(v0 + 2128), *(v0 + 2723) & 1, *(v0 + 1944), *(v0 + 2718)))
  {
    if (*(v0 + 2723))
    {
      v1 = 0x8000000230E84BF0;
      v2 = 0xD000000000000016;
    }

    else
    {
      *(v0 + 1920) = *(v0 + 2128);
      v2 = sub_230E69890();
      v1 = v16;
    }

    v17 = *(v0 + 2064);
    v18 = *(v0 + 1944);
    sub_230E68D70();
    sub_230E1E0EC(v18, v0 + 968);

    v19 = sub_230E68D60();
    v20 = sub_230E693E0();

    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 2080);
    v23 = *(v0 + 2064);
    v24 = *(v0 + 2016);
    v25 = *(v0 + 1944);
    if (v21)
    {
      v39 = *(v0 + 2088);
      v26 = swift_slowAlloc();
      v38 = v22;
      v27 = swift_slowAlloc();
      v40[0] = v27;
      *v26 = 136315394;
      v28 = sub_230D7E620(v2, v1, v40);

      *(v26 + 4) = v28;
      *(v26 + 12) = 2048;
      *(v26 + 14) = *(v25 + 40);
      sub_230D814C8(v25);
      _os_log_impl(&dword_230D02000, v19, v20, "[ServicesIntelligenceProvider][processConfiguration] Updating from version %s to %ld", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x23191EAE0](v27, -1, -1);
      MEMORY[0x23191EAE0](v26, -1, -1);

      v38(v23, v24);
    }

    else
    {

      sub_230D814C8(v25);

      v22(v23, v24);
    }

    v29 = *(v0 + 1976);
    v30 = *(v0 + 1968);
    v31 = *(v0 + 1960);
    v32 = *(v0 + 2720);
    v33 = *(v0 + 1952);
    v34 = *(v0 + 2721) & 1 | (*(v0 + 2722) << 8);
    *(v0 + 2717) = 0;
    *(v0 + 1256) = v32;
    *(v0 + 1264) = v31;
    *(v0 + 1272) = v30;
    *(v0 + 1280) = v34;
    *(v0 + 1288) = v29;
    sub_230D1CDE0(v33, v0 + 1296);
    v35 = swift_task_alloc();
    *(v0 + 2152) = v35;
    *v35 = v0;
    v35[1] = sub_230E21AE0;
    v36 = *(v0 + 2104);
    v37 = *MEMORY[0x277D85DE8];

    return sub_230E46438((v0 + 2717), v36, v0 + 1256);
  }

  else
  {
    v3 = *(v0 + 2104);
    v4 = *(v0 + 1928);

    *v4 = 1;
    v5 = *(v0 + 2072);
    v6 = *(v0 + 2064);
    v7 = *(v0 + 2056);
    v8 = *(v0 + 2048);
    v9 = *(v0 + 2040);
    v10 = *(v0 + 2032);
    v11 = *(v0 + 2008);
    v12 = *(v0 + 1984);

    v13 = *(v0 + 8);
    v14 = *MEMORY[0x277D85DE8];

    return v13();
  }
}

uint64_t sub_230E21628()
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = v0[263];

  v2 = v0[267];
  v0[286] = v2;
  v3 = v0[254];
  sub_230E68D70();
  v4 = v2;
  v5 = sub_230E68D60();
  v6 = sub_230E69400();
  MEMORY[0x23191E910](v2);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_230D02000, v5, v6, "[ServicesIntelligenceProvider][processConfiguration] Failed with error: %@", v7, 0xCu);
    sub_230D2D9F8(v8, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v11 = v0[261];
  v12 = v0[260];
  v13 = v0[254];
  v14 = v0[252];
  v15 = v0[244];
  v16 = v0[242];

  v12(v13, v14);
  sub_230D1CDE0(v15, (v0 + 192));
  sub_230D1CDE0(v15, (v0 + 177));

  v17 = swift_task_alloc();
  v0[287] = v17;
  *v17 = v0;
  v17[1] = sub_230E241A4;
  v18 = v0[244];
  v19 = v0[242];
  v20 = *MEMORY[0x277D85DE8];

  return sub_230D6F7D0(39, v18, v19, v19);
}

uint64_t sub_230E21884()
{
  v21 = *MEMORY[0x277D85DE8];
  sub_230D1CE3C(v0[244]);
  v1 = v0[264];
  v0[286] = v1;
  v2 = v0[254];
  sub_230E68D70();
  v3 = v1;
  v4 = sub_230E68D60();
  v5 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_230D02000, v4, v5, "[ServicesIntelligenceProvider][processConfiguration] Failed with error: %@", v6, 0xCu);
    sub_230D2D9F8(v7, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v10 = v0[261];
  v11 = v0[260];
  v12 = v0[254];
  v13 = v0[252];
  v14 = v0[244];
  v15 = v0[242];

  v11(v12, v13);
  sub_230D1CDE0(v14, (v0 + 192));
  sub_230D1CDE0(v14, (v0 + 177));

  v16 = swift_task_alloc();
  v0[287] = v16;
  *v16 = v0;
  v16[1] = sub_230E241A4;
  v17 = v0[244];
  v18 = v0[242];
  v19 = *MEMORY[0x277D85DE8];

  return sub_230D6F7D0(39, v17, v18, v18);
}

uint64_t sub_230E21AE0()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = (*v1)[269];
  v11 = *v1;
  (*v1)[270] = v0;

  v4 = v2[242];
  v5 = v2[160];
  v6 = v2[161];
  sub_230D666B4(v2[157], v2[158], v2[159]);
  if (v0)
  {
    v7 = sub_230E2209C;
  }

  else
  {
    v7 = sub_230E21C60;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, v4, 0);
}

uint64_t sub_230E21C60()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2056);
  v2 = *(v0 + 1952);
  v3 = *(v0 + 1944);
  v4 = *(v0 + 1936);
  sub_230D1CDE0(v2, v0 + 1376);
  sub_230E1E0EC(v3, v0 + 920);
  sub_230D1CDE0(v2, v0 + 1456);

  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 1496);
  v5 = sub_230E68D60();
  v6 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 1952);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_230D7E620(0xD00000000000001CLL, 0x8000000230E806D0, v33);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_230D7E620(*(v7 + 1), *(v7 + 2), v33);
    *(v8 + 22) = 2080;
    v32 = *v7;
    v10 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v10);

    v11 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v33);

    *(v8 + 24) = v11;
    _os_log_impl(&dword_230D02000, v5, v6, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v9, -1, -1);
    MEMORY[0x23191EAE0](v8, -1, -1);
  }

  v12 = *(v0 + 1952);
  *(v0 + 1880) = *(v12 + 24);
  if ((*(v0 + 1880) & 1) == 0)
  {
    goto LABEL_7;
  }

  v13 = *(v0 + 1888);
  v31 = *v12;
  v14 = RequestType.rawValue.getter();
  v16 = v15;
  sub_230D1CE90(v0 + 1880, v0 + 1896);
  LOBYTE(v14) = sub_230D33FDC(v14, v16, v13);

  if ((v14 & 1) == 0)
  {
    v17 = *(v0 + 1881);
    sub_230D1F9CC(v0 + 1880);
    if (v17 >= 2)
    {
      goto LABEL_8;
    }

LABEL_7:
    v18 = swift_task_alloc();
    *(v0 + 2176) = v18;
    *v18 = v0;
    v19 = sub_230E222F8;
    goto LABEL_12;
  }

  sub_230D1F9CC(v0 + 1880);
LABEL_8:
  sub_230E68950();
  *(v0 + 2168) = CFAbsoluteTimeGetCurrent();
  *(v0 + 2336) = 0u;
  *(v0 + 2352) = 0u;
  *(v0 + 2368) = 0u;
  *(v0 + 2384) = 0u;
  *(v0 + 2400) = 0u;
  *(v0 + 2416) = 0u;
  *(v0 + 2432) = 0u;
  *(v0 + 2448) = 0u;
  *(v0 + 2464) = 0u;
  *(v0 + 2480) = 0u;
  *(v0 + 2496) = 0u;
  *(v0 + 2512) = 0u;
  *(v0 + 2528) = 0u;
  *(v0 + 2544) = 0u;
  *(v0 + 2560) = 0u;
  *(v0 + 2576) = 0u;
  *(v0 + 2592) = 0u;
  *(v0 + 2608) = 0u;
  *(v0 + 2624) = 0u;
  *(v0 + 2640) = 0u;
  *(v0 + 2656) = 0u;
  *(v0 + 2672) = 0u;
  *(v0 + 2688) = 0u;
  *(v0 + 2704) = 0;
  *(v0 + 2708) = 93;
  v20 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 2336), (v0 + 2708));
  *(v0 + 2712) = v20;
  v21 = 0.0;
  if (!v20)
  {
    v22 = *(v0 + 2384);
    v23 = *(v0 + 2456);
    v24 = __CFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      __break(1u);
    }

    v21 = vcvtd_n_f64_u64(v25, 0x14uLL);
  }

  *(v0 + 2192) = v21;
  *(v0 + 1912) = 0;
  v18 = swift_task_alloc();
  *(v0 + 2200) = v18;
  *v18 = v0;
  v19 = sub_230E22450;
LABEL_12:
  v18[1] = v19;
  v26 = *(v0 + 1952);
  v27 = *(v0 + 1944);
  v28 = *(v0 + 1936);
  v29 = *MEMORY[0x277D85DE8];

  return sub_230E27BE0(v0 + 568, v28, v26, v27);
}

uint64_t sub_230E2209C()
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = v0[263];

  v2 = v0[270];
  v0[286] = v2;
  v3 = v0[254];
  sub_230E68D70();
  v4 = v2;
  v5 = sub_230E68D60();
  v6 = sub_230E69400();
  MEMORY[0x23191E910](v2);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_230D02000, v5, v6, "[ServicesIntelligenceProvider][processConfiguration] Failed with error: %@", v7, 0xCu);
    sub_230D2D9F8(v8, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v11 = v0[261];
  v12 = v0[260];
  v13 = v0[254];
  v14 = v0[252];
  v15 = v0[244];
  v16 = v0[242];

  v12(v13, v14);
  sub_230D1CDE0(v15, (v0 + 192));
  sub_230D1CDE0(v15, (v0 + 177));

  v17 = swift_task_alloc();
  v0[287] = v17;
  *v17 = v0;
  v17[1] = sub_230E241A4;
  v18 = v0[244];
  v19 = v0[242];
  v20 = *MEMORY[0x277D85DE8];

  return sub_230D6F7D0(39, v18, v19, v19);
}

uint64_t sub_230E222F8()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 2176);
  v4 = *v1;
  *(*v1 + 2184) = v0;

  v5 = *(v2 + 1936);
  if (v0)
  {
    v6 = sub_230E22D54;
  }

  else
  {
    v6 = sub_230E22BD0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E22450()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 2200);
  v4 = *v1;
  *(*v1 + 2208) = v0;

  v5 = *(v2 + 1936);
  if (v0)
  {
    v6 = sub_230E22768;
  }

  else
  {
    v6 = sub_230E225A8;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E225A8()
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2088);
  v2 = *(v0 + 2080);
  v3 = *(v0 + 2056);
  v4 = *(v0 + 2016);
  v5 = *(v0 + 1952);
  v6 = *(v0 + 1944);
  v7 = *(v0 + 1936);
  sub_230D3B2D4(23, *(v0 + 2192), *(v0 + 2712) != 0, v5, (v0 + 1912), *(v0 + 2168));
  v2(v3, v4);

  sub_230D1CE3C(v5);
  sub_230D814C8(v6);
  v8 = *(v0 + 1952);
  v9 = *(v0 + 1936);
  sub_230D1CE3C(v8);
  v10 = *(v0 + 648);
  *(v0 + 504) = *(v0 + 632);
  *(v0 + 520) = v10;
  v11 = *(v0 + 680);
  *(v0 + 536) = *(v0 + 664);
  *(v0 + 552) = v11;
  v12 = *(v0 + 584);
  *(v0 + 440) = *(v0 + 568);
  *(v0 + 456) = v12;
  v13 = *(v0 + 616);
  *(v0 + 472) = *(v0 + 600);
  *(v0 + 488) = v13;
  sub_230D1CDE0(v8, v0 + 1576);
  sub_230D1CDE0(v8, v0 + 1616);

  v14 = swift_task_alloc();
  *(v0 + 2216) = v14;
  *v14 = v0;
  v14[1] = sub_230E22A78;
  v15 = *(v0 + 1952);
  v16 = *(v0 + 1936);
  v17 = *MEMORY[0x277D85DE8];

  return sub_230D79AE0(v0 + 1856, 25, v15, v16, v16, v15);
}

uint64_t sub_230E22768()
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2208);
  v2 = *(v0 + 2192);
  v3 = *(v0 + 2168);
  v4 = *(v0 + 2088);
  v5 = *(v0 + 2080);
  v6 = *(v0 + 2056);
  v7 = *(v0 + 2016);
  v8 = *(v0 + 1952);
  v33 = *(v0 + 1944);
  v9 = *(v0 + 1936);
  v10 = *(v0 + 2712) != 0;
  *(v0 + 1912) = v1;
  swift_willThrow();
  v11 = v1;
  sub_230D3B2D4(23, v2, v10, v8, (v0 + 1912), v3);
  MEMORY[0x23191E910](v1);
  v5(v6, v7);

  sub_230D1CE3C(v8);
  sub_230D814C8(v33);
  v12 = *(v0 + 2208);
  v13 = *(v0 + 2104);
  sub_230D1CE3C(*(v0 + 1952));

  *(v0 + 2288) = v12;
  v14 = *(v0 + 2032);
  sub_230E68D70();
  v15 = v12;
  v16 = sub_230E68D60();
  v17 = sub_230E69400();
  MEMORY[0x23191E910](v12);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    v20 = v12;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v21;
    *v19 = v21;
    _os_log_impl(&dword_230D02000, v16, v17, "[ServicesIntelligenceProvider][processConfiguration] Failed with error: %@", v18, 0xCu);
    sub_230D2D9F8(v19, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v19, -1, -1);
    MEMORY[0x23191EAE0](v18, -1, -1);
  }

  v22 = *(v0 + 2088);
  v23 = *(v0 + 2080);
  v24 = *(v0 + 2032);
  v25 = *(v0 + 2016);
  v26 = *(v0 + 1952);
  v27 = *(v0 + 1936);

  v23(v24, v25);
  sub_230D1CDE0(v26, v0 + 1536);
  sub_230D1CDE0(v26, v0 + 1416);

  v28 = swift_task_alloc();
  *(v0 + 2296) = v28;
  *v28 = v0;
  v28[1] = sub_230E241A4;
  v29 = *(v0 + 1952);
  v30 = *(v0 + 1936);
  v31 = *MEMORY[0x277D85DE8];

  return sub_230D6F7D0(39, v29, v30, v30);
}

uint64_t sub_230E22A78()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 2216);
  v4 = *v1;
  *(*v1 + 2224) = v0;

  v5 = *(v2 + 1936);
  if (v0)
  {
    v6 = sub_230E22FF4;
  }

  else
  {
    v6 = sub_230E23268;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E22BD0()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2088);
  v2 = *(v0 + 1952);
  v3 = *(v0 + 1944);
  v4 = *(v0 + 1936);
  (*(v0 + 2080))(*(v0 + 2056), *(v0 + 2016));

  sub_230D1CE3C(v2);
  sub_230D814C8(v3);
  v5 = *(v0 + 1952);
  v6 = *(v0 + 1936);
  sub_230D1CE3C(v5);
  v7 = *(v0 + 648);
  *(v0 + 504) = *(v0 + 632);
  *(v0 + 520) = v7;
  v8 = *(v0 + 680);
  *(v0 + 536) = *(v0 + 664);
  *(v0 + 552) = v8;
  v9 = *(v0 + 584);
  *(v0 + 440) = *(v0 + 568);
  *(v0 + 456) = v9;
  v10 = *(v0 + 616);
  *(v0 + 472) = *(v0 + 600);
  *(v0 + 488) = v10;
  sub_230D1CDE0(v5, v0 + 1576);
  sub_230D1CDE0(v5, v0 + 1616);

  v11 = swift_task_alloc();
  *(v0 + 2216) = v11;
  *v11 = v0;
  v11[1] = sub_230E22A78;
  v12 = *(v0 + 1952);
  v13 = *(v0 + 1936);
  v14 = *MEMORY[0x277D85DE8];

  return sub_230D79AE0(v0 + 1856, 25, v12, v13, v13, v12);
}

uint64_t sub_230E22D54()
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2088);
  v2 = *(v0 + 1952);
  v3 = *(v0 + 1944);
  v4 = *(v0 + 1936);
  (*(v0 + 2080))(*(v0 + 2056), *(v0 + 2016));

  sub_230D1CE3C(v2);
  sub_230D814C8(v3);
  v5 = *(v0 + 2184);
  v6 = *(v0 + 2104);
  sub_230D1CE3C(*(v0 + 1952));

  *(v0 + 2288) = v5;
  v7 = *(v0 + 2032);
  sub_230E68D70();
  v8 = v5;
  v9 = sub_230E68D60();
  v10 = sub_230E69400();
  MEMORY[0x23191E910](v5);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_230D02000, v9, v10, "[ServicesIntelligenceProvider][processConfiguration] Failed with error: %@", v11, 0xCu);
    sub_230D2D9F8(v12, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v12, -1, -1);
    MEMORY[0x23191EAE0](v11, -1, -1);
  }

  v15 = *(v0 + 2088);
  v16 = *(v0 + 2080);
  v17 = *(v0 + 2032);
  v18 = *(v0 + 2016);
  v19 = *(v0 + 1952);
  v20 = *(v0 + 1936);

  v16(v17, v18);
  sub_230D1CDE0(v19, v0 + 1536);
  sub_230D1CDE0(v19, v0 + 1416);

  v21 = swift_task_alloc();
  *(v0 + 2296) = v21;
  *v21 = v0;
  v21[1] = sub_230E241A4;
  v22 = *(v0 + 1952);
  v23 = *(v0 + 1936);
  v24 = *MEMORY[0x277D85DE8];

  return sub_230D6F7D0(39, v22, v23, v23);
}

uint64_t sub_230E22FF4()
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = v0[263];
  v2 = v0[244];
  sub_230E3B3FC((v0 + 55));
  sub_230D1CE3C(v2);

  v3 = v0[278];
  v0[286] = v3;
  v4 = v0[254];
  sub_230E68D70();
  v5 = v3;
  v6 = sub_230E68D60();
  v7 = sub_230E69400();
  MEMORY[0x23191E910](v3);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_230D02000, v6, v7, "[ServicesIntelligenceProvider][processConfiguration] Failed with error: %@", v8, 0xCu);
    sub_230D2D9F8(v9, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v9, -1, -1);
    MEMORY[0x23191EAE0](v8, -1, -1);
  }

  v12 = v0[261];
  v13 = v0[260];
  v14 = v0[254];
  v15 = v0[252];
  v16 = v0[244];
  v17 = v0[242];

  v13(v14, v15);
  sub_230D1CDE0(v16, (v0 + 192));
  sub_230D1CDE0(v16, (v0 + 177));

  v18 = swift_task_alloc();
  v0[287] = v18;
  *v18 = v0;
  v18[1] = sub_230E241A4;
  v19 = v0[244];
  v20 = v0[242];
  v21 = *MEMORY[0x277D85DE8];

  return sub_230D6F7D0(39, v19, v20, v20);
}

uint64_t sub_230E23268()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1952);
  v2 = *(v0 + 1944);
  v3 = *(v0 + 1936);
  sub_230D1CE3C(v1);
  *(v0 + 2232) = *(v0 + 1856);
  *(v0 + 2248) = *(v0 + 1872);
  sub_230D1CDE0(v1, v0 + 1656);
  sub_230E1E0EC(v2, v0 + 872);
  sub_230D1CDE0(v1, v0 + 1736);

  v4 = swift_task_alloc();
  *(v0 + 2256) = v4;
  *v4 = v0;
  v4[1] = sub_230E233AC;
  v5 = *(v0 + 1952);
  v6 = *(v0 + 1944);
  v7 = *(v0 + 1936);
  v8 = *MEMORY[0x277D85DE8];

  return sub_230D80070(22, v5, v7, v7, v5, v6);
}

uint64_t sub_230E233AC(char a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 2256);
  v3 = *(*v1 + 1952);
  v4 = *(*v1 + 1944);
  v5 = *(*v1 + 1936);
  v9 = *v1;
  *(*v1 + 2724) = a1;

  sub_230D814C8(v4);
  sub_230D1CE3C(v3);

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E23538, v5, 0);
}

uint64_t sub_230E23538()
{
  v62 = v0;
  v61 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2724);
  sub_230D1CE3C(*(v0 + 1952));
  if (v1 == 1)
  {
    v43 = sub_230D0F35C(MEMORY[0x277D84F90]);
    v44 = 0;
    v45 = 1;
  }

  else
  {
    v2 = *(v0 + 2048);
    sub_230D0D224();
    v3 = swift_allocError();
    *v4 = 0xD00000000000001BLL;
    *(v4 + 8) = 0x8000000230E84C10;
    *(v4 + 16) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D800, &unk_230E7F8F0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_230E6B3B0;
    *(v5 + 32) = 0x65726F74735F766BLL;
    *(v5 + 40) = 0xE800000000000000;
    *(v5 + 48) = v3;
    v6 = v3;
    v7 = sub_230D0F35C(v5);
    swift_setDeallocating();
    sub_230D2D9F8(v5 + 32, &qword_27DB5D808, &qword_230E7F188);
    swift_deallocClassInstance();
    MEMORY[0x23191E910](v3);
    sub_230E68D70();
    v8 = sub_230E68D60();
    v9 = sub_230E69400();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 2088);
    v12 = *(v0 + 2080);
    v13 = *(v0 + 2048);
    v14 = *(v0 + 2016);
    v43 = v7;
    if (v10)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_230D02000, v8, v9, "[ServicesIntelligenceProvider][processConfiguration] KV store update failed, but continuing (KV is convenience only)", v15, 2u);
      MEMORY[0x23191EAE0](v15, -1, -1);
    }

    v12(v13, v14);
    v44 = 1;
    v45 = 0;
  }

  v40 = *(v0 + 2232);
  v51 = *(v0 + 1976);
  v49 = *(v0 + 1968);
  v48 = *(v0 + 1960);
  v47 = *(v0 + 2720);
  v50 = *(v0 + 1952);
  v41 = *(v0 + 2248);
  v42 = *(v0 + 1944);
  v46 = *(v0 + 2721) & 1 | (*(v0 + 2722) << 8);
  v16 = *(v0 + 440);
  *(v0 + 2725) = v16;
  v18 = *(v0 + 448);
  v17 = *(v0 + 456);
  v19 = *(v0 + 464);
  v20 = *(v0 + 472);
  v21 = *(v0 + 488);
  v38 = *(v0 + 496);
  v39 = *(v0 + 480);
  v37 = *(v0 + 504);
  v22 = *(v0 + 512);

  sub_230E3B3FC(v0 + 440);
  *(v0 + 312) = v16;
  *(v0 + 320) = v18;
  *(v0 + 328) = v17;
  *(v0 + 336) = v19;
  *(v0 + 344) = v20;
  *(v0 + 352) = v39;
  *(v0 + 360) = v21;
  *(v0 + 368) = v38;
  *(v0 + 376) = v37;
  *(v0 + 384) = v22;
  *(v0 + 392) = v40;
  *(v0 + 408) = v41;
  *(v0 + 416) = v45;
  *(v0 + 424) = v44;
  *(v0 + 432) = v43;
  v23 = *(v0 + 392);
  v57 = *(v0 + 376);
  v58 = v23;
  v24 = *(v0 + 424);
  v59 = *(v0 + 408);
  v60 = v24;
  v25 = *(v0 + 328);
  v53 = *(v0 + 312);
  v54 = v25;
  v26 = *(v0 + 360);
  v55 = *(v0 + 344);
  v56 = v26;
  sub_230E651C4(&v52);
  v27 = v52;
  *(v0 + 2726) = v52;
  v28 = *(v42 + 40);
  *(v0 + 2264) = v28;
  v29 = *(v0 + 392);
  *(v0 + 760) = *(v0 + 376);
  *(v0 + 776) = v29;
  v30 = *(v0 + 424);
  *(v0 + 792) = *(v0 + 408);
  *(v0 + 808) = v30;
  v31 = *(v0 + 328);
  *(v0 + 696) = *(v0 + 312);
  *(v0 + 712) = v31;
  v32 = *(v0 + 360);
  *(v0 + 728) = *(v0 + 344);
  *(v0 + 744) = v32;
  *(v0 + 2716) = v27;
  *(v0 + 1816) = v47;
  *(v0 + 1824) = v48;
  *(v0 + 1832) = v49;
  *(v0 + 1840) = v46;
  *(v0 + 1848) = v51;
  sub_230D1CDE0(v50, v0 + 1016);
  v33 = swift_task_alloc();
  *(v0 + 2272) = v33;
  *v33 = v0;
  v33[1] = sub_230E23978;
  v34 = *(v0 + 1936);
  v35 = *MEMORY[0x277D85DE8];

  return sub_230E25104(v28, (v0 + 696), (v0 + 2716), (v0 + 1816));
}

uint64_t sub_230E23978()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = (*v1)[284];
  v11 = *v1;
  (*v1)[285] = v0;

  v4 = v2[242];
  v5 = v2[230];
  v6 = v2[231];
  sub_230D666B4(v2[227], v2[228], v2[229]);
  if (v0)
  {
    v7 = sub_230E2492C;
  }

  else
  {
    v7 = sub_230E23AF8;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, v4, 0);
}

uint64_t sub_230E23AF8()
{
  v84 = v0;
  v83[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2264);
  v2 = *(v0 + 2008);
  v3 = *(v0 + 2000);
  v61 = *(v0 + 1984);
  v4 = *(v0 + 1952);
  v59 = *(v0 + 1992);
  v60 = *(v0 + 1936);
  v64 = *(v0 + 2040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D810, &qword_230E7F198);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_230E6B3B0;
  *(v5 + 32) = 0xD000000000000011;
  *(v5 + 40) = 0x8000000230E84C30;
  v75 = *(v0 + 376);
  v77 = *(v0 + 392);
  v79 = *(v0 + 408);
  v81 = *(v0 + 424);
  v67 = *(v0 + 312);
  v69 = *(v0 + 328);
  v71 = *(v0 + 344);
  v73 = *(v0 + 360);
  sub_230E65328(v1, v0 + 16);
  v6 = *(v0 + 160);
  *(v5 + 176) = *(v0 + 144);
  *(v5 + 192) = v6;
  *(v5 + 208) = *(v0 + 176);
  v7 = *(v0 + 96);
  *(v5 + 112) = *(v0 + 80);
  *(v5 + 128) = v7;
  v8 = *(v0 + 128);
  *(v5 + 144) = *(v0 + 112);
  *(v5 + 160) = v8;
  v9 = *(v0 + 32);
  *(v5 + 48) = *(v0 + 16);
  *(v5 + 64) = v9;
  v10 = *(v0 + 64);
  *(v5 + 80) = *(v0 + 48);
  *(v5 + 96) = v10;
  v11 = sub_230D0F540(v5);
  swift_setDeallocating();
  sub_230D2D9F8(v5 + 32, &qword_27DB5A968, &qword_230E6BA08);
  swift_deallocClassInstance();
  sub_230E68900();
  sub_230E688D0();
  v13 = v12;
  (*(v3 + 8))(v2, v59);
  v15 = *(v4 + 8);
  v14 = *(v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D820, &qword_230E7F1A0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_230E6B3B0;
  *(v16 + 32) = v11;
  *(v16 + 40) = 0xD000000000000011;
  *(v16 + 48) = 0x8000000230E84C30;
  *(v16 + 56) = 1;
  *(v16 + 64) = v13 * 1000.0;
  *(v16 + 72) = v15;
  *(v16 + 80) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_230E6B3B0;
  v18 = swift_allocObject();
  *(v18 + 16) = v60;
  *(v18 + 24) = 0;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  *(v18 + 48) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = &unk_230E7F1B0;
  *(v19 + 24) = v18;
  *(v17 + 32) = &unk_230E6E478;
  *(v17 + 40) = v19;
  v20 = sub_230E69310();
  (*(*(v20 - 8) + 56))(v61, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v17;

  sub_230D8F204(0, 0, v61, &unk_230E73420, v21);

  sub_230E68D70();
  sub_230E3B530(v0 + 312, v0 + 184);
  v22 = sub_230E68D60();
  v23 = sub_230E693E0();
  sub_230E3B3FC(v0 + 312);
  if (os_log_type_enabled(v22, v23))
  {
    v24 = *(v0 + 2726);
    v25 = *(v0 + 2725);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v83[0] = v27;
    *v26 = 136315650;
    if (v25)
    {
      v28 = 0x6574656C706D6F43;
    }

    else
    {
      v28 = 0x64656C696146;
    }

    if (v25)
    {
      v29 = 0xE900000000000064;
    }

    else
    {
      v29 = 0xE600000000000000;
    }

    v30 = sub_230D7E620(v28, v29, v83);

    v31 = 0xEC000000676E697ALL;
    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    v32 = 0x696C616974696E69;
    v33 = 0xE800000000000000;
    v34 = 0x6465646172676564;
    if (v24 != 2)
    {
      v34 = 0x726F727265;
      v33 = 0xE500000000000000;
    }

    if (v24)
    {
      v32 = 0x7964616572;
      v31 = 0xE500000000000000;
    }

    if (v24 <= 1)
    {
      v35 = v32;
    }

    else
    {
      v35 = v34;
    }

    if (v24 <= 1)
    {
      v36 = v31;
    }

    else
    {
      v36 = v33;
    }

    v37 = *(v0 + 2104);
    v65 = *(v0 + 2080);
    v66 = *(v0 + 2088);
    v62 = *(v0 + 2016);
    v63 = *(v0 + 2040);
    v38 = sub_230D7E620(v35, v36, v83);

    *(v26 + 14) = v38;
    *(v26 + 22) = 2080;
    v76 = *(v0 + 376);
    v78 = *(v0 + 392);
    v80 = *(v0 + 408);
    v82 = *(v0 + 424);
    v68 = *(v0 + 312);
    v70 = *(v0 + 328);
    v72 = *(v0 + 344);
    v74 = *(v0 + 360);
    v39 = sub_230E657B4();
    v41 = v40;
    sub_230E3B3FC(v0 + 312);
    v42 = sub_230D7E620(v39, v41, v83);

    *(v26 + 24) = v42;
    _os_log_impl(&dword_230D02000, v22, v23, "[ServicesIntelligenceProvider][processConfiguration] %s - Status: %s, Details: %s", v26, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v27, -1, -1);
    MEMORY[0x23191EAE0](v26, -1, -1);

    v65(v63, v62);
  }

  else
  {
    v43 = *(v0 + 2104);
    v44 = *(v0 + 2088);
    v45 = *(v0 + 2080);
    v46 = *(v0 + 2040);
    v47 = *(v0 + 2016);

    sub_230E3B3FC(v0 + 312);

    v45(v46, v47);
  }

  **(v0 + 1928) = *(v0 + 2725);
  v48 = *(v0 + 2072);
  v49 = *(v0 + 2064);
  v50 = *(v0 + 2056);
  v51 = *(v0 + 2048);
  v52 = *(v0 + 2040);
  v53 = *(v0 + 2032);
  v54 = *(v0 + 2008);
  v55 = *(v0 + 1984);

  v56 = *(v0 + 8);
  v57 = *MEMORY[0x277D85DE8];

  return v56();
}

uint64_t sub_230E241A4(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2296);
  v6 = *v2;
  *(v4 + 2304) = a1;
  *(v4 + 2312) = v1;

  v7 = *(v3 + 1952);
  v8 = *(v3 + 1936);
  sub_230D1CE3C(v7);
  if (v1)
  {
    v9 = sub_230E24814;
  }

  else
  {
    v9 = sub_230E24324;
  }

  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_230E24324()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1976);
  v2 = *(v0 + 1968);
  v3 = *(v0 + 1960);
  v4 = *(v0 + 2720);
  v5 = *(v0 + 1952);
  v6 = *(v0 + 2721) & 1 | (*(v0 + 2722) << 8);
  sub_230D1CE3C(v5);
  *(v0 + 2719) = 3;
  *(v0 + 1336) = v4;
  *(v0 + 1344) = v3;
  *(v0 + 1352) = v2;
  *(v0 + 1360) = v6;
  *(v0 + 1368) = v1;
  sub_230D1CDE0(v5, v0 + 1216);
  v7 = swift_task_alloc();
  *(v0 + 2320) = v7;
  *v7 = v0;
  v7[1] = sub_230E24464;
  v8 = *(v0 + 2304);
  v9 = *MEMORY[0x277D85DE8];

  return sub_230E46438((v0 + 2719), v8, v0 + 1336);
}

uint64_t sub_230E24464()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = (*v1)[290];
  v11 = *v1;
  (*v1)[291] = v0;

  v4 = v2[242];
  v5 = v2[170];
  v6 = v2[171];
  sub_230D666B4(v2[167], v2[168], v2[169]);
  if (v0)
  {
    v7 = sub_230E246FC;
  }

  else
  {
    v7 = sub_230E245E4;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, v4, 0);
}

uint64_t sub_230E245E4()
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = v0[288];
  v2 = v0[286];
  swift_willThrow();

  v3 = v0[286];
  v4 = v0[259];
  v5 = v0[258];
  v6 = v0[257];
  v7 = v0[256];
  v8 = v0[255];
  v9 = v0[254];
  v10 = v0[251];
  v11 = v0[248];

  v12 = v0[1];
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_230E246FC()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = v0[288];
  MEMORY[0x23191E910](v0[286]);

  v2 = v0[291];
  v3 = v0[259];
  v4 = v0[258];
  v5 = v0[257];
  v6 = v0[256];
  v7 = v0[255];
  v8 = v0[254];
  v9 = v0[251];
  v10 = v0[248];

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_230E24814()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = v0[286];
  sub_230D1CE3C(v0[244]);
  MEMORY[0x23191E910](v1);
  v2 = v0[289];
  v3 = v0[259];
  v4 = v0[258];
  v5 = v0[257];
  v6 = v0[256];
  v7 = v0[255];
  v8 = v0[254];
  v9 = v0[251];
  v10 = v0[248];

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_230E2492C()
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = v0[263];

  sub_230E3B3FC((v0 + 39));
  v2 = v0[285];
  v0[286] = v2;
  v3 = v0[254];
  sub_230E68D70();
  v4 = v2;
  v5 = sub_230E68D60();
  v6 = sub_230E69400();
  MEMORY[0x23191E910](v2);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_230D02000, v5, v6, "[ServicesIntelligenceProvider][processConfiguration] Failed with error: %@", v7, 0xCu);
    sub_230D2D9F8(v8, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v11 = v0[261];
  v12 = v0[260];
  v13 = v0[254];
  v14 = v0[252];
  v15 = v0[244];
  v16 = v0[242];

  v12(v13, v14);
  sub_230D1CDE0(v15, (v0 + 192));
  sub_230D1CDE0(v15, (v0 + 177));

  v17 = swift_task_alloc();
  v0[287] = v17;
  *v17 = v0;
  v17[1] = sub_230E241A4;
  v18 = v0[244];
  v19 = v0[242];
  v20 = *MEMORY[0x277D85DE8];

  return sub_230D6F7D0(39, v18, v19, v19);
}

uint64_t ServicesIntelligenceProvider.createDomainDatabases(requestContext:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v4 = *(a2 + 16);
  *(v3 + 112) = *a2;
  *(v3 + 128) = v4;
  *(v3 + 144) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_230E24BC0, v2, 0);
}

uint64_t sub_230E24BC0()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v3 = *(v0 + 136);
    v2 = *(v0 + 144);
    v5 = *(v0 + 112);
    v4 = *(v0 + 120);
    *(v0 + 160) = v1;
    *(v0 + 168) = v2;
    v6 = *(v0 + 104);
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v5, v4, v1);
    v7 = swift_task_alloc();
    *(v0 + 176) = v7;
    *v7 = v0;
    v7[1] = sub_230E24FD0;
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);

    return (sub_230D79AE0)(v8, 25, v0 + 16);
  }

  else
  {
    *(v0 + 184) = 25;
    v11 = swift_task_alloc();
    *(v0 + 152) = v11;
    *v11 = v0;
    v11[1] = sub_230E24D84;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 184), 0, 0);
  }
}

uint64_t sub_230E24D84()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230E24E94, v2, 0);
}

uint64_t sub_230E24E94()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 160) = v3;
  *(v0 + 168) = v6;
  v8 = *(v0 + 136);
  v7 = *(v0 + 144);
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  *(v0 + 16) = v1;
  v11 = *(v0 + 104);
  v12 = *(v0 + 112);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;

  sub_230D0585C(v12, v10, v9);
  v13 = swift_task_alloc();
  *(v0 + 176) = v13;
  *v13 = v0;
  v13[1] = sub_230E24FD0;
  v14 = *(v0 + 96);
  v15 = *(v0 + 104);

  return (sub_230D79AE0)(v14, 25, v0 + 16);
}

uint64_t sub_230E24FD0()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_230E25104(uint64_t a1, _OWORD *a2, _BYTE *a3, uint64_t *a4)
{
  *(v5 + 432) = a1;
  *(v5 + 440) = v4;
  v10 = sub_230E68D80();
  *(v5 + 448) = v10;
  v11 = *(v10 - 8);
  *(v5 + 456) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 464) = swift_task_alloc();
  *(v5 + 472) = swift_task_alloc();
  *(v5 + 480) = swift_task_alloc();
  *(v5 + 488) = swift_task_alloc();
  *(v5 + 496) = swift_task_alloc();
  v13 = swift_task_alloc();
  v14 = a2[5];
  *(v5 + 80) = a2[4];
  *(v5 + 96) = v14;
  v15 = a2[7];
  *(v5 + 112) = a2[6];
  *(v5 + 128) = v15;
  v16 = a2[1];
  *(v5 + 16) = *a2;
  *(v5 + 32) = v16;
  v17 = a2[3];
  *(v5 + 48) = a2[2];
  *(v5 + 64) = v17;
  *(v5 + 633) = *a3;
  v18 = *a4;
  v19 = a4[1];
  *(v5 + 504) = v13;
  *(v5 + 512) = v18;
  *(v5 + 520) = v19;
  v20 = a4[2];
  v21 = a4[3];
  *(v5 + 528) = v20;
  *(v5 + 536) = v21;
  v22 = a4[4];
  *(v5 + 544) = v22;
  if (a1 < 1)
  {
    *(v5 + 272) = v18;
    *(v5 + 280) = v19;
    *(v5 + 288) = v20;
    *(v5 + 296) = v21;
    *(v5 + 304) = v22;
    v25 = swift_task_alloc();
    *(v5 + 592) = v25;
    *v25 = v5;
    v25[1] = sub_230E25778;
    v26 = *(v5 + 440);
    v24 = v5 + 272;
  }

  else
  {
    *(v5 + 352) = v18;
    *(v5 + 360) = v19;
    *(v5 + 368) = v20;
    *(v5 + 376) = v21;
    *(v5 + 384) = v22;
    v23 = swift_task_alloc();
    *(v5 + 552) = v23;
    *v23 = v5;
    v23[1] = sub_230E25308;
    v24 = v5 + 352;
  }

  return sub_230D05310(v24);
}

uint64_t sub_230E25308(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 552);
  v6 = *v2;
  *(v4 + 560) = a1;
  *(v4 + 568) = v1;

  if (v1)
  {
    v7 = *(v4 + 440);

    return MEMORY[0x2822009F8](sub_230E26194, v7, 0);
  }

  else
  {
    v8 = *(v4 + 544);
    v9 = *(v4 + 528);
    *(v4 + 392) = *(v4 + 512);
    *(v4 + 408) = v9;
    *(v4 + 424) = v8;
    v10 = swift_task_alloc();
    *(v4 + 576) = v10;
    *v10 = v6;
    v10[1] = sub_230E254B8;
    v11 = *(v4 + 432);

    return static SystemDatabase.updateConfigurationVersion(_:using:requestContext:)(v11, a1, v4 + 392);
  }
}

uint64_t sub_230E254B8()
{
  v2 = *(*v1 + 576);
  v3 = *(*v1 + 440);
  v6 = *v1;
  *(*v1 + 584) = v0;

  if (v0)
  {
    v4 = sub_230E2639C;
  }

  else
  {
    v4 = sub_230E255E0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E255E0()
{
  v1 = *(v0 + 504);
  sub_230E68D70();
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 432);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][updateSystemStatusAndVersion] Successfully updated configuration version to %ld", v5, 0xCu);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  v6 = *(v0 + 560);
  v7 = *(v0 + 504);
  v8 = *(v0 + 448);
  v9 = *(v0 + 456);

  (*(v9 + 8))(v7, v8);
  v10 = *(v0 + 544);
  v11 = *(v0 + 528);
  *(v0 + 272) = *(v0 + 512);
  *(v0 + 288) = v11;
  *(v0 + 304) = v10;
  v12 = swift_task_alloc();
  *(v0 + 592) = v12;
  *v12 = v0;
  v12[1] = sub_230E25778;
  v13 = *(v0 + 440);

  return sub_230D05310(v0 + 272);
}

uint64_t sub_230E25778(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 592);
  v6 = *v2;
  *(v4 + 600) = a1;
  *(v4 + 608) = v1;

  if (v1)
  {
    v7 = *(v4 + 440);

    return MEMORY[0x2822009F8](sub_230E265AC, v7, 0);
  }

  else
  {
    v8 = *(v4 + 544);
    *(v4 + 632) = *(v4 + 633);
    v9 = *(v4 + 528);
    *(v4 + 312) = *(v4 + 512);
    *(v4 + 328) = v9;
    *(v4 + 344) = v8;
    v10 = swift_task_alloc();
    *(v4 + 616) = v10;
    *v10 = v6;
    v10[1] = sub_230E25944;

    return sub_230E46438((v4 + 632), a1, v4 + 312);
  }
}

uint64_t sub_230E25944()
{
  v2 = *v1;
  v3 = *(*v1 + 616);
  v7 = *v1;
  *(*v1 + 624) = v0;

  v4 = *(v2 + 440);
  if (v0)
  {
    v5 = sub_230E25F84;
  }

  else
  {
    v5 = sub_230E25A5C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_230E25A5C()
{
  v59 = v0;
  v1 = *(v0 + 496);
  sub_230E68D70();
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 633);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v58[0] = v6;
    v7 = 0xEC000000676E697ALL;
    *v5 = 136315138;
    v8 = 0x696C616974696E69;
    v9 = 0xE800000000000000;
    v10 = 0x6465646172676564;
    if (v4 != 2)
    {
      v10 = 0x726F727265;
      v9 = 0xE500000000000000;
    }

    if (v4)
    {
      v8 = 0x7964616572;
      v7 = 0xE500000000000000;
    }

    if (v4 <= 1)
    {
      v11 = v8;
    }

    else
    {
      v11 = v10;
    }

    if (v4 <= 1)
    {
      v12 = v7;
    }

    else
    {
      v12 = v9;
    }

    v13 = *(v0 + 600);
    v55 = *(v0 + 496);
    v14 = *(v0 + 448);
    v15 = *(v0 + 456);
    v16 = sub_230D7E620(v11, v12, v58);

    *(v5 + 4) = v16;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][updateSystemStatusAndVersion] System status set to: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);

    v17 = *(v15 + 8);
    v17(v55, v14);
  }

  else
  {
    v18 = *(v0 + 600);
    v19 = *(v0 + 496);
    v20 = *(v0 + 448);
    v21 = *(v0 + 456);

    v17 = *(v21 + 8);
    v17(v19, v20);
  }

  v22 = *(v0 + 128);
  if (*(v0 + 32) > 0 || *(v0 + 56) > 0 || *(v0 + 80) > 0 || *(v0 + 104) > 0 || v22 >= 1)
  {
    v56 = v17;
    v23 = *(v0 + 488);
    sub_230E68D70();
    sub_230E3B530(v0 + 16, v0 + 144);
    v24 = sub_230E68D60();
    v25 = sub_230E69400();
    sub_230E3B3FC(v0 + 16);
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 488);
    v29 = *(v0 + 448);
    v28 = *(v0 + 456);
    if (v26)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v57 = v31;
      *v30 = 136315138;
      v32 = *(v0 + 96);
      v58[4] = *(v0 + 80);
      v58[5] = v32;
      v33 = *(v0 + 128);
      v58[6] = *(v0 + 112);
      v58[7] = v33;
      v34 = *(v0 + 32);
      v58[0] = *(v0 + 16);
      v58[1] = v34;
      v35 = *(v0 + 64);
      v58[2] = *(v0 + 48);
      v58[3] = v35;
      v36 = sub_230E657B4();
      v38 = v22;
      v39 = sub_230D7E620(v36, v37, &v57);

      *(v30 + 4) = v39;
      v22 = v38;
      _os_log_impl(&dword_230D02000, v24, v25, "[ServicesIntelligenceProvider][updateSystemStatusAndVersion] Component failures detected: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x23191EAE0](v31, -1, -1);
      MEMORY[0x23191EAE0](v30, -1, -1);
    }

    else
    {
    }

    v56(v27, v29);
    if (v22 >= 1)
    {
      v40 = *(v0 + 480);
      sub_230E68D70();
      v41 = sub_230E68D60();
      v42 = sub_230E69400();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_230D02000, v41, v42, "[ServicesIntelligenceProvider][updateSystemStatusAndVersion] KV store sync failed - debug functionality may be impacted", v43, 2u);
        MEMORY[0x23191EAE0](v43, -1, -1);
      }

      v44 = *(v0 + 480);
      v45 = *(v0 + 448);
      v46 = *(v0 + 456);

      v56(v44, v45);
    }
  }

  v48 = *(v0 + 496);
  v47 = *(v0 + 504);
  v50 = *(v0 + 480);
  v49 = *(v0 + 488);
  v52 = *(v0 + 464);
  v51 = *(v0 + 472);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_230E25F84()
{
  v1 = v0[75];

  v2 = v0[78];
  v3 = v0[58];
  sub_230E68D70();
  v4 = v2;
  v5 = sub_230E68D60();
  v6 = sub_230E69400();
  MEMORY[0x23191E910](v2);
  v7 = os_log_type_enabled(v5, v6);
  v23 = v0[58];
  if (v7)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_230D02000, v5, v6, "[ServicesIntelligenceProvider][updateSystemStatusAndVersion] Failed to update system status: %@", v8, 0xCu);
    sub_230D2D9F8(v9, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v9, -1, -1);
    MEMORY[0x23191EAE0](v8, -1, -1);
    v12 = v0[58];
  }

  v14 = v0[62];
  v13 = v0[63];
  v16 = v0[60];
  v15 = v0[61];
  v17 = v0[59];
  v18 = v5;
  v20 = v0[56];
  v19 = v0[57];

  (*(v19 + 8))(v23, v20);
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_230E26194()
{
  v1 = v0[71];
  v2 = v0[59];
  sub_230E68D70();
  v3 = v1;
  v4 = sub_230E68D60();
  v5 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  v6 = os_log_type_enabled(v4, v5);
  v22 = v0[59];
  if (v6)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_230D02000, v4, v5, "[ServicesIntelligenceProvider][updateSystemStatusAndVersion] Failed to update configuration version: %@", v7, 0xCu);
    sub_230D2D9F8(v8, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
    v11 = v0[59];
  }

  v13 = v0[62];
  v12 = v0[63];
  v15 = v0[60];
  v14 = v0[61];
  v16 = v4;
  v17 = v0[57];
  v18 = v0[58];
  v19 = v0[56];

  (*(v17 + 8))(v22, v19);
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_230E2639C()
{
  v1 = v0[70];

  v2 = v0[73];
  v3 = v0[59];
  sub_230E68D70();
  v4 = v2;
  v5 = sub_230E68D60();
  v6 = sub_230E69400();
  MEMORY[0x23191E910](v2);
  v7 = os_log_type_enabled(v5, v6);
  v23 = v0[59];
  if (v7)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_230D02000, v5, v6, "[ServicesIntelligenceProvider][updateSystemStatusAndVersion] Failed to update configuration version: %@", v8, 0xCu);
    sub_230D2D9F8(v9, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v9, -1, -1);
    MEMORY[0x23191EAE0](v8, -1, -1);
    v12 = v0[59];
  }

  v14 = v0[62];
  v13 = v0[63];
  v16 = v0[60];
  v15 = v0[61];
  v17 = v5;
  v18 = v0[57];
  v19 = v0[58];
  v20 = v0[56];

  (*(v18 + 8))(v23, v20);
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_230E265AC()
{
  v1 = v0[76];
  v2 = v0[58];
  sub_230E68D70();
  v3 = v1;
  v4 = sub_230E68D60();
  v5 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  v6 = os_log_type_enabled(v4, v5);
  v22 = v0[58];
  if (v6)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_230D02000, v4, v5, "[ServicesIntelligenceProvider][updateSystemStatusAndVersion] Failed to update system status: %@", v7, 0xCu);
    sub_230D2D9F8(v8, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
    v11 = v0[58];
  }

  v13 = v0[62];
  v12 = v0[63];
  v15 = v0[60];
  v14 = v0[61];
  v16 = v0[59];
  v17 = v4;
  v19 = v0[56];
  v18 = v0[57];

  (*(v18 + 8))(v22, v19);
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_230E267B4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  *(v4 + 448) = a3;
  *(v4 + 456) = a4;
  *(v4 + 432) = a1;
  *(v4 + 440) = a2;
  v6 = a4[1];
  *(v4 + 464) = *a4;
  *(v4 + 480) = v6;
  *(v4 + 496) = a4[2];
  v7 = sub_230E68D80();
  *(v4 + 512) = v7;
  v8 = *(v7 - 8);
  *(v4 + 520) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 528) = swift_task_alloc();
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E268B8, a2, 0);
}

uint64_t sub_230E268B8()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[55];
  v2 = v0[56];
  sub_230E68950();
  sub_230D1CDE0(v2, (v0 + 20));
  sub_230D1CDE0(v2, (v0 + 25));

  v3 = swift_task_alloc();
  v0[67] = v3;
  *v3 = v0;
  v3[1] = sub_230E269E8;
  v5 = v0[55];
  v4 = v0[56];
  v6 = *MEMORY[0x277D85DE8];

  return sub_230D72678(15, v4, v5, 0, v5);
}

uint64_t sub_230E269E8(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 536);
  v6 = *v2;
  *(v4 + 544) = a1;
  *(v4 + 552) = v1;

  v7 = *(v3 + 448);
  v8 = *(v3 + 440);
  sub_230D1CE3C(v7);
  if (v1)
  {
    v9 = sub_230E26B68;
  }

  else
  {
    v9 = sub_230E26CA8;
  }

  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_230E26B68()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_230D1CE3C(*(v0 + 448));
  v1 = *(v0 + 552);
  sub_230E69540();
  *(v0 + 384) = 0;
  *(v0 + 392) = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD00000000000003DLL, 0x8000000230E84C90);
  *(v0 + 416) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  v2 = *(v0 + 384);
  v3 = *(v0 + 392);
  sub_230E68950();
  MEMORY[0x23191E910](v1);

  v4 = *(v0 + 528);
  **(v0 + 432) = 0;

  v5 = *(v0 + 8);
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_230E26CA8()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 544);
  sub_230D1CE3C(*(v0 + 448));
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E26D40, v1, 0);
}

uint64_t sub_230E26D40()
{
  v40 = v0;
  v39[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 544);
  v2 = *(v0 + 528);
  v4 = *(v0 + 496);
  v3 = *(v0 + 504);
  v6 = *(v0 + 448);
  v5 = *(v0 + 456);
  v35 = *(v0 + 464);
  v36 = *(v0 + 480);
  v7 = sub_230D0DA94(MEMORY[0x277D84F90]);
  *(v0 + 560) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D898, &qword_230E7F1C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E6B3B0;
  *(inited + 32) = 0x6769666E6F635F5FLL;
  *(inited + 40) = 0xEF6E6F6974617275;
  *(inited + 48) = v35;
  *(inited + 64) = v36;
  *(inited + 80) = v4;
  *(inited + 88) = v3;
  sub_230E1E0EC(v5, v0 + 112);
  v9 = sub_230D0F748(inited);
  *(v0 + 568) = v9;
  swift_setDeallocating();
  sub_230D2D9F8(inited + 32, &qword_27DB5D8A0, &qword_230E7F1C8);
  sub_230D1CDE0(v6, v0 + 240);

  sub_230E68D70();
  sub_230D1CDE0(v6, v0 + 280);
  v10 = sub_230E68D60();
  v11 = sub_230E693E0();
  sub_230D1CE3C(v6);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 448);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v39[0] = v14;
    *v13 = 136315650;
    *(v13 + 4) = sub_230D7E620(0x44564B6E49746573, 0xEF65736162617461, v39);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_230D7E620(*(v12 + 1), *(v12 + 2), v39);
    *(v13 + 22) = 2080;
    v38 = *v12;
    v15 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v15);

    v16 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v39);

    *(v13 + 24) = v16;
    _os_log_impl(&dword_230D02000, v10, v11, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v14, -1, -1);
    MEMORY[0x23191EAE0](v13, -1, -1);
  }

  v17 = *(v0 + 448);
  *(v0 + 368) = *(v17 + 24);
  if ((*(v0 + 368) & 1) == 0)
  {
    goto LABEL_7;
  }

  v18 = *(v0 + 376);
  v37 = *v17;
  v19 = RequestType.rawValue.getter();
  v21 = v20;
  sub_230D1CE90(v0 + 368, v0 + 400);
  LOBYTE(v19) = sub_230D33FDC(v19, v21, v18);

  if ((v19 & 1) == 0)
  {
    v22 = *(v0 + 369);
    sub_230D1F9CC(v0 + 368);
    if (v22 >= 2)
    {
      goto LABEL_8;
    }

LABEL_7:
    v23 = swift_task_alloc();
    *(v0 + 584) = v23;
    *v23 = v0;
    v24 = sub_230E27230;
    goto LABEL_12;
  }

  sub_230D1F9CC(v0 + 368);
LABEL_8:
  sub_230E68950();
  *(v0 + 576) = CFAbsoluteTimeGetCurrent();
  *(v0 + 640) = 0u;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  *(v0 + 688) = 0u;
  *(v0 + 704) = 0u;
  *(v0 + 720) = 0u;
  *(v0 + 736) = 0u;
  *(v0 + 752) = 0u;
  *(v0 + 768) = 0u;
  *(v0 + 784) = 0u;
  *(v0 + 800) = 0u;
  *(v0 + 816) = 0u;
  *(v0 + 832) = 0u;
  *(v0 + 848) = 0u;
  *(v0 + 864) = 0u;
  *(v0 + 880) = 0u;
  *(v0 + 896) = 0u;
  *(v0 + 912) = 0u;
  *(v0 + 928) = 0u;
  *(v0 + 944) = 0u;
  *(v0 + 960) = 0u;
  *(v0 + 976) = 0u;
  *(v0 + 992) = 0u;
  *(v0 + 1008) = 0;
  *(v0 + 1012) = 93;
  v25 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 640), (v0 + 1012));
  *(v0 + 1016) = v25;
  v26 = 0.0;
  if (!v25)
  {
    v27 = *(v0 + 688);
    v28 = *(v0 + 760);
    v29 = __CFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      __break(1u);
    }

    v26 = vcvtd_n_f64_u64(v30, 0x14uLL);
  }

  *(v0 + 600) = v26;
  *(v0 + 424) = 0;
  v23 = swift_task_alloc();
  *(v0 + 608) = v23;
  *v23 = v0;
  v24 = sub_230E27390;
LABEL_12:
  v23[1] = v24;
  v31 = *(v0 + 544);
  v32 = *(v0 + 448);
  v33 = *MEMORY[0x277D85DE8];

  return sub_230E04FD4(v9, v7, v31, v32);
}

uint64_t sub_230E27230(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *v2;
  v4[40] = v2;
  v4[41] = a1;
  v4[42] = v1;
  v5 = v3[73];
  v6 = *v2;
  v4[74] = v1;

  v7 = v3[68];
  if (v1)
  {
    v8 = sub_230E27ADC;
  }

  else
  {
    v8 = sub_230E279D4;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_230E27390(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *v2;
  v4[43] = v2;
  v4[44] = a1;
  v4[45] = v1;
  v5 = v3[76];
  v6 = *v2;
  v4[77] = v1;

  v7 = v3[68];
  if (v1)
  {
    v8 = sub_230E2762C;
  }

  else
  {
    v8 = sub_230E274F0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_230E274F0()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  v5 = *(v0 + 512);
  v6 = *(v0 + 448);
  sub_230D34F14(9, *(v0 + 600), *(v0 + 1016) != 0, v6, (v0 + 424), *(v0 + 576));
  (*(v4 + 8))(v3, v5);

  sub_230D1CE3C(v6);
  v7 = *(v0 + 352);
  v8 = *(v0 + 568);
  v9 = *(v0 + 560);
  v10 = *(v0 + 544);
  v11 = *(v0 + 440);

  *(v0 + 624) = v7;
  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E277A4, v11, 0);
}

uint64_t sub_230E2762C()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 616);
  v2 = *(v0 + 600);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v16 = *(v0 + 544);
  v6 = *(v0 + 528);
  v7 = *(v0 + 520);
  v8 = *(v0 + 512);
  v9 = *(v0 + 448);
  v10 = *(v0 + 1016) != 0;
  *(v0 + 424) = v1;
  swift_willThrow();
  v11 = v1;
  sub_230D34F14(9, v2, v10, v9, (v0 + 424), v3);
  MEMORY[0x23191E910](v1);
  (*(v7 + 8))(v6, v8);

  sub_230D1CE3C(v9);

  *(v0 + 632) = *(v0 + 616);
  v12 = *(v0 + 560);
  v13 = *(v0 + 440);

  v14 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E27894, v13, 0);
}

uint64_t sub_230E277A4()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 624) == 1;
  v2 = *(v0 + 544);
  sub_230E68950();

  v3 = *(v0 + 528);
  **(v0 + 432) = v1;

  v4 = *(v0 + 8);
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_230E27894()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 544);

  v2 = *(v0 + 632);
  sub_230E69540();
  *(v0 + 384) = 0;
  *(v0 + 392) = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD00000000000003DLL, 0x8000000230E84C90);
  *(v0 + 416) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  v3 = *(v0 + 384);
  v4 = *(v0 + 392);
  sub_230E68950();
  MEMORY[0x23191E910](v2);

  v5 = *(v0 + 528);
  **(v0 + 432) = 0;

  v6 = *(v0 + 8);
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t sub_230E279D4()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[56];
  (*(v0[65] + 8))(v0[66], v0[64]);

  sub_230D1CE3C(v3);
  v4 = v0[41];
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[68];
  v8 = v0[55];

  v0[78] = v4;
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E277A4, v8, 0);
}

uint64_t sub_230E27ADC()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[68];
  v4 = v0[56];
  (*(v0[65] + 8))(v0[66], v0[64]);

  sub_230D1CE3C(v4);

  v0[79] = v0[74];
  v5 = v0[70];
  v6 = v0[55];

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E27894, v6, 0);
}

uint64_t sub_230E27BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v4[108] = a4;
  v4[107] = a3;
  v4[106] = a2;
  v4[105] = a1;
  v7 = sub_230E68D80();
  v4[109] = v7;
  v8 = *(v7 - 8);
  v4[110] = v8;
  v9 = *(v8 + 64) + 15;
  v4[111] = swift_task_alloc();
  v4[112] = swift_task_alloc();
  v4[113] = swift_task_alloc();
  v4[114] = swift_task_alloc();
  v4[115] = swift_task_alloc();
  v4[116] = swift_task_alloc();
  sub_230D1CDE0(a3, (v4 + 40));
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E27D30, a2, 0);
}

uint64_t sub_230E27D30()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[106];
  sub_230D1CDE0(v0[107], (v0 + 45));

  v2 = swift_task_alloc();
  v0[117] = v2;
  *v2 = v0;
  v2[1] = sub_230E27E30;
  v3 = v0[107];
  v4 = v0[106];
  v5 = *MEMORY[0x277D85DE8];

  return sub_230D6F7D0(39, v3, v4, v4);
}

uint64_t sub_230E27E30(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 936);
  v6 = *v2;
  *(v4 + 944) = a1;
  *(v4 + 952) = v1;

  v7 = *(v3 + 856);
  v8 = *(v3 + 848);
  sub_230D1CE3C(v7);
  if (v1)
  {
    v9 = sub_230E28F48;
  }

  else
  {
    v9 = sub_230E27FB0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_230E27FB0()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = v0[108];
  sub_230D1CE3C(v0[107]);
  v0[120] = *v1;
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E28050, 0, 0);
}

uint64_t sub_230E28050()
{
  v7 = *MEMORY[0x277D85DE8];
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v1 = v0[120];
  v2 = v0[118];
  v3 = v0[107];
  v4 = qword_27DB5A438;
  v0[121] = qword_27DB5A438;
  sub_230D1CDE0(v3, (v0 + 50));

  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E28150, v4, 0);
}

uint64_t sub_230E28150()
{
  v32 = v0;
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 928);
  v2 = *(v0 + 856);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 440);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 856);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31[0] = v7;
    *v6 = 136315650;
    *(v6 + 4) = sub_230D7E620(0xD000000000000019, 0x8000000230E80950, v31);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v31);
    *(v6 + 22) = 2080;
    v30 = *v5;
    v8 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v8);

    v9 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v31);

    *(v6 + 24) = v9;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v10 = *(v0 + 856);
  *(v0 + 752) = *(v10 + 24);
  *(v0 + 2308) = *v10;
  v11 = *(v0 + 752);
  *(v0 + 2309) = v11;
  v12 = *(v0 + 753);
  *(v0 + 2310) = v12;
  v13 = *(v0 + 760);
  *(v0 + 976) = v13;
  if (v11 & 1) != 0 && ((v14 = RequestType.rawValue.getter(), v16 = v15, sub_230D1CE90(v0 + 752, v0 + 800), LOBYTE(v14) = sub_230D33FDC(v14, v16, v13), , sub_230D1F9CC(v0 + 752), (v14) || v12 >= 2))
  {
    sub_230E68950();
    *(v0 + 984) = CFAbsoluteTimeGetCurrent();
    *(v0 + 1168) = 0u;
    *(v0 + 1184) = 0u;
    *(v0 + 1200) = 0u;
    *(v0 + 1216) = 0u;
    *(v0 + 1232) = 0u;
    *(v0 + 1248) = 0u;
    *(v0 + 1264) = 0u;
    *(v0 + 1280) = 0u;
    *(v0 + 1296) = 0u;
    *(v0 + 1312) = 0u;
    *(v0 + 1328) = 0u;
    *(v0 + 1344) = 0u;
    *(v0 + 1360) = 0u;
    *(v0 + 1376) = 0u;
    *(v0 + 1392) = 0u;
    *(v0 + 1408) = 0u;
    *(v0 + 1424) = 0u;
    *(v0 + 1440) = 0u;
    *(v0 + 1456) = 0u;
    *(v0 + 1472) = 0u;
    *(v0 + 1488) = 0u;
    *(v0 + 1504) = 0u;
    *(v0 + 1520) = 0u;
    *(v0 + 1536) = 0;
    *(v0 + 2292) = 93;
    v19 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 1168), (v0 + 2292));
    *(v0 + 2296) = v19;
    v20 = 0.0;
    if (!v19)
    {
      v21 = *(v0 + 1216);
      v22 = *(v0 + 1288);
      v23 = __CFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        __break(1u);
      }

      v20 = vcvtd_n_f64_u64(v24, 0x14uLL);
    }

    *(v0 + 1000) = v20;
    v17 = swift_task_alloc();
    *(v0 + 1008) = v17;
    *v17 = v0;
    v18 = sub_230E28778;
  }

  else
  {
    v17 = swift_task_alloc();
    *(v0 + 992) = v17;
    *v17 = v0;
    v18 = sub_230E2854C;
  }

  v17[1] = v18;
  v25 = *(v0 + 960);
  v26 = *(v0 + 944);
  v27 = *(v0 + 856);
  v28 = *MEMORY[0x277D85DE8];

  return sub_230E4FA50(v0 + 704, v25, v26, v27);
}

uint64_t sub_230E2854C()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 992);
  v2 = *(*v0 + 968);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E28688, v2, 0);
}

uint64_t sub_230E28688()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[120];
  v2 = v0[118];
  v3 = v0[116];
  v4 = v0[110];
  v5 = v0[109];
  v6 = v0[107];
  v7 = v0[106];
  v8 = *(v4 + 8);
  v0[127] = v8;
  v0[128] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v5);

  sub_230D1CE3C(v6);
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E289C4, v7, 0);
}

uint64_t sub_230E28778()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 1008);
  v2 = *(*v0 + 968);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E288B4, v2, 0);
}

uint64_t sub_230E288B4()
{
  v11 = *MEMORY[0x277D85DE8];
  sub_230E4D2AC(44, *(v0 + 1000), *(v0 + 2296) != 0, *(v0 + 856), *(v0 + 984));
  v1 = *(v0 + 960);
  v2 = *(v0 + 944);
  v3 = *(v0 + 928);
  v4 = *(v0 + 880);
  v5 = *(v0 + 872);
  v6 = *(v0 + 856);
  v7 = *(v0 + 848);
  v8 = *(v4 + 8);
  *(v0 + 1016) = v8;
  *(v0 + 1024) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v5);

  sub_230D1CE3C(v6);
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E289C4, v7, 0);
}

uint64_t sub_230E289C4()
{
  v44 = v0;
  v43[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 864);
  *(v0 + 1032) = *(v0 + 704);
  *(v0 + 1048) = *(v0 + 720);
  v2 = *(v1 + 32);
  *(v0 + 1056) = v2;
  *(v0 + 832) = v2;
  if (v2)
  {
    v3 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230E29034, 0, 0);
  }

  else
  {
    v4 = *(v0 + 920);
    sub_230E68D70();
    v5 = sub_230E68D60();
    v6 = sub_230E693F0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_230D02000, v5, v6, "[ServicesIntelligenceProvider][storeConfigurationInSystemDB] No logging configuration to store", v7, 2u);
      MEMORY[0x23191EAE0](v7, -1, -1);
    }

    v8 = *(v0 + 1024);
    v9 = *(v0 + 1016);
    v10 = *(v0 + 920);
    v11 = *(v0 + 872);

    v9(v10, v11);
    *(v0 + 1112) = sub_230D0F35C(MEMORY[0x277D84F90]);
    *(v0 + 1096) = 0u;
    v12 = *(v0 + 904);
    v13 = *(v0 + 864);
    v14 = *(v0 + 856);
    v15 = *(v0 + 848);
    sub_230D1CDE0(v14, v0 + 480);
    sub_230D1CDE0(v14, v0 + 520);

    sub_230E1E0EC(v13, v0 + 272);
    sub_230E68D70();
    sub_230D1CDE0(v14, v0 + 560);
    v16 = sub_230E68D60();
    v17 = sub_230E693E0();
    sub_230D1CE3C(v14);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 2308);
      v19 = *(v0 + 856);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v43[0] = v21;
      *v20 = 136315650;
      *(v20 + 4) = sub_230D7E620(0xD000000000000024, 0x8000000230E806F0, v43);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_230D7E620(*(v19 + 8), *(v19 + 16), v43);
      *(v20 + 22) = 2080;
      v22 = RequestType.rawValue.getter();
      MEMORY[0x23191DA00](v22);

      v23 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v43);

      *(v20 + 24) = v23;
      _os_log_impl(&dword_230D02000, v16, v17, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23191EAE0](v21, -1, -1);
      MEMORY[0x23191EAE0](v20, -1, -1);
    }

    if ((*(v0 + 2309) & 1) == 0)
    {
      goto LABEL_12;
    }

    v24 = *(v0 + 976);
    v25 = *(v0 + 2310);
    v42 = *(v0 + 2308);
    v26 = RequestType.rawValue.getter();
    v28 = v27;
    sub_230D1CE90(v0 + 752, v0 + 784);
    LOBYTE(v26) = sub_230D33FDC(v26, v28, v24);

    sub_230D1F9CC(v0 + 752);
    if ((v26 & 1) != 0 || v25 >= 2)
    {
      sub_230E68950();
      *(v0 + 1120) = CFAbsoluteTimeGetCurrent();
      *(v0 + 1912) = 0u;
      *(v0 + 1928) = 0u;
      *(v0 + 1944) = 0u;
      *(v0 + 1960) = 0u;
      *(v0 + 1976) = 0u;
      *(v0 + 1992) = 0u;
      *(v0 + 2008) = 0u;
      *(v0 + 2024) = 0u;
      *(v0 + 2040) = 0u;
      *(v0 + 2056) = 0u;
      *(v0 + 2072) = 0u;
      *(v0 + 2088) = 0u;
      *(v0 + 2104) = 0u;
      *(v0 + 2120) = 0u;
      *(v0 + 2136) = 0u;
      *(v0 + 2152) = 0u;
      *(v0 + 2168) = 0u;
      *(v0 + 2184) = 0u;
      *(v0 + 2200) = 0u;
      *(v0 + 2216) = 0u;
      *(v0 + 2232) = 0u;
      *(v0 + 2248) = 0u;
      *(v0 + 2264) = 0u;
      *(v0 + 2280) = 0;
      *(v0 + 2284) = 93;
      v31 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 1912), (v0 + 2284));
      *(v0 + 2304) = v31;
      v32 = 0.0;
      if (!v31)
      {
        v33 = *(v0 + 1960);
        v34 = *(v0 + 2032);
        v35 = __CFADD__(v33, v34);
        v36 = v33 + v34;
        if (v35)
        {
          __break(1u);
        }

        v32 = vcvtd_n_f64_u64(v36, 0x14uLL);
      }

      *(v0 + 1144) = v32;
      *(v0 + 816) = 0;
      v29 = swift_task_alloc();
      *(v0 + 1152) = v29;
      *v29 = v0;
      v30 = sub_230E29EC4;
    }

    else
    {
LABEL_12:
      v29 = swift_task_alloc();
      *(v0 + 1128) = v29;
      *v29 = v0;
      v30 = sub_230E29D6C;
    }

    v29[1] = v30;
    v37 = *(v0 + 864);
    v38 = *(v0 + 856);
    v39 = *(v0 + 848);
    v40 = *MEMORY[0x277D85DE8];

    return sub_230E2AED8(v0 + 728, v39, v38, v37);
  }
}

uint64_t sub_230E28F48()
{
  v11 = *MEMORY[0x277D85DE8];
  sub_230D1CE3C(v0[107]);
  v1 = v0[119];
  v2 = v0[116];
  v3 = v0[115];
  v4 = v0[114];
  v5 = v0[113];
  v6 = v0[112];
  v7 = v0[111];

  v8 = v0[1];
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_230E29034()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = v0[121];
  v2 = v0[118];
  sub_230D1CDE0(v0[107], (v0 + 80));

  sub_230E3B58C((v0 + 104), (v0 + 103));
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E290F0, v1, 0);
}

uint64_t sub_230E290F0()
{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 912);
  v2 = *(v0 + 856);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 600);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 2308);
    v6 = *(v0 + 856);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30[0] = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_230D7E620(0xD000000000000019, 0x8000000230E80930, v30);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v6 + 8), *(v6 + 16), v30);
    *(v7 + 22) = 2080;
    v9 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v9);

    v10 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v30);

    *(v7 + 24) = v10;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  if ((*(v0 + 2309) & 1) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(v0 + 976);
  v12 = *(v0 + 2310);
  v29 = *(v0 + 2308);
  v13 = RequestType.rawValue.getter();
  v15 = v14;
  sub_230D1CE90(v0 + 752, v0 + 768);
  LOBYTE(v13) = sub_230D33FDC(v13, v15, v11);

  sub_230D1F9CC(v0 + 752);
  if ((v13 & 1) != 0 || v12 >= 2)
  {
    sub_230E68950();
    *(v0 + 1064) = CFAbsoluteTimeGetCurrent();
    *(v0 + 1540) = 0u;
    *(v0 + 1556) = 0u;
    *(v0 + 1572) = 0u;
    *(v0 + 1588) = 0u;
    *(v0 + 1604) = 0u;
    *(v0 + 1620) = 0u;
    *(v0 + 1636) = 0u;
    *(v0 + 1652) = 0u;
    *(v0 + 1668) = 0u;
    *(v0 + 1684) = 0u;
    *(v0 + 1700) = 0u;
    *(v0 + 1716) = 0u;
    *(v0 + 1732) = 0u;
    *(v0 + 1748) = 0u;
    *(v0 + 1764) = 0u;
    *(v0 + 1780) = 0u;
    *(v0 + 1796) = 0u;
    *(v0 + 1812) = 0u;
    *(v0 + 1828) = 0u;
    *(v0 + 1844) = 0u;
    *(v0 + 1860) = 0u;
    *(v0 + 1876) = 0u;
    *(v0 + 1892) = 0u;
    *(v0 + 1908) = 0;
    *(v0 + 2288) = 93;
    v19 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 1540), (v0 + 2288));
    *(v0 + 2300) = v19;
    v20 = 0.0;
    if (!v19)
    {
      v21 = *(v0 + 1588);
      v22 = *(v0 + 1660);
      v23 = __CFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        __break(1u);
      }

      v20 = vcvtd_n_f64_u64(v24, 0x14uLL);
    }

    *(v0 + 1080) = v20;
    v16 = *(v0 + 1056);
    v17 = swift_task_alloc();
    *(v0 + 1088) = v17;
    *v17 = v0;
    v18 = sub_230E296FC;
  }

  else
  {
LABEL_6:
    v16 = *(v0 + 1056);
    v17 = swift_task_alloc();
    *(v0 + 1072) = v17;
    *v17 = v0;
    v18 = sub_230E294E4;
  }

  v17[1] = v18;
  v25 = *(v0 + 944);
  v26 = *(v0 + 856);
  v27 = *MEMORY[0x277D85DE8];

  return sub_230E40478(v0 + 680, v16, v25, v26);
}

uint64_t sub_230E294E4()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 1072);
  v2 = *(*v0 + 968);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E29620, v2, 0);
}

uint64_t sub_230E29620()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1024);
  v2 = *(v0 + 944);
  v3 = *(v0 + 856);
  v4 = *(v0 + 848);
  (*(v0 + 1016))(*(v0 + 912), *(v0 + 872));
  sub_230D2D9F8(v0 + 832, &qword_27DB5D8A8, &qword_230E7F1D8);

  sub_230D1CE3C(v3);
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E29934, v4, 0);
}

uint64_t sub_230E296FC()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 1088);
  v2 = *(*v0 + 968);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E29838, v2, 0);
}

uint64_t sub_230E29838()
{
  v7 = *MEMORY[0x277D85DE8];
  sub_230E4D2AC(43, *(v0 + 1080), *(v0 + 2300) != 0, *(v0 + 856), *(v0 + 1064));
  v1 = *(v0 + 1024);
  v2 = *(v0 + 944);
  v3 = *(v0 + 856);
  v4 = *(v0 + 848);
  (*(v0 + 1016))(*(v0 + 912), *(v0 + 872));
  sub_230D2D9F8(v0 + 832, &qword_27DB5D8A8, &qword_230E7F1D8);

  sub_230D1CE3C(v3);
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E29934, v4, 0);
}

uint64_t sub_230E29934()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 680);
  *(v0 + 1112) = *(v0 + 696);
  *(v0 + 1096) = v1;
  v2 = *(v0 + 904);
  v3 = *(v0 + 864);
  v4 = *(v0 + 856);
  v5 = *(v0 + 848);
  sub_230D1CDE0(v4, v0 + 480);
  sub_230D1CDE0(v4, v0 + 520);

  sub_230E1E0EC(v3, v0 + 272);
  sub_230E68D70();
  sub_230D1CDE0(v4, v0 + 560);
  v6 = sub_230E68D60();
  v7 = sub_230E693E0();
  sub_230D1CE3C(v4);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 2308);
    v9 = *(v0 + 856);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33[0] = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_230D7E620(0xD000000000000024, 0x8000000230E806F0, v33);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_230D7E620(*(v9 + 8), *(v9 + 16), v33);
    *(v10 + 22) = 2080;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v33);

    *(v10 + 24) = v13;
    _os_log_impl(&dword_230D02000, v6, v7, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v11, -1, -1);
    MEMORY[0x23191EAE0](v10, -1, -1);
  }

  if ((*(v0 + 2309) & 1) == 0)
  {
    goto LABEL_6;
  }

  v14 = *(v0 + 976);
  v15 = *(v0 + 2310);
  v32 = *(v0 + 2308);
  v16 = RequestType.rawValue.getter();
  v18 = v17;
  sub_230D1CE90(v0 + 752, v0 + 784);
  LOBYTE(v16) = sub_230D33FDC(v16, v18, v14);

  sub_230D1F9CC(v0 + 752);
  if ((v16 & 1) != 0 || v15 >= 2)
  {
    sub_230E68950();
    *(v0 + 1120) = CFAbsoluteTimeGetCurrent();
    *(v0 + 1912) = 0u;
    *(v0 + 1928) = 0u;
    *(v0 + 1944) = 0u;
    *(v0 + 1960) = 0u;
    *(v0 + 1976) = 0u;
    *(v0 + 1992) = 0u;
    *(v0 + 2008) = 0u;
    *(v0 + 2024) = 0u;
    *(v0 + 2040) = 0u;
    *(v0 + 2056) = 0u;
    *(v0 + 2072) = 0u;
    *(v0 + 2088) = 0u;
    *(v0 + 2104) = 0u;
    *(v0 + 2120) = 0u;
    *(v0 + 2136) = 0u;
    *(v0 + 2152) = 0u;
    *(v0 + 2168) = 0u;
    *(v0 + 2184) = 0u;
    *(v0 + 2200) = 0u;
    *(v0 + 2216) = 0u;
    *(v0 + 2232) = 0u;
    *(v0 + 2248) = 0u;
    *(v0 + 2264) = 0u;
    *(v0 + 2280) = 0;
    *(v0 + 2284) = 93;
    v21 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 1912), (v0 + 2284));
    *(v0 + 2304) = v21;
    v22 = 0.0;
    if (!v21)
    {
      v23 = *(v0 + 1960);
      v24 = *(v0 + 2032);
      v25 = __CFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        __break(1u);
      }

      v22 = vcvtd_n_f64_u64(v26, 0x14uLL);
    }

    *(v0 + 1144) = v22;
    *(v0 + 816) = 0;
    v19 = swift_task_alloc();
    *(v0 + 1152) = v19;
    *v19 = v0;
    v20 = sub_230E29EC4;
  }

  else
  {
LABEL_6:
    v19 = swift_task_alloc();
    *(v0 + 1128) = v19;
    *v19 = v0;
    v20 = sub_230E29D6C;
  }

  v19[1] = v20;
  v27 = *(v0 + 864);
  v28 = *(v0 + 856);
  v29 = *(v0 + 848);
  v30 = *MEMORY[0x277D85DE8];

  return sub_230E2AED8(v0 + 728, v29, v28, v27);
}

uint64_t sub_230E29D6C()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 1128);
  v4 = *v1;
  *(*v1 + 1136) = v0;

  v5 = *(v2 + 848);
  if (v0)
  {
    v6 = sub_230E2AD90;
  }

  else
  {
    v6 = sub_230E2A7C8;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E29EC4()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 1152);
  v4 = *v1;
  *(*v1 + 1160) = v0;

  v5 = *(v2 + 848);
  if (v0)
  {
    v6 = sub_230E2A610;
  }

  else
  {
    v6 = sub_230E2A01C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E2A01C()
{
  v86 = v0;
  v85[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 904);
  v4 = *(v0 + 872);
  v5 = *(v0 + 864);
  v6 = *(v0 + 856);
  v7 = *(v0 + 848);
  sub_230D3B794(24, *(v0 + 1144), *(v0 + 2304) != 0, v6, (v0 + 816), *(v0 + 1120));
  v2(v3, v4);

  sub_230D1CE3C(v6);
  sub_230D814C8(v5);
  v8 = *(v0 + 1112);
  v9 = *(v0 + 1096);
  v69 = v9;
  v10 = *(v0 + 1048);
  v70 = *(v0 + 1040);
  v73 = *(v0 + 1104);
  v11 = *(v0 + 1032);
  v75 = *(v0 + 896);
  sub_230D1CE3C(*(v0 + 856));
  v12 = *(v0 + 728);
  v13 = *(v0 + 736);
  v14 = *(v0 + 744);
  v17 = v11 > 0 || v9 > 0 || v12 > 0;

  v18 = MEMORY[0x277D84F90];
  v19 = sub_230D0F35C(MEMORY[0x277D84F90]);
  v20 = sub_230D0F35C(v18);
  *(v0 + 16) = v17;
  v21 = (v0 + 16);
  *(v0 + 24) = v11;
  *(v0 + 32) = v70;
  *(v0 + 40) = v10;
  *(v0 + 48) = v69;
  *(v0 + 56) = v73;
  *(v0 + 64) = v8;
  v71 = v13;
  v74 = v12;
  *(v0 + 72) = v12;
  *(v0 + 80) = v13;
  *(v0 + 88) = v14;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = v19;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = v20;
  sub_230E68D70();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v22 = sub_230E68D60();
  v23 = sub_230E693E0();
  if (!os_log_type_enabled(v22, v23))
  {
    v34 = *(v0 + 1112);
    v35 = *(v0 + 1048);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    goto LABEL_16;
  }

  v24 = *(v0 + 1048);
  v25 = *(v0 + 1040);
  v26 = *(v0 + 1032);
  v27 = swift_slowAlloc();
  *v27 = 134219264;

  *(v27 + 4) = v26;

  *(v27 + 12) = 2048;

  v28 = v26 + v25;
  if (__OFADD__(v26, v25))
  {
    __break(1u);
    goto LABEL_29;
  }

  v29 = *(v0 + 1112);
  v30 = *(v0 + 1104);
  v31 = *(v0 + 1096);
  v32 = *(v0 + 1048);
  *(v27 + 14) = v28;

  *(v27 + 22) = 2048;

  *(v27 + 24) = v31;

  *(v27 + 32) = 2048;

  if (__OFADD__(v31, v30))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  v33 = *(v0 + 1112);
  *(v27 + 34) = v31 + v30;

  *(v27 + 42) = 2048;

  *(v27 + 44) = v74;

  *(v27 + 52) = 2048;

  if (__OFADD__(v74, v71))
  {
    goto LABEL_30;
  }

  *(v27 + 54) = v74 + v71;

  _os_log_impl(&dword_230D02000, v22, v23, "[ServicesIntelligenceProvider][storeConfigurationInSystemDB] SystemDB sync completed - UseCases: %ld/%ld, Logging: %ld/%ld, DatabaseRegistry: %ld/%ld", v27, 0x3Eu);
  MEMORY[0x23191EAE0](v27, -1, -1);
LABEL_16:

  v36 = *(v0 + 1024);
  (*(v0 + 1016))(*(v0 + 896), *(v0 + 872));
  if (*(v0 + 32) > 0 || *(v0 + 56) > 0 || *(v0 + 80) > 0 || *(v0 + 104) > 0 || *(v0 + 128) >= 1)
  {
    v38 = *(v0 + 888);
    sub_230E68D70();
    sub_230E3B530(v0 + 16, v0 + 144);
    v39 = sub_230E68D60();
    v40 = sub_230E69400();
    sub_230E3B3FC(v0 + 16);
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 1024);
    v43 = *(v0 + 1016);
    v44 = *(v0 + 944);
    v45 = *(v0 + 888);
    v46 = *(v0 + 872);
    if (v41)
    {
      v76 = *(v0 + 872);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v85[0] = v48;
      *v47 = 136315138;
      v81 = *(v0 + 80);
      v82 = *(v0 + 96);
      v83 = *(v0 + 112);
      v84 = *(v0 + 128);
      v77 = *v21;
      v78 = *(v0 + 32);
      v79 = *(v0 + 48);
      v80 = *(v0 + 64);
      v49 = sub_230E657B4();
      v72 = v43;
      v51 = sub_230D7E620(v49, v50, v85);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_230D02000, v39, v40, "[ServicesIntelligenceProvider][storeConfigurationInSystemDB] Some components failed: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x23191EAE0](v48, -1, -1);
      MEMORY[0x23191EAE0](v47, -1, -1);

      v72(v45, v76);
    }

    else
    {
      v52 = *(v0 + 944);

      v43(v45, v46);
    }
  }

  else
  {
    v37 = *(v0 + 944);
  }

  v53 = *(v0 + 928);
  v54 = *(v0 + 920);
  v55 = *(v0 + 912);
  v56 = *(v0 + 904);
  v57 = *(v0 + 896);
  v58 = *(v0 + 888);
  v59 = *(v0 + 840);
  v60 = *(v0 + 128);
  v62 = *(v0 + 80);
  v61 = *(v0 + 96);
  v59[6] = *(v0 + 112);
  v59[7] = v60;
  v59[4] = v62;
  v59[5] = v61;
  v63 = *v21;
  v64 = *(v0 + 32);
  v65 = *(v0 + 64);
  v59[2] = *(v0 + 48);
  v59[3] = v65;
  *v59 = v63;
  v59[1] = v64;

  v66 = *(v0 + 8);
  v67 = *MEMORY[0x277D85DE8];

  return v66();
}

uint64_t sub_230E2A610()
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1160);
  v2 = *(v0 + 1144);
  v3 = *(v0 + 1120);
  v4 = *(v0 + 1024);
  v5 = *(v0 + 1016);
  v6 = *(v0 + 904);
  v7 = *(v0 + 872);
  v25 = *(v0 + 864);
  v8 = *(v0 + 856);
  v9 = *(v0 + 848);
  v10 = *(v0 + 2304) != 0;
  *(v0 + 816) = v1;
  swift_willThrow();
  v11 = v1;
  sub_230D3B794(24, v2, v10, v8, (v0 + 816), v3);
  MEMORY[0x23191E910](v1);
  v5(v6, v7);

  sub_230D1CE3C(v8);
  sub_230D814C8(v25);
  v12 = *(v0 + 1160);
  v13 = *(v0 + 1112);
  v14 = *(v0 + 1048);
  v15 = *(v0 + 944);
  sub_230D1CE3C(*(v0 + 856));

  v16 = *(v0 + 928);
  v17 = *(v0 + 920);
  v18 = *(v0 + 912);
  v19 = *(v0 + 904);
  v20 = *(v0 + 896);
  v21 = *(v0 + 888);

  v22 = *(v0 + 8);
  v23 = *MEMORY[0x277D85DE8];

  return v22();
}

uint64_t sub_230E2A7C8()
{
  v83 = v0;
  v82[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1024);
  v2 = *(v0 + 864);
  v3 = *(v0 + 856);
  v4 = *(v0 + 848);
  (*(v0 + 1016))(*(v0 + 904), *(v0 + 872));

  sub_230D1CE3C(v3);
  sub_230D814C8(v2);
  v5 = *(v0 + 1112);
  v6 = *(v0 + 1096);
  v66 = v6;
  v7 = *(v0 + 1048);
  v67 = *(v0 + 1040);
  v70 = *(v0 + 1104);
  v8 = *(v0 + 1032);
  v72 = *(v0 + 896);
  sub_230D1CE3C(*(v0 + 856));
  v9 = *(v0 + 728);
  v10 = *(v0 + 736);
  v11 = *(v0 + 744);
  v14 = v8 > 0 || v6 > 0 || v9 > 0;

  v15 = MEMORY[0x277D84F90];
  v16 = sub_230D0F35C(MEMORY[0x277D84F90]);
  v17 = sub_230D0F35C(v15);
  *(v0 + 16) = v14;
  v18 = (v0 + 16);
  *(v0 + 24) = v8;
  *(v0 + 32) = v67;
  *(v0 + 40) = v7;
  *(v0 + 48) = v66;
  *(v0 + 56) = v70;
  *(v0 + 64) = v5;
  v68 = v10;
  v71 = v9;
  *(v0 + 72) = v9;
  *(v0 + 80) = v10;
  *(v0 + 88) = v11;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = v16;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = v17;
  sub_230E68D70();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v19 = sub_230E68D60();
  v20 = sub_230E693E0();
  if (!os_log_type_enabled(v19, v20))
  {
    v31 = *(v0 + 1112);
    v32 = *(v0 + 1048);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    goto LABEL_16;
  }

  v21 = *(v0 + 1048);
  v22 = *(v0 + 1040);
  v23 = *(v0 + 1032);
  v24 = swift_slowAlloc();
  *v24 = 134219264;

  *(v24 + 4) = v23;

  *(v24 + 12) = 2048;

  v25 = v23 + v22;
  if (__OFADD__(v23, v22))
  {
    __break(1u);
    goto LABEL_29;
  }

  v26 = *(v0 + 1112);
  v27 = *(v0 + 1104);
  v28 = *(v0 + 1096);
  v29 = *(v0 + 1048);
  *(v24 + 14) = v25;

  *(v24 + 22) = 2048;

  *(v24 + 24) = v28;

  *(v24 + 32) = 2048;

  if (__OFADD__(v28, v27))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  v30 = *(v0 + 1112);
  *(v24 + 34) = v28 + v27;

  *(v24 + 42) = 2048;

  *(v24 + 44) = v71;

  *(v24 + 52) = 2048;

  if (__OFADD__(v71, v68))
  {
    goto LABEL_30;
  }

  *(v24 + 54) = v71 + v68;

  _os_log_impl(&dword_230D02000, v19, v20, "[ServicesIntelligenceProvider][storeConfigurationInSystemDB] SystemDB sync completed - UseCases: %ld/%ld, Logging: %ld/%ld, DatabaseRegistry: %ld/%ld", v24, 0x3Eu);
  MEMORY[0x23191EAE0](v24, -1, -1);
LABEL_16:

  v33 = *(v0 + 1024);
  (*(v0 + 1016))(*(v0 + 896), *(v0 + 872));
  if (*(v0 + 32) > 0 || *(v0 + 56) > 0 || *(v0 + 80) > 0 || *(v0 + 104) > 0 || *(v0 + 128) >= 1)
  {
    v35 = *(v0 + 888);
    sub_230E68D70();
    sub_230E3B530(v0 + 16, v0 + 144);
    v36 = sub_230E68D60();
    v37 = sub_230E69400();
    sub_230E3B3FC(v0 + 16);
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 1024);
    v40 = *(v0 + 1016);
    v41 = *(v0 + 944);
    v42 = *(v0 + 888);
    v43 = *(v0 + 872);
    if (v38)
    {
      v73 = *(v0 + 872);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v82[0] = v45;
      *v44 = 136315138;
      v78 = *(v0 + 80);
      v79 = *(v0 + 96);
      v80 = *(v0 + 112);
      v81 = *(v0 + 128);
      v74 = *v18;
      v75 = *(v0 + 32);
      v76 = *(v0 + 48);
      v77 = *(v0 + 64);
      v46 = sub_230E657B4();
      v69 = v40;
      v48 = sub_230D7E620(v46, v47, v82);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_230D02000, v36, v37, "[ServicesIntelligenceProvider][storeConfigurationInSystemDB] Some components failed: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x23191EAE0](v45, -1, -1);
      MEMORY[0x23191EAE0](v44, -1, -1);

      v69(v42, v73);
    }

    else
    {
      v49 = *(v0 + 944);

      v40(v42, v43);
    }
  }

  else
  {
    v34 = *(v0 + 944);
  }

  v50 = *(v0 + 928);
  v51 = *(v0 + 920);
  v52 = *(v0 + 912);
  v53 = *(v0 + 904);
  v54 = *(v0 + 896);
  v55 = *(v0 + 888);
  v56 = *(v0 + 840);
  v57 = *(v0 + 128);
  v59 = *(v0 + 80);
  v58 = *(v0 + 96);
  v56[6] = *(v0 + 112);
  v56[7] = v57;
  v56[4] = v59;
  v56[5] = v58;
  v60 = *v18;
  v61 = *(v0 + 32);
  v62 = *(v0 + 64);
  v56[2] = *(v0 + 48);
  v56[3] = v62;
  *v56 = v60;
  v56[1] = v61;

  v63 = *(v0 + 8);
  v64 = *MEMORY[0x277D85DE8];

  return v63();
}

uint64_t sub_230E2AD90()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1024);
  v2 = *(v0 + 864);
  v3 = *(v0 + 856);
  v4 = *(v0 + 848);
  (*(v0 + 1016))(*(v0 + 904), *(v0 + 872));

  sub_230D1CE3C(v3);
  sub_230D814C8(v2);
  v5 = *(v0 + 1136);
  v6 = *(v0 + 1112);
  v7 = *(v0 + 1048);
  v8 = *(v0 + 944);
  sub_230D1CE3C(*(v0 + 856));

  v9 = *(v0 + 928);
  v10 = *(v0 + 920);
  v11 = *(v0 + 912);
  v12 = *(v0 + 904);
  v13 = *(v0 + 896);
  v14 = *(v0 + 888);

  v15 = *(v0 + 8);
  v16 = *MEMORY[0x277D85DE8];

  return v15();
}

uint64_t sub_230E2AED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[31] = a3;
  v4[32] = a4;
  v4[29] = a1;
  v4[30] = a2;
  v6 = sub_230E68D80();
  v4[33] = v6;
  v7 = *(v6 - 8);
  v4[34] = v7;
  v8 = *(v7 + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v9 = *(type metadata accessor for SQLDatabaseConfiguration() - 8);
  v4[42] = v9;
  v10 = *(v9 + 64) + 15;
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230E2B058, a2, 0);
}

uint64_t sub_230E2B058()
{
  v1 = v0[30];
  v2 = v0[31];
  v0[46] = sub_230D0F35C(MEMORY[0x277D84F90]);
  sub_230D1CDE0(v2, (v0 + 2));
  sub_230D1CDE0(v2, (v0 + 7));

  v3 = swift_task_alloc();
  v0[47] = v3;
  *v3 = v0;
  v3[1] = sub_230E2B140;
  v5 = v0[30];
  v4 = v0[31];

  return (sub_230D6F7D0)(39, v4);
}

uint64_t sub_230E2B140(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 376);
  v6 = *(*v2 + 248);
  v7 = *v2;
  *(v4 + 384) = a1;
  *(v4 + 392) = v1;

  sub_230D1CE3C(v6);
  v8 = *(v3 + 240);
  if (v1)
  {
    v9 = sub_230E2B640;
  }

  else
  {
    v9 = sub_230E2B290;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_230E2B290()
{
  v1 = *(v0 + 256);
  sub_230D1CE3C(*(v0 + 248));
  v2 = *(v1 + 16);
  *(v0 + 400) = v2;
  v3 = *(v2 + 16);
  *(v0 + 408) = v3;
  if (v3)
  {
    v4 = *(v0 + 336);
    v5 = *(v4 + 80);
    *(v0 + 132) = v5;
    *(v0 + 416) = *(v4 + 72);
    v7 = *(v0 + 360);
    v6 = *(v0 + 368);
    *(v0 + 464) = 0;
    *(v0 + 472) = v6;
    *(v0 + 448) = 0;
    *(v0 + 456) = 0;
    *(v0 + 440) = v6;
    sub_230E3B394(v2 + ((v5 + 32) & ~v5), v7, type metadata accessor for SQLDatabaseConfiguration);
    *(v0 + 131) = *(v7 + 16);
    *(v0 + 480) = *v7;
    *(v0 + 488) = *(v7 + 8);
    v8 = sub_230E2B738;

LABEL_5:
    v19 = v8;
LABEL_6:

    return MEMORY[0x2822009F8](v19, 0, 0);
  }

  v9 = *(v0 + 368);
  v10 = *(v0 + 256);
  v11 = *(v10 + 24);
  *(v0 + 424) = v11;
  v12 = *(v11 + 16);
  *(v0 + 432) = v12;
  if (v12)
  {
    *(v0 + 568) = v9;
    *(v0 + 544) = 0;
    *(v0 + 560) = 0;
    *(v0 + 552) = 0;
    *(v0 + 536) = v9;
    v13 = *(v11 + 32);
    *(v0 + 576) = v13;
    v14 = *(v11 + 40);
    *(v0 + 584) = v14;
    v15 = *(v11 + 48);
    *(v0 + 161) = v15;
    v16 = *(v11 + 56);
    v17 = *(v11 + 64);
    v18 = *(v11 + 65);
    *(v0 + 96) = v13;
    *(v0 + 104) = v14;
    *(v0 + 112) = v15;
    *(v0 + 120) = v16;
    *(v0 + 128) = v17;
    *(v0 + 129) = v18;
    v8 = sub_230E2C62C;
    swift_bridgeObjectRetain_n();
    goto LABEL_5;
  }

  v20 = *(v10 + 8);
  *(v0 + 520) = v20;
  v21 = *(v20 + 16);
  *(v0 + 528) = v21;
  if (v21)
  {
    *(v0 + 648) = v9;
    *(v0 + 624) = 0;
    *(v0 + 640) = 0;
    *(v0 + 632) = 0;
    *(v0 + 616) = v9;
    v22 = *(v20 + 32);
    *(v0 + 162) = v22;
    *(v0 + 130) = v22;
    v19 = sub_230E2D368;
    goto LABEL_6;
  }

  v23 = *(v0 + 280);
  v24 = *(v9 + 16);
  sub_230E68D70();

  v25 = sub_230E68D60();
  v26 = sub_230E693E0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134218496;
    *(v27 + 4) = 0;
    *(v27 + 12) = 2048;
    *(v27 + 14) = 0;
    *(v27 + 22) = 2048;
    *(v27 + 24) = v24;

    _os_log_impl(&dword_230D02000, v25, v26, "[ServicesIntelligenceProvider][storeDomainDatabaseConfigsInRegistry] Processed %ld databases: %ld succeeded, %ld failed", v27, 0x20u);
    MEMORY[0x23191EAE0](v27, -1, -1);
  }

  else
  {
  }

  v28 = *(v0 + 384);
  v30 = *(v0 + 352);
  v29 = *(v0 + 360);
  v31 = *(v0 + 344);
  v38 = *(v0 + 328);
  v39 = *(v0 + 320);
  v40 = *(v0 + 312);
  v41 = *(v0 + 304);
  v42 = *(v0 + 296);
  v43 = *(v0 + 288);
  v32 = *(v0 + 272);
  v33 = *(v0 + 280);
  v34 = *(v0 + 264);
  v35 = *(v0 + 232);

  (*(v32 + 8))(v33, v34);
  *v35 = 0;
  v35[1] = v24;
  v35[2] = v9;

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_230E2B640()
{
  v1 = v0[45];
  v2 = v0[46];
  v4 = v0[43];
  v3 = v0[44];
  v6 = v0[40];
  v5 = v0[41];
  v8 = v0[38];
  v7 = v0[39];
  v9 = v0[37];
  v13 = v0[36];
  v14 = v0[35];
  sub_230D1CE3C(v0[31]);

  v10 = v0[1];
  v11 = v0[49];

  return v10();
}

uint64_t sub_230E2B738()
{
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 480);
  v1 = *(v0 + 488);
  v3 = *(v0 + 131);
  v4 = *(v0 + 384);
  v5 = *(v0 + 360);
  v6 = *(v0 + 248);
  v7 = swift_task_alloc();
  *(v0 + 496) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v3;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  *(v7 + 48) = 0;
  *(v7 + 56) = v4;
  *(v7 + 64) = v6;
  v8 = swift_task_alloc();
  *(v0 + 504) = v8;
  *v8 = v0;
  v8[1] = sub_230E2B884;
  v9 = *(v0 + 248);

  return sub_230D12EB8();
}

uint64_t sub_230E2B884()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v4 = *v1;
  v2[64] = v0;

  v5 = v2[62];
  if (v0)
  {

    v6 = sub_230E2BF8C;
  }

  else
  {
    v7 = v2[61];

    v6 = sub_230E2B9CC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_230E2B9E8(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v69 = v3;
  v4 = *(v3 + 448);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v6 = *(v3 + 352);
  v7 = *(v3 + 360);
  v8 = *(v3 + 328);
  sub_230E68D70();
  sub_230E3B394(v7, v6, type metadata accessor for SQLDatabaseConfiguration);
  v9 = sub_230E68D60();
  v10 = sub_230E693F0();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v3 + 352);
  v13 = *(v3 + 360);
  v14 = *(v3 + 264);
  v64 = v14;
  v66 = *(v3 + 328);
  v15 = (*(v3 + 272) + 8);
  if (v11)
  {
    v61 = v5;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v68 = v17;
    *v16 = 136315138;
    v59 = v13;
    v18 = *v12;
    v19 = v12[1];

    sub_230E3B334(v12, type metadata accessor for SQLDatabaseConfiguration);
    v20 = sub_230D7E620(v18, v19, &v68);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_230D02000, v9, v10, "[ServicesIntelligenceProvider][storeDomainDatabaseConfigsInRegistry] Successfully stored SQL database: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x23191EAE0](v17, -1, -1);
    v21 = v16;
    v5 = v61;
    MEMORY[0x23191EAE0](v21, -1, -1);

    (*v15)(v66, v64);
    v22 = v59;
  }

  else
  {

    sub_230E3B334(v12, type metadata accessor for SQLDatabaseConfiguration);
    (*v15)(v66, v64);
    v22 = v13;
  }

  sub_230E3B334(v22, type metadata accessor for SQLDatabaseConfiguration);
  v23 = *(v3 + 440);
  v24 = *(v3 + 408);
  v25 = *(v3 + 464) + 1;
  if (v25 != v24)
  {
    *(v3 + 456) = v5;
    *(v3 + 464) = v25;
    *(v3 + 440) = v23;
    *(v3 + 448) = v5;
    v37 = *(v3 + 360);
    sub_230E3B394(*(v3 + 400) + ((*(v3 + 132) + 32) & ~*(v3 + 132)) + *(v3 + 416) * v25, v37, type metadata accessor for SQLDatabaseConfiguration);
    *(v3 + 131) = *(v37 + 16);
    *(v3 + 480) = *v37;
    *(v3 + 488) = *(v37 + 8);
    v36 = sub_230E2B738;

    goto LABEL_9;
  }

  v26 = *(v3 + 472);
  v27 = *(v3 + 256);
  v28 = *(v27 + 24);
  *(v3 + 424) = v28;
  v29 = *(v28 + 16);
  *(v3 + 432) = v29;
  if (v29)
  {
    *(v3 + 568) = v26;
    *(v3 + 560) = 0;
    *(v3 + 552) = v5;
    *(v3 + 544) = v5;
    *(v3 + 536) = v23;
    v30 = *(v28 + 32);
    *(v3 + 576) = v30;
    v31 = *(v28 + 40);
    *(v3 + 584) = v31;
    v32 = *(v28 + 48);
    *(v3 + 161) = v32;
    v33 = *(v28 + 56);
    v34 = *(v28 + 64);
    v35 = *(v28 + 65);
    *(v3 + 96) = v30;
    *(v3 + 104) = v31;
    *(v3 + 112) = v32;
    *(v3 + 120) = v33;
    *(v3 + 128) = v34;
    *(v3 + 129) = v35;
    v36 = sub_230E2C62C;
    swift_bridgeObjectRetain_n();
LABEL_9:
    a1 = v36;
    goto LABEL_10;
  }

  v38 = *(v27 + 8);
  *(v3 + 520) = v38;
  v39 = *(v38 + 16);
  *(v3 + 528) = v39;
  if (v39)
  {
    *(v3 + 648) = v26;
    *(v3 + 640) = 0;
    *(v3 + 632) = v5;
    *(v3 + 624) = v5;
    *(v3 + 616) = v23;
    v40 = *(v38 + 32);
    *(v3 + 162) = v40;
    *(v3 + 130) = v40;
    a1 = sub_230E2D368;
LABEL_10:
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v41 = *(v3 + 280);
  v42 = *(v26 + 16);
  sub_230E68D70();

  v43 = sub_230E68D60();
  v44 = sub_230E693E0();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 134218496;
    *(v45 + 4) = v24;
    *(v45 + 12) = 2048;
    *(v45 + 14) = v5;
    *(v45 + 22) = 2048;
    *(v45 + 24) = v42;

    _os_log_impl(&dword_230D02000, v43, v44, "[ServicesIntelligenceProvider][storeDomainDatabaseConfigsInRegistry] Processed %ld databases: %ld succeeded, %ld failed", v45, 0x20u);
    MEMORY[0x23191EAE0](v45, -1, -1);
  }

  else
  {
  }

  v46 = v5;
  v47 = v42;

  v48 = *(v3 + 384);
  v49 = *(v3 + 352);
  v50 = *(v3 + 360);
  v57 = *(v3 + 344);
  v58 = *(v3 + 328);
  v60 = *(v3 + 320);
  v62 = *(v3 + 312);
  v63 = *(v3 + 304);
  v65 = *(v3 + 296);
  v67 = *(v3 + 288);
  v51 = *(v3 + 272);
  v52 = *(v3 + 280);
  v53 = *(v3 + 264);
  v54 = *(v3 + 232);

  (*(v51 + 8))(v52, v53);
  *v54 = v46;
  v54[1] = v47;
  v54[2] = v26;

  v55 = *(v3 + 8);

  return v55();
}

uint64_t sub_230E2BFA8()
{
  v77 = v0;
  *(v0 + 136) = *(v0 + 131);
  v1 = *(v0 + 512);
  v2 = *(v0 + 488);
  v3 = *(v0 + 440);
  v68 = *(v0 + 344);
  v71 = *(v0 + 360);
  v4 = *(v0 + 320);
  *(v0 + 144) = *(v0 + 480);
  *(v0 + 152) = v2;
  *(v0 + 160) = 0;
  v5 = DatabaseIdentifier.stringRepresentation()();

  v6 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = v3;
  sub_230E1C2F0(v1, v5._countAndFlagsBits, v5._object, isUniquelyReferenced_nonNull_native);

  v74 = v3;
  sub_230E68D70();
  sub_230E3B394(v71, v68, type metadata accessor for SQLDatabaseConfiguration);
  v8 = v1;
  v9 = sub_230E68D60();
  v10 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 512);
  v13 = *(v0 + 360);
  v14 = *(v0 + 344);
  v15 = *(v0 + 320);
  v16 = *(v0 + 264);
  v17 = (*(v0 + 272) + 8);
  if (v11)
  {
    v72 = *(v0 + 320);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v69 = v13;
    v20 = swift_slowAlloc();
    v76 = v20;
    *v18 = 136315394;
    v63 = v17;
    v65 = v16;
    v22 = *v14;
    v21 = v14[1];

    sub_230E3B334(v14, type metadata accessor for SQLDatabaseConfiguration);
    v23 = sub_230D7E620(v22, v21, &v76);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2112;
    v24 = v12;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v25;
    *v19 = v25;
    _os_log_impl(&dword_230D02000, v9, v10, "[ServicesIntelligenceProvider][storeDomainDatabaseConfigsInRegistry] Failed to store SQL database %s: %@", v18, 0x16u);
    sub_230D2D9F8(v19, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x23191EAE0](v20, -1, -1);
    MEMORY[0x23191EAE0](v18, -1, -1);

    MEMORY[0x23191E910](v12);
    (*v63)(v72, v65);
    v26 = v69;
  }

  else
  {

    MEMORY[0x23191E910](v12);
    sub_230E3B334(v14, type metadata accessor for SQLDatabaseConfiguration);
    (*v17)(v15, v16);
    v26 = v13;
  }

  sub_230E3B334(v26, type metadata accessor for SQLDatabaseConfiguration);
  v27 = *(v0 + 448);
  v28 = *(v0 + 456);
  v29 = *(v0 + 408);
  v30 = *(v0 + 464) + 1;
  if (v30 != v29)
  {
    *(v0 + 464) = v30;
    *(v0 + 472) = v74;
    *(v0 + 448) = v27;
    *(v0 + 456) = v28;
    *(v0 + 440) = v74;
    v41 = *(v0 + 360);
    sub_230E3B394(*(v0 + 400) + ((*(v0 + 132) + 32) & ~*(v0 + 132)) + *(v0 + 416) * v30, v41, type metadata accessor for SQLDatabaseConfiguration);
    *(v0 + 131) = *(v41 + 16);
    *(v0 + 480) = *v41;
    *(v0 + 488) = *(v41 + 8);
    v40 = sub_230E2B738;

    goto LABEL_8;
  }

  v31 = *(v0 + 256);
  v32 = *(v31 + 24);
  *(v0 + 424) = v32;
  v33 = *(v32 + 16);
  *(v0 + 432) = v33;
  if (v33)
  {
    *(v0 + 568) = v74;
    *(v0 + 560) = 0;
    *(v0 + 552) = v28;
    *(v0 + 544) = v27;
    *(v0 + 536) = v74;
    v34 = *(v32 + 32);
    *(v0 + 576) = v34;
    v35 = *(v32 + 40);
    *(v0 + 584) = v35;
    v36 = *(v32 + 48);
    *(v0 + 161) = v36;
    v37 = *(v32 + 56);
    v38 = *(v32 + 64);
    v39 = *(v32 + 65);
    *(v0 + 96) = v34;
    *(v0 + 104) = v35;
    *(v0 + 112) = v36;
    *(v0 + 120) = v37;
    *(v0 + 128) = v38;
    *(v0 + 129) = v39;
    v40 = sub_230E2C62C;
    swift_bridgeObjectRetain_n();
LABEL_8:
    v42 = v40;
LABEL_9:

    return MEMORY[0x2822009F8](v42, 0, 0);
  }

  v43 = *(v31 + 8);
  *(v0 + 520) = v43;
  v44 = *(v43 + 16);
  *(v0 + 528) = v44;
  if (v44)
  {
    *(v0 + 648) = v74;
    *(v0 + 640) = 0;
    *(v0 + 632) = v28;
    *(v0 + 624) = v27;
    *(v0 + 616) = v74;
    v45 = *(v43 + 32);
    *(v0 + 162) = v45;
    *(v0 + 130) = v45;
    v42 = sub_230E2D368;
    goto LABEL_9;
  }

  v46 = *(v0 + 280);
  v47 = *(v74 + 16);
  sub_230E68D70();

  v48 = sub_230E68D60();
  v49 = sub_230E693E0();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134218496;
    *(v50 + 4) = v29;
    *(v50 + 12) = 2048;
    *(v50 + 14) = v28;
    *(v50 + 22) = 2048;
    *(v50 + 24) = v47;

    _os_log_impl(&dword_230D02000, v48, v49, "[ServicesIntelligenceProvider][storeDomainDatabaseConfigsInRegistry] Processed %ld databases: %ld succeeded, %ld failed", v50, 0x20u);
    MEMORY[0x23191EAE0](v50, -1, -1);
  }

  else
  {
  }

  v51 = v74;
  v52 = v47;

  v53 = *(v0 + 384);
  v54 = *(v0 + 352);
  v55 = *(v0 + 360);
  v62 = *(v0 + 344);
  v64 = *(v0 + 328);
  v66 = *(v0 + 320);
  v67 = *(v0 + 312);
  v70 = *(v0 + 304);
  v73 = *(v0 + 296);
  v75 = *(v0 + 288);
  v56 = *(v0 + 272);
  v57 = *(v0 + 280);
  v58 = *(v0 + 264);
  v59 = *(v0 + 232);

  (*(v56 + 8))(v57, v58);
  *v59 = v28;
  v59[1] = v52;
  v59[2] = v51;

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_230E2C62C()
{
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 161);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v0 + 384);
  v5 = *(v0 + 248);
  v6 = swift_task_alloc();
  *(v0 + 592) = v6;
  *(v6 + 16) = v0 + 96;
  *(v6 + 24) = v1;
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  *(v6 + 48) = 257;
  *(v6 + 56) = v4;
  *(v6 + 64) = v5;
  v7 = swift_task_alloc();
  *(v0 + 600) = v7;
  *v7 = v0;
  v7[1] = sub_230E2C780;
  v8 = *(v0 + 248);

  return sub_230D12EB8();
}

uint64_t sub_230E2C780()
{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v4 = *v1;
  v2[76] = v0;

  v5 = v2[74];
  if (v0)
  {

    v6 = sub_230E2CDA4;
  }

  else
  {
    v7 = v2[73];

    v6 = sub_230E2C8C8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_230E2C8E4(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v63 = v3;
  v4 = *(v3 + 544);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v6 = *(v3 + 584);
  v7 = *(v3 + 312);
  sub_230E68D70();

  v8 = sub_230E68D60();
  v9 = sub_230E693F0();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v3 + 584);
  if (v10)
  {
    v12 = v5;
    v13 = *(v3 + 576);
    v14 = *(v3 + 272);
    v58 = *(v3 + 264);
    v60 = *(v3 + 312);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v62 = v16;
    *v15 = 136315138;
    v17 = sub_230D7E620(v13, v11, &v62);

    *(v15 + 4) = v17;
    v5 = v12;
    _os_log_impl(&dword_230D02000, v8, v9, "[ServicesIntelligenceProvider][storeDomainDatabaseConfigsInRegistry] Successfully stored vector database: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x23191EAE0](v16, -1, -1);
    MEMORY[0x23191EAE0](v15, -1, -1);

    a1 = (*(v14 + 8))(v60, v58);
  }

  else
  {
    v18 = *(v3 + 312);
    v19 = *(v3 + 264);
    v20 = *(v3 + 272);
    v21 = *(v3 + 584);

    a1 = (*(v20 + 8))(v18, v19);
  }

  v22 = *(v3 + 536);
  v23 = *(v3 + 432);
  v24 = *(v3 + 560) + 1;
  if (v24 != v23)
  {
    *(v3 + 560) = v24;
    *(v3 + 552) = v5;
    *(v3 + 544) = v5;
    *(v3 + 536) = v22;
    v29 = *(v3 + 424) + 40 * v24;
    v30 = *(v29 + 32);
    *(v3 + 576) = v30;
    v31 = *(v29 + 40);
    *(v3 + 584) = v31;
    v32 = *(v29 + 48);
    *(v3 + 161) = v32;
    v33 = *(v29 + 56);
    v34 = *(v29 + 64);
    LOBYTE(v29) = *(v29 + 65);
    *(v3 + 96) = v30;
    *(v3 + 104) = v31;
    *(v3 + 112) = v32;
    *(v3 + 120) = v33;
    *(v3 + 128) = v34;
    *(v3 + 129) = v29;
    swift_bridgeObjectRetain_n();
    a1 = sub_230E2C62C;
LABEL_9:
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v25 = *(v3 + 568);
  v26 = *(*(v3 + 256) + 8);
  *(v3 + 520) = v26;
  v27 = *(v26 + 16);
  *(v3 + 528) = v27;
  if (v27)
  {
    *(v3 + 648) = v25;
    *(v3 + 640) = 0;
    *(v3 + 632) = v5;
    *(v3 + 624) = v5;
    *(v3 + 616) = v22;
    v28 = *(v26 + 32);
    *(v3 + 162) = v28;
    *(v3 + 130) = v28;
    a1 = sub_230E2D368;
    goto LABEL_9;
  }

  v35 = *(v3 + 408);
  v36 = v35 + v23;
  if (__OFADD__(v35, v23))
  {
LABEL_20:
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v37 = *(v3 + 280);
  v38 = *(v25 + 16);
  sub_230E68D70();

  v39 = sub_230E68D60();
  v40 = sub_230E693E0();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134218496;
    *(v41 + 4) = v36;
    *(v41 + 12) = 2048;
    *(v41 + 14) = v5;
    *(v41 + 22) = 2048;
    *(v41 + 24) = v38;

    _os_log_impl(&dword_230D02000, v39, v40, "[ServicesIntelligenceProvider][storeDomainDatabaseConfigsInRegistry] Processed %ld databases: %ld succeeded, %ld failed", v41, 0x20u);
    MEMORY[0x23191EAE0](v41, -1, -1);
  }

  else
  {
  }

  v42 = v5;
  v43 = v38;

  v44 = *(v3 + 384);
  v45 = *(v3 + 352);
  v46 = *(v3 + 360);
  v53 = *(v3 + 344);
  v54 = *(v3 + 328);
  v55 = *(v3 + 320);
  v56 = *(v3 + 312);
  v57 = *(v3 + 304);
  v59 = *(v3 + 296);
  v61 = *(v3 + 288);
  v47 = *(v3 + 272);
  v48 = *(v3 + 280);
  v49 = *(v3 + 264);
  v50 = *(v3 + 232);

  (*(v47 + 8))(v48, v49);
  *v50 = v42;
  v50[1] = v43;
  v50[2] = v25;

  v51 = *(v3 + 8);

  return v51();
}

uint64_t sub_230E2CDC0()
{
  v75 = v0;
  *(v0 + 168) = *(v0 + 161);
  v1 = *(v0 + 608);
  v2 = *(v0 + 584);
  v3 = *(v0 + 536);
  v4 = *(v0 + 304);
  *(v0 + 176) = *(v0 + 576);
  *(v0 + 184) = v2;
  *(v0 + 192) = 1;
  v5 = DatabaseIdentifier.stringRepresentation()();

  v6 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74 = v3;
  sub_230E1C2F0(v1, v5._countAndFlagsBits, v5._object, isUniquelyReferenced_nonNull_native);

  v8 = v3;
  sub_230E68D70();

  v9 = v1;
  v10 = sub_230E68D60();
  v11 = sub_230E69400();

  MEMORY[0x23191E910](v1);
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 608);
  v14 = *(v0 + 584);
  if (v12)
  {
    v15 = *(v0 + 576);
    v16 = *(v0 + 272);
    v67 = *(v0 + 264);
    v69 = *(v0 + 304);
    v71 = v8;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v74 = v19;
    *v17 = 136315394;
    v20 = sub_230D7E620(v15, v14, &v74);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2112;
    v21 = v13;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v22;
    *v18 = v22;
    _os_log_impl(&dword_230D02000, v10, v11, "[ServicesIntelligenceProvider][storeDomainDatabaseConfigsInRegistry] Failed to store vector database %s: %@", v17, 0x16u);
    sub_230D2D9F8(v18, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x23191EAE0](v19, -1, -1);
    v23 = v71;
    MEMORY[0x23191EAE0](v17, -1, -1);

    MEMORY[0x23191E910](v13);
    v24 = (*(v16 + 8))(v69, v67);
  }

  else
  {
    v27 = *(v0 + 304);
    v28 = v3;
    v30 = *(v0 + 264);
    v29 = *(v0 + 272);
    MEMORY[0x23191E910](*(v0 + 608));

    v31 = v30;
    v23 = v28;
    v24 = (*(v29 + 8))(v27, v31);
  }

  v32 = *(v0 + 552);
  v33 = *(v0 + 544);
  v34 = *(v0 + 432);
  v35 = *(v0 + 560) + 1;
  if (v35 != v34)
  {
    *(v0 + 568) = v23;
    *(v0 + 560) = v35;
    *(v0 + 552) = v32;
    *(v0 + 544) = v33;
    *(v0 + 536) = v23;
    v39 = *(v0 + 424) + 40 * v35;
    v40 = *(v39 + 32);
    *(v0 + 576) = v40;
    v41 = *(v39 + 40);
    *(v0 + 584) = v41;
    v42 = *(v39 + 48);
    *(v0 + 161) = v42;
    v43 = *(v39 + 56);
    v44 = *(v39 + 64);
    LOBYTE(v39) = *(v39 + 65);
    *(v0 + 96) = v40;
    *(v0 + 104) = v41;
    *(v0 + 112) = v42;
    *(v0 + 120) = v43;
    *(v0 + 128) = v44;
    *(v0 + 129) = v39;
    swift_bridgeObjectRetain_n();
    v24 = sub_230E2C62C;
LABEL_8:
    v25 = 0;
    v26 = 0;

    return MEMORY[0x2822009F8](v24, v25, v26);
  }

  v36 = *(*(v0 + 256) + 8);
  *(v0 + 520) = v36;
  v37 = *(v36 + 16);
  *(v0 + 528) = v37;
  if (v37)
  {
    *(v0 + 648) = v23;
    *(v0 + 640) = 0;
    *(v0 + 632) = v32;
    *(v0 + 624) = v33;
    *(v0 + 616) = v23;
    v38 = *(v36 + 32);
    *(v0 + 162) = v38;
    *(v0 + 130) = v38;
    v24 = sub_230E2D368;
    goto LABEL_8;
  }

  v45 = *(v0 + 408);
  v46 = v45 + v34;
  if (__OFADD__(v45, v34))
  {
    __break(1u);
    return MEMORY[0x2822009F8](v24, v25, v26);
  }

  v47 = *(v0 + 280);
  v48 = *(v23 + 16);
  sub_230E68D70();

  v49 = sub_230E68D60();
  v50 = sub_230E693E0();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = v23;
    v52 = swift_slowAlloc();
    *v52 = 134218496;
    *(v52 + 4) = v46;
    *(v52 + 12) = 2048;
    *(v52 + 14) = v32;
    *(v52 + 22) = 2048;
    *(v52 + 24) = v48;

    _os_log_impl(&dword_230D02000, v49, v50, "[ServicesIntelligenceProvider][storeDomainDatabaseConfigsInRegistry] Processed %ld databases: %ld succeeded, %ld failed", v52, 0x20u);
    MEMORY[0x23191EAE0](v52, -1, -1);
    v53 = v51;
  }

  else
  {

    v53 = v23;
  }

  v54 = v48;

  v55 = *(v0 + 384);
  v57 = *(v0 + 352);
  v56 = *(v0 + 360);
  v64 = *(v0 + 344);
  v65 = *(v0 + 328);
  v66 = *(v0 + 320);
  v68 = *(v0 + 312);
  v70 = *(v0 + 304);
  v72 = *(v0 + 296);
  v73 = *(v0 + 288);
  v58 = *(v0 + 272);
  v59 = *(v0 + 280);
  v60 = *(v0 + 264);
  v61 = *(v0 + 232);

  (*(v58 + 8))(v59, v60);
  *v61 = v32;
  v61[1] = v54;
  v61[2] = v53;

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_230E2D368()
{
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 162);
  v2 = *(v0 + 384);
  v3 = *(v0 + 248);
  v4 = swift_task_alloc();
  *(v0 + 656) = v4;
  *(v4 + 16) = v0 + 130;
  *(v4 + 24) = v1;
  *(v4 + 32) = 1852399981;
  *(v4 + 40) = 0xE400000000000000;
  *(v4 + 48) = 514;
  *(v4 + 56) = v2;
  *(v4 + 64) = v3;
  v5 = swift_task_alloc();
  *(v0 + 664) = v5;
  *v5 = v0;
  v5[1] = sub_230E2D4B8;
  v6 = *(v0 + 248);

  return sub_230D12EB8();
}

uint64_t sub_230E2D4B8()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v4 = *v1;
  *(*v1 + 672) = v0;

  v5 = *(v2 + 656);
  if (v0)
  {

    v6 = sub_230E2DA10;
  }

  else
  {

    v6 = sub_230E2D600;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_230E2D61C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v50 = v3;
  v4 = *(v3 + 624);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = *(v3 + 296);
  sub_230E68D70();
  v7 = sub_230E68D60();
  v8 = sub_230E693F0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v3 + 296);
  v12 = *(v3 + 264);
  v11 = *(v3 + 272);
  if (v9)
  {
    v13 = v5;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v49 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_230D7E620(1852399981, 0xE400000000000000, &v49);
    _os_log_impl(&dword_230D02000, v7, v8, "[ServicesIntelligenceProvider][storeDomainDatabaseConfigsInRegistry] Successfully stored KV database: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x23191EAE0](v15, -1, -1);
    v16 = v14;
    v5 = v13;
    MEMORY[0x23191EAE0](v16, -1, -1);
  }

  a1 = (*(v11 + 8))(v10, v12);
  v17 = *(v3 + 528);
  v18 = *(v3 + 640) + 1;
  if (v18 != v17)
  {
    *(v3 + 640) = v18;
    *(v3 + 632) = v5;
    *(v3 + 624) = v5;
    v30 = *(*(v3 + 520) + v18 + 32);
    *(v3 + 162) = v30;
    *(v3 + 130) = v30;
    a1 = sub_230E2D368;
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v19 = *(v3 + 432);
  v20 = *(v3 + 408);
  v21 = __OFADD__(v20, v19);
  v22 = v20 + v19;
  if (v21)
  {
    goto LABEL_17;
  }

  v23 = v22 + v17;
  if (__OFADD__(v22, v17))
  {
LABEL_18:
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v24 = *(v3 + 648);
  v25 = *(v3 + 280);
  v26 = *(v24 + 16);
  sub_230E68D70();

  v27 = sub_230E68D60();
  v28 = sub_230E693E0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134218496;
    *(v29 + 4) = v23;
    *(v29 + 12) = 2048;
    *(v29 + 14) = v5;
    *(v29 + 22) = 2048;
    *(v29 + 24) = v26;

    _os_log_impl(&dword_230D02000, v27, v28, "[ServicesIntelligenceProvider][storeDomainDatabaseConfigsInRegistry] Processed %ld databases: %ld succeeded, %ld failed", v29, 0x20u);
    MEMORY[0x23191EAE0](v29, -1, -1);
  }

  else
  {
  }

  v31 = v5;
  v32 = v26;

  v33 = *(v3 + 384);
  v34 = *(v3 + 352);
  v35 = *(v3 + 360);
  v42 = *(v3 + 344);
  v43 = *(v3 + 328);
  v44 = *(v3 + 320);
  v45 = *(v3 + 312);
  v46 = *(v3 + 304);
  v47 = *(v3 + 296);
  v48 = *(v3 + 288);
  v36 = *(v3 + 272);
  v37 = *(v3 + 280);
  v38 = *(v3 + 264);
  v39 = *(v3 + 232);

  (*(v36 + 8))(v37, v38);
  *v39 = v31;
  v39[1] = v32;
  v39[2] = v24;

  v40 = *(v3 + 8);

  return v40();
}

uint64_t sub_230E2DA2C()
{
  v58 = v0;
  *(v0 + 200) = *(v0 + 162);
  v1 = *(v0 + 672);
  v2 = *(v0 + 616);
  v3 = *(v0 + 288);
  *(v0 + 208) = 1852399981;
  *(v0 + 216) = 0xE400000000000000;
  *(v0 + 224) = 2;
  v4 = DatabaseIdentifier.stringRepresentation()();

  v5 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v2;
  sub_230E1C2F0(v1, v4._countAndFlagsBits, v4._object, isUniquelyReferenced_nonNull_native);

  v7 = v2;
  sub_230E68D70();
  v8 = v1;
  v9 = sub_230E68D60();
  v10 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 672);
  v13 = *(v0 + 288);
  v14 = *(v0 + 264);
  v15 = (*(v0 + 272) + 8);
  if (v11)
  {
    v54 = v7;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v57 = v18;
    *v16 = 136315394;
    *(v16 + 4) = sub_230D7E620(1852399981, 0xE400000000000000, &v57);
    *(v16 + 12) = 2112;
    v19 = v12;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v20;
    *v17 = v20;
    _os_log_impl(&dword_230D02000, v9, v10, "[ServicesIntelligenceProvider][storeDomainDatabaseConfigsInRegistry] Failed to store KV database %s: %@", v16, 0x16u);
    sub_230D2D9F8(v17, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x23191EAE0](v18, -1, -1);
    v21 = v16;
    v7 = v54;
    MEMORY[0x23191EAE0](v21, -1, -1);

    MEMORY[0x23191E910](v12);
  }

  else
  {
    MEMORY[0x23191E910](*(v0 + 672));
  }

  v22 = (*v15)(v13, v14);
  v25 = *(v0 + 632);
  v26 = *(v0 + 528);
  v27 = *(v0 + 640) + 1;
  if (v27 != v26)
  {
    *(v0 + 648) = v7;
    *(v0 + 640) = v27;
    *(v0 + 632) = v25;
    *(v0 + 616) = v7;
    v38 = *(*(v0 + 520) + v27 + 32);
    *(v0 + 162) = v38;
    *(v0 + 130) = v38;
    v22 = sub_230E2D368;
    v23 = 0;
    v24 = 0;

    return MEMORY[0x2822009F8](v22, v23, v24);
  }

  v28 = *(v0 + 432);
  v29 = *(v0 + 408);
  v30 = __OFADD__(v29, v28);
  v31 = v29 + v28;
  if (v30)
  {
    __break(1u);
    goto LABEL_17;
  }

  v32 = v31 + v26;
  if (__OFADD__(v31, v26))
  {
LABEL_17:
    __break(1u);
    return MEMORY[0x2822009F8](v22, v23, v24);
  }

  v33 = *(v0 + 280);
  v34 = *(v7 + 16);
  sub_230E68D70();

  v35 = sub_230E68D60();
  v36 = sub_230E693E0();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134218496;
    *(v37 + 4) = v32;
    *(v37 + 12) = 2048;
    *(v37 + 14) = v25;
    *(v37 + 22) = 2048;
    *(v37 + 24) = v34;

    _os_log_impl(&dword_230D02000, v35, v36, "[ServicesIntelligenceProvider][storeDomainDatabaseConfigsInRegistry] Processed %ld databases: %ld succeeded, %ld failed", v37, 0x20u);
    MEMORY[0x23191EAE0](v37, -1, -1);
  }

  else
  {
  }

  v39 = v7;

  v40 = *(v0 + 384);
  v42 = *(v0 + 352);
  v41 = *(v0 + 360);
  v49 = *(v0 + 344);
  v50 = *(v0 + 328);
  v51 = *(v0 + 320);
  v52 = *(v0 + 312);
  v53 = *(v0 + 304);
  v55 = *(v0 + 296);
  v56 = *(v0 + 288);
  v44 = *(v0 + 272);
  v43 = *(v0 + 280);
  v45 = *(v0 + 264);
  v46 = *(v0 + 232);

  (*(v44 + 8))(v43, v45);
  *v46 = v25;
  v46[1] = v34;
  v46[2] = v39;

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_230E2DF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 840) = a3;
  *(v3 + 832) = a2;
  *(v3 + 824) = a1;
  *(v3 + 1184) = *a3;
  *(v3 + 848) = *(a3 + 8);
  *(v3 + 1185) = *(a3 + 24);
  *(v3 + 864) = *(a3 + 32);
  v5 = type metadata accessor for DatabaseCreationResult();
  *(v3 + 872) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 880) = swift_task_alloc();
  *(v3 + 888) = swift_task_alloc();
  *(v3 + 896) = swift_task_alloc();
  *(v3 + 904) = swift_task_alloc();
  v7 = sub_230E68D80();
  *(v3 + 912) = v7;
  v8 = *(v7 - 8);
  *(v3 + 920) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 928) = swift_task_alloc();
  *(v3 + 936) = swift_task_alloc();
  *(v3 + 944) = swift_task_alloc();
  *(v3 + 952) = swift_task_alloc();
  *(v3 + 960) = swift_task_alloc();
  *(v3 + 968) = swift_task_alloc();
  *(v3 + 976) = swift_task_alloc();
  *(v3 + 984) = swift_task_alloc();
  *(v3 + 992) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230E2E0B4, a2, 0);
}

uint64_t sub_230E2E0B4()
{
  v1 = v0[124];
  sub_230E68D70();
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][createDomainDatabases] Starting domain database creation", v4, 2u);
    MEMORY[0x23191EAE0](v4, -1, -1);
  }

  v5 = v0[124];
  v6 = v0[115];
  v7 = v0[114];
  v8 = v0[105];
  v9 = v0[104];

  v10 = *(v6 + 8);
  v0[125] = v10;
  v10(v5, v7);
  sub_230D1CDE0(v8, (v0 + 62));
  sub_230D1CDE0(v8, (v0 + 67));

  v11 = swift_task_alloc();
  v0[126] = v11;
  *v11 = v0;
  v11[1] = sub_230E2E27C;
  v12 = v0[105];
  v13 = v0[104];

  return (sub_230D6F7D0)(39, v12);
}

uint64_t sub_230E2E27C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1008);
  v6 = *v2;
  *(v4 + 1016) = a1;
  *(v4 + 1024) = v1;

  v7 = *(v3 + 840);
  v8 = *(v3 + 832);
  sub_230D1CE3C(v7);
  if (v1)
  {
    v9 = sub_230E2ED38;
  }

  else
  {
    v9 = sub_230E2E3D0;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_230E2E3D0()
{
  v1 = *(v0 + 864);
  v2 = *(v0 + 856);
  v3 = *(v0 + 848);
  v4 = *(v0 + 1184);
  v5 = *(v0 + 840);
  v6 = *(v0 + 1185) & 1 | (*(v0 + 1186) << 8);
  sub_230D1CE3C(v5);
  *(v0 + 576) = v4;
  *(v0 + 584) = v3;
  *(v0 + 592) = v2;
  *(v0 + 600) = v6;
  *(v0 + 608) = v1;
  sub_230D1CDE0(v5, v0 + 616);
  v7 = swift_task_alloc();
  *(v0 + 1032) = v7;
  *v7 = v0;
  v7[1] = sub_230E2E4DC;
  v8 = *(v0 + 1016);

  return (sub_230E3CEA4)(v8, v0 + 576);
}

uint64_t sub_230E2E4DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = (*v2)[129];
  v6 = *v2;
  v4[130] = a1;
  v4[131] = v1;

  v7 = v3[104];
  v8 = v3[75];
  v9 = v3[76];
  sub_230D666B4(v4[72], v3[73], v3[74]);
  if (v1)
  {
    v10 = sub_230E2EABC;
  }

  else
  {
    v10 = sub_230E2E678;
  }

  return MEMORY[0x2822009F8](v10, v7, 0);
}

uint64_t sub_230E2E678()
{
  v1 = *(v0 + 1040);
  v2 = *(v0 + 984);
  sub_230E68D70();

  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 1040);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][createDomainDatabases] Found %ld pending databases", v7, 0xCu);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  else
  {
    v8 = *(v0 + 1040);
  }

  v9 = *(v0 + 1040);
  v10 = *(v0 + 1000);
  v11 = *(v0 + 984);
  v12 = *(v0 + 912);
  *(v0 + 1056) = (*(v0 + 920) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v11, v12);
  v13 = *(v9 + 16);
  *(v0 + 1064) = v13;
  if (v13)
  {
    v14 = sub_230D0F35C(MEMORY[0x277D84F90]);
    *(v0 + 1104) = v14;
    *(v0 + 1080) = 0;
    *(v0 + 1096) = 0;
    *(v0 + 1088) = 0;
    *(v0 + 1072) = v14;
    v15 = *(v0 + 1040);
    v16 = *(v0 + 864);
    v17 = *(v0 + 856);
    v18 = *(v0 + 848);
    v19 = *(v0 + 1184);
    v20 = *(v0 + 840);
    v21 = *(v0 + 1185) & 1 | (*(v0 + 1186) << 8);
    v22 = v15[3];
    *(v0 + 16) = v15[2];
    *(v0 + 32) = v22;
    v23 = v15[7];
    v24 = v15[4];
    v25 = v15[5];
    *(v0 + 80) = v15[6];
    *(v0 + 96) = v23;
    *(v0 + 48) = v24;
    *(v0 + 64) = v25;
    v26 = *(v0 + 24);
    *(v0 + 1112) = *(v0 + 16);
    *(v0 + 1120) = v26;
    *(v0 + 656) = v19;
    *(v0 + 664) = v18;
    *(v0 + 672) = v17;
    *(v0 + 680) = v21;
    *(v0 + 688) = v16;
    sub_230D1CDE0(v20, v0 + 696);
    sub_230E3B284(v0 + 16, v0 + 112);
    v27 = swift_task_alloc();
    *(v0 + 1128) = v27;
    *v27 = v0;
    v27[1] = sub_230E2EFB4;
    v28 = *(v0 + 904);
    v29 = *(v0 + 832);

    return sub_230E30794(v28, v0 + 16, v0 + 656);
  }

  else
  {
    v31 = *(v0 + 1040);
    v32 = *(v0 + 936);

    sub_230E68D70();
    v33 = sub_230E68D60();
    v34 = sub_230E693E0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_230D02000, v33, v34, "[ServicesIntelligenceProvider][createDomainDatabases] No pending databases - operation successful", v35, 2u);
      MEMORY[0x23191EAE0](v35, -1, -1);
    }

    v36 = *(v0 + 1016);
    v37 = *(v0 + 1000);
    v38 = *(v0 + 936);
    v39 = *(v0 + 912);
    v40 = *(v0 + 824);

    v37(v38, v39);
    v41 = sub_230D0F35C(MEMORY[0x277D84F90]);

    *v40 = 0;
    v40[1] = 0;
    v42 = *(v0 + 992);
    v43 = *(v0 + 984);
    v44 = *(v0 + 976);
    v45 = *(v0 + 968);
    v46 = *(v0 + 960);
    v47 = *(v0 + 952);
    v48 = *(v0 + 944);
    v49 = *(v0 + 936);
    v50 = *(v0 + 928);
    v52 = *(v0 + 904);
    v53 = *(v0 + 896);
    v54 = *(v0 + 888);
    v55 = *(v0 + 880);
    *(*(v0 + 824) + 16) = v41;

    v51 = *(v0 + 8);

    return v51();
  }
}

uint64_t sub_230E2EABC()
{
  v1 = v0[127];

  v2 = v0[131];
  v3 = v0[116];
  sub_230E68D70();
  v4 = v2;
  v5 = sub_230E68D60();
  v6 = sub_230E69400();
  MEMORY[0x23191E910](v2);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_230D02000, v5, v6, "[ServicesIntelligenceProvider][createDomainDatabases] Failed to get pending databases: %@", v7, 0xCu);
    sub_230D2D9F8(v8, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v11 = v5;
  v12 = v0[125];
  v13 = v0[124];
  v14 = v0[123];
  v15 = v0[122];
  v16 = v0[121];
  v22 = v0[120];
  v23 = v0[119];
  v24 = v0[118];
  v25 = v0[117];
  v17 = v0[116];
  v18 = v0[115];
  v19 = v0[114];
  v26 = v0[113];
  v27 = v0[112];
  v28 = v0[111];
  v29 = v0[110];

  v12(v17, v19);
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_230E2ED38()
{
  sub_230D1CE3C(v0[105]);
  v1 = v0[128];
  v2 = v0[116];
  sub_230E68D70();
  v3 = v1;
  v4 = sub_230E68D60();
  v5 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_230D02000, v4, v5, "[ServicesIntelligenceProvider][createDomainDatabases] Failed to get pending databases: %@", v6, 0xCu);
    sub_230D2D9F8(v7, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v10 = v4;
  v11 = v0[125];
  v12 = v0[124];
  v13 = v0[123];
  v14 = v0[122];
  v15 = v0[121];
  v21 = v0[120];
  v22 = v0[119];
  v23 = v0[118];
  v24 = v0[117];
  v16 = v0[116];
  v17 = v0[115];
  v18 = v0[114];
  v25 = v0[113];
  v26 = v0[112];
  v27 = v0[111];
  v28 = v0[110];

  v11(v16, v18);
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_230E2EFB4()
{
  v1 = *v0;
  v2 = (*v0)[141];
  v3 = (*v0)[104];
  v7 = *v0;

  v4 = v1[85];
  v5 = v1[86];
  sub_230D666B4(v1[82], v1[83], v1[84]);

  return MEMORY[0x2822009F8](sub_230E2F138, v3, 0);
}

uint64_t sub_230E2F138()
{
  v70 = v0;
  v1 = *(v0 + 872);
  sub_230E3B394(*(v0 + 904), *(v0 + 896), type metadata accessor for DatabaseCreationResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *(v0 + 904);
    v3 = *(v0 + 888);
    v4 = *(v0 + 872);
    sub_230E3B334(*(v0 + 896), type metadata accessor for DatabaseCreationResult);
    sub_230E3B394(v2, v3, type metadata accessor for DatabaseCreationResult);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = *(v0 + 1120);
      v6 = *(v0 + 1112);
      v7 = *(v0 + 1072);
      v8 = *(v0 + 968);
      v9 = **(v0 + 888);

      v10 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v7;
      sub_230E1C2F0(v9, v6, v5, isUniquelyReferenced_nonNull_native);

      v12 = v7;
      sub_230E68D70();
      sub_230E3B284(v0 + 16, v0 + 304);
      v13 = v9;
      v14 = sub_230E68D60();
      v15 = sub_230E69400();
      sub_230E3B2E0(v0 + 16);
      MEMORY[0x23191E910](v9);
      if (os_log_type_enabled(v14, v15))
      {
        v16 = *(v0 + 1120);
        v17 = *(v0 + 1112);
        v65 = *(v0 + 1000);
        v67 = *(v0 + 1056);
        v63 = *(v0 + 912);
        v64 = *(v0 + 968);
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v69 = v20;
        *v18 = 136315394;

        v21 = sub_230D7E620(v17, v16, &v69);

        *(v18 + 4) = v21;
        *(v18 + 12) = 2112;
        v22 = v9;
        v23 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 14) = v23;
        *v19 = v23;
        _os_log_impl(&dword_230D02000, v14, v15, "[ServicesIntelligenceProvider][createDomainDatabases] Failed to create database %s: %@", v18, 0x16u);
        sub_230D2D9F8(v19, &qword_27DB5D7D0, &qword_230E734E0);
        MEMORY[0x23191EAE0](v19, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x23191EAE0](v20, -1, -1);
        MEMORY[0x23191EAE0](v18, -1, -1);

        MEMORY[0x23191E910](v9);
        v65(v64, v63);
      }

      else
      {
        v45 = *(v0 + 1056);
        v46 = *(v0 + 1000);
        v47 = *(v0 + 968);
        v48 = *(v0 + 912);
        MEMORY[0x23191E910](v9);

        v46(v47, v48);
      }

      v40 = *(v0 + 1088);
      v28 = *(v0 + 1080);
      v39 = v12;
    }

    else
    {
      sub_230E3B334(*(v0 + 888), type metadata accessor for DatabaseCreationResult);
      v39 = *(v0 + 1104);
      v40 = *(v0 + 1088);
      v28 = *(v0 + 1080);
      v12 = *(v0 + 1072);
    }
  }

  else
  {
    v24 = *(v0 + 1080);
    v25 = *(v0 + 896);
    v26 = sub_230E68860();
    result = (*(*(v26 - 8) + 8))(v25, v26);
    v28 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      return result;
    }

    v29 = *(v0 + 976);
    sub_230E68D70();
    sub_230E3B284(v0 + 16, v0 + 400);
    v30 = sub_230E68D60();
    v31 = sub_230E693F0();
    sub_230E3B2E0(v0 + 16);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = *(v0 + 1120);
      v33 = *(v0 + 1112);
      v66 = *(v0 + 1000);
      v68 = *(v0 + 1056);
      v34 = *(v0 + 976);
      v35 = *(v0 + 912);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v69 = v37;
      *v36 = 136315138;

      v38 = sub_230D7E620(v33, v32, &v69);

      *(v36 + 4) = v38;
      _os_log_impl(&dword_230D02000, v30, v31, "[ServicesIntelligenceProvider][createDomainDatabases] Successfully created database: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x23191EAE0](v37, -1, -1);
      MEMORY[0x23191EAE0](v36, -1, -1);

      v66(v34, v35);
    }

    else
    {
      v41 = *(v0 + 1056);
      v42 = *(v0 + 1000);
      v43 = *(v0 + 976);
      v44 = *(v0 + 912);

      v42(v43, v44);
    }

    v39 = *(v0 + 1104);
    v12 = *(v0 + 1072);
    v40 = v28;
  }

  *(v0 + 1160) = v39;
  *(v0 + 1152) = v40;
  *(v0 + 1144) = v28;
  *(v0 + 1136) = v12;
  v49 = *(v0 + 872);
  sub_230E3B394(*(v0 + 904), *(v0 + 880), type metadata accessor for DatabaseCreationResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v51 = *(v0 + 880);
  if (EnumCaseMultiPayload == 1)
  {
    sub_230E3B334(*(v0 + 880), type metadata accessor for DatabaseCreationResult);
    v52 = 2;
  }

  else
  {
    v53 = sub_230E68860();
    (*(*(v53 - 8) + 8))(v51, v53);
    v52 = 1;
  }

  v54 = *(v0 + 864);
  v55 = *(v0 + 856);
  v56 = *(v0 + 848);
  v57 = *(v0 + 840);
  v58 = *(v0 + 1185) & 1 | (*(v0 + 1186) << 8);
  *(v0 + 736) = *(v0 + 1184);
  *(v0 + 744) = v56;
  *(v0 + 752) = v55;
  *(v0 + 760) = v58;
  *(v0 + 768) = v54;
  sub_230D1CDE0(v57, v0 + 776);
  v59 = swift_task_alloc();
  *(v0 + 1168) = v59;
  *v59 = v0;
  v59[1] = sub_230E2F7E0;
  v60 = *(v0 + 1120);
  v61 = *(v0 + 1112);
  v62 = *(v0 + 1016);

  return sub_230E3DD74(v61, v60, v52, v62, v0 + 736);
}

uint64_t sub_230E2F7E0()
{
  v2 = *v1;
  v3 = (*v1)[146];
  v4 = *v1;
  v2[147] = v0;

  v5 = v2[104];
  v6 = v2[95];
  v7 = v2[96];
  sub_230D666B4(v2[92], v2[93], v2[94]);
  if (v0)
  {
    v8 = sub_230E2FF80;
  }

  else
  {
    v8 = sub_230E2F970;
  }

  return MEMORY[0x2822009F8](v8, v5, 0);
}

uint64_t sub_230E2F970()
{
  v75 = v0;
  v1 = *(v0 + 904);
  sub_230E3B2E0(v0 + 16);
  sub_230E3B334(v1, type metadata accessor for DatabaseCreationResult);
  v2 = *(v0 + 1096) + 1;
  if (v2 == *(v0 + 1064))
  {
    v3 = *(v0 + 1040);
    v4 = *(v0 + 952);
    v5 = *(*(v0 + 1160) + 16);

    sub_230E68D70();
    swift_bridgeObjectRetain_n();

    v6 = sub_230E68D60();
    v7 = sub_230E693E0();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 1160);
    if (v8)
    {
      v10 = v5;
      v11 = *(v0 + 1152);
      v12 = *(v0 + 1040);
      v13 = swift_slowAlloc();
      *v13 = 134218496;
      *(v13 + 4) = v11;
      *(v13 + 12) = 2048;
      v14 = *(v12 + 16);

      *(v13 + 14) = v14;

      *(v13 + 22) = 2048;
      v5 = v10;

      *(v13 + 24) = v10;

      _os_log_impl(&dword_230D02000, v6, v7, "[ServicesIntelligenceProvider][createDomainDatabases] Completed: %ld/%ld successful, %ld failed", v13, 0x20u);
      MEMORY[0x23191EAE0](v13, -1, -1);
    }

    else
    {
      v33 = *(v0 + 1040);
      v34 = *(v0 + 1160);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v35 = *(v0 + 1056);
    (*(v0 + 1000))(*(v0 + 952), *(v0 + 912));
    v36 = *(v0 + 1160);
    if (v5)
    {
      v37 = *(v0 + 944);
      sub_230E68D70();

      v38 = sub_230E68D60();
      v39 = sub_230E69400();

      v40 = os_log_type_enabled(v38, v39);
      v41 = *(v0 + 1160);
      v42 = *(v0 + 1016);
      v43 = *(v0 + 1000);
      v44 = *(v0 + 944);
      v45 = *(v0 + 912);
      if (v40)
      {
        v68 = *(v0 + 1016);
        v70 = *(v0 + 1056);
        v46 = swift_slowAlloc();
        v72 = v5;
        v74 = swift_slowAlloc();
        v47 = v74;
        *v46 = 136315138;
        *(v0 + 816) = v41;
        v67 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D7D8, &qword_230E7F150);
        sub_230D1D1C4(&unk_27DB5D7E0, &qword_27DB5D7D8, &qword_230E7F150);
        sub_230D0D278();
        v48 = sub_230E69180();
        v50 = v49;

        v51 = sub_230D7E620(v48, v50, &v74);

        *(v46 + 4) = v51;
        _os_log_impl(&dword_230D02000, v38, v39, "[ServicesIntelligenceProvider][createDomainDatabases] Database creation failures: %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v47);
        v52 = v47;
        v5 = v72;
        MEMORY[0x23191EAE0](v52, -1, -1);
        MEMORY[0x23191EAE0](v46, -1, -1);

        v67(v44, v45);
      }

      else
      {
        v54 = *(v0 + 1016);

        v43(v44, v45);
      }
    }

    else
    {
      v53 = *(v0 + 1016);
    }

    v55 = *(v0 + 824);
    *v55 = *(v0 + 1152);
    v55[1] = v5;
    v56 = *(v0 + 992);
    v57 = *(v0 + 984);
    v58 = *(v0 + 976);
    v59 = *(v0 + 968);
    v60 = *(v0 + 960);
    v61 = *(v0 + 952);
    v62 = *(v0 + 944);
    v63 = *(v0 + 936);
    v64 = *(v0 + 928);
    v65 = *(v0 + 904);
    v69 = *(v0 + 896);
    v71 = *(v0 + 888);
    v73 = *(v0 + 880);
    *(*(v0 + 824) + 16) = *(v0 + 1160);

    v66 = *(v0 + 8);

    return v66();
  }

  else
  {
    v15 = *(v0 + 1152);
    v16 = *(v0 + 1136);
    *(v0 + 1104) = *(v0 + 1160);
    *(v0 + 1096) = v2;
    *(v0 + 1088) = v15;
    *(v0 + 1072) = v16;
    v17 = *(v0 + 864);
    v18 = *(v0 + 856);
    v19 = *(v0 + 848);
    v20 = *(v0 + 1184);
    v21 = *(v0 + 840);
    v22 = (*(v0 + 1040) + 96 * v2);
    v23 = *(v0 + 1185) & 1 | (*(v0 + 1186) << 8);
    v24 = v22[3];
    *(v0 + 16) = v22[2];
    *(v0 + 32) = v24;
    v25 = v22[4];
    v26 = v22[5];
    v27 = v22[7];
    *(v0 + 80) = v22[6];
    *(v0 + 96) = v27;
    *(v0 + 48) = v25;
    *(v0 + 64) = v26;
    v28 = *(v0 + 24);
    *(v0 + 1112) = *(v0 + 16);
    *(v0 + 1120) = v28;
    *(v0 + 656) = v20;
    *(v0 + 664) = v19;
    *(v0 + 672) = v18;
    *(v0 + 680) = v23;
    *(v0 + 688) = v17;
    sub_230D1CDE0(v21, v0 + 696);
    sub_230E3B284(v0 + 16, v0 + 112);
    v29 = swift_task_alloc();
    *(v0 + 1128) = v29;
    *v29 = v0;
    v29[1] = sub_230E2EFB4;
    v30 = *(v0 + 904);
    v31 = *(v0 + 832);

    return sub_230E30794(v30, v0 + 16, v0 + 656);
  }
}

uint64_t sub_230E2FF80()
{
  v99 = v0;
  v1 = *(v0 + 1176);
  v2 = *(v0 + 960);
  sub_230E68D70();
  sub_230E3B284(v0 + 16, v0 + 208);
  v3 = v1;
  v4 = sub_230E68D60();
  v5 = sub_230E69400();
  sub_230E3B2E0(v0 + 16);
  MEMORY[0x23191E910](v1);
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 1176);
  if (v6)
  {
    v8 = *(v0 + 1120);
    v9 = *(v0 + 1112);
    v90 = *(v0 + 1000);
    v93 = *(v0 + 1056);
    v88 = *(v0 + 912);
    v89 = *(v0 + 960);
    v96 = *(v0 + 904);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v98 = v12;
    *v10 = 136315394;

    v13 = sub_230D7E620(v9, v8, &v98);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2112;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v15;
    *v11 = v15;
    _os_log_impl(&dword_230D02000, v4, v5, "[ServicesIntelligenceProvider][createDomainDatabases] Failed to update status for %s: %@", v10, 0x16u);
    sub_230D2D9F8(v11, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x23191EAE0](v12, -1, -1);
    MEMORY[0x23191EAE0](v10, -1, -1);

    MEMORY[0x23191E910](v7);
    sub_230E3B2E0(v0 + 16);
    v90(v89, v88);
    v16 = v96;
  }

  else
  {
    v17 = *(v0 + 1056);
    v18 = *(v0 + 1000);
    v19 = *(v0 + 960);
    v20 = *(v0 + 912);
    v21 = *(v0 + 904);

    MEMORY[0x23191E910](v7);
    sub_230E3B2E0(v0 + 16);
    v18(v19, v20);
    v16 = v21;
  }

  sub_230E3B334(v16, type metadata accessor for DatabaseCreationResult);
  v22 = *(v0 + 1096) + 1;
  if (v22 == *(v0 + 1064))
  {
    v23 = *(v0 + 1040);
    v24 = *(v0 + 952);
    v25 = *(*(v0 + 1160) + 16);

    sub_230E68D70();
    swift_bridgeObjectRetain_n();

    v26 = sub_230E68D60();
    v27 = sub_230E693E0();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 1160);
    if (v28)
    {
      v30 = *(v0 + 1152);
      v31 = v25;
      v32 = *(v0 + 1040);
      v33 = swift_slowAlloc();
      *v33 = 134218496;
      *(v33 + 4) = v30;
      *(v33 + 12) = 2048;
      v34 = *(v32 + 16);

      *(v33 + 14) = v34;
      v25 = v31;

      *(v33 + 22) = 2048;

      *(v33 + 24) = v31;

      _os_log_impl(&dword_230D02000, v26, v27, "[ServicesIntelligenceProvider][createDomainDatabases] Completed: %ld/%ld successful, %ld failed", v33, 0x20u);
      MEMORY[0x23191EAE0](v33, -1, -1);
    }

    else
    {
      v53 = *(v0 + 1040);
      v54 = *(v0 + 1160);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v55 = *(v0 + 1056);
    (*(v0 + 1000))(*(v0 + 952), *(v0 + 912));
    v56 = *(v0 + 1160);
    if (v25)
    {
      v57 = *(v0 + 944);
      sub_230E68D70();

      v58 = sub_230E68D60();
      v59 = sub_230E69400();

      v60 = os_log_type_enabled(v58, v59);
      v61 = *(v0 + 1160);
      v62 = *(v0 + 1056);
      v63 = *(v0 + 1016);
      v64 = *(v0 + 1000);
      v65 = *(v0 + 944);
      v66 = *(v0 + 912);
      if (v60)
      {
        v94 = *(v0 + 1016);
        v87 = v59;
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v98 = v68;
        *v67 = 136315138;
        *(v0 + 816) = v61;
        v91 = v64;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D7D8, &qword_230E7F150);
        sub_230D1D1C4(&unk_27DB5D7E0, &qword_27DB5D7D8, &qword_230E7F150);
        sub_230D0D278();
        v69 = sub_230E69180();
        v71 = v70;

        v72 = sub_230D7E620(v69, v71, &v98);

        *(v67 + 4) = v72;
        _os_log_impl(&dword_230D02000, v58, v87, "[ServicesIntelligenceProvider][createDomainDatabases] Database creation failures: %s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v68);
        MEMORY[0x23191EAE0](v68, -1, -1);
        MEMORY[0x23191EAE0](v67, -1, -1);

        v91(v65, v66);
      }

      else
      {
        v74 = *(v0 + 1016);

        v64(v65, v66);
      }
    }

    else
    {
      v73 = *(v0 + 1016);
    }

    v75 = *(v0 + 824);
    *v75 = *(v0 + 1152);
    v75[1] = v25;
    v76 = *(v0 + 992);
    v77 = *(v0 + 984);
    v78 = *(v0 + 976);
    v79 = *(v0 + 968);
    v80 = *(v0 + 960);
    v81 = *(v0 + 952);
    v82 = *(v0 + 944);
    v83 = *(v0 + 936);
    v84 = *(v0 + 928);
    v85 = *(v0 + 904);
    v92 = *(v0 + 896);
    v95 = *(v0 + 888);
    v97 = *(v0 + 880);
    *(*(v0 + 824) + 16) = *(v0 + 1160);

    v86 = *(v0 + 8);

    return v86();
  }

  else
  {
    v35 = *(v0 + 1152);
    v36 = *(v0 + 1136);
    *(v0 + 1104) = *(v0 + 1160);
    *(v0 + 1096) = v22;
    *(v0 + 1088) = v35;
    *(v0 + 1072) = v36;
    v37 = *(v0 + 864);
    v38 = *(v0 + 856);
    v39 = *(v0 + 848);
    v40 = *(v0 + 1184);
    v41 = *(v0 + 840);
    v42 = (*(v0 + 1040) + 96 * v22);
    v43 = *(v0 + 1185) & 1 | (*(v0 + 1186) << 8);
    v44 = v42[3];
    *(v0 + 16) = v42[2];
    *(v0 + 32) = v44;
    v45 = v42[4];
    v46 = v42[5];
    v47 = v42[7];
    *(v0 + 80) = v42[6];
    *(v0 + 96) = v47;
    *(v0 + 48) = v45;
    *(v0 + 64) = v46;
    v48 = *(v0 + 24);
    *(v0 + 1112) = *(v0 + 16);
    *(v0 + 1120) = v48;
    *(v0 + 656) = v40;
    *(v0 + 664) = v39;
    *(v0 + 672) = v38;
    *(v0 + 680) = v43;
    *(v0 + 688) = v37;
    sub_230D1CDE0(v41, v0 + 696);
    sub_230E3B284(v0 + 16, v0 + 112);
    v49 = swift_task_alloc();
    *(v0 + 1128) = v49;
    *v49 = v0;
    v49[1] = sub_230E2EFB4;
    v50 = *(v0 + 904);
    v51 = *(v0 + 832);

    return sub_230E30794(v50, v0 + 16, v0 + 656);
  }
}

uint64_t sub_230E30794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 520) = v3;
  *(v4 + 504) = a1;
  *(v4 + 512) = a2;
  v6 = type metadata accessor for SQLDatabaseConfiguration();
  *(v4 + 528) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 536) = swift_task_alloc();
  v8 = sub_230E68D80();
  *(v4 + 544) = v8;
  v9 = *(v8 - 8);
  *(v4 + 552) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 560) = swift_task_alloc();
  *(v4 + 568) = swift_task_alloc();
  *(v4 + 576) = swift_task_alloc();
  v11 = *(a3 + 16);
  *(v4 + 584) = *a3;
  *(v4 + 600) = v11;
  *(v4 + 616) = *(a3 + 32);

  return MEMORY[0x2822009F8](sub_230E308C0, v3, 0);
}

uint64_t sub_230E308C0()
{
  v88 = v0;
  v1 = *(v0 + 576);
  v2 = *(v0 + 512);
  sub_230E68D70();
  sub_230E3B284(v2, v0 + 16);
  v3 = sub_230E68D60();
  v4 = sub_230E693F0();
  sub_230E3B2E0(v2);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 576);
  v7 = *(v0 + 552);
  v8 = *(v0 + 544);
  if (v5)
  {
    v9 = *(v0 + 512);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v86 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_230D7E620(*(v9 + 32), *(v9 + 40), &v86);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_230D7E620(*v9, *(v9 + 8), &v86);
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][createDatabaseFromRegistry] Creating %s database: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v11, -1, -1);
    MEMORY[0x23191EAE0](v10, -1, -1);
  }

  v12 = *(v7 + 8);
  v12(v6, v8);
  v13 = (v0 + 304);
  v14 = *(v0 + 512);
  v15 = v14[4];
  v16 = v14[5];
  if (v15 == 5001555 && v16 == 0xE300000000000000)
  {
    goto LABEL_9;
  }

  v18 = v14[4];
  v19 = v14[5];
  if (sub_230E698C0())
  {
    v14 = *(v0 + 512);
LABEL_9:
    v20 = *(v0 + 536);
    v21 = *(v0 + 528);
    v22 = sub_230E686C0();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    sub_230E686B0();
    v25 = v14[8];
    v26 = v14[9];
    sub_230E3B8F8(&qword_27DB5AC40, type metadata accessor for SQLDatabaseConfiguration);
    sub_230E686A0();
    v33 = *(v0 + 616);
    v79 = *(v0 + 600);
    v82 = *(v0 + 584);

    *(v0 + 384) = v82;
    *(v0 + 400) = v79;
    *(v0 + 416) = v33;
    v34 = swift_task_alloc();
    *(v0 + 624) = v34;
    *v34 = v0;
    v34[1] = sub_230E31264;
    v35 = *(v0 + 536);
    v36 = *(v0 + 520);
    v37 = *(v0 + 504);

    return sub_230E31710(v37, v35, v0 + 384);
  }

  v83 = v12;
  if (v15 == 0x524F54434556 && v16 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0)
  {
    v38 = *(v0 + 512);
    v39 = sub_230E686C0();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    sub_230E686B0();
    v42 = *(v38 + 64);
    v43 = *(v38 + 72);
    sub_230D45B30();
    sub_230E686A0();
    v44 = *(v0 + 616);
    v80 = *(v0 + 584);
    v84 = *(v0 + 600);

    v45 = *(v0 + 424);
    v46 = *(v0 + 432);
    *(v0 + 632) = v46;
    v47 = *(v0 + 440);
    v48 = *(v0 + 448);
    *(v0 + 344) = v80;
    v49 = *(v0 + 456);
    v50 = *(v0 + 457);
    *(v0 + 464) = v45;
    *(v0 + 472) = v46;
    *(v0 + 480) = v47;
    *(v0 + 488) = v48;
    *(v0 + 496) = v49;
    *(v0 + 497) = v50;
    *(v0 + 360) = v84;
    *(v0 + 376) = v44;
    v51 = swift_task_alloc();
    *(v0 + 640) = v51;
    *v51 = v0;
    v51[1] = sub_230E3141C;
    v52 = *(v0 + 520);
    v53 = *(v0 + 504);

    return sub_230E32CD0(v53, v0 + 464, v0 + 344);
  }

  else if (v15 == 22091 && v16 == 0xE200000000000000 || (sub_230E698C0() & 1) != 0)
  {
    v54 = *(v0 + 512);
    v55 = sub_230E686C0();
    v56 = *(v55 + 48);
    v57 = *(v55 + 52);
    swift_allocObject();
    sub_230E686B0();
    v58 = *(v54 + 64);
    v59 = *(v54 + 72);
    sub_230D0D730();
    sub_230E686A0();
    v60 = *(v0 + 616);
    v81 = *(v0 + 600);
    v85 = *(v0 + 584);

    *(v0 + 459) = *(v0 + 458);
    *v13 = v85;
    *(v0 + 320) = v81;
    *(v0 + 336) = v60;
    v61 = swift_task_alloc();
    *(v0 + 648) = v61;
    *v61 = v0;
    v61[1] = sub_230E315A4;
    v62 = *(v0 + 520);
    v63 = *(v0 + 504);

    return sub_230E34180(v63, (v0 + 459), v13);
  }

  else
  {
    v64 = *(v0 + 568);
    v65 = *(v0 + 512);
    sub_230E68D70();
    sub_230E3B284(v65, v0 + 112);
    v66 = sub_230E68D60();
    v67 = sub_230E69400();
    sub_230E3B2E0(v65);
    v68 = os_log_type_enabled(v66, v67);
    v69 = *(v0 + 568);
    v70 = *(v0 + 552);
    v71 = *(v0 + 544);
    if (v68)
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v86 = v73;
      *v72 = 136315138;
      *(v72 + 4) = sub_230D7E620(v15, v16, &v86);
      _os_log_impl(&dword_230D02000, v66, v67, "[ServicesIntelligenceProvider][createDatabaseFromRegistry] Unknown database type: %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x23191EAE0](v73, -1, -1);
      MEMORY[0x23191EAE0](v72, -1, -1);
    }

    v83(v69, v71);
    v74 = *(v0 + 504);
    v86 = 0;
    v87 = 0xE000000000000000;
    sub_230E69540();

    v86 = 0xD000000000000017;
    v87 = 0x8000000230E84AF0;
    MEMORY[0x23191DA00](v15, v16);
    v75 = v86;
    v76 = v87;
    sub_230D0D224();
    v77 = swift_allocError();
    *v78 = v75;
    *(v78 + 8) = v76;
    *(v78 + 16) = 1;
    *v74 = v77;
    type metadata accessor for DatabaseCreationResult();
    swift_storeEnumTagMultiPayload();
    v27 = *(v0 + 576);
    v28 = *(v0 + 568);
    v29 = *(v0 + 560);
    v30 = *(v0 + 536);

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_230E31264()
{
  v1 = *(*v0 + 624);
  v2 = *(*v0 + 520);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230E31374, v2, 0);
}

uint64_t sub_230E31374()
{
  sub_230E3B334(v0[67], type metadata accessor for SQLDatabaseConfiguration);
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[67];

  v5 = v0[1];

  return v5();
}

uint64_t sub_230E3141C()
{
  v1 = *v0;
  v2 = *(*v0 + 640);
  v3 = *(*v0 + 632);
  v10 = *v0;

  v4 = v1[72];
  v5 = v1[71];
  v6 = v1[70];
  v7 = v1[67];

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_230E315A4()
{
  v1 = *v0;
  v2 = *(*v0 + 648);
  v9 = *v0;

  v3 = v1[72];
  v4 = v1[71];
  v5 = v1[70];
  v6 = v1[67];

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_230E31710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 200) = a2;
  *(v4 + 208) = v3;
  *(v4 + 192) = a1;
  v6 = sub_230E68D80();
  *(v4 + 216) = v6;
  v7 = *(v6 - 8);
  *(v4 + 224) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  v9 = *(*(type metadata accessor for CreateSQLDatabaseResponse(0) - 8) + 64) + 15;
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  v10 = *(*(type metadata accessor for CreateSQLDatabaseRequest(0) - 8) + 64) + 15;
  *(v4 + 264) = swift_task_alloc();
  v11 = *(a3 + 16);
  *(v4 + 272) = *a3;
  *(v4 + 288) = v11;
  *(v4 + 304) = *(a3 + 32);

  return MEMORY[0x2822009F8](sub_230E31860, v3, 0);
}

uint64_t sub_230E31860()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 200);
  *(v0 + 312) = *v2;
  *(v0 + 320) = v2[1];
  sub_230E3B394(v2, v1, type metadata accessor for SQLDatabaseConfiguration);
  *(v0 + 424) = 4;
  v3 = swift_task_alloc();
  *(v0 + 328) = v3;
  *v3 = v0;
  v3[1] = sub_230E3193C;

  return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 424), 0, 0);
}

uint64_t sub_230E3193C()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230E31A4C, v2, 0);
}

uint64_t sub_230E31A4C()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 208);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 81);
  v7 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 336) = v4;
  *(v0 + 344) = v7;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  *(v0 + 41) = v6;
  *(v0 + 48) = v7;
  v8 = swift_task_alloc();
  *(v0 + 352) = v8;
  v8[2] = v1;
  v8[3] = v2;
  v8[4] = v0 + 16;
  v9 = swift_task_alloc();
  *(v0 + 360) = v9;
  *v9 = v0;
  v9[1] = sub_230E31B74;
  v10 = *(v0 + 256);
  v11 = *(v0 + 208);

  return sub_230D123C8(v10, 4, v0 + 16, &unk_230E6E500, v8);
}

uint64_t sub_230E31B74()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *(*v1 + 352);
  v5 = *(*v1 + 344);
  v6 = *(*v1 + 336);
  v7 = *v1;
  *(*v1 + 368) = v0;

  v8 = *(v2 + 208);
  if (v0)
  {
    v9 = sub_230E31FBC;
  }

  else
  {
    v9 = sub_230E31CFC;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_230E31CFC()
{
  v1 = *(v0 + 304);
  v8 = *(*(v0 + 200) + 16);
  v9 = *(v0 + 312);
  v10 = *(v0 + 320);

  v6 = *(v0 + 288);
  v7 = *(v0 + 272);
  v2 = DatabaseIdentifier.stringRepresentation()();
  *(v0 + 176) = v2;

  *(v0 + 376) = v2._object;
  *(v0 + 112) = v6;
  *(v0 + 96) = v7;
  *(v0 + 128) = v1;
  v3 = swift_task_alloc();
  *(v0 + 384) = v3;
  *v3 = v0;
  v3[1] = sub_230E31DF4;
  v4 = *(v0 + 208);

  return sub_230D05310(v0 + 96);
}

uint64_t sub_230E31DF4(uint64_t a1)
{
  v4 = *(*v2 + 384);
  v5 = *v2;
  *(v5 + 392) = a1;
  *(v5 + 400) = v1;

  if (v1)
  {
    v6 = *(v5 + 376);
    v7 = *(v5 + 208);

    return MEMORY[0x2822009F8](sub_230E32A0C, v7, 0);
  }

  else
  {
    *(v5 + 136) = *(v5 + 272);
    v8 = *(v5 + 176);
    v9 = *(v5 + 304);
    *(v5 + 152) = *(v5 + 288);
    *(v5 + 168) = v9;
    v10 = swift_task_alloc();
    *(v5 + 408) = v10;
    *v10 = v5;
    v10[1] = sub_230E32264;
    v11 = *(v5 + 376);
    v12 = *(v5 + 256);

    return sub_230E3D38C(v8, v11, v12, a1, v5 + 136);
  }
}

uint64_t sub_230E31FBC()
{
  v28 = v0;
  sub_230E3B334(*(v0 + 264), type metadata accessor for CreateSQLDatabaseRequest);
  v1 = *(v0 + 368);
  v2 = *(v0 + 320);
  v3 = *(v0 + 232);
  sub_230E68D70();

  v4 = v1;
  v5 = sub_230E68D60();
  v6 = sub_230E69400();

  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 312);
    v8 = *(v0 + 320);
    v9 = *(v0 + 224);
    v25 = *(v0 + 216);
    v26 = *(v0 + 232);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_230D7E620(v7, v8, &v27);
    *(v10 + 12) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_230D02000, v5, v6, "[ServicesIntelligenceProvider][createSQLDatabase][%s] Failed: %@", v10, 0x16u);
    sub_230D2D9F8(v11, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x23191EAE0](v12, -1, -1);
    MEMORY[0x23191EAE0](v10, -1, -1);

    (*(v9 + 8))(v26, v25);
  }

  else
  {
    v16 = *(v0 + 224);
    v15 = *(v0 + 232);
    v17 = *(v0 + 216);

    (*(v16 + 8))(v15, v17);
  }

  **(v0 + 192) = v1;
  type metadata accessor for DatabaseCreationResult();
  swift_storeEnumTagMultiPayload();
  v19 = *(v0 + 256);
  v18 = *(v0 + 264);
  v21 = *(v0 + 240);
  v20 = *(v0 + 248);
  v22 = *(v0 + 232);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_230E32264()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *(*v1 + 376);
  v8 = *v1;
  *(*v1 + 416) = v0;

  v5 = *(v2 + 208);
  if (v0)
  {
    v6 = sub_230E3273C;
  }

  else
  {
    v6 = sub_230E323A0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E323A0()
{
  v40 = v0;
  v1 = v0[40];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[30];
  sub_230E68D70();
  sub_230E3B394(v3, v2, type metadata accessor for CreateSQLDatabaseResponse);

  v5 = sub_230E68D60();
  v6 = sub_230E693E0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[49];
  if (v7)
  {
    v10 = v0[39];
    v9 = v0[40];
    v11 = v0[31];
    v37 = v0[30];
    v38 = v0[33];
    v12 = v0[28];
    v36 = v0[27];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v39 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_230D7E620(v10, v9, &v39);
    *(v13 + 12) = 2080;
    sub_230E68860();
    sub_230E3B8F8(&qword_2815668A0, MEMORY[0x277CC9260]);
    v15 = sub_230E69890();
    v17 = v16;
    sub_230E3B334(v11, type metadata accessor for CreateSQLDatabaseResponse);
    v18 = sub_230D7E620(v15, v17, &v39);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_230D02000, v5, v6, "[ServicesIntelligenceProvider][createSQLDatabase][%s] Created at %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v14, -1, -1);
    MEMORY[0x23191EAE0](v13, -1, -1);

    (*(v12 + 8))(v37, v36);
    v19 = v38;
  }

  else
  {
    v20 = v0[33];
    v22 = v0[30];
    v21 = v0[31];
    v23 = v0[27];
    v24 = v0[28];
    v25 = v0[49];

    sub_230E3B334(v21, type metadata accessor for CreateSQLDatabaseResponse);
    (*(v24 + 8))(v22, v23);
    v19 = v20;
  }

  sub_230E3B334(v19, type metadata accessor for CreateSQLDatabaseRequest);
  v26 = v0[32];
  v27 = v0[24];
  v28 = sub_230E68860();
  (*(*(v28 - 8) + 32))(v27, v26, v28);
  type metadata accessor for DatabaseCreationResult();
  swift_storeEnumTagMultiPayload();
  v30 = v0[32];
  v29 = v0[33];
  v32 = v0[30];
  v31 = v0[31];
  v33 = v0[29];

  v34 = v0[1];

  return v34();
}

uint64_t sub_230E3273C()
{
  v31 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);

  sub_230E3B334(v2, type metadata accessor for CreateSQLDatabaseResponse);
  sub_230E3B334(v3, type metadata accessor for CreateSQLDatabaseRequest);
  v4 = *(v0 + 416);
  v5 = *(v0 + 320);
  v6 = *(v0 + 232);
  sub_230E68D70();

  v7 = v4;
  v8 = sub_230E68D60();
  v9 = sub_230E69400();

  MEMORY[0x23191E910](v4);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 312);
    v11 = *(v0 + 320);
    v12 = *(v0 + 224);
    v28 = *(v0 + 216);
    v29 = *(v0 + 232);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_230D7E620(v10, v11, &v30);
    *(v13 + 12) = 2112;
    v16 = v4;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    *v14 = v17;
    _os_log_impl(&dword_230D02000, v8, v9, "[ServicesIntelligenceProvider][createSQLDatabase][%s] Failed: %@", v13, 0x16u);
    sub_230D2D9F8(v14, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x23191EAE0](v15, -1, -1);
    MEMORY[0x23191EAE0](v13, -1, -1);

    (*(v12 + 8))(v29, v28);
  }

  else
  {
    v19 = *(v0 + 224);
    v18 = *(v0 + 232);
    v20 = *(v0 + 216);

    (*(v19 + 8))(v18, v20);
  }

  **(v0 + 192) = v4;
  type metadata accessor for DatabaseCreationResult();
  swift_storeEnumTagMultiPayload();
  v22 = *(v0 + 256);
  v21 = *(v0 + 264);
  v24 = *(v0 + 240);
  v23 = *(v0 + 248);
  v25 = *(v0 + 232);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_230E32A0C()
{
  v29 = v0;
  v1 = *(v0 + 264);
  sub_230E3B334(*(v0 + 256), type metadata accessor for CreateSQLDatabaseResponse);
  sub_230E3B334(v1, type metadata accessor for CreateSQLDatabaseRequest);
  v2 = *(v0 + 400);
  v3 = *(v0 + 320);
  v4 = *(v0 + 232);
  sub_230E68D70();

  v5 = v2;
  v6 = sub_230E68D60();
  v7 = sub_230E69400();

  MEMORY[0x23191E910](v2);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 312);
    v9 = *(v0 + 320);
    v10 = *(v0 + 224);
    v26 = *(v0 + 216);
    v27 = *(v0 + 232);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_230D7E620(v8, v9, &v28);
    *(v11 + 12) = 2112;
    v14 = v2;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_230D02000, v6, v7, "[ServicesIntelligenceProvider][createSQLDatabase][%s] Failed: %@", v11, 0x16u);
    sub_230D2D9F8(v12, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x23191EAE0](v13, -1, -1);
    MEMORY[0x23191EAE0](v11, -1, -1);

    (*(v10 + 8))(v27, v26);
  }

  else
  {
    v17 = *(v0 + 224);
    v16 = *(v0 + 232);
    v18 = *(v0 + 216);

    (*(v17 + 8))(v16, v18);
  }

  **(v0 + 192) = v2;
  type metadata accessor for DatabaseCreationResult();
  swift_storeEnumTagMultiPayload();
  v20 = *(v0 + 256);
  v19 = *(v0 + 264);
  v22 = *(v0 + 240);
  v21 = *(v0 + 248);
  v23 = *(v0 + 232);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_230E32CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 232) = a1;
  *(v4 + 240) = v3;
  v7 = sub_230E68D80();
  *(v4 + 248) = v7;
  v8 = *(v7 - 8);
  *(v4 + 256) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  v10 = *(*(type metadata accessor for CreateVectorDatabaseResponse() - 8) + 64) + 15;
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 296) = *a2;
  *(v4 + 211) = *(a2 + 16);
  *(v4 + 312) = *(a2 + 24);
  *(v4 + 212) = *(a2 + 32);
  *(v4 + 213) = *(a2 + 33);
  v11 = *(a3 + 16);
  *(v4 + 320) = *a3;
  *(v4 + 336) = v11;
  *(v4 + 352) = *(a3 + 32);

  return MEMORY[0x2822009F8](sub_230E32E20, v3, 0);
}

uint64_t sub_230E32E20()
{
  v1 = *(v0 + 213);
  v2 = *(v0 + 212);
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);
  v5 = *(v0 + 211);
  *(v0 + 176) = *(v0 + 296);
  *(v0 + 184) = v3;
  *(v0 + 192) = v5;
  *(v0 + 200) = v4;
  *(v0 + 208) = v2;
  *(v0 + 209) = v1;

  *(v0 + 210) = 14;
  v6 = swift_task_alloc();
  *(v0 + 360) = v6;
  *v6 = v0;
  v6[1] = sub_230E32EFC;

  return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 210), 0, 0);
}

uint64_t sub_230E32EFC()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 240);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230E3300C, v2, 0);
}

uint64_t sub_230E3300C()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 81);
  v7 = *(v0 + 88);
  *(v0 + 368) = v4;
  *(v0 + 376) = v7;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  *(v0 + 41) = v6;
  *(v0 + 48) = v7;

  v8 = swift_task_alloc();
  *(v0 + 384) = v8;
  *v8 = v0;
  v8[1] = sub_230E33104;
  v9 = *(v0 + 288);
  v10 = *(v0 + 240);

  return sub_230D731A0(v9, 14, v0 + 16, v10, v0 + 176);
}

uint64_t sub_230E33104()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *(*v1 + 376);
  v5 = *(*v1 + 368);
  v6 = *v1;
  *(*v1 + 392) = v0;

  v7 = *(v2 + 240);
  if (v0)
  {
    v8 = sub_230E33528;
  }

  else
  {
    v8 = sub_230E33270;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_230E33270()
{
  v1 = *(v0 + 352);
  v8 = *(v0 + 211);
  v9 = *(v0 + 296);
  v10 = *(v0 + 304);
  v6 = *(v0 + 336);
  v7 = *(v0 + 320);
  v2 = DatabaseIdentifier.stringRepresentation()();
  *(v0 + 216) = v2;

  *(v0 + 400) = v2._object;
  *(v0 + 112) = v6;
  *(v0 + 96) = v7;
  *(v0 + 128) = v1;
  v3 = swift_task_alloc();
  *(v0 + 408) = v3;
  *v3 = v0;
  v3[1] = sub_230E33360;
  v4 = *(v0 + 240);

  return sub_230D05310(v0 + 96);
}

uint64_t sub_230E33360(uint64_t a1)
{
  v4 = *(*v2 + 408);
  v5 = *v2;
  *(v5 + 416) = a1;
  *(v5 + 424) = v1;

  if (v1)
  {
    v6 = *(v5 + 400);
    v7 = *(v5 + 240);

    return MEMORY[0x2822009F8](sub_230E33EE4, v7, 0);
  }

  else
  {
    *(v5 + 136) = *(v5 + 320);
    v8 = *(v5 + 216);
    v9 = *(v5 + 352);
    *(v5 + 152) = *(v5 + 336);
    *(v5 + 168) = v9;
    v10 = swift_task_alloc();
    *(v5 + 432) = v10;
    *v10 = v5;
    v10[1] = sub_230E337B0;
    v11 = *(v5 + 400);
    v12 = *(v5 + 288);

    return sub_230E3D38C(v8, v11, v12, a1, v5 + 136);
  }
}

uint64_t sub_230E33528()
{
  v28 = v0;
  v1 = *(v0 + 304);

  v2 = *(v0 + 392);
  v3 = *(v0 + 304);
  v4 = *(v0 + 264);
  sub_230E68D70();

  v5 = v2;
  v6 = sub_230E68D60();
  v7 = sub_230E69400();

  MEMORY[0x23191E910](v2);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 296);
    v9 = *(v0 + 304);
    v10 = *(v0 + 256);
    v25 = *(v0 + 248);
    v26 = *(v0 + 264);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_230D7E620(v8, v9, &v27);
    *(v11 + 12) = 2112;
    v14 = v2;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_230D02000, v6, v7, "[ServicesIntelligenceProvider][createVectorDatabase][%s] Failed: %@", v11, 0x16u);
    sub_230D2D9F8(v12, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x23191EAE0](v13, -1, -1);
    MEMORY[0x23191EAE0](v11, -1, -1);

    (*(v10 + 8))(v26, v25);
  }

  else
  {
    v17 = *(v0 + 256);
    v16 = *(v0 + 264);
    v18 = *(v0 + 248);

    (*(v17 + 8))(v16, v18);
  }

  **(v0 + 232) = v2;
  type metadata accessor for DatabaseCreationResult();
  swift_storeEnumTagMultiPayload();
  v20 = *(v0 + 280);
  v19 = *(v0 + 288);
  v22 = *(v0 + 264);
  v21 = *(v0 + 272);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_230E337B0()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *(*v1 + 400);
  v8 = *v1;
  *(*v1 + 440) = v0;

  v5 = *(v2 + 240);
  if (v0)
  {
    v6 = sub_230E33C3C;
  }

  else
  {
    v6 = sub_230E338EC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E338EC()
{
  v36 = v0;
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[34];
  sub_230E68D70();
  sub_230E3B394(v3, v2, type metadata accessor for CreateVectorDatabaseResponse);

  v5 = sub_230E68D60();
  v6 = sub_230E693E0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[52];
  if (v7)
  {
    v9 = v0[37];
    v10 = v0[38];
    v11 = v0[35];
    v12 = v0[32];
    v33 = v0[31];
    v34 = v0[34];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v35 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_230D7E620(v9, v10, &v35);
    *(v13 + 12) = 2080;
    sub_230E68860();
    sub_230E3B8F8(&qword_2815668A0, MEMORY[0x277CC9260]);
    v15 = sub_230E69890();
    v17 = v16;
    sub_230E3B334(v11, type metadata accessor for CreateVectorDatabaseResponse);
    v18 = sub_230D7E620(v15, v17, &v35);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_230D02000, v5, v6, "[ServicesIntelligenceProvider][createVectorDatabase][%s] Created at %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v14, -1, -1);
    MEMORY[0x23191EAE0](v13, -1, -1);

    (*(v12 + 8))(v34, v33);
  }

  else
  {
    v20 = v0[34];
    v19 = v0[35];
    v21 = v0[31];
    v22 = v0[32];
    v23 = v0[52];

    sub_230E3B334(v19, type metadata accessor for CreateVectorDatabaseResponse);
    (*(v22 + 8))(v20, v21);
  }

  v24 = v0[36];
  v25 = v0[29];
  v26 = sub_230E68860();
  (*(*(v26 - 8) + 32))(v25, v24, v26);
  type metadata accessor for DatabaseCreationResult();
  swift_storeEnumTagMultiPayload();
  v28 = v0[35];
  v27 = v0[36];
  v30 = v0[33];
  v29 = v0[34];

  v31 = v0[1];

  return v31();
}

uint64_t sub_230E33C3C()
{
  v29 = v0;
  v1 = *(v0 + 416);
  v2 = *(v0 + 288);

  sub_230E3B334(v2, type metadata accessor for CreateVectorDatabaseResponse);
  v3 = *(v0 + 440);
  v4 = *(v0 + 304);
  v5 = *(v0 + 264);
  sub_230E68D70();

  v6 = v3;
  v7 = sub_230E68D60();
  v8 = sub_230E69400();

  MEMORY[0x23191E910](v3);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 296);
    v10 = *(v0 + 304);
    v11 = *(v0 + 256);
    v26 = *(v0 + 248);
    v27 = *(v0 + 264);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_230D7E620(v9, v10, &v28);
    *(v12 + 12) = 2112;
    v15 = v3;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_230D02000, v7, v8, "[ServicesIntelligenceProvider][createVectorDatabase][%s] Failed: %@", v12, 0x16u);
    sub_230D2D9F8(v13, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x23191EAE0](v14, -1, -1);
    MEMORY[0x23191EAE0](v12, -1, -1);

    (*(v11 + 8))(v27, v26);
  }

  else
  {
    v18 = *(v0 + 256);
    v17 = *(v0 + 264);
    v19 = *(v0 + 248);

    (*(v18 + 8))(v17, v19);
  }

  **(v0 + 232) = v3;
  type metadata accessor for DatabaseCreationResult();
  swift_storeEnumTagMultiPayload();
  v21 = *(v0 + 280);
  v20 = *(v0 + 288);
  v23 = *(v0 + 264);
  v22 = *(v0 + 272);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_230E33EE4()
{
  v27 = v0;
  sub_230E3B334(*(v0 + 288), type metadata accessor for CreateVectorDatabaseResponse);
  v1 = *(v0 + 424);
  v2 = *(v0 + 304);
  v3 = *(v0 + 264);
  sub_230E68D70();

  v4 = v1;
  v5 = sub_230E68D60();
  v6 = sub_230E69400();

  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 296);
    v8 = *(v0 + 304);
    v9 = *(v0 + 256);
    v24 = *(v0 + 248);
    v25 = *(v0 + 264);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_230D7E620(v7, v8, &v26);
    *(v10 + 12) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_230D02000, v5, v6, "[ServicesIntelligenceProvider][createVectorDatabase][%s] Failed: %@", v10, 0x16u);
    sub_230D2D9F8(v11, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x23191EAE0](v12, -1, -1);
    MEMORY[0x23191EAE0](v10, -1, -1);

    (*(v9 + 8))(v25, v24);
  }

  else
  {
    v16 = *(v0 + 256);
    v15 = *(v0 + 264);
    v17 = *(v0 + 248);

    (*(v16 + 8))(v15, v17);
  }

  **(v0 + 232) = v1;
  type metadata accessor for DatabaseCreationResult();
  swift_storeEnumTagMultiPayload();
  v19 = *(v0 + 280);
  v18 = *(v0 + 288);
  v21 = *(v0 + 264);
  v20 = *(v0 + 272);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_230E34180(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  *(v4 + 200) = a1;
  *(v4 + 208) = v3;
  v7 = sub_230E68D80();
  *(v4 + 216) = v7;
  v8 = *(v7 - 8);
  *(v4 + 224) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  v10 = *(*(type metadata accessor for CreateKVDatabaseResponse() - 8) + 64) + 15;
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 821) = *a2;
  v11 = *(a3 + 16);
  *(v4 + 272) = *a3;
  *(v4 + 288) = v11;
  *(v4 + 304) = *(a3 + 32);
  *(v4 + 820) = 10;
  v12 = swift_task_alloc();
  *(v4 + 312) = v12;
  *v12 = v4;
  v12[1] = sub_230E34330;
  v13 = *MEMORY[0x277D85DE8];

  return static RequestContext.from(_:correlationID:)(v4 + 56, (v4 + 820), 0, 0);
}

uint64_t sub_230E34330()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 208);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E3446C, v2, 0);
}

uint64_t sub_230E3446C()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  *(v0 + 16) = *(v0 + 56);
  v1 = *(v0 + 248);
  v2 = *(v0 + 208);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 81);
  v7 = *(v0 + 88);
  *(v0 + 320) = v4;
  *(v0 + 328) = v7;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  v32 = v5;
  *(v0 + 40) = v5;
  *(v0 + 41) = v6;
  *(v0 + 48) = v7;

  sub_230E68D70();

  v8 = sub_230E68D60();
  v9 = sub_230E693E0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v31 = v6;
    v11 = swift_slowAlloc();
    v33[0] = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_230D7E620(0xD000000000000010, 0x8000000230E80530, v33);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_230D7E620(v3, v4, v33);
    *(v10 + 22) = 2080;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v33);

    *(v10 + 24) = v13;
    _os_log_impl(&dword_230D02000, v8, v9, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v10, 0x20u);
    swift_arrayDestroy();
    v14 = v11;
    v6 = v31;
    MEMORY[0x23191EAE0](v14, -1, -1);
    MEMORY[0x23191EAE0](v10, -1, -1);

    if (!v32)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (!v32)
    {
LABEL_7:
      v18 = swift_task_alloc();
      *(v0 + 344) = v18;
      *v18 = v0;
      v19 = sub_230E348CC;
      goto LABEL_12;
    }
  }

  v15 = RequestType.rawValue.getter();
  v17 = v16;

  LOBYTE(v15) = sub_230D33FDC(v15, v17, v7);

  if ((v15 & 1) == 0 && v6 < 2)
  {
    goto LABEL_7;
  }

  sub_230E68950();
  *(v0 + 336) = CFAbsoluteTimeGetCurrent();
  *(v0 + 440) = 0u;
  *(v0 + 456) = 0u;
  *(v0 + 472) = 0u;
  *(v0 + 488) = 0u;
  *(v0 + 504) = 0u;
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0u;
  *(v0 + 568) = 0u;
  *(v0 + 584) = 0u;
  *(v0 + 600) = 0u;
  *(v0 + 616) = 0u;
  *(v0 + 632) = 0u;
  *(v0 + 648) = 0u;
  *(v0 + 664) = 0u;
  *(v0 + 680) = 0u;
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0u;
  *(v0 + 744) = 0u;
  *(v0 + 760) = 0u;
  *(v0 + 776) = 0u;
  *(v0 + 792) = 0u;
  *(v0 + 808) = 0;
  *(v0 + 812) = 93;
  v20 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 440), (v0 + 812));
  *(v0 + 816) = v20;
  v21 = 0.0;
  if (!v20)
  {
    v22 = *(v0 + 488);
    v23 = *(v0 + 560);
    v24 = __CFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      __break(1u);
    }

    v21 = vcvtd_n_f64_u64(v25, 0x14uLL);
  }

  *(v0 + 360) = v21;
  *(v0 + 192) = 0;
  v18 = swift_task_alloc();
  *(v0 + 368) = v18;
  *v18 = v0;
  v19 = sub_230E34A24;
LABEL_12:
  v18[1] = v19;
  v26 = *(v0 + 264);
  v27 = *(v0 + 208);
  v28 = *(v0 + 821);
  v29 = *MEMORY[0x277D85DE8];

  return sub_230D1DC80(v26, v28, v27, v0 + 16);
}

uint64_t sub_230E348CC()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = v0;

  v5 = *(v2 + 208);
  if (v0)
  {
    v6 = sub_230E353E0;
  }

  else
  {
    v6 = sub_230E35270;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E34A24()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = v0;

  v5 = *(v2 + 208);
  if (v0)
  {
    v6 = sub_230E34D20;
  }

  else
  {
    v6 = sub_230E34B7C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E34B7C()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v3 = *(v0 + 248);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  v6 = *(v0 + 208);
  sub_230D366D4(10, *(v0 + 360), *(v0 + 816) != 0, v0 + 16, (v0 + 192), *(v0 + 336));
  v7 = *(v5 + 8);
  v7(v3, v4);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  *(v0 + 384) = v7;
  v8 = *(v0 + 304);
  v16 = *(v0 + 821);
  v14 = *(v0 + 288);
  v15 = *(v0 + 272);
  v9 = DatabaseIdentifier.stringRepresentation()();
  *(v0 + 176) = v9;

  *(v0 + 392) = v9._object;
  *(v0 + 112) = v14;
  *(v0 + 96) = v15;
  *(v0 + 128) = v8;
  v10 = swift_task_alloc();
  *(v0 + 400) = v10;
  *v10 = v0;
  v10[1] = sub_230E35060;
  v11 = *(v0 + 208);
  v12 = *MEMORY[0x277D85DE8];

  return sub_230D05310(v0 + 96);
}

uint64_t sub_230E34D20()
{
  v38 = v0;
  v37[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 376);
  *(v0 + 192) = v1;
  v2 = *(v0 + 360);
  v3 = *(v0 + 336);
  v34 = *(v0 + 320);
  v35 = *(v0 + 328);
  v4 = *(v0 + 248);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v33 = *(v0 + 208);
  v7 = *(v0 + 816) != 0;
  swift_willThrow();
  v8 = v1;
  sub_230D366D4(10, v2, v7, v0 + 16, (v0 + 192), v3);
  MEMORY[0x23191E910](v1);
  v9 = *(v5 + 8);
  v9(v4, v6);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v10 = *(v0 + 376);
  v11 = *(v0 + 232);
  sub_230E68D70();
  v12 = v10;
  v13 = sub_230E68D60();
  v14 = sub_230E69400();
  MEMORY[0x23191E910](v10);
  v15 = os_log_type_enabled(v13, v14);
  v17 = *(v0 + 224);
  v16 = *(v0 + 232);
  v18 = *(v0 + 216);
  if (v15)
  {
    v36 = *(v0 + 232);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v37[0] = v21;
    *v19 = 136315394;
    *(v19 + 4) = sub_230D7E620(1852399981, 0xE400000000000000, v37);
    *(v19 + 12) = 2112;
    v22 = v10;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v23;
    *v20 = v23;
    _os_log_impl(&dword_230D02000, v13, v14, "[ServicesIntelligenceProvider][createKVDatabase][%s] Failed: %@", v19, 0x16u);
    sub_230D2D9F8(v20, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x23191EAE0](v21, -1, -1);
    MEMORY[0x23191EAE0](v19, -1, -1);

    v24 = v36;
  }

  else
  {

    v24 = v16;
  }

  v9(v24, v18);
  **(v0 + 200) = v10;
  type metadata accessor for DatabaseCreationResult();
  swift_storeEnumTagMultiPayload();
  v26 = *(v0 + 256);
  v25 = *(v0 + 264);
  v28 = *(v0 + 240);
  v27 = *(v0 + 248);
  v29 = *(v0 + 232);

  v30 = *(v0 + 8);
  v31 = *MEMORY[0x277D85DE8];

  return v30();
}

uint64_t sub_230E35060(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(*v2 + 400);
  v5 = *v2;
  *(v5 + 408) = a1;
  *(v5 + 416) = v1;

  if (v1)
  {
    v6 = *(v5 + 392);
    v7 = *(v5 + 208);

    v8 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230E35E60, v7, 0);
  }

  else
  {
    *(v5 + 136) = *(v5 + 272);
    v9 = *(v5 + 176);
    v10 = *(v5 + 304);
    *(v5 + 152) = *(v5 + 288);
    *(v5 + 168) = v10;
    v11 = swift_task_alloc();
    *(v5 + 424) = v11;
    *v11 = v5;
    v11[1] = sub_230E356B0;
    v12 = *(v5 + 392);
    v13 = *(v5 + 264);
    v14 = *MEMORY[0x277D85DE8];

    return sub_230E3D38C(v9, v12, v13, a1, v5 + 136);
  }
}

uint64_t sub_230E35270()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v3 = *(v0 + 208);
  v4 = *(*(v0 + 224) + 8);
  v4(*(v0 + 248), *(v0 + 216));

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  *(v0 + 384) = v4;
  v5 = *(v0 + 304);
  v13 = *(v0 + 821);
  v11 = *(v0 + 288);
  v12 = *(v0 + 272);
  v6 = DatabaseIdentifier.stringRepresentation()();
  *(v0 + 176) = v6;

  *(v0 + 392) = v6._object;
  *(v0 + 112) = v11;
  *(v0 + 96) = v12;
  *(v0 + 128) = v5;
  v7 = swift_task_alloc();
  *(v0 + 400) = v7;
  *v7 = v0;
  v7[1] = sub_230E35060;
  v8 = *(v0 + 208);
  v9 = *MEMORY[0x277D85DE8];

  return sub_230D05310(v0 + 96);
}

uint64_t sub_230E353E0()
{
  v30 = v0;
  v29[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v3 = *(v0 + 208);
  v4 = *(*(v0 + 224) + 8);
  v4(*(v0 + 248), *(v0 + 216));

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v5 = *(v0 + 352);
  v6 = *(v0 + 232);
  sub_230E68D70();
  v7 = v5;
  v8 = sub_230E68D60();
  v9 = sub_230E69400();
  MEMORY[0x23191E910](v5);
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 224);
  v12 = *(v0 + 232);
  v13 = *(v0 + 216);
  if (v10)
  {
    v28 = *(v0 + 232);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29[0] = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_230D7E620(1852399981, 0xE400000000000000, v29);
    *(v14 + 12) = 2112;
    v17 = v5;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v18;
    *v15 = v18;
    _os_log_impl(&dword_230D02000, v8, v9, "[ServicesIntelligenceProvider][createKVDatabase][%s] Failed: %@", v14, 0x16u);
    sub_230D2D9F8(v15, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x23191EAE0](v16, -1, -1);
    MEMORY[0x23191EAE0](v14, -1, -1);

    v19 = v28;
  }

  else
  {

    v19 = v12;
  }

  v4(v19, v13);
  **(v0 + 200) = v5;
  type metadata accessor for DatabaseCreationResult();
  swift_storeEnumTagMultiPayload();
  v21 = *(v0 + 256);
  v20 = *(v0 + 264);
  v23 = *(v0 + 240);
  v22 = *(v0 + 248);
  v24 = *(v0 + 232);

  v25 = *(v0 + 8);
  v26 = *MEMORY[0x277D85DE8];

  return v25();
}

uint64_t sub_230E356B0()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 424);
  v10 = *v1;
  *(*v1 + 432) = v0;

  v4 = *(v2 + 392);
  if (v0)
  {
    v5 = *(v2 + 208);

    v6 = sub_230E35B90;
  }

  else
  {
    v5 = *(v2 + 208);

    v6 = sub_230E35810;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E35810()
{
  v35 = v0;
  v34[1] = *MEMORY[0x277D85DE8];
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[30];
  sub_230E68D70();
  sub_230E3B394(v2, v1, type metadata accessor for CreateKVDatabaseResponse);
  v4 = sub_230E68D60();
  v5 = sub_230E693E0();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[51];
  v8 = v0[48];
  v9 = v0[32];
  v10 = v0[30];
  v12 = v0[27];
  v11 = v0[28];
  if (v6)
  {
    v33 = v0[30];
    v13 = swift_slowAlloc();
    v32 = v12;
    v14 = swift_slowAlloc();
    v34[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_230D7E620(1852399981, 0xE400000000000000, v34);
    *(v13 + 12) = 2080;
    sub_230E68860();
    sub_230E3B8F8(&qword_2815668A0, MEMORY[0x277CC9260]);
    v15 = sub_230E69890();
    v31 = v8;
    v17 = v16;
    sub_230E3B334(v9, type metadata accessor for CreateKVDatabaseResponse);
    v18 = sub_230D7E620(v15, v17, v34);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_230D02000, v4, v5, "[ServicesIntelligenceProvider][createKVDatabase][%s] Created at %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v14, -1, -1);
    MEMORY[0x23191EAE0](v13, -1, -1);

    v31(v33, v32);
  }

  else
  {
    v19 = v0[51];

    sub_230E3B334(v9, type metadata accessor for CreateKVDatabaseResponse);
    v8(v10, v12);
  }

  v20 = v0[33];
  v21 = v0[25];
  v22 = sub_230E68860();
  (*(*(v22 - 8) + 32))(v21, v20, v22);
  type metadata accessor for DatabaseCreationResult();
  swift_storeEnumTagMultiPayload();
  v24 = v0[32];
  v23 = v0[33];
  v26 = v0[30];
  v25 = v0[31];
  v27 = v0[29];

  v28 = v0[1];
  v29 = *MEMORY[0x277D85DE8];

  return v28();
}

uint64_t sub_230E35B90()
{
  v28 = v0;
  v27[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 408);
  v2 = *(v0 + 264);

  sub_230E3B334(v2, type metadata accessor for CreateKVDatabaseResponse);
  v3 = *(v0 + 432);
  v4 = *(v0 + 384);
  v5 = *(v0 + 232);
  sub_230E68D70();
  v6 = v3;
  v7 = sub_230E68D60();
  v8 = sub_230E69400();
  MEMORY[0x23191E910](v3);
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 224);
  v10 = *(v0 + 232);
  v12 = *(v0 + 216);
  if (v9)
  {
    v26 = v4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27[0] = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_230D7E620(1852399981, 0xE400000000000000, v27);
    *(v13 + 12) = 2112;
    v16 = v3;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    *v14 = v17;
    _os_log_impl(&dword_230D02000, v7, v8, "[ServicesIntelligenceProvider][createKVDatabase][%s] Failed: %@", v13, 0x16u);
    sub_230D2D9F8(v14, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x23191EAE0](v15, -1, -1);
    MEMORY[0x23191EAE0](v13, -1, -1);

    v26(v10, v12);
  }

  else
  {

    v4(v10, v12);
  }

  **(v0 + 200) = v3;
  type metadata accessor for DatabaseCreationResult();
  swift_storeEnumTagMultiPayload();
  v19 = *(v0 + 256);
  v18 = *(v0 + 264);
  v21 = *(v0 + 240);
  v20 = *(v0 + 248);
  v22 = *(v0 + 232);

  v23 = *(v0 + 8);
  v24 = *MEMORY[0x277D85DE8];

  return v23();
}

uint64_t sub_230E35E60()
{
  v26 = v0;
  v25[1] = *MEMORY[0x277D85DE8];
  sub_230E3B334(*(v0 + 264), type metadata accessor for CreateKVDatabaseResponse);
  v1 = *(v0 + 416);
  v2 = *(v0 + 384);
  v3 = *(v0 + 232);
  sub_230E68D70();
  v4 = v1;
  v5 = sub_230E68D60();
  v6 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 224);
  v8 = *(v0 + 232);
  v10 = *(v0 + 216);
  if (v7)
  {
    v24 = v2;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25[0] = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_230D7E620(1852399981, 0xE400000000000000, v25);
    *(v11 + 12) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_230D02000, v5, v6, "[ServicesIntelligenceProvider][createKVDatabase][%s] Failed: %@", v11, 0x16u);
    sub_230D2D9F8(v12, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x23191EAE0](v13, -1, -1);
    MEMORY[0x23191EAE0](v11, -1, -1);

    v24(v8, v10);
  }

  else
  {

    v2(v8, v10);
  }

  **(v0 + 200) = v1;
  type metadata accessor for DatabaseCreationResult();
  swift_storeEnumTagMultiPayload();
  v17 = *(v0 + 256);
  v16 = *(v0 + 264);
  v19 = *(v0 + 240);
  v18 = *(v0 + 248);
  v20 = *(v0 + 232);

  v21 = *(v0 + 8);
  v22 = *MEMORY[0x277D85DE8];

  return v21();
}

uint64_t sub_230E36124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v5 = sub_230E68D80();
  v3[22] = v5;
  v6 = *(v5 - 8);
  v3[23] = v6;
  v7 = *(v6 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230E36204, a2, 0);
}

uint64_t sub_230E36204()
{
  v1 = v0[26];
  sub_230E68D70();
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][getConfiguration] Started", v4, 2u);
    MEMORY[0x23191EAE0](v4, -1, -1);
  }

  v5 = v0[26];
  v6 = v0[22];
  v7 = v0[23];
  v9 = v0[20];
  v8 = v0[21];

  v10 = *(v7 + 8);
  v0[27] = v10;
  v10(v5, v6);
  sub_230D1CDE0(v8, (v0 + 2));
  sub_230D1CDE0(v8, (v0 + 7));

  v11 = swift_task_alloc();
  v0[28] = v11;
  *v11 = v0;
  v11[1] = sub_230E363C4;
  v13 = v0[20];
  v12 = v0[21];

  return (sub_230D72678)(15, v12);
}

uint64_t sub_230E363C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *(*v2 + 168);
  v7 = *v2;
  *(v4 + 232) = a1;
  *(v4 + 240) = v1;

  sub_230D1CE3C(v6);
  v8 = *(v3 + 160);
  if (v1)
  {
    v9 = sub_230E36C1C;
  }

  else
  {
    v9 = sub_230E36514;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_230E36514()
{
  v1 = *(v0 + 232);
  sub_230D1CE3C(*(v0 + 168));

  return MEMORY[0x2822009F8](sub_230E36580, v1, 0);
}

uint64_t sub_230E36580()
{
  v1 = v0[29];
  v2 = v0[21];
  v3 = sub_230D0F908(MEMORY[0x277D84F90]);
  v0[31] = v3;
  v0[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  v0[16] = sub_230D1D1C4(&qword_27DB5ABF8, &unk_27DB5D8F0, &unk_230E70E80);
  v0[12] = &unk_2845A4E40;
  v4 = swift_task_alloc();
  v0[32] = v4;
  v4[2] = v0 + 12;
  v4[3] = v1;
  v4[4] = v2;
  v4[5] = v3;
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_230E366E4;
  v6 = v0[29];
  v7 = v0[21];

  return sub_230D19580(8, v7, &unk_230E7F248, v4);
}

uint64_t sub_230E366E4(uint64_t a1)
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 256);
  v4 = *(*v1 + 248);
  v5 = *(*v1 + 232);
  v7 = *v1;
  *(*v1 + 272) = a1;

  return MEMORY[0x2822009F8](sub_230E3683C, v5, 0);
}

uint64_t sub_230E3683C()
{
  v1 = *(v0 + 272);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v2 = *(v1 + 16);
  v3 = *(v0 + 272);
  v4 = 0uLL;
  if (v2)
  {
    v5 = sub_230DA41A0(0x6769666E6F635F5FLL, 0xEF6E6F6974617275);
    if (v6)
    {
      v7 = *(*(v0 + 272) + 56) + 48 * v5;
      v8 = *v7;
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      v11 = *(v7 + 24);
      v14 = *(v7 + 32);

      v4 = v14;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v4 = 0uLL;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  *(v0 + 312) = v4;
  *(v0 + 296) = v10;
  *(v0 + 304) = v11;
  *(v0 + 280) = v8;
  *(v0 + 288) = v9;
  v12 = *(v0 + 160);

  return MEMORY[0x2822009F8](sub_230E36984, v12, 0);
}

uint64_t sub_230E36984()
{
  v37 = v0;
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v4 = *(v0 + 296);
  v3 = *(v0 + 304);
  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  v7 = *(v0 + 200);
  sub_230E68D70();
  sub_230D0F898(v6);
  v8 = sub_230E68D60();
  v9 = sub_230E693E0();
  sub_230DE9FF0(v6);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 320);
    v11 = *(v0 + 280);
    v12 = *(v0 + 232);
    v34 = *(v0 + 200);
    v35 = *(v0 + 216);
    v14 = *(v0 + 176);
    v13 = *(v0 + 184);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v36 = v16;
    *v15 = 136315138;
    if (v11)
    {
      v17 = v10;
    }

    else
    {
      v17 = 0;
    }

    *(v0 + 136) = v17;
    *(v0 + 144) = v11 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D900, &qword_230E7F250);
    v18 = sub_230E69440();
    v20 = sub_230D7E620(v18, v19, &v36);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_230D02000, v8, v9, "[ServicesIntelligenceProvider][getConfiguration] Retrieved configuration version %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x23191EAE0](v16, -1, -1);
    MEMORY[0x23191EAE0](v15, -1, -1);

    v35(v34, v14);
  }

  else
  {
    v21 = *(v0 + 232);
    v22 = *(v0 + 216);
    v23 = *(v0 + 200);
    v24 = *(v0 + 176);
    v25 = *(v0 + 184);

    v22(v23, v24);
  }

  v26 = *(v0 + 152);
  v27 = *(v0 + 296);
  v28 = *(v0 + 312);
  *v26 = *(v0 + 280);
  v26[1] = v27;
  v26[2] = v28;
  v30 = *(v0 + 200);
  v29 = *(v0 + 208);
  v31 = *(v0 + 192);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_230E36C1C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 192);
  sub_230D1CE3C(*(v0 + 168));
  sub_230E68D70();
  v3 = v1;
  v4 = sub_230E68D60();
  v5 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 240);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_230D02000, v4, v5, "[ServicesIntelligenceProvider][getConfiguration] Failed: %@", v8, 0xCu);
    sub_230D2D9F8(v9, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v9, -1, -1);
    MEMORY[0x23191EAE0](v8, -1, -1);

    MEMORY[0x23191E910](v7);
  }

  else
  {
    MEMORY[0x23191E910](*(v0 + 240));
  }

  v12 = *(v0 + 152);
  v13 = *(v0 + 184) + 8;
  (*(v0 + 216))(*(v0 + 192), *(v0 + 176));
  v12[1] = 0u;
  v12[2] = 0u;
  *v12 = 0u;
  v15 = *(v0 + 200);
  v14 = *(v0 + 208);
  v16 = *(v0 + 192);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t ServicesIntelligenceProvider.getAllKVDatabaseConfigurations()()
{
  *(v1 + 144) = v0;
  *(v1 + 184) = 18;
  v2 = swift_task_alloc();
  *(v1 + 152) = v2;
  *v2 = v1;
  v2[1] = sub_230E36EC0;

  return static RequestContext.from(_:correlationID:)(v1 + 104, (v1 + 184), 0, 0);
}

uint64_t sub_230E36EC0()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230E36FD0, v2, 0);
}

uint64_t sub_230E36FD0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 129);
  v7 = *(v0 + 136);
  v6 = *(v0 + 144);
  *(v0 + 160) = v3;
  *(v0 + 168) = v7;
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  *(v0 + 80) = v3;
  *(v0 + 88) = v4;
  *(v0 + 89) = v5;
  *(v0 + 96) = v7;

  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  *v8 = v0;
  v8[1] = sub_230E370E0;
  v9 = *(v0 + 144);

  return (sub_230D7CC14)(v0 + 16, 18, v0 + 64);
}

uint64_t sub_230E370E0()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 144);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_230E37230, v4, 0);
}

uint64_t sub_230E37230()
{
  v1 = v0[2];
  if (v1)
  {
    v3 = v0[6];
    v2 = v0[7];
    v5 = v0[4];
    v4 = v0[5];
    v6 = v0[3];

    sub_230DE9FF0(v1);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v7 = sub_230DEBA38();
  sub_230E3A6B4(v7);
  v8 = v0[1];

  return v8(v6);
}

uint64_t ServicesIntelligenceProvider.getAllSQLDatabaseConfigurations()()
{
  *(v1 + 144) = v0;
  *(v1 + 184) = 18;
  v2 = swift_task_alloc();
  *(v1 + 152) = v2;
  *v2 = v1;
  v2[1] = sub_230E373AC;

  return static RequestContext.from(_:correlationID:)(v1 + 104, (v1 + 184), 0, 0);
}

uint64_t sub_230E373AC()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230E374BC, v2, 0);
}

uint64_t sub_230E374BC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 129);
  v7 = *(v0 + 136);
  v6 = *(v0 + 144);
  *(v0 + 160) = v3;
  *(v0 + 168) = v7;
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  *(v0 + 80) = v3;
  *(v0 + 88) = v4;
  *(v0 + 89) = v5;
  *(v0 + 96) = v7;

  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  *v8 = v0;
  v8[1] = sub_230E375CC;
  v9 = *(v0 + 144);

  return (sub_230D7CC14)(v0 + 16, 18, v0 + 64);
}

uint64_t sub_230E375CC()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 144);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_230E3771C, v4, 0);
}

uint64_t sub_230E3771C()
{
  v1 = v0[2];
  if (v1)
  {
    v3 = v0[3];
    v2 = v0[4];
    v4 = v0[5];
    v5 = v0[6];
    v6 = v0[7];

    sub_230DE9FF0(v1);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v7 = v0[1];

  return v7(v2);
}

uint64_t ServicesIntelligenceProvider.getAllVectorDatabaseConfigurations()()
{
  *(v1 + 144) = v0;
  *(v1 + 184) = 18;
  v2 = swift_task_alloc();
  *(v1 + 152) = v2;
  *v2 = v1;
  v2[1] = sub_230E37880;

  return static RequestContext.from(_:correlationID:)(v1 + 104, (v1 + 184), 0, 0);
}

uint64_t sub_230E37880()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230E37990, v2, 0);
}

uint64_t sub_230E37990()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 129);
  v7 = *(v0 + 136);
  v6 = *(v0 + 144);
  *(v0 + 160) = v3;
  *(v0 + 168) = v7;
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  *(v0 + 80) = v3;
  *(v0 + 88) = v4;
  *(v0 + 89) = v5;
  *(v0 + 96) = v7;

  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  *v8 = v0;
  v8[1] = sub_230E37AA0;
  v9 = *(v0 + 144);

  return (sub_230D7CC14)(v0 + 16, 18, v0 + 64);
}

uint64_t sub_230E37AA0()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 144);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_230E37BF0, v4, 0);
}

uint64_t sub_230E37BF0()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[3];
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[6];
    v6 = v0[7];

    sub_230DE9FF0(v1);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v7 = v0[1];

  return v7(v4);
}

uint64_t sub_230E37CA0(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  *(v8 + 600) = v15;
  *(v8 + 592) = a8;
  *(v8 + 699) = a7;
  *(v8 + 698) = a6;
  *(v8 + 584) = a5;
  *(v8 + 576) = a4;
  *(v8 + 697) = a3;
  v10 = sub_230E68910();
  *(v8 + 608) = v10;
  v11 = *(v10 - 8);
  *(v8 + 616) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 624) = swift_task_alloc();
  *(v8 + 696) = a2;

  return MEMORY[0x2822009F8](sub_230E37D88, 0, 0);
}

uint64_t sub_230E37D88()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  sub_230E68900();
  sub_230E688D0();
  v5 = v4;
  v6 = v4;
  v7 = (*(v2 + 8))(v1, v3);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  v10 = sub_230E686F0();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_230E686E0();
  sub_230D0D784();
  v13 = sub_230E686D0();
  *(v0 + 632) = v13;
  *(v0 + 640) = v14;
  v15 = *(v0 + 698);
  v16 = *(v0 + 584);
  v17 = *(v0 + 576);
  v18 = *(v0 + 697);
  v19 = v13;
  v20 = v14;

  v21 = DatabaseIdentifier.stringRepresentation()();
  *(v0 + 648) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C0, &unk_230E6F630);
  v22 = swift_allocObject();
  *(v0 + 664) = v22;
  *(v22 + 16) = xmmword_230E6B3B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8B0, &qword_230E6C238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E7F0E0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = v21;
  *(inited + 64) = 3;
  *(inited + 72) = 0x6E69616D6F64;
  *(inited + 80) = 0xE600000000000000;
  v24 = *&aLanguagesecuri[8 * v18 + 16];
  v25 = *(v0 + 699);
  *(inited + 88) = *&aInternalapps[8 * v18];
  *(inited + 96) = v24;
  *(inited + 104) = 3;
  strcpy((inited + 112), "databaseType");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  v26 = qword_230E7F2F8[v25];
  v27 = qword_230E7F310[v25];
  v28 = *(v0 + 600);
  v29 = *(v0 + 592);
  v30 = *(v0 + 584);
  v31 = *(v0 + 576);
  *(inited + 128) = v26;
  *(inited + 136) = v27;
  *(inited + 144) = 3;
  *(inited + 152) = 1701667182;
  *(inited + 160) = 0xE400000000000000;
  *(inited + 168) = v31;
  *(inited + 176) = v30;
  *(inited + 184) = 3;
  strcpy((inited + 192), "schemaVersion");
  *(inited + 206) = -4864;
  *(inited + 208) = xmmword_230E7F0F0;
  *(inited + 224) = 2;
  *(inited + 232) = 0x6144616D65686373;
  *(inited + 240) = 0xEA00000000006174;
  *(inited + 248) = v19;
  *(inited + 256) = v20;
  *(inited + 264) = 0;
  *(inited + 272) = 0x737574617473;
  *(inited + 280) = 0xE600000000000000;
  *(inited + 288) = xmmword_230E7F100;
  *(inited + 304) = 3;
  strcpy((inited + 312), "storageClass");
  *(inited + 325) = 0;
  *(inited + 326) = -5120;
  *(inited + 328) = 0x6365746F72706E75;
  *(inited + 336) = 0xEB00000000646574;
  *(inited + 344) = 3;
  *(inited + 352) = 0x68746150656C6966;
  *(inited + 360) = 0xE800000000000000;
  *(inited + 368) = xmmword_230E6E720;
  *(inited + 384) = 3;
  strcpy((inited + 392), "creationTime");
  *(inited + 405) = 0;
  *(inited + 406) = -5120;
  *(inited + 408) = v5;
  *(inited + 416) = 0;
  *(inited + 424) = 2;
  *(inited + 432) = 0x616470557473616CLL;
  *(inited + 440) = 0xEF656D6954646574;
  *(inited + 448) = v5;
  *(inited + 456) = 0;
  *(inited + 464) = 2;

  sub_230D0DD0C(v19, v20);
  v32 = sub_230D0DBB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
  swift_arrayDestroy();
  *(v22 + 32) = v32;
  *(v0 + 672) = sub_230E1CA68(&unk_2845A64F0);
  swift_arrayDestroy();
  sub_230D1CDE0(v28, v0 + 488);
  v7 = sub_230E38260;
  v8 = v29;
  v9 = 0;

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_230E38260()
{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[74];
  sub_230D1CDE0(v0[75], (v0 + 66));

  v4 = swift_task_alloc();
  v0[85] = v4;
  *v4 = v0;
  v4[1] = sub_230E38388;
  v5 = v0[83];
  v6 = v0[75];
  v8 = v0[74];

  JUMPOUT(0x230D70398);
}

uint64_t sub_230E38388()
{
  v2 = *v1;
  v3 = *(*v1 + 680);
  v4 = *v1;
  *(*v1 + 688) = v0;

  v5 = *(v2 + 600);
  v6 = *(v2 + 592);
  sub_230D1CE3C(v5);
  if (v0)
  {
    v7 = sub_230E387D8;
  }

  else
  {
    v7 = sub_230E384D0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230E384D0()
{
  v1 = v0[84];
  v2 = v0[83];
  sub_230D1CE3C(v0[75]);

  return MEMORY[0x2822009F8](sub_230E3856C, 0, 0);
}

uint64_t sub_230E3856C()
{
  v25 = v0;
  v1 = *(v0 + 568);
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 656);
  v3 = sub_230E68D80();
  __swift_project_value_buffer(v3, qword_27DB80BC0);

  v4 = sub_230E68D60();
  v5 = sub_230E693E0();

  if (os_log_type_enabled(v4, v5))
  {
    v23 = v1;
    v6 = *(v0 + 699);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315650;
    v9 = 0xE600000000000000;
    v10 = 0x524F54434556;
    if (v6 != 1)
    {
      v10 = 22091;
      v9 = 0xE200000000000000;
    }

    if (v6)
    {
      v11 = v10;
    }

    else
    {
      v11 = 5001555;
    }

    if (v6)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0xE300000000000000;
    }

    v13 = *(v0 + 656);
    v14 = *(v0 + 648);
    v22 = *(v0 + 640);
    v15 = *(v0 + 632);
    v16 = sub_230D7E620(v11, v12, &v24);

    *(v7 + 4) = v16;
    *(v7 + 12) = 2080;
    v17 = sub_230D7E620(v14, v13, &v24);

    *(v7 + 14) = v17;
    *(v7 + 22) = 2048;
    *(v7 + 24) = v23;
    _os_log_impl(&dword_230D02000, v4, v5, "[SystemDatabase][storeDatabaseConfiguration] Upserted %s database config: %s, processed: %lld", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
    sub_230D0F4A8(v15, v22);
  }

  else
  {
    v18 = *(v0 + 656);
    sub_230D0F4A8(*(v0 + 632), *(v0 + 640));
  }

  v19 = *(v0 + 624);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_230E387D8()
{
  v1 = *(v0 + 656);
  sub_230D1CE3C(*(v0 + 600));

  return MEMORY[0x2822009F8](sub_230E3884C, 0, 0);
}

uint64_t sub_230E3884C()
{
  v1 = v0[84];
  v2 = v0[83];
  sub_230D0F4A8(v0[79], v0[80]);

  v3 = v0[86];
  v4 = v0[78];

  v5 = v0[1];

  return v5();
}

uint64_t sub_230E388F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  *(v8 + 640) = v16;
  *(v8 + 632) = a8;
  *(v8 + 604) = a7;
  *(v8 + 603) = a6;
  *(v8 + 624) = a5;
  *(v8 + 616) = a4;
  *(v8 + 602) = a3;
  v10 = sub_230E68910();
  *(v8 + 648) = v10;
  v11 = *(v10 - 8);
  *(v8 + 656) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 664) = swift_task_alloc();
  v13 = *(a2 + 16);
  *(v8 + 568) = *a2;
  *(v8 + 584) = v13;
  *(v8 + 600) = *(a2 + 32);

  return MEMORY[0x2822009F8](sub_230E389E8, 0, 0);
}

uint64_t sub_230E389E8()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 656);
  v3 = *(v0 + 648);
  sub_230E68900();
  sub_230E688D0();
  v5 = v4;
  v6 = v4;
  v7 = (*(v2 + 8))(v1, v3);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  v10 = sub_230E686F0();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_230E686E0();
  sub_230D45B84();
  v13 = sub_230E686D0();
  *(v0 + 672) = v13;
  *(v0 + 680) = v14;
  v15 = *(v0 + 603);
  v16 = *(v0 + 624);
  v17 = *(v0 + 616);
  v18 = *(v0 + 602);
  v19 = v13;
  v20 = v14;

  v21 = DatabaseIdentifier.stringRepresentation()();
  *(v0 + 688) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C0, &unk_230E6F630);
  v22 = swift_allocObject();
  *(v0 + 704) = v22;
  *(v22 + 16) = xmmword_230E6B3B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8B0, &qword_230E6C238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E7F0E0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = v21;
  *(inited + 64) = 3;
  *(inited + 72) = 0x6E69616D6F64;
  *(inited + 80) = 0xE600000000000000;
  v24 = *&aLanguagesecuri[8 * v18 + 16];
  v25 = *(v0 + 604);
  *(inited + 88) = *&aInternalapps[8 * v18];
  *(inited + 96) = v24;
  *(inited + 104) = 3;
  strcpy((inited + 112), "databaseType");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  v26 = qword_230E7F2F8[v25];
  v27 = qword_230E7F310[v25];
  v28 = *(v0 + 640);
  v29 = *(v0 + 632);
  v30 = *(v0 + 624);
  v31 = *(v0 + 616);
  *(inited + 128) = v26;
  *(inited + 136) = v27;
  *(inited + 144) = 3;
  *(inited + 152) = 1701667182;
  *(inited + 160) = 0xE400000000000000;
  *(inited + 168) = v31;
  *(inited + 176) = v30;
  *(inited + 184) = 3;
  strcpy((inited + 192), "schemaVersion");
  *(inited + 206) = -4864;
  *(inited + 208) = xmmword_230E7F0F0;
  *(inited + 224) = 2;
  *(inited + 232) = 0x6144616D65686373;
  *(inited + 240) = 0xEA00000000006174;
  *(inited + 248) = v19;
  *(inited + 256) = v20;
  *(inited + 264) = 0;
  *(inited + 272) = 0x737574617473;
  *(inited + 280) = 0xE600000000000000;
  *(inited + 288) = xmmword_230E7F100;
  *(inited + 304) = 3;
  strcpy((inited + 312), "storageClass");
  *(inited + 325) = 0;
  *(inited + 326) = -5120;
  *(inited + 328) = 0x6365746F72706E75;
  *(inited + 336) = 0xEB00000000646574;
  *(inited + 344) = 3;
  *(inited + 352) = 0x68746150656C6966;
  *(inited + 360) = 0xE800000000000000;
  *(inited + 368) = xmmword_230E6E720;
  *(inited + 384) = 3;
  strcpy((inited + 392), "creationTime");
  *(inited + 405) = 0;
  *(inited + 406) = -5120;
  *(inited + 408) = v5;
  *(inited + 416) = 0;
  *(inited + 424) = 2;
  *(inited + 432) = 0x616470557473616CLL;
  *(inited + 440) = 0xEF656D6954646574;
  *(inited + 448) = v5;
  *(inited + 456) = 0;
  *(inited + 464) = 2;

  sub_230D0DD0C(v19, v20);
  v32 = sub_230D0DBB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
  swift_arrayDestroy();
  *(v22 + 32) = v32;
  *(v0 + 712) = sub_230E1CA68(&unk_2845A6560);
  swift_arrayDestroy();
  sub_230D1CDE0(v28, v0 + 488);
  v7 = sub_230E38EC0;
  v8 = v29;
  v9 = 0;

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_230E38EC0()
{
  v1 = v0[89];
  v2 = v0[88];
  v3 = v0[79];
  sub_230D1CDE0(v0[80], (v0 + 66));

  v4 = swift_task_alloc();
  v0[90] = v4;
  *v4 = v0;
  v4[1] = sub_230E38FE8;
  v5 = v0[88];
  v6 = v0[80];
  v8 = v0[79];

  JUMPOUT(0x230D70398);
}

uint64_t sub_230E38FE8()
{
  v2 = *v1;
  v3 = *(*v1 + 720);
  v4 = *v1;
  *(*v1 + 728) = v0;

  v5 = *(v2 + 640);
  v6 = *(v2 + 632);
  sub_230D1CE3C(v5);
  if (v0)
  {
    v7 = sub_230E39438;
  }

  else
  {
    v7 = sub_230E39130;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230E39130()
{
  v1 = v0[89];
  v2 = v0[88];
  sub_230D1CE3C(v0[80]);

  return MEMORY[0x2822009F8](sub_230E391CC, 0, 0);
}

uint64_t sub_230E391CC()
{
  v25 = v0;
  v1 = *(v0 + 608);
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 696);
  v3 = sub_230E68D80();
  __swift_project_value_buffer(v3, qword_27DB80BC0);

  v4 = sub_230E68D60();
  v5 = sub_230E693E0();

  if (os_log_type_enabled(v4, v5))
  {
    v23 = v1;
    v6 = *(v0 + 604);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315650;
    v9 = 0xE600000000000000;
    v10 = 0x524F54434556;
    if (v6 != 1)
    {
      v10 = 22091;
      v9 = 0xE200000000000000;
    }

    if (v6)
    {
      v11 = v10;
    }

    else
    {
      v11 = 5001555;
    }

    if (v6)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0xE300000000000000;
    }

    v13 = *(v0 + 696);
    v14 = *(v0 + 688);
    v22 = *(v0 + 680);
    v15 = *(v0 + 672);
    v16 = sub_230D7E620(v11, v12, &v24);

    *(v7 + 4) = v16;
    *(v7 + 12) = 2080;
    v17 = sub_230D7E620(v14, v13, &v24);

    *(v7 + 14) = v17;
    *(v7 + 22) = 2048;
    *(v7 + 24) = v23;
    _os_log_impl(&dword_230D02000, v4, v5, "[SystemDatabase][storeDatabaseConfiguration] Upserted %s database config: %s, processed: %lld", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
    sub_230D0F4A8(v15, v22);
  }

  else
  {
    v18 = *(v0 + 696);
    sub_230D0F4A8(*(v0 + 672), *(v0 + 680));
  }

  v19 = *(v0 + 664);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_230E39438()
{
  v1 = *(v0 + 696);
  sub_230D1CE3C(*(v0 + 640));

  return MEMORY[0x2822009F8](sub_230E394AC, 0, 0);
}

uint64_t sub_230E394AC()
{
  v1 = v0[89];
  v2 = v0[88];
  sub_230D0F4A8(v0[84], v0[85]);

  v3 = v0[91];
  v4 = v0[83];

  v5 = v0[1];

  return v5();
}

uint64_t sub_230E39550(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  *(v8 + 608) = v14;
  *(v8 + 600) = a8;
  *(v8 + 706) = a7;
  *(v8 + 705) = a6;
  *(v8 + 592) = a5;
  *(v8 + 584) = a4;
  *(v8 + 704) = a3;
  *(v8 + 576) = a2;
  v9 = sub_230E68910();
  *(v8 + 616) = v9;
  v10 = *(v9 - 8);
  *(v8 + 624) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 632) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230E39634, 0, 0);
}

uint64_t sub_230E39634()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  sub_230E68900();
  sub_230E688D0();
  v5 = v4;
  v6 = v4;
  v7 = (*(v2 + 8))(v1, v3);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  v10 = *(v0 + 576);
  v11 = sub_230E686F0();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_230E686E0();
  type metadata accessor for SQLDatabaseConfiguration();
  sub_230E3B8F8(&qword_281566328, type metadata accessor for SQLDatabaseConfiguration);
  v14 = sub_230E686D0();
  *(v0 + 640) = v14;
  *(v0 + 648) = v15;
  v16 = *(v0 + 705);
  v17 = *(v0 + 592);
  v18 = *(v0 + 584);
  v19 = *(v0 + 704);
  v20 = v14;
  v21 = v15;

  v22 = DatabaseIdentifier.stringRepresentation()();
  *(v0 + 656) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C0, &unk_230E6F630);
  v23 = swift_allocObject();
  *(v0 + 672) = v23;
  *(v23 + 16) = xmmword_230E6B3B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8B0, &qword_230E6C238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E7F0E0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = v22;
  *(inited + 64) = 3;
  *(inited + 72) = 0x6E69616D6F64;
  *(inited + 80) = 0xE600000000000000;
  v25 = *&aLanguagesecuri[8 * v19 + 16];
  v26 = *(v0 + 706);
  *(inited + 88) = *&aInternalapps[8 * v19];
  *(inited + 96) = v25;
  *(inited + 104) = 3;
  strcpy((inited + 112), "databaseType");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  v27 = qword_230E7F2F8[v26];
  v28 = qword_230E7F310[v26];
  v29 = *(v0 + 608);
  v30 = *(v0 + 600);
  v31 = *(v0 + 592);
  v32 = *(v0 + 584);
  *(inited + 128) = v27;
  *(inited + 136) = v28;
  *(inited + 144) = 3;
  *(inited + 152) = 1701667182;
  *(inited + 160) = 0xE400000000000000;
  *(inited + 168) = v32;
  *(inited + 176) = v31;
  *(inited + 184) = 3;
  strcpy((inited + 192), "schemaVersion");
  *(inited + 206) = -4864;
  *(inited + 208) = xmmword_230E7F0F0;
  *(inited + 224) = 2;
  *(inited + 232) = 0x6144616D65686373;
  *(inited + 240) = 0xEA00000000006174;
  *(inited + 248) = v20;
  *(inited + 256) = v21;
  *(inited + 264) = 0;
  *(inited + 272) = 0x737574617473;
  *(inited + 280) = 0xE600000000000000;
  *(inited + 288) = xmmword_230E7F100;
  *(inited + 304) = 3;
  strcpy((inited + 312), "storageClass");
  *(inited + 325) = 0;
  *(inited + 326) = -5120;
  *(inited + 328) = 0x6365746F72706E75;
  *(inited + 336) = 0xEB00000000646574;
  *(inited + 344) = 3;
  *(inited + 352) = 0x68746150656C6966;
  *(inited + 360) = 0xE800000000000000;
  *(inited + 368) = xmmword_230E6E720;
  *(inited + 384) = 3;
  strcpy((inited + 392), "creationTime");
  *(inited + 405) = 0;
  *(inited + 406) = -5120;
  *(inited + 408) = v5;
  *(inited + 416) = 0;
  *(inited + 424) = 2;
  *(inited + 432) = 0x616470557473616CLL;
  *(inited + 440) = 0xEF656D6954646574;
  *(inited + 448) = v5;
  *(inited + 456) = 0;
  *(inited + 464) = 2;

  sub_230D0DD0C(v20, v21);
  v33 = sub_230D0DBB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
  swift_arrayDestroy();
  *(v23 + 32) = v33;
  *(v0 + 680) = sub_230E1CA68(&unk_2845A65D0);
  swift_arrayDestroy();
  sub_230D1CDE0(v29, v0 + 488);
  v7 = sub_230E39B48;
  v8 = v30;
  v9 = 0;

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_230E39B48()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[75];
  sub_230D1CDE0(v0[76], (v0 + 66));

  v4 = swift_task_alloc();
  v0[86] = v4;
  *v4 = v0;
  v4[1] = sub_230E39C70;
  v5 = v0[84];
  v6 = v0[76];
  v8 = v0[75];

  JUMPOUT(0x230D70398);
}

uint64_t sub_230E39C70()
{
  v2 = *v1;
  v3 = *(*v1 + 688);
  v4 = *v1;
  *(*v1 + 696) = v0;

  v5 = *(v2 + 608);
  v6 = *(v2 + 600);
  sub_230D1CE3C(v5);
  if (v0)
  {
    v7 = sub_230E3A0C0;
  }

  else
  {
    v7 = sub_230E39DB8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230E39DB8()
{
  v1 = v0[85];
  v2 = v0[84];
  sub_230D1CE3C(v0[76]);

  return MEMORY[0x2822009F8](sub_230E39E54, 0, 0);
}

uint64_t sub_230E39E54()
{
  v25 = v0;
  v1 = *(v0 + 568);
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 664);
  v3 = sub_230E68D80();
  __swift_project_value_buffer(v3, qword_27DB80BC0);

  v4 = sub_230E68D60();
  v5 = sub_230E693E0();

  if (os_log_type_enabled(v4, v5))
  {
    v23 = v1;
    v6 = *(v0 + 706);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315650;
    v9 = 0xE600000000000000;
    v10 = 0x524F54434556;
    if (v6 != 1)
    {
      v10 = 22091;
      v9 = 0xE200000000000000;
    }

    if (v6)
    {
      v11 = v10;
    }

    else
    {
      v11 = 5001555;
    }

    if (v6)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0xE300000000000000;
    }

    v13 = *(v0 + 664);
    v14 = *(v0 + 656);
    v22 = *(v0 + 648);
    v15 = *(v0 + 640);
    v16 = sub_230D7E620(v11, v12, &v24);

    *(v7 + 4) = v16;
    *(v7 + 12) = 2080;
    v17 = sub_230D7E620(v14, v13, &v24);

    *(v7 + 14) = v17;
    *(v7 + 22) = 2048;
    *(v7 + 24) = v23;
    _os_log_impl(&dword_230D02000, v4, v5, "[SystemDatabase][storeDatabaseConfiguration] Upserted %s database config: %s, processed: %lld", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
    sub_230D0F4A8(v15, v22);
  }

  else
  {
    v18 = *(v0 + 664);
    sub_230D0F4A8(*(v0 + 640), *(v0 + 648));
  }

  v19 = *(v0 + 632);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_230E3A0C0()
{
  v1 = *(v0 + 664);
  sub_230D1CE3C(*(v0 + 608));

  return MEMORY[0x2822009F8](sub_230E3A134, 0, 0);
}

uint64_t sub_230E3A134()
{
  v1 = v0[85];
  v2 = v0[84];
  sub_230D0F4A8(v0[80], v0[81]);

  v3 = v0[87];
  v4 = v0[79];

  v5 = v0[1];

  return v5();
}

uint64_t sub_230E3A1D8(uint64_t result)
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

  result = sub_230E49E88(result, v11, 1, v3);
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