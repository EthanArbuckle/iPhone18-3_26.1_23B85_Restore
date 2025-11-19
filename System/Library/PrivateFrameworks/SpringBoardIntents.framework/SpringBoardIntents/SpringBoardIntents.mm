uint64_t sub_26B9E9A18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B9E9A40();
  *a1 = result;
  return result;
}

uint64_t sub_26B9E9A40()
{
  v21 = sub_26B9F1960();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  (MEMORY[0x28223BE20])();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280434430, &qword_26B9F2988) - 8) + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434300, &qword_26B9F2990);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  v14 = sub_26B9F19F0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280434440, "4\n");
  sub_26B9F19D0();
  (*(v15 + 56))(v13, 1, 1, v14);
  v17 = sub_26B9F1870();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  v18(v7, 1, 1, v17);
  (*(v0 + 104))(v3, *MEMORY[0x277CBA308], v21);
  sub_26B9E9D38();
  return sub_26B9F18B0();
}

unint64_t sub_26B9E9D38()
{
  result = qword_281255F98;
  if (!qword_281255F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255F98);
  }

  return result;
}

uint64_t sub_26B9E9D8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_26B9E9DE8()
{
  sub_26B9E9E24();

  return sub_26B9F1840();
}

unint64_t sub_26B9E9E24()
{
  result = qword_281255F38;
  if (!qword_281255F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255F38);
  }

  return result;
}

uint64_t sub_26B9E9E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CBA2A8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26B9E9F7C;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t sub_26B9E9F2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26B9E9F7C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id NSStringFromSBINAppIntentActionSource(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<unknown: %lu>", a1];
  }

  else
  {
    v2 = *(&off_279D12070 + a1);
  }

  return v2;
}

id SBINLogCommon()
{
  if (SBINLogCommon_onceToken != -1)
  {
    SBINLogCommon_cold_1();
  }

  v1 = SBINLogCommon___logObj;

  return v1;
}

uint64_t __SBINLogCommon_block_invoke()
{
  SBINLogCommon___logObj = os_log_create("com.apple.SpringBoardIntents", "Common");

  return MEMORY[0x2821F96F8]();
}

id SBINLogIntentExecution()
{
  if (SBINLogIntentExecution_onceToken[0] != -1)
  {
    SBINLogIntentExecution_cold_1();
  }

  v1 = SBINLogIntentExecution___logObj;

  return v1;
}

uint64_t __SBINLogIntentExecution_block_invoke()
{
  SBINLogIntentExecution___logObj = os_log_create("com.apple.SpringBoardIntents", "IntentExecution");

  return MEMORY[0x2821F96F8]();
}

void sub_26B9EA578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFCActivityManagerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!FocusLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __FocusLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279D120D8;
    v7 = 0;
    FocusLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (FocusLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("FCActivityManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFCActivityManagerClass_block_invoke_cold_1();
  }

  getFCActivityManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __FocusLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  FocusLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

__CFString *NSStringFromSBINCameraCaptureMode(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<unknown: %lu>", a1];
  }

  else
  {
    v2 = off_279D12158[a1];
  }

  return v2;
}

__CFString *NSStringFromSBINCameraCaptureDevice(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"back";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<unknown: %lu>", a1];
    }
  }

  else
  {
    v2 = @"front";
  }

  return v2;
}

uint64_t sub_26B9EB244()
{
  v0 = sub_26B9F19A0();
  __swift_allocate_value_buffer(v0, qword_280434690);
  __swift_project_value_buffer(v0, qword_280434690);
  return sub_26B9F1990();
}

uint64_t sub_26B9EB2A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434320, &qword_26B9F2F50);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434300, &qword_26B9F2990);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - v4;
  v33 = sub_26B9F19F0();
  v6 = *(v33 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434328, &qword_26B9F29C0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434330, &qword_26B9F29C8);
  v9 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v27 = *(*(v8 - 8) + 72);
  v28 = 4 * v27;
  v10 = swift_allocObject();
  v29 = v10;
  *(v10 + 16) = xmmword_26B9F2520;
  v11 = (v10 + v9);
  v12 = *(v8 + 48);
  v31 = v8;
  *v11 = 0;
  sub_26B9F19D0();
  v13 = *(v6 + 56);
  v30 = v6 + 56;
  v14 = v33;
  v13(v5, 1, 1, v33);
  sub_26B9F1900();
  v32 = v11;
  sub_26B9F1920();
  v15 = v27;
  v16 = *(v8 + 48);
  v11[v27] = 1;
  sub_26B9F19D0();
  v13(v5, 1, 1, v14);
  sub_26B9F1900();
  sub_26B9F1920();
  v18 = v31;
  v17 = v32;
  v26 = *(v31 + 48);
  v32[2 * v15] = 2;
  sub_26B9F19D0();
  v13(v5, 1, 1, v33);
  sub_26B9F1900();
  sub_26B9F1920();
  v19 = v17;
  v20 = &v17[3 * v15];
  v21 = *(v18 + 48);
  *v20 = 3;
  sub_26B9F19D0();
  v22 = v33;
  v13(v5, 1, 1, v33);
  sub_26B9F1900();
  sub_26B9F1920();
  v23 = *(v31 + 48);
  v19[v28] = 4;
  sub_26B9F19D0();
  v13(v5, 1, 1, v22);
  sub_26B9F1900();
  sub_26B9F1920();
  v24 = sub_26B9ED1D4(v29);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_2804346A8 = v24;
  return result;
}

unint64_t sub_26B9EB7E8()
{
  result = qword_281256018;
  if (!qword_281256018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281256018);
  }

  return result;
}

uint64_t sub_26B9EB83C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000006FLL;
  v3 = 0x746F685072616572;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6F6850746E6F7266;
    }

    else
    {
      v5 = 0x746F685072616572;
    }

    if (v4)
    {
      v6 = 0xEA00000000006F74;
    }

    else
    {
      v6 = 0xE90000000000006FLL;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x6564695672616572;
    v6 = 0xE90000000000006FLL;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x74726F5072616572;
    }

    else
    {
      v5 = 0x726F50746E6F7266;
    }

    if (v4 == 3)
    {
      v6 = 0xEC00000074696172;
    }

    else
    {
      v6 = 0xED00007469617274;
    }
  }

  v7 = 0x6564695672616572;
  v8 = 0x74726F5072616572;
  v9 = 0xEC00000074696172;
  if (a2 != 3)
  {
    v8 = 0x726F50746E6F7266;
    v9 = 0xED00007469617274;
  }

  if (a2 == 2)
  {
    v10 = 0xE90000000000006FLL;
  }

  else
  {
    v7 = v8;
    v10 = v9;
  }

  if (a2)
  {
    v3 = 0x6F6850746E6F7266;
    v2 = 0xEA00000000006F74;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v10;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_26B9F1B70();
  }

  return v13 & 1;
}

uint64_t sub_26B9EB9F0()
{
  v1 = *v0;
  sub_26B9F1B80();
  sub_26B9F1AD0();

  return sub_26B9F1B90();
}

uint64_t sub_26B9EBAEC()
{
  *v0;
  *v0;
  *v0;
  sub_26B9F1AD0();
}

uint64_t sub_26B9EBBD4()
{
  v1 = *v0;
  sub_26B9F1B80();
  sub_26B9F1AD0();

  return sub_26B9F1B90();
}

uint64_t sub_26B9EBCCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26B9ED3A8();
  *a2 = result;
  return result;
}

void sub_26B9EBCFC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x746F685072616572;
  v4 = 0x6564695672616572;
  v5 = 0xEC00000074696172;
  v6 = 0x74726F5072616572;
  if (v2 != 3)
  {
    v6 = 0x726F50746E6F7266;
    v5 = 0xED00007469617274;
  }

  if (v2 == 2)
  {
    v5 = 0xE90000000000006FLL;
  }

  else
  {
    v4 = v6;
  }

  v7 = 0xEA00000000006F74;
  if (*v1)
  {
    v3 = 0x6F6850746E6F7266;
  }

  else
  {
    v7 = 0xE90000000000006FLL;
  }

  if (*v1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (*v1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  *a1 = v8;
  a1[1] = v9;
}

unint64_t sub_26B9EBDB8()
{
  result = qword_281256060;
  if (!qword_281256060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281256060);
  }

  return result;
}

unint64_t sub_26B9EBE10()
{
  result = qword_281256038;
  if (!qword_281256038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281256038);
  }

  return result;
}

unint64_t sub_26B9EBE68()
{
  result = qword_281256010;
  if (!qword_281256010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281256010);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_26B9EBF68()
{
  result = qword_281256048;
  if (!qword_281256048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281256048);
  }

  return result;
}

unint64_t sub_26B9EBFBC()
{
  result = qword_281256040;
  if (!qword_281256040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281256040);
  }

  return result;
}

unint64_t sub_26B9EC010()
{
  result = qword_281256058;
  if (!qword_281256058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281256058);
  }

  return result;
}

unint64_t sub_26B9EC068()
{
  result = qword_281256050;
  if (!qword_281256050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281256050);
  }

  return result;
}

unint64_t sub_26B9EC120()
{
  result = qword_2804342D8;
  if (!qword_2804342D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804342D8);
  }

  return result;
}

uint64_t sub_26B9EC174(uint64_t a1)
{
  v2 = sub_26B9EC120();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_26B9EC1C4()
{
  result = qword_281256030;
  if (!qword_281256030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281256030);
  }

  return result;
}

unint64_t sub_26B9EC21C()
{
  result = qword_281256008;
  if (!qword_281256008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281256008);
  }

  return result;
}

unint64_t sub_26B9EC274()
{
  result = qword_281256020;
  if (!qword_281256020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281256020);
  }

  return result;
}

uint64_t sub_26B9EC2C8()
{
  if (qword_280434298 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26B9EC324(uint64_t a1)
{
  v2 = sub_26B9EC068();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_26B9EC374()
{
  result = qword_2804342E8;
  if (!qword_2804342E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804342E8);
  }

  return result;
}

unint64_t sub_26B9EC3E4()
{
  result = qword_281255FF0;
  if (!qword_281255FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255FF0);
  }

  return result;
}

unint64_t sub_26B9EC43C()
{
  result = qword_281255FE8;
  if (!qword_281255FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255FE8);
  }

  return result;
}

unint64_t sub_26B9EC494()
{
  result = qword_281256000;
  if (!qword_281256000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281256000);
  }

  return result;
}

uint64_t sub_26B9EC578()
{
  v0 = sub_26B9F19F0();
  __swift_allocate_value_buffer(v0, qword_2804346B0);
  __swift_project_value_buffer(v0, qword_2804346B0);
  return sub_26B9F19D0();
}

uint64_t sub_26B9EC5DC(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  sub_26B9F1B10();
  v2[20] = sub_26B9F1B00();
  v4 = sub_26B9F1AF0();
  v2[21] = v4;
  v2[22] = v3;

  return MEMORY[0x2822009F8](sub_26B9EC674, v4, v3);
}

uint64_t sub_26B9EC674()
{
  v1 = *(v0 + 152);
  sub_26B9F1890();
  v2 = *(v0 + 80);
  v3 = qword_26B9F29E0[v2];
  v4 = qword_26B9F2A08[v2];
  v5 = sub_26B9F004C(*(v0 + 152));
  v6 = [objc_allocWithZone(SBINOpenCameraAppIntent) initWithCaptureDevice:v3 captureMode:v4 systemContext:v5];
  *(v0 + 184) = v6;

  v7 = [objc_opt_self() sharedSystemCoordinator];
  *(v0 + 192) = v7;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 200;
  *(v0 + 24) = sub_26B9EC824;
  v8 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280434310, &qword_26B9F29A8);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_26B9F09D8;
  *(v0 + 104) = &block_descriptor;
  *(v0 + 112) = v8;
  [v7 performAppIntent:v6 withCompletion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_26B9EC824()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26B9EC92C, v2, v1);
}

uint64_t sub_26B9EC92C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);

  v3 = *(v0 + 200);

  if (qword_2804342A8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 184);
  v5 = sub_26B9F1A70();
  __swift_project_value_buffer(v5, qword_2804346C8);
  v6 = v4;
  v7 = sub_26B9F1A60();
  v8 = sub_26B9F1B20();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 184);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 1024;
    *(v10 + 14) = v3;
    v12 = v9;
    _os_log_impl(&dword_26B9E8000, v7, v8, "%@ intent performed successfully: %{BOOL}d", v10, 0x12u);
    sub_26B9ED834(v11);
    MEMORY[0x26D6892A0](v11, -1, -1);
    MEMORY[0x26D6892A0](v10, -1, -1);
  }

  v13 = *(v0 + 184);
  v14 = *(v0 + 144);

  sub_26B9F1880();
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_26B9ECB08@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_26B9ECBCC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B9E9F7C;

  return sub_26B9EC5DC(a1, v4);
}

uint64_t sub_26B9ECC6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B9ED3F4();
  *a1 = result;
  return result;
}

uint64_t sub_26B9ECC94()
{
  sub_26B9EC3E4();

  return sub_26B9F1840();
}

uint64_t getEnumTagSinglePayload for CameraMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CameraMode(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26B9ECE50(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_26B9ECE98(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_26B9F1B80();
  sub_26B9F1AD0();

  v4 = sub_26B9F1B90();

  return sub_26B9ECFBC(a1, v4);
}

unint64_t sub_26B9ECFBC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v16 = ~v3;
    v5 = 0xEA00000000006F74;
    v17 = a1;
    while (1)
    {
      v6 = *(*(v18 + 48) + v4);
      if (v6 <= 1)
      {
        if (*(*(v18 + 48) + v4))
        {
          v7 = 0x6F6850746E6F7266;
        }

        else
        {
          v7 = 0x746F685072616572;
        }

        if (*(*(v18 + 48) + v4))
        {
          v8 = 0xEA00000000006F74;
        }

        else
        {
          v8 = 0xE90000000000006FLL;
        }
      }

      else if (v6 == 2)
      {
        v7 = 0x6564695672616572;
        v8 = 0xE90000000000006FLL;
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0x74726F5072616572;
        }

        else
        {
          v7 = 0x726F50746E6F7266;
        }

        if (v6 == 3)
        {
          v8 = 0xEC00000074696172;
        }

        else
        {
          v8 = 0xED00007469617274;
        }
      }

      if (v17 == 3)
      {
        v9 = 0x74726F5072616572;
      }

      else
      {
        v9 = 0x726F50746E6F7266;
      }

      if (v17 == 3)
      {
        v10 = 0xEC00000074696172;
      }

      else
      {
        v10 = 0xED00007469617274;
      }

      if (v17 == 2)
      {
        v9 = 0x6564695672616572;
        v10 = 0xE90000000000006FLL;
      }

      if (v17)
      {
        v11 = 0x6F6850746E6F7266;
      }

      else
      {
        v11 = 0x746F685072616572;
      }

      if (!v17)
      {
        v5 = 0xE90000000000006FLL;
      }

      v12 = v17 <= 1 ? v11 : v9;
      v13 = v17 <= 1 ? v5 : v10;
      if (v7 == v12 && v8 == v13)
      {
        break;
      }

      v14 = sub_26B9F1B70();

      if ((v14 & 1) == 0)
      {
        v4 = (v4 + 1) & v16;
        v5 = 0xEA00000000006F74;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_26B9ED1D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434330, &qword_26B9F29C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434338, &unk_26B9F29D0);
    v8 = sub_26B9F1B50();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26B9ED900(v10, v6);
      v12 = *v6;
      result = sub_26B9ECE98(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_26B9F1930();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26B9ED3A8()
{
  v0 = sub_26B9F1B60();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26B9ED3F4()
{
  v21 = sub_26B9F1960();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280434430, &qword_26B9F2988);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434300, &qword_26B9F2990);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_26B9F19F0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434308, &qword_26B9F2998);
  sub_26B9F19D0();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 0;
  v18 = sub_26B9F1870();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, *MEMORY[0x277CBA308], v21);
  sub_26B9EC120();
  return sub_26B9F18A0();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_26B9ED74C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26B9ED834(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434450, &unk_26B9F29B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

uint64_t sub_26B9ED900(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434330, &qword_26B9F29C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_26B9ED978()
{
  v0 = sub_26B9F1A70();
  __swift_allocate_value_buffer(v0, qword_2804346C8);
  __swift_project_value_buffer(v0, qword_2804346C8);
  result = SBINLogIntentExecution();
  if (result)
  {
    return sub_26B9F1A80();
  }

  __break(1u);
  return result;
}

unint64_t sub_26B9ED9E0()
{
  result = qword_281255FA0;
  if (!qword_281255FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255FA0);
  }

  return result;
}

unint64_t sub_26B9EDA38()
{
  result = qword_281255F88;
  if (!qword_281255F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255F88);
  }

  return result;
}

unint64_t sub_26B9EDA90()
{
  result = qword_281255F50;
  if (!qword_281255F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255F50);
  }

  return result;
}

unint64_t sub_26B9EDAE8()
{
  result = qword_281255FC8;
  if (!qword_281255FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255FC8);
  }

  return result;
}

uint64_t sub_26B9EDB48()
{
  v0 = sub_26B9F19F0();
  __swift_allocate_value_buffer(v0, qword_2804346E0);
  __swift_project_value_buffer(v0, qword_2804346E0);
  return sub_26B9F19D0();
}

uint64_t sub_26B9EDBAC()
{
  v0 = sub_26B9F19A0();
  __swift_allocate_value_buffer(v0, qword_2804346F8);
  __swift_project_value_buffer(v0, qword_2804346F8);
  return sub_26B9F1990();
}

uint64_t sub_26B9EDC0C@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434320, &qword_26B9F2F50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v36 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434300, &qword_26B9F2990);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v32 - v7;
  v8 = sub_26B9F19E0();
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_26B9F1A40();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v32 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26B9F1AA0();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_26B9F19F0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v32 - v23;
  v26 = *v1;
  v25 = v1[1];
  v37 = v1;
  if (v26 == sub_26B9F1AC0() && v25 == v27)
  {
  }

  else
  {
    v28 = sub_26B9F1B70();

    if ((v28 & 1) == 0)
    {
      v29 = v37[2];
      v30 = v37[3];

      sub_26B9F19D0();
      goto LABEL_7;
    }
  }

  sub_26B9F1A90();
  sub_26B9F1A30();
  *v11 = sub_26B9EFEC8(0, &qword_281255F10, off_279D11F38);
  (*(v33 + 104))(v11, *MEMORY[0x277CC9120], v34);
  sub_26B9F1A00();
LABEL_7:
  (*(v18 + 16))(v22, v24, v17);
  (*(v18 + 56))(v35, 1, 1, v17);
  sub_26B9EE044(v36);
  sub_26B9F1920();
  return (*(v18 + 8))(v24, v17);
}

id sub_26B9EE044@<X0>(uint64_t a1@<X8>)
{
  v9 = *(v1 + 32);
  if (*(&v9 + 1))
  {
    v8 = *(v1 + 48);
    if (*(&v8 + 1))
    {
      sub_26B9EFEC8(0, &qword_281255F08, 0x277D75348);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_26B9EFF10(&v9, v7);
      sub_26B9EFF10(&v8, v7);
      if ([ObjCClassFromMetadata respondsToSelector_])
      {

        v4 = [ObjCClassFromMetadata performSelector_];
        result = ObjCClassFromMetadata;
        if (!v4)
        {
          __break(1u);
          return result;
        }

        swift_unknownObjectRetain();
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          return sub_26B9F1900();
        }

        swift_unknownObjectRelease();
      }

      sub_26B9EFF80(&v9, &unk_2804344D0, &qword_26B9F2F58);
    }
  }

  v6 = sub_26B9F1910();
  return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
}

unint64_t sub_26B9EE1E4()
{
  result = qword_281255F80;
  if (!qword_281255F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255F80);
  }

  return result;
}

unint64_t sub_26B9EE238()
{
  result = qword_281255F78;
  if (!qword_281255F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255F78);
  }

  return result;
}

unint64_t sub_26B9EE28C()
{
  result = qword_281255F90;
  if (!qword_281255F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255F90);
  }

  return result;
}

unint64_t sub_26B9EE2E4()
{
  result = qword_281255F68;
  if (!qword_281255F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255F68);
  }

  return result;
}

uint64_t sub_26B9EE344@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_26B9EE3CC(uint64_t a1)
{
  v2 = sub_26B9E9D38();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_26B9EE41C()
{
  result = qword_281255F60;
  if (!qword_281255F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255F60);
  }

  return result;
}

uint64_t sub_26B9EE474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26B9EFFE0;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_26B9EE538(uint64_t a1)
{
  v2 = sub_26B9EE2E4();

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_26B9EE588()
{
  result = qword_281255FB8;
  if (!qword_281255FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255FB8);
  }

  return result;
}

unint64_t sub_26B9EE5E0()
{
  result = qword_281255FB0;
  if (!qword_281255FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255FB0);
  }

  return result;
}

unint64_t sub_26B9EE638(unint64_t result, char **a2)
{
  v2 = result;
  if (result >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      v4 = 0;
      v5 = v2 & 0xC000000000000001;
      v6 = v2 & 0xFFFFFFFFFFFFFF8;
      v7 = &off_279D12000;
      v29 = v3;
      v30 = v2;
      v27 = v2 & 0xFFFFFFFFFFFFFF8;
      v28 = v2 & 0xC000000000000001;
      while (v5)
      {
        v9 = MEMORY[0x26D688D40](v4, v2);
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_16;
        }

LABEL_9:
        if (([v9 v7[89]] & 1) == 0)
        {
          v11 = [v9 activityIdentifier];
          v36 = sub_26B9F1AC0();
          v35 = v12;

          v13 = [v9 activityDisplayName];
          v14 = sub_26B9F1AC0();
          v33 = v15;
          v34 = v14;

          v16 = [v9 activitySymbolImageName];
          v32 = sub_26B9F1AC0();
          v18 = v17;

          v19 = [v9 activityColorName];
          v20 = sub_26B9F1AC0();
          v22 = v21;

          v23 = *a2;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a2 = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v23 = sub_26B9EF59C(0, *(v23 + 2) + 1, 1, v23);
            *a2 = v23;
          }

          v26 = *(v23 + 2);
          v25 = *(v23 + 3);
          if (v26 >= v25 >> 1)
          {
            v23 = sub_26B9EF59C((v25 > 1), v26 + 1, 1, v23);
            *a2 = v23;
          }

          *(v23 + 2) = v26 + 1;
          v8 = &v23[64 * v26];
          *(v8 + 4) = v36;
          *(v8 + 5) = v35;
          *(v8 + 6) = v34;
          *(v8 + 7) = v33;
          *(v8 + 8) = v32;
          *(v8 + 9) = v18;
          *(v8 + 10) = v20;
          *(v8 + 11) = v22;
          v3 = v29;
          v2 = v30;
          v6 = v27;
          v5 = v28;
          v7 = &off_279D12000;
        }

        result = swift_unknownObjectRelease();
        ++v4;
        if (v10 == v3)
        {
          return result;
        }
      }

      if (v4 >= *(v6 + 16))
      {
        goto LABEL_17;
      }

      v9 = *(v2 + 8 * v4 + 32);
      swift_unknownObjectRetain();
      v10 = v4 + 1;
      if (!__OFADD__(v4, 1))
      {
        goto LABEL_9;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      result = sub_26B9F1B40();
      v3 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_26B9EE89C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B9EFFF0;

  return sub_26B9EFA08(a1);
}

uint64_t sub_26B9EE944(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_26B9EE9E8;

  return sub_26B9EF880();
}

uint64_t sub_26B9EE9E8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_26B9EEAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CB9CA0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26B9EEBB8;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_26B9EEBB8(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_26B9EECBC()
{
  result = qword_281255FC0;
  if (!qword_281255FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255FC0);
  }

  return result;
}

unint64_t sub_26B9EED14()
{
  result = qword_281255F18;
  if (!qword_281255F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280434410, qword_26B9F2CD8);
    sub_26B9EE28C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255F18);
  }

  return result;
}

uint64_t sub_26B9EED98(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_26B9EDAE8();
  *v6 = v2;
  v6[1] = sub_26B9EFFE0;

  return MEMORY[0x28210B618](a1, a2, v7);
}

unint64_t sub_26B9EEE54()
{
  result = qword_281255F28;
  if (!qword_281255F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255F28);
  }

  return result;
}

unint64_t sub_26B9EEEAC()
{
  result = qword_281255F40;
  if (!qword_281255F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255F40);
  }

  return result;
}

uint64_t sub_26B9EEF6C(uint64_t a1, uint64_t a2)
{
  v2[26] = a1;
  v2[27] = a2;
  sub_26B9F1B10();
  v2[28] = sub_26B9F1B00();
  v4 = sub_26B9F1AF0();
  v2[29] = v4;
  v2[30] = v3;

  return MEMORY[0x2822009F8](sub_26B9EF004, v4, v3);
}

uint64_t sub_26B9EF004()
{
  v1 = v0[27];
  sub_26B9F1890();
  v2 = v0[10];
  v3 = v0[11];

  sub_26B9EFDEC((v0 + 10));
  v4 = sub_26B9F006C(v1);
  v5 = objc_allocWithZone(SBINFocusAppIntent);
  v6 = sub_26B9F1AB0();

  v7 = [v5 initWithModeIdentifier:v6 systemContext:v4];
  v0[31] = v7;

  v8 = [objc_opt_self() sharedSystemCoordinator];
  v0[32] = v8;
  v0[2] = v0;
  v0[7] = v0 + 33;
  v0[3] = sub_26B9EF1D4;
  v9 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280434310, &qword_26B9F29A8);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_26B9F09D8;
  v0[21] = &block_descriptor_0;
  v0[22] = v9;
  [v8 performAppIntent:v7 withCompletion:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26B9EF1D4()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26B9EF2DC, v2, v1);
}

uint64_t sub_26B9EF2DC()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 224);

  v3 = *(v0 + 264);

  if (qword_2804342A8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 248);
  v5 = sub_26B9F1A70();
  __swift_project_value_buffer(v5, qword_2804346C8);
  v6 = v4;
  v7 = sub_26B9F1A60();
  v8 = sub_26B9F1B20();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 248);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 1024;
    *(v10 + 14) = v3;
    v12 = v9;
    _os_log_impl(&dword_26B9E8000, v7, v8, "%@ intent performed successfully: %{BOOL}d", v10, 0x12u);
    sub_26B9EFF80(v11, &qword_280434450, &unk_26B9F29B0);
    MEMORY[0x26D6892A0](v11, -1, -1);
    MEMORY[0x26D6892A0](v10, -1, -1);
  }

  v13 = *(v0 + 248);
  v14 = *(v0 + 208);

  sub_26B9F1880();
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_26B9EF4C8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B9E9F7C;

  return sub_26B9EEF6C(a1, v4);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

char *sub_26B9EF59C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434458, &unk_26B9F2F30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26B9EF6A8(char *a1, int64_t a2, char a3)
{
  result = sub_26B9EF6C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26B9EF6C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434458, &unk_26B9F2F30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26B9EF7D4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_26B9EF89C()
{
  v10 = v0;
  v1 = [objc_opt_self() sharedActivityManager];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434458, &unk_26B9F2F30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26B9F2A30;
  *(v2 + 32) = sub_26B9F1AC0();
  *(v2 + 40) = v3;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0xE000000000000000;
  *(v2 + 64) = xmmword_26B9F2A40;
  *(v2 + 80) = 0xD000000000000010;
  *(v2 + 88) = 0x800000026B9F3460;
  v9 = v2;
  v4 = [v1 availableActivities];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804344C0, &qword_26B9F2F40);
  v5 = sub_26B9F1AE0();

  sub_26B9EE638(v5, &v9);

  v6 = v9;
  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_26B9EFA08(uint64_t a1)
{
  *(v1 + 160) = a1;
  v2 = swift_task_alloc();
  *(v1 + 168) = v2;
  *v2 = v1;
  v2[1] = sub_26B9EFAAC;

  return sub_26B9EF880();
}

uint64_t sub_26B9EFAAC(uint64_t a1)
{
  v3 = *(*v2 + 168);
  v4 = *v2;
  v4[22] = a1;
  v4[23] = v1;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26B9EFBE0, 0, 0);
  }
}

void sub_26B9EFBE0()
{
  v1 = *(v0 + 176);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 184);
    v5 = v1 + 32;
    v6 = MEMORY[0x277D84F90];
    do
    {
      v23 = v6;
      v7 = (v5 + (v3 << 6));
      v8 = v3;
      while (1)
      {
        if (v8 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v9 = *(v0 + 160);
        v10 = v7[3];
        v12 = *v7;
        v11 = v7[1];
        *(v0 + 48) = v7[2];
        *(v0 + 64) = v10;
        *(v0 + 16) = v12;
        *(v0 + 32) = v11;
        v3 = v8 + 1;
        v13 = *(v0 + 24);
        *(v0 + 144) = *(v0 + 16);
        *(v0 + 152) = v13;
        v14 = swift_task_alloc();
        *(v14 + 16) = v0 + 144;
        sub_26B9EFE90(v0 + 16, v0 + 80);

        LOBYTE(v9) = sub_26B9EF7D4(sub_26B9EFE38, v14, v9);

        if (v9)
        {
          break;
        }

        sub_26B9EFDEC(v0 + 16);
        v7 += 4;
        ++v8;
        if (v2 == v3)
        {
          v6 = v23;
          goto LABEL_15;
        }
      }

      v6 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26B9EF6A8(0, *(v23 + 16) + 1, 1);
        v6 = v23;
      }

      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_26B9EF6A8((v15 > 1), v16 + 1, 1);
        v6 = v23;
      }

      *(v6 + 16) = v16 + 1;
      v17 = (v6 + (v16 << 6));
      v18 = *(v0 + 16);
      v19 = *(v0 + 32);
      v20 = *(v0 + 64);
      v17[4] = *(v0 + 48);
      v17[5] = v20;
      v17[2] = v18;
      v17[3] = v19;
      v5 = v1 + 32;
    }

    while (v2 - 1 != v8);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

LABEL_15:
  v21 = *(v0 + 176);

  v22 = *(v0 + 8);

  v22(v6);
}

uint64_t sub_26B9EFE38(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_26B9F1B70() & 1;
  }
}

uint64_t sub_26B9EFEC8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_26B9EFF10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804344D0, &qword_26B9F2F58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9EFF80(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_26B9EFFF8()
{
  result = qword_281255FD8;
  if (!qword_281255FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255FD8);
  }

  return result;
}

id sub_26B9F008C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v38 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804344E0, &qword_26B9F30E8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v38 - v7;
  v9 = sub_26B9F18D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804344E8, &unk_26B9F30F0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v38 - v22;
  v24 = sub_26B9F18F0();
  v39 = *(v24 - 8);
  v40 = v24;
  v25 = *(v39 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  a2(v26);
  sub_26B9F1800();
  sub_26B9F18C0();
  sub_26B9F18E0();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_26B9EFF80(v8, &qword_2804344E0, &qword_26B9F30E8);
    v29 = 0;
  }

  else
  {
    v36 = *(v10 + 32);
    v36(v16, v8, v9);
    v36(v14, v16, v9);
    v37 = (*(v10 + 88))(v14, v9);
    v29 = 2;
    if (v37 != *MEMORY[0x277CBA140] && v37 != *MEMORY[0x277CBA138] && v37 != *MEMORY[0x277CBA148] && v37 != *MEMORY[0x277CBA168] && v37 != *MEMORY[0x277CBA158])
    {
      if (v37 == *MEMORY[0x277CBA128])
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
        if (v37 != *MEMORY[0x277CBA170] && v37 != *MEMORY[0x277CBA130])
        {
          (*(v10 + 8))(v14, v9);
          v29 = 2;
        }
      }
    }
  }

  sub_26B9F14BC(v23, v21);
  v30 = sub_26B9F1A20();
  v31 = *(v30 - 8);
  v32 = 0;
  if ((*(v31 + 48))(v21, 1, v30) != 1)
  {
    v32 = sub_26B9F1A10();
    (*(v31 + 8))(v21, v30);
  }

  v33 = objc_allocWithZone(SBINAppIntentSystemContext);
  v34 = [v33 initWithPreciseTimestamp:v32 actionSource:{v29, v38}];

  sub_26B9EFF80(v23, &qword_2804344E8, &unk_26B9F30F0);
  (*(v39 + 8))(v28, v40);
  return v34;
}

id sub_26B9F052C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804344E0, &qword_26B9F30E8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v31 - v2;
  v4 = sub_26B9F18D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804344E8, &unk_26B9F30F0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = sub_26B9F18F0();
  v32 = *(v19 - 8);
  v20 = *(v32 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B9EFFF8();
  sub_26B9F1800();
  sub_26B9F18C0();
  sub_26B9F18E0();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_26B9EFF80(v3, &qword_2804344E0, &qword_26B9F30E8);
    v23 = 0;
  }

  else
  {
    v31 = v19;
    v29 = *(v5 + 32);
    v29(v11, v3, v4);
    v29(v9, v11, v4);
    v30 = (*(v5 + 88))(v9, v4);
    v23 = 2;
    if (v30 == *MEMORY[0x277CBA140])
    {
      v19 = v31;
    }

    else
    {
      v19 = v31;
      if (v30 != *MEMORY[0x277CBA138] && v30 != *MEMORY[0x277CBA148] && v30 != *MEMORY[0x277CBA168] && v30 != *MEMORY[0x277CBA158])
      {
        if (v30 == *MEMORY[0x277CBA128])
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
          if (v30 != *MEMORY[0x277CBA170] && v30 != *MEMORY[0x277CBA130])
          {
            (*(v5 + 8))(v9, v4);
            v23 = 2;
          }
        }
      }
    }
  }

  sub_26B9F14BC(v18, v16);
  v24 = sub_26B9F1A20();
  v25 = *(v24 - 8);
  v26 = 0;
  if ((*(v25 + 48))(v16, 1, v24) != 1)
  {
    v26 = sub_26B9F1A10();
    (*(v25 + 8))(v16, v24);
  }

  v27 = [objc_allocWithZone(SBINAppIntentSystemContext) initWithPreciseTimestamp:v26 actionSource:v23];

  sub_26B9EFF80(v18, &qword_2804344E8, &unk_26B9F30F0);
  (*(v32 + 8))(v22, v19);
  return v27;
}

uint64_t sub_26B9F09D8(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_26B9F0A34()
{
  v0 = sub_26B9F19F0();
  __swift_allocate_value_buffer(v0, qword_280434710);
  __swift_project_value_buffer(v0, qword_280434710);
  return sub_26B9F19D0();
}

uint64_t sub_26B9F0A98(uint64_t a1)
{
  v1[18] = a1;
  sub_26B9F1B10();
  v1[19] = sub_26B9F1B00();
  v3 = sub_26B9F1AF0();
  v1[20] = v3;
  v1[21] = v2;

  return MEMORY[0x2822009F8](sub_26B9F0B30, v3, v2);
}

uint64_t sub_26B9F0B30()
{
  sub_26B9EFFF8();
  sub_26B9F1840();
  v1 = sub_26B9F1AB0();
  v0[22] = v1;

  v2 = v1;
  v3 = sub_26B9F052C();
  v4 = [objc_allocWithZone(SBINAppIntent) initWithIdentifier:v2 systemContext:v3];
  v0[23] = v4;

  v5 = [objc_opt_self() sharedSystemCoordinator];
  v0[24] = v5;
  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_26B9F0CEC;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280434310, &qword_26B9F29A8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26B9F09D8;
  v0[13] = &block_descriptor_1;
  v0[14] = v6;
  [v5 performAppIntent:v4 withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26B9F0CEC()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26B9F0DF4, v2, v1);
}

uint64_t sub_26B9F0DF4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 152);

  v3 = *(v0 + 200);

  if (qword_2804342A8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 184);
  v5 = sub_26B9F1A70();
  __swift_project_value_buffer(v5, qword_2804346C8);
  v6 = v4;
  v7 = sub_26B9F1A60();
  v8 = sub_26B9F1B20();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 184);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 1024;
    *(v10 + 14) = v3;
    v12 = v9;
    _os_log_impl(&dword_26B9E8000, v7, v8, "%@ intent performed successfully: %{BOOL}d", v10, 0x12u);
    sub_26B9EFF80(v11, &qword_280434450, &unk_26B9F29B0);
    MEMORY[0x26D6892A0](v11, -1, -1);
    MEMORY[0x26D6892A0](v10, -1, -1);
  }

  v14 = *(v0 + 176);
  v13 = *(v0 + 184);
  v15 = *(v0 + 144);

  sub_26B9F1880();
  v16 = *(v0 + 8);

  return v16();
}

unint64_t sub_26B9F0FBC()
{
  result = qword_281255FD0;
  if (!qword_281255FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255FD0);
  }

  return result;
}

unint64_t sub_26B9F1014()
{
  result = qword_281255FE0;
  if (!qword_281255FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255FE0);
  }

  return result;
}

uint64_t sub_26B9F10D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_2804342C0 != -1)
  {
    swift_once();
  }

  v2 = sub_26B9F19F0();
  v3 = __swift_project_value_buffer(v2, qword_280434710);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_26B9F117C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B9E9F7C;

  return sub_26B9F0A98(a1);
}

uint64_t sub_26B9F1214()
{
  sub_26B9EFFF8();

  return sub_26B9F1840();
}

unint64_t sub_26B9F1260()
{
  result = qword_280434420;
  if (!qword_280434420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804342F0, &qword_26B9F2980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280434420);
  }

  return result;
}

uint64_t sub_26B9F12C4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_26B9F1338(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

_BYTE **sub_26B9F13AC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_26B9F13BC(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_26B9F1430@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26B9F14BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804344E8, &unk_26B9F30F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}