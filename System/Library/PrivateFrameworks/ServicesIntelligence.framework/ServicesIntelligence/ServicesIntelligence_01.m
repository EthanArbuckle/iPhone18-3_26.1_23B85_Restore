uint64_t sub_230D16DC0()
{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v4 = *v1;
  *(*v1 + 608) = v0;

  v5 = *(v2 + 592);
  sub_230D1CE3C(*(v2 + 528));
  if (v0)
  {
    v6 = sub_230D17290;
  }

  else
  {
    v6 = sub_230D16F08;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D16F08()
{
  v1 = *(v0 + 520);
  sub_230D1CE3C(*(v0 + 528));
  sub_230D1D148(v0 + 16);

  return MEMORY[0x2822009F8](sub_230D16F7C, v1, 0);
}

uint64_t sub_230D16F7C()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v6 = *(v0 + 536);
  v7 = *(v0 + 464);
  v25 = *(v0 + 544);
  sub_230E68900();
  sub_230E688D0();
  v9 = v8;
  (*(v3 + 8))(v2, v4);
  *(v0 + 488) = v7;
  v10 = MEMORY[0x277D837D0];
  swift_getTupleTypeMetadata2();
  v11 = sub_230E69260();
  v12 = sub_230D0A900(v11, v10, v25, MEMORY[0x277D837E0]);

  *(v0 + 496) = v12;
  v13 = swift_task_alloc();
  *(v13 + 16) = v25;
  *(v13 + 32) = v5;
  *(v13 + 40) = v9;
  *(v13 + 48) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC10, &unk_230E6CAF0);
  sub_230E68FB0();
  sub_230D1D1C4(&qword_27DB5AC18, &qword_27DB5AC10, &unk_230E6CAF0);
  sub_230E69170();
  if (v1)
  {

    v14 = *(v0 + 544);
    v15 = *(v0 + 504);
    sub_230E69540();
    *(v0 + 440) = 0;
    *(v0 + 448) = 0xE000000000000000;
    MEMORY[0x23191DA00](0xD000000000000020, 0x8000000230E80EC0);
    *(v0 + 472) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
    sub_230E695F0();
    v16 = *(v0 + 440);
    v17 = *(v0 + 448);
    sub_230E68950();

    MEMORY[0x23191E910](v1);
    v18 = MEMORY[0x277D837D0];
    swift_getTupleTypeMetadata2();
    v19 = sub_230E69260();
    v20 = sub_230D0A900(v19, v18, v14, MEMORY[0x277D837E0]);

    *v15 = v20;
  }

  else
  {
    v21 = *(v0 + 504);

    *v21 = *(v0 + 480);
  }

  v22 = *(v0 + 584);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_230D17290()
{
  v1 = *(v0 + 520);
  sub_230D1CE3C(*(v0 + 528));

  return MEMORY[0x2822009F8](sub_230D172FC, v1, 0);
}

uint64_t sub_230D172FC()
{
  sub_230D1D148((v0 + 2));
  v1 = v0[76];
  v2 = v0[68];
  v3 = v0[63];
  sub_230E69540();
  v0[55] = 0;
  v0[56] = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD000000000000020, 0x8000000230E80EC0);
  v0[59] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  v4 = v0[55];
  v5 = v0[56];
  sub_230E68950();

  MEMORY[0x23191E910](v1);
  v6 = MEMORY[0x277D837D0];
  swift_getTupleTypeMetadata2();
  v7 = sub_230E69260();
  v8 = sub_230D0A900(v7, v6, v2, MEMORY[0x277D837E0]);

  *v3 = v8;
  v9 = v0[73];

  v10 = v0[1];

  return v10();
}

uint64_t sub_230D1746C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5, double a6)
{
  v70 = a3;
  v71 = a5;
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_230E69450();
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v64 - v23;
  v26 = MEMORY[0x28223BE20](v22, v25);
  v29 = &v64 - v28;
  v30 = *a2;
  if (!*(v30 + 16))
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    LOBYTE(v41) = -1;
    LOBYTE(v42) = -1;
LABEL_22:
    sub_230D0F460(v39, v40, v42);
    v50 = v38;
    v51 = v37;
    v52 = v41;
    return sub_230D0F460(v50, v51, v52);
  }

  v64 = v27;
  v65 = v26;
  v67 = a1;
  v75 = v6;
  result = sub_230DA41A0(7955819, 0xE300000000000000);
  if (v32)
  {
    v33 = *(v30 + 56) + 24 * result;
    v34 = *v33;
    v35 = *(v33 + 16);
    v36 = *v33;
    v72 = *(v33 + 8);
    result = sub_230D0DCD8(v36, v72, v35);
  }

  else
  {
    v34 = 0;
    v72 = 0;
    v35 = 255;
  }

  v43 = *(v30 + 16);
  v68 = v11;
  v69 = v34;
  v66 = v14;
  if (!v43)
  {
    v73 = 0;
    v74 = 0;
    v38 = 0;
    v37 = 0;
    v42 = 255;
    goto LABEL_19;
  }

  result = sub_230DA41A0(0x65756C6176, 0xE500000000000000);
  if (v44)
  {
    v45 = *(v30 + 56) + 24 * result;
    v46 = *(v45 + 8);
    v42 = *(v45 + 16);
    v73 = *v45;
    v74 = v46;
    result = sub_230D0DCD8(v73, v46, v42);
    if (!*(v30 + 16))
    {
      goto LABEL_18;
    }
  }

  else
  {
    v73 = 0;
    v74 = 0;
    v42 = 255;
    if (!*(v30 + 16))
    {
LABEL_18:
      v38 = 0;
      v37 = 0;
LABEL_19:
      v41 = 255;
      if (v35 != 3)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }
  }

  result = sub_230DA41A0(0x6974617269707865, 0xEE00656D69546E6FLL);
  if ((v47 & 1) == 0)
  {
    goto LABEL_18;
  }

  v48 = *(v30 + 56) + 24 * result;
  v41 = *(v48 + 16);
  v38 = *v48;
  v37 = *(v48 + 8);
  result = sub_230D0DCD8(*v48, v37, *(v48 + 16));
  if (v35 != 3)
  {
LABEL_20:
    if (v35 == 255)
    {
      v40 = v74;
      v39 = v73;
      goto LABEL_22;
    }

    sub_230D0F460(v69, v72, v35);
    goto LABEL_25;
  }

LABEL_14:
  if (!v72)
  {
LABEL_25:
    sub_230D0F460(v73, v74, v42);
    return sub_230D0F460(v38, v37, v41);
  }

  v49 = v75;
  if (v42)
  {
    if (v42 != 255)
    {
      sub_230D0F460(v73, v74, v42);
    }

    goto LABEL_27;
  }

  if (v74 >> 60 == 15)
  {
LABEL_27:
    sub_230D0F460(v38, v37, v41);
    v50 = v69;
LABEL_28:
    v51 = v72;
    v52 = 3;
    return sub_230D0F460(v50, v51, v52);
  }

  v53 = v69;
  if (v41 != 2)
  {
    if (v41 != 255)
    {
      sub_230D0F460(v38, v37, v41);
    }

    sub_230D0F460(v73, v74, 0);
    v50 = v53;
    goto LABEL_28;
  }

  if (v37)
  {
    goto LABEL_38;
  }

  if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_45;
  }

  if (a6 <= -9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (a6 >= 9.22337204e18)
  {
LABEL_46:
    __break(1u);
    return result;
  }

  if (v38 <= a6)
  {
    v60 = v72;
    v76 = v69;
    v77 = v72;
    sub_230D1D20C(v69, v72, 3);
    sub_230D1D20C(v38, v37, 2);
    sub_230E68FC0();
    v61 = v68;
    if ((*(v68 + 48))(v24, 1, a4) == 1)
    {
      sub_230D0F460(v53, v60, 3);
      sub_230D0F460(v38, v37, 2);
      sub_230D0F460(v73, v74, 0);
      sub_230D0F460(v53, v60, 3);
      return (*(v64 + 8))(v24, v65);
    }

    else
    {
      v62 = *(v61 + 32);
      v71 = v37;
      v63 = v66;
      v62();
      (*(v61 + 16))(v20, v63, a4);
      (*(v61 + 56))(v20, 0, 1, a4);
      v76 = v53;
      v77 = v60;
      sub_230E68FB0();
      sub_230E68FD0();
      sub_230D0F460(v73, v74, 0);
      sub_230D0F460(v38, v71, 2);
      sub_230D0F460(v53, v60, 3);
      return (*(v61 + 8))(v63, a4);
    }
  }

LABEL_38:
  v54 = sub_230E686C0();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  v57 = v72;
  sub_230D1D20C(v53, v72, 3);
  v70 = v38;
  sub_230D1D20C(v38, v37, 2);
  sub_230E686B0();
  v59 = v73;
  v58 = v74;
  sub_230E686A0();
  if (!v49)
  {

    (*(v68 + 56))(v29, 0, 1, a4);
    v76 = v53;
    v77 = v57;
    sub_230E68FB0();
    sub_230E68FD0();
    sub_230D0F460(v53, v57, 3);
    sub_230D0F460(v70, v37, 2);
    v50 = v59;
    v51 = v58;
    v52 = 0;
    return sub_230D0F460(v50, v51, v52);
  }

  sub_230D0F460(v53, v57, 3);
  sub_230D0F460(v70, v37, 2);
  sub_230D0F460(v59, v58, 0);
  sub_230D0F460(v53, v57, 3);
}

uint64_t sub_230D17BA0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  *(v5 + 112) = a4;
  *(v5 + 120) = v4;
  *(v5 + 96) = a2;
  *(v5 + 104) = a3;
  *(v5 + 564) = a1;
  v6 = sub_230E68D80();
  *(v5 + 128) = v6;
  v7 = *(v6 - 8);
  *(v5 + 136) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D17C94, v4, 0);
}

uint64_t sub_230D17C94()
{
  v35 = v0;
  v34[1] = *MEMORY[0x277D85DE8];
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
    v34[0] = v8;
    *v7 = 136315650;
    LOBYTE(v33) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v34);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v34);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v33 = 0x6C616E7265746E69;
    *(&v33 + 1) = 0xE90000000000002ELL;
    v32 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v34);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 96);
  v16 = *(v0 + 564);
  *(v0 + 56) = *(v15 + 24);
  v33 = *(v15 + 24);
  v32 = v16;
  LOBYTE(v34[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v32, v34);

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

    *(v0 + 160) = v19;
    v31 = (*(v0 + 104) + **(v0 + 104));
    v24 = *(*(v0 + 104) + 4);
    v25 = swift_task_alloc();
    *(v0 + 168) = v25;
    *v25 = v0;
    v26 = sub_230D1811C;
  }

  else
  {
    v31 = (*(v0 + 104) + **(v0 + 104));
    v27 = *(*(v0 + 104) + 4);
    v25 = swift_task_alloc();
    *(v0 + 176) = v25;
    *v25 = v0;
    v26 = sub_230D18330;
  }

  v25[1] = v26;
  v28 = *(v0 + 112);
  v29 = *MEMORY[0x277D85DE8];

  return v31(v0 + 88);
}

uint64_t sub_230D1811C()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D18258, v2, 0);
}

uint64_t sub_230D18258()
{
  v5 = *MEMORY[0x277D85DE8];
  sub_230E4B7F4(*(v0 + 564), *(v0 + 160), *(v0 + 560) != 0, *(v0 + 96), *(v0 + 152));
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);
  v3 = *MEMORY[0x277D85DE8];

  return v2(v1);
}

uint64_t sub_230D18330()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D1D300, v2, 0);
}

uint64_t sub_230D1846C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  *(v5 + 112) = a4;
  *(v5 + 120) = v4;
  *(v5 + 96) = a2;
  *(v5 + 104) = a3;
  *(v5 + 564) = a1;
  v6 = sub_230E68D80();
  *(v5 + 128) = v6;
  v7 = *(v6 - 8);
  *(v5 + 136) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D18560, v4, 0);
}

uint64_t sub_230D18560()
{
  v35 = v0;
  v34[1] = *MEMORY[0x277D85DE8];
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
    v34[0] = v8;
    *v7 = 136315650;
    LOBYTE(v33) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v34);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v34);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v33 = 0x6C616E7265746E69;
    *(&v33 + 1) = 0xE90000000000002ELL;
    v32 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v34);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 96);
  v16 = *(v0 + 564);
  *(v0 + 56) = *(v15 + 24);
  v33 = *(v15 + 24);
  v32 = v16;
  LOBYTE(v34[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v32, v34);

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

    *(v0 + 160) = v19;
    v31 = (*(v0 + 104) + **(v0 + 104));
    v24 = *(*(v0 + 104) + 4);
    v25 = swift_task_alloc();
    *(v0 + 168) = v25;
    *v25 = v0;
    v26 = sub_230D189E8;
  }

  else
  {
    v31 = (*(v0 + 104) + **(v0 + 104));
    v27 = *(*(v0 + 104) + 4);
    v25 = swift_task_alloc();
    *(v0 + 176) = v25;
    *v25 = v0;
    v26 = sub_230D18330;
  }

  v25[1] = v26;
  v28 = *(v0 + 112);
  v29 = *MEMORY[0x277D85DE8];

  return v31(v0 + 88);
}

uint64_t sub_230D189E8()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D18B24, v2, 0);
}

uint64_t sub_230D18B24()
{
  v5 = *MEMORY[0x277D85DE8];
  sub_230E4BC68(*(v0 + 564), *(v0 + 160), *(v0 + 560) != 0, *(v0 + 96), *(v0 + 152));
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);
  v3 = *MEMORY[0x277D85DE8];

  return v2(v1);
}

uint64_t sub_230D18BFC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  *(v5 + 112) = a4;
  *(v5 + 120) = v4;
  *(v5 + 96) = a2;
  *(v5 + 104) = a3;
  *(v5 + 564) = a1;
  v6 = sub_230E68D80();
  *(v5 + 128) = v6;
  v7 = *(v6 - 8);
  *(v5 + 136) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D18CF0, v4, 0);
}

uint64_t sub_230D18CF0()
{
  v35 = v0;
  v34[1] = *MEMORY[0x277D85DE8];
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
    v34[0] = v8;
    *v7 = 136315650;
    LOBYTE(v33) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v34);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v34);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v33 = 0x6C616E7265746E69;
    *(&v33 + 1) = 0xE90000000000002ELL;
    v32 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v34);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 96);
  v16 = *(v0 + 564);
  *(v0 + 56) = *(v15 + 24);
  v33 = *(v15 + 24);
  v32 = v16;
  LOBYTE(v34[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v32, v34);

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

    *(v0 + 160) = v19;
    v31 = (*(v0 + 104) + **(v0 + 104));
    v24 = *(*(v0 + 104) + 4);
    v25 = swift_task_alloc();
    *(v0 + 168) = v25;
    *v25 = v0;
    v26 = sub_230D19178;
  }

  else
  {
    v31 = (*(v0 + 104) + **(v0 + 104));
    v27 = *(*(v0 + 104) + 4);
    v25 = swift_task_alloc();
    *(v0 + 176) = v25;
    *v25 = v0;
    v26 = sub_230D1938C;
  }

  v25[1] = v26;
  v28 = *(v0 + 112);
  v29 = *MEMORY[0x277D85DE8];

  return v31(v0 + 88);
}

uint64_t sub_230D19178()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D192B4, v2, 0);
}

uint64_t sub_230D192B4()
{
  v5 = *MEMORY[0x277D85DE8];
  sub_230E4C9C4(*(v0 + 564), *(v0 + 160), *(v0 + 560) != 0, *(v0 + 96), *(v0 + 152));
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);
  v3 = *MEMORY[0x277D85DE8];

  return v2(v1);
}

uint64_t sub_230D1938C()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D194C8, v2, 0);
}

uint64_t sub_230D194C8()
{
  v5 = *MEMORY[0x277D85DE8];
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1 = v0[11];

  v2 = v0[1];
  v3 = *MEMORY[0x277D85DE8];

  return v2(v1);
}

uint64_t sub_230D19580(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  *(v5 + 112) = a4;
  *(v5 + 120) = v4;
  *(v5 + 96) = a2;
  *(v5 + 104) = a3;
  *(v5 + 564) = a1;
  v6 = sub_230E68D80();
  *(v5 + 128) = v6;
  v7 = *(v6 - 8);
  *(v5 + 136) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D19674, v4, 0);
}

uint64_t sub_230D19674()
{
  v35 = v0;
  v34[1] = *MEMORY[0x277D85DE8];
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
    v34[0] = v8;
    *v7 = 136315650;
    LOBYTE(v33) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v34);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v34);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v33 = 0x6C616E7265746E69;
    *(&v33 + 1) = 0xE90000000000002ELL;
    v32 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v34);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 96);
  v16 = *(v0 + 564);
  *(v0 + 56) = *(v15 + 24);
  v33 = *(v15 + 24);
  v32 = v16;
  LOBYTE(v34[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v32, v34);

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

    *(v0 + 160) = v19;
    v31 = (*(v0 + 104) + **(v0 + 104));
    v24 = *(*(v0 + 104) + 4);
    v25 = swift_task_alloc();
    *(v0 + 168) = v25;
    *v25 = v0;
    v26 = sub_230D19AFC;
  }

  else
  {
    v31 = (*(v0 + 104) + **(v0 + 104));
    v27 = *(*(v0 + 104) + 4);
    v25 = swift_task_alloc();
    *(v0 + 176) = v25;
    *v25 = v0;
    v26 = sub_230D18330;
  }

  v25[1] = v26;
  v28 = *(v0 + 112);
  v29 = *MEMORY[0x277D85DE8];

  return v31(v0 + 88);
}

uint64_t sub_230D19AFC()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D19C38, v2, 0);
}

uint64_t sub_230D19C38()
{
  v5 = *MEMORY[0x277D85DE8];
  sub_230E4D720(*(v0 + 564), *(v0 + 160), *(v0 + 560) != 0, *(v0 + 96), *(v0 + 152));
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);
  v3 = *MEMORY[0x277D85DE8];

  return v2(v1);
}

uint64_t sub_230D19D10(uint64_t a1, uint64_t a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v4 = *(a2 + 16);
  *(v3 + 112) = *a2;
  *(v3 + 128) = v4;
  *(v3 + 144) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_230D19D40, v2, 0);
}

uint64_t sub_230D19D40()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v3 = *(v0 + 136);
    v2 = *(v0 + 144);
    v4 = *(v0 + 112);
    v5 = *(v0 + 120);
    *(v0 + 160) = v1;
    *(v0 + 168) = v2;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    *(v6 + 16) = *(v0 + 96);
    *(v6 + 32) = v0 + 16;
    sub_230D0585C(v4, v5, v1);
    v7 = swift_task_alloc();
    *(v0 + 184) = v7;
    *v7 = v0;
    v7[1] = sub_230D1A180;
    v8 = *(v0 + 104);

    return sub_230D17BA0(7, v0 + 16, &unk_230E6C100, v6);
  }

  else
  {
    *(v0 + 192) = 7;
    v10 = swift_task_alloc();
    *(v0 + 152) = v10;
    *v10 = v0;
    v10[1] = sub_230D19F20;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 192), 0, 0);
  }
}

uint64_t sub_230D19F20()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230D1A030, v2, 0);
}

uint64_t sub_230D1A030()
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
  v11 = *(v0 + 112);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;
  v12 = swift_task_alloc();
  *(v0 + 176) = v12;
  *(v12 + 16) = *(v0 + 96);
  *(v12 + 32) = v0 + 16;
  sub_230D0585C(v11, v10, v9);
  v13 = swift_task_alloc();
  *(v0 + 184) = v13;
  *v13 = v0;
  v13[1] = sub_230D1A180;
  v14 = *(v0 + 104);

  return sub_230D17BA0(7, v0 + 16, &unk_230E6C100, v12);
}

uint64_t sub_230D1A180(uint64_t a1)
{
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  v5 = *(*v1 + 168);
  v6 = *(*v1 + 160);
  v9 = *v1;

  v7 = *(v9 + 8);

  return v7(a1);
}

uint64_t sub_230D1A2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[34] = a3;
  v4[35] = a4;
  v4[32] = a1;
  v4[33] = a2;
  return MEMORY[0x2822009F8](sub_230D1A2FC, a3, 0);
}

uint64_t sub_230D1A2FC()
{
  v1 = *(v0 + 264);
  if (*(v1 + 3))
  {
    sub_230D1D01C(*(v0 + 264), v0 + 56);
    if (!*(v0 + 80))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = *v1;
    v14 = v1[1];
    *(v0 + 88) = *(v1 + 4);
    *(v0 + 72) = v14;
    *(v0 + 56) = v13;
    if (!*(v0 + 80))
    {
LABEL_3:
      v2 = *(v1 + 3);
      if (v2)
      {
LABEL_4:
        v3 = sub_230D1D01C(*(v0 + 264), v0 + 176);
        v6 = *(v0 + 200);
        if (!v6)
        {
          __break(1u);
          return MEMORY[0x2822009F8](v3, v4, v5);
        }

        v7 = *(v0 + 208);
        v8 = __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
        *(v0 + 248) = sub_230E05CFC(sub_230D1D2E0, 0, v6, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v7, MEMORY[0x277D84AC0], v8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
        sub_230D1D1C4(&qword_281565F50, &unk_27DB5D8F0, &unk_230E70E80);
        v9 = sub_230E68FF0();
        v11 = v10;

        __swift_destroy_boxed_opaque_existential_1((v0 + 176));
        MEMORY[0x23191DA00](v9, v11);

        MEMORY[0x23191DA00](41, 0xE100000000000000);
        v2 = 0x28204E492079656BLL;
        v12 = 0xE800000000000000;
LABEL_13:
        *(v0 + 288) = v2;
        *(v0 + 296) = v12;
        v18 = *(v0 + 272);
        v19 = *(v0 + 280);
        swift_bridgeObjectRelease_n();
        v20 = *(v18 + 112);
        *(v0 + 304) = v20;
        sub_230D1CDE0(v19, v0 + 96);
        v3 = sub_230D1A59C;
        v4 = v20;
        v5 = 0;

        return MEMORY[0x2822009F8](v3, v4, v5);
      }

LABEL_12:
      v12 = 0;
      goto LABEL_13;
    }
  }

  sub_230D1D080((v0 + 56), v0 + 16);
  v15 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  if ((sub_230E69390() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v2 = *(v1 + 3);
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  **(v0 + 256) = 0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v16 = *(v0 + 8);

  return v16();
}

void sub_230D1A59C()
{
  v1 = v0[37];
  v2 = v0[38];
  sub_230D1CDE0(v0[35], (v0 + 17));

  v3 = swift_task_alloc();
  v0[39] = v3;
  *v3 = v0;
  v3[1] = sub_230D1A69C;
  v4 = v0[37];
  v5 = v0[35];
  v6 = v0[36];
  v8 = v0[38];

  JUMPOUT(0x230D71ACCLL);
}

uint64_t sub_230D1A69C()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 304);
  sub_230D1CE3C(*(v2 + 280));
  if (v0)
  {
    v6 = sub_230D1A880;
  }

  else
  {
    v6 = sub_230D1A7E4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D1A7E4()
{
  v1 = v0[37];
  v2 = v0[34];
  sub_230D1CE3C(v0[35]);

  return MEMORY[0x2822009F8](sub_230D1A860, v2, 0);
}

uint64_t sub_230D1A880()
{
  v1 = *(v0 + 272);
  sub_230D1CE3C(*(v0 + 280));

  return MEMORY[0x2822009F8](sub_230D1A8E8, v1, 0);
}

uint64_t sub_230D1A8E8()
{
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[32];

  sub_230E69540();
  v0[27] = 0;
  v0[28] = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD000000000000023, 0x8000000230E80E20);
  v0[30] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  v4 = v0[27];
  v5 = v0[28];
  sub_230E68950();

  MEMORY[0x23191E910](v1);
  *v3 = 0;
  v6 = v0[1];

  return v6();
}

uint64_t sub_230D1AA14@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x23191DA00](*a1, a1[1]);
  result = MEMORY[0x23191DA00](39, 0xE100000000000000);
  *a2 = 39;
  a2[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_230D1AA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  return MEMORY[0x2822009F8](sub_230D1AAA8, a4, 0);
}

uint64_t sub_230D1AAA8()
{
  v2 = v0[19];
  v1 = v0[20];
  MEMORY[0x23191DA00](v0[17], v0[18]);
  MEMORY[0x23191DA00](10021, 0xE200000000000000);
  v0[21] = 0x454B494C2079656BLL;
  v0[22] = 0xEA00000000002720;
  swift_bridgeObjectRelease_n();
  v3 = *(v2 + 112);
  v0[23] = v3;
  sub_230D1CDE0(v1, (v0 + 2));

  return MEMORY[0x2822009F8](sub_230D1AB74, v3, 0);
}

void sub_230D1AB74()
{
  v2 = v0[22];
  v1 = v0[23];
  sub_230D1CDE0(v0[20], (v0 + 7));

  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_230D1AC78;
  v4 = v0[20];
  v5 = v0[21];
  v7 = v0[23];

  JUMPOUT(0x230D71ACCLL);
}

uint64_t sub_230D1AC78()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 200) = v0;

  sub_230D1CE3C(v4);
  v6 = *(v2 + 184);
  if (v0)
  {
    v7 = sub_230D1AE5C;
  }

  else
  {
    v7 = sub_230D1ADC0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230D1ADC0()
{
  v1 = v0[22];
  v2 = v0[19];
  sub_230D1CE3C(v0[20]);

  return MEMORY[0x2822009F8](sub_230D1AE3C, v2, 0);
}

uint64_t sub_230D1AE5C()
{
  v1 = *(v0 + 152);
  sub_230D1CE3C(*(v0 + 160));

  return MEMORY[0x2822009F8](sub_230D1AEC4, v1, 0);
}

uint64_t sub_230D1AEC4()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);

  sub_230E69540();
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD000000000000023, 0x8000000230E80E20);
  *(v0 + 120) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  sub_230E68950();

  MEMORY[0x23191E910](v1);
  **(v0 + 128) = 0;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_230D1AFE8(uint64_t a1)
{
  *(v2 + 96) = v1;
  v3 = *(a1 + 16);
  *(v2 + 104) = *a1;
  *(v2 + 120) = v3;
  *(v2 + 136) = *(a1 + 32);
  return MEMORY[0x2822009F8](sub_230D1B01C, v1, 0);
}

uint64_t sub_230D1B01C()
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
    v7[1] = sub_230D1B424;
    v8 = *(v0 + 96);

    return (sub_230D81570)(7, v0 + 16);
  }

  else
  {
    *(v0 + 176) = 7;
    v10 = swift_task_alloc();
    *(v0 + 144) = v10;
    *v10 = v0;
    v10[1] = sub_230D1B1DC;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 176), 0, 0);
  }
}

uint64_t sub_230D1B1DC()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230D1B2EC, v2, 0);
}

uint64_t sub_230D1B2EC()
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
  v13[1] = sub_230D1B424;
  v14 = *(v0 + 96);

  return (sub_230D81570)(7, v0 + 16);
}

uint64_t sub_230D1B424(uint64_t a1)
{
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  v6 = *(*v1 + 96);
  v9 = *v1;

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v7 = *(v9 + 8);

  return v7(a1);
}

uint64_t sub_230D1B584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  v5 = sub_230E68910();
  v3[21] = v5;
  v6 = *(v5 - 8);
  v3[22] = v6;
  v7 = *(v6 + 64) + 15;
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D1B64C, a2, 0);
}

uint64_t sub_230D1B64C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
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

  v11 = v0[19];
  v10 = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6A8, &unk_230E6B3C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_230E6C070;
  *(v12 + 32) = 0xD00000000000001ALL;
  *(v12 + 40) = 0x8000000230E80E50;
  v0[14] = v5;
  v13 = sub_230E69890();
  MEMORY[0x23191DA00](v13);

  *(v12 + 48) = 0xD000000000000011;
  *(v12 + 56) = 0x8000000230E80E70;
  v0[15] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  sub_230D1D1C4(&qword_281565F50, &unk_27DB5D8F0, &unk_230E70E80);
  v14 = sub_230E68FF0();
  v16 = v15;

  v0[24] = v14;
  v0[25] = v16;
  swift_bridgeObjectRelease_n();
  v17 = *(v11 + 112);
  v0[26] = v17;
  sub_230D1CDE0(v10, (v0 + 2));
  v7 = sub_230D1B884;
  v8 = v17;
  v9 = 0;

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_230D1B884()
{
  v2 = v0[25];
  v1 = v0[26];
  sub_230D1CDE0(v0[20], (v0 + 7));

  v3 = swift_task_alloc();
  v0[27] = v3;
  *v3 = v0;
  v3[1] = sub_230D1B98C;
  v4 = v0[24];
  v5 = v0[20];
  v7 = v0[26];

  JUMPOUT(0x230D71ACCLL);
}

uint64_t sub_230D1B98C()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 224) = v0;

  sub_230D1CE3C(v4);
  v6 = *(v2 + 208);
  if (v0)
  {
    v7 = sub_230D1BBBC;
  }

  else
  {
    v7 = sub_230D1BAD4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230D1BAD4()
{
  v1 = v0[25];
  v2 = v0[19];
  sub_230D1CE3C(v0[20]);

  return MEMORY[0x2822009F8](sub_230D1BB50, v2, 0);
}

uint64_t sub_230D1BB50()
{
  v1 = *(v0 + 184);
  **(v0 + 144) = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_230D1BBBC()
{
  v1 = *(v0 + 152);
  sub_230D1CE3C(*(v0 + 160));

  return MEMORY[0x2822009F8](sub_230D1BC24, v1, 0);
}

uint64_t sub_230D1BC24()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 200);

  sub_230E69540();
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD00000000000002ALL, 0x8000000230E80E90);
  *(v0 + 136) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  sub_230E68950();

  MEMORY[0x23191E910](v1);
  v5 = *(v0 + 184);
  **(v0 + 144) = 0;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t KVDatabaseClient.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t KVDatabaseClient.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_230D1BDBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5ABF0, &qword_230E71DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_230D1BE24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_230D1BF00;

  return sub_230D14A5C(a1, v7, v8, v9, v10, v4, v5, v6);
}

uint64_t sub_230D1BF00()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_230D1BFF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_230D1D2F8;

  return sub_230D1688C(a1, v7, v8, v9, v10, v4, v5, v6);
}

uint64_t sub_230D1C0F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_230D1D2F8;

  return sub_230D1A2D8(a1, v4, v5, v6);
}

uint64_t sub_230D1C1A8(uint64_t a1)
{
  result = sub_230D1C1EC(&qword_27DB5AC08);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_230D1C1EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for KVDatabaseClient();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of KVDatabaseClient.set<A>(_:_:expiration:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *(*v8 + 120);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v9 + 16) = v20;
  *v20 = v9;
  v20[1] = sub_230D05B20;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of KVDatabaseClient.set<A>(_:expiration:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 128);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_230D05B20;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of KVDatabaseClient.set<A>(_:expirations:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 136);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_230D1D2FC;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of KVDatabaseClient.get<A>(_:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *(*v7 + 144);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_230D1BF00;

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of KVDatabaseClient.get<A>(_:fallback:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *(*v8 + 152);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v9 + 16) = v20;
  *v20 = v9;
  v20[1] = sub_230D1D2F8;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of KVDatabaseClient.get<A>(_:fallbacks:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 160);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_230D1D374;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of KVDatabaseClient.delete(_:requestContext:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 168);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_230D1D374;

  return v10(a1, a2);
}

uint64_t dispatch thunk of KVDatabaseClient.deleteExpired(requestContext:)(uint64_t a1)
{
  v4 = *(*v1 + 184);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_230D1CCE4;

  return v8(a1);
}

uint64_t sub_230D1CCE4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_230D1CEEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D8C0, &qword_230E6C210);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_230D1CF5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLDatabaseConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230D1CFC0(uint64_t a1)
{
  v2 = type metadata accessor for SQLDatabaseConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_230D1D01C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_230D1D080(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_230D1D1C4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_230D1D20C(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_230D0DCD8(result, a2, a3);
  }

  return result;
}

uint64_t sub_230D1D220(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  return sub_230D153E0(a1, a2, a3, *(v3 + 40), *(v3 + 48));
}

uint64_t sub_230D1D244@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 48);
  return sub_230D1570C(a1, *(v3 + 40), a2, a3);
}

uint64_t sub_230D1D26C()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_230D12320();
}

uint64_t sub_230D1D300()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_230D194C8();
}

uint64_t sub_230D1D378()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_230D12E10();
}

uint64_t ServicesIntelligenceProvider.getKVDatabaseClient(domain:dataClass:requestContext:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  *(v4 + 104) = *a3;
  *(v4 + 96) = v3;
  *(v4 + 177) = *a1;
  *(v4 + 120) = v5;
  *(v4 + 136) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230D1D428, v3, 0);
}

uint64_t sub_230D1D428()
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
    v7[1] = sub_230D0571C;
    v8 = *(v0 + 96);
    v9 = *(v0 + 177);

    return (sub_230D72678)(15, v0 + 16);
  }

  else
  {
    *(v0 + 176) = 15;
    v11 = swift_task_alloc();
    *(v0 + 144) = v11;
    *v11 = v0;
    v11[1] = sub_230D1D5D8;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 176), 0, 0);
  }
}

uint64_t sub_230D1D5D8()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230D1D6E8, v2, 0);
}

uint64_t sub_230D1D6E8()
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
  v8 = *(v0 + 128);
  v9 = *(v0 + 136);
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
  v13[1] = sub_230D0571C;
  v14 = *(v0 + 96);
  v15 = *(v0 + 177);

  return (sub_230D72678)(15, v0 + 16);
}

uint64_t sub_230D1D808(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 80) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = a3;
  return MEMORY[0x2822009F8](sub_230D1D82C, a3, 0);
}

uint64_t sub_230D1D82C()
{
  v15 = v0;
  v1 = *(v0 + 72);
  swift_beginAccess();
  v2 = *(v1 + 120);
  if (*(v2 + 16))
  {
    v3 = *(v0 + 80);
    v4 = *(v1 + 120);

    v5 = sub_230DB4B4C(v3, 1852399981, 0xE400000000000000, 2);
    if (v6)
    {
      v7 = v5;

      v8 = *(*(v2 + 56) + 8 * v7);

      goto LABEL_6;
    }
  }

  v14[0] = *(v0 + 80);
  type metadata accessor for KVDatabaseClient();
  swift_allocObject();
  v8 = sub_230D13900(v14);
  v9 = *(v0 + 80);
  swift_beginAccess();

  v10 = *(v1 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = *(v1 + 120);
  *(v1 + 120) = 0x8000000000000000;
  sub_230E1B8F0(v8, v9, 1852399981, 0xE400000000000000, 2, isUniquelyReferenced_nonNull_native);

  *(v1 + 120) = *v14;
  swift_endAccess();
LABEL_6:
  **(v0 + 64) = v8;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t ServicesIntelligenceProvider.getKVDatabaseClient(dataClass:requestContext:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 56) = v2;
  v4 = *(a2 + 16);
  *(v3 + 64) = *a2;
  *(v3 + 80) = v4;
  *(v3 + 96) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_230D1DA0C, v2, 0);
}

uint64_t sub_230D1DA0C()
{
  sub_230DCB5D4((v0 + 120));
  v1 = *(v0 + 96);
  *(v0 + 121) = *(v0 + 120);
  v2 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v2;
  *(v0 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_230D1DB18;
  v5 = *(v0 + 56);

  return ServicesIntelligenceProvider.getKVDatabaseClient(domain:dataClass:requestContext:)((v0 + 121), v4, v0 + 16);
}

uint64_t sub_230D1DB18(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = *(v4 + 56);

    return MEMORY[0x2822009F8](sub_230D1DC68, v7, 0);
  }

  else
  {
    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_230D1DC80(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  *(v4 + 240) = a3;
  *(v4 + 248) = a4;
  *(v4 + 813) = a2;
  *(v4 + 232) = a1;
  v6 = sub_230E68D80();
  *(v4 + 256) = v6;
  v7 = *(v6 - 8);
  *(v4 + 264) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 272) = swift_task_alloc();
  v9 = sub_230E68860();
  *(v4 + 280) = v9;
  v10 = *(v9 - 8);
  *(v4 + 288) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 296) = swift_task_alloc();
  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D1DDD4, a3, 0);
}

uint64_t sub_230D1DDD4()
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = *(v0 + 813);
  KVDatabaseConfiguration.path.getter(*(v0 + 296));
  v1 = *(v0 + 248);
  sub_230D1CDE0(v1, v0 + 16);
  sub_230D1CDE0(v1, v0 + 56);

  v2 = swift_task_alloc();
  *(v0 + 304) = v2;
  *v2 = v0;
  v2[1] = sub_230D1DF64;
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 813);
  v6 = *MEMORY[0x277D85DE8];

  return sub_230D72678(15, v3, v4, v5, v4);
}

uint64_t sub_230D1DF64(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;
  *(v4 + 312) = a1;
  *(v4 + 320) = v1;

  v7 = *(v3 + 248);
  v8 = *(v3 + 240);
  sub_230D1CE3C(v7);
  if (v1)
  {
    v9 = sub_230D1E710;
  }

  else
  {
    v9 = sub_230D1E0E0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_230D1E0E0()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 312);
  sub_230D1CE3C(*(v0 + 248));
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D1E178, v1, 0);
}

uint64_t sub_230D1E178()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 312);
  v2 = *(v1 + 112);
  *(v0 + 328) = v2;
  *(v0 + 812) = *(v1 + 120);
  *(v0 + 336) = sub_230D0CE24();
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D1E22C, v2, 0);
}

uint64_t sub_230D1E22C()
{
  v36 = v0;
  v35[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 336);
  v2 = v1[2];
  *(v0 + 344) = v2;
  if (v2)
  {
    v3 = *(v0 + 248);
    *(v0 + 176) = *(v3 + 24);
    *(v0 + 814) = *v3;
    *(v0 + 815) = *(v0 + 176);
    *(v0 + 352) = 0;
    v4 = *(v0 + 328);
    v5 = *(v0 + 272);
    v7 = v1[4];
    v6 = v1[5];
    *(v0 + 360) = v6;
    v8 = v1[6];
    *(v0 + 368) = v8;

    sub_230D1CDE0(v3, v0 + 96);

    sub_230E68D70();
    sub_230D1CDE0(v3, v0 + 136);
    v9 = sub_230E68D60();
    v10 = sub_230E693E0();
    sub_230D1CE3C(v3);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 248);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v35[0] = v13;
      *v12 = 136315650;
      *(v12 + 4) = sub_230D7E620(0x5153657461657263, 0xEE00656C6261544CLL, v35);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_230D7E620(*(v11 + 1), *(v11 + 2), v35);
      *(v12 + 22) = 2080;
      v14 = *v11;
      *(v0 + 208) = 0x6C616E7265746E69;
      *(v0 + 216) = 0xE90000000000002ELL;
      v15 = RequestType.rawValue.getter();
      MEMORY[0x23191DA00](v15);

      v16 = sub_230D7E620(*(v0 + 208), *(v0 + 216), v35);

      *(v12 + 24) = v16;
      _os_log_impl(&dword_230D02000, v9, v10, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23191EAE0](v13, -1, -1);
      MEMORY[0x23191EAE0](v12, -1, -1);
    }

    if (*(v0 + 815))
    {
      v17 = *(v0 + 184);
      LOBYTE(v35[0]) = *(v0 + 814);
      v18 = RequestType.rawValue.getter();
      v20 = v19;
      sub_230D1CE90(v0 + 176, v0 + 192);
      LOBYTE(v18) = sub_230D33FDC(v18, v20, v17);

      if (v18)
      {
        sub_230D1F9CC(v0 + 176);
LABEL_12:
        sub_230E68950();
        *(v0 + 376) = CFAbsoluteTimeGetCurrent();
        *(v0 + 432) = 0u;
        *(v0 + 448) = 0u;
        *(v0 + 464) = 0u;
        *(v0 + 480) = 0u;
        *(v0 + 496) = 0u;
        *(v0 + 512) = 0u;
        *(v0 + 528) = 0u;
        *(v0 + 544) = 0u;
        *(v0 + 560) = 0u;
        *(v0 + 576) = 0u;
        *(v0 + 592) = 0u;
        *(v0 + 608) = 0u;
        *(v0 + 624) = 0u;
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
        *(v0 + 800) = 0;
        *(v0 + 804) = 93;
        v26 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 432), (v0 + 804));
        *(v0 + 808) = v26;
        v27 = 0.0;
        if (!v26)
        {
          v28 = *(v0 + 480);
          v29 = *(v0 + 552);
          v30 = __CFADD__(v28, v29);
          v31 = v28 + v29;
          if (v30)
          {
            __break(1u);
          }

          v27 = vcvtd_n_f64_u64(v31, 0x14uLL);
        }

        *(v0 + 400) = v27;
        *(v0 + 224) = 0;
        v24 = swift_task_alloc();
        *(v0 + 408) = v24;
        *v24 = v0;
        v25 = sub_230D1EA0C;
        goto LABEL_16;
      }

      v23 = *(v0 + 177);
      sub_230D1F9CC(v0 + 176);
      if (v23 >= 2)
      {
        goto LABEL_12;
      }
    }

    v24 = swift_task_alloc();
    *(v0 + 384) = v24;
    *v24 = v0;
    v25 = sub_230D1E8B4;
LABEL_16:
    v24[1] = v25;
    v32 = *(v0 + 328);
    v33 = *MEMORY[0x277D85DE8];

    return sub_230D3D310(v24, v32, v7, v6, v8);
  }

  v21 = *(v0 + 240);

  v22 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D1E7DC, v21, 0);
}

uint64_t sub_230D1E710()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  sub_230D1CE3C(v0[31]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[40];
  v5 = v0[37];
  v6 = v0[34];

  v7 = v0[1];
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_230D1E7DC()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[39];
  v3 = v0[36];
  v2 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[29];

  (*(v3 + 32))(v6, v2, v4);

  v7 = v0[1];
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_230D1E8B4()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;
  *(*v1 + 392) = v0;

  v5 = *(v2 + 328);
  if (v0)
  {
    v6 = sub_230D1F8C8;
  }

  else
  {
    v6 = sub_230D1F398;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D1EA0C()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  v5 = *(v2 + 328);
  if (v0)
  {
    v6 = sub_230D1F0C0;
  }

  else
  {
    v6 = sub_230D1EB64;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D1EB64()
{
  v48 = v0;
  v47[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 328);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v7 = *(v0 + 248);
  v6 = *(v0 + 256);
  sub_230D34A54(5, *(v0 + 400), *(v0 + 808) != 0, v7, (v0 + 224), *(v0 + 376));
  (*(v5 + 8))(v4, v6);

  sub_230D1CE3C(v7);
  v8 = *(v0 + 360);
  v9 = *(v0 + 368);
  v11 = *(v0 + 344);
  v10 = *(v0 + 352);

  if (v10 + 1 == v11)
  {
    v12 = *(v0 + 336);
    v13 = *(v0 + 240);

    v14 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230D1E7DC, v13, 0);
  }

  v15 = *(v0 + 352);
  *(v0 + 352) = v15 + 1;
  v16 = *(v0 + 328);
  v17 = *(v0 + 272);
  v18 = *(v0 + 248);
  v19 = (*(v0 + 336) + 24 * v15);
  v21 = v19[7];
  v20 = v19[8];
  *(v0 + 360) = v20;
  v22 = v19[9];
  *(v0 + 368) = v22;

  sub_230D1CDE0(v18, v0 + 96);

  sub_230E68D70();
  sub_230D1CDE0(v18, v0 + 136);
  v23 = sub_230E68D60();
  v24 = sub_230E693E0();
  sub_230D1CE3C(v18);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 248);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v47[0] = v27;
    *v26 = 136315650;
    *(v26 + 4) = sub_230D7E620(0x5153657461657263, 0xEE00656C6261544CLL, v47);
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_230D7E620(*(v25 + 1), *(v25 + 2), v47);
    *(v26 + 22) = 2080;
    v28 = *v25;
    *(v0 + 208) = 0x6C616E7265746E69;
    *(v0 + 216) = 0xE90000000000002ELL;
    v29 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v29);

    v30 = sub_230D7E620(*(v0 + 208), *(v0 + 216), v47);

    *(v26 + 24) = v30;
    _os_log_impl(&dword_230D02000, v23, v24, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v26, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v27, -1, -1);
    MEMORY[0x23191EAE0](v26, -1, -1);
  }

  if (*(v0 + 815))
  {
    v31 = *(v0 + 184);
    LOBYTE(v47[0]) = *(v0 + 814);
    v32 = RequestType.rawValue.getter();
    v34 = v33;
    sub_230D1CE90(v0 + 176, v0 + 192);
    LOBYTE(v32) = sub_230D33FDC(v32, v34, v31);

    if (v32)
    {
      sub_230D1F9CC(v0 + 176);
LABEL_12:
      sub_230E68950();
      *(v0 + 376) = CFAbsoluteTimeGetCurrent();
      *(v0 + 432) = 0u;
      *(v0 + 448) = 0u;
      *(v0 + 464) = 0u;
      *(v0 + 480) = 0u;
      *(v0 + 496) = 0u;
      *(v0 + 512) = 0u;
      *(v0 + 528) = 0u;
      *(v0 + 544) = 0u;
      *(v0 + 560) = 0u;
      *(v0 + 576) = 0u;
      *(v0 + 592) = 0u;
      *(v0 + 608) = 0u;
      *(v0 + 624) = 0u;
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
      *(v0 + 800) = 0;
      *(v0 + 804) = 93;
      v38 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 432), (v0 + 804));
      *(v0 + 808) = v38;
      v39 = 0.0;
      if (!v38)
      {
        v40 = *(v0 + 480);
        v41 = *(v0 + 552);
        v42 = __CFADD__(v40, v41);
        v43 = v40 + v41;
        if (v42)
        {
          __break(1u);
        }

        v39 = vcvtd_n_f64_u64(v43, 0x14uLL);
      }

      *(v0 + 400) = v39;
      *(v0 + 224) = 0;
      v36 = swift_task_alloc();
      *(v0 + 408) = v36;
      *v36 = v0;
      v37 = sub_230D1EA0C;
      goto LABEL_16;
    }

    v35 = *(v0 + 177);
    sub_230D1F9CC(v0 + 176);
    if (v35 >= 2)
    {
      goto LABEL_12;
    }
  }

  v36 = swift_task_alloc();
  *(v0 + 384) = v36;
  *v36 = v0;
  v37 = sub_230D1E8B4;
LABEL_16:
  v36[1] = v37;
  v44 = *(v0 + 328);
  v45 = *MEMORY[0x277D85DE8];

  return sub_230D3D310(v36, v44, v21, v20, v22);
}

uint64_t sub_230D1F0C0()
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 416);
  v2 = *(v0 + 400);
  v3 = *(v0 + 376);
  v17 = *(v0 + 360);
  v18 = *(v0 + 368);
  v16 = *(v0 + 328);
  v4 = *(v0 + 264);
  v5 = *(v0 + 272);
  v7 = *(v0 + 248);
  v6 = *(v0 + 256);
  v8 = *(v0 + 808) != 0;
  *(v0 + 224) = v1;
  swift_willThrow();
  v9 = v1;
  sub_230D34A54(5, v2, v8, v7, (v0 + 224), v3);
  MEMORY[0x23191E910](v1);
  (*(v4 + 8))(v5, v6);

  sub_230D1CE3C(v7);
  *(v0 + 424) = *(v0 + 416);
  v10 = *(v0 + 360);
  v11 = *(v0 + 368);
  v12 = *(v0 + 336);
  v13 = *(v0 + 312);

  v14 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D1F240, v13, 0);
}

uint64_t sub_230D1F240()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 240);
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D1F2CC, v1, 0);
}

uint64_t sub_230D1F2CC()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[39];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];

  (*(v3 + 8))(v2, v4);
  v5 = v0[53];
  v6 = v0[37];
  v7 = v0[34];

  v8 = v0[1];
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_230D1F398()
{
  v45 = v0;
  v44[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 328);
  v4 = *(v0 + 248);
  (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));

  sub_230D1CE3C(v4);
  v5 = *(v0 + 360);
  v6 = *(v0 + 368);
  v8 = *(v0 + 344);
  v7 = *(v0 + 352);

  if (v7 + 1 == v8)
  {
    v9 = *(v0 + 336);
    v10 = *(v0 + 240);

    v11 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230D1E7DC, v10, 0);
  }

  v12 = *(v0 + 352);
  *(v0 + 352) = v12 + 1;
  v13 = *(v0 + 328);
  v14 = *(v0 + 272);
  v15 = *(v0 + 248);
  v16 = (*(v0 + 336) + 24 * v12);
  v18 = v16[7];
  v17 = v16[8];
  *(v0 + 360) = v17;
  v19 = v16[9];
  *(v0 + 368) = v19;

  sub_230D1CDE0(v15, v0 + 96);

  sub_230E68D70();
  sub_230D1CDE0(v15, v0 + 136);
  v20 = sub_230E68D60();
  v21 = sub_230E693E0();
  sub_230D1CE3C(v15);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v0 + 248);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v44[0] = v24;
    *v23 = 136315650;
    *(v23 + 4) = sub_230D7E620(0x5153657461657263, 0xEE00656C6261544CLL, v44);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_230D7E620(*(v22 + 1), *(v22 + 2), v44);
    *(v23 + 22) = 2080;
    v25 = *v22;
    *(v0 + 208) = 0x6C616E7265746E69;
    *(v0 + 216) = 0xE90000000000002ELL;
    v26 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v26);

    v27 = sub_230D7E620(*(v0 + 208), *(v0 + 216), v44);

    *(v23 + 24) = v27;
    _os_log_impl(&dword_230D02000, v20, v21, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v24, -1, -1);
    MEMORY[0x23191EAE0](v23, -1, -1);
  }

  if (*(v0 + 815))
  {
    v28 = *(v0 + 184);
    LOBYTE(v44[0]) = *(v0 + 814);
    v29 = RequestType.rawValue.getter();
    v31 = v30;
    sub_230D1CE90(v0 + 176, v0 + 192);
    LOBYTE(v29) = sub_230D33FDC(v29, v31, v28);

    if (v29)
    {
      sub_230D1F9CC(v0 + 176);
LABEL_12:
      sub_230E68950();
      *(v0 + 376) = CFAbsoluteTimeGetCurrent();
      *(v0 + 432) = 0u;
      *(v0 + 448) = 0u;
      *(v0 + 464) = 0u;
      *(v0 + 480) = 0u;
      *(v0 + 496) = 0u;
      *(v0 + 512) = 0u;
      *(v0 + 528) = 0u;
      *(v0 + 544) = 0u;
      *(v0 + 560) = 0u;
      *(v0 + 576) = 0u;
      *(v0 + 592) = 0u;
      *(v0 + 608) = 0u;
      *(v0 + 624) = 0u;
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
      *(v0 + 800) = 0;
      *(v0 + 804) = 93;
      v35 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 432), (v0 + 804));
      *(v0 + 808) = v35;
      v36 = 0.0;
      if (!v35)
      {
        v37 = *(v0 + 480);
        v38 = *(v0 + 552);
        v39 = __CFADD__(v37, v38);
        v40 = v37 + v38;
        if (v39)
        {
          __break(1u);
        }

        v36 = vcvtd_n_f64_u64(v40, 0x14uLL);
      }

      *(v0 + 400) = v36;
      *(v0 + 224) = 0;
      v33 = swift_task_alloc();
      *(v0 + 408) = v33;
      *v33 = v0;
      v34 = sub_230D1EA0C;
      goto LABEL_16;
    }

    v32 = *(v0 + 177);
    sub_230D1F9CC(v0 + 176);
    if (v32 >= 2)
    {
      goto LABEL_12;
    }
  }

  v33 = swift_task_alloc();
  *(v0 + 384) = v33;
  *v33 = v0;
  v34 = sub_230D1E8B4;
LABEL_16:
  v33[1] = v34;
  v41 = *(v0 + 328);
  v42 = *MEMORY[0x277D85DE8];

  return sub_230D3D310(v33, v41, v18, v17, v19);
}

uint64_t sub_230D1F8C8()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[41];
  v4 = v0[31];
  (*(v0[33] + 8))(v0[34], v0[32]);

  sub_230D1CE3C(v4);
  v0[53] = v0[49];
  v5 = v0[45];
  v6 = v0[46];
  v7 = v0[42];
  v8 = v0[39];

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D1F240, v8, 0);
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_230D1FBAC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230D1FBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_230D1FC6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for SQLDatabaseConfiguration();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v24 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC30, &qword_230E6C350);
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v22 - v11;
  SQLDatabaseRequest = type metadata accessor for CreateSQLDatabaseRequest(0);
  v14 = *(*(SQLDatabaseRequest - 8) + 64);
  MEMORY[0x28223BE20](SQLDatabaseRequest - 8, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D20640();
  sub_230E69A30();
  if (!v2)
  {
    v19 = v22;
    sub_230D20750(&qword_27DB5AC40, type metadata accessor for SQLDatabaseConfiguration);
    v20 = v24;
    sub_230E69760();
    (*(v23 + 8))(v12, v8);
    sub_230D20694(v20, v17, type metadata accessor for SQLDatabaseConfiguration);
    sub_230D20694(v17, v19, type metadata accessor for CreateSQLDatabaseRequest);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D1FF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230E698C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230D1FF94(uint64_t a1)
{
  v2 = sub_230D20640();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D1FFD0(uint64_t a1)
{
  v2 = sub_230D20640();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D20024(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC48, &qword_230E6C358);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D20640();
  sub_230E69A50();
  type metadata accessor for SQLDatabaseConfiguration();
  sub_230D20750(&qword_281566328, type metadata accessor for SQLDatabaseConfiguration);
  sub_230E69850();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_230D2019C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_230E68860();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v26 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC50, &qword_230E6C360);
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v22 - v11;
  SQLDatabaseResponse = type metadata accessor for CreateSQLDatabaseResponse(0);
  v14 = *(*(SQLDatabaseResponse - 8) + 64);
  MEMORY[0x28223BE20](SQLDatabaseResponse - 8, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D206FC();
  sub_230E69A30();
  if (!v2)
  {
    v19 = v23;
    v20 = v25;
    sub_230D20750(&qword_27DB5A680, MEMORY[0x277CC9260]);
    sub_230E69760();
    (*(v24 + 8))(v12, v8);
    (*(v19 + 32))(v17, v26, v4);
    sub_230D20694(v17, v20, type metadata accessor for CreateSQLDatabaseResponse);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D20438(uint64_t a1)
{
  v2 = sub_230D206FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D20474(uint64_t a1)
{
  v2 = sub_230D206FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D204C8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC60, &qword_230E6C368);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D206FC();
  sub_230E69A50();
  sub_230E68860();
  sub_230D20750(&qword_2815668A8, MEMORY[0x277CC9260]);
  sub_230E69850();
  return (*(v3 + 8))(v7, v2);
}

unint64_t sub_230D20640()
{
  result = qword_27DB5AC38;
  if (!qword_27DB5AC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AC38);
  }

  return result;
}

uint64_t sub_230D20694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_230D206FC()
{
  result = qword_27DB5AC58;
  if (!qword_27DB5AC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AC58);
  }

  return result;
}

uint64_t sub_230D20750(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_230D207BC()
{
  result = qword_27DB5AC68;
  if (!qword_27DB5AC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AC68);
  }

  return result;
}

unint64_t sub_230D20814()
{
  result = qword_27DB5AC70;
  if (!qword_27DB5AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AC70);
  }

  return result;
}

unint64_t sub_230D2086C()
{
  result = qword_27DB5AC78;
  if (!qword_27DB5AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AC78);
  }

  return result;
}

unint64_t sub_230D208C4()
{
  result = qword_27DB5AC80;
  if (!qword_27DB5AC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AC80);
  }

  return result;
}

unint64_t sub_230D2091C()
{
  result = qword_27DB5AC88;
  if (!qword_27DB5AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AC88);
  }

  return result;
}

unint64_t sub_230D20974()
{
  result = qword_27DB5AC90;
  if (!qword_27DB5AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AC90);
  }

  return result;
}

ServicesIntelligence::DeleteFromSQLDatabaseRequest::Descriptor __swiftcall DeleteFromSQLDatabaseRequest.Descriptor.init(predicateExpression:)(Swift::String_optional predicateExpression)
{
  object = predicateExpression.value._object;
  countAndFlagsBits = predicateExpression.value._countAndFlagsBits;
  v4 = v1;

  *v4 = countAndFlagsBits;
  v4[1] = object;
  result.predicateExpression.value._object = v6;
  result.predicateExpression.value._countAndFlagsBits = v5;
  return result;
}

ServicesIntelligence::DeleteFromSQLDatabaseRequest __swiftcall DeleteFromSQLDatabaseRequest.init(tableName:descriptor:)(Swift::String tableName, ServicesIntelligence::DeleteFromSQLDatabaseRequest::Descriptor descriptor)
{
  object = tableName._object;
  countAndFlagsBits = tableName._countAndFlagsBits;
  v5 = v2;
  v6 = *descriptor.predicateExpression.value._countAndFlagsBits;
  v7 = *(descriptor.predicateExpression.value._countAndFlagsBits + 8);

  *v5 = countAndFlagsBits;
  v5[1] = object;

  v5[2] = v6;
  v5[3] = v7;
  result.descriptor.predicateExpression.value._object = v11;
  result.descriptor.predicateExpression.value._countAndFlagsBits = v10;
  result.tableName._object = v9;
  result.tableName._countAndFlagsBits = v8;
  return result;
}

uint64_t DeleteFromSQLDatabaseRequest.Descriptor.predicateExpression.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DeleteFromSQLDatabaseRequest.Descriptor.predicateExpression.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_230D20AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x8000000230E80F50 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_230E698C0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_230D20B90(uint64_t a1)
{
  v2 = sub_230D20D44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D20BCC(uint64_t a1)
{
  v2 = sub_230D20D44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeleteFromSQLDatabaseRequest.Descriptor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC98, &qword_230E6C590);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D20D44();
  sub_230E69A50();
  sub_230E697B0();
  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_230D20D44()
{
  result = qword_27DB5ACA0;
  if (!qword_27DB5ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ACA0);
  }

  return result;
}

uint64_t DeleteFromSQLDatabaseRequest.Descriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5ACA8, &qword_230E6C598);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D20D44();
  sub_230E69A30();
  if (!v2)
  {
    v12 = sub_230E696B0();
    v14 = v13;
    (*(v6 + 8))(v10, v5);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D20F24(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC98, &qword_230E6C590);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D20D44();
  sub_230E69A50();
  sub_230E697B0();
  return (*(v4 + 8))(v8, v3);
}

uint64_t DeleteFromSQLDatabaseRequest.tableName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DeleteFromSQLDatabaseRequest.tableName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DeleteFromSQLDatabaseRequest.descriptor.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t DeleteFromSQLDatabaseRequest.descriptor.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_230D21148()
{
  if (*v0)
  {
    result = 0x7470697263736564;
  }

  else
  {
    result = 0x6D614E656C626174;
  }

  *v0;
  return result;
}

uint64_t sub_230D2118C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E656C626174 && a2 == 0xE900000000000065;
  if (v6 || (sub_230E698C0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL)
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

uint64_t sub_230D21278(uint64_t a1)
{
  v2 = sub_230D21494();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D212B4(uint64_t a1)
{
  v2 = sub_230D21494();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeleteFromSQLDatabaseRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5ACB0, &qword_230E6C5A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[3];
  v16 = v1[2];
  v17 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D21494();
  sub_230E69A50();
  LOBYTE(v19) = 0;
  v13 = v18;
  sub_230E69810();
  if (!v13)
  {
    v19 = v16;
    v20 = v17;
    v21 = 1;
    sub_230D214E8();

    sub_230E69850();
  }

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_230D21494()
{
  result = qword_27DB5ACB8;
  if (!qword_27DB5ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ACB8);
  }

  return result;
}

unint64_t sub_230D214E8()
{
  result = qword_27DB5ACC0;
  if (!qword_27DB5ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ACC0);
  }

  return result;
}

uint64_t DeleteFromSQLDatabaseRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5ACC8, &qword_230E6C5A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v19 - v9;

  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D21494();
  sub_230E69A30();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v19[0]) = 0;
    v12 = sub_230E69720();
    v15 = v14;
    v16 = v12;
    v20 = 1;
    sub_230D21768();
    sub_230E69760();
    (*(v6 + 8))(v10, v5);
    v18 = v19[0];
    v17 = v19[1];

    *a2 = v16;
    a2[1] = v15;
    a2[2] = v18;
    a2[3] = v17;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

unint64_t sub_230D21768()
{
  result = qword_27DB5ACD0;
  if (!qword_27DB5ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ACD0);
  }

  return result;
}

uint64_t sub_230D21844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x43646574656C6564 && a2 == 0xEC000000746E756FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230E698C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230D218D0(uint64_t a1)
{
  v2 = sub_230D21A80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D2190C(uint64_t a1)
{
  v2 = sub_230D21A80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeleteFromSQLDatabaseResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5ACD8, &qword_230E6C5B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D21A80();
  sub_230E69A50();
  sub_230E69860();
  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_230D21A80()
{
  result = qword_27DB5ACE0;
  if (!qword_27DB5ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ACE0);
  }

  return result;
}

uint64_t DeleteFromSQLDatabaseResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5ACE8, &qword_230E6C5B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D21A80();
  sub_230E69A30();
  if (!v2)
  {
    v12 = sub_230E69770();
    (*(v6 + 8))(v10, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D21C40(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5ACD8, &qword_230E6C5B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D21A80();
  sub_230E69A50();
  sub_230E69860();
  return (*(v4 + 8))(v8, v3);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_230D21D84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_230D21DCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_230D21E1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_230D21E78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_230D21F1C()
{
  result = qword_27DB5ACF0;
  if (!qword_27DB5ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ACF0);
  }

  return result;
}

unint64_t sub_230D21F74()
{
  result = qword_27DB5ACF8;
  if (!qword_27DB5ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ACF8);
  }

  return result;
}

unint64_t sub_230D21FCC()
{
  result = qword_27DB5AD00;
  if (!qword_27DB5AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AD00);
  }

  return result;
}

unint64_t sub_230D22024()
{
  result = qword_27DB5AD08;
  if (!qword_27DB5AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AD08);
  }

  return result;
}

unint64_t sub_230D2207C()
{
  result = qword_27DB5AD10;
  if (!qword_27DB5AD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AD10);
  }

  return result;
}

unint64_t sub_230D220D4()
{
  result = qword_27DB5AD18;
  if (!qword_27DB5AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AD18);
  }

  return result;
}

unint64_t sub_230D2212C()
{
  result = qword_27DB5AD20;
  if (!qword_27DB5AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AD20);
  }

  return result;
}

unint64_t sub_230D22184()
{
  result = qword_27DB5AD28;
  if (!qword_27DB5AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AD28);
  }

  return result;
}

unint64_t sub_230D221DC()
{
  result = qword_27DB5AD30;
  if (!qword_27DB5AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AD30);
  }

  return result;
}

__n128 FetchFromSQLDatabaseRequest.Descriptor.init(columns:joinExpression:groupByExpression:havingExpression:predicateExpression:sortExpression:numberOfRecords:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t a12, char a13)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = a12;
  a9[6].n128_u8[0] = a13 & 1;
  return result;
}

__n128 FetchFromSQLDatabaseRequest.init(tableName:descriptor:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 112) = 1;
  *a4 = a1;
  *(a4 + 8) = a2;
  v13 = 1;
  v6 = *(a4 + 96);
  v12[4] = *(a4 + 80);
  v12[5] = v6;
  v7 = *(a4 + 32);
  v12[0] = *(a4 + 16);
  v12[1] = v7;
  v8 = *(a4 + 64);
  v12[2] = *(a4 + 48);
  v12[3] = v8;
  sub_230D1D098(v12);
  v9 = *(a3 + 80);
  *(a4 + 80) = *(a3 + 64);
  *(a4 + 96) = v9;
  *(a4 + 112) = *(a3 + 96);
  v10 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v10;
  result = *(a3 + 48);
  *(a4 + 48) = *(a3 + 32);
  *(a4 + 64) = result;
  return result;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.Column.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.Column.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.Column.alias.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.Column.alias.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.Column.derivationExpression.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.Column.derivationExpression.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

unint64_t sub_230D224D4()
{
  v1 = 1701667182;
  v2 = 0x7361696C61;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 1701869940;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_230D22540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230D255BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D22568(uint64_t a1)
{
  v2 = sub_230D227E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D225A4(uint64_t a1)
{
  v2 = sub_230D227E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.Column.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AD38, &qword_230E6CAB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v16 - v7;
  v9 = *v1;
  v10 = v1[1];
  v17 = *(v1 + 16);
  v11 = v1[3];
  v16[2] = v1[4];
  v16[3] = v11;
  v12 = v1[5];
  v16[0] = v1[6];
  v16[1] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D227E0();
  sub_230E69A50();
  v23 = 0;
  v14 = v18;
  sub_230E69810();
  if (!v14)
  {
    v22 = v17;
    v21 = 1;
    sub_230D22834();
    sub_230E69850();
    v20 = 2;
    sub_230E697B0();
    v19 = 3;
    sub_230E697B0();
  }

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_230D227E0()
{
  result = qword_27DB5AD40;
  if (!qword_27DB5AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AD40);
  }

  return result;
}

unint64_t sub_230D22834()
{
  result = qword_2815664D8;
  if (!qword_2815664D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815664D8);
  }

  return result;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.Column.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AD48, &qword_230E6CAB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v24 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D227E0();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = 0;
  v12 = sub_230E69720();
  v14 = v13;
  v27 = v12;
  v30 = 1;
  sub_230D22B38();
  sub_230E69760();
  v26 = v31;
  v29 = 2;
  v15 = sub_230E696B0();
  v18 = v17;
  v25 = v15;
  v28 = 3;
  v19 = sub_230E696B0();
  v21 = v20;
  v22 = *(v6 + 8);
  v24 = v19;
  v22(v10, v5);
  *a2 = v27;
  *(a2 + 8) = v14;
  *(a2 + 16) = v26;
  v23 = v24;
  *(a2 + 24) = v25;
  *(a2 + 32) = v18;
  *(a2 + 40) = v23;
  *(a2 + 48) = v21;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230D22B38()
{
  result = qword_27DB5AD50;
  if (!qword_27DB5AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AD50);
  }

  return result;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.columns.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.joinExpression.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.joinExpression.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.groupByExpression.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.groupByExpression.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.havingExpression.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.havingExpression.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.predicateExpression.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.predicateExpression.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.sortExpression.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.sortExpression.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.numberOfRecords.getter()
{
  result = *(v0 + 88);
  v2 = *(v0 + 96);
  return result;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.numberOfRecords.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

uint64_t sub_230D22EF4()
{
  v1 = *v0;
  v2 = 0x736E6D756C6F63;
  v3 = 0x7270784574726F73;
  if (v1 != 5)
  {
    v3 = 0x664F7265626D756ELL;
  }

  v4 = 0xD000000000000013;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x727078456E696F6ALL;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t sub_230D22FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230D25724(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D2302C(uint64_t a1)
{
  v2 = sub_230D23398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D23068(uint64_t a1)
{
  v2 = sub_230D23398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AD58, &qword_230E6CAC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v21 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[3];
  v31 = v1[2];
  v32 = v10;
  v13 = v1[5];
  v29 = v1[4];
  v30 = v12;
  v14 = v1[7];
  v27 = v1[6];
  v28 = v13;
  v15 = v1[8];
  v16 = v1[9];
  v25 = v14;
  v26 = v15;
  v18 = v1[10];
  v17 = v1[11];
  v23 = v16;
  v24 = v18;
  v21[1] = v17;
  v22 = *(v1 + 96);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D23398();

  sub_230E69A50();
  v40 = v11;
  v39 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AD68, &qword_230E6CAC8);
  sub_230D23AFC(&qword_27DB5AD70, sub_230D233EC);
  sub_230E697F0();
  if (v2)
  {
  }

  else
  {

    v38 = 1;
    sub_230E697B0();
    v37 = 2;
    sub_230E697B0();
    v36 = 3;
    sub_230E697B0();
    v35 = 4;
    sub_230E697B0();
    v34 = 5;
    sub_230E697B0();
    v33 = 6;
    sub_230E697E0();
  }

  return (*(v5 + 8))(v9, v4);
}

unint64_t sub_230D23398()
{
  result = qword_27DB5AD60;
  if (!qword_27DB5AD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AD60);
  }

  return result;
}

unint64_t sub_230D233EC()
{
  result = qword_27DB5AD78;
  if (!qword_27DB5AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AD78);
  }

  return result;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AD80, &qword_230E6CAD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v37 - v9;
  v72 = 1;
  v11 = a1[3];
  v12 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_230D23398();
  sub_230E69A30();
  if (v2)
  {
    v50 = v2;
    v49 = 0;
    v48 = 0;
    __swift_destroy_boxed_opaque_existential_1(v51);
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = v48;
    v69 = v49;
    v70 = 0;
    v71 = v72;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AD68, &qword_230E6CAC8);
    LOBYTE(v52) = 0;
    sub_230D23AFC(&qword_27DB5AD88, sub_230D23B74);
    sub_230E69700();
    v47 = v59;
    LOBYTE(v59) = 1;
    v46 = sub_230E696B0();
    v45 = v14;
    LOBYTE(v59) = 2;
    v15 = sub_230E696B0();
    v44 = v16;
    LOBYTE(v59) = 3;
    v42 = sub_230E696B0();
    v43 = v17;
    LOBYTE(v59) = 4;
    v18 = sub_230E696B0();
    v41 = v19;
    v40 = a2;
    LOBYTE(v59) = 5;
    v20 = sub_230E696B0();
    v49 = v21;
    v73 = 6;
    v22 = sub_230E696F0();
    v50 = 0;
    v48 = v20;
    v24 = v23;
    v25 = v22;
    (*(v6 + 8))(v10, v5);
    v24 &= 1u;
    v72 = v24;
    v26 = v47;
    *&v52 = v47;
    *(&v52 + 1) = v46;
    v27 = v45;
    *&v53 = v45;
    *(&v53 + 1) = v15;
    v39 = v15;
    v28 = v44;
    *&v54 = v44;
    v29 = v42;
    v30 = v43;
    *(&v54 + 1) = v42;
    *&v55 = v43;
    *(&v55 + 1) = v18;
    v38 = v18;
    v31 = v41;
    *&v56 = v41;
    *(&v56 + 1) = v20;
    v32 = v49;
    *&v57 = v49;
    *(&v57 + 1) = v25;
    v58 = v24;
    v33 = v57;
    v34 = v40;
    *(v40 + 64) = v56;
    *(v34 + 80) = v33;
    v35 = v53;
    *v34 = v52;
    *(v34 + 16) = v35;
    v36 = v55;
    *(v34 + 32) = v54;
    *(v34 + 48) = v36;
    *(v34 + 96) = v24;
    sub_230D23BC8(&v52, &v59);
    __swift_destroy_boxed_opaque_existential_1(v51);
    v59 = v26;
    v60 = v46;
    v61 = v27;
    v62 = v39;
    v63 = v28;
    v64 = v29;
    v65 = v30;
    v66 = v38;
    v67 = v31;
    v68 = v48;
    v69 = v32;
    v70 = v25;
    v71 = v24;
  }

  return sub_230D1D098(&v59);
}

uint64_t sub_230D23AFC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5AD68, &qword_230E6CAC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230D23B74()
{
  result = qword_27DB5AD90;
  if (!qword_27DB5AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AD90);
  }

  return result;
}

uint64_t FetchFromSQLDatabaseRequest.tableName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FetchFromSQLDatabaseRequest.tableName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FetchFromSQLDatabaseRequest.descriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 96);
  v13 = *(v1 + 80);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 112);
  v4 = v15;
  v5 = *(v1 + 32);
  v10[0] = *(v1 + 16);
  v10[1] = v5;
  v6 = *(v1 + 64);
  v11 = *(v1 + 48);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_230D23BC8(v10, v9);
}

__n128 FetchFromSQLDatabaseRequest.descriptor.setter(uint64_t a1)
{
  v3 = *(v1 + 96);
  v9[4] = *(v1 + 80);
  v9[5] = v3;
  v10 = *(v1 + 112);
  v4 = *(v1 + 32);
  v9[0] = *(v1 + 16);
  v9[1] = v4;
  v5 = *(v1 + 64);
  v9[2] = *(v1 + 48);
  v9[3] = v5;
  sub_230D1D098(v9);
  v6 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v6;
  *(v1 + 112) = *(a1 + 96);
  v7 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v7;
  result = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = result;
  return result;
}

uint64_t sub_230D23DA4(uint64_t a1)
{
  v2 = sub_230D24038();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D23DE0(uint64_t a1)
{
  v2 = sub_230D24038();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FetchFromSQLDatabaseRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AD98, &qword_230E6CAD8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v21 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = *(v1 + 6);
  v35 = *(v1 + 5);
  v36 = v11;
  v37 = *(v1 + 112);
  v12 = *(v1 + 2);
  v31 = *(v1 + 1);
  v32 = v12;
  v13 = *(v1 + 4);
  v33 = *(v1 + 3);
  v34 = v13;
  v15 = a1[3];
  v14 = a1[4];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v15);
  sub_230D24038();
  sub_230E69A50();
  LOBYTE(v24) = 0;
  v19 = v21[1];
  sub_230E69810();
  if (!v19)
  {
    v28 = v35;
    v29 = v36;
    v30 = v37;
    v24 = v31;
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v38 = 1;
    sub_230D23BC8(&v31, v22);
    sub_230D2408C();
    sub_230E69850();
    v22[4] = v28;
    v22[5] = v29;
    v23 = v30;
    v22[0] = v24;
    v22[1] = v25;
    v22[2] = v26;
    v22[3] = v27;
    sub_230D1D098(v22);
  }

  return (*(v4 + 8))(v8, v18);
}

unint64_t sub_230D24038()
{
  result = qword_27DB5ADA0;
  if (!qword_27DB5ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ADA0);
  }

  return result;
}

unint64_t sub_230D2408C()
{
  result = qword_27DB5ADA8;
  if (!qword_27DB5ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ADA8);
  }

  return result;
}

uint64_t FetchFromSQLDatabaseRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5ADB0, &qword_230E6CAE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v32 - v8;
  v78 = 1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D24038();
  sub_230E69A30();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    LOBYTE(v61) = v78;
    return sub_230D1D098(&v55);
  }

  else
  {
    v11 = v5;
    v12 = v79;
    LOBYTE(v55) = 0;
    v13 = sub_230E69720();
    v15 = v14;
    v45 = v13;
    v64 = 1;
    sub_230D24414();
    sub_230E69760();
    (*(v11 + 8))(v9, v4);
    v16 = v65;
    v17 = v66;
    v38 = v66;
    v39 = v65;
    v18 = v70;
    v43 = v69;
    v44 = v68;
    v34 = v71;
    v35 = v67;
    v19 = v73;
    v36 = v73;
    v37 = v70;
    v32 = v75;
    v33 = v74;
    v41 = v76;
    v42 = v72;
    memset(v46, 0, 96);
    v40 = v77;
    v46[96] = v78;
    sub_230D1D098(v46);
    *&v47 = v45;
    *(&v47 + 1) = v15;
    *&v48 = v16;
    *(&v48 + 1) = v17;
    v20 = v34;
    v21 = v35;
    *&v49 = v35;
    *(&v49 + 1) = v44;
    *&v50 = v43;
    *(&v50 + 1) = v18;
    *&v51 = v34;
    *(&v51 + 1) = v42;
    v22 = v33;
    *&v52 = v19;
    *(&v52 + 1) = v33;
    v23 = v32;
    *&v53 = v32;
    *(&v53 + 1) = v41;
    v24 = v40;
    v54 = v40;
    v25 = v47;
    v26 = v48;
    v27 = v50;
    *(v12 + 32) = v49;
    *(v12 + 48) = v27;
    *v12 = v25;
    *(v12 + 16) = v26;
    v28 = v51;
    v29 = v52;
    v30 = v53;
    *(v12 + 112) = v24;
    *(v12 + 80) = v29;
    *(v12 + 96) = v30;
    *(v12 + 64) = v28;
    sub_230D1D0EC(&v47, &v55);
    __swift_destroy_boxed_opaque_existential_1(a1);
    *&v55 = v45;
    *(&v55 + 1) = v15;
    *&v56 = v39;
    *(&v56 + 1) = v38;
    *&v57 = v21;
    *(&v57 + 1) = v44;
    *&v58 = v43;
    *(&v58 + 1) = v37;
    *&v59 = v20;
    *(&v59 + 1) = v42;
    *&v60 = v36;
    *(&v60 + 1) = v22;
    v61 = v23;
    v62 = v41;
    v63 = v40;
    return sub_230D1D148(&v55);
  }
}

unint64_t sub_230D24414()
{
  result = qword_27DB5ADB8;
  if (!qword_27DB5ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ADB8);
  }

  return result;
}

uint64_t FetchFromSQLDatabaseResponse.data.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_230D24504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230E698C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230D2458C(uint64_t a1)
{
  v2 = sub_230D24778();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D245C8(uint64_t a1)
{
  v2 = sub_230D24778();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FetchFromSQLDatabaseResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5ADC0, &qword_230E6CAE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D24778();

  sub_230E69A50();
  v12[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC10, &unk_230E6CAF0);
  sub_230D247CC();
  sub_230E69850();

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_230D24778()
{
  result = qword_27DB5ADC8;
  if (!qword_27DB5ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ADC8);
  }

  return result;
}

unint64_t sub_230D247CC()
{
  result = qword_27DB5ADD0;
  if (!qword_27DB5ADD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5AC10, &unk_230E6CAF0);
    sub_230D24B18(&qword_27DB5ADD8, sub_230D24888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ADD0);
  }

  return result;
}

unint64_t sub_230D24888()
{
  result = qword_281566650;
  if (!qword_281566650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566650);
  }

  return result;
}

uint64_t FetchFromSQLDatabaseResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5ADE0, &qword_230E6CB00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D24778();
  sub_230E69A30();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC10, &unk_230E6CAF0);
    sub_230D24A5C();
    sub_230E69760();
    (*(v6 + 8))(v10, v5);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230D24A5C()
{
  result = qword_27DB5ADE8;
  if (!qword_27DB5ADE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5AC10, &unk_230E6CAF0);
    sub_230D24B18(&qword_27DB5ADF0, sub_230D24B9C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ADE8);
  }

  return result;
}

uint64_t sub_230D24B18(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5AC20, &qword_230E6C230);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230D24B9C()
{
  result = qword_27DB5ADF8;
  if (!qword_27DB5ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ADF8);
  }

  return result;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_230D24C4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_230D24C94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_230D24D30(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 97))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_230D24D8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_230D24E28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_230D24E70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FetchFromSQLDatabaseRequest.Descriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FetchFromSQLDatabaseRequest.Descriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FetchFromSQLDatabaseRequest.Descriptor.Column.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FetchFromSQLDatabaseRequest.Descriptor.Column.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_230D251A0()
{
  result = qword_27DB5AE00;
  if (!qword_27DB5AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AE00);
  }

  return result;
}

unint64_t sub_230D251F8()
{
  result = qword_27DB5AE08;
  if (!qword_27DB5AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AE08);
  }

  return result;
}

unint64_t sub_230D25250()
{
  result = qword_27DB5AE10;
  if (!qword_27DB5AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AE10);
  }

  return result;
}

unint64_t sub_230D252A8()
{
  result = qword_27DB5AE18;
  if (!qword_27DB5AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AE18);
  }

  return result;
}

unint64_t sub_230D25300()
{
  result = qword_27DB5AE20;
  if (!qword_27DB5AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AE20);
  }

  return result;
}

unint64_t sub_230D25358()
{
  result = qword_27DB5AE28;
  if (!qword_27DB5AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AE28);
  }

  return result;
}

unint64_t sub_230D253B0()
{
  result = qword_27DB5AE30;
  if (!qword_27DB5AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AE30);
  }

  return result;
}

unint64_t sub_230D25408()
{
  result = qword_27DB5AE38;
  if (!qword_27DB5AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AE38);
  }

  return result;
}

unint64_t sub_230D25460()
{
  result = qword_27DB5AE40;
  if (!qword_27DB5AE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AE40);
  }

  return result;
}

unint64_t sub_230D254B8()
{
  result = qword_27DB5AE48;
  if (!qword_27DB5AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AE48);
  }

  return result;
}

unint64_t sub_230D25510()
{
  result = qword_27DB5AE50;
  if (!qword_27DB5AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AE50);
  }

  return result;
}

unint64_t sub_230D25568()
{
  result = qword_27DB5AE58;
  if (!qword_27DB5AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AE58);
  }

  return result;
}

uint64_t sub_230D255BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7361696C61 && a2 == 0xE500000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230E80F70 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_230D25724(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x727078456E696F6ALL && a2 == 0xEE006E6F69737365 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230E80F90 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230E80FB0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230E80F50 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7270784574726F73 && a2 == 0xEE006E6F69737365 || (sub_230E698C0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x664F7265626D756ELL && a2 == 0xEF7364726F636552)
  {

    return 6;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

__n128 SQLDatabaseColumnConfiguration.init(name:type:defaultValue:isNullable:isUnique:isPrimaryKey:foreignKeyReference:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *a3;
  v15 = *a4;
  v16 = a4[1];
  v17 = *(a4 + 16);
  v18 = *(a8 + 32);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v14;
  sub_230D0F460(0, 0, 255);
  *(a9 + 24) = v15;
  *(a9 + 32) = v16;
  *(a9 + 40) = v17;
  *(a9 + 41) = a5;
  *(a9 + 42) = a6;
  *(a9 + 43) = a7;
  sub_230D0F4FC(0, 0);
  result = *a8;
  v20 = *(a8 + 16);
  *(a9 + 48) = *a8;
  *(a9 + 64) = v20;
  *(a9 + 80) = v18;
  return result;
}

ServicesIntelligence::SQLDatabaseTableConfiguration __swiftcall SQLDatabaseTableConfiguration.init(name:columns:)(Swift::String name, Swift::OpaquePointer columns)
{
  *v2 = name;
  *(v2 + 16) = columns;
  result.name = name;
  result.columns = columns;
  return result;
}

uint64_t SQLDatabaseConfiguration.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SQLDatabaseConfiguration.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SQLDatabaseConfiguration.tables.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t SQLDatabaseConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AE60, &unk_230E6D1F0);
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v24, v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for SQLDatabaseConfiguration();
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 40);
  v17 = sub_230E68860();
  v18 = *(*(v17 - 8) + 56);
  v25 = v16;
  v18(&v15[v16], 1, 1, v17);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D25F6C();
  sub_230E69A30();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_230D2D9F8(&v15[v25], &qword_27DB5D8C0, &qword_230E6C210);
  }

  else
  {
    v31 = 0;
    *v15 = sub_230E69720();
    *(v15 + 1) = v21;
    v23 = v21;
    v29 = 1;
    sub_230D0D17C();
    sub_230E69760();
    v15[16] = v30;
    v28 = 2;
    sub_230D0D1D0();
    sub_230E69700();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AE68, &qword_230E6D200);
    v27 = 3;
    sub_230D2BFE4(&qword_27DB5AE70, sub_230D25FC0);
    sub_230E69700();
    if (v26)
    {
      v22 = v26;
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    (*(v5 + 8))(v9, v24);
    *(v15 + 3) = v22;
    sub_230D1CF5C(v15, a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_230D1CFC0(v15);
  }
}

uint64_t type metadata accessor for SQLDatabaseConfiguration()
{
  result = qword_281566318;
  if (!qword_281566318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_230D25F6C()
{
  result = qword_281566340;
  if (!qword_281566340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566340);
  }

  return result;
}

unint64_t sub_230D25FC0()
{
  result = qword_27DB5AE78;
  if (!qword_27DB5AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AE78);
  }

  return result;
}

uint64_t SQLDatabaseConfiguration.init(name:domain:dataClass:tables:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = *a3;
  v10 = *(type metadata accessor for SQLDatabaseConfiguration() + 32);
  v11 = sub_230E68860();
  result = (*(*(v11 - 8) + 56))(a5 + v10, 1, 1, v11);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = v9;
  *(a5 + 24) = a4;
  return result;
}

uint64_t sub_230D260B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v41 = v2;
  v42 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 48);
    v28 = *(v5 + 32);
    v29 = v8;
    v30 = *(v5 + 64);
    v31 = *(v5 + 80);
    v9 = *(v5 + 16);
    v27[0] = *v5;
    v27[1] = v9;
    v26 = v31;
    v23 = v28;
    v24 = v8;
    v25 = v30;
    v21 = v27[0];
    v22 = v9;
    v10 = *(v6 + 48);
    v33 = *(v6 + 32);
    v34 = v10;
    v35 = *(v6 + 64);
    v36 = *(v6 + 80);
    v11 = *(v6 + 16);
    v32[0] = *v6;
    v32[1] = v11;
    v20 = v36;
    v16 = v11;
    v17 = v33;
    v18 = v10;
    v19 = v35;
    v15 = v32[0];
    sub_230D2C310(v27, v14);
    sub_230D2C310(v32, v14);
    v12 = _s20ServicesIntelligence30SQLDatabaseColumnConfigurationV2eeoiySbAC_ACtFZ_0(&v21, &v15);
    v37[2] = v17;
    v37[3] = v18;
    v37[4] = v19;
    v38 = v20;
    v37[0] = v15;
    v37[1] = v16;
    sub_230D2C348(v37);
    v39[2] = v23;
    v39[3] = v24;
    v39[4] = v25;
    v40 = v26;
    v39[0] = v21;
    v39[1] = v22;
    sub_230D2C348(v39);
    if (!v12)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 88;
    v5 += 88;
  }

  return 1;
}

uint64_t sub_230D26220(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 > 4)
      {
        v9 = 0x7974697275636573;
        if (v6 == 8)
        {
          v9 = 0x65676175676E616CLL;
        }

        v10 = 0xE800000000000000;
        if (v6 == 7)
        {
          v9 = 0x6E6F6D6D6F63;
          v10 = 0xE600000000000000;
        }

        v11 = 0x7374736163646F70;
        if (v6 != 5)
        {
          v11 = 0x6F65646976;
        }

        v12 = 0xE500000000000000;
        if (v6 == 5)
        {
          v12 = 0xE800000000000000;
        }

        if (*v3 <= 6u)
        {
          v8 = v11;
        }

        else
        {
          v8 = v9;
        }

        if (*v3 <= 6u)
        {
          v7 = v12;
        }

        else
        {
          v7 = v10;
        }
      }

      else if (*v3 <= 1u)
      {
        if (*v3)
        {
          v8 = 1936748641;
        }

        else
        {
          v8 = 0x6C616E7265746E69;
        }

        if (*v3)
        {
          v7 = 0xE400000000000000;
        }

        else
        {
          v7 = 0xE800000000000000;
        }
      }

      else if (v6 == 2)
      {
        v7 = 0xE500000000000000;
        v8 = 0x736B6F6F62;
      }

      else if (v6 == 3)
      {
        v7 = 0xE700000000000000;
        v8 = 0x7373656E746966;
      }

      else
      {
        v7 = 0xE500000000000000;
        v8 = 0x636973756DLL;
      }

      v13 = *v4;
      if (v13 > 4)
      {
        if (*v4 <= 6u)
        {
          if (v13 == 5)
          {
            v14 = 0xE800000000000000;
            if (v8 != 0x7374736163646F70)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v14 = 0xE500000000000000;
            if (v8 != 0x6F65646976)
            {
              goto LABEL_5;
            }
          }
        }

        else if (v13 == 7)
        {
          v14 = 0xE600000000000000;
          if (v8 != 0x6E6F6D6D6F63)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v14 = 0xE800000000000000;
          if (v13 == 8)
          {
            if (v8 != 0x65676175676E616CLL)
            {
              goto LABEL_5;
            }
          }

          else if (v8 != 0x7974697275636573)
          {
            goto LABEL_5;
          }
        }
      }

      else if (*v4 <= 1u)
      {
        if (*v4)
        {
          v14 = 0xE400000000000000;
          if (v8 != 1936748641)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v14 = 0xE800000000000000;
          if (v8 != 0x6C616E7265746E69)
          {
            goto LABEL_5;
          }
        }
      }

      else if (v13 == 2)
      {
        v14 = 0xE500000000000000;
        if (v8 != 0x736B6F6F62)
        {
          goto LABEL_5;
        }
      }

      else if (v13 == 3)
      {
        v14 = 0xE700000000000000;
        if (v8 != 0x7373656E746966)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v14 = 0xE500000000000000;
        if (v8 != 0x636973756DLL)
        {
          goto LABEL_5;
        }
      }

      if (v7 != v14)
      {
LABEL_5:
        v5 = sub_230E698C0();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_230D2654C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_230E698C0() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_230D265DC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    v20 = 0;
    return v20 & 1;
  }

  if (!v2 || result == a2)
  {
    v20 = 1;
    return v20 & 1;
  }

  v3 = (result + 40);
  v4 = (a2 + 40);
  v5 = "int32";
  v6 = "impressionBasedDemotion";
  while (v2)
  {
    v7 = *(v3 - 8);
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v8 = 0xD00000000000001CLL;
      }

      else
      {
        v8 = 0xD000000000000015;
      }

      if (v7 == 2)
      {
        v9 = "impressionBasedDemotion";
      }

      else
      {
        v9 = "lastConsumptionBasedDemotion";
      }
    }

    else
    {
      if (*(v3 - 8))
      {
        v8 = 0xD000000000000017;
      }

      else
      {
        v8 = 0xD000000000000014;
      }

      if (*(v3 - 8))
      {
        v9 = "historyBasedDemotion";
      }

      else
      {
        v9 = v5;
      }
    }

    v10 = *v3;
    v11 = *v4;
    v12 = v9 | 0x8000000000000000;
    v13 = 0xD00000000000001CLL;
    if (*(v4 - 8) != 2)
    {
      v13 = 0xD000000000000015;
      v6 = "lastConsumptionBasedDemotion";
    }

    v14 = 0xD000000000000017;
    if (!*(v4 - 8))
    {
      v14 = 0xD000000000000014;
    }

    v15 = v5;
    if (*(v4 - 8))
    {
      v5 = "historyBasedDemotion";
    }

    if (*(v4 - 8) <= 1u)
    {
      v16 = v14;
    }

    else
    {
      v16 = v13;
    }

    if (*(v4 - 8) <= 1u)
    {
      v17 = v5;
    }

    else
    {
      v17 = v6;
    }

    if (v8 == v16 && v12 == (v17 | 0x8000000000000000))
    {
      v18 = *v3;
    }

    else
    {
      v19 = sub_230E698C0();

      if ((v19 & 1) == 0)
      {

        v20 = 0;
        return v20 & 1;
      }
    }

    v20 = sub_230D6A784(v10, v11);

    if (v20)
    {
      v3 += 2;
      v4 += 2;
      v21 = v2-- == 1;
      v5 = v15;
      v6 = "impressionBasedDemotion";
      if (!v21)
      {
        continue;
      }
    }

    return v20 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_230D267E0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || result == a2)
    {
      return 1;
    }

    v3 = 0;
    v4 = result + 32;
    v5 = a2 + 32;
    v36 = a2 + 32;
    v37 = result + 32;
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_30;
      }

      v6 = (v4 + 24 * v3);
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      v10 = (v5 + 24 * v3);
      v11 = v10[2];
      if (v7 != *v10 || v8 != v10[1])
      {
        v13 = v10[1];
        if ((sub_230E698C0() & 1) == 0)
        {
          return 0;
        }
      }

      v14 = *(v9 + 16);
      if (v14 != *(v11 + 16))
      {
        return 0;
      }

      if (v14 && v9 != v11)
      {
        break;
      }

LABEL_7:
      ++v3;
      result = 1;
      if (v3 == v2)
      {
        return result;
      }
    }

    if (*(v9 + 16))
    {
      v16 = 0;
      v17 = v14 - 1;
      v18 = 32;
      while (1)
      {
        v19 = *(v9 + v18 + 16);
        v51[0] = *(v9 + v18);
        v51[1] = v19;
        v20 = *(v9 + v18 + 32);
        v21 = *(v9 + v18 + 48);
        v22 = *(v9 + v18 + 64);
        v52 = *(v9 + v18 + 80);
        v51[3] = v21;
        v51[4] = v22;
        v51[2] = v20;
        v23 = *(v9 + v18 + 16);
        v45 = *(v9 + v18);
        v46 = v23;
        v24 = *(v9 + v18 + 32);
        v25 = *(v9 + v18 + 48);
        v26 = *(v9 + v18 + 64);
        v50 = *(v9 + v18 + 80);
        v48 = v25;
        v49 = v26;
        v47 = v24;
        if (v16 >= *(v11 + 16))
        {
          break;
        }

        v27 = *(v11 + v18 + 16);
        v53[0] = *(v11 + v18);
        v53[1] = v27;
        v28 = *(v11 + v18 + 32);
        v29 = *(v11 + v18 + 48);
        v30 = *(v11 + v18 + 64);
        v54 = *(v11 + v18 + 80);
        v53[3] = v29;
        v53[4] = v30;
        v53[2] = v28;
        v31 = *(v11 + v18 + 16);
        v39 = *(v11 + v18);
        v40 = v31;
        v32 = *(v11 + v18 + 32);
        v33 = *(v11 + v18 + 48);
        v34 = *(v11 + v18 + 64);
        v44 = *(v11 + v18 + 80);
        v42 = v33;
        v43 = v34;
        v41 = v32;
        sub_230D2C310(v51, v38);
        sub_230D2C310(v53, v38);
        v35 = _s20ServicesIntelligence30SQLDatabaseColumnConfigurationV2eeoiySbAC_ACtFZ_0(&v45, &v39);
        v55[2] = v41;
        v55[3] = v42;
        v55[4] = v43;
        v56 = v44;
        v55[0] = v39;
        v55[1] = v40;
        sub_230D2C348(v55);
        v57[2] = v47;
        v57[3] = v48;
        v57[4] = v49;
        v58 = v50;
        v57[0] = v45;
        v57[1] = v46;
        result = sub_230D2C348(v57);
        if (!v35)
        {
          goto LABEL_26;
        }

        if (v17 == v16)
        {

          v5 = v36;
          v4 = v37;
          goto LABEL_7;
        }

        v18 += 88;
        if (++v16 >= *(v9 + 16))
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

LABEL_25:
    __break(1u);
LABEL_26:
  }

  return 0;
}

uint64_t sub_230D26A94(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v67 = v2;
  v68 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[3];
    v9 = v5[5];
    v53 = v5[4];
    v54[0] = v9;
    *(v54 + 9) = *(v5 + 89);
    v10 = v5[1];
    v50[0] = *v5;
    v50[1] = v10;
    v11 = v5[3];
    v13 = *v5;
    v12 = v5[1];
    v51 = v5[2];
    v52 = v11;
    v14 = v6[1];
    v55 = *v6;
    v56 = v14;
    *&v60[9] = *(v6 + 89);
    v15 = v6[3];
    v16 = v6[5];
    v59 = v6[4];
    *v60 = v16;
    v17 = v6[3];
    v18 = *v6;
    v19 = v6[1];
    v57 = v6[2];
    v58 = v17;
    v20 = v5[1];
    v61[0] = *v5;
    v61[1] = v20;
    *(v62 + 9) = *(v5 + 89);
    v21 = v5[5];
    v61[4] = v5[4];
    v62[0] = v21;
    v22 = v5[3];
    v61[2] = v5[2];
    v61[3] = v22;
    v62[2] = v18;
    v62[3] = v19;
    *(v63 + 9) = *(v6 + 89);
    v23 = v6[5];
    v62[6] = v59;
    v63[0] = v23;
    v62[4] = v57;
    v62[5] = v15;
    v64 = v13;
    *v65 = v12;
    *&v66[9] = *(v5 + 89);
    v24 = v5[5];
    *&v65[48] = v53;
    *v66 = v24;
    *&v65[16] = v51;
    *&v65[32] = v8;
    if ((v66[24] & 1) == 0)
    {
      if (v60[24])
      {
        sub_230D2D898(&v55, &v47);
        v45 = &v47;
        goto LABEL_68;
      }

      v33 = *(&v64 + 1);
      v32 = *v65;
      v35 = *(&v55 + 1);
      v34 = v56;
      v36 = v55;
      v37 = v64;
      sub_230D2D898(&v55, &v47);
      sub_230D2D898(v50, &v47);
      sub_230D2D898(v50, &v47);
      sub_230D2D898(&v55, &v47);
      sub_230D2D898(&v55, &v47);
      sub_230D2D898(v50, &v47);
      if ((sub_230D6A784(v37, v36) & 1) == 0)
      {
        goto LABEL_63;
      }

      if (v32)
      {
        if (!v34)
        {
          goto LABEL_63;
        }

        if (v33 == v35 && v32 == v34)
        {
          sub_230D2D9F8(v61, &qword_27DB5AF98, &qword_230E6E0A8);
          sub_230D2D8F4(&v55);
          sub_230D2D8F4(v50);
          sub_230D2D8F4(&v55);
          sub_230D2D8F4(v50);
          if (!i)
          {
            return 1;
          }

          goto LABEL_43;
        }

        v40 = sub_230E698C0();
        sub_230D2D9F8(v61, &qword_27DB5AF98, &qword_230E6E0A8);
        sub_230D2D8F4(&v55);
        sub_230D2D8F4(v50);
        sub_230D2D8F4(&v55);
        sub_230D2D8F4(v50);
        if ((v40 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        sub_230D2D9F8(v61, &qword_27DB5AF98, &qword_230E6E0A8);
        sub_230D2D8F4(&v55);
        sub_230D2D8F4(v50);
        sub_230D2D8F4(&v55);
        sub_230D2D8F4(v50);
        if (v34)
        {
          return 0;
        }
      }

      goto LABEL_42;
    }

    *&v49[9] = *(v6 + 89);
    v25 = v6[5];
    *&v48[48] = v6[4];
    *v49 = v25;
    v26 = v6[1];
    v47 = *v6;
    *v48 = v26;
    v27 = v6[3];
    *&v48[16] = v6[2];
    *&v48[32] = v27;
    if ((v49[24] & 1) == 0)
    {
      break;
    }

    sub_230D2D898(&v55, v46);
    sub_230D2D898(v50, v46);
    if (v64 != v47 && (sub_230E698C0() & 1) == 0)
    {
      sub_230D2D898(v50, v46);
      sub_230D2D9F8(v61, &qword_27DB5AF98, &qword_230E6E0A8);
      goto LABEL_64;
    }

    if (v65[0])
    {
      v28 = 0x69706D6F63657270;
    }

    else
    {
      v28 = 0x6F73736572707365;
    }

    if (v65[0])
    {
      v29 = 0xEB0000000064656CLL;
    }

    else
    {
      v29 = 0xEA00000000003256;
    }

    if (v48[0])
    {
      v30 = 0x69706D6F63657270;
    }

    else
    {
      v30 = 0x6F73736572707365;
    }

    if (v48[0])
    {
      v31 = 0xEB0000000064656CLL;
    }

    else
    {
      v31 = 0xEA00000000003256;
    }

    if (v28 == v30 && v29 == v31)
    {
      sub_230D2D898(v50, v46);
      sub_230D2D898(&v55, v46);
      sub_230D2D898(&v55, v46);
      sub_230D2D898(v50, v46);
      sub_230D2D948(&v64, v46);
      sub_230D2D948(&v47, v46);
    }

    else
    {
      v38 = sub_230E698C0();
      sub_230D2D898(v50, v46);
      sub_230D2D898(&v55, v46);
      sub_230D2D898(&v55, v46);
      sub_230D2D898(v50, v46);
      sub_230D2D948(&v64, v46);
      sub_230D2D948(&v47, v46);

      if ((v38 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    if (*&v65[8] != *&v48[8] && (sub_230E698C0() & 1) == 0 || *&v65[24] != *&v48[24] && (sub_230E698C0() & 1) == 0)
    {
LABEL_62:
      sub_230D2D9A4(&v47);
      sub_230D2D9A4(&v64);
LABEL_63:
      sub_230D2D9F8(v61, &qword_27DB5AF98, &qword_230E6E0A8);
      sub_230D2D8F4(&v55);
      sub_230D2D8F4(v50);
      sub_230D2D8F4(&v55);
LABEL_64:
      sub_230D2D8F4(v50);
      return 0;
    }

    v39 = *&v48[48];
    if (*&v65[48])
    {
      if (!*&v48[48])
      {
        goto LABEL_62;
      }

      if (*&v65[40] == *&v48[40])
      {
        sub_230D2D9A4(&v47);
        sub_230D2D9A4(&v64);
      }

      else
      {
        v41 = sub_230E698C0();
        sub_230D2D9A4(&v47);
        sub_230D2D9A4(&v64);
        if ((v41 & 1) == 0)
        {
          goto LABEL_63;
        }
      }
    }

    else
    {
      sub_230D2D9A4(&v47);
      sub_230D2D9A4(&v64);
      if (v39)
      {
        goto LABEL_63;
      }
    }

    if ((sub_230D6A8C0(*&v65[56], *&v48[56]) & 1) == 0 || (sub_230D6ABB8(*v66, *v49) & 1) == 0)
    {
      goto LABEL_63;
    }

    v42 = *&v49[16];
    if (!*&v66[16])
    {
      sub_230D2D9F8(v61, &qword_27DB5AF98, &qword_230E6E0A8);
      sub_230D2D8F4(&v55);
      sub_230D2D8F4(v50);
      sub_230D2D8F4(&v55);
      sub_230D2D8F4(v50);
      if (v42)
      {
        return 0;
      }

LABEL_42:
      if (!i)
      {
        return 1;
      }

      goto LABEL_43;
    }

    if (!*&v49[16])
    {
      goto LABEL_63;
    }

    if (*&v66[8] != *&v49[8])
    {
      v43 = sub_230E698C0();
      sub_230D2D9F8(v61, &qword_27DB5AF98, &qword_230E6E0A8);
      sub_230D2D8F4(&v55);
      sub_230D2D8F4(v50);
      sub_230D2D8F4(&v55);
      sub_230D2D8F4(v50);
      if ((v43 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_42;
    }

    sub_230D2D9F8(v61, &qword_27DB5AF98, &qword_230E6E0A8);
    sub_230D2D8F4(&v55);
    sub_230D2D8F4(v50);
    sub_230D2D8F4(&v55);
    sub_230D2D8F4(v50);
    if (!i)
    {
      return 1;
    }

LABEL_43:
    v6 += 7;
    v5 += 7;
  }

  sub_230D2D898(&v55, v46);
  v45 = v46;
LABEL_68:
  sub_230D2D898(v50, v45);
  sub_230D2D9F8(v61, &qword_27DB5AF98, &qword_230E6E0A8);
  return 0;
}

uint64_t sub_230D27184()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x73616C4361746164;
  v4 = 0x73656C626174;
  if (v1 != 3)
  {
    v4 = 0x7265764F68746170;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E69616D6F64;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_230D2721C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230D2D268(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D27244(uint64_t a1)
{
  v2 = sub_230D25F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D27280(uint64_t a1)
{
  v2 = sub_230D25F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SQLDatabaseConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AE80, &qword_230E6D208);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D25F6C();
  sub_230E69A50();
  v12 = *v3;
  v13 = v3[1];
  v21 = 0;
  sub_230E69810();
  if (!v2)
  {
    v20 = *(v3 + 16);
    v19 = 1;
    sub_230D0D0D4();
    sub_230E69850();
    v18 = 2;
    sub_230D0D128();
    sub_230E69850();
    v17 = v3[3];
    v16[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AE68, &qword_230E6D200);
    sub_230D2BFE4(&qword_281565F68, sub_230D2C05C);
    sub_230E69850();
    v14 = *(type metadata accessor for SQLDatabaseConfiguration() + 32);
    v16[14] = 4;
    sub_230E68860();
    sub_230D2DA58(&qword_2815668A8, MEMORY[0x277CC9260]);
    sub_230E697F0();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t SQLDatabaseTableConfiguration.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SQLDatabaseTableConfiguration.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SQLDatabaseTableConfiguration.columns.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t static SQLDatabaseTableConfiguration.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_230E698C0() & 1) == 0)
  {
    return 0;
  }

  return sub_230D260B0(v2, v3);
}

uint64_t sub_230D276F0()
{
  if (*v0)
  {
    result = 0x736E6D756C6F63;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_230D27724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_230E698C0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_230D27800(uint64_t a1)
{
  v2 = sub_230D2C0B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D2783C(uint64_t a1)
{
  v2 = sub_230D2C0B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SQLDatabaseTableConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AE88, &qword_230E6D210);
  v15 = *(v4 - 8);
  v5 = *(v15 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v14 = v1[2];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D2C0B0();
  sub_230E69A50();
  v18 = 0;
  sub_230E69810();
  if (!v2)
  {
    v16 = v14;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AE90, &qword_230E6D218);
    sub_230D2C104(&qword_281565F60, sub_230D2C17C);
    sub_230E69850();
  }

  return (*(v15 + 8))(v8, v4);
}

uint64_t SQLDatabaseTableConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AE98, &qword_230E6D220);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D2C0B0();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v12 = sub_230E69720();
  v14 = v13;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AE90, &qword_230E6D218);
  v19 = 1;
  sub_230D2C104(&qword_27DB5AEA0, sub_230D2C1D0);
  sub_230E69760();
  (*(v6 + 8))(v10, v5);
  v16 = v18[1];
  *a2 = v15;
  a2[1] = v14;
  a2[2] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D27CD4(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_230E698C0() & 1) == 0)
  {
    return 0;
  }

  return sub_230D260B0(v2, v3);
}

uint64_t SQLDatabaseColumnConfiguration.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SQLDatabaseColumnConfiguration.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SQLDatabaseColumnConfiguration.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 40);
  *(a1 + 16) = v4;
  return sub_230D1D20C(v2, v3, v4);
}

uint64_t SQLDatabaseColumnConfiguration.defaultValue.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_230D0F460(*(v1 + 24), *(v1 + 32), *(v1 + 40));
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

uint64_t SQLDatabaseColumnConfiguration.foreignKeyReference.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v1 + 80);
  return sub_230D2C224(v2, v3);
}

__n128 SQLDatabaseColumnConfiguration.foreignKeyReference.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  sub_230D0F4FC(*(v1 + 48), *(v1 + 56));
  result = *a1;
  v8 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v8;
  *(v1 + 80) = v3;
  return result;
}

uint64_t SQLDatabaseColumnConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AEB0, &qword_230E6D228);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v25 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D2C268();
  sub_230E69A30();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_230D0F460(0, 0, 255);
    return sub_230D0F4FC(0, 0);
  }

  else
  {
    LOBYTE(v42) = 0;
    v12 = sub_230E69720();
    v14 = v13;
    v33 = v12;
    LOBYTE(v36) = 1;
    sub_230D22B38();
    sub_230E69760();
    v15 = v42;
    LOBYTE(v36) = 2;
    sub_230D24B9C();
    sub_230E69700();
    v61 = v15;
    v34 = v42;
    v35 = v43;
    LOBYTE(v15) = v44;
    sub_230D0F460(0, 0, 255);
    LOBYTE(v42) = 3;
    v32 = sub_230E696C0();
    LOBYTE(v42) = 4;
    LODWORD(v31) = sub_230E696C0();
    LOBYTE(v42) = 5;
    LODWORD(v30) = sub_230E696C0();
    v62 = 6;
    sub_230D2C2BC();
    sub_230E69700();
    v16 = v32 & 1;
    v29 = v32 & 1;
    v28 = v31 & 1;
    v32 = v30 & 1;
    (*(v6 + 8))(v10, v5);
    v17 = v56;
    v31 = v56;
    v27 = v57;
    v25 = v58;
    v18 = v59;
    v30 = v59;
    v26 = v60;
    sub_230D0F4FC(0, 0);
    *&v36 = v33;
    *(&v36 + 1) = v14;
    LOBYTE(v37) = v61;
    *(&v37 + 1) = v34;
    *&v38 = v35;
    BYTE8(v38) = v15;
    BYTE9(v38) = v16;
    v19 = v28;
    BYTE10(v38) = v28;
    BYTE11(v38) = v32;
    v20 = v27;
    *&v39 = v17;
    *(&v39 + 1) = v27;
    v21 = v25;
    *&v40 = v25;
    *(&v40 + 1) = v18;
    LOWORD(v18) = v26;
    v41 = v26;
    *(a2 + 80) = v26;
    v22 = v39;
    *(a2 + 32) = v38;
    *(a2 + 48) = v22;
    *(a2 + 64) = v40;
    v23 = v37;
    *a2 = v36;
    *(a2 + 16) = v23;
    sub_230D2C310(&v36, &v42);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v42 = v33;
    v43 = v14;
    v44 = v61;
    v45 = v34;
    v46 = v35;
    v47 = v15;
    v48 = v29;
    v49 = v19;
    v50 = v32;
    v51 = v31;
    v52 = v20;
    v53 = v21;
    v54 = v30;
    v55 = v18;
    return sub_230D2C348(&v42);
  }
}

unint64_t sub_230D284F0()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x72616D6972507369;
  if (v1 != 5)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x62616C6C754E7369;
  if (v1 != 3)
  {
    v4 = 0x657571696E557369;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1701869940;
  if (v1 != 1)
  {
    v5 = 0x56746C7561666564;
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

uint64_t sub_230D285D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230D2D41C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D285FC(uint64_t a1)
{
  v2 = sub_230D2C268();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D28638(uint64_t a1)
{
  v2 = sub_230D2C268();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SQLDatabaseColumnConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AEC0, &qword_230E6D230);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = *v1;
  v7 = v1[1];
  v41 = *(v1 + 16);
  v9 = v1[3];
  v33 = v1[4];
  v34 = v9;
  v32 = *(v1 + 40);
  LODWORD(v9) = *(v1 + 41);
  v29 = *(v1 + 42);
  v30 = v9;
  v28 = *(v1 + 43);
  v10 = v1[7];
  v31 = v1[6];
  v11 = v1[9];
  v27 = v1[8];
  v25 = v10;
  v26 = v11;
  v12 = *(v1 + 40);
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1;
  v17 = &v24 - v16;
  __swift_project_boxed_opaque_existential_1(v15, v13);
  sub_230D2C268();
  sub_230E69A50();
  LOBYTE(v36) = 0;
  v18 = v35;
  sub_230E69810();
  if (!v18)
  {
    v19 = v32;
    v21 = v33;
    v20 = v34;
    LODWORD(v35) = v12;
    v22 = v31;
    LOBYTE(v36) = v41;
    v42 = 1;
    sub_230D22834();
    sub_230E69850();
    v36 = v20;
    v37 = v21;
    LOBYTE(v38) = v19;
    v42 = 2;
    sub_230D1D20C(v20, v21, v19);
    sub_230D24888();
    sub_230E697F0();
    sub_230D0F460(v36, v37, v38);
    LOBYTE(v36) = 3;
    sub_230E69820();
    LOBYTE(v36) = 4;
    sub_230E69820();
    LOBYTE(v36) = 5;
    sub_230E69820();
    v36 = v22;
    v37 = v25;
    v38 = v27;
    v39 = v26;
    v40 = v35;
    v42 = 6;
    sub_230D2C224(v22, v25);
    sub_230D2C378();
    sub_230E697F0();
    sub_230D0F4FC(v36, v37);
  }

  return (*(v4 + 8))(v17, v3);
}

ServicesIntelligence::SQLDatabaseValueType_optional __swiftcall SQLDatabaseValueType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SQLDatabaseValueType.rawValue.getter()
{
  v1 = 1651469410;
  v2 = 7630441;
  if (*v0 != 2)
  {
    v2 = 1954047348;
  }

  if (*v0)
  {
    v1 = 0x656C62756F64;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_230D28A90()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230D28B38()
{
  *v0;
  *v0;
  *v0;
  sub_230E69100();
}

uint64_t sub_230D28BCC()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

void sub_230D28C7C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1651469410;
  v4 = 0xE300000000000000;
  v5 = 7630441;
  if (*v1 != 2)
  {
    v5 = 1954047348;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x656C62756F64;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_230D28D9C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x65756C6176;
  }

  else
  {
    v4 = 1701869940;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x65756C6176;
  }

  else
  {
    v6 = 1701869940;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_230E698C0();
  }

  return v9 & 1;
}

uint64_t sub_230D28E38()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230D28EB0()
{
  *v0;
  sub_230E69100();
}

uint64_t sub_230D28F14()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230D28F88@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_230E69680();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_230D28FE8(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 0x65756C6176;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_230D2901C()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_230D2904C@<X0>(char *a1@<X8>)
{
  v2 = sub_230E69680();

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

uint64_t sub_230D290B0(uint64_t a1)
{
  v2 = sub_230D2C3CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D290EC(uint64_t a1)
{
  v2 = sub_230D2C3CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SQLDatabaseValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AED0, &qword_230E6D238);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v34 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D2C3CC();
  sub_230E69A30();
  if (!v2)
  {
    LOBYTE(v36) = 0;
    v12 = sub_230E69720();
    v14 = v12;
    v15 = v13;
    v16 = v12 == 1651469410 && v13 == 0xE400000000000000;
    if (v16 || (sub_230E698C0() & 1) != 0)
    {

      v38 = 1;
      sub_230D2C420();
      sub_230E69700();
      (*(v6 + 8))(v10, v5);
      v17 = 0;
      v18 = v36;
      v19 = v37;
LABEL_11:
      *a2 = v18;
      *(a2 + 8) = v19;
      *(a2 + 16) = v17;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v21 = v14 == 0x656C62756F64 && v15 == 0xE600000000000000;
    if (v21 || (sub_230E698C0() & 1) != 0)
    {

      LOBYTE(v36) = 1;
      v18 = sub_230E696D0();
      v23 = v22;
      (*(v6 + 8))(v10, v5);
      v19 = v23 & 1;
      v17 = 1;
      goto LABEL_11;
    }

    v24 = v14 == 7630441 && v15 == 0xE300000000000000;
    if (v24 || (sub_230E698C0() & 1) != 0)
    {

      LOBYTE(v36) = 1;
      v18 = sub_230E69710();
      v26 = v25;
      (*(v6 + 8))(v10, v5);
      v19 = v26 & 1;
      v17 = 2;
      goto LABEL_11;
    }

    if (v14 == 1954047348 && v15 == 0xE400000000000000)
    {
    }

    else
    {
      v28 = sub_230E698C0();

      if ((v28 & 1) == 0)
      {
        v29 = sub_230E69580();
        swift_allocError();
        v35 = v30;
        v31 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_230E69A10();
        v32 = v35;
        sub_230E69570();
        (*(*(v29 - 8) + 104))(v32, *MEMORY[0x277D84168], v29);
        swift_willThrow();
        (*(v6 + 8))(v10, v5);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }
    }

    LOBYTE(v36) = 1;
    v18 = sub_230E696B0();
    v19 = v33;
    (*(v6 + 8))(v10, v5);
    v17 = 3;
    goto LABEL_11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SQLDatabaseValue.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AEE8, &qword_230E6D240);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v14 - v8;
  v10 = *v1;
  v14 = v1[1];
  v15 = v10;
  v11 = *(v1 + 16);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D2C3CC();
  sub_230E69A50();
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      LOBYTE(v16) = 0;
      sub_230E69810();
      if (!v2)
      {
        LOBYTE(v16) = 1;
        sub_230E69800();
      }
    }

    else
    {
      LOBYTE(v16) = 0;
      sub_230E69810();
      if (!v2)
      {
        LOBYTE(v16) = 1;
        sub_230E697B0();
      }
    }
  }

  else if (v11)
  {
    LOBYTE(v16) = 0;
    sub_230E69810();
    if (!v2)
    {
      LOBYTE(v16) = 1;
      sub_230E697C0();
    }
  }

  else
  {
    LOBYTE(v16) = 0;
    sub_230E69810();
    if (!v2)
    {
      v16 = v15;
      v17 = v14;
      v18 = 1;
      sub_230D2C474();
      sub_230E697F0();
    }
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t ForeignKeyReference.referencedTable.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ForeignKeyReference.referencedTable.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ForeignKeyReference.referencedColumn.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ForeignKeyReference.referencedColumn.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

unint64_t sub_230D29A48()
{
  v1 = 0x636E657265666572;
  v2 = 0x6574656C65446E6FLL;
  if (*v0 != 2)
  {
    v2 = 0x6574616470556E6FLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_230D29AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230D2D67C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D29AFC(uint64_t a1)
{
  v2 = sub_230D2C4C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D29B38(uint64_t a1)
{
  v2 = sub_230D2C4C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ForeignKeyReference.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AEF8, &qword_230E6D248);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v17 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v19 = v1[3];
  v20 = v11;
  LODWORD(v11) = *(v1 + 32);
  v17 = *(v1 + 33);
  v18 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D2C4C8();
  sub_230E69A50();
  v27 = 0;
  v13 = v21;
  sub_230E69810();
  if (!v13)
  {
    v16 = v17;
    v15 = v18;
    v26 = 1;
    sub_230E69810();
    v25 = v15;
    v24 = 2;
    sub_230D2C51C();
    sub_230E69850();
    v23 = v16;
    v22 = 3;
    sub_230E69850();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t ForeignKeyReference.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AF10, &qword_230E6D250);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D2C4C8();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = 0;
  v12 = sub_230E69720();
  v24 = v13;
  v29 = 1;
  v21 = sub_230E69720();
  v23 = v14;
  v27 = 2;
  v22 = sub_230D2C570();
  sub_230E69760();
  v20 = v28;
  v25 = 3;
  sub_230E69760();
  (*(v6 + 8))(v10, v5);
  v16 = v26;
  v18 = v23;
  v17 = v24;
  *a2 = v12;
  *(a2 + 8) = v17;
  *(a2 + 16) = v21;
  *(a2 + 24) = v18;
  *(a2 + 32) = v20;
  *(a2 + 33) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

ServicesIntelligence::ForeignKeyAction_optional __swiftcall ForeignKeyAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ForeignKeyAction.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x4F49544341204F4ELL;
  v3 = 0x45444143534143;
  v4 = 0x4C4C554E20544553;
  if (v1 != 3)
  {
    v4 = 0x4146454420544553;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x5443495254534552;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_230D2A1C0()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230D2A2B0()
{
  *v0;
  *v0;
  *v0;
  sub_230E69100();
}

uint64_t sub_230D2A38C()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

void sub_230D2A484(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000004ELL;
  v4 = 0x4F49544341204F4ELL;
  v5 = 0xE700000000000000;
  v6 = 0x45444143534143;
  v7 = 0xE800000000000000;
  v8 = 0x4C4C554E20544553;
  if (v2 != 3)
  {
    v8 = 0x4146454420544553;
    v7 = 0xEB00000000544C55;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x5443495254534552;
    v3 = 0xE800000000000000;
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

uint64_t SQLDatabaseConfiguration.path.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v89[2] = *MEMORY[0x277D85DE8];
  v5 = sub_230E687F0();
  v86 = *(v5 - 8);
  v87 = v5;
  v6 = v86[8];
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_230E68860();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v85 = &v72 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v72 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D8C0, &qword_230E6C210);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v27 = &v72 - v26;
  v28 = *(type metadata accessor for SQLDatabaseConfiguration() + 32);
  v88 = v3;
  sub_230D2C5C4(v3 + v28, v27);
  if ((*(v11 + 48))(v27, 1, v10) == 1)
  {
    v84 = a1;
    sub_230D2D9F8(v27, &qword_27DB5D8C0, &qword_230E6C210);
    v29 = objc_opt_self();
    v30 = [v29 defaultManager];
    sub_230DA3FDC();
    v31 = v2;

    if (!v2)
    {
      v81 = v10;
      v82 = v29;
      v83 = v22;
      v78 = 0;
      v32 = *(v88 + 16);
      v80 = v11;
      v33 = v16;
      v34 = v9;
      if (v32 > 4)
      {
        v35 = 0xE600000000000000;
        v44 = 0x6E6F6D6D6F63;
        v45 = 0x65676175676E616CLL;
        if (v32 != 8)
        {
          v45 = 0x7974697275636573;
        }

        if (v32 != 7)
        {
          v44 = v45;
          v35 = 0xE800000000000000;
        }

        v46 = 0xE800000000000000;
        v47 = 0x7374736163646F70;
        if (v32 != 5)
        {
          v47 = 0x6F65646976;
          v46 = 0xE500000000000000;
        }

        v48 = v32 <= 6;
        if (v32 <= 6)
        {
          v42 = v47;
        }

        else
        {
          v42 = v44;
        }

        if (v48)
        {
          v35 = v46;
        }
      }

      else
      {
        v35 = 0xE800000000000000;
        v36 = 0x6C616E7265746E69;
        v37 = 0xE500000000000000;
        v38 = 0x736B6F6F62;
        v39 = 0xE700000000000000;
        v40 = 0x7373656E746966;
        if (v32 != 3)
        {
          v40 = 0x636973756DLL;
          v39 = 0xE500000000000000;
        }

        if (v32 != 2)
        {
          v38 = v40;
          v37 = v39;
        }

        if (v32)
        {
          v36 = 1936748641;
          v35 = 0xE400000000000000;
        }

        v41 = v32 <= 1;
        if (v32 <= 1)
        {
          v42 = v36;
        }

        else
        {
          v42 = v38;
        }

        if (!v41)
        {
          v35 = v37;
        }
      }

      v50 = v86;
      v49 = v87;
      v86 = v35;
      v89[0] = v42;
      v89[1] = v35;
      v51 = *MEMORY[0x277CC91D8];
      v52 = v50[13];
      v74 = v52;
      v52(v34, v51, v87);
      v53 = sub_230D0D278();
      v79 = v33;
      sub_230E68840();
      v54 = v50[1];
      v54(v34, v49);

      strcpy(v89, "SQLDatabases");
      BYTE5(v89[1]) = 0;
      HIWORD(v89[1]) = -5120;
      v76 = v51;
      v77 = v50 + 13;
      v52(v34, v51, v49);
      v55 = v85;
      v75 = v53;
      v56 = v79;
      sub_230E68840();
      v73 = v54;
      v54(v34, v49);
      v57 = v81;
      v86 = *(v80 + 8);
      (v86)(v56, v81);
      v58 = [v82 defaultManager];
      v59 = v55;
      v60 = sub_230E68800();
      v89[0] = 0;
      LODWORD(v55) = [v58 createDirectoryAtURL:v60 withIntermediateDirectories:1 attributes:0 error:v89];

      v61 = v89[0];
      if (v55)
      {
        v62 = *(v88 + 8);
        v89[0] = *v88;
        v89[1] = v62;
        v63 = v61;

        MEMORY[0x23191DA00](6448174, 0xE300000000000000);
        v64 = v87;
        v74(v34, v76, v87);
        sub_230E68850();
        v73(v34, v64);

        v65 = v59;
        v66 = v86;
        (v86)(v65, v57);
        result = v66(v83, v57);
        goto LABEL_33;
      }

      v67 = v89[0];
      v31 = sub_230E687E0();

      swift_willThrow();
      v68 = v59;
      v69 = v86;
      (v86)(v68, v57);
      v69(v83, v57);
    }

    sub_230D0D224();
    swift_allocError();
    *v70 = 0;
    *(v70 + 8) = 0;
    *(v70 + 16) = 0;
    swift_willThrow();
    result = MEMORY[0x23191E910](v31);
    goto LABEL_33;
  }

  result = (*(v11 + 32))(a1, v27, v10);
LABEL_33:
  v71 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230D2ACC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_230E68730();
    if (v10)
    {
      v11 = sub_230E68750();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_230E68740();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_230E68730();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_230E68750();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_230E68740();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_230D2AEF4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_230D2B084(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_230D0F4A8(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_230D2ACC4(v14, a3, a4, &v13);
  v10 = v4;
  sub_230D0F4A8(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_230D2B084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_230E68730();
  v11 = result;
  if (result)
  {
    result = sub_230E68750();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_230E68740();
  sub_230D2ACC4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_230D2B13C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_230D0DD0C(a3, a4);
          return sub_230D2AEF4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s20ServicesIntelligence16SQLDatabaseValueO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v7 != 3)
      {
        v9 = *(a1 + 8);

        goto LABEL_21;
      }

      if (v3)
      {
        if (v6)
        {
          if (v2 == v5 && v3 == v6)
          {
            sub_230D0DCD8(*a1, v3, 3);
            sub_230D0DCD8(v2, v3, 3);
            sub_230D0F474(v2, v3, 3);
            sub_230D0F474(v2, v3, 3);
            return 1;
          }

          v13 = *a1;
          v14 = sub_230E698C0();
          sub_230D0DCD8(v5, v6, 3);
          sub_230D0DCD8(v2, v3, 3);
          sub_230D0F474(v2, v3, 3);
          sub_230D0F474(v5, v6, 3);
          return (v14 & 1) != 0;
        }

        sub_230D0DCD8(*a2, 0, 3);
        sub_230D0DCD8(v5, 0, 3);
        sub_230D0DCD8(v2, v3, 3);
        sub_230D0F474(v2, v3, 3);
      }

      else
      {
        sub_230D0DCD8(*a2, *(a2 + 8), 3);
        sub_230D0DCD8(v5, v6, 3);
        sub_230D0DCD8(v2, 0, 3);
        sub_230D0F474(v2, 0, 3);
        sub_230D0F474(v5, v6, 3);
        if (!v6)
        {
          return 1;
        }
      }

      v10 = v5;
      v11 = v6;
      v12 = 3;
      goto LABEL_22;
    }

    if (v7 != 2)
    {
      goto LABEL_21;
    }

    sub_230D0F474(*a1, v3, 2);
    sub_230D0F474(v5, v6, 2);
    if ((v3 & 1) == 0)
    {
      return !(v6 & 1 | (v2 != v5));
    }

    return (v6 & 1) != 0;
  }

  if (*(a1 + 16))
  {
    if (v7 != 1)
    {
      goto LABEL_21;
    }

    sub_230D0F474(*a1, v3, 1);
    sub_230D0F474(v5, v6, 1);
    if ((v3 & 1) == 0)
    {
      return (v6 & 1) == 0 && *&v2 == *&v5;
    }

    return (v6 & 1) != 0;
  }

  if (*(a2 + 16))
  {
    sub_230D0DCF8(*a1, v3);
LABEL_21:
    sub_230D0DCD8(v5, v6, v7);
    sub_230D0F474(v2, v3, v4);
    v10 = v5;
    v11 = v6;
    v12 = v7;
LABEL_22:
    sub_230D0F474(v10, v11, v12);
    return 0;
  }

  if (v3 >> 60 == 15)
  {
    sub_230D0DCD8(*a1, v3, 0);
    sub_230D0DCD8(v5, v6, 0);
    sub_230D0DCD8(v5, v6, 0);
    sub_230D0DCD8(v2, v3, 0);
    sub_230D0F474(v2, v3, 0);
    sub_230D0F474(v5, v6, 0);
    if (v6 >> 60 == 15)
    {
      sub_230D0F494(v2, v3);
      return 1;
    }

LABEL_34:
    sub_230D0F494(v2, v3);
    sub_230D0F494(v5, v6);
    return 0;
  }

  if (v6 >> 60 == 15)
  {
    sub_230D0DCD8(*a1, v3, 0);
    sub_230D0DCD8(v5, v6, 0);
    sub_230D0DCD8(v5, v6, 0);
    sub_230D0DCD8(v2, v3, 0);
    sub_230D0F474(v2, v3, 0);
    sub_230D0F474(v5, v6, 0);
    goto LABEL_34;
  }

  sub_230D0DCD8(*a2, *(a2 + 8), 0);
  sub_230D0DCD8(v2, v3, 0);
  sub_230D0DCD8(v2, v3, 0);
  sub_230D0DCD8(v5, v6, 0);
  sub_230D0DCD8(v5, v6, 0);
  sub_230D0DCD8(v2, v3, 0);
  v15 = sub_230D2B13C(v2, v3, v5, v6);
  sub_230D0F494(v5, v6);
  sub_230D0F474(v5, v6, 0);
  sub_230D0F474(v2, v3, 0);
  sub_230D0F474(v2, v3, 0);
  sub_230D0F474(v5, v6, 0);
  sub_230D0F494(v2, v3);
  return (v15 & 1) != 0;
}

uint64_t _s20ServicesIntelligence19ForeignKeyReferenceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_230E698C0() & 1) == 0 || (v2 != v6 || v3 != v7) && (sub_230E698C0() & 1) == 0 || (sub_230D0BA50(v4, v8) & 1) == 0)
  {
    return 0;
  }

  return sub_230D0BA50(v5, v9);
}

BOOL _s20ServicesIntelligence30SQLDatabaseColumnConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v30 = *(a1 + 42);
  v31 = *(a1 + 41);
  v24 = *(a1 + 48);
  v23 = *(a1 + 56);
  v25 = *(a1 + 64);
  v26 = *(a1 + 72);
  v27 = *(a1 + 80);
  v6 = *(a2 + 16);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 41);
  v11 = *(a2 + 42);
  v28 = *(a2 + 43);
  v29 = *(a1 + 43);
  v18 = *(a2 + 56);
  v19 = *(a2 + 48);
  v20 = *(a2 + 64);
  v21 = *(a2 + 72);
  v22 = *(a2 + 80);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_230E698C0() & 1) == 0 || (sub_230D0B818(v2, v6) & 1) == 0)
  {
    return 0;
  }

  if (v5 == 255)
  {
    sub_230D1D20C(v4, v3, 255);
    if (v9 == 255)
    {
      sub_230D1D20C(v8, v7, 255);
      sub_230D0F460(v4, v3, 255);
      result = 0;
      if (v31 != v10)
      {
        return result;
      }

      goto LABEL_15;
    }

    sub_230D1D20C(v8, v7, v9);
LABEL_13:
    sub_230D0F460(v4, v3, v5);
    sub_230D0F460(v8, v7, v9);
    return 0;
  }

  v37 = v4;
  v38 = v3;
  LOBYTE(v39) = v5;
  if (v9 == 255)
  {
    sub_230D1D20C(v4, v3, v5);
    sub_230D1D20C(v8, v7, 255);
    sub_230D1D20C(v4, v3, v5);
    sub_230D0F474(v4, v3, v5);
    goto LABEL_13;
  }

  v32 = v8;
  v33 = v7;
  LOBYTE(v34) = v9;
  sub_230D1D20C(v4, v3, v5);
  sub_230D1D20C(v8, v7, v9);
  sub_230D1D20C(v4, v3, v5);
  v12 = _s20ServicesIntelligence16SQLDatabaseValueO2eeoiySbAC_ACtFZ_0(&v37, &v32);
  sub_230D0F474(v32, v33, v34);
  sub_230D0F474(v37, v38, v39);
  sub_230D0F460(v4, v3, v5);
  result = 0;
  if ((v12 & 1) != 0 && ((v31 ^ v10) & 1) == 0)
  {
LABEL_15:
    if ((v30 ^ v11) & 1) != 0 || ((v29 ^ v28))
    {
      return result;
    }

    if (v23)
    {
      v14 = v24;
      v37 = v24;
      v38 = v23;
      v39 = v25;
      v40 = v26;
      v41 = v27;
      v16 = v18;
      v15 = v19;
      if (v18)
      {
        v32 = v19;
        v33 = v18;
        v34 = v20;
        v35 = v21;
        v36 = v22;
        sub_230D2C224(v24, v23);
        sub_230D2C224(v19, v18);
        sub_230D2C224(v24, v23);
        v17 = _s20ServicesIntelligence19ForeignKeyReferenceV2eeoiySbAC_ACtFZ_0(&v37, &v32);

        sub_230D0F4FC(v24, v23);
        return (v17 & 1) != 0;
      }

      sub_230D2C224(v24, v23);
      sub_230D2C224(v19, 0);
      sub_230D2C224(v24, v23);
    }

    else
    {
      v14 = v24;
      sub_230D2C224(v24, 0);
      v16 = v18;
      v15 = v19;
      if (!v18)
      {
        sub_230D2C224(v19, 0);
        sub_230D0F4FC(v24, 0);
        return 1;
      }

      sub_230D2C224(v19, v18);
    }

    sub_230D0F4FC(v14, v23);
    sub_230D0F4FC(v15, v16);
    return 0;
  }

  return result;
}

uint64_t _s20ServicesIntelligence24SQLDatabaseConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_230E68860();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D8C0, &qword_230E6C210);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AFA0, &unk_230E6E0B0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v26 - v18;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_230E698C0() & 1) == 0 || (sub_230D0B544(*(a1 + 16), *(a2 + 16)) & 1) == 0 || (sub_230D267E0(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    v23 = 0;
    return v23 & 1;
  }

  v20 = *(type metadata accessor for SQLDatabaseConfiguration() + 32);
  v21 = *(v15 + 48);
  sub_230D2C5C4(a1 + v20, v19);
  sub_230D2C5C4(a2 + v20, &v19[v21]);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) != 1)
  {
    sub_230D2C5C4(v19, v14);
    if (v22(&v19[v21], 1, v4) != 1)
    {
      (*(v5 + 32))(v9, &v19[v21], v4);
      sub_230D2DA58(&qword_27DB5AFA8, MEMORY[0x277CC9260]);
      v23 = sub_230E69020();
      v25 = *(v5 + 8);
      v25(v9, v4);
      v25(v14, v4);
      sub_230D2D9F8(v19, &qword_27DB5D8C0, &qword_230E6C210);
      return v23 & 1;
    }

    (*(v5 + 8))(v14, v4);
    goto LABEL_13;
  }

  if (v22(&v19[v21], 1, v4) != 1)
  {
LABEL_13:
    sub_230D2D9F8(v19, &qword_27DB5AFA0, &unk_230E6E0B0);
    v23 = 0;
    return v23 & 1;
  }

  sub_230D2D9F8(v19, &qword_27DB5D8C0, &qword_230E6C210);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_230D2BFE4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5AE68, &qword_230E6D200);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230D2C05C()
{
  result = qword_2815660D0;
  if (!qword_2815660D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815660D0);
  }

  return result;
}

unint64_t sub_230D2C0B0()
{
  result = qword_2815660E8;
  if (!qword_2815660E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815660E8);
  }

  return result;
}

uint64_t sub_230D2C104(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5AE90, &qword_230E6D218);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230D2C17C()
{
  result = qword_2815660B0;
  if (!qword_2815660B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815660B0);
  }

  return result;
}

unint64_t sub_230D2C1D0()
{
  result = qword_27DB5AEA8;
  if (!qword_27DB5AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AEA8);
  }

  return result;
}

uint64_t sub_230D2C224(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_230D2C268()
{
  result = qword_2815660C8;
  if (!qword_2815660C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815660C8);
  }

  return result;
}

unint64_t sub_230D2C2BC()
{
  result = qword_27DB5AEB8;
  if (!qword_27DB5AEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AEB8);
  }

  return result;
}

unint64_t sub_230D2C378()
{
  result = qword_27DB5AEC8;
  if (!qword_27DB5AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AEC8);
  }

  return result;
}

unint64_t sub_230D2C3CC()
{
  result = qword_27DB5AED8;
  if (!qword_27DB5AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AED8);
  }

  return result;
}

unint64_t sub_230D2C420()
{
  result = qword_27DB5AEE0;
  if (!qword_27DB5AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AEE0);
  }

  return result;
}

unint64_t sub_230D2C474()
{
  result = qword_27DB5AEF0;
  if (!qword_27DB5AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AEF0);
  }

  return result;
}

unint64_t sub_230D2C4C8()
{
  result = qword_27DB5AF00;
  if (!qword_27DB5AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF00);
  }

  return result;
}

unint64_t sub_230D2C51C()
{
  result = qword_27DB5AF08;
  if (!qword_27DB5AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF08);
  }

  return result;
}

unint64_t sub_230D2C570()
{
  result = qword_27DB5AF18;
  if (!qword_27DB5AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF18);
  }

  return result;
}

uint64_t sub_230D2C5C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D8C0, &qword_230E6C210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230D2C634(void *a1)
{
  a1[1] = sub_230D2DA58(&qword_27DB5AC40, type metadata accessor for SQLDatabaseConfiguration);
  a1[2] = sub_230D2DA58(&qword_281566328, type metadata accessor for SQLDatabaseConfiguration);
  result = sub_230D2DA58(&qword_27DB5AF20, type metadata accessor for SQLDatabaseConfiguration);
  a1[3] = result;
  return result;
}

unint64_t sub_230D2C6E4()
{
  result = qword_27DB5AF28;
  if (!qword_27DB5AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF28);
  }

  return result;
}

unint64_t sub_230D2C73C()
{
  result = qword_27DB5AF30;
  if (!qword_27DB5AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF30);
  }

  return result;
}

unint64_t sub_230D2C794()
{
  result = qword_27DB5AF38;
  if (!qword_27DB5AF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5AF40, &qword_230E6D6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF38);
  }

  return result;
}

void sub_230D2C820()
{
  sub_230D2C8CC();
  if (v0 <= 0x3F)
  {
    sub_230D2C91C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_230D2C8CC()
{
  if (!qword_281565F70)
  {
    v0 = sub_230E692C0();
    if (!v1)
    {
      atomic_store(v0, &qword_281565F70);
    }
  }
}

void sub_230D2C91C()
{
  if (!qword_281566890)
  {
    sub_230E68860();
    v0 = sub_230E69450();
    if (!v1)
    {
      atomic_store(v0, &qword_281566890);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_230D2C988(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_230D2C9D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_20ServicesIntelligence16SQLDatabaseValueOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_20ServicesIntelligence19ForeignKeyReferenceVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_230D2CAC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
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

uint64_t sub_230D2CB08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_230D2CB80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}