uint64_t sub_230D7FC68()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D7FDA4, v2, 0);
}

uint64_t sub_230D7FDA4()
{
  v5 = *MEMORY[0x277D85DE8];
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = v0[11];

  v2 = v0[1];
  v3 = *MEMORY[0x277D85DE8];

  return v2(v1);
}

uint64_t sub_230D7FE5C()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D7FF98, v2, 0);
}

uint64_t sub_230D7FF98()
{
  v5 = *MEMORY[0x277D85DE8];
  sub_230E4B7F4(*(v0 + 580), *(v0 + 184), *(v0 + 576) != 0, *(v0 + 96), *(v0 + 168));
  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);
  v3 = *MEMORY[0x277D85DE8];

  return v2(v1);
}

uint64_t sub_230D80070(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *MEMORY[0x277D85DE8];
  *(v6 + 112) = a5;
  *(v6 + 120) = a6;
  *(v6 + 96) = a3;
  *(v6 + 104) = a4;
  *(v6 + 88) = a2;
  *(v6 + 565) = a1;
  v8 = sub_230E68D80();
  *(v6 + 128) = v8;
  v9 = *(v8 - 8);
  *(v6 + 136) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 144) = swift_task_alloc();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D8016C, a3, 0);
}

uint64_t sub_230D8016C()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 144);
  v2 = *(v0 + 88);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 16);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 88);
    v6 = *(v0 + 565);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33[0] = v8;
    *v7 = 136315650;
    LOBYTE(v32) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v33);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v33);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v32 = 0x6C616E7265746E69;
    *(&v32 + 1) = 0xE90000000000002ELL;
    v31 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v33);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 88);
  v16 = *(v0 + 565);
  *(v0 + 56) = *(v15 + 24);
  v32 = *(v15 + 24);
  v31 = v16;
  LOBYTE(v33[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v31, v33);

  if (v17)
  {
    sub_230E68950();
    *(v0 + 152) = CFAbsoluteTimeGetCurrent();
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0;
    *(v0 + 556) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 184), (v0 + 556));
    *(v0 + 560) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 232);
      v21 = *(v0 + 304);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 168) = v19;
    v24 = swift_task_alloc();
    *(v0 + 176) = v24;
    *v24 = v0;
    v25 = sub_230D8073C;
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 160) = v24;
    *v24 = v0;
    v25 = sub_230D80548;
  }

  v24[1] = v25;
  v26 = *(v0 + 112);
  v27 = *(v0 + 120);
  v28 = *(v0 + 104);
  v29 = *MEMORY[0x277D85DE8];

  return sub_230E267B4(v0 + 564, v28, v26, v27);
}

uint64_t sub_230D80548()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 96);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D80684, v2, 0);
}

uint64_t sub_230D80684()
{
  v5 = *MEMORY[0x277D85DE8];
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  v1 = *(v0 + 564);

  v2 = *(v0 + 8);
  v3 = *MEMORY[0x277D85DE8];

  return v2(v1);
}

uint64_t sub_230D8073C()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 96);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D80878, v2, 0);
}

uint64_t sub_230D80878()
{
  v5 = *MEMORY[0x277D85DE8];
  sub_230E4C550(*(v0 + 565), *(v0 + 168), *(v0 + 560) != 0, *(v0 + 88), *(v0 + 152));
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  v1 = *(v0 + 564);

  v2 = *(v0 + 8);
  v3 = *MEMORY[0x277D85DE8];

  return v2(v1);
}

uint64_t sub_230D80950(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *MEMORY[0x277D85DE8];
  *(v6 + 120) = a5;
  *(v6 + 128) = a6;
  *(v6 + 104) = a3;
  *(v6 + 112) = a4;
  *(v6 + 96) = a2;
  *(v6 + 589) = a1;
  v8 = sub_230E68D80();
  *(v6 + 136) = v8;
  v9 = *(v8 - 8);
  *(v6 + 144) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D80A4C, a3, 0);
}

uint64_t sub_230D80A4C()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 152);
  v2 = *(v0 + 96);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 16);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 589);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33[0] = v8;
    *v7 = 136315650;
    LOBYTE(v32) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v33);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v33);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v32 = 0x6C616E7265746E69;
    *(&v32 + 1) = 0xE90000000000002ELL;
    v31 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v33);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 96);
  v16 = *(v0 + 589);
  *(v0 + 56) = *(v15 + 24);
  v32 = *(v15 + 24);
  v31 = v16;
  LOBYTE(v33[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v31, v33);

  if (v17)
  {
    sub_230E68950();
    *(v0 + 160) = CFAbsoluteTimeGetCurrent();
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0;
    *(v0 + 580) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 208), (v0 + 580));
    *(v0 + 584) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 256);
      v21 = *(v0 + 328);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 184) = v19;
    *(v0 + 88) = 0;
    v24 = swift_task_alloc();
    *(v0 + 192) = v24;
    *v24 = v0;
    v25 = sub_230D80F80;
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 168) = v24;
    *v24 = v0;
    v25 = sub_230D80E28;
  }

  v24[1] = v25;
  v26 = *(v0 + 120);
  v27 = *(v0 + 128);
  v28 = *(v0 + 112);
  v29 = *MEMORY[0x277D85DE8];

  return sub_230E20734(v0 + 588, v28, v26, v27);
}

uint64_t sub_230D80E28()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = sub_230D81400;
  }

  else
  {
    v6 = sub_230D81330;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D80F80()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = sub_230D811DC;
  }

  else
  {
    v6 = sub_230D810D8;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D810D8()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 112);
  sub_230D3A954(*(v0 + 589), *(v0 + 184), *(v0 + 584) != 0, *(v0 + 96), (v0 + 88), *(v0 + 160));
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 152);
  v6 = *(v0 + 588);
  sub_230D814C8(*(v0 + 120));

  v7 = *(v0 + 8);
  v8 = *MEMORY[0x277D85DE8];

  return v7(v6);
}

uint64_t sub_230D811DC()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = *(v0 + 136);
  v17 = *(v0 + 120);
  v15 = *(v0 + 152);
  v16 = *(v0 + 112);
  v6 = *(v0 + 96);
  v7 = *(v0 + 584) != 0;
  *(v0 + 88) = v1;
  v8 = *(v0 + 589);
  swift_willThrow();
  v9 = v1;
  sub_230D3A954(v8, v2, v7, v6, (v0 + 88), v3);
  MEMORY[0x23191E910](v1);
  (*(v4 + 8))(v15, v5);

  sub_230D814C8(v17);
  v10 = *(v0 + 200);
  v11 = *(v0 + 152);

  v12 = *(v0 + 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12(0);
}

uint64_t sub_230D81330()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 112);
  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

  v2 = *(v0 + 152);
  v3 = *(v0 + 588);
  sub_230D814C8(*(v0 + 120));

  v4 = *(v0 + 8);
  v5 = *MEMORY[0x277D85DE8];

  return v4(v3);
}

uint64_t sub_230D81400()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[14];
  v2 = v0[15];
  (*(v0[18] + 8))(v0[19], v0[17]);

  sub_230D814C8(v2);
  v3 = v0[22];
  v4 = v0[19];

  v5 = v0[1];
  v6 = *MEMORY[0x277D85DE8];

  return v5(0);
}

uint64_t sub_230D81570(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x277D85DE8];
  *(v5 + 112) = a4;
  *(v5 + 120) = a5;
  *(v5 + 96) = a2;
  *(v5 + 104) = a3;
  *(v5 + 564) = a1;
  v7 = sub_230E68D80();
  *(v5 + 128) = v7;
  v8 = *(v7 - 8);
  *(v5 + 136) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D81668, a3, 0);
}

uint64_t sub_230D81668()
{
  v33 = v0;
  v32[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 144);
  v2 = *(v0 + 96);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 16);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 564);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32[0] = v8;
    *v7 = 136315650;
    LOBYTE(v31) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v32);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v32);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v31 = 0x6C616E7265746E69;
    *(&v31 + 1) = 0xE90000000000002ELL;
    v30 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v32);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 96);
  v16 = *(v0 + 564);
  *(v0 + 56) = *(v15 + 24);
  v31 = *(v15 + 24);
  v30 = v16;
  LOBYTE(v32[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v30, v32);

  if (v17)
  {
    sub_230E68950();
    *(v0 + 152) = CFAbsoluteTimeGetCurrent();
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0;
    *(v0 + 556) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 184), (v0 + 556));
    *(v0 + 560) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 232);
      v21 = *(v0 + 304);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 168) = v19;
    v24 = swift_task_alloc();
    *(v0 + 176) = v24;
    *v24 = v0;
    v25 = sub_230D81B7C;
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 160) = v24;
    *v24 = v0;
    v25 = sub_230D81A40;
  }

  v24[1] = v25;
  v26 = *(v0 + 112);
  v27 = *(v0 + 120);
  v28 = *MEMORY[0x277D85DE8];

  return sub_230D1B584(v0 + 88, v26, v27);
}

uint64_t sub_230D81A40()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D194C8, v2, 0);
}

uint64_t sub_230D81B7C()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D81CB8, v2, 0);
}

uint64_t sub_230D81CB8()
{
  v5 = *MEMORY[0x277D85DE8];
  sub_230E4B7F4(*(v0 + 564), *(v0 + 168), *(v0 + 560) != 0, *(v0 + 96), *(v0 + 152));
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);
  v3 = *MEMORY[0x277D85DE8];

  return v2(v1);
}

uint64_t sub_230D81D90(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x277D85DE8];
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  *(v5 + 88) = a2;
  *(v5 + 96) = a3;
  *(v5 + 557) = a1;
  v7 = sub_230E68D80();
  *(v5 + 120) = v7;
  v8 = *(v7 - 8);
  *(v5 + 128) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D81E88, a3, 0);
}

uint64_t sub_230D81E88()
{
  v33 = v0;
  v32[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 16);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 88);
    v6 = *(v0 + 557);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32[0] = v8;
    *v7 = 136315650;
    LOBYTE(v31) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v32);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v32);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v31 = 0x6C616E7265746E69;
    *(&v31 + 1) = 0xE90000000000002ELL;
    v30 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v32);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 88);
  v16 = *(v0 + 557);
  *(v0 + 56) = *(v15 + 24);
  v31 = *(v15 + 24);
  v30 = v16;
  LOBYTE(v32[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v30, v32);

  if (v17)
  {
    sub_230E68950();
    *(v0 + 144) = CFAbsoluteTimeGetCurrent();
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0;
    *(v0 + 548) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 176), (v0 + 548));
    *(v0 + 552) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 224);
      v21 = *(v0 + 296);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 160) = v19;
    v24 = swift_task_alloc();
    *(v0 + 168) = v24;
    *v24 = v0;
    v25 = sub_230D82450;
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 152) = v24;
    *v24 = v0;
    v25 = sub_230D8225C;
  }

  v24[1] = v25;
  v26 = *(v0 + 104);
  v27 = *(v0 + 112);
  v28 = *MEMORY[0x277D85DE8];

  return sub_230DBFC6C(v0 + 556, v26, v27);
}

uint64_t sub_230D8225C()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 96);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D82398, v2, 0);
}

uint64_t sub_230D82398()
{
  v5 = *MEMORY[0x277D85DE8];
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  v1 = *(v0 + 556);

  v2 = *(v0 + 8);
  v3 = *MEMORY[0x277D85DE8];

  return v2(v1);
}

uint64_t sub_230D82450()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 96);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D8258C, v2, 0);
}

uint64_t sub_230D8258C()
{
  v5 = *MEMORY[0x277D85DE8];
  sub_230E4C550(*(v0 + 557), *(v0 + 160), *(v0 + 552) != 0, *(v0 + 88), *(v0 + 144));
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  v1 = *(v0 + 556);

  v2 = *(v0 + 8);
  v3 = *MEMORY[0x277D85DE8];

  return v2(v1);
}

uint64_t sub_230D82664(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_230D826C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_230D1BF00;

  return sub_230DA3554(a1, v4, v5, v6);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_230D827AC()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_230D777F0();
}

uint64_t sub_230D82820()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_230D7B00C();
}

uint64_t sub_230D82894()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_230D7A574();
}

uint64_t sub_230D82908()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_230D7D228();
}

uint64_t sub_230D8297C()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_230D778F4();
}

BOOL sub_230D829F0(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  v4 = a1;
  do
  {
    v25 = v2;
    v6 = v2 - 1;
    if (!v2)
    {
      break;
    }

    v7 = *v3;
    if (v7 > 4)
    {
      if (*v3 <= 6u)
      {
        if (v7 == 5)
        {
          v13 = 0xE800000000000000;
          v12 = 0x7374736163646F70;
        }

        else
        {
          v13 = 0xE500000000000000;
          v12 = 0x6F65646976;
        }
      }

      else if (v7 == 7)
      {
        v13 = 0xE600000000000000;
        v12 = 0x6E6F6D6D6F63;
      }

      else
      {
        v13 = 0xE800000000000000;
        if (v7 == 8)
        {
          v12 = 0x65676175676E616CLL;
        }

        else
        {
          v12 = 0x7974697275636573;
        }
      }
    }

    else
    {
      if (v7 == 3)
      {
        v8 = 0x7373656E746966;
      }

      else
      {
        v8 = 0x636973756DLL;
      }

      if (v7 == 3)
      {
        v9 = 0xE700000000000000;
      }

      else
      {
        v9 = 0xE500000000000000;
      }

      if (v7 == 2)
      {
        v8 = 0x736B6F6F62;
        v9 = 0xE500000000000000;
      }

      if (*v3)
      {
        v10 = 1936748641;
      }

      else
      {
        v10 = 0x6C616E7265746E69;
      }

      if (*v3)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xE800000000000000;
      }

      if (*v3 <= 1u)
      {
        v12 = v10;
      }

      else
      {
        v12 = v8;
      }

      if (*v3 <= 1u)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }
    }

    v14 = 0x7974697275636573;
    if (v4 == 8)
    {
      v14 = 0x65676175676E616CLL;
    }

    v15 = 0xE800000000000000;
    if (v4 == 7)
    {
      v14 = 0x6E6F6D6D6F63;
      v15 = 0xE600000000000000;
    }

    v16 = 0x7374736163646F70;
    if (v4 == 5)
    {
      v17 = 0xE800000000000000;
    }

    else
    {
      v16 = 0x6F65646976;
      v17 = 0xE500000000000000;
    }

    if (v4 <= 6)
    {
      v14 = v16;
      v15 = v17;
    }

    if (v4 == 3)
    {
      v18 = 0x7373656E746966;
    }

    else
    {
      v18 = 0x636973756DLL;
    }

    if (v4 == 3)
    {
      v19 = 0xE700000000000000;
    }

    else
    {
      v19 = 0xE500000000000000;
    }

    if (v4 == 2)
    {
      v18 = 0x736B6F6F62;
      v19 = 0xE500000000000000;
    }

    if (v4)
    {
      v20 = 1936748641;
    }

    else
    {
      v20 = 0x6C616E7265746E69;
    }

    if (v4)
    {
      v21 = 0xE400000000000000;
    }

    else
    {
      v21 = 0xE800000000000000;
    }

    if (v4 <= 1)
    {
      v18 = v20;
      v19 = v21;
    }

    if (v4 <= 4)
    {
      v22 = v18;
    }

    else
    {
      v22 = v14;
    }

    if (v4 <= 4)
    {
      v23 = v19;
    }

    else
    {
      v23 = v15;
    }

    if (v12 == v22 && v13 == v23)
    {

      return v25 != 0;
    }

    v5 = sub_230E698C0();

    v2 = v6;
    ++v3;
  }

  while ((v5 & 1) == 0);
  return v25 != 0;
}

uint64_t ServicesIntelligenceProvider.logOperationMetrics(_:amsBag:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v4 + 80) = a3;
  *(v4 + 88) = v3;
  *(v4 + 72) = a1;
  v6 = sub_230E68910();
  *(v4 + 96) = v6;
  v7 = *(v6 - 8);
  *(v4 + 104) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  v9 = sub_230E68D80();
  *(v4 + 120) = v9;
  v10 = *(v9 - 8);
  *(v4 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v13 = *a2;
  *(v4 + 136) = v12;
  *(v4 + 144) = v13;
  *(v4 + 152) = *(a2 + 1);
  *(v4 + 168) = a2[3];
  *(v4 + 176) = *(a2 + 2);

  return MEMORY[0x2822009F8](sub_230D82DD8, v3, 0);
}

uint64_t sub_230D82DD8()
{
  v1 = v0[17];
  sub_230E68D70();
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][logOperationMetrics] Starting operation metrics request", v4, 2u);
    MEMORY[0x23191EAE0](v4, -1, -1);
  }

  v25 = v0[22];
  v26 = v0[23];
  v5 = v0[21];
  v6 = v0[19];
  v23 = v0[18];
  v24 = v0[20];
  v7 = v0[16];
  v8 = v0[17];
  v9 = v0[14];
  v10 = v0[15];
  v11 = v0[12];
  v12 = v0[13];

  (*(v7 + 8))(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BCE0, &qword_230E73478);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E6B3B0;
  *(inited + 32) = 0x6F6974617265706FLL;
  *(inited + 40) = 0xEA0000000000736ELL;
  *(inited + 48) = v5;

  v14 = sub_230D0E3A4(inited);
  swift_setDeallocating();
  sub_230D2D9F8(inited + 32, &qword_27DB5BCE8, &qword_230E73480);

  sub_230E68900();
  sub_230E688D0();
  v16 = v15;
  (*(v12 + 8))(v9, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BCF0, &qword_230E73488);
  v17 = swift_allocObject();
  v0[24] = v17;
  *(v17 + 16) = xmmword_230E6B3B0;
  *(v17 + 32) = v14;
  *(v17 + 40) = v23;
  *(v17 + 48) = v6;
  *(v17 + 56) = v24;
  *(v17 + 64) = v16 * 1000.0;
  *(v17 + 72) = v25;
  *(v17 + 80) = v26;

  v18 = swift_task_alloc();
  v0[25] = v18;
  *v18 = v0;
  v18[1] = sub_230D830B8;
  v19 = v0[10];
  v20 = v0[11];
  v21 = v0[9];

  return sub_230D8328C(v21, 0, v17, 0, 0, v19);
}

uint64_t sub_230D830B8()
{
  v2 = *(*v1 + 200);
  v3 = *v1;
  v3[26] = v0;

  if (v0)
  {
    v4 = v3[11];

    return MEMORY[0x2822009F8](sub_230D83210, v4, 0);
  }

  else
  {
    v5 = v3[24];
    v6 = v3[17];
    v7 = v3[14];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_230D83210()
{
  v1 = v0[24];
  v2 = v0[17];
  v3 = v0[14];

  v4 = v0[1];
  v5 = v0[26];

  return v4();
}

uint64_t sub_230D8328C(uint64_t a1, char a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  v16 = *MEMORY[0x277D85DE8];
  *(v7 + 1200) = v6;
  *(v7 + 1192) = a6;
  *(v7 + 1864) = a5;
  *(v7 + 1863) = a4;
  *(v7 + 1184) = a3;
  *(v7 + 1862) = a2;
  *(v7 + 1176) = a1;
  v8 = sub_230E69A00();
  *(v7 + 1208) = v8;
  v9 = *(v8 - 8);
  *(v7 + 1216) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 1224) = swift_task_alloc();
  v11 = sub_230E68D80();
  *(v7 + 1232) = v11;
  v12 = *(v11 - 8);
  *(v7 + 1240) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 1248) = swift_task_alloc();
  *(v7 + 1256) = swift_task_alloc();
  *(v7 + 1264) = swift_task_alloc();
  *(v7 + 1272) = swift_task_alloc();
  *(v7 + 1280) = swift_task_alloc();
  *(v7 + 1288) = swift_task_alloc();
  *(v7 + 1296) = swift_task_alloc();
  *(v7 + 1304) = swift_task_alloc();
  *(v7 + 1312) = swift_task_alloc();
  v14 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D83454, v6, 0);
}

uint64_t sub_230D83454()
{
  v26 = v0;
  v25[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1184);
  sub_230E68D70();
  swift_bridgeObjectRetain_n();
  v3 = sub_230E68D60();
  v4 = sub_230E693F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1862);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25[0] = v7;
    *v6 = 136315394;
    v8 = 0x8000000230E802F0;
    v9 = 0xD00000000000001FLL;
    if (v5 != 1)
    {
      v9 = 0xD000000000000012;
      v8 = 0x8000000230E80310;
    }

    if (v5)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0x6F5F706D615F7078;
    }

    if (v5)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0xEE00676F6C5F7064;
    }

    v24 = *(v0 + 1312);
    v12 = *(v0 + 1240);
    v13 = *(v0 + 1232);
    v14 = *(v0 + 1184);
    v15 = sub_230D7E620(v10, v11, v25);

    *(v6 + 4) = v15;
    *(v6 + 12) = 2048;
    v16 = *(v14 + 16);

    *(v6 + 14) = v16;

    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][logMetrics] Starting with topic: %s and %ld events", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);

    (*(v12 + 8))(v24, v13);
  }

  else
  {
    v17 = *(v0 + 1312);
    v18 = *(v0 + 1240);
    v19 = *(v0 + 1232);
    v20 = *(v0 + 1184);
    swift_bridgeObjectRelease_n();

    (*(v18 + 8))(v17, v19);
  }

  *(v0 + 1860) = 39;
  v21 = swift_task_alloc();
  *(v0 + 1320) = v21;
  *v21 = v0;
  v21[1] = sub_230D83738;
  v22 = *MEMORY[0x277D85DE8];

  return static RequestContext.from(_:correlationID:)(v0 + 520, (v0 + 1860), 0, 0);
}

uint64_t sub_230D83738()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 1320);
  v2 = *(*v0 + 1200);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D83874, v2, 0);
}

uint64_t sub_230D83874()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1200);
  v2 = *(v0 + 520);
  v3 = *(v0 + 528);
  v4 = *(v0 + 536);
  *(v0 + 1328) = v4;
  v5 = *(v0 + 544);
  v6 = *(v0 + 545);
  v7 = *(v0 + 552);
  *(v0 + 1336) = v7;
  *(v0 + 400) = v2;
  *(v0 + 408) = v3;
  *(v0 + 416) = v4;
  *(v0 + 424) = v5;
  *(v0 + 425) = v6;
  *(v0 + 432) = v7;

  v8 = swift_task_alloc();
  *(v0 + 1344) = v8;
  *v8 = v0;
  v8[1] = sub_230D83990;
  v9 = *(v0 + 1200);
  v10 = *MEMORY[0x277D85DE8];

  return sub_230D6F7D0(39, v0 + 400, v9, v9);
}

uint64_t sub_230D83990(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(*v2 + 1344);
  v4 = *v2;
  v4[169] = a1;

  if (v1)
  {
    v5 = v4[167];
    v6 = v4[166];

    v7 = v4[164];
    v8 = v4[163];
    v9 = v4[162];
    v10 = v4[161];
    v11 = v4[160];
    v12 = v4[159];
    v13 = v4[158];
    v14 = v4[157];
    v15 = v4[156];
    v16 = v4[153];

    v17 = v4[1];
    v18 = *MEMORY[0x277D85DE8];

    return v17();
  }

  else
  {
    v20 = v4[167];
    v21 = v4[166];
    v22 = v4[150];

    v23 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230D83BE0, v22, 0);
  }
}

uint64_t sub_230D83BE0()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1184);
  *(v0 + 1168) = MEMORY[0x277D84FA0];
  *(v0 + 1360) = *(v1 + 16);
  *(v0 + 1861) = 40;
  v2 = swift_task_alloc();
  *(v0 + 1368) = v2;
  *v2 = v0;
  v2[1] = sub_230D83CD0;
  v3 = *MEMORY[0x277D85DE8];

  return static RequestContext.from(_:correlationID:)(v0 + 440, (v0 + 1861), 0, 0);
}

uint64_t sub_230D83CD0()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 1368);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D83DF8, 0, 0);
}

uint64_t sub_230D83DF8()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 440);
  *(v0 + 1865) = v1;
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  *(v0 + 1376) = v2;
  *(v0 + 1384) = v3;
  v4 = *(v0 + 464);
  *(v0 + 1866) = v4;
  v5 = *(v0 + 465);
  *(v0 + 1867) = v5;
  v6 = *(v0 + 472);
  *(v0 + 1392) = v6;
  *(v0 + 480) = v1;
  *(v0 + 488) = v2;
  *(v0 + 496) = v3;
  *(v0 + 504) = v4;
  *(v0 + 505) = v5;
  *(v0 + 512) = v6;
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 1352);
  v8 = qword_27DB5A438;
  *(v0 + 1400) = qword_27DB5A438;

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D83F2C, v8, 0);
}

uint64_t sub_230D83F2C()
{
  v33 = v0;
  v32[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1392);
  v2 = *(v0 + 1384);
  v3 = *(v0 + 1304);
  sub_230E68D70();

  v4 = sub_230E68D60();
  v5 = sub_230E693E0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1384);
    v7 = *(v0 + 1376);
    v8 = *(v0 + 1865);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32[0] = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_230D7E620(0xD00000000000001CLL, 0x8000000230E808D0, v32);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_230D7E620(v7, v6, v32);
    *(v9 + 22) = 2080;
    v30 = 0x6C616E7265746E69;
    v31 = 0xE90000000000002ELL;
    v29 = v8;
    v11 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v11);

    v12 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v32);

    *(v9 + 24) = v12;
    _os_log_impl(&dword_230D02000, v4, v5, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v10, -1, -1);
    MEMORY[0x23191EAE0](v9, -1, -1);
  }

  v13 = *(v0 + 1392);
  v14 = *(v0 + 1867);
  v15 = *(v0 + 1865);
  LOBYTE(v30) = *(v0 + 1866);
  BYTE1(v30) = v14;
  v31 = v13;
  v29 = 40;
  LOBYTE(v32[0]) = v15;

  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v29, v32);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 1408) = CFAbsoluteTimeGetCurrent();
    *(v0 + 1480) = 0u;
    *(v0 + 1496) = 0u;
    *(v0 + 1512) = 0u;
    *(v0 + 1528) = 0u;
    *(v0 + 1544) = 0u;
    *(v0 + 1560) = 0u;
    *(v0 + 1576) = 0u;
    *(v0 + 1592) = 0u;
    *(v0 + 1608) = 0u;
    *(v0 + 1624) = 0u;
    *(v0 + 1640) = 0u;
    *(v0 + 1656) = 0u;
    *(v0 + 1672) = 0u;
    *(v0 + 1688) = 0u;
    *(v0 + 1704) = 0u;
    *(v0 + 1720) = 0u;
    *(v0 + 1736) = 0u;
    *(v0 + 1752) = 0u;
    *(v0 + 1768) = 0u;
    *(v0 + 1784) = 0u;
    *(v0 + 1800) = 0u;
    *(v0 + 1816) = 0u;
    *(v0 + 1832) = 0u;
    *(v0 + 1848) = 0;
    *(v0 + 1852) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 1480), (v0 + 1852));
    *(v0 + 1856) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 1528);
      v20 = *(v0 + 1600);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 1432) = v18;
    *(v0 + 1160) = 0;
    v23 = swift_task_alloc();
    *(v0 + 1440) = v23;
    *v23 = v0;
    v24 = sub_230D84470;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 1416) = v23;
    *v23 = v0;
    v24 = sub_230D84318;
  }

  v23[1] = v24;
  v25 = *(v0 + 1352);
  v26 = *(v0 + 1862);
  v27 = *MEMORY[0x277D85DE8];

  return sub_230E41A9C(v0 + 256, v26, v25, v0 + 480);
}

uint64_t sub_230D84318()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 1416);
  v4 = *v1;
  *(*v1 + 1424) = v0;

  v5 = *(v2 + 1400);
  if (v0)
  {
    v6 = sub_230D86570;
  }

  else
  {
    v6 = sub_230D86480;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D84470()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 1440);
  v4 = *v1;
  *(*v1 + 1448) = v0;

  v5 = *(v2 + 1400);
  if (v0)
  {
    v6 = sub_230D846EC;
  }

  else
  {
    v6 = sub_230D845C8;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D845C8()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1392);
  v2 = *(v0 + 1384);
  v3 = *(v0 + 1352);
  v4 = *(v0 + 1304);
  v5 = *(v0 + 1240);
  v6 = *(v0 + 1232);
  sub_230D340D4(40, *(v0 + 1432), *(v0 + 1856) != 0, v0 + 480, (v0 + 1160), *(v0 + 1408));
  v7 = *(v5 + 8);
  v7(v4, v6);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v8 = *(v0 + 1448);
  *(v0 + 1464) = v7;
  *(v0 + 1456) = v8;
  v9 = *(v0 + 1200);
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D8484C, v9, 0);
}

uint64_t sub_230D846EC()
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1448);
  v2 = *(v0 + 1432);
  v3 = *(v0 + 1408);
  v14 = *(v0 + 1392);
  v4 = *(v0 + 1384);
  v5 = *(v0 + 1352);
  v6 = *(v0 + 1304);
  v7 = *(v0 + 1240);
  v8 = *(v0 + 1232);
  v9 = *(v0 + 1856) != 0;
  *(v0 + 1160) = v1;
  swift_willThrow();
  v10 = v1;
  sub_230D340D4(40, v2, v9, v0 + 480, (v0 + 1160), v3);
  MEMORY[0x23191E910](v1);
  (*(v7 + 8))(v6, v8);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  *(v0 + 1472) = *(v0 + 1448);
  v11 = *(v0 + 1200);
  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D90274, v11, 0);
}

uint64_t sub_230D8484C()
{
  v284 = v0;
  v283 = *MEMORY[0x277D85DE8];
  if (!*(v0 + 264))
  {
    v9 = *(v0 + 1352);
    v10 = *(v0 + 1862);
    sub_230D8FDD0();
    swift_allocError();
    *v11 = v10;
    swift_willThrow();
LABEL_9:

    v15 = *(v0 + 1312);
    v16 = *(v0 + 1304);
    v17 = *(v0 + 1296);
    v18 = *(v0 + 1288);
    v19 = *(v0 + 1280);
    v20 = *(v0 + 1272);
    v21 = *(v0 + 1264);
    v22 = *(v0 + 1256);
    v23 = *(v0 + 1248);
    v24 = *(v0 + 1224);

    v25 = *(v0 + 8);
    v26 = *MEMORY[0x277D85DE8];
LABEL_10:

    return v25();
  }

  v262 = *(v0 + 264);
  v1 = *(v0 + 256);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  v6 = *(v0 + 1456);
  sub_230DCB5D4(&v277);
  if (v6)
  {
    MEMORY[0x23191E910](v6);
    v7 = v1;
    v8 = v262;
LABEL_8:
    sub_230D8FE24(v7, v8);
    v12 = *(v0 + 1352);
    v13 = *(v0 + 1862) | 0x40;
    sub_230D8FDD0();
    swift_allocError();
    *v14 = v13;
    swift_willThrow();
    goto LABEL_9;
  }

  if (!sub_230D829F0(v277, v262))
  {
    v7 = v1;
    v8 = v262;
    goto LABEL_8;
  }

  sub_230DCB5D4(&v277);
  v244 = v277;
  v267 = v1;
  if (*(v0 + 1192))
  {
    v28 = *(v0 + 1192);
  }

  else
  {
    v29 = sub_230E69030();
    v30 = sub_230E69030();
    v28 = [objc_opt_self() bagForProfile:v29 profileVersion:v30];
  }

  swift_unknownObjectRetain();
  v239 = v4;
  v240 = sub_230D8FE88(v28);
  v31 = *(v0 + 1360);
  swift_unknownObjectRelease();
  v263 = v5;
  if (!v31)
  {
    v241 = 0;
    v32 = *(v0 + 1360);
LABEL_172:
    v229 = *(v0 + 1352);
    v230 = *(v0 + 1312);
    v231 = *(v0 + 1304);
    v232 = *(v0 + 1296);
    v233 = *(v0 + 1288);
    v234 = *(v0 + 1280);
    v266 = *(v0 + 1272);
    v269 = *(v0 + 1264);
    v273 = *(v0 + 1256);
    v274 = *(v0 + 1248);
    v276 = *(v0 + 1224);
    v235 = *(v0 + 1176);

    sub_230D8FE24(v267, v262);

    v236 = *(v0 + 1168);
    *v235 = v32;
    v235[1] = v241;
    v235[2] = v236;

    v25 = *(v0 + 8);
    v237 = *MEMORY[0x277D85DE8];
    goto LABEL_10;
  }

  v241 = 0;
  v32 = 0;
  v251 = (v0 + 560);
  v242 = (*(v0 + 1216) + 8);
  v243 = *(v0 + 1184) + 32;
  v275 = *(v0 + 1240) + 8;
  v264 = v3;
  v265 = v2;
  while (1)
  {
    v33 = (v243 + 56 * v32);
    v34 = v33[1];
    v35 = v33[3];
    v36 = v33[4];
    v37 = v33[5];
    v249 = *v33;
    v250 = v33[6];
    v247 = v32;
    v248 = v33[2];
    if (*(v0 + 1862))
    {
      v38 = sub_230E698C0();

      if ((v38 & 1) == 0)
      {
        v39 = v248;

        v252 = v34;
        v254 = v248;
        goto LABEL_49;
      }
    }

    else
    {
    }

    v277 = 0;
    v278 = 0xE000000000000000;
    if (v244 > 4)
    {
      v44 = 0x65676175676E616CLL;
      if (v244 != 8)
      {
        v44 = 0x7974697275636573;
      }

      v45 = 0xE800000000000000;
      if (v244 == 7)
      {
        v44 = 0x6E6F6D6D6F63;
        v45 = 0xE600000000000000;
      }

      v46 = 0x7374736163646F70;
      if (v244 != 5)
      {
        v46 = 0x6F65646976;
      }

      v47 = 0xE500000000000000;
      if (v244 == 5)
      {
        v47 = 0xE800000000000000;
      }

      v42 = v244 <= 6 ? v46 : v44;
      v43 = v244 <= 6 ? v47 : v45;
    }

    else if (v244 <= 1)
    {
      if (v244)
      {
        v43 = 0xE400000000000000;
        v42 = 1936748641;
      }

      else
      {
        v43 = 0xE800000000000000;
        v42 = 0x6C616E7265746E69;
      }
    }

    else
    {
      v40 = 0x7373656E746966;
      if (v244 != 3)
      {
        v40 = 0x636973756DLL;
      }

      v41 = 0xE700000000000000;
      if (v244 != 3)
      {
        v41 = 0xE500000000000000;
      }

      v42 = v244 == 2 ? 0x736B6F6F62 : v40;
      v43 = v244 == 2 ? 0xE500000000000000 : v41;
    }

    MEMORY[0x23191DA00](v42, v43);

    MEMORY[0x23191DA00](46, 0xE100000000000000);
    v39 = v248;

    MEMORY[0x23191DA00](v34, v248);

    v252 = v277;
    v254 = v278;
LABEL_49:
    v48 = *(v0 + 1224);
    v49 = *(v0 + 1208);
    v256 = sub_230D0E264(MEMORY[0x277D84F90]);
    v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BD58, &qword_230E73518);
    v50 = swift_allocObject();
    v277 = v50;
    v50[2] = v249;
    v50[3] = v34;
    v50[4] = v39;
    v50[5] = v35;
    v50[6] = v36;
    v50[7] = v37;
    v50[8] = v250;

    sub_230E699E0();
    sub_230E699F0();
    (*v242)(v48, v49);
    sub_230E695E0();

    sub_230E69660();
    v51 = *(v0 + 384);
    *(v0 + 176) = *(v0 + 368);
    *(v0 + 192) = v51;
    *(v0 + 160) = *(v0 + 352);
    if (*(v0 + 200))
    {
      v52 = v263;
      while (1)
      {
        v54 = *(v0 + 160);
        v53 = *(v0 + 168);
        sub_230D0E394((v0 + 176), (v0 + 936));
        if (!v53)
        {
          break;
        }

        v55 = *(v0 + 1296);
        sub_230E68D70();
        sub_230D82664(v0 + 936, v0 + 968);

        v56 = sub_230E68D60();
        v57 = sub_230E693F0();

        v58 = os_log_type_enabled(v56, v57);
        v59 = *(v0 + 1464);
        v60 = *(v0 + 1296);
        v61 = *(v0 + 1232);
        if (v58)
        {
          v270 = v54;
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v277 = v63;
          *v62 = 136315394;
          *(v62 + 4) = sub_230D7E620(v270, v53, &v277);
          *(v62 + 12) = 2080;
          sub_230D82664(v0 + 968, v0 + 744);
          v64 = sub_230E690C0();
          v258 = v59;
          v65 = v53;
          v67 = v66;
          __swift_destroy_boxed_opaque_existential_1((v0 + 968));
          v68 = sub_230D7E620(v64, v67, &v277);
          v53 = v65;

          *(v62 + 14) = v68;
          v52 = v263;
          _os_log_impl(&dword_230D02000, v56, v57, "[ServicesIntelligenceProvider][logMetrics] processing event with label: %s and value: %s", v62, 0x16u);
          swift_arrayDestroy();
          v69 = v63;
          v3 = v264;
          MEMORY[0x23191EAE0](v69, -1, -1);
          v70 = v62;
          v54 = v270;
          MEMORY[0x23191EAE0](v70, -1, -1);

          v258(v60, v61);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1((v0 + 968));
          v59(v60, v61);
        }

        v2 = v265;
        if (!*(v3 + 16) || (v78 = sub_230DA41A0(v54, v53), (v79 & 1) == 0))
        {
          v83 = *(v0 + 1280);
          sub_230E68D70();

          v84 = sub_230E68D60();
          v85 = sub_230E693E0();

          v86 = os_log_type_enabled(v84, v85);
          v87 = *(v0 + 1464);
          v88 = *(v0 + 1280);
          v89 = *(v0 + 1232);
          if (v86)
          {
            v90 = v53;
            v91 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            v277 = v92;
            *v91 = 136315138;
            *(v91 + 4) = sub_230D7E620(v54, v90, &v277);
            _os_log_impl(&dword_230D02000, v84, v85, "[ServicesIntelligenceProvider][logMetrics] Field %s not found in schema, omitting", v91, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v92);
            v93 = v92;
            v2 = v265;
            MEMORY[0x23191EAE0](v93, -1, -1);
            v94 = v91;
            v53 = v90;
            v3 = v264;
            MEMORY[0x23191EAE0](v94, -1, -1);
          }

          v87(v88, v89);
          v52 = v263;
          sub_230D8F4B0(&v277, v54, v53);

LABEL_67:
          v95 = (v0 + 936);
          goto LABEL_68;
        }

        v80 = (*(v3 + 56) + 16 * v78);
        v81 = *v80;
        v82 = v80[1];
        if (v54 == 0x707954746E657665 && v53 == 0xE900000000000065 || (sub_230E698C0() & 1) != 0)
        {
          *(v0 + 1024) = MEMORY[0x277D837D0];
          *(v0 + 1000) = v252;
          *(v0 + 1008) = v254;
        }

        else
        {
          sub_230D82664(v0 + 936, v0 + 1000);
        }

        if (*(v0 + 1863) == 1)
        {
          v131 = *(v0 + 1200);
          sub_230D8D4F8((v0 + 1000), (v0 + 1128));
          sub_230D0E394((v0 + 1128), (v0 + 680));
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v277 = v256;
          v133 = sub_230DA41A0(v54, v53);
          v135 = *(v256 + 16);
          v136 = (v134 & 1) == 0;
          v137 = __OFADD__(v135, v136);
          v138 = v135 + v136;
          if (v137)
          {
            goto LABEL_179;
          }

          v139 = v134;
          if (*(v256 + 24) < v138)
          {
            sub_230DB7074(v138, isUniquelyReferenced_nonNull_native);
            v133 = sub_230DA41A0(v54, v53);
            if ((v139 & 1) != (v140 & 1))
            {
              goto LABEL_175;
            }

LABEL_98:
            v141 = v53;
            v96 = v267;
            if (v139)
            {
              goto LABEL_99;
            }

LABEL_109:
            v157 = v277;
            v277[(v133 >> 6) + 8] |= 1 << v133;
            v158 = (v157[6] + 16 * v133);
            *v158 = v54;
            v158[1] = v141;
            sub_230D0E394((v0 + 680), (v157[7] + 32 * v133));
            __swift_destroy_boxed_opaque_existential_1((v0 + 936));
            v159 = v157[2];
            v137 = __OFADD__(v159, 1);
            v160 = v159 + 1;
            if (v137)
            {
              goto LABEL_180;
            }

LABEL_114:
            v256 = v157;
            v157[2] = v160;
LABEL_115:
            __swift_destroy_boxed_opaque_existential_1((v0 + 1000));
            goto LABEL_70;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_98;
          }

          v141 = v53;
          v156 = v133;
          sub_230DBA17C();
          v133 = v156;
          v96 = v267;
          if ((v139 & 1) == 0)
          {
            goto LABEL_109;
          }

LABEL_99:
          v142 = v133;

          v256 = v277;
          v143 = (v277[7] + 32 * v142);
          __swift_destroy_boxed_opaque_existential_1(v143);
          v144 = (v0 + 680);
LABEL_107:
          sub_230D0E394(v144, v143);
          __swift_destroy_boxed_opaque_existential_1((v0 + 936));
          goto LABEL_115;
        }

        v271 = v54;

        v98 = sub_230E69680();
        if (v98 >= 5)
        {
          v109 = *(v0 + 1264);
          sub_230E68D70();

          v110 = sub_230E68D60();
          v111 = sub_230E693E0();

          v112 = os_log_type_enabled(v110, v111);
          v113 = *(v0 + 1464);
          v114 = *(v0 + 1264);
          v115 = *(v0 + 1232);
          if (v112)
          {
            v116 = swift_slowAlloc();
            v259 = v113;
            v117 = v53;
            v118 = swift_slowAlloc();
            v277 = v118;
            *v116 = 136315394;
            v119 = sub_230D7E620(v81, v82, &v277);

            *(v116 + 4) = v119;
            *(v116 + 12) = 2080;
            v120 = v271;
            *(v116 + 14) = sub_230D7E620(v271, v117, &v277);
            _os_log_impl(&dword_230D02000, v110, v111, "[ServicesIntelligenceProvider][logMetrics] Unknown type %s in schema for field %s, omitting", v116, 0x16u);
            swift_arrayDestroy();
            v121 = v118;
            v53 = v117;
            MEMORY[0x23191EAE0](v121, -1, -1);
            v122 = v116;
            v52 = v263;
            MEMORY[0x23191EAE0](v122, -1, -1);

            v259(v114, v115);
          }

          else
          {

            v113(v114, v115);
            v120 = v271;
          }

          sub_230D8F4B0(&v277, v120, v53);

          __swift_destroy_boxed_opaque_existential_1((v0 + 936));
          __swift_destroy_boxed_opaque_existential_1((v0 + 1000));
          v3 = v264;
          v2 = v265;
          goto LABEL_69;
        }

        v99 = v98;

        if (sub_230D8E084(v0 + 1000, v99))
        {
          v145 = *(v0 + 1200);
          sub_230D8D4F8((v0 + 1000), (v0 + 1096));
          v146 = swift_isUniquelyReferenced_nonNull_native();
          v277 = v256;
          v147 = sub_230DA41A0(v271, v53);
          v149 = *(v256 + 16);
          v150 = (v148 & 1) == 0;
          v137 = __OFADD__(v149, v150);
          v151 = v149 + v150;
          if (v137)
          {
            goto LABEL_181;
          }

          v152 = v148;
          if (*(v256 + 24) >= v151)
          {
            if (v146)
            {
              goto LABEL_105;
            }

            v154 = v53;
            v161 = v147;
            sub_230DBA17C();
            v147 = v161;
            v96 = v267;
            if (v152)
            {
LABEL_106:
              v155 = v147;

              v256 = v277;
              v143 = (v277[7] + 32 * v155);
              __swift_destroy_boxed_opaque_existential_1(v143);
              v144 = (v0 + 1096);
              goto LABEL_107;
            }
          }

          else
          {
            sub_230DB7074(v151, v146);
            v147 = sub_230DA41A0(v271, v53);
            if ((v152 & 1) != (v153 & 1))
            {
              goto LABEL_175;
            }

LABEL_105:
            v154 = v53;
            v96 = v267;
            if (v152)
            {
              goto LABEL_106;
            }
          }

          v157 = v277;
          v277[(v147 >> 6) + 8] |= 1 << v147;
          v162 = (v157[6] + 16 * v147);
          *v162 = v271;
          v162[1] = v154;
          sub_230D0E394((v0 + 1096), (v157[7] + 32 * v147));
          __swift_destroy_boxed_opaque_existential_1((v0 + 936));
          v163 = v157[2];
          v137 = __OFADD__(v163, 1);
          v160 = v163 + 1;
          if (v137)
          {
            goto LABEL_182;
          }

          goto LABEL_114;
        }

        v100 = *(v0 + 1272);
        sub_230E68D70();
        sub_230D82664(v0 + 1000, v0 + 1032);

        v101 = sub_230E68D60();
        v102 = sub_230E693E0();

        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v277 = v104;
          *v103 = 136315650;
          *(v103 + 4) = sub_230D7E620(v271, v53, &v277);
          *(v103 + 12) = 2080;
          v105 = v99;
          v106 = v53;
          if (v105 <= 1)
          {
            v107 = 0xE600000000000000;
            if (v105)
            {
              v108 = 0x7265626D756ELL;
            }

            else
            {
              v108 = 0x676E69727473;
            }
          }

          else if (v105 == 2)
          {
            v107 = 0xE400000000000000;
            v108 = 1819242338;
          }

          else if (v105 == 3)
          {
            v107 = 0xEA00000000007972;
            v108 = 0x616E6F6974636964;
          }

          else
          {
            v107 = 0xE500000000000000;
            v108 = 0x7961727261;
          }

          v260 = *(v0 + 1464);
          v245 = *(v0 + 1232);
          v246 = *(v0 + 1272);
          v126 = sub_230D7E620(v108, v107, &v277);

          *(v103 + 14) = v126;
          *(v103 + 22) = 2080;
          sub_230D82664(v0 + 1032, v0 + 1064);
          v127 = sub_230E690C0();
          v129 = v128;
          __swift_destroy_boxed_opaque_existential_1((v0 + 1032));
          v130 = sub_230D7E620(v127, v129, &v277);

          *(v103 + 24) = v130;
          _os_log_impl(&dword_230D02000, v101, v102, "[ServicesIntelligenceProvider][logMetrics] Field %s type mismatch. Expected: %s, got: %s", v103, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x23191EAE0](v104, -1, -1);
          MEMORY[0x23191EAE0](v103, -1, -1);

          v260(v246, v245);
          v52 = v263;
          v2 = v265;
        }

        else
        {
          v106 = v53;
          v123 = *(v0 + 1464);
          v124 = *(v0 + 1272);
          v125 = *(v0 + 1232);

          __swift_destroy_boxed_opaque_existential_1((v0 + 1032));
          v123(v124, v125);
        }

        sub_230D8F4B0(&v277, v271, v106);

        __swift_destroy_boxed_opaque_existential_1((v0 + 936));
        v95 = (v0 + 1000);
LABEL_68:
        __swift_destroy_boxed_opaque_existential_1(v95);
LABEL_69:
        v96 = v267;
LABEL_70:
        sub_230E69660();
        v97 = *(v0 + 384);
        *(v0 + 176) = *(v0 + 368);
        *(v0 + 192) = v97;
        *(v0 + 160) = *(v0 + 352);
        if (!*(v0 + 200))
        {
          goto LABEL_117;
        }
      }

      v71 = *(v0 + 1288);
      sub_230E68D70();
      v72 = sub_230E68D60();
      v73 = sub_230E69400();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_230D02000, v72, v73, "[ServicesIntelligenceProvider][logMetrics] property without label.", v74, 2u);
        MEMORY[0x23191EAE0](v74, -1, -1);
      }

      v75 = *(v0 + 1464);
      v76 = *(v0 + 1288);
      v77 = *(v0 + 1232);

      v75(v76, v77);
      goto LABEL_67;
    }

    v52 = v263;
    v96 = v267;
LABEL_117:

    if (*(v256 + 16))
    {
      break;
    }

    v164 = *(v0 + 1256);

    sub_230E68D70();
    v165 = sub_230E68D60();
    v166 = sub_230E693E0();
    v167 = os_log_type_enabled(v165, v166);
    v168 = *(v0 + 1464);
    v169 = *(v0 + 1256);
    v170 = *(v0 + 1232);
    if (v167)
    {
      v171 = swift_slowAlloc();
      *v171 = 0;
      _os_log_impl(&dword_230D02000, v165, v166, "[ServicesIntelligenceProvider][logMetrics] No valid fields for event, skipping", v171, 2u);
      MEMORY[0x23191EAE0](v171, -1, -1);
    }

    else
    {
    }

    v168(v169, v170);
LABEL_164:
    v2 = v265;
LABEL_165:
    v32 = v247 + 1;
    if (v247 + 1 == *(v0 + 1360))
    {
      goto LABEL_172;
    }
  }

  if ((*(v0 + 1864) & 1) == 0)
  {
    LOBYTE(v277) = v96;
    v278 = v262;
    v279 = v2;
    v280 = v3;
    v281 = v52;
    v282 = v239;
    if (!sub_230D6BFA8(v252, v254))
    {

      goto LABEL_165;
    }
  }

  if (*(v0 + 1862))
  {
    *(v0 + 1862);
  }

  v172 = objc_allocWithZone(MEMORY[0x277CEE5A8]);
  v173 = sub_230E69030();

  v174 = [v172 initWithTopic_];

  v175 = sub_230E69030();

  [v174 setEventType_];

  v261 = v174;
  [v174 setAnonymous_];
  v176 = 0;
  v177 = -1 << *(v256 + 32);
  if (-v177 < 64)
  {
    v178 = ~(-1 << -v177);
  }

  else
  {
    v178 = -1;
  }

  v179 = v178 & *(v256 + 64);
  v180 = (63 - v177) >> 6;
  if (v179)
  {
    while (1)
    {
      v181 = v176;
LABEL_138:
      v184 = __clz(__rbit64(v179));
      v179 &= v179 - 1;
      v185 = v184 | (v181 << 6);
      v186 = (*(v256 + 48) + 16 * v185);
      v188 = *v186;
      v187 = v186[1];
      sub_230D82664(*(v256 + 56) + 32 * v185, v0 + 712);
      *(v0 + 208) = v188;
      *(v0 + 216) = v187;
      sub_230D0E394((v0 + 712), (v0 + 224));

      v183 = v181;
LABEL_139:
      v189 = *(v0 + 224);
      *(v0 + 304) = *(v0 + 208);
      *(v0 + 320) = v189;
      *(v0 + 336) = *(v0 + 240);
      if (!*(v0 + 312))
      {
        break;
      }

      v190 = *(v0 + 304);
      sub_230D0E394((v0 + 320), (v0 + 904));
      __swift_project_boxed_opaque_existential_1((v0 + 904), *(v0 + 928));
      v191 = sub_230E698B0();
      __swift_destroy_boxed_opaque_existential_1((v0 + 904));
      v192 = sub_230E69030();

      [v261 setProperty:v191 forBodyKey:v192];

      swift_unknownObjectRelease();
      v176 = v183;
      if (!v179)
      {
        goto LABEL_131;
      }
    }

    v193 = [v261 dictionaryForPosting];
    v194 = sub_230E68F50();

    v195 = 0;
    v197 = v194 + 64;
    v196 = *(v194 + 64);
    v253 = v194;
    v198 = -1 << *(v194 + 32);
    if (-v198 < 64)
    {
      v199 = ~(-1 << -v198);
    }

    else
    {
      v199 = -1;
    }

    v200 = v199 & v196;
    v201 = (63 - v198) >> 6;
    v202 = v0 + 600;
    if ((v199 & v196) == 0)
    {
LABEL_150:
      if (v201 <= v195 + 1)
      {
        v204 = v195 + 1;
      }

      else
      {
        v204 = v201;
      }

      v205 = v204 - 1;
      while (1)
      {
        v203 = v195 + 1;
        if (__OFADD__(v195, 1))
        {
          goto LABEL_174;
        }

        if (v203 >= v201)
        {
          break;
        }

        v200 = *(v197 + 8 * v203);
        ++v195;
        if (v200)
        {
          goto LABEL_157;
        }
      }

      v200 = 0;
      *(v0 + 80) = 0;
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      goto LABEL_158;
    }

    while (1)
    {
      v203 = v195;
LABEL_157:
      v206 = __clz(__rbit64(v200));
      v200 &= v200 - 1;
      v207 = v206 | (v203 << 6);
      sub_230D8FF88(*(v253 + 48) + 40 * v207, v251);
      sub_230D82664(*(v253 + 56) + 32 * v207, v0 + 776);
      v208 = *(v0 + 576);
      *(v0 + 16) = *v251;
      *(v0 + 32) = v208;
      *(v0 + 48) = *(v0 + 592);
      sub_230D0E394((v0 + 776), (v0 + 56));
      v205 = v203;
      v202 = v0 + 600;
LABEL_158:
      *(v0 + 152) = *(v0 + 80);
      v209 = *(v0 + 48);
      *(v0 + 136) = *(v0 + 64);
      *(v0 + 120) = v209;
      v210 = *(v0 + 16);
      *(v0 + 104) = *(v0 + 32);
      *(v0 + 88) = v210;
      if (!*(v0 + 112))
      {
        break;
      }

      v211 = *(v0 + 1248);
      v212 = *(v0 + 104);
      *v202 = *(v0 + 88);
      *(v202 + 16) = v212;
      *(v202 + 32) = *(v0 + 120);
      sub_230D0E394((v0 + 128), (v0 + 808));
      sub_230E68D70();
      sub_230D8FF88(v202, v0 + 640);
      sub_230D82664(v0 + 808, v0 + 840);
      v213 = sub_230E68D60();
      v214 = sub_230E693E0();
      v215 = os_log_type_enabled(v213, v214);
      v216 = *(v0 + 1464);
      v217 = *(v0 + 1232);
      v268 = v217;
      v272 = *(v0 + 1248);
      if (v215)
      {
        v257 = v205;
        v218 = swift_slowAlloc();
        v219 = swift_slowAlloc();
        v277 = v219;
        *v218 = 136315394;
        v255 = v216;
        v220 = sub_230E694F0();
        v222 = v221;
        sub_230D8FFE4(v0 + 640);
        v223 = sub_230D7E620(v220, v222, &v277);

        *(v218 + 4) = v223;
        *(v218 + 12) = 2080;
        sub_230D82664(v0 + 840, v0 + 872);
        v224 = sub_230E690C0();
        v226 = v225;
        __swift_destroy_boxed_opaque_existential_1((v0 + 840));
        v227 = sub_230D7E620(v224, v226, &v277);
        v202 = v0 + 600;

        *(v218 + 14) = v227;
        _os_log_impl(&dword_230D02000, v213, v214, "[ServicesIntelligenceProvider] Field: %s = %s", v218, 0x16u);
        swift_arrayDestroy();
        v228 = v219;
        v3 = v264;
        MEMORY[0x23191EAE0](v228, -1, -1);
        MEMORY[0x23191EAE0](v218, -1, -1);

        v255(v272, v268);
        __swift_destroy_boxed_opaque_existential_1((v0 + 808));
        sub_230D8FFE4(v0 + 600);
        v195 = v257;
        if (!v200)
        {
          goto LABEL_150;
        }
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1((v0 + 840));
        sub_230D8FFE4(v0 + 640);
        v216(v272, v268);
        __swift_destroy_boxed_opaque_existential_1((v0 + 808));
        sub_230D8FFE4(v202);
        v195 = v205;
        if (!v200)
        {
          goto LABEL_150;
        }
      }
    }

    [v240 enqueueEvent_];

    v137 = __OFADD__(v241++, 1);
    if (v137)
    {
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
    }

    goto LABEL_164;
  }

LABEL_131:
  if (v180 <= v176 + 1)
  {
    v182 = v176 + 1;
  }

  else
  {
    v182 = v180;
  }

  v183 = v182 - 1;
  while (1)
  {
    v181 = v176 + 1;
    if (__OFADD__(v176, 1))
    {
      break;
    }

    if (v181 >= v180)
    {
      v179 = 0;
      *(v0 + 224) = 0u;
      *(v0 + 240) = 0u;
      *(v0 + 208) = 0u;
      goto LABEL_139;
    }

    v179 = *(v256 + 64 + 8 * v181);
    ++v176;
    if (v179)
    {
      goto LABEL_138;
    }
  }

  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  v238 = *MEMORY[0x277D85DE8];

  return sub_230E69950();
}

uint64_t sub_230D86480()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[174];
  v2 = v0[173];
  v3 = v0[169];
  v4 = *(v0[155] + 8);
  v4(v0[163], v0[154]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v5 = v0[178];
  v0[183] = v4;
  v0[182] = v5;
  v6 = v0[150];
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D8484C, v6, 0);
}

uint64_t sub_230D86570()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[174];
  v2 = v0[173];
  v3 = v0[169];
  (*(v0[155] + 8))(v0[163], v0[154]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v0[184] = v0[178];
  v4 = v0[150];
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D90274, v4, 0);
}

uint64_t sub_230D86654(uint64_t a1, char a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  v16 = *MEMORY[0x277D85DE8];
  *(v7 + 1200) = v6;
  *(v7 + 1192) = a6;
  *(v7 + 1864) = a5;
  *(v7 + 1863) = a4;
  *(v7 + 1184) = a3;
  *(v7 + 1862) = a2;
  *(v7 + 1176) = a1;
  v8 = sub_230E69A00();
  *(v7 + 1208) = v8;
  v9 = *(v8 - 8);
  *(v7 + 1216) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 1224) = swift_task_alloc();
  v11 = sub_230E68D80();
  *(v7 + 1232) = v11;
  v12 = *(v11 - 8);
  *(v7 + 1240) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 1248) = swift_task_alloc();
  *(v7 + 1256) = swift_task_alloc();
  *(v7 + 1264) = swift_task_alloc();
  *(v7 + 1272) = swift_task_alloc();
  *(v7 + 1280) = swift_task_alloc();
  *(v7 + 1288) = swift_task_alloc();
  *(v7 + 1296) = swift_task_alloc();
  *(v7 + 1304) = swift_task_alloc();
  *(v7 + 1312) = swift_task_alloc();
  v14 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D8681C, v6, 0);
}

uint64_t sub_230D8681C()
{
  v26 = v0;
  v25[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1184);
  sub_230E68D70();
  swift_bridgeObjectRetain_n();
  v3 = sub_230E68D60();
  v4 = sub_230E693F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1862);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25[0] = v7;
    *v6 = 136315394;
    v8 = 0x8000000230E802F0;
    v9 = 0xD00000000000001FLL;
    if (v5 != 1)
    {
      v9 = 0xD000000000000012;
      v8 = 0x8000000230E80310;
    }

    if (v5)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0x6F5F706D615F7078;
    }

    if (v5)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0xEE00676F6C5F7064;
    }

    v24 = *(v0 + 1312);
    v12 = *(v0 + 1240);
    v13 = *(v0 + 1232);
    v14 = *(v0 + 1184);
    v15 = sub_230D7E620(v10, v11, v25);

    *(v6 + 4) = v15;
    *(v6 + 12) = 2048;
    v16 = *(v14 + 16);

    *(v6 + 14) = v16;

    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][logMetrics] Starting with topic: %s and %ld events", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);

    (*(v12 + 8))(v24, v13);
  }

  else
  {
    v17 = *(v0 + 1312);
    v18 = *(v0 + 1240);
    v19 = *(v0 + 1232);
    v20 = *(v0 + 1184);
    swift_bridgeObjectRelease_n();

    (*(v18 + 8))(v17, v19);
  }

  *(v0 + 1860) = 39;
  v21 = swift_task_alloc();
  *(v0 + 1320) = v21;
  *v21 = v0;
  v21[1] = sub_230D86B00;
  v22 = *MEMORY[0x277D85DE8];

  return static RequestContext.from(_:correlationID:)(v0 + 520, (v0 + 1860), 0, 0);
}

uint64_t sub_230D86B00()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 1320);
  v2 = *(*v0 + 1200);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D86C3C, v2, 0);
}

uint64_t sub_230D86C3C()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1200);
  v2 = *(v0 + 520);
  v3 = *(v0 + 528);
  v4 = *(v0 + 536);
  *(v0 + 1328) = v4;
  v5 = *(v0 + 544);
  v6 = *(v0 + 545);
  v7 = *(v0 + 552);
  *(v0 + 1336) = v7;
  *(v0 + 400) = v2;
  *(v0 + 408) = v3;
  *(v0 + 416) = v4;
  *(v0 + 424) = v5;
  *(v0 + 425) = v6;
  *(v0 + 432) = v7;

  v8 = swift_task_alloc();
  *(v0 + 1344) = v8;
  *v8 = v0;
  v8[1] = sub_230D86D58;
  v9 = *(v0 + 1200);
  v10 = *MEMORY[0x277D85DE8];

  return sub_230D6F7D0(39, v0 + 400, v9, v9);
}

uint64_t sub_230D86D58(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(*v2 + 1344);
  v4 = *v2;
  v4[169] = a1;

  if (v1)
  {
    v5 = v4[167];
    v6 = v4[166];

    v7 = v4[164];
    v8 = v4[163];
    v9 = v4[162];
    v10 = v4[161];
    v11 = v4[160];
    v12 = v4[159];
    v13 = v4[158];
    v14 = v4[157];
    v15 = v4[156];
    v16 = v4[153];

    v17 = v4[1];
    v18 = *MEMORY[0x277D85DE8];

    return v17();
  }

  else
  {
    v20 = v4[167];
    v21 = v4[166];
    v22 = v4[150];

    v23 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230D86FA8, v22, 0);
  }
}

uint64_t sub_230D86FA8()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1184);
  *(v0 + 1168) = MEMORY[0x277D84FA0];
  *(v0 + 1360) = *(v1 + 16);
  *(v0 + 1861) = 40;
  v2 = swift_task_alloc();
  *(v0 + 1368) = v2;
  *v2 = v0;
  v2[1] = sub_230D87098;
  v3 = *MEMORY[0x277D85DE8];

  return static RequestContext.from(_:correlationID:)(v0 + 440, (v0 + 1861), 0, 0);
}

uint64_t sub_230D87098()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 1368);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D871C0, 0, 0);
}

uint64_t sub_230D871C0()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 440);
  *(v0 + 1865) = v1;
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  *(v0 + 1376) = v2;
  *(v0 + 1384) = v3;
  v4 = *(v0 + 464);
  *(v0 + 1866) = v4;
  v5 = *(v0 + 465);
  *(v0 + 1867) = v5;
  v6 = *(v0 + 472);
  *(v0 + 1392) = v6;
  *(v0 + 480) = v1;
  *(v0 + 488) = v2;
  *(v0 + 496) = v3;
  *(v0 + 504) = v4;
  *(v0 + 505) = v5;
  *(v0 + 512) = v6;
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 1352);
  v8 = qword_27DB5A438;
  *(v0 + 1400) = qword_27DB5A438;

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D872F4, v8, 0);
}

uint64_t sub_230D872F4()
{
  v33 = v0;
  v32[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1392);
  v2 = *(v0 + 1384);
  v3 = *(v0 + 1304);
  sub_230E68D70();

  v4 = sub_230E68D60();
  v5 = sub_230E693E0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1384);
    v7 = *(v0 + 1376);
    v8 = *(v0 + 1865);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32[0] = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_230D7E620(0xD00000000000001CLL, 0x8000000230E808D0, v32);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_230D7E620(v7, v6, v32);
    *(v9 + 22) = 2080;
    v30 = 0x6C616E7265746E69;
    v31 = 0xE90000000000002ELL;
    v29 = v8;
    v11 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v11);

    v12 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v32);

    *(v9 + 24) = v12;
    _os_log_impl(&dword_230D02000, v4, v5, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v10, -1, -1);
    MEMORY[0x23191EAE0](v9, -1, -1);
  }

  v13 = *(v0 + 1392);
  v14 = *(v0 + 1867);
  v15 = *(v0 + 1865);
  LOBYTE(v30) = *(v0 + 1866);
  BYTE1(v30) = v14;
  v31 = v13;
  v29 = 40;
  LOBYTE(v32[0]) = v15;

  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v29, v32);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 1408) = CFAbsoluteTimeGetCurrent();
    *(v0 + 1480) = 0u;
    *(v0 + 1496) = 0u;
    *(v0 + 1512) = 0u;
    *(v0 + 1528) = 0u;
    *(v0 + 1544) = 0u;
    *(v0 + 1560) = 0u;
    *(v0 + 1576) = 0u;
    *(v0 + 1592) = 0u;
    *(v0 + 1608) = 0u;
    *(v0 + 1624) = 0u;
    *(v0 + 1640) = 0u;
    *(v0 + 1656) = 0u;
    *(v0 + 1672) = 0u;
    *(v0 + 1688) = 0u;
    *(v0 + 1704) = 0u;
    *(v0 + 1720) = 0u;
    *(v0 + 1736) = 0u;
    *(v0 + 1752) = 0u;
    *(v0 + 1768) = 0u;
    *(v0 + 1784) = 0u;
    *(v0 + 1800) = 0u;
    *(v0 + 1816) = 0u;
    *(v0 + 1832) = 0u;
    *(v0 + 1848) = 0;
    *(v0 + 1852) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 1480), (v0 + 1852));
    *(v0 + 1856) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 1528);
      v20 = *(v0 + 1600);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 1432) = v18;
    *(v0 + 1160) = 0;
    v23 = swift_task_alloc();
    *(v0 + 1440) = v23;
    *v23 = v0;
    v24 = sub_230D87838;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 1416) = v23;
    *v23 = v0;
    v24 = sub_230D876E0;
  }

  v23[1] = v24;
  v25 = *(v0 + 1352);
  v26 = *(v0 + 1862);
  v27 = *MEMORY[0x277D85DE8];

  return sub_230E41A9C(v0 + 256, v26, v25, v0 + 480);
}

uint64_t sub_230D876E0()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 1416);
  v4 = *v1;
  *(*v1 + 1424) = v0;

  v5 = *(v2 + 1400);
  if (v0)
  {
    v6 = sub_230D89A64;
  }

  else
  {
    v6 = sub_230D89974;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D87838()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 1440);
  v4 = *v1;
  *(*v1 + 1448) = v0;

  v5 = *(v2 + 1400);
  if (v0)
  {
    v6 = sub_230D87AB4;
  }

  else
  {
    v6 = sub_230D87990;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D87990()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1392);
  v2 = *(v0 + 1384);
  v3 = *(v0 + 1352);
  v4 = *(v0 + 1304);
  v5 = *(v0 + 1240);
  v6 = *(v0 + 1232);
  sub_230D340D4(40, *(v0 + 1432), *(v0 + 1856) != 0, v0 + 480, (v0 + 1160), *(v0 + 1408));
  v7 = *(v5 + 8);
  v7(v4, v6);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v8 = *(v0 + 1448);
  *(v0 + 1464) = v7;
  *(v0 + 1456) = v8;
  v9 = *(v0 + 1200);
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D87C14, v9, 0);
}

uint64_t sub_230D87AB4()
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1448);
  v2 = *(v0 + 1432);
  v3 = *(v0 + 1408);
  v14 = *(v0 + 1392);
  v4 = *(v0 + 1384);
  v5 = *(v0 + 1352);
  v6 = *(v0 + 1304);
  v7 = *(v0 + 1240);
  v8 = *(v0 + 1232);
  v9 = *(v0 + 1856) != 0;
  *(v0 + 1160) = v1;
  swift_willThrow();
  v10 = v1;
  sub_230D340D4(40, v2, v9, v0 + 480, (v0 + 1160), v3);
  MEMORY[0x23191E910](v1);
  (*(v7 + 8))(v6, v8);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  *(v0 + 1472) = *(v0 + 1448);
  v11 = *(v0 + 1200);
  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D89848, v11, 0);
}

uint64_t sub_230D87C14()
{
  v284 = v0;
  v283 = *MEMORY[0x277D85DE8];
  if (!*(v0 + 264))
  {
    v9 = *(v0 + 1352);
    v10 = *(v0 + 1862);
    sub_230D8FDD0();
    swift_allocError();
    *v11 = v10;
    swift_willThrow();
LABEL_9:

    v15 = *(v0 + 1312);
    v16 = *(v0 + 1304);
    v17 = *(v0 + 1296);
    v18 = *(v0 + 1288);
    v19 = *(v0 + 1280);
    v20 = *(v0 + 1272);
    v21 = *(v0 + 1264);
    v22 = *(v0 + 1256);
    v23 = *(v0 + 1248);
    v24 = *(v0 + 1224);

    v25 = *(v0 + 8);
    v26 = *MEMORY[0x277D85DE8];
LABEL_10:

    return v25();
  }

  v262 = *(v0 + 264);
  v1 = *(v0 + 256);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  v6 = *(v0 + 1456);
  sub_230DCB5D4(&v277);
  if (v6)
  {
    MEMORY[0x23191E910](v6);
    v7 = v1;
    v8 = v262;
LABEL_8:
    sub_230D8FE24(v7, v8);
    v12 = *(v0 + 1352);
    v13 = *(v0 + 1862) | 0x40;
    sub_230D8FDD0();
    swift_allocError();
    *v14 = v13;
    swift_willThrow();
    goto LABEL_9;
  }

  if (!sub_230D829F0(v277, v262))
  {
    v7 = v1;
    v8 = v262;
    goto LABEL_8;
  }

  sub_230DCB5D4(&v277);
  v244 = v277;
  v267 = v1;
  if (*(v0 + 1192))
  {
    v28 = *(v0 + 1192);
  }

  else
  {
    v29 = sub_230E69030();
    v30 = sub_230E69030();
    v28 = [objc_opt_self() bagForProfile:v29 profileVersion:v30];
  }

  swift_unknownObjectRetain();
  v239 = v4;
  v240 = sub_230D8FE88(v28);
  v31 = *(v0 + 1360);
  swift_unknownObjectRelease();
  v263 = v5;
  if (!v31)
  {
    v241 = 0;
    v32 = *(v0 + 1360);
LABEL_172:
    v229 = *(v0 + 1352);
    v230 = *(v0 + 1312);
    v231 = *(v0 + 1304);
    v232 = *(v0 + 1296);
    v233 = *(v0 + 1288);
    v234 = *(v0 + 1280);
    v266 = *(v0 + 1272);
    v269 = *(v0 + 1264);
    v273 = *(v0 + 1256);
    v274 = *(v0 + 1248);
    v276 = *(v0 + 1224);
    v235 = *(v0 + 1176);

    sub_230D8FE24(v267, v262);

    v236 = *(v0 + 1168);
    *v235 = v32;
    v235[1] = v241;
    v235[2] = v236;

    v25 = *(v0 + 8);
    v237 = *MEMORY[0x277D85DE8];
    goto LABEL_10;
  }

  v241 = 0;
  v32 = 0;
  v251 = (v0 + 560);
  v242 = (*(v0 + 1216) + 8);
  v243 = *(v0 + 1184) + 32;
  v275 = *(v0 + 1240) + 8;
  v264 = v3;
  v265 = v2;
  while (1)
  {
    v33 = (v243 + 56 * v32);
    v34 = v33[1];
    v35 = v33[3];
    v36 = v33[4];
    v37 = v33[5];
    v249 = *v33;
    v250 = v33[6];
    v247 = v32;
    v248 = v33[2];
    if (*(v0 + 1862))
    {
      v38 = sub_230E698C0();

      if ((v38 & 1) == 0)
      {
        v39 = v248;

        v252 = v34;
        v254 = v248;
        goto LABEL_49;
      }
    }

    else
    {
    }

    v277 = 0;
    v278 = 0xE000000000000000;
    if (v244 > 4)
    {
      v44 = 0x65676175676E616CLL;
      if (v244 != 8)
      {
        v44 = 0x7974697275636573;
      }

      v45 = 0xE800000000000000;
      if (v244 == 7)
      {
        v44 = 0x6E6F6D6D6F63;
        v45 = 0xE600000000000000;
      }

      v46 = 0x7374736163646F70;
      if (v244 != 5)
      {
        v46 = 0x6F65646976;
      }

      v47 = 0xE500000000000000;
      if (v244 == 5)
      {
        v47 = 0xE800000000000000;
      }

      v42 = v244 <= 6 ? v46 : v44;
      v43 = v244 <= 6 ? v47 : v45;
    }

    else if (v244 <= 1)
    {
      if (v244)
      {
        v43 = 0xE400000000000000;
        v42 = 1936748641;
      }

      else
      {
        v43 = 0xE800000000000000;
        v42 = 0x6C616E7265746E69;
      }
    }

    else
    {
      v40 = 0x7373656E746966;
      if (v244 != 3)
      {
        v40 = 0x636973756DLL;
      }

      v41 = 0xE700000000000000;
      if (v244 != 3)
      {
        v41 = 0xE500000000000000;
      }

      v42 = v244 == 2 ? 0x736B6F6F62 : v40;
      v43 = v244 == 2 ? 0xE500000000000000 : v41;
    }

    MEMORY[0x23191DA00](v42, v43);

    MEMORY[0x23191DA00](46, 0xE100000000000000);
    v39 = v248;

    MEMORY[0x23191DA00](v34, v248);

    v252 = v277;
    v254 = v278;
LABEL_49:
    v48 = *(v0 + 1224);
    v49 = *(v0 + 1208);
    v256 = sub_230D0E264(MEMORY[0x277D84F90]);
    v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BD00, &qword_230E734C0);
    v50 = swift_allocObject();
    v277 = v50;
    v50[2] = v249;
    v50[3] = v34;
    v50[4] = v39;
    v50[5] = v35;
    v50[6] = v36;
    v50[7] = v37;
    v50[8] = v250;

    sub_230E699E0();
    sub_230E699F0();
    (*v242)(v48, v49);
    sub_230E695E0();

    sub_230E69660();
    v51 = *(v0 + 384);
    *(v0 + 176) = *(v0 + 368);
    *(v0 + 192) = v51;
    *(v0 + 160) = *(v0 + 352);
    if (*(v0 + 200))
    {
      v52 = v263;
      while (1)
      {
        v54 = *(v0 + 160);
        v53 = *(v0 + 168);
        sub_230D0E394((v0 + 176), (v0 + 936));
        if (!v53)
        {
          break;
        }

        v55 = *(v0 + 1296);
        sub_230E68D70();
        sub_230D82664(v0 + 936, v0 + 968);

        v56 = sub_230E68D60();
        v57 = sub_230E693F0();

        v58 = os_log_type_enabled(v56, v57);
        v59 = *(v0 + 1464);
        v60 = *(v0 + 1296);
        v61 = *(v0 + 1232);
        if (v58)
        {
          v270 = v54;
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v277 = v63;
          *v62 = 136315394;
          *(v62 + 4) = sub_230D7E620(v270, v53, &v277);
          *(v62 + 12) = 2080;
          sub_230D82664(v0 + 968, v0 + 744);
          v64 = sub_230E690C0();
          v258 = v59;
          v65 = v53;
          v67 = v66;
          __swift_destroy_boxed_opaque_existential_1((v0 + 968));
          v68 = sub_230D7E620(v64, v67, &v277);
          v53 = v65;

          *(v62 + 14) = v68;
          v52 = v263;
          _os_log_impl(&dword_230D02000, v56, v57, "[ServicesIntelligenceProvider][logMetrics] processing event with label: %s and value: %s", v62, 0x16u);
          swift_arrayDestroy();
          v69 = v63;
          v3 = v264;
          MEMORY[0x23191EAE0](v69, -1, -1);
          v70 = v62;
          v54 = v270;
          MEMORY[0x23191EAE0](v70, -1, -1);

          v258(v60, v61);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1((v0 + 968));
          v59(v60, v61);
        }

        v2 = v265;
        if (!*(v3 + 16) || (v78 = sub_230DA41A0(v54, v53), (v79 & 1) == 0))
        {
          v83 = *(v0 + 1280);
          sub_230E68D70();

          v84 = sub_230E68D60();
          v85 = sub_230E693E0();

          v86 = os_log_type_enabled(v84, v85);
          v87 = *(v0 + 1464);
          v88 = *(v0 + 1280);
          v89 = *(v0 + 1232);
          if (v86)
          {
            v90 = v53;
            v91 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            v277 = v92;
            *v91 = 136315138;
            *(v91 + 4) = sub_230D7E620(v54, v90, &v277);
            _os_log_impl(&dword_230D02000, v84, v85, "[ServicesIntelligenceProvider][logMetrics] Field %s not found in schema, omitting", v91, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v92);
            v93 = v92;
            v2 = v265;
            MEMORY[0x23191EAE0](v93, -1, -1);
            v94 = v91;
            v53 = v90;
            v3 = v264;
            MEMORY[0x23191EAE0](v94, -1, -1);
          }

          v87(v88, v89);
          v52 = v263;
          sub_230D8F4B0(&v277, v54, v53);

LABEL_67:
          v95 = (v0 + 936);
          goto LABEL_68;
        }

        v80 = (*(v3 + 56) + 16 * v78);
        v81 = *v80;
        v82 = v80[1];
        if (v54 == 0x707954746E657665 && v53 == 0xE900000000000065 || (sub_230E698C0() & 1) != 0)
        {
          *(v0 + 1024) = MEMORY[0x277D837D0];
          *(v0 + 1000) = v252;
          *(v0 + 1008) = v254;
        }

        else
        {
          sub_230D82664(v0 + 936, v0 + 1000);
        }

        if (*(v0 + 1863) == 1)
        {
          v131 = *(v0 + 1200);
          sub_230D8D4F8((v0 + 1000), (v0 + 1128));
          sub_230D0E394((v0 + 1128), (v0 + 680));
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v277 = v256;
          v133 = sub_230DA41A0(v54, v53);
          v135 = *(v256 + 16);
          v136 = (v134 & 1) == 0;
          v137 = __OFADD__(v135, v136);
          v138 = v135 + v136;
          if (v137)
          {
            goto LABEL_179;
          }

          v139 = v134;
          if (*(v256 + 24) < v138)
          {
            sub_230DB7074(v138, isUniquelyReferenced_nonNull_native);
            v133 = sub_230DA41A0(v54, v53);
            if ((v139 & 1) != (v140 & 1))
            {
              goto LABEL_175;
            }

LABEL_98:
            v141 = v53;
            v96 = v267;
            if (v139)
            {
              goto LABEL_99;
            }

LABEL_109:
            v157 = v277;
            v277[(v133 >> 6) + 8] |= 1 << v133;
            v158 = (v157[6] + 16 * v133);
            *v158 = v54;
            v158[1] = v141;
            sub_230D0E394((v0 + 680), (v157[7] + 32 * v133));
            __swift_destroy_boxed_opaque_existential_1((v0 + 936));
            v159 = v157[2];
            v137 = __OFADD__(v159, 1);
            v160 = v159 + 1;
            if (v137)
            {
              goto LABEL_180;
            }

LABEL_114:
            v256 = v157;
            v157[2] = v160;
LABEL_115:
            __swift_destroy_boxed_opaque_existential_1((v0 + 1000));
            goto LABEL_70;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_98;
          }

          v141 = v53;
          v156 = v133;
          sub_230DBA17C();
          v133 = v156;
          v96 = v267;
          if ((v139 & 1) == 0)
          {
            goto LABEL_109;
          }

LABEL_99:
          v142 = v133;

          v256 = v277;
          v143 = (v277[7] + 32 * v142);
          __swift_destroy_boxed_opaque_existential_1(v143);
          v144 = (v0 + 680);
LABEL_107:
          sub_230D0E394(v144, v143);
          __swift_destroy_boxed_opaque_existential_1((v0 + 936));
          goto LABEL_115;
        }

        v271 = v54;

        v98 = sub_230E69680();
        if (v98 >= 5)
        {
          v109 = *(v0 + 1264);
          sub_230E68D70();

          v110 = sub_230E68D60();
          v111 = sub_230E693E0();

          v112 = os_log_type_enabled(v110, v111);
          v113 = *(v0 + 1464);
          v114 = *(v0 + 1264);
          v115 = *(v0 + 1232);
          if (v112)
          {
            v116 = swift_slowAlloc();
            v259 = v113;
            v117 = v53;
            v118 = swift_slowAlloc();
            v277 = v118;
            *v116 = 136315394;
            v119 = sub_230D7E620(v81, v82, &v277);

            *(v116 + 4) = v119;
            *(v116 + 12) = 2080;
            v120 = v271;
            *(v116 + 14) = sub_230D7E620(v271, v117, &v277);
            _os_log_impl(&dword_230D02000, v110, v111, "[ServicesIntelligenceProvider][logMetrics] Unknown type %s in schema for field %s, omitting", v116, 0x16u);
            swift_arrayDestroy();
            v121 = v118;
            v53 = v117;
            MEMORY[0x23191EAE0](v121, -1, -1);
            v122 = v116;
            v52 = v263;
            MEMORY[0x23191EAE0](v122, -1, -1);

            v259(v114, v115);
          }

          else
          {

            v113(v114, v115);
            v120 = v271;
          }

          sub_230D8F4B0(&v277, v120, v53);

          __swift_destroy_boxed_opaque_existential_1((v0 + 936));
          __swift_destroy_boxed_opaque_existential_1((v0 + 1000));
          v3 = v264;
          v2 = v265;
          goto LABEL_69;
        }

        v99 = v98;

        if (sub_230D8E084(v0 + 1000, v99))
        {
          v145 = *(v0 + 1200);
          sub_230D8D4F8((v0 + 1000), (v0 + 1096));
          v146 = swift_isUniquelyReferenced_nonNull_native();
          v277 = v256;
          v147 = sub_230DA41A0(v271, v53);
          v149 = *(v256 + 16);
          v150 = (v148 & 1) == 0;
          v137 = __OFADD__(v149, v150);
          v151 = v149 + v150;
          if (v137)
          {
            goto LABEL_181;
          }

          v152 = v148;
          if (*(v256 + 24) >= v151)
          {
            if (v146)
            {
              goto LABEL_105;
            }

            v154 = v53;
            v161 = v147;
            sub_230DBA17C();
            v147 = v161;
            v96 = v267;
            if (v152)
            {
LABEL_106:
              v155 = v147;

              v256 = v277;
              v143 = (v277[7] + 32 * v155);
              __swift_destroy_boxed_opaque_existential_1(v143);
              v144 = (v0 + 1096);
              goto LABEL_107;
            }
          }

          else
          {
            sub_230DB7074(v151, v146);
            v147 = sub_230DA41A0(v271, v53);
            if ((v152 & 1) != (v153 & 1))
            {
              goto LABEL_175;
            }

LABEL_105:
            v154 = v53;
            v96 = v267;
            if (v152)
            {
              goto LABEL_106;
            }
          }

          v157 = v277;
          v277[(v147 >> 6) + 8] |= 1 << v147;
          v162 = (v157[6] + 16 * v147);
          *v162 = v271;
          v162[1] = v154;
          sub_230D0E394((v0 + 1096), (v157[7] + 32 * v147));
          __swift_destroy_boxed_opaque_existential_1((v0 + 936));
          v163 = v157[2];
          v137 = __OFADD__(v163, 1);
          v160 = v163 + 1;
          if (v137)
          {
            goto LABEL_182;
          }

          goto LABEL_114;
        }

        v100 = *(v0 + 1272);
        sub_230E68D70();
        sub_230D82664(v0 + 1000, v0 + 1032);

        v101 = sub_230E68D60();
        v102 = sub_230E693E0();

        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v277 = v104;
          *v103 = 136315650;
          *(v103 + 4) = sub_230D7E620(v271, v53, &v277);
          *(v103 + 12) = 2080;
          v105 = v99;
          v106 = v53;
          if (v105 <= 1)
          {
            v107 = 0xE600000000000000;
            if (v105)
            {
              v108 = 0x7265626D756ELL;
            }

            else
            {
              v108 = 0x676E69727473;
            }
          }

          else if (v105 == 2)
          {
            v107 = 0xE400000000000000;
            v108 = 1819242338;
          }

          else if (v105 == 3)
          {
            v107 = 0xEA00000000007972;
            v108 = 0x616E6F6974636964;
          }

          else
          {
            v107 = 0xE500000000000000;
            v108 = 0x7961727261;
          }

          v260 = *(v0 + 1464);
          v245 = *(v0 + 1232);
          v246 = *(v0 + 1272);
          v126 = sub_230D7E620(v108, v107, &v277);

          *(v103 + 14) = v126;
          *(v103 + 22) = 2080;
          sub_230D82664(v0 + 1032, v0 + 1064);
          v127 = sub_230E690C0();
          v129 = v128;
          __swift_destroy_boxed_opaque_existential_1((v0 + 1032));
          v130 = sub_230D7E620(v127, v129, &v277);

          *(v103 + 24) = v130;
          _os_log_impl(&dword_230D02000, v101, v102, "[ServicesIntelligenceProvider][logMetrics] Field %s type mismatch. Expected: %s, got: %s", v103, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x23191EAE0](v104, -1, -1);
          MEMORY[0x23191EAE0](v103, -1, -1);

          v260(v246, v245);
          v52 = v263;
          v2 = v265;
        }

        else
        {
          v106 = v53;
          v123 = *(v0 + 1464);
          v124 = *(v0 + 1272);
          v125 = *(v0 + 1232);

          __swift_destroy_boxed_opaque_existential_1((v0 + 1032));
          v123(v124, v125);
        }

        sub_230D8F4B0(&v277, v271, v106);

        __swift_destroy_boxed_opaque_existential_1((v0 + 936));
        v95 = (v0 + 1000);
LABEL_68:
        __swift_destroy_boxed_opaque_existential_1(v95);
LABEL_69:
        v96 = v267;
LABEL_70:
        sub_230E69660();
        v97 = *(v0 + 384);
        *(v0 + 176) = *(v0 + 368);
        *(v0 + 192) = v97;
        *(v0 + 160) = *(v0 + 352);
        if (!*(v0 + 200))
        {
          goto LABEL_117;
        }
      }

      v71 = *(v0 + 1288);
      sub_230E68D70();
      v72 = sub_230E68D60();
      v73 = sub_230E69400();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_230D02000, v72, v73, "[ServicesIntelligenceProvider][logMetrics] property without label.", v74, 2u);
        MEMORY[0x23191EAE0](v74, -1, -1);
      }

      v75 = *(v0 + 1464);
      v76 = *(v0 + 1288);
      v77 = *(v0 + 1232);

      v75(v76, v77);
      goto LABEL_67;
    }

    v52 = v263;
    v96 = v267;
LABEL_117:

    if (*(v256 + 16))
    {
      break;
    }

    v164 = *(v0 + 1256);

    sub_230E68D70();
    v165 = sub_230E68D60();
    v166 = sub_230E693E0();
    v167 = os_log_type_enabled(v165, v166);
    v168 = *(v0 + 1464);
    v169 = *(v0 + 1256);
    v170 = *(v0 + 1232);
    if (v167)
    {
      v171 = swift_slowAlloc();
      *v171 = 0;
      _os_log_impl(&dword_230D02000, v165, v166, "[ServicesIntelligenceProvider][logMetrics] No valid fields for event, skipping", v171, 2u);
      MEMORY[0x23191EAE0](v171, -1, -1);
    }

    else
    {
    }

    v168(v169, v170);
LABEL_164:
    v2 = v265;
LABEL_165:
    v32 = v247 + 1;
    if (v247 + 1 == *(v0 + 1360))
    {
      goto LABEL_172;
    }
  }

  if ((*(v0 + 1864) & 1) == 0)
  {
    LOBYTE(v277) = v96;
    v278 = v262;
    v279 = v2;
    v280 = v3;
    v281 = v52;
    v282 = v239;
    if (!sub_230D6BFA8(v252, v254))
    {

      goto LABEL_165;
    }
  }

  if (*(v0 + 1862))
  {
    *(v0 + 1862);
  }

  v172 = objc_allocWithZone(MEMORY[0x277CEE5A8]);
  v173 = sub_230E69030();

  v174 = [v172 initWithTopic_];

  v175 = sub_230E69030();

  [v174 setEventType_];

  v261 = v174;
  [v174 setAnonymous_];
  v176 = 0;
  v177 = -1 << *(v256 + 32);
  if (-v177 < 64)
  {
    v178 = ~(-1 << -v177);
  }

  else
  {
    v178 = -1;
  }

  v179 = v178 & *(v256 + 64);
  v180 = (63 - v177) >> 6;
  if (v179)
  {
    while (1)
    {
      v181 = v176;
LABEL_138:
      v184 = __clz(__rbit64(v179));
      v179 &= v179 - 1;
      v185 = v184 | (v181 << 6);
      v186 = (*(v256 + 48) + 16 * v185);
      v188 = *v186;
      v187 = v186[1];
      sub_230D82664(*(v256 + 56) + 32 * v185, v0 + 712);
      *(v0 + 208) = v188;
      *(v0 + 216) = v187;
      sub_230D0E394((v0 + 712), (v0 + 224));

      v183 = v181;
LABEL_139:
      v189 = *(v0 + 224);
      *(v0 + 304) = *(v0 + 208);
      *(v0 + 320) = v189;
      *(v0 + 336) = *(v0 + 240);
      if (!*(v0 + 312))
      {
        break;
      }

      v190 = *(v0 + 304);
      sub_230D0E394((v0 + 320), (v0 + 904));
      __swift_project_boxed_opaque_existential_1((v0 + 904), *(v0 + 928));
      v191 = sub_230E698B0();
      __swift_destroy_boxed_opaque_existential_1((v0 + 904));
      v192 = sub_230E69030();

      [v261 setProperty:v191 forBodyKey:v192];

      swift_unknownObjectRelease();
      v176 = v183;
      if (!v179)
      {
        goto LABEL_131;
      }
    }

    v193 = [v261 dictionaryForPosting];
    v194 = sub_230E68F50();

    v195 = 0;
    v197 = v194 + 64;
    v196 = *(v194 + 64);
    v253 = v194;
    v198 = -1 << *(v194 + 32);
    if (-v198 < 64)
    {
      v199 = ~(-1 << -v198);
    }

    else
    {
      v199 = -1;
    }

    v200 = v199 & v196;
    v201 = (63 - v198) >> 6;
    v202 = v0 + 600;
    if ((v199 & v196) == 0)
    {
LABEL_150:
      if (v201 <= v195 + 1)
      {
        v204 = v195 + 1;
      }

      else
      {
        v204 = v201;
      }

      v205 = v204 - 1;
      while (1)
      {
        v203 = v195 + 1;
        if (__OFADD__(v195, 1))
        {
          goto LABEL_174;
        }

        if (v203 >= v201)
        {
          break;
        }

        v200 = *(v197 + 8 * v203);
        ++v195;
        if (v200)
        {
          goto LABEL_157;
        }
      }

      v200 = 0;
      *(v0 + 80) = 0;
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      goto LABEL_158;
    }

    while (1)
    {
      v203 = v195;
LABEL_157:
      v206 = __clz(__rbit64(v200));
      v200 &= v200 - 1;
      v207 = v206 | (v203 << 6);
      sub_230D8FF88(*(v253 + 48) + 40 * v207, v251);
      sub_230D82664(*(v253 + 56) + 32 * v207, v0 + 776);
      v208 = *(v0 + 576);
      *(v0 + 16) = *v251;
      *(v0 + 32) = v208;
      *(v0 + 48) = *(v0 + 592);
      sub_230D0E394((v0 + 776), (v0 + 56));
      v205 = v203;
      v202 = v0 + 600;
LABEL_158:
      *(v0 + 152) = *(v0 + 80);
      v209 = *(v0 + 48);
      *(v0 + 136) = *(v0 + 64);
      *(v0 + 120) = v209;
      v210 = *(v0 + 16);
      *(v0 + 104) = *(v0 + 32);
      *(v0 + 88) = v210;
      if (!*(v0 + 112))
      {
        break;
      }

      v211 = *(v0 + 1248);
      v212 = *(v0 + 104);
      *v202 = *(v0 + 88);
      *(v202 + 16) = v212;
      *(v202 + 32) = *(v0 + 120);
      sub_230D0E394((v0 + 128), (v0 + 808));
      sub_230E68D70();
      sub_230D8FF88(v202, v0 + 640);
      sub_230D82664(v0 + 808, v0 + 840);
      v213 = sub_230E68D60();
      v214 = sub_230E693E0();
      v215 = os_log_type_enabled(v213, v214);
      v216 = *(v0 + 1464);
      v217 = *(v0 + 1232);
      v268 = v217;
      v272 = *(v0 + 1248);
      if (v215)
      {
        v257 = v205;
        v218 = swift_slowAlloc();
        v219 = swift_slowAlloc();
        v277 = v219;
        *v218 = 136315394;
        v255 = v216;
        v220 = sub_230E694F0();
        v222 = v221;
        sub_230D8FFE4(v0 + 640);
        v223 = sub_230D7E620(v220, v222, &v277);

        *(v218 + 4) = v223;
        *(v218 + 12) = 2080;
        sub_230D82664(v0 + 840, v0 + 872);
        v224 = sub_230E690C0();
        v226 = v225;
        __swift_destroy_boxed_opaque_existential_1((v0 + 840));
        v227 = sub_230D7E620(v224, v226, &v277);
        v202 = v0 + 600;

        *(v218 + 14) = v227;
        _os_log_impl(&dword_230D02000, v213, v214, "[ServicesIntelligenceProvider] Field: %s = %s", v218, 0x16u);
        swift_arrayDestroy();
        v228 = v219;
        v3 = v264;
        MEMORY[0x23191EAE0](v228, -1, -1);
        MEMORY[0x23191EAE0](v218, -1, -1);

        v255(v272, v268);
        __swift_destroy_boxed_opaque_existential_1((v0 + 808));
        sub_230D8FFE4(v0 + 600);
        v195 = v257;
        if (!v200)
        {
          goto LABEL_150;
        }
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1((v0 + 840));
        sub_230D8FFE4(v0 + 640);
        v216(v272, v268);
        __swift_destroy_boxed_opaque_existential_1((v0 + 808));
        sub_230D8FFE4(v202);
        v195 = v205;
        if (!v200)
        {
          goto LABEL_150;
        }
      }
    }

    [v240 enqueueEvent_];

    v137 = __OFADD__(v241++, 1);
    if (v137)
    {
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
    }

    goto LABEL_164;
  }

LABEL_131:
  if (v180 <= v176 + 1)
  {
    v182 = v176 + 1;
  }

  else
  {
    v182 = v180;
  }

  v183 = v182 - 1;
  while (1)
  {
    v181 = v176 + 1;
    if (__OFADD__(v176, 1))
    {
      break;
    }

    if (v181 >= v180)
    {
      v179 = 0;
      *(v0 + 224) = 0u;
      *(v0 + 240) = 0u;
      *(v0 + 208) = 0u;
      goto LABEL_139;
    }

    v179 = *(v256 + 64 + 8 * v181);
    ++v176;
    if (v179)
    {
      goto LABEL_138;
    }
  }

  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  v238 = *MEMORY[0x277D85DE8];

  return sub_230E69950();
}

uint64_t sub_230D89848()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = v0[169];

  v15 = v0[184];
  v2 = v0[164];
  v3 = v0[163];
  v4 = v0[162];
  v5 = v0[161];
  v6 = v0[160];
  v7 = v0[159];
  v8 = v0[158];
  v9 = v0[157];
  v10 = v0[156];
  v11 = v0[153];

  v12 = v0[1];
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_230D89974()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[174];
  v2 = v0[173];
  v3 = v0[169];
  v4 = *(v0[155] + 8);
  v4(v0[163], v0[154]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v5 = v0[178];
  v0[183] = v4;
  v0[182] = v5;
  v6 = v0[150];
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D87C14, v6, 0);
}

uint64_t sub_230D89A64()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[174];
  v2 = v0[173];
  v3 = v0[169];
  (*(v0[155] + 8))(v0[163], v0[154]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v0[184] = v0[178];
  v4 = v0[150];
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D89848, v4, 0);
}

uint64_t sub_230D89B48(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = *MEMORY[0x277D85DE8];
  *(v8 + 1248) = v7;
  *(v8 + 1240) = a7;
  *(v8 + 1232) = a6;
  *(v8 + 1224) = a5;
  *(v8 + 1951) = a4;
  *(v8 + 1950) = a3;
  *(v8 + 1216) = a1;
  v11 = sub_230E69A00();
  *(v8 + 1256) = v11;
  v12 = *(v11 - 8);
  *(v8 + 1264) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 1272) = swift_task_alloc();
  v14 = *(a6 - 8);
  *(v8 + 1280) = v14;
  *(v8 + 1288) = *(v14 + 64);
  *(v8 + 1296) = swift_task_alloc();
  *(v8 + 1304) = swift_task_alloc();
  v15 = sub_230E68D80();
  *(v8 + 1312) = v15;
  v16 = *(v15 - 8);
  *(v8 + 1320) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 1328) = swift_task_alloc();
  *(v8 + 1336) = swift_task_alloc();
  *(v8 + 1344) = swift_task_alloc();
  *(v8 + 1352) = swift_task_alloc();
  *(v8 + 1360) = swift_task_alloc();
  *(v8 + 1368) = swift_task_alloc();
  *(v8 + 1376) = swift_task_alloc();
  *(v8 + 1384) = swift_task_alloc();
  *(v8 + 1392) = swift_task_alloc();
  *(v8 + 1952) = *a2;
  *(v8 + 1400) = *(a2 + 8);
  v18 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D89D8C, v7, 0);
}

uint64_t sub_230D89D8C()
{
  v27 = v0;
  v26[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1400);
  v2 = *(v0 + 1392);
  sub_230E68D70();
  swift_bridgeObjectRetain_n();
  v3 = sub_230E68D60();
  v4 = sub_230E693F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1952);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26[0] = v7;
    *v6 = 136315394;
    v8 = 0x8000000230E802F0;
    v9 = 0xD00000000000001FLL;
    if (v5 != 1)
    {
      v9 = 0xD000000000000012;
      v8 = 0x8000000230E80310;
    }

    if (v5)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0x6F5F706D615F7078;
    }

    if (v5)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0xEE00676F6C5F7064;
    }

    v12 = *(v0 + 1400);
    v13 = *(v0 + 1320);
    v24 = *(v0 + 1312);
    v25 = *(v0 + 1392);
    v14 = *(v0 + 1232);
    v15 = sub_230D7E620(v10, v11, v26);

    *(v6 + 4) = v15;
    *(v6 + 12) = 2048;
    v16 = sub_230E69290();

    *(v6 + 14) = v16;

    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][logMetrics] Starting with topic: %s and %ld events", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);

    (*(v13 + 8))(v25, v24);
  }

  else
  {
    v17 = *(v0 + 1400);
    v18 = *(v0 + 1392);
    v19 = *(v0 + 1320);
    v20 = *(v0 + 1312);
    swift_bridgeObjectRelease_n();

    (*(v19 + 8))(v18, v20);
  }

  *(v0 + 1949) = 39;
  v21 = swift_task_alloc();
  *(v0 + 1408) = v21;
  *v21 = v0;
  v21[1] = sub_230D8A080;
  v22 = *MEMORY[0x277D85DE8];

  return static RequestContext.from(_:correlationID:)(v0 + 440, (v0 + 1949), 0, 0);
}

uint64_t sub_230D8A080()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 1408);
  v2 = *(*v0 + 1248);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D8A1BC, v2, 0);
}

uint64_t sub_230D8A1BC()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1248);
  v2 = *(v0 + 440);
  v3 = *(v0 + 448);
  v4 = *(v0 + 456);
  *(v0 + 1416) = v4;
  v5 = *(v0 + 464);
  v6 = *(v0 + 465);
  v7 = *(v0 + 472);
  *(v0 + 1424) = v7;
  *(v0 + 600) = v2;
  *(v0 + 608) = v3;
  *(v0 + 616) = v4;
  *(v0 + 624) = v5;
  *(v0 + 625) = v6;
  *(v0 + 632) = v7;

  v8 = swift_task_alloc();
  *(v0 + 1432) = v8;
  *v8 = v0;
  v8[1] = sub_230D8A2D8;
  v9 = *(v0 + 1248);
  v10 = *MEMORY[0x277D85DE8];

  return sub_230D6F7D0(39, v0 + 600, v9, v9);
}

uint64_t sub_230D8A2D8(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *(*v2 + 1432);
  v4 = *v2;
  v4[180] = a1;

  if (v1)
  {
    v5 = v4[178];
    v6 = v4[177];

    v7 = v4[174];
    v8 = v4[173];
    v9 = v4[172];
    v10 = v4[171];
    v11 = v4[170];
    v12 = v4[169];
    v13 = v4[168];
    v14 = v4[167];
    v15 = v4[166];
    v24 = v4[163];
    v25 = v4[162];
    v16 = v4[159];

    v17 = v4[1];
    v18 = *MEMORY[0x277D85DE8];

    return v17();
  }

  else
  {
    v20 = v4[178];
    v21 = v4[177];
    v22 = v4[156];

    v23 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230D8A544, v22, 0);
  }
}

uint64_t sub_230D8A544()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1400);
  v2 = *(v0 + 1232);
  *(v0 + 1200) = MEMORY[0x277D84FA0];
  *(v0 + 1448) = sub_230E69290();
  *(v0 + 1948) = 40;
  v3 = swift_task_alloc();
  *(v0 + 1456) = v3;
  *v3 = v0;
  v3[1] = sub_230D8A638;
  v4 = *MEMORY[0x277D85DE8];

  return static RequestContext.from(_:correlationID:)(v0 + 520, (v0 + 1948), 0, 0);
}

uint64_t sub_230D8A638()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 1456);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D8A760, 0, 0);
}

uint64_t sub_230D8A760()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 520);
  *(v0 + 1953) = v1;
  v2 = *(v0 + 528);
  *(v0 + 1464) = v2;
  v3 = *(v0 + 536);
  *(v0 + 1472) = v3;
  v4 = *(v0 + 544);
  *(v0 + 1954) = v4;
  v5 = *(v0 + 545);
  *(v0 + 1955) = v5;
  v6 = *(v0 + 552);
  *(v0 + 1480) = v6;
  *(v0 + 400) = v1;
  *(v0 + 408) = v2;
  *(v0 + 416) = v3;
  *(v0 + 424) = v4;
  *(v0 + 425) = v5;
  *(v0 + 432) = v6;
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 1440);
  v8 = qword_27DB5A438;
  *(v0 + 1488) = qword_27DB5A438;

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D8A898, v8, 0);
}

uint64_t sub_230D8A898()
{
  v33 = v0;
  v32[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1480);
  v2 = *(v0 + 1472);
  v3 = *(v0 + 1384);
  sub_230E68D70();

  v4 = sub_230E68D60();
  v5 = sub_230E693E0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1472);
    v7 = *(v0 + 1464);
    v8 = *(v0 + 1953);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32[0] = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_230D7E620(0xD00000000000001CLL, 0x8000000230E808D0, v32);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_230D7E620(v7, v6, v32);
    *(v9 + 22) = 2080;
    v30 = 0x6C616E7265746E69;
    v31 = 0xE90000000000002ELL;
    v29 = v8;
    v11 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v11);

    v12 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v32);

    *(v9 + 24) = v12;
    _os_log_impl(&dword_230D02000, v4, v5, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v10, -1, -1);
    MEMORY[0x23191EAE0](v9, -1, -1);
  }

  v13 = *(v0 + 1480);
  v14 = *(v0 + 1955);
  v15 = *(v0 + 1953);
  LOBYTE(v30) = *(v0 + 1954);
  BYTE1(v30) = v14;
  v31 = v13;
  v29 = 40;
  LOBYTE(v32[0]) = v15;

  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v29, v32);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 1496) = CFAbsoluteTimeGetCurrent();
    *(v0 + 1568) = 0u;
    *(v0 + 1584) = 0u;
    *(v0 + 1600) = 0u;
    *(v0 + 1616) = 0u;
    *(v0 + 1632) = 0u;
    *(v0 + 1648) = 0u;
    *(v0 + 1664) = 0u;
    *(v0 + 1680) = 0u;
    *(v0 + 1696) = 0u;
    *(v0 + 1712) = 0u;
    *(v0 + 1728) = 0u;
    *(v0 + 1744) = 0u;
    *(v0 + 1760) = 0u;
    *(v0 + 1776) = 0u;
    *(v0 + 1792) = 0u;
    *(v0 + 1808) = 0u;
    *(v0 + 1824) = 0u;
    *(v0 + 1840) = 0u;
    *(v0 + 1856) = 0u;
    *(v0 + 1872) = 0u;
    *(v0 + 1888) = 0u;
    *(v0 + 1904) = 0u;
    *(v0 + 1920) = 0u;
    *(v0 + 1936) = 0;
    *(v0 + 1940) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 1568), (v0 + 1940));
    *(v0 + 1944) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 1616);
      v20 = *(v0 + 1688);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 1520) = v18;
    *(v0 + 1208) = 0;
    v23 = swift_task_alloc();
    *(v0 + 1528) = v23;
    *v23 = v0;
    v24 = sub_230D8ADDC;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 1504) = v23;
    *v23 = v0;
    v24 = sub_230D8AC84;
  }

  v23[1] = v24;
  v25 = *(v0 + 1440);
  v26 = *(v0 + 1952);
  v27 = *MEMORY[0x277D85DE8];

  return sub_230E41A9C(v0 + 160, v26, v25, v0 + 400);
}

uint64_t sub_230D8AC84()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 1504);
  v4 = *v1;
  *(*v1 + 1512) = v0;

  v5 = *(v2 + 1488);
  if (v0)
  {
    v6 = sub_230D8D1E8;
  }

  else
  {
    v6 = sub_230D8D0F8;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D8ADDC()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 1528);
  v4 = *v1;
  *(*v1 + 1536) = v0;

  v5 = *(v2 + 1488);
  if (v0)
  {
    v6 = sub_230D8B058;
  }

  else
  {
    v6 = sub_230D8AF34;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D8AF34()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1480);
  v2 = *(v0 + 1472);
  v3 = *(v0 + 1440);
  v4 = *(v0 + 1384);
  v5 = *(v0 + 1320);
  v6 = *(v0 + 1312);
  sub_230D340D4(40, *(v0 + 1520), *(v0 + 1944) != 0, v0 + 400, (v0 + 1208), *(v0 + 1496));
  v7 = *(v5 + 8);
  v7(v4, v6);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v8 = *(v0 + 1536);
  *(v0 + 1552) = v7;
  *(v0 + 1544) = v8;
  v9 = *(v0 + 1248);
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D8B1B8, v9, 0);
}

uint64_t sub_230D8B058()
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1536);
  v2 = *(v0 + 1520);
  v3 = *(v0 + 1496);
  v14 = *(v0 + 1480);
  v4 = *(v0 + 1472);
  v5 = *(v0 + 1440);
  v6 = *(v0 + 1384);
  v7 = *(v0 + 1320);
  v8 = *(v0 + 1312);
  v9 = *(v0 + 1944) != 0;
  *(v0 + 1208) = v1;
  swift_willThrow();
  v10 = v1;
  sub_230D340D4(40, v2, v9, v0 + 400, (v0 + 1208), v3);
  MEMORY[0x23191E910](v1);
  (*(v7 + 8))(v6, v8);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  *(v0 + 1560) = *(v0 + 1536);
  v11 = *(v0 + 1248);
  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D8CFB0, v11, 0);
}

uint64_t sub_230D8B1B8()
{
  v315 = v0;
  v314 = *MEMORY[0x277D85DE8];
  v1 = v0 + 20;
  if (!v0[21])
  {
    v9 = v0[180];
    v10 = *(v0 + 1952);
LABEL_9:
    sub_230D8FDD0();
    swift_allocError();
    *v12 = v10;
    swift_willThrow();

    v13 = v0[174];
    v14 = v0[173];
    v15 = v0[172];
    v16 = v0[171];
    v17 = v0[170];
    v18 = v0[169];
    v19 = v0[168];
    v20 = v0[167];
    v21 = v307[166];
    v22 = v307[163];
    v301 = v307[162];
    v304 = v307[159];

    v23 = v307[1];
    v24 = *MEMORY[0x277D85DE8];
    goto LABEL_10;
  }

  v280 = v0[20];
  v287 = v0[21];
  v2 = v0[22];
  v3 = v0[23];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[193];
  sub_230DCB5D4(&v308);
  if (v6)
  {
    MEMORY[0x23191E910](v6);
    v7 = v280;
    v8 = v287;
LABEL_8:
    sub_230D8FE24(v7, v8);
    v11 = v0[180];
    v10 = *(v0 + 1952) | 0x40;
    goto LABEL_9;
  }

  if (!sub_230D829F0(v308, v287))
  {
    v7 = v280;
    v8 = v287;
    goto LABEL_8;
  }

  sub_230DCB5D4(&v308);
  v270 = v308;
  if (v0[153])
  {
    v26 = v0[153];
  }

  else
  {
    v27 = sub_230E69030();
    v28 = sub_230E69030();
    v26 = [objc_opt_self() bagForProfile:v27 profileVersion:v28];
  }

  swift_unknownObjectRetain();
  v262 = v4;
  v263 = sub_230D8FE88(v26);
  v29 = v0[175];
  v30 = v0[154];
  swift_unknownObjectRelease();

  if (!sub_230E69290())
  {
    v265 = 0;
LABEL_171:
    v250 = v0[181];
    v251 = v0[180];
    v252 = v0[175];
    v253 = v0[174];
    v254 = v307[173];
    v255 = v307[172];
    v256 = v307[171];
    v286 = v307[170];
    v289 = v307[169];
    v291 = v307[168];
    v296 = v307[167];
    v299 = v307[166];
    v300 = v307[163];
    v303 = v307[162];
    v306 = v307[159];
    v257 = v307[152];

    sub_230D8FE24(v280, v287);

    v258 = v307[150];
    *v257 = v250;
    v257[1] = v265;
    v257[2] = v258;

    v23 = v307[1];
    v259 = *MEMORY[0x277D85DE8];
LABEL_10:

    return v23();
  }

  v265 = 0;
  v31 = 0;
  v285 = v0 + 2;
  v274 = (v0 + 80);
  v261 = v0[161];
  v32 = v0[160];
  v272 = (v32 + 16);
  v267 = (v32 + 32);
  v268 = (v0[155] + 24);
  v266 = (v0[158] + 8);
  v302 = v0[165] + 8;
  v269 = v32;
  v264 = (v32 + 8);
  v292 = v3;
  v288 = v5;
  v273 = v2;
  v305 = v0 + 20;
  v279 = v0 + 11;
  while (2)
  {
    v35 = v0[175];
    v36 = v0[154];
    v37 = sub_230E69280();
    sub_230E69250();
    if (v37)
    {
      v38 = *(v269 + 16);
      v38(v0[163], v0[175] + ((*(v269 + 80) + 32) & ~*(v269 + 80)) + *(v269 + 72) * v31, v0[154]);
    }

    else
    {
      v246 = v0[154];
      result = sub_230E69550();
      if (v261 != 8)
      {
        __break(1u);
        return result;
      }

      v247 = result;
      v1 = v305;
      v0 = v307;
      v248 = v307[163];
      v249 = v307[154];
      v307[149] = v247;
      v38 = *v272;
      (*v272)(v248, (v305 + 129), v249);
      swift_unknownObjectRelease();
      v3 = v292;
      v5 = v288;
      v2 = v273;
    }

    v271 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_178;
    }

    v39 = *(v0 + 1952);
    (*v267)(v0[162], v0[163], v0[154]);
    if (!v39)
    {

      goto LABEL_27;
    }

    v40 = sub_230E698C0();

    if (v40)
    {
LABEL_27:
      v308 = 0;
      v309 = 0xE000000000000000;
      if (v270 > 4)
      {
        v47 = 0x65676175676E616CLL;
        if (v270 != 8)
        {
          v47 = 0x7974697275636573;
        }

        v48 = 0xE800000000000000;
        if (v270 == 7)
        {
          v47 = 0x6E6F6D6D6F63;
          v48 = 0xE600000000000000;
        }

        v49 = 0x7374736163646F70;
        if (v270 != 5)
        {
          v49 = 0x6F65646976;
        }

        v50 = 0xE500000000000000;
        if (v270 == 5)
        {
          v50 = 0xE800000000000000;
        }

        if (v270 <= 6)
        {
          v45 = v49;
        }

        else
        {
          v45 = v47;
        }

        if (v270 <= 6)
        {
          v46 = v50;
        }

        else
        {
          v46 = v48;
        }
      }

      else if (v270 <= 1)
      {
        if (v270)
        {
          v46 = 0xE400000000000000;
          v45 = 1936748641;
        }

        else
        {
          v46 = 0xE800000000000000;
          v45 = 0x6C616E7265746E69;
        }
      }

      else
      {
        v43 = 0x7373656E746966;
        if (v270 != 3)
        {
          v43 = 0x636973756DLL;
        }

        v44 = 0xE700000000000000;
        if (v270 != 3)
        {
          v44 = 0xE500000000000000;
        }

        if (v270 == 2)
        {
          v45 = 0x736B6F6F62;
        }

        else
        {
          v45 = v43;
        }

        if (v270 == 2)
        {
          v46 = 0xE500000000000000;
        }

        else
        {
          v46 = v44;
        }
      }

      v51 = v0[162];
      v52 = v0[155];
      v53 = v0[154];
      MEMORY[0x23191DA00](v45, v46);

      MEMORY[0x23191DA00](46, 0xE100000000000000);
      v54 = (*v268)(v53, v52);
      MEMORY[0x23191DA00](v54);

      v277 = v308;
      v283 = v309;
      v1 = v305;
      goto LABEL_54;
    }

    v41 = v0[162];
    v277 = (*v268)(v0[154], v0[155]);
    v283 = v42;
LABEL_54:
    v55 = v0[162];
    v56 = v0[159];
    v57 = v0[157];
    v58 = v0[154];
    v281 = sub_230D0E264(MEMORY[0x277D84F90]);
    v0[96] = v58;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 73);
    v38(boxed_opaque_existential_0, v55, v58);
    sub_230E699E0();
    sub_230E699F0();
    (*v266)(v56, v57);
    sub_230E695E0();

    while (1)
    {
      sub_230E69660();
      v60 = v1[8];
      v1[4] = v1[7];
      v1[5] = v60;
      v1[3] = v1[6];
      if (!v0[31])
      {
        break;
      }

      v62 = v0[26];
      v61 = v0[27];
      sub_230D0E394(v0 + 14, (v1 + 744));
      if (v61)
      {
        v297 = v62;
        v63 = v0[172];
        sub_230E68D70();
        sub_230D82664(v1 + 744, v1 + 776);

        v64 = sub_230E68D60();
        v65 = sub_230E693F0();

        v66 = os_log_type_enabled(v64, v65);
        v293 = v0[194];
        v67 = v0[172];
        v68 = v0[164];
        if (v66)
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v308 = v70;
          *v69 = 136315394;
          *(v69 + 4) = sub_230D7E620(v297, v61, &v308);
          *(v69 + 12) = 2080;
          sub_230D82664(v1 + 776, v1 + 1000);
          v71 = v61;
          v72 = sub_230E690C0();
          v74 = v73;
          __swift_destroy_boxed_opaque_existential_1(v1 + 97);
          v75 = sub_230D7E620(v72, v74, &v308);
          v2 = v273;

          *(v69 + 14) = v75;
          v61 = v71;
          _os_log_impl(&dword_230D02000, v64, v65, "[ServicesIntelligenceProvider][logMetrics] processing event with label: %s and value: %s", v69, 0x16u);
          swift_arrayDestroy();
          v76 = v70;
          v5 = v288;
          MEMORY[0x23191EAE0](v76, -1, -1);
          v77 = v69;
          v3 = v292;
          v0 = v307;
          MEMORY[0x23191EAE0](v77, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v1 + 97);
        }

        v293(v67, v68);
        v86 = v297;
        if (*(v3 + 16) && (v87 = sub_230DA41A0(v297, v61), (v88 & 1) != 0))
        {
          v89 = (*(v3 + 56) + 16 * v87);
          v91 = *v89;
          v90 = v89[1];
          if (v297 == 0x707954746E657665 && v61 == 0xE900000000000065 || (sub_230E698C0() & 1) != 0)
          {
            v0[124] = MEMORY[0x277D837D0];
            v0[121] = v277;
            v0[122] = v283;

            v1 = v305;
          }

          else
          {
            v1 = v305;
            sub_230D82664((v305 + 93), (v305 + 101));
          }

          if (*(v1 + 1790) == 1)
          {
            v140 = v0[156];
            sub_230D8D4F8(v1 + 101, v1 + 117);
            sub_230D0E394((v1 + 936), (v1 + 968));
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v308 = v281;
            v142 = v61;
            v143 = sub_230DA41A0(v297, v61);
            v145 = *(v281 + 16);
            v146 = (v144 & 1) == 0;
            v147 = __OFADD__(v145, v146);
            v148 = v145 + v146;
            if (v147)
            {
              goto LABEL_179;
            }

            v149 = v144;
            if (*(v281 + 24) < v148)
            {
              sub_230DB7074(v148, isUniquelyReferenced_nonNull_native);
              v143 = sub_230DA41A0(v297, v142);
              if ((v149 & 1) != (v150 & 1))
              {
                goto LABEL_174;
              }

              goto LABEL_100;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
LABEL_100:
              if (v149)
              {
                goto LABEL_101;
              }
            }

            else
            {
              v165 = v143;
              sub_230DBA17C();
              v143 = v165;
              if (v149)
              {
LABEL_101:
                v151 = v143;

                v281 = v308;
                v152 = (v308[7] + 32 * v151);
                __swift_destroy_boxed_opaque_existential_1(v152);
                v153 = (v1 + 968);
LABEL_109:
                sub_230D0E394(v153, v152);
                __swift_destroy_boxed_opaque_existential_1(v1 + 93);
                v85 = v1 + 101;
                goto LABEL_64;
              }
            }

            v166 = v308;
            v308[(v143 >> 6) + 8] |= 1 << v143;
            v167 = (v166[6] + 16 * v143);
            *v167 = v297;
            v167[1] = v142;
            sub_230D0E394((v1 + 968), (v166[7] + 32 * v143));
            __swift_destroy_boxed_opaque_existential_1(v1 + 93);
            v168 = v166[2];
            v147 = __OFADD__(v168, 1);
            v169 = v168 + 1;
            if (v147)
            {
              goto LABEL_180;
            }

LABEL_116:
            v281 = v166;
            v166[2] = v169;
            v85 = v1 + 101;
            goto LABEL_64;
          }

          v105 = sub_230E69680();
          if (v105 > 4)
          {
            v116 = v307[170];
            sub_230E68D70();

            v117 = sub_230E68D60();
            v118 = sub_230E693E0();

            v119 = os_log_type_enabled(v117, v118);
            v120 = v307[194];
            v121 = v307[170];
            v122 = v307[164];
            if (v119)
            {
              v123 = v61;
              v124 = swift_slowAlloc();
              v125 = swift_slowAlloc();
              v308 = v125;
              *v124 = 136315394;
              v126 = sub_230D7E620(v91, v90, &v308);

              *(v124 + 4) = v126;
              *(v124 + 12) = 2080;
              v127 = v297;
              *(v124 + 14) = sub_230D7E620(v297, v123, &v308);
              _os_log_impl(&dword_230D02000, v117, v118, "[ServicesIntelligenceProvider][logMetrics] Unknown type %s in schema for field %s, omitting", v124, 0x16u);
              swift_arrayDestroy();
              v128 = v125;
              v2 = v273;
              MEMORY[0x23191EAE0](v128, -1, -1);
              v129 = v124;
              v61 = v123;
              MEMORY[0x23191EAE0](v129, -1, -1);

              v120(v121, v122);
              v5 = v288;
            }

            else
            {

              v120(v121, v122);
              v5 = v288;
              v127 = v297;
            }

            v1 = v305;
            sub_230D8F4B0(&v308, v127, v61);

            __swift_destroy_boxed_opaque_existential_1(v305 + 93);
            __swift_destroy_boxed_opaque_existential_1(v305 + 101);
            v0 = v307;
            goto LABEL_56;
          }

          v106 = v105;

          if (sub_230D8E084(v1 + 808, v106))
          {
            v0 = v307;
            v154 = v307[156];
            sub_230D8D4F8(v1 + 101, v1 + 113);
            v155 = swift_isUniquelyReferenced_nonNull_native();
            v308 = v281;
            v156 = v61;
            v157 = sub_230DA41A0(v297, v61);
            v159 = *(v281 + 16);
            v160 = (v158 & 1) == 0;
            v147 = __OFADD__(v159, v160);
            v161 = v159 + v160;
            if (v147)
            {
              goto LABEL_181;
            }

            v162 = v158;
            v3 = v292;
            if (*(v281 + 24) < v161)
            {
              sub_230DB7074(v161, v155);
              v157 = sub_230DA41A0(v297, v156);
              if ((v162 & 1) != (v163 & 1))
              {
                goto LABEL_174;
              }

              goto LABEL_107;
            }

            if (v155)
            {
LABEL_107:
              if (v162)
              {
                goto LABEL_108;
              }
            }

            else
            {
              v170 = v157;
              sub_230DBA17C();
              v157 = v170;
              if (v162)
              {
LABEL_108:
                v164 = v157;

                v281 = v308;
                v152 = (v308[7] + 32 * v164);
                __swift_destroy_boxed_opaque_existential_1(v152);
                v153 = (v1 + 904);
                goto LABEL_109;
              }
            }

            v166 = v308;
            v308[(v157 >> 6) + 8] |= 1 << v157;
            v171 = (v166[6] + 16 * v157);
            *v171 = v297;
            v171[1] = v156;
            sub_230D0E394((v1 + 904), (v166[7] + 32 * v157));
            __swift_destroy_boxed_opaque_existential_1(v1 + 93);
            v172 = v166[2];
            v147 = __OFADD__(v172, 1);
            v169 = v172 + 1;
            if (v147)
            {
              goto LABEL_182;
            }

            goto LABEL_116;
          }

          v0 = v307;
          v107 = v307[171];
          sub_230E68D70();
          sub_230D82664(v1 + 808, v1 + 840);

          v108 = sub_230E68D60();
          v109 = sub_230E693E0();

          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            v308 = v111;
            *v110 = 136315650;
            *(v110 + 4) = sub_230D7E620(v297, v61, &v308);
            *(v110 + 12) = 2080;
            if (v106 <= 1u)
            {
              v113 = v61;
              v112 = v307;
              v114 = 0xE600000000000000;
              if (v106)
              {
                v115 = 0x7265626D756ELL;
              }

              else
              {
                v115 = 0x676E69727473;
              }
            }

            else
            {
              v112 = v307;
              v113 = v61;
              if (v106 == 2)
              {
                v114 = 0xE400000000000000;
                v115 = 1819242338;
              }

              else if (v106 == 3)
              {
                v114 = 0xEA00000000007972;
                v115 = 0x616E6F6974636964;
              }

              else
              {
                v114 = 0xE500000000000000;
                v115 = 0x7961727261;
              }
            }

            v294 = v112[194];
            v134 = v307[171];
            v275 = v307[164];
            v135 = sub_230D7E620(v115, v114, &v308);

            *(v110 + 14) = v135;
            *(v110 + 22) = 2080;
            v1 = v305;
            sub_230D82664((v305 + 105), (v305 + 109));
            v136 = sub_230E690C0();
            v138 = v137;
            __swift_destroy_boxed_opaque_existential_1(v305 + 105);
            v139 = sub_230D7E620(v136, v138, &v308);

            *(v110 + 24) = v139;
            _os_log_impl(&dword_230D02000, v108, v109, "[ServicesIntelligenceProvider][logMetrics] Field %s type mismatch. Expected: %s, got: %s", v110, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x23191EAE0](v111, -1, -1);
            MEMORY[0x23191EAE0](v110, -1, -1);

            v0 = v307;
            v294(v134, v275);
            v5 = v288;
            v130 = v273;
          }

          else
          {
            v130 = v2;
            v113 = v61;
            v131 = v307[194];
            v132 = v307[171];
            v133 = v307[164];

            __swift_destroy_boxed_opaque_existential_1(v1 + 105);
            v131(v132, v133);
          }

          sub_230D8F4B0(&v308, v297, v113);

          __swift_destroy_boxed_opaque_existential_1(v1 + 93);
          __swift_destroy_boxed_opaque_existential_1(v1 + 101);
          v3 = v292;
          v2 = v130;
        }

        else
        {
          v92 = v2;
          v93 = v0[169];
          sub_230E68D70();

          v94 = sub_230E68D60();
          v95 = v61;
          v96 = sub_230E693E0();

          v97 = os_log_type_enabled(v94, v96);
          v98 = v0[194];
          v99 = v0[169];
          v100 = v0[164];
          if (v97)
          {
            v101 = swift_slowAlloc();
            v102 = swift_slowAlloc();
            v308 = v102;
            *v101 = 136315138;
            *(v101 + 4) = sub_230D7E620(v297, v95, &v308);
            _os_log_impl(&dword_230D02000, v94, v96, "[ServicesIntelligenceProvider][logMetrics] Field %s not found in schema, omitting", v101, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v102);
            v103 = v102;
            v5 = v288;
            MEMORY[0x23191EAE0](v103, -1, -1);
            v104 = v101;
            v86 = v297;
            MEMORY[0x23191EAE0](v104, -1, -1);
          }

          v98(v99, v100);
          v1 = v305;
          sub_230D8F4B0(&v308, v86, v95);

          __swift_destroy_boxed_opaque_existential_1(v305 + 93);
          v2 = v92;
LABEL_56:
          v3 = v292;
        }
      }

      else
      {
        v78 = v0[168];
        sub_230E68D70();
        v79 = sub_230E68D60();
        v80 = sub_230E69400();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&dword_230D02000, v79, v80, "[ServicesIntelligenceProvider][logMetrics] property without label.", v81, 2u);
          MEMORY[0x23191EAE0](v81, -1, -1);
        }

        v82 = v0[194];
        v83 = v0[168];
        v84 = v0[164];

        v82(v83, v84);
        v85 = v1 + 93;
LABEL_64:
        __swift_destroy_boxed_opaque_existential_1(v85);
      }
    }

    if (!*(v281 + 16))
    {
      v173 = v0[167];

      sub_230E68D70();
      v174 = sub_230E68D60();
      v175 = sub_230E693E0();
      v176 = os_log_type_enabled(v174, v175);
      v177 = v0[194];
      v178 = v0[167];
      v179 = v0[164];
      v180 = v0[162];
      v181 = v0[154];
      if (v176)
      {
        v182 = swift_slowAlloc();
        *v182 = 0;
        _os_log_impl(&dword_230D02000, v174, v175, "[ServicesIntelligenceProvider][logMetrics] No valid fields for event, skipping", v182, 2u);
        v183 = v182;
        v5 = v288;
        MEMORY[0x23191EAE0](v183, -1, -1);
      }

      v177(v178, v179);
      (*v264)(v180, v181);
      v2 = v273;
      v1 = v305;
LABEL_19:
      v31 = v271;
      v33 = v0[175];
      v34 = v0[154];
      if (v271 == sub_230E69290())
      {
        goto LABEL_171;
      }

      continue;
    }

    break;
  }

  if ((*(v1 + 1791) & 1) == 0)
  {
    LOBYTE(v308) = v280;
    v309 = v287;
    v310 = v2;
    v311 = v3;
    v312 = v5;
    v313 = v262;
    if (!sub_230D6BFA8(v277, v283))
    {
      (*v264)(v0[162], v0[154]);

      goto LABEL_19;
    }
  }

  if (*(v0 + 1952))
  {
    *(v0 + 1952);
  }

  v184 = objc_allocWithZone(MEMORY[0x277CEE5A8]);
  v185 = sub_230E69030();

  v186 = [v184 initWithTopic_];

  v187 = sub_230E69030();

  [v186 setEventType_];

  v284 = v186;
  [v186 setAnonymous_];
  v188 = 0;
  v189 = -1 << *(v281 + 32);
  if (-v189 < 64)
  {
    v190 = ~(-1 << -v189);
  }

  else
  {
    v190 = -1;
  }

  v191 = v190 & *(v281 + 64);
  v192 = (63 - v189) >> 6;
  if (v191)
  {
    while (1)
    {
      v193 = v188;
LABEL_136:
      v196 = __clz(__rbit64(v191));
      v191 &= v191 - 1;
      v197 = v196 | (v193 << 6);
      v198 = (*(v281 + 48) + 16 * v197);
      v200 = *v198;
      v199 = v198[1];
      v201 = v305;
      sub_230D82664(*(v281 + 56) + 32 * v197, (v305 + 69));
      v0[44] = v200;
      v0[45] = v199;
      sub_230D0E394(v305 + 69, v0 + 23);

      v195 = v193;
LABEL_137:
      v202 = v201[13];
      v201[9] = v201[12];
      v201[10] = v202;
      v201[11] = v201[14];
      if (!v0[39])
      {
        break;
      }

      v203 = v0[38];
      sub_230D0E394(v0 + 20, (v201 + 712));
      __swift_project_boxed_opaque_existential_1(v201 + 89, v0[112]);
      v204 = sub_230E698B0();
      __swift_destroy_boxed_opaque_existential_1(v201 + 89);
      v205 = sub_230E69030();

      [v284 setProperty:v204 forBodyKey:v205];

      swift_unknownObjectRelease();
      v188 = v195;
      if (!v191)
      {
        goto LABEL_129;
      }
    }

    v206 = [v284 dictionaryForPosting];
    v207 = sub_230E68F50();

    v208 = 0;
    v209 = v207 + 64;
    v278 = v207;
    v210 = -1 << *(v207 + 32);
    if (-v210 < 64)
    {
      v211 = ~(-1 << -v210);
    }

    else
    {
      v211 = -1;
    }

    v212 = v211 & *(v207 + 64);
    v213 = (63 - v210) >> 6;
    v5 = v288;
    v1 = v201;
    v276 = v207 + 64;
    while (1)
    {
      if (v212)
      {
        v214 = v3;
        v215 = v5;
        v216 = v208;
LABEL_157:
        v220 = __clz(__rbit64(v212));
        v212 &= v212 - 1;
        v221 = v220 | (v216 << 6);
        sub_230D8FF88(*(v278 + 48) + 40 * v221, v274);
        sub_230D82664(*(v278 + 56) + 32 * v221, v1 + 520);
        v222 = *(v274 + 16);
        *v279 = *v274;
        *(v279 + 1) = v222;
        v279[4] = *(v274 + 32);
        sub_230D0E394((v1 + 520), v0 + 8);
        v218 = v216;
        v223 = v279;
        v219 = v285;
        v5 = v215;
        v3 = v214;
        v209 = v276;
      }

      else
      {
        v217 = v213 <= v208 + 1 ? v208 + 1 : v213;
        v218 = v217 - 1;
        v219 = v285;
        while (1)
        {
          v216 = v208 + 1;
          if (__OFADD__(v208, 1))
          {
            goto LABEL_173;
          }

          if (v216 >= v213)
          {
            break;
          }

          v212 = *(v209 + 8 * v216);
          ++v208;
          if (v212)
          {
            v214 = v3;
            v215 = v5;
            goto LABEL_157;
          }
        }

        v212 = 0;
        v223 = v279;
        v279[8] = 0;
        *(v279 + 2) = 0u;
        *(v279 + 3) = 0u;
        *v279 = 0u;
        *(v279 + 1) = 0u;
      }

      v219[8] = v223[8];
      v224 = *(v223 + 3);
      *(v219 + 2) = *(v223 + 2);
      *(v219 + 3) = v224;
      v225 = *(v223 + 1);
      *v219 = *v223;
      *(v219 + 1) = v225;
      if (!v0[5])
      {
        break;
      }

      v298 = v218;
      v226 = v0[166];
      v227 = *(v219 + 1);
      v1[25] = *v219;
      v1[26] = v227;
      *(v1 + 54) = v219[4];
      sub_230D0E394(v0 + 7, (v1 + 616));
      sub_230E68D70();
      sub_230D8FF88((v1 + 25), (v1 + 20));
      sub_230D82664(v1 + 616, v1 + 648);
      v228 = sub_230E68D60();
      v229 = sub_230E693E0();
      v230 = os_log_type_enabled(v228, v229);
      v231 = v0[194];
      v295 = v0[166];
      v290 = v0[164];
      if (v230)
      {
        v232 = swift_slowAlloc();
        v233 = swift_slowAlloc();
        v308 = v233;
        *v232 = 136315394;
        v282 = v231;
        v234 = sub_230E694F0();
        v236 = v235;
        sub_230D8FFE4((v305 + 40));
        v237 = sub_230D7E620(v234, v236, &v308);

        *(v232 + 4) = v237;
        *(v232 + 12) = 2080;
        sub_230D82664((v305 + 81), (v305 + 85));
        v238 = sub_230E690C0();
        v240 = v239;
        __swift_destroy_boxed_opaque_existential_1(v305 + 81);
        v241 = sub_230D7E620(v238, v240, &v308);
        v1 = v305;

        *(v232 + 14) = v241;
        _os_log_impl(&dword_230D02000, v228, v229, "[ServicesIntelligenceProvider] Field: %s = %s", v232, 0x16u);
        swift_arrayDestroy();
        v242 = v233;
        v3 = v292;
        v0 = v307;
        MEMORY[0x23191EAE0](v242, -1, -1);
        v243 = v232;
        v5 = v288;
        MEMORY[0x23191EAE0](v243, -1, -1);

        v282(v295, v290);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v1 + 81);
        sub_230D8FFE4((v1 + 20));
        v231(v295, v290);
      }

      __swift_destroy_boxed_opaque_existential_1(v1 + 77);
      sub_230D8FFE4((v1 + 25));
      v208 = v298;
    }

    v244 = v0[162];
    v245 = v0[154];

    [v263 enqueueEvent_];

    (*v264)(v244, v245);
    v147 = __OFADD__(v265++, 1);
    if (!v147)
    {
      v2 = v273;
      goto LABEL_19;
    }

LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
  }

LABEL_129:
  if (v192 <= v188 + 1)
  {
    v194 = v188 + 1;
  }

  else
  {
    v194 = v192;
  }

  v195 = v194 - 1;
  while (1)
  {
    v193 = v188 + 1;
    if (__OFADD__(v188, 1))
    {
      break;
    }

    if (v193 >= v192)
    {
      v191 = 0;
      v201 = v305;
      *(v305 + 13) = 0u;
      *(v305 + 14) = 0u;
      *(v305 + 12) = 0u;
      goto LABEL_137;
    }

    v191 = *(v281 + 64 + 8 * v193);
    ++v188;
    if (v191)
    {
      goto LABEL_136;
    }
  }

  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  v260 = *MEMORY[0x277D85DE8];

  return sub_230E69950();
}

uint64_t sub_230D8CFB0()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = v0[180];

  v2 = v0[174];
  v3 = v0[173];
  v4 = v0[172];
  v5 = v0[171];
  v6 = v0[170];
  v7 = v0[169];
  v8 = v0[168];
  v9 = v0[167];
  v10 = v0[166];
  v11 = v0[163];
  v15 = v0[195];
  v16 = v0[162];
  v17 = v0[159];

  v12 = v0[1];
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_230D8D0F8()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[185];
  v2 = v0[184];
  v3 = v0[180];
  v4 = *(v0[165] + 8);
  v4(v0[173], v0[164]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v5 = v0[189];
  v0[194] = v4;
  v0[193] = v5;
  v6 = v0[156];
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D8B1B8, v6, 0);
}

uint64_t sub_230D8D1E8()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[185];
  v2 = v0[184];
  v3 = v0[180];
  (*(v0[165] + 8))(v0[173], v0[164]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v0[195] = v0[189];
  v4 = v0[156];
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D8CFB0, v4, 0);
}

uint64_t ServicesIntelligenceProvider.logMetrics<A>(_:amsBag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a2 + 8);
  *(v6 + 16) = *a2;
  *(v6 + 24) = v11;
  *(v6 + 32) = v5;
  v12 = swift_task_alloc();
  *(v6 + 40) = v12;
  *v12 = v6;
  v12[1] = sub_230D8D3AC;

  return sub_230D89B48(a1, v6 + 16, 0, 0, a3, a4, a5);
}

uint64_t sub_230D8D3AC()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {
    v4 = v3[4];

    return MEMORY[0x2822009F8](sub_230D8D4E0, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

id sub_230D8D4F8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v102 = *MEMORY[0x277D85DE8];
  v5 = sub_230E68D80();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230D82664(a1, &v98);
  v11 = sub_230D90038(0, &qword_27DB5BD08, 0x277CBEB68);
  if (swift_dynamicCast())
  {

    result = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    a2[3] = v11;
    *a2 = result;
    goto LABEL_12;
  }

  sub_230D82664(a1, &v98);
  v13 = MEMORY[0x277D837D0];
  if (swift_dynamicCast())
  {

LABEL_11:
    result = sub_230D82664(a1, a2);
    goto LABEL_12;
  }

  sub_230D82664(a1, &v98);
  if (swift_dynamicCast())
  {
    goto LABEL_11;
  }

  sub_230D82664(a1, &v98);
  if (swift_dynamicCast())
  {
    goto LABEL_11;
  }

  sub_230D82664(a1, &v98);
  if (swift_dynamicCast())
  {
    goto LABEL_11;
  }

  sub_230D82664(a1, &v98);
  if (swift_dynamicCast())
  {
    goto LABEL_11;
  }

  sub_230D82664(a1, &v98);
  sub_230D90038(0, &qword_27DB5BD10, 0x277CCABB0);
  if (swift_dynamicCast())
  {

    goto LABEL_11;
  }

  sub_230D82664(a1, &v98);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BD18, &qword_230E734C8);
  v16 = swift_dynamicCast();
  v92 = v2;
  if (v16)
  {
    v17 = v15;
    v18 = v95;
    v19 = *(v95 + 16);
    if (v19)
    {
      *&v101[0] = MEMORY[0x277D84F90];
      sub_230D48EA8(0, v19, 0);
      v20 = *&v101[0];
      v21 = v18 + 32;
      do
      {
        sub_230D82664(v21, &v95);
        sub_230D8D4F8(&v95);
        __swift_destroy_boxed_opaque_existential_1(&v95);
        *&v101[0] = v20;
        v23 = *(v20 + 16);
        v22 = *(v20 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_230D48EA8((v22 > 1), v23 + 1, 1);
          v20 = *&v101[0];
        }

        *(v20 + 16) = v23 + 1;
        sub_230D0E394(&v98, (v20 + 32 * v23 + 32));
        v21 += 32;
        --v19;
      }

      while (v19);
    }

    else
    {

      v20 = MEMORY[0x277D84F90];
    }

    a2[3] = v17;
    *a2 = v20;
    goto LABEL_12;
  }

  sub_230D82664(a1, &v98);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BD20, &qword_230E75CF0);
  if (swift_dynamicCast())
  {
    v89 = v24;
    v25 = v95;
    a1 = sub_230D0E264(MEMORY[0x277D84F90]);
    v26 = 0;
    v90 = v25;
    v27 = 1 << *(v25 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v25 + 64;
    v30 = v28 & *(v25 + 64);
    v6 = (v27 + 63) >> 6;
    while (1)
    {
      if (!v30)
      {
        if (v6 <= &v26->isa + 1)
        {
          v32 = &v26->isa + 1;
        }

        else
        {
          v32 = v6;
        }

        v33 = (v32 - 1);
        while (1)
        {
          v5 = &v26->isa + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v5 >= v6)
          {
            v30 = 0;
            v96 = 0u;
            v97 = 0u;
            v95 = 0u;
            goto LABEL_36;
          }

          v30 = *(v29 + 8 * v5);
          v26 = (v26 + 1);
          if (v30)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_57:
        v67 = v2;
        v68 = sub_230E687E0();

LABEL_63:
        swift_willThrow();
        sub_230D0F4A8(v87, v88);

        sub_230E68D70();
        v73 = v68;
        v74 = sub_230E68D60();
        v75 = sub_230E693E0();
        MEMORY[0x23191E910](v68);
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v92 = v68;
          v77 = v76;
          v78 = swift_slowAlloc();
          v91 = v74;
          v90 = v78;
          *v77 = 138412290;
          v79 = v92;
          v80 = _swift_stdlib_bridgeErrorToNSError();
          *(v77 + 4) = v80;
          v81 = v90;
          *v90 = v80;
          v82 = v75;
          v83 = v91;
          _os_log_impl(&dword_230D02000, v91, v82, "[ServicesIntelligenceProvider] Failed to encode object: %@", v77, 0xCu);
          sub_230D2D9F8(v81, &qword_27DB5D7D0, &qword_230E734E0);
          MEMORY[0x23191EAE0](v81, -1, -1);
          MEMORY[0x23191EAE0](v77, -1, -1);

          MEMORY[0x23191E910](v92);
        }

        else
        {
          MEMORY[0x23191E910](v68);
        }

        (*(v6 + 8))(v10, v5);
LABEL_67:
        __swift_destroy_boxed_opaque_existential_1(&v98);
LABEL_68:
        sub_230D82664(a1, &v98);
        result = sub_230E690C0();
        a2[3] = v13;
        *a2 = result;
        a2[1] = v84;
        goto LABEL_12;
      }

      v5 = v26;
LABEL_35:
      v34 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v35 = v34 | (v5 << 6);
      v36 = (v90[6] + 16 * v35);
      v38 = *v36;
      v37 = v36[1];
      sub_230D82664(v90[7] + 32 * v35, v101);
      *&v95 = v38;
      *(&v95 + 1) = v37;
      sub_230D0E394(v101, &v96);

      v33 = v5;
LABEL_36:
      v98 = v95;
      v99 = v96;
      v100 = v97;
      v13 = *(&v95 + 1);
      if (!*(&v95 + 1))
      {

        a2[3] = v89;
        *a2 = a1;
        goto LABEL_12;
      }

      v39 = v29;
      v91 = v33;
      v40 = v98;
      sub_230D0E394(&v99, &v95);
      sub_230D8D4F8(&v95);
      sub_230D0E394(v101, v94);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = a1;
      v42 = sub_230DA41A0(v40, v13);
      v44 = a1[2];
      v45 = (v43 & 1) == 0;
      v46 = __OFADD__(v44, v45);
      v47 = v44 + v45;
      if (v46)
      {
        __break(1u);
LABEL_71:
        __break(1u);
      }

      v10 = v43;
      if (a1[3] < v47)
      {
        break;
      }

      v2 = v92;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v52 = v42;
        sub_230DBA17C();
        v42 = v52;
LABEL_40:
        v2 = v92;
      }

      v29 = v39;
      if (v10)
      {
        v31 = v42;

        a1 = v93;
        v13 = (v93[7] + 32 * v31);
        __swift_destroy_boxed_opaque_existential_1(v13);
        sub_230D0E394(v94, v13);
        __swift_destroy_boxed_opaque_existential_1(&v95);
      }

      else
      {
        a1 = v93;
        v93[(v42 >> 6) + 8] |= 1 << v42;
        v49 = (a1[6] + 16 * v42);
        *v49 = v40;
        v49[1] = v13;
        sub_230D0E394(v94, (a1[7] + 32 * v42));
        __swift_destroy_boxed_opaque_existential_1(&v95);
        v50 = a1[2];
        v46 = __OFADD__(v50, 1);
        v51 = v50 + 1;
        if (v46)
        {
          goto LABEL_71;
        }

        a1[2] = v51;
      }

      v26 = v91;
    }

    sub_230DB7074(v47, isUniquelyReferenced_nonNull_native);
    v42 = sub_230DA41A0(v40, v13);
    if ((v10 & 1) != (v48 & 1))
    {
      result = sub_230E69950();
      __break(1u);
      return result;
    }

    goto LABEL_40;
  }

  sub_230D82664(a1, v101);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BD28, &qword_230E734D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v97 = 0;
    v95 = 0u;
    v96 = 0u;
    sub_230D2D9F8(&v95, &unk_27DB5BD30, &qword_230E734D8);
    goto LABEL_68;
  }

  v90 = v15;
  sub_230D1D080(&v95, &v98);
  v53 = sub_230E686F0();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  v56 = sub_230E686E0();
  v91 = v100;
  __swift_project_boxed_opaque_existential_1(&v98, *(&v99 + 1));
  v91 = v56;
  v57 = sub_230E686D0();
  v89 = v24;
  v58 = v57;
  v60 = v59;
  v61 = objc_opt_self();
  v87 = v58;
  v88 = v60;
  v62 = sub_230E68880();
  *&v95 = 0;
  v86 = v61;
  v63 = [v61 JSONObjectWithData:v62 options:0 error:&v95];

  v2 = v95;
  if (!v63)
  {
    goto LABEL_57;
  }

  v64 = v95;
  sub_230E694A0();
  swift_unknownObjectRelease();
  v65 = v89;
  if (swift_dynamicCast())
  {
    v66 = *&v101[0];
    *(&v96 + 1) = v65;
  }

  else
  {
    v69 = sub_230E68880();
    *&v95 = 0;
    v70 = [v86 JSONObjectWithData:v69 options:0 error:&v95];

    if (!v70)
    {
      v72 = v95;
      v68 = sub_230E687E0();

      goto LABEL_63;
    }

    v71 = v95;
    sub_230E694A0();
    swift_unknownObjectRelease();
    if (!swift_dynamicCast())
    {
      sub_230D0F4A8(v87, v88);

      goto LABEL_67;
    }

    v66 = *&v101[0];
    *(&v96 + 1) = v90;
  }

  *&v95 = v66;
  sub_230D8D4F8(&v95);
  sub_230D0F4A8(v87, v88);

  __swift_destroy_boxed_opaque_existential_1(&v95);
  result = __swift_destroy_boxed_opaque_existential_1(&v98);
LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D8E084(uint64_t a1, unsigned __int8 a2)
{
  sub_230D82664(a1, v9);
  sub_230D90038(0, &qword_27DB5BD08, 0x277CBEB68);
  if (swift_dynamicCast())
  {

    return 0;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      sub_230D82664(a1, v9);
      if (swift_dynamicCast())
      {
        return 1;
      }

      sub_230D82664(a1, v9);
      if (swift_dynamicCast())
      {
        return 1;
      }

      sub_230D82664(a1, v9);
      if (swift_dynamicCast())
      {
        return 1;
      }

      else
      {
        sub_230D82664(a1, v9);
        sub_230D90038(0, &qword_27DB5BD10, 0x277CCABB0);
        result = swift_dynamicCast();
        if (result)
        {
          v7 = result;

          return v7;
        }
      }
    }

    else
    {
      sub_230D82664(a1, v9);
      result = swift_dynamicCast();
      if (result)
      {
LABEL_13:
        v7 = result;

        return v7;
      }
    }
  }

  else
  {
    if (a2 == 2)
    {
      sub_230D82664(a1, v9);
      return swift_dynamicCast();
    }

    sub_230D82664(a1, v9);
    if (a2 == 3)
    {
      v5 = &qword_27DB5BD20;
      v6 = &qword_230E75CF0;
    }

    else
    {
      v5 = &qword_27DB5BD18;
      v6 = &qword_230E734C8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    result = swift_dynamicCast();
    if (result)
    {
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t ServicesIntelligenceProvider.enqueueLogOperationMetrics(_:amsBag:)(_OWORD *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v18[-v8];
  v10 = a1[1];
  v19[0] = *a1;
  v19[1] = v10;
  v19[2] = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_230E6B3B0;
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  v13 = a1[1];
  *(v12 + 24) = *a1;
  *(v12 + 40) = v13;
  *(v12 + 56) = a1[2];
  *(v12 + 72) = 0;
  *(v12 + 80) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = &unk_230E73410;
  *(v14 + 24) = v12;
  *(v11 + 32) = &unk_230E6E478;
  *(v11 + 40) = v14;
  v15 = sub_230E69310();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v11;

  sub_230D8FD74(v19, v18);
  swift_unknownObjectRetain();
  sub_230D8F204(0, 0, v9, &unk_230E73420, v16);
}

uint64_t sub_230D8E4A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  *(v6 + 217) = a5;
  *(v6 + 216) = a4;
  *(v6 + 136) = a3;
  *(v6 + 144) = a6;
  *(v6 + 120) = a1;
  *(v6 + 128) = a2;
  v7 = sub_230E68910();
  *(v6 + 152) = v7;
  v8 = *(v7 - 8);
  *(v6 + 160) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 168) = swift_task_alloc();
  v10 = sub_230E68D80();
  *(v6 + 176) = v10;
  v11 = *(v10 - 8);
  *(v6 + 184) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D8E5CC, 0, 0);
}

uint64_t sub_230D8E5CC()
{
  v1 = *(v0 + 128);
  *(*(v0 + 120) + 24) = &type metadata for LogMetricsResponse;
  return MEMORY[0x2822009F8](sub_230D8E5F4, v1, 0);
}

uint64_t sub_230D8E5F4()
{
  v1 = *(v0 + 192);
  sub_230E68D70();
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][logOperationMetrics] Starting operation metrics request", v4, 2u);
    MEMORY[0x23191EAE0](v4, -1, -1);
  }

  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  v7 = *(v0 + 168);
  v8 = *(v0 + 176);
  v9 = *(v0 + 152);
  v10 = *(v0 + 160);
  v11 = *(v0 + 136);

  (*(v6 + 8))(v5, v8);
  v12 = v11[1];
  v13 = v11[3];
  v28 = v11[2];
  v29 = *v11;
  *(v0 + 104) = v13;
  *(v0 + 72) = *(v11 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BCE0, &qword_230E73478);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E6B3B0;
  *(inited + 32) = 0x6F6974617265706FLL;
  *(inited + 40) = 0xEA0000000000736ELL;
  *(inited + 48) = v13;
  sub_230D0FA64(v0 + 104, v0 + 112, &qword_27DB5BB18, &qword_230E72A88);
  v15 = sub_230D0E3A4(inited);
  swift_setDeallocating();
  sub_230D2D9F8(inited + 32, &qword_27DB5BCE8, &qword_230E73480);

  sub_230E68900();
  sub_230E688D0();
  v17 = v16;
  (*(v10 + 8))(v7, v9);
  v18 = *(v0 + 72);
  v19 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BCF0, &qword_230E73488);
  v20 = swift_allocObject();
  *(v0 + 200) = v20;
  *(v20 + 16) = xmmword_230E6B3B0;
  *(v20 + 32) = v15;
  *(v20 + 40) = v29;
  *(v20 + 48) = v12;
  *(v20 + 56) = v28;
  *(v20 + 64) = v17 * 1000.0;
  *(v20 + 72) = v18;
  *(v20 + 80) = v19;
  sub_230D0FA64(v0 + 72, v0 + 88, &qword_27DB5BD50, &qword_230E73510);
  v21 = swift_task_alloc();
  *(v0 + 208) = v21;
  *v21 = v0;
  v21[1] = sub_230D8E900;
  v22 = *(v0 + 144);
  v23 = *(v0 + 217);
  v24 = *(v0 + 216);
  v25 = *(v0 + 120);
  v26 = *(v0 + 128);

  return sub_230D8328C(v25, 0, v20, v24, v23, v22);
}

uint64_t sub_230D8E900()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;

  v5 = *(v2 + 200);
  if (v0)
  {
    MEMORY[0x23191E910](v0);

    v6 = sub_230D8EAB4;
  }

  else
  {

    v6 = sub_230D8EA48;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_230D8EA48()
{
  v1 = v0[24];
  v2 = v0[21];

  v3 = v0[1];

  return v3();
}

uint64_t sub_230D8EAB4()
{
  v1 = v0[15];
  __swift_deallocate_boxed_opaque_existential_0(v1);
  *v1 = 0u;
  *(v1 + 16) = 0u;
  v2 = v0[24];
  v3 = v0[21];

  v4 = v0[1];

  return v4();
}

uint64_t sub_230D8EB34(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_230D8EC2C;

  return v7(a1);
}

uint64_t sub_230D8EC2C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t ServicesIntelligenceProvider.enqueueLogMetrics<A>(_:amsBag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v6[0] = *a1;
  v7 = v4;
  return sub_230D8ED6C(v6, 0, 0, a2, a3, a4);
}

uint64_t sub_230D8ED6C(char *a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v25 - v15;
  v17 = *a1;
  v18 = *(a1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_230E6B3B0;
  v20 = swift_allocObject();
  *(v20 + 16) = a5;
  *(v20 + 24) = a6;
  *(v20 + 32) = v6;
  *(v20 + 40) = v17;
  *(v20 + 48) = v18;
  *(v20 + 56) = a2;
  *(v20 + 57) = a3;
  *(v20 + 64) = v26;
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_230E734F8;
  *(v21 + 24) = v20;
  *(v19 + 32) = &unk_230E73500;
  *(v19 + 40) = v21;
  v22 = sub_230E69310();
  (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v19;
  swift_unknownObjectRetain();

  sub_230D8F204(0, 0, v16, &unk_230E73508, v23);
}

uint64_t sub_230D8EF64(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a8;
  *(v8 + 72) = v10;
  *(v8 + 90) = a6;
  *(v8 + 89) = a5;
  *(v8 + 48) = a4;
  *(v8 + 56) = a7;
  *(v8 + 88) = a3;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  return MEMORY[0x2822009F8](sub_230D8EFA0, 0, 0);
}

uint64_t sub_230D8EFA0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  *(v0 + 16) = *(v0 + 88);
  *(v0 + 24) = v1;
  *(v2 + 24) = &type metadata for LogMetricsResponse;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_230D8F06C;
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = *(v0 + 90);
  v8 = *(v0 + 89);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);

  return sub_230D89B48(v9, v0 + 16, v8, v7, v6, v4, v5);
}

uint64_t sub_230D8F06C()
{
  v2 = *(*v1 + 80);
  v5 = *v1;

  if (v0)
  {
    MEMORY[0x23191E910](v0);
    v3 = sub_230D8F198;
  }

  else
  {
    v3 = sub_230D8F184;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230D8F198()
{
  v1 = *(v0 + 32);
  __swift_deallocate_boxed_opaque_existential_0(v1);
  *v1 = 0u;
  *(v1 + 16) = 0u;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_230D8F204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v25 - v11;
  sub_230D0FA64(a3, v25 - v11, &qword_27DB5B010, &unk_230E733F0);
  v13 = sub_230E69310();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_230D2D9F8(v12, &qword_27DB5B010, &unk_230E733F0);
  }

  else
  {
    sub_230E69300();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_230E692D0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_230E690F0() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_230D2D9F8(a3, &qword_27DB5B010, &unk_230E733F0);

      return v23;
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

  sub_230D2D9F8(a3, &qword_27DB5B010, &unk_230E733F0);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_230D8F4B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_230E699B0();
  sub_230E69100();
  v9 = sub_230E699D0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_230E698C0() & 1) != 0)
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

    sub_230D8F860(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_230D8F600(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BD40, &qword_230E734E8);
  result = sub_230E69510();
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
      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
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

uint64_t sub_230D8F860(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_230D8F600(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_230D8F9E0();
      goto LABEL_16;
    }

    sub_230D8FB3C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_230E699B0();
  sub_230E69100();
  result = sub_230E699D0();
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

      result = sub_230E698C0();
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
  result = sub_230E69940();
  __break(1u);
  return result;
}

void *sub_230D8F9E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BD40, &qword_230E734E8);
  v2 = *v0;
  v3 = sub_230E69500();
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

uint64_t sub_230D8FB3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BD40, &qword_230E734E8);
  result = sub_230E69510();
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
      sub_230E699B0();

      sub_230E69100();
      result = sub_230E699D0();
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

unint64_t sub_230D8FDD0()
{
  result = qword_27DB5BCF8;
  if (!qword_27DB5BCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BCF8);
  }

  return result;
}

uint64_t sub_230D8FE24(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

id sub_230D8FE88(id a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    a1 = [objc_allocWithZone(MEMORY[0x277CEE598]) initWithContainerID:v3 bag:a1];

    [a1 setMonitorsLifecycleEvents_];
    [objc_opt_self() setFlushDelayEnabled_];
  }

  else
  {
    sub_230D8FDD0();
    swift_allocError();
    *v4 = 0x80;
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_230D90038(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_230D90080(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 57);
  v10 = *(v1 + 64);
  v11 = *(v1 + 40);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_230D1BF00;

  return sub_230D8EF64(a1, v6, v11, v7, v8, v9, v10, v4);
}

uint64_t *__swift_deallocate_boxed_opaque_existential_0(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x23191EAE0);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t objectdestroy_19Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_230D90274()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_230D89848();
}

void sub_230D902E8(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[8] != 1)
  {
    v12 = sub_230E68D60();
    v13 = sub_230E693F0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "[AppUsageAggregator][generateAppInsights] No app usage sessions found";
LABEL_12:
      _os_log_impl(&dword_230D02000, v12, v13, v15, v14, 2u);
      MEMORY[0x23191EAE0](v14, -1, -1);
    }

LABEL_13:

    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    v12 = sub_230E68D60();
    v13 = sub_230E693F0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "[AppUsageAggregator][generateAppInsights] App usage sessions array is empty";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v5 = *a1;

  v6 = sub_230E68D60();
  v7 = sub_230E693E0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v3 + 16);
    _os_log_impl(&dword_230D02000, v6, v7, "[AppUsageAggregator][generateAppInsights] Processing %ld app usage sessions", v8, 0xCu);
    MEMORY[0x23191EAE0](v8, -1, -1);
  }

  v9 = *(v3 + 16);
  if (v9 > v4 - 1)
  {
    if (v4 == 1)
    {
      v10 = 0;
      v11 = 0.0;
    }

    else
    {
      v10 = v4 & 0x7FFFFFFFFFFFFFFELL;
      v16 = (v3 + 104);
      v11 = 0.0;
      v17 = v4 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v18 = *(v16 - 5);
        v19 = *v16;
        v16 += 10;
        v11 = v11 + v18 + v19;
        v17 -= 2;
      }

      while (v17);
      if (v4 == v10)
      {
        goto LABEL_19;
      }
    }

    v20 = v4 - v10;
    v21 = (v3 + 40 * v10 + 64);
    do
    {
      v22 = *v21;
      v21 += 5;
      v11 = v11 + v22;
      --v20;
    }

    while (v20);
LABEL_19:
    v23 = round(v11 * 100.0) / 100.0;
    v24 = sub_230D90E74(v3);

    *a2 = v9;
    *(a2 + 8) = v23;
    *(a2 + 16) = round(v23 / v9 * 100.0) / 100.0;
    *(a2 + 24) = v24;
    return;
  }

  __break(1u);
}

uint64_t sub_230D90560(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_230D4510C(v2);
  }

  v3 = v2[2];
  v21[0] = (v2 + 4);
  v21[1] = v3;
  result = sub_230E69880();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 6);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[5];
          if (v12[1] >= v13)
          {
            break;
          }

          v14 = *(v12 + 2);
          v15 = *(v12 + 3);
          v16 = *(v12 + 4);
          v17 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v17;
          *(v12 - 2) = v14;
          *(v12 - 1) = v15;
          *v12 = v16;
          v12[1] = v13;
          v12 -= 4;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 4;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B330, &qword_230E6F6B0);
      v7 = sub_230E69270();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v19[0] = v7 + 32;
    v19[1] = v6;
    sub_230D906C4(v19, v20, v21, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_230D906C4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v94 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v94;
    if (!*v94)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_230D44FDC(v8);
      v8 = result;
    }

    v86 = (v8 + 16);
    v87 = *(v8 + 16);
    if (v87 >= 2)
    {
      while (*a3)
      {
        v88 = (v8 + 16 * v87);
        v89 = *v88;
        v90 = &v86[2 * v87];
        v91 = v90[1];
        sub_230D90C70((*a3 + 32 * *v88), (*a3 + 32 * *v90), (*a3 + 32 * v91), v5);
        if (v4)
        {
        }

        if (v91 < v89)
        {
          goto LABEL_114;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_115;
        }

        *v88 = v89;
        v88[1] = v91;
        v92 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_116;
        }

        v87 = *v86 - 1;
        result = memmove(v90, v90 + 2, 16 * v92);
        *v86 = v87;
        if (v87 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v93 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 24);
      v11 = *a3 + 32 * v9;
      v12 = *(v11 + 24);
      v13 = v9 + 2;
      v14 = (v11 + 88);
      v15 = v10;
      while (v6 != v13)
      {
        v16 = *v14;
        v14 += 4;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v10) ^ v17) & 1) == 0)
        {
          v7 = v13 - 1;
          if (v12 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v12 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v18 = 32 * v7 - 16;
        v19 = 32 * v9 + 24;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v28 + v19);
            v23 = (v28 + v18);
            v24 = *(v22 - 3);
            v25 = *(v22 - 1);
            v26 = *v22;
            v27 = *v23;
            *(v22 - 3) = *(v23 - 1);
            *(v22 - 1) = v27;
            *(v23 - 1) = v24;
            *v23 = v25;
            *(v23 + 1) = v26;
          }

          ++v21;
          v18 -= 32;
          v19 += 32;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_230D44FF0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v40 = *(v8 + 24);
    v41 = v5 + 1;
    if (v5 >= v40 >> 1)
    {
      result = sub_230D44FF0((v40 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v41;
    v42 = v8 + 32;
    v43 = (v8 + 32 + 16 * v5);
    *v43 = v9;
    v43[1] = v7;
    v95 = *v94;
    if (!*v94)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v44 = *(v8 + 32);
          v45 = *(v8 + 40);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_57:
          if (v47)
          {
            goto LABEL_104;
          }

          v60 = (v8 + 16 * v41);
          v62 = *v60;
          v61 = v60[1];
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_106;
          }

          v66 = (v42 + 16 * v5);
          v68 = *v66;
          v67 = v66[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_111;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v5 = v41 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v41 < 2)
        {
          goto LABEL_112;
        }

        v70 = (v8 + 16 * v41);
        v72 = *v70;
        v71 = v70[1];
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_72:
        if (v65)
        {
          goto LABEL_108;
        }

        v73 = (v42 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_110;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v41)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v81 = (v42 + 16 * (v5 - 1));
        v82 = *v81;
        v83 = (v42 + 16 * v5);
        v84 = v83[1];
        sub_230D90C70((*a3 + 32 * *v81), (*a3 + 32 * *v83), (*a3 + 32 * v84), v95);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *(v8 + 16);
        if (v5 >= v85)
        {
          goto LABEL_101;
        }

        v41 = v85 - 1;
        result = memmove((v42 + 16 * v5), v83 + 2, 16 * (v85 - 1 - v5));
        *(v8 + 16) = v85 - 1;
        if (v85 <= 2)
        {
          goto LABEL_3;
        }
      }

      v48 = v42 + 16 * v41;
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_102;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_103;
      }

      v55 = (v8 + 16 * v41);
      v57 = *v55;
      v56 = v55[1];
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_105;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_107;
      }

      if (v59 >= v51)
      {
        v77 = (v42 + 16 * v5);
        v79 = *v77;
        v78 = v77[1];
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_113;
        }

        if (v46 < v80)
        {
          v5 = v41 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v93;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 32 * v7 - 8;
  v31 = v9 - v7;
LABEL_30:
  v32 = *(v29 + 32 * v7 + 24);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (*v34 >= v32)
    {
LABEL_29:
      ++v7;
      v30 += 32;
      --v31;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 8);
    v36 = *(v34 + 16);
    v37 = *(v34 + 24);
    v38 = *(v34 - 8);
    *(v34 + 8) = *(v34 - 24);
    *(v34 + 24) = v38;
    *(v34 - 24) = v35;
    *(v34 - 16) = v36;
    *(v34 - 8) = v37;
    *v34 = v32;
    v34 -= 32;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_230D90C70(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[3] < v6[3])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v18 = v5 + 4;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v21 = v6 - 4;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 4, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 4;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 4;
      v14 -= 4;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v23 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

uint64_t sub_230D90E74(uint64_t a1)
{
  v2 = sub_230D0E4B4(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 64);
    do
    {
      v8 = *(v4 - 2);
      v7 = *(v4 - 1);
      v9 = *v4;
      v10 = v2[2];

      if (v10)
      {
        v11 = sub_230DA41A0(v8, v7);
        if (v12)
        {
          v13 = v2[7] + 16 * v11;
          v14 = *v13 + 1;
          if (__OFADD__(*v13, 1))
          {
            goto LABEL_49;
          }

          v15 = *(v13 + 8);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v58 = v2;
          v17 = sub_230DA41A0(v8, v7);
          v19 = v2[2];
          v20 = (v18 & 1) == 0;
          v21 = __OFADD__(v19, v20);
          v22 = v19 + v20;
          if (v21)
          {
            goto LABEL_50;
          }

          v23 = v18;
          if (v2[3] < v22)
          {
            sub_230DB732C(v22, isUniquelyReferenced_nonNull_native);
            v17 = sub_230DA41A0(v8, v7);
            if ((v23 & 1) != (v24 & 1))
            {
              goto LABEL_52;
            }

            goto LABEL_23;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_23:
            v9 = v9 + v15;
            if ((v23 & 1) == 0)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v39 = v17;
            sub_230DBA320();
            v17 = v39;
            v9 = v9 + v15;
            if ((v23 & 1) == 0)
            {
LABEL_28:
              v2 = v58;
              v58[(v17 >> 6) + 8] |= 1 << v17;
              v40 = (v2[6] + 16 * v17);
              *v40 = v8;
              v40[1] = v7;
              v41 = v2[7] + 16 * v17;
              *v41 = v14;
              *(v41 + 8) = v9;
              v42 = v2[2];
              v21 = __OFADD__(v42, 1);
              v36 = v42 + 1;
              if (v21)
              {
                goto LABEL_51;
              }

              goto LABEL_29;
            }
          }

          v37 = v17;

          v2 = v58;
          v6 = v58[7] + 16 * v37;
          *v6 = v14;
          goto LABEL_4;
        }
      }

      v25 = swift_isUniquelyReferenced_nonNull_native();
      v58 = v2;
      v26 = sub_230DA41A0(v8, v7);
      v28 = v2[2];
      v29 = (v27 & 1) == 0;
      v21 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v21)
      {
        goto LABEL_47;
      }

      v31 = v27;
      if (v2[3] >= v30)
      {
        if ((v25 & 1) == 0)
        {
          v38 = v26;
          sub_230DBA320();
          v26 = v38;
          if ((v31 & 1) == 0)
          {
LABEL_19:
            v2 = v58;
            v58[(v26 >> 6) + 8] |= 1 << v26;
            v33 = (v2[6] + 16 * v26);
            *v33 = v8;
            v33[1] = v7;
            v34 = v2[7] + 16 * v26;
            *v34 = 1;
            *(v34 + 8) = v9;
            v35 = v2[2];
            v21 = __OFADD__(v35, 1);
            v36 = v35 + 1;
            if (v21)
            {
              goto LABEL_48;
            }

LABEL_29:
            v2[2] = v36;
            goto LABEL_5;
          }

          goto LABEL_3;
        }
      }

      else
      {
        sub_230DB732C(v30, v25);
        v26 = sub_230DA41A0(v8, v7);
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_52;
        }
      }

      if ((v31 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_3:
      v5 = v26;

      v2 = v58;
      v6 = v58[7] + 16 * v5;
      *v6 = 1;
LABEL_4:
      *(v6 + 8) = v9;
LABEL_5:
      v4 += 5;
      --v3;
    }

    while (v3);
  }

  v43 = v2[2];
  v44 = MEMORY[0x277D84F90];
  if (v43)
  {
    v45 = sub_230E4B198(v2[2], 0);
    v46 = sub_230E67174(&v58, v45 + 4, v43, v2);

    sub_230D912FC();
    if (v46 == v43)
    {
      goto LABEL_34;
    }

    __break(1u);
  }

  v45 = v44;
LABEL_34:
  v58 = v45;
  sub_230D90560(&v58);
  v7 = v58;
  v47 = v58[2];
  if (v47 >= 0xA)
  {
    v48 = 10;
  }

  else
  {
    v48 = v58[2];
  }

  if (v47)
  {
    v58 = v44;
    sub_230D48EC8(0, v48, 0);
    v49 = v58;
    v50 = (v7 + 56);
    while (v48)
    {
      v52 = *(v50 - 3);
      v51 = *(v50 - 2);
      v53 = *(v50 - 1);
      v54 = *v50;
      v58 = v49;
      v7 = v49[2];
      v55 = v49[3];

      if (v7 >= v55 >> 1)
      {
        sub_230D48EC8((v55 > 1), v7 + 1, 1);
        v49 = v58;
      }

      v49[2] = v7 + 1;
      v56 = &v49[4 * v7];
      *(v56 + 4) = v52;
      *(v56 + 5) = v51;
      *(v56 + 6) = v53;
      v56[7] = round(v54 * 100.0) / 100.0;
      v50 += 4;
      if (!--v48)
      {

        return v49;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    sub_230E69950();
    __break(1u);
    MEMORY[0x23191E910](v7);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_230D91304(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a2;
  if ((a1[8] & 1) == 0)
  {
    v11 = *a1;
    v12 = *(*a1 + 16);

    if (v12)
    {
      v13 = 0;
      v14 = v11 + 32;
      v3 = MEMORY[0x277D84F90];
      do
      {
        v15 = (v14 + 168 * v13);
        v16 = v13;
        while (1)
        {
          if (v16 >= *(v11 + 16))
          {
            __break(1u);
            goto LABEL_36;
          }

          v17 = *v15;
          v18 = v15[2];
          v61 = v15[1];
          v62 = v18;
          v60 = v17;
          v19 = v15[3];
          v20 = v15[4];
          v21 = v15[6];
          v65 = v15[5];
          v66 = v21;
          v63 = v19;
          v64 = v20;
          v22 = v15[7];
          v23 = v15[8];
          v24 = v15[9];
          v70 = *(v15 + 20);
          v68 = v23;
          v69 = v24;
          v67 = v22;
          if (!v62)
          {
            break;
          }

          v25 = sub_230E698C0();
          sub_230D93514(&v60, v59);

          if (v25)
          {
            goto LABEL_14;
          }

          ++v16;
          sub_230D93570(&v60);
          v15 = (v15 + 168);
          if (v12 == v16)
          {
            goto LABEL_31;
          }
        }

        sub_230D93514(&v60, v59);

LABEL_14:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_230D48F00(0, *(v3 + 16) + 1, 1);
          v3 = v71;
        }

        v28 = *(v3 + 16);
        v27 = *(v3 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_230D48F00((v27 > 1), v28 + 1, 1);
          v3 = v71;
        }

        v13 = v16 + 1;
        *(v3 + 16) = v28 + 1;
        v29 = v3 + 168 * v28;
        v30 = v60;
        v31 = v62;
        *(v29 + 48) = v61;
        *(v29 + 64) = v31;
        *(v29 + 32) = v30;
        v32 = v63;
        v33 = v64;
        v34 = v66;
        *(v29 + 112) = v65;
        *(v29 + 128) = v34;
        *(v29 + 80) = v32;
        *(v29 + 96) = v33;
        v35 = v67;
        v36 = v68;
        v37 = v69;
        *(v29 + 192) = v70;
        *(v29 + 160) = v36;
        *(v29 + 176) = v37;
        *(v29 + 144) = v35;
        v14 = v11 + 32;
      }

      while (v12 - 1 != v16);
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }

LABEL_31:

    v2 = a2;
    v4 = *(v3 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_32:

    v55 = sub_230E68D60();
    v56 = sub_230E693F0();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_230D02000, v55, v56, "[MusicAggregator][generateMusicInsights] No music sessions found", v57, 2u);
      MEMORY[0x23191EAE0](v57, -1, -1);
    }

    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *v2 = 0u;
    *(v2 + 16) = 0u;
    return;
  }

  v3 = MEMORY[0x277D84F90];
  v4 = *(MEMORY[0x277D84F90] + 16);
  if (!v4)
  {
    goto LABEL_32;
  }

LABEL_3:

  v5 = sub_230E68D60();
  v6 = sub_230E693E0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v3 + 16);

    _os_log_impl(&dword_230D02000, v5, v6, "[MusicAggregator][generateMusicInsights] Processing %ld music sessions", v7, 0xCu);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  else
  {
  }

  v38 = *(v3 + 16);
  if (v38 > v4 - 1)
  {
    if (v4 == 1)
    {
      v39 = 0;
      v40 = 0.0;
    }

    else
    {
      v39 = v4 & 0x7FFFFFFFFFFFFFFELL;
      v41 = (v3 + 240);
      v40 = 0.0;
      v42 = v4 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v8.n128_f64[0] = *v41;
        v40 = v40 + *(v41 - 21) + *v41;
        v41 += 42;
        v42 -= 2;
      }

      while (v42);
      if (v4 == v39)
      {
        goto LABEL_29;
      }
    }

    v43 = v4 - v39;
    v44 = (v3 + 168 * v39 + 72);
    do
    {
      v45 = *v44;
      v44 += 21;
      v40 = v40 + v45;
      --v43;
    }

    while (v43);
LABEL_29:
    v46 = round(v40 * 100.0) / 100.0;
    v47 = round(v46 / v38 * 100.0);
    v48 = v47 / 100.0;
    sub_230DA1E8C(v3, v47, 100.0, v8, v9, v10);
    v50 = v49;
    v51 = sub_230D917D8(v3);
    v52 = sub_230D91EAC(v3);
    v53 = sub_230D9261C(v3);
    v54 = sub_230D92DC8(v3);

    *v2 = v38;
    *(v2 + 8) = v46;
    *(v2 + 16) = v48;
    *(v2 + 24) = v50;
    *(v2 + 32) = v51;
    *(v2 + 40) = v52;
    *(v2 + 48) = v53;
    *(v2 + 56) = v54;
    return;
  }

LABEL_36:
  __break(1u);
}

uint64_t sub_230D917D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_230D0E5C8(MEMORY[0x277D84F90]);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 32);
    v7 = v5 - 1;
    v91 = v2;
    while (1)
    {
      v8 = v6[9];
      v102 = v6[8];
      v103 = v8;
      v104 = *(v6 + 20);
      v9 = v6[5];
      v98 = v6[4];
      v99 = v9;
      v10 = v6[7];
      v100 = v6[6];
      v101 = v10;
      v11 = v6[1];
      v94 = *v6;
      v95 = v11;
      v12 = v6[3];
      v96 = v6[2];
      v97 = v12;
      v13 = v99;
      if (!v99)
      {
        goto LABEL_12;
      }

      v14 = *(&v98 + 1);
      v15 = BYTE7(v99) & 0xF;
      if ((v99 & 0x2000000000000000) == 0)
      {
        v15 = *(&v98 + 1) & 0xFFFFFFFFFFFFLL;
      }

      if (!v15)
      {
LABEL_12:
        sub_230D93514(&v94, v93);
        v25 = sub_230E68D60();
        v26 = sub_230E693F0();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = v95;
          v28 = swift_slowAlloc();
          v29 = v4;
          v30 = swift_slowAlloc();
          v93[0] = v30;
          *v28 = 136315138;

          sub_230D93570(&v94);
          v31 = sub_230D7E620(v27, *(&v27 + 1), v93);

          *(v28 + 4) = v31;
          _os_log_impl(&dword_230D02000, v25, v26, "[MusicAggregator][generateTopArtists] Skipping session without artist: %s", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v30);
          v32 = v30;
          v4 = v29;
          MEMORY[0x23191EAE0](v32, -1, -1);
          MEMORY[0x23191EAE0](v28, -1, -1);

          if (!v7)
          {
            break;
          }

          goto LABEL_42;
        }

        goto LABEL_24;
      }

      v16 = *(&v102 + 1);
      v17 = v103;
      v18 = *(&v96 + 1);
      if (!v4[2])
      {
        sub_230D93514(&v94, v93);

LABEL_17:

        v33 = v4;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v93[0] = v33;
        v35 = sub_230DA41A0(v14, v13);
        v37 = *(v33 + 16);
        v38 = (v36 & 1) == 0;
        v39 = __OFADD__(v37, v38);
        v40 = v37 + v38;
        if (v39)
        {
          goto LABEL_60;
        }

        v41 = v36;
        if (*(v33 + 24) < v40)
        {
          sub_230DB75EC(v40, isUniquelyReferenced_nonNull_native);
          v35 = sub_230DA41A0(v14, v13);
          if ((v41 & 1) != (v42 & 1))
          {
            goto LABEL_65;
          }

          goto LABEL_22;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_22:
          if (v41)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v61 = v16;
          v62 = v35;
          sub_230DBA498();
          v35 = v62;
          v16 = v61;
          if (v41)
          {
LABEL_23:
            v43 = v16;
            v44 = v35;

            v4 = v93[0];
            v45 = *(v93[0] + 56) + 32 * v44;
            v46 = *(v45 + 24);
            *v45 = 1;
            *(v45 + 8) = v18;
            *(v45 + 16) = v43;
            *(v45 + 24) = v17;

LABEL_24:
            sub_230D93570(&v94);
            if (!v7)
            {
              break;
            }

            goto LABEL_42;
          }
        }

        v4 = v93[0];
        *(v93[0] + 8 * (v35 >> 6) + 64) |= 1 << v35;
        v63 = (v4[6] + 16 * v35);
        *v63 = v14;
        v63[1] = v13;
        v64 = v4[7] + 32 * v35;
        *v64 = 1;
        *(v64 + 8) = v18;
        *(v64 + 16) = v16;
        *(v64 + 24) = v17;
        sub_230D93570(&v94);
        v65 = v4[2];
        v39 = __OFADD__(v65, 1);
        v66 = v65 + 1;
        if (v39)
        {
          goto LABEL_61;
        }

        v4[2] = v66;
        if (!v7)
        {
          break;
        }

        goto LABEL_42;
      }

      sub_230D93514(&v94, v93);

      v19 = sub_230DA41A0(v14, v13);
      if ((v20 & 1) == 0)
      {
        goto LABEL_17;
      }

      v21 = v4[7] + 32 * v19;
      v2 = *v21 + 1;
      if (__OFADD__(*v21, 1))
      {
        goto LABEL_62;
      }

      v22 = *(v21 + 24);
      v23 = *(v21 + 8);
      if (v22)
      {
        v16 = *(v21 + 16);
        v24 = *(v21 + 24);
      }

      else
      {

        v22 = v17;
      }

      sub_230D93570(&v94);
      v47 = v4;
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v93[0] = v47;
      v49 = sub_230DA41A0(v14, v13);
      v51 = *(v47 + 16);
      v52 = (v50 & 1) == 0;
      v39 = __OFADD__(v51, v52);
      v53 = v51 + v52;
      if (v39)
      {
        goto LABEL_63;
      }

      v54 = v50;
      if (*(v47 + 24) >= v53)
      {
        if ((v48 & 1) == 0)
        {
          v67 = v16;
          v68 = v49;
          sub_230DBA498();
          v49 = v68;
          v16 = v67;
          v56 = v18 + v23;
          if (v54)
          {
LABEL_33:
            v57 = v16;
            v58 = v49;

            v4 = v93[0];
            v59 = *(v93[0] + 56) + 32 * v58;
            v60 = *(v59 + 24);
            *v59 = v2;
            *(v59 + 8) = v56;
            *(v59 + 16) = v57;
            *(v59 + 24) = v22;

            v2 = v91;
            if (!v7)
            {
              break;
            }

            goto LABEL_42;
          }

          goto LABEL_40;
        }
      }

      else
      {
        sub_230DB75EC(v53, v48);
        v49 = sub_230DA41A0(v14, v13);
        if ((v54 & 1) != (v55 & 1))
        {
          goto LABEL_65;
        }
      }

      v56 = v18 + v23;
      if (v54)
      {
        goto LABEL_33;
      }

LABEL_40:
      v4 = v93[0];
      *(v93[0] + 8 * (v49 >> 6) + 64) |= 1 << v49;
      v69 = (v4[6] + 16 * v49);
      *v69 = v14;
      v69[1] = v13;
      v70 = v4[7] + 32 * v49;
      *v70 = v2;
      *(v70 + 8) = v56;
      *(v70 + 16) = v16;
      *(v70 + 24) = v22;
      v71 = v4[2];
      v39 = __OFADD__(v71, 1);
      v72 = v71 + 1;
      if (v39)
      {
        goto LABEL_64;
      }

      v4[2] = v72;
      v2 = v91;
      if (!v7)
      {
        break;
      }

LABEL_42:
      --v7;
      v6 = (v6 + 168);
    }
  }

  v73 = v4[2];
  v74 = v4;
  v75 = MEMORY[0x277D84F90];
  if (v73)
  {
    v76 = sub_230E4B21C(v73, 0);
    v77 = sub_230E68474(&v94, v76 + 4, v73, v74);

    sub_230D912FC();
    if (v77 == v73)
    {
      goto LABEL_47;
    }

    __break(1u);
  }

  v76 = v75;
LABEL_47:
  *&v94 = v76;
  v2 = 0;
  sub_230D935C4(&v94);
  v78 = v94;
  v79 = *(v94 + 16);
  if (v79 >= 5)
  {
    v80 = 5;
  }

  else
  {
    v80 = *(v94 + 16);
  }

  if (v79)
  {
    *&v94 = v75;
    sub_230D48F20(0, v80, 0);
    v81 = v94;
    v82 = (v78 + 72);
    while (v80)
    {
      v84 = *(v82 - 5);
      v83 = *(v82 - 4);
      v92 = *(v82 - 3);
      v85 = *(v82 - 2);
      v87 = *(v82 - 1);
      v86 = *v82;
      *&v94 = v81;
      v88 = *(v81 + 16);
      v2 = *(v81 + 24);

      if (v88 >= v2 >> 1)
      {
        sub_230D48F20((v2 > 1), v88 + 1, 1);
        v81 = v94;
      }

      *(v81 + 16) = v88 + 1;
      v89 = v81 + 48 * v88;
      *(v89 + 32) = v84;
      *(v89 + 40) = v83;
      *(v89 + 48) = v87;
      *(v89 + 56) = v86;
      *(v89 + 64) = v92;
      *(v89 + 72) = round(v85 * 100.0) / 100.0;
      v82 += 6;
      if (!--v80)
      {

        return v81;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    sub_230E69950();
    __break(1u);
    MEMORY[0x23191E910](v2);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_230D91EAC(uint64_t a1)
{
  v2 = sub_230D0E5DC(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    for (i = v3 - 1; ; --i)
    {
      v6 = *(v4 + 144);
      v100 = *(v4 + 128);
      v101 = v6;
      v102 = *(v4 + 160);
      v7 = *(v4 + 80);
      v96 = *(v4 + 64);
      v97 = v7;
      v8 = *(v4 + 112);
      v98 = *(v4 + 96);
      v99 = v8;
      v9 = *(v4 + 16);
      v93[0] = *v4;
      v93[1] = v9;
      v10 = *(v4 + 48);
      v94 = *(v4 + 32);
      v95 = v10;
      v11 = v97;
      v12 = v9;
      if (!v97)
      {
        goto LABEL_12;
      }

      v13 = *(&v96 + 1);
      v14 = BYTE7(v97) & 0xF;
      if ((v97 & 0x2000000000000000) == 0)
      {
        v14 = *(&v96 + 1) & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        v15 = *(&v99 + 1);
        v16 = v100;
        v17 = *(&v94 + 1);
        if (!v2[2])
        {
          sub_230D93514(v93, v92);

LABEL_16:
          v88 = i;
          i = v16;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v92[0] = v2;
          v31 = sub_230DA41A0(v12, *(&v12 + 1));
          v33 = v2;
          v34 = v2[2];
          v35 = (v32 & 1) == 0;
          v36 = __OFADD__(v34, v35);
          v37 = v34 + v35;
          if (v36)
          {
            goto LABEL_57;
          }

          v38 = v32;
          if (v33[3] >= v37)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_21;
            }

            v63 = v31;
            sub_230DBA4AC();
            v31 = v63;
            v40 = v15;
            if ((v38 & 1) == 0)
            {
              goto LABEL_35;
            }

LABEL_22:
            v41 = v31;

            v2 = v92[0];
            v42 = *(v92[0] + 56) + 48 * v41;
            v43 = *(v42 + 24);
            v44 = *(v42 + 40);
            *v42 = 1;
            *(v42 + 8) = v17;
            *(v42 + 16) = v13;
            *(v42 + 24) = v11;
            *(v42 + 32) = v40;
            *(v42 + 40) = i;

            sub_230D93570(v93);
          }

          else
          {
            sub_230DB7600(v37, isUniquelyReferenced_nonNull_native);
            v31 = sub_230DA41A0(v12, *(&v12 + 1));
            if ((v38 & 1) != (v39 & 1))
            {
              goto LABEL_62;
            }

LABEL_21:
            v40 = v15;
            if (v38)
            {
              goto LABEL_22;
            }

LABEL_35:
            v2 = v92[0];
            *(v92[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
            *(v2[6] + 16 * v31) = v12;
            v64 = v2[7] + 48 * v31;
            *v64 = 1;
            *(v64 + 8) = v17;
            *(v64 + 16) = v13;
            *(v64 + 24) = v11;
            *(v64 + 32) = v40;
            *(v64 + 40) = i;
            sub_230D93570(v93);
            v65 = v2[2];
            v36 = __OFADD__(v65, 1);
            v66 = v65 + 1;
            if (v36)
            {
              goto LABEL_58;
            }

            v2[2] = v66;
          }

          i = v88;
          goto LABEL_38;
        }

        sub_230D93514(v93, v92);

        v18 = sub_230DA41A0(v12, *(&v12 + 1));
        if ((v19 & 1) == 0)
        {
          goto LABEL_16;
        }

        v20 = v18;

        v21 = v2[7] + 48 * v20;
        v22 = *v21 + 1;
        if (__OFADD__(*v21, 1))
        {
          goto LABEL_59;
        }

        v23 = *(v21 + 24);
        v86 = *(v21 + 16);
        v24 = *(v21 + 8);
        if (*(v21 + 40))
        {
          v15 = *(v21 + 32);
          v87 = *(v21 + 40);
        }

        else
        {
          v87 = v16;
        }

        sub_230D93570(v93);
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v92[0] = v2;
        v46 = sub_230DA41A0(v12, *(&v12 + 1));
        v48 = v2;
        v49 = v2[2];
        v50 = (v47 & 1) == 0;
        v36 = __OFADD__(v49, v50);
        v51 = v49 + v50;
        if (v36)
        {
          goto LABEL_60;
        }

        v52 = v47;
        if (v48[3] >= v51)
        {
          if ((v45 & 1) == 0)
          {
            v67 = v46;
            sub_230DBA4AC();
            v46 = v67;
          }
        }

        else
        {
          sub_230DB7600(v51, v45);
          v46 = sub_230DA41A0(v12, *(&v12 + 1));
          if ((v52 & 1) != (v53 & 1))
          {
            goto LABEL_62;
          }
        }

        v54 = v15;
        v55 = v17 + v24;
        if (v52)
        {
          v56 = v46;

          v2 = v92[0];
          v57 = *(v92[0] + 56) + 48 * v56;
          v58 = *(v57 + 24);
          v59 = *(v57 + 40);
          *v57 = v22;
          *(v57 + 8) = v55;
          *(v57 + 16) = v86;
          *(v57 + 24) = v23;
          *(v57 + 32) = v54;
          *(v57 + 40) = v87;
        }

        else
        {
          v2 = v92[0];
          *(v92[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
          *(v2[6] + 16 * v46) = v12;
          v60 = v2[7] + 48 * v46;
          *v60 = v22;
          *(v60 + 8) = v55;
          *(v60 + 16) = v86;
          *(v60 + 24) = v23;
          *(v60 + 32) = v15;
          *(v60 + 40) = v87;
          v61 = v2[2];
          v36 = __OFADD__(v61, 1);
          v62 = v61 + 1;
          if (v36)
          {
            goto LABEL_61;
          }

          v2[2] = v62;
        }
      }

      else
      {
LABEL_12:
        sub_230D93514(v93, v92);
        v25 = sub_230E68D60();
        v26 = sub_230E693F0();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v92[0] = v28;
          *v27 = 136315138;

          sub_230D93570(v93);
          v29 = sub_230D7E620(v12, *(&v12 + 1), v92);

          *(v27 + 4) = v29;
          _os_log_impl(&dword_230D02000, v25, v26, "[MusicAggregator][generateTopSongs] Skipping session without artist: %s", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v28);
          MEMORY[0x23191EAE0](v28, -1, -1);
          MEMORY[0x23191EAE0](v27, -1, -1);
        }

        else
        {

          sub_230D93570(v93);
        }
      }

LABEL_38:
      if (!i)
      {
        break;
      }

      v4 += 168;
    }
  }

  v68 = v2[2];
  v69 = v2;
  v70 = MEMORY[0x277D84F90];
  if (v68)
  {
    v71 = sub_230E4B230(v68, 0);
    v72 = sub_230E68470(v93, v71 + 4, v68, v69);

    sub_230D912FC();
    if (v72 == v68)
    {
      goto LABEL_44;
    }

    __break(1u);
  }

  v71 = v70;
LABEL_44:
  *&v93[0] = v71;
  i = 0;
  sub_230D93744(v93, sub_230D45134, &qword_27DB5B3A0, &qword_230E6F720);
  v73 = *&v93[0];
  v74 = *(*&v93[0] + 16);
  if (v74 >= 5)
  {
    v75 = 5;
  }

  else
  {
    v75 = *(*&v93[0] + 16);
  }

  if (v74)
  {
    *&v93[0] = v70;
    sub_230D48F58(0, v75, 0);
    v76 = *&v93[0];
    v77 = (v73 + 48);
    while (v75)
    {
      v78 = *(v77 - 1);
      v90 = *(v77 - 2);
      v91 = *v77;
      v79 = v77[1];
      v80 = *(v77 + 3);
      v89 = *(v77 + 2);
      i = *(v77 + 4);
      v81 = *(v77 + 5);
      v82 = *(v76 + 16);
      v83 = *(v76 + 24);
      *&v93[0] = v76;

      if (v82 >= v83 >> 1)
      {
        sub_230D48F58((v83 > 1), v82 + 1, 1);
        v76 = *&v93[0];
      }

      *(v76 + 16) = v82 + 1;
      v84 = v76 + (v82 << 6);
      *(v84 + 32) = v90;
      *(v84 + 40) = v78;
      *(v84 + 48) = i;
      *(v84 + 56) = v81;
      *(v84 + 64) = v89;
      *(v84 + 72) = v80;
      *(v84 + 80) = v91;
      *(v84 + 88) = round(v79 * 100.0) / 100.0;
      v77 += 8;
      if (!--v75)
      {

        return v76;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    sub_230E69950();
    __break(1u);
    MEMORY[0x23191E910](i);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}