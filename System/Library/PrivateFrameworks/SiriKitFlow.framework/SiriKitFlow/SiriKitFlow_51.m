void sub_1DCFE7CC0()
{
  v1 = *(v0 + 16);
  sub_1DCB17CA0(v0 + 24, v22);
  sub_1DCB4F1DC(v0 + 184, v21, &qword_1ECCABDD8, &qword_1DD1092C8);
  sub_1DCB17CA0(v0 + 64, v20);
  sub_1DCB17CA0(v0 + 104, v19);
  v18[3] = &type metadata for AnalyticsSchemaLogger;
  v18[4] = &off_1F5875420;
  type metadata accessor for SiriLocationAccessCheckFlow();
  v2 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v18, &type metadata for AnalyticsSchemaLogger);
  v17[3] = &type metadata for AnalyticsSchemaLogger;
  v17[4] = &off_1F5875420;
  LOBYTE(v10) = v1;
  LOBYTE(v13) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABDF0, &unk_1DD1094D0);
  v3 = swift_allocObject();
  *(v3 + 60) = 0;
  sub_1DCFE359C(&v10, v3 + 16);
  sub_1DCFE35D4(&v10);
  *(v2 + 216) = v3;
  sub_1DCB17CA0(v22, v2 + 16);
  sub_1DCB4F1DC(v21, &v14, &qword_1ECCABDD8, &qword_1DD1092C8);
  if (v15)
  {
    sub_1DCAFF9E8(&v14, &v10);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E698D188]) init];
    v11 = &unk_1F5863648;
    v12 = &off_1F5863810;
    v5 = swift_allocObject();
    *&v10 = v5;
    v5[5] = sub_1DCB10E5C(0, &qword_1EDE461C8, 0x1E698D188);
    v5[6] = &off_1F5863490;
    v5[2] = v4;
    if (v15)
    {
      sub_1DCB16D50(&v14, &qword_1ECCABDD8, &qword_1DD1092C8);
    }
  }

  sub_1DCAFF9E8(&v10, v2 + 56);
  sub_1DCB17CA0(v20, v2 + 96);
  sub_1DCB17CA0(v19, v2 + 136);
  *(v2 + 176) = sub_1DCFD8488;
  *(v2 + 184) = 0;
  sub_1DCB17CA0(v17, &v10);
  __swift_mutable_project_boxed_opaque_existential_1(&v10, v11);
  v15 = &type metadata for AnalyticsSchemaLogger;
  v16 = &off_1F5875420;
  type metadata accessor for PermissionPromptSchemaLogger();
  v6 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v14, &type metadata for AnalyticsSchemaLogger);
  *(v6 + 40) = &type metadata for AnalyticsSchemaLogger;
  *(v6 + 48) = &off_1F5875420;
  *(v6 + 56) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm(&v14);
  __swift_destroy_boxed_opaque_existential_1Tm(&v10);
  *(v2 + 200) = v6;
  *&v10 = 0;
  v12 = &type metadata for FeatureFlagDefinitions.Core;
  v13 = &off_1F585CB38;
  BYTE8(v10) = 0;
  v7 = v23;
  v8 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  *(v2 + 192) = ((*(v8 + 248))(&v10, v7, v8) & 1) == 0;
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  sub_1DCB16D50(v21, &qword_1ECCABDD8, &qword_1DD1092C8);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  sub_1DCC4B20C(&v10);
  *(v2 + 208) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1DCFEBB30;
  *(v9 + 24) = v0;
  sub_1DD0DCF8C();
}

void sub_1DCFE804C(unint64_t a1)
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v3 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v3, qword_1EDE57E00);
  sub_1DCDCB08C(a1);
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();
  sub_1DCBB1234(a1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_151();
    v7 = OUTLINED_FUNCTION_83();
    v14[0] = v7;
    *v6 = 136315138;
    v16 = a1;
    sub_1DCDCB08C(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1EB0, &qword_1DD0E9360);
    v8 = sub_1DD0DE02C();
    v10 = sub_1DCB10E9C(v8, v9, v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "#SiriLocationAccessGuardFlow onAuthorizationResult - incoming authorizationResult=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_37();
  }

  v11 = *(v1 + 240);
  if (v11 == 2)
  {
    if (!*(v1 + 232) && *(v1 + 224) == 1)
    {
      v14[0] = a1;
      v14[1] = 0;
      v15 = 0;
      sub_1DCDCB08C(a1);
      sub_1DCFE7088(v14);
    }
  }

  else if (v11 == 1)
  {
    v12 = *(v1 + 224);
    v13 = *(v1 + 232);
    sub_1DCDCB08C(a1);
    sub_1DCFEB414(v12, v13, 1);
    sub_1DD0DCF8C();
  }

  sub_1DCDCB08C(a1);
  sub_1DD0DCF8C();
}

BOOL sub_1DCFE8480(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[1];
  v4 = *(a1 + 1);
  v5 = a2[1];
  v6 = *(a2 + 1);
  if (v3 == 3)
  {
    if (v5 != 3)
    {
      return 0;
    }
  }

  else if (v5 == 3 || v3 != v5)
  {
    return 0;
  }

  if (v4)
  {
    if (v6)
    {
      v8 = v6;
      v9 = v4;
      v10 = sub_1DCD0632C();

      return v10 & 1;
    }

    return 0;
  }

  return !v6;
}

unint64_t sub_1DCFE8534()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[1];
  sub_1DD0DEC1C();

  if (v1)
  {
    v4 = 1818845542;
  }

  else
  {
    v4 = 1936941424;
  }

  MEMORY[0x1E12A6780](v4, 0xE400000000000000);

  MEMORY[0x1E12A6780](0xD000000000000010, 0x80000001DD129480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE28, &unk_1DD109720);
  v5 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v5);

  MEMORY[0x1E12A6780](0x3D726F727265203BLL, 0xE800000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E48, &qword_1DD0E24D0);
  v6 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v6);

  return 0xD000000000000010;
}

double sub_1DCFE8690@<D0>(uint64_t *a1@<X8>)
{
  v2 = sub_1DD0DB04C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v38[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
  v9 = [objc_allocWithZone(MEMORY[0x1E69C7AF8]) init];
  sub_1DD0DB03C();
  v10 = sub_1DD0DAFFC();
  v12 = v11;
  v13 = *(v3 + 8);
  v13(v7, v2);
  sub_1DCB4D8E8(v10, v12, v9);
  v14 = [objc_allocWithZone(MEMORY[0x1E69C7B08]) init];
  sub_1DCE56BF0(v9);
  if (v15)
  {
    v8 = v15;
    sub_1DD0DDF8C();
    OUTLINED_FUNCTION_82_10();
  }

  else
  {
    v12 = 0;
  }

  [v14 setRefId_];

  v16 = v14;
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  OUTLINED_FUNCTION_73_15();
  v13(v7, v2);
  sub_1DCB4D8E8(v12, v8, v16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v17 = OUTLINED_FUNCTION_52_2();
  v37 = xmmword_1DD0E15D0;
  *(v17 + 16) = xmmword_1DD0E15D0;
  *(v17 + 32) = v16;
  v18 = v16;
  sub_1DCB6BBC0(v17, v9);
  v19 = OUTLINED_FUNCTION_52_2();
  *(v19 + 16) = v37;
  *(v19 + 32) = v9;
  v20 = type metadata accessor for AceOutput();
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  a1[3] = v20;
  a1[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
  v22 = v20[7];
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = v20[9];
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  v32 = v20[8];
  v33 = *MEMORY[0x1E69D0678];
  v34 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3(v34);
  (*(v35 + 104))(boxed_opaque_existential_1Tm + v32, v33);
  boxed_opaque_existential_1Tm[15] = 0;
  *(boxed_opaque_existential_1Tm + 13) = 0u;
  *(boxed_opaque_existential_1Tm + 11) = 0u;
  sub_1DCB6C5E8(v38, (boxed_opaque_existential_1Tm + 11));

  *(boxed_opaque_existential_1Tm + v20[10]) = 0;
  *boxed_opaque_existential_1Tm = v19;
  result = 0.0;
  *(boxed_opaque_existential_1Tm + 1) = 0u;
  *(boxed_opaque_existential_1Tm + 3) = 0u;
  *(boxed_opaque_existential_1Tm + 5) = 0u;
  *(boxed_opaque_existential_1Tm + 7) = 0u;
  boxed_opaque_existential_1Tm[9] = 0;
  *(boxed_opaque_existential_1Tm + 80) = 3;
  return result;
}

uint64_t sub_1DCFE89A0()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 424) = v0;
  v4 = sub_1DD0DED7C();
  *(v1 + 432) = v4;
  v5 = *(v4 - 8);
  OUTLINED_FUNCTION_24_0();
  *(v1 + 440) = v6;
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_38();
  *(v1 + 576) = *v3;
  *(v1 + 577) = *(v3 + 1);
  v10 = *(v3 + 8);
  *(v1 + 448) = v9;
  *(v1 + 456) = v10;
  v11 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCFE8A60()
{
  OUTLINED_FUNCTION_51_4();
  v90 = v0;
  *(v0 + 16) = 0u;
  v1 = (v0 + 16);
  v2 = *(v0 + 576);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  if ((v2 & 1) == 0)
  {
    v17 = &dword_1DD0E0F78;
    sub_1DCB16D50(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
    *v1 = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    sub_1DCB4F1DC(v0 + 16, v0 + 136, &qword_1ECCA1810, &dword_1DD0E0F78);
    v18 = *(v0 + 160);
    sub_1DCB16D50(v0 + 136, &qword_1ECCA1810, &dword_1DD0E0F78);
    if (!v18)
    {
      v19 = *(v0 + 424);
      v17 = v19[6];
      v20 = v19[7];
      __swift_project_boxed_opaque_existential_1(v19 + 3, v17);
      if ((*(v20 + 32))(v17, v20))
      {
        sub_1DCFE8690(v88);
        sub_1DCB16D50(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
        v21 = v88[1];
        *v1 = v88[0];
        *(v0 + 32) = v21;
        *(v0 + 48) = v89;
      }
    }

    sub_1DCB4F1DC(v0 + 16, v0 + 216, &qword_1ECCA1810, &dword_1DD0E0F78);
    if (*(v0 + 240))
    {
      sub_1DCAFF9E8((v0 + 216), v0 + 176);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v22 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v22, qword_1EDE57E00);
      sub_1DCB17CA0(v0 + 176, v0 + 256);
      v23 = sub_1DD0DD8EC();
      v24 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v23, v24))
      {
        OUTLINED_FUNCTION_151();
        v25 = OUTLINED_FUNCTION_10_0();
        *&v88[0] = v25;
        *v17 = 136315138;
        sub_1DCB17CA0(v0 + 256, v0 + 296);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
        sub_1DD0DE02C();
        OUTLINED_FUNCTION_61_4();
        v26 = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
        v28 = OUTLINED_FUNCTION_87_3(v26, v27, v88);

        *(v17 + 4) = v28;
        _os_log_impl(&dword_1DCAFC000, v23, v24, "#SiriLocationAccessGuardFlow issueResponse - output=%s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_62();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
      }

      v64 = *(v0 + 424);
      v65 = v64[12];
      __swift_project_boxed_opaque_existential_1(v64 + 8, v64[11]);
      v66 = *(v65 + 8);
      OUTLINED_FUNCTION_24_0();
      v86 = v67 + *v67;
      v69 = *(v68 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 560) = v70;
      *v70 = v71;
      OUTLINED_FUNCTION_1_133(v70);
      OUTLINED_FUNCTION_121_0();

      __asm { BRAA            X3, X16 }
    }

    sub_1DCB16D50(v0 + 216, &qword_1ECCA1810, &dword_1DD0E0F78);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v53 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v53, qword_1EDE57E00);
    v54 = sub_1DD0DD8EC();
    v55 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_5(v55))
    {
      v56 = OUTLINED_FUNCTION_50_0();
      *v56 = 0;
      OUTLINED_FUNCTION_54_6();
      _os_log_impl(v57, v58, v59, v60, v56, 2u);
      OUTLINED_FUNCTION_92_0();
    }

    sub_1DCB16D50(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
    v61 = *(v0 + 448);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_121_0();

    __asm { BRAA            X1, X16 }
  }

  if (*(v0 + 577) != 2)
  {
    v29 = *(v0 + 456);
    if (v29)
    {
      v30 = v29;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v31 = sub_1DD0DD8FC();
      *(v0 + 520) = OUTLINED_FUNCTION_92(v31, qword_1EDE57E00);
      v32 = v29;
      v33 = sub_1DD0DD8EC();
      v34 = sub_1DD0DE6DC();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = OUTLINED_FUNCTION_151();
        v36 = OUTLINED_FUNCTION_83();
        *&v88[0] = v36;
        *v35 = 136315138;
        *(v0 + 416) = v29;
        v37 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
        v38 = sub_1DD0DE02C();
        v40 = sub_1DCB10E9C(v38, v39, v88);

        *(v35 + 4) = v40;
        OUTLINED_FUNCTION_53_6(&dword_1DCAFC000, v41, v42, "#SiriLocationAccessGuardFlow issueResponse - for error=%s");
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_37();
      }

      v43 = *(v0 + 424);
      v44 = v43[22];
      __swift_project_boxed_opaque_existential_1(v43 + 18, v43[21]);
      v45 = *(v44 + 16);
      OUTLINED_FUNCTION_24_0();
      v85 = v46 + *v46;
      v48 = *(v47 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 528) = v49;
      *v49 = v50;
      v49[1] = sub_1DCFE9AD4;
      OUTLINED_FUNCTION_121_0();

      __asm { BRAA            X4, X16 }
    }

    v74 = *(v0 + 424);
    v75 = *(v74 + 176);
    __swift_project_boxed_opaque_existential_1((v74 + 144), *(v74 + 168));
    v76 = *(v74 + 16);
    v77 = *(v75 + 8);
    OUTLINED_FUNCTION_24_0();
    v87 = v78 + *v78;
    v80 = *(v79 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 544) = v81;
    *v81 = v82;
    v81[1] = sub_1DCFE9FD8;
    OUTLINED_FUNCTION_121_0();

    __asm { BRAA            X5, X16 }
  }

  sub_1DCB16D50(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
  *v1 = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v3 = sub_1DD0DD8FC();
  *(v0 + 464) = __swift_project_value_buffer(v3, qword_1EDE57E00);
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v5))
  {
    v6 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v6);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_62();
  }

  v12 = *(v0 + 424);

  v13 = v12[17];
  __swift_project_boxed_opaque_existential_1(v12 + 13, v12[16]);
  *(v0 + 472) = [objc_allocWithZone(MEMORY[0x1E69C7B18]) init];
  v14 = swift_task_alloc();
  *(v0 + 480) = v14;
  sub_1DCB10E5C(0, &qword_1EDE46210, 0x1E69C7738);
  *v14 = v0;
  v14[1] = sub_1DCFE930C;
  OUTLINED_FUNCTION_121_0();

  return AceServiceInvokerAsync.submit<A>(_:)();
}

uint64_t sub_1DCFE930C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 480);
  v6 = *(v4 + 472);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v10 + 488) = v9;
  *(v10 + 496) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCFE9420()
{
  v24 = v0;
  v1 = *(v0 + 464);
  v2 = *(v0 + 488);
  v3 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();

  if (OUTLINED_FUNCTION_245())
  {
    v4 = *(v0 + 488);
    OUTLINED_FUNCTION_151();
    v23 = OUTLINED_FUNCTION_10_0();
    *v2 = 136315138;
    v5 = v4;
    v6 = [v5 description];
    v7 = sub_1DD0DDFBC();
    v9 = v8;

    v10 = sub_1DCB10E9C(v7, v9, &v23);

    *(v2 + 1) = v10;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_62();
  }

  v16 = *(v0 + 448);
  sub_1DD0DF15C();
  v17 = swift_task_alloc();
  *(v0 + 504) = v17;
  *v17 = v0;
  v17[1] = sub_1DCFE95D0;
  v18 = *(v0 + 448);
  OUTLINED_FUNCTION_24();

  return sub_1DCFEAA30(v19, v20, v21, 0, 1);
}

uint64_t sub_1DCFE95D0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = v4[63];
  v6 = v4[56];
  v7 = v4[55];
  v8 = v4[54];
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  *(v11 + 512) = v0;

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

void sub_1DCFE9724()
{
  OUTLINED_FUNCTION_51_4();
  v50 = v1;

  OUTLINED_FUNCTION_44_32();
  OUTLINED_FUNCTION_42_31();
  if (!v0)
  {
    v3 = OUTLINED_FUNCTION_16_60();
    if (v4(v3))
    {
      sub_1DCFE8690(&v48);
      v5 = sub_1DCB16D50(v1 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
      OUTLINED_FUNCTION_21_51(v5, v6, v7, v8, v9, v10, v11, v12, v44, v45, v46, v13, v48, v49);
    }
  }

  sub_1DCB4F1DC(v1 + 16, v1 + 216, &qword_1ECCA1810, &dword_1DD0E0F78);
  if (*(v1 + 240))
  {
    sub_1DCAFF9E8((v1 + 216), v1 + 176);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v14 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v14, qword_1EDE57E00);
    sub_1DCB17CA0(v1 + 176, v1 + 256);
    v15 = sub_1DD0DD8EC();
    v16 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_5(v16))
    {
      v17 = OUTLINED_FUNCTION_151();
      *&v48 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_62_15(4.8149e-34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
      sub_1DD0DE02C();
      OUTLINED_FUNCTION_73_15();
      v18 = __swift_destroy_boxed_opaque_existential_1Tm((v1 + 256));
      OUTLINED_FUNCTION_64_20(v18, v19, v20);
      OUTLINED_FUNCTION_82_10();
      *(v17 + 4) = v2;
      OUTLINED_FUNCTION_54_6();
      _os_log_impl(v21, v22, v23, v24, v17, 0xCu);
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_80();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 256));
    }

    OUTLINED_FUNCTION_12_69();
    v47 = v37 + *v37;
    v39 = *(v38 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v1 + 560) = v40;
    *v40 = v41;
    OUTLINED_FUNCTION_1_133(v40);
    OUTLINED_FUNCTION_20_36();
    OUTLINED_FUNCTION_56_24();

    __asm { BRAA            X3, X16 }
  }

  sub_1DCB16D50(v1 + 216, &qword_1ECCA1810, &dword_1DD0E0F78);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v25 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v25, qword_1EDE57E00);
  v26 = sub_1DD0DD8EC();
  v27 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v27))
  {
    v28 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v28);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v29, v30, v31, v32, v33, 2u);
    OUTLINED_FUNCTION_62();
  }

  sub_1DCB16D50(v1 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
  v34 = *(v1 + 448);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_56_24();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DCFE9A58()
{
  OUTLINED_FUNCTION_42();

  sub_1DCB16D50(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
  v1 = *(v0 + 512);
  v2 = *(v0 + 448);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCFE9AD4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 528);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 536) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCFE9BCC()
{
  OUTLINED_FUNCTION_51_4();
  v61 = v1;
  sub_1DCB16D50(v1 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
  v3 = *(v1 + 352);
  *(v1 + 16) = *(v1 + 336);
  *(v1 + 32) = v3;
  *(v1 + 48) = *(v1 + 368);
  sub_1DCB4F1DC(v1 + 16, v1 + 376, &qword_1ECCA1810, &dword_1DD0E0F78);
  if (*(v1 + 400))
  {

    sub_1DCB16D50(v1 + 376, &qword_1ECCA1810, &dword_1DD0E0F78);
  }

  else
  {
    v4 = *(v1 + 520);
    sub_1DCB16D50(v1 + 376, &qword_1ECCA1810, &dword_1DD0E0F78);
    v5 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6DC();
    v7 = OUTLINED_FUNCTION_5(v6);
    v8 = *(v1 + 456);
    if (v7)
    {
      v9 = OUTLINED_FUNCTION_50_0();
      *v9 = 0;
      OUTLINED_FUNCTION_54_6();
      _os_log_impl(v10, v11, v12, v13, v9, 2u);
      OUTLINED_FUNCTION_92_0();
    }
  }

  OUTLINED_FUNCTION_44_32();
  OUTLINED_FUNCTION_42_31();
  if (!v0)
  {
    v14 = OUTLINED_FUNCTION_16_60();
    if (v15(v14))
    {
      sub_1DCFE8690(&v59);
      v16 = sub_1DCB16D50(v1 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
      OUTLINED_FUNCTION_21_51(v16, v17, v18, v19, v20, v21, v22, v23, v55, v56, v57, v24, v59, v60);
    }
  }

  sub_1DCB4F1DC(v1 + 16, v1 + 216, &qword_1ECCA1810, &dword_1DD0E0F78);
  if (*(v1 + 240))
  {
    sub_1DCAFF9E8((v1 + 216), v1 + 176);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v25 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v25, qword_1EDE57E00);
    sub_1DCB17CA0(v1 + 176, v1 + 256);
    v26 = sub_1DD0DD8EC();
    v27 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_5(v27))
    {
      v28 = OUTLINED_FUNCTION_151();
      *&v59 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_62_15(4.8149e-34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
      sub_1DD0DE02C();
      OUTLINED_FUNCTION_73_15();
      v29 = __swift_destroy_boxed_opaque_existential_1Tm((v1 + 256));
      OUTLINED_FUNCTION_64_20(v29, v30, v31);
      OUTLINED_FUNCTION_82_10();
      *(v28 + 4) = v2;
      OUTLINED_FUNCTION_54_6();
      _os_log_impl(v32, v33, v34, v35, v28, 0xCu);
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_80();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 256));
    }

    OUTLINED_FUNCTION_12_69();
    v58 = v48 + *v48;
    v50 = *(v49 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v1 + 560) = v51;
    *v51 = v52;
    OUTLINED_FUNCTION_1_133(v51);
    OUTLINED_FUNCTION_20_36();
    OUTLINED_FUNCTION_56_24();

    __asm { BRAA            X3, X16 }
  }

  sub_1DCB16D50(v1 + 216, &qword_1ECCA1810, &dword_1DD0E0F78);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v36 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v36, qword_1EDE57E00);
  v37 = sub_1DD0DD8EC();
  v38 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v38))
  {
    v39 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v39);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v40, v41, v42, v43, v44, 2u);
    OUTLINED_FUNCTION_62();
  }

  sub_1DCB16D50(v1 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
  v45 = *(v1 + 448);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_56_24();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DCFE9FD8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 544);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 552) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCFEA0D0()
{
  OUTLINED_FUNCTION_51_4();
  v60 = v0;
  sub_1DCB16D50(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
  v2 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v2;
  *(v0 + 48) = *(v0 + 88);
  sub_1DCB4F1DC(v0 + 16, v0 + 96, &qword_1ECCA1810, &dword_1DD0E0F78);
  v3 = *(v0 + 120);
  sub_1DCB16D50(v0 + 96, &qword_1ECCA1810, &dword_1DD0E0F78);
  if (!v3)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v4 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
    v5 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v6))
    {
      v7 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v7);
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      OUTLINED_FUNCTION_62();
    }
  }

  OUTLINED_FUNCTION_44_32();
  OUTLINED_FUNCTION_42_31();
  if (!v3)
  {
    v13 = OUTLINED_FUNCTION_16_60();
    if (v14(v13))
    {
      sub_1DCFE8690(&v58);
      v15 = sub_1DCB16D50(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
      OUTLINED_FUNCTION_21_51(v15, v16, v17, v18, v19, v20, v21, v22, v54, v55, v56, v23, v58, v59);
    }
  }

  sub_1DCB4F1DC(v0 + 16, v0 + 216, &qword_1ECCA1810, &dword_1DD0E0F78);
  if (*(v0 + 240))
  {
    sub_1DCAFF9E8((v0 + 216), v0 + 176);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v24 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v24, qword_1EDE57E00);
    sub_1DCB17CA0(v0 + 176, v0 + 256);
    v25 = sub_1DD0DD8EC();
    v26 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_5(v26))
    {
      v27 = OUTLINED_FUNCTION_151();
      *&v58 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_62_15(4.8149e-34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
      sub_1DD0DE02C();
      OUTLINED_FUNCTION_73_15();
      v28 = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
      OUTLINED_FUNCTION_64_20(v28, v29, v30);
      OUTLINED_FUNCTION_82_10();
      *(v27 + 4) = v1;
      OUTLINED_FUNCTION_54_6();
      _os_log_impl(v31, v32, v33, v34, v27, 0xCu);
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_80();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
    }

    OUTLINED_FUNCTION_12_69();
    v57 = v47 + *v47;
    v49 = *(v48 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 560) = v50;
    *v50 = v51;
    OUTLINED_FUNCTION_1_133(v50);
    OUTLINED_FUNCTION_20_36();
    OUTLINED_FUNCTION_56_24();

    __asm { BRAA            X3, X16 }
  }

  sub_1DCB16D50(v0 + 216, &qword_1ECCA1810, &dword_1DD0E0F78);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v35 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v35, qword_1EDE57E00);
  v36 = sub_1DD0DD8EC();
  v37 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v37))
  {
    v38 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v38);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v39, v40, v41, v42, v43, 2u);
    OUTLINED_FUNCTION_62();
  }

  sub_1DCB16D50(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
  v44 = *(v0 + 448);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_56_24();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DCFEA4C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 560);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 568) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCFEA5C0()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
  sub_1DCB16D50(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
  v1 = *(v0 + 448);

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1DCFEA638()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB16D50(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
  v1 = *(v0 + 496);
  v2 = *(v0 + 448);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCFEA6AC()
{
  OUTLINED_FUNCTION_42();

  sub_1DCB16D50(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
  v1 = *(v0 + 536);
  v2 = *(v0 + 448);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCFEA728()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB16D50(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
  v1 = *(v0 + 552);
  v2 = *(v0 + 448);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCFEA79C()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  sub_1DCB16D50((v0 + 2), &qword_1ECCA1810, &dword_1DD0E0F78);
  v1 = v0[71];
  v2 = v0[56];

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t SiriLocationAccessGuardFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  sub_1DCB16D50(v0 + 184, &qword_1ECCABDD8, &qword_1DD1092C8);
  sub_1DCFEB434(*(v0 + 224), *(v0 + 232), *(v0 + 240));
  return v0;
}

uint64_t SiriLocationAccessGuardFlow.__deallocating_deinit()
{
  SiriLocationAccessGuardFlow.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCFEA8A8(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCFEA944()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *v0;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_1DCB4AD3C;

  return sub_1DCFE71CC(v3);
}

uint64_t sub_1DCFEA9D8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_1DCFE70CC();
  *a1 = result;
  return result;
}

uint64_t sub_1DCFEAA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1DD0DED6C();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1DCFEAB30, 0, 0);
}

uint64_t sub_1DCFEAB30()
{
  OUTLINED_FUNCTION_41();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1DD0DED7C();
  v7 = sub_1DCFEBB60(&qword_1ECCABDF8, 255, MEMORY[0x1E69E8820]);
  sub_1DD0DF13C();
  sub_1DCFEBB60(&qword_1ECCABE00, 255, MEMORY[0x1E69E87E8]);
  sub_1DD0DED8C();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1DCFEACC4;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

uint64_t sub_1DCFEACC4()
{
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[13];
  v8 = v5[12];
  v9 = v5[11];
  v10 = v5[8];
  v11 = *v1;
  OUTLINED_FUNCTION_27();
  *v12 = v11;
  v3[15] = v0;

  v8(v9, v10);
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }

  else
  {
    v17 = v3[10];
    v16 = v3[11];

    OUTLINED_FUNCTION_43();

    return v18();
  }
}

uint64_t sub_1DCFEAE60()
{
  OUTLINED_FUNCTION_42();
  v2 = v0[10];
  v1 = v0[11];

  OUTLINED_FUNCTION_29();
  v4 = v0[15];

  return v3();
}

uint64_t sub_1DCFEAEC4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, char a8, uint64_t a9, uint64_t a10)
{
  v18 = a9;
  v45[4] = &protocol witness table for RefreshableDeviceState;
  v45[3] = type metadata accessor for RefreshableDeviceState();
  v45[0] = a2;
  v44[3] = &type metadata for OutputPublishers;
  v44[4] = &off_1F5866A08;
  v44[0] = a3;
  v43[3] = type metadata accessor for RefreshableAceServiceInvoker();
  v43[4] = &protocol witness table for RefreshableAceServiceInvoker;
  v43[0] = a4;
  *(a10 + 16) = a1;
  sub_1DCB17CA0(v45, a10 + 24);
  sub_1DCB17CA0(v44, a10 + 64);
  sub_1DCB17CA0(v43, a10 + 104);
  sub_1DCB4F1DC(a9, a10 + 184, &qword_1ECCABDD8, &qword_1DD1092C8);
  sub_1DCB4F1DC(a5, &v39, &qword_1ECCABE10, &qword_1DD1094E8);
  if (v40)
  {
    sub_1DCAFF9E8(&v39, &v41);
    sub_1DCAFF9E8(&v41, a10 + 144);
  }

  else
  {
    sub_1DCB16D50(&v39, &qword_1ECCABE10, &qword_1DD1094E8);
    *(a10 + 168) = &type metadata for DefaultStrategy;
    *(a10 + 176) = &off_1F58757E8;
  }

  if (a8 == -1)
  {
    if (RefreshableDeviceState.isHomePod.getter())
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v28 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v28, qword_1EDE57E00);
      v29 = sub_1DD0DD8EC();
      v30 = sub_1DD0DE6EC();
      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_23;
      }

      v31 = a9;
      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "#SiriLocationAccessGuardFlow init - no support for NLv3+HomePod";
    }

    else
    {
      if (sub_1DCFE6E1C())
      {
        sub_1DCB16D50(a9, &qword_1ECCABDD8, &qword_1DD1092C8);
        sub_1DCB16D50(a5, &qword_1ECCABE10, &qword_1DD1094E8);
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        *(a10 + 224) = 0;
        *(a10 + 232) = 0;
        v34 = 2;
LABEL_24:
        *(a10 + 240) = v34;
        goto LABEL_25;
      }

      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v35 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v35, qword_1EDE57E00);
      v29 = sub_1DD0DD8EC();
      v30 = sub_1DD0DE6EC();
      if (!os_log_type_enabled(v29, v30))
      {
LABEL_23:

        sub_1DCB16D50(v18, &qword_1ECCABDD8, &qword_1DD1092C8);
        sub_1DCB16D50(a5, &qword_1ECCABE10, &qword_1DD1094E8);
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        *(a10 + 224) = xmmword_1DD109290;
        v34 = 1;
        goto LABEL_24;
      }

      v31 = a9;
      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "#SiriLocationAccessGuardFlow - feature is OFF";
    }

    _os_log_impl(&dword_1DCAFC000, v29, v30, v33, v32, 2u);
    v36 = v32;
    v18 = v31;
    MEMORY[0x1E12A8390](v36, -1, -1);
    goto LABEL_23;
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v19 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v19, qword_1EDE57E00);
  sub_1DCFEB414(a6, a7, a8);
  v20 = sub_1DD0DD8EC();
  v21 = sub_1DD0DE6EC();
  sub_1DCFEBBFC(a6, a7, a8);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v39 = v23;
    *v22 = 136315138;
    *&v41 = a6;
    *(&v41 + 1) = a7;
    v42 = a8;
    sub_1DCFEB414(a6, a7, a8);
    v24 = sub_1DD0DE02C();
    v38 = a5;
    v26 = sub_1DCB10E9C(v24, v25, &v39);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_1DCAFC000, v20, v21, "#SiriLocationAccessGuardFlow - starting with overridden state=%s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1E12A8390](v23, -1, -1);
    MEMORY[0x1E12A8390](v22, -1, -1);

    sub_1DCB16D50(a9, &qword_1ECCABDD8, &qword_1DD1092C8);
    v27 = v38;
  }

  else
  {

    sub_1DCB16D50(a9, &qword_1ECCABDD8, &qword_1DD1092C8);
    v27 = a5;
  }

  sub_1DCB16D50(v27, &qword_1ECCABE10, &qword_1DD1094E8);
  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  *(a10 + 224) = a6;
  *(a10 + 232) = a7;
  *(a10 + 240) = a8;
LABEL_25:
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  return a10;
}

id sub_1DCFEB414(id result, id a2, char a3)
{
  if (a3 == 1)
  {
    return a2;
  }

  if (!a3)
  {
    return sub_1DCDCB08C(result);
  }

  return result;
}

void sub_1DCFEB434(unint64_t a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
    sub_1DCBB1234(a1);
  }
}

unint64_t sub_1DCFEB458()
{
  result = qword_1ECCABDE0;
  if (!qword_1ECCABDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABDE0);
  }

  return result;
}

uint64_t sub_1DCFEB4AC(uint64_t a1, uint64_t a2)
{
  result = sub_1DCFEBB60(&qword_1ECCABDE8, a2, type metadata accessor for SiriLocationAccessGuardFlow);
  *(a1 + 16) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationAccessFailureReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of SiriLocationAccessGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:)()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(v1 + 8);
  OUTLINED_FUNCTION_24_0();
  v18 = (v12 + *v12);
  v14 = *(v13 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = v15;
  *v15 = v16;
  v15[1] = sub_1DCB4AE1C;

  return v18(v10, v8, v6, v4, v2);
}

uint64_t dispatch thunk of SiriLocationAccessGuardFlowStrategy.makeErrorResponse(error:)()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(v1 + 16);
  OUTLINED_FUNCTION_24_0();
  v16 = (v10 + *v10);
  v12 = *(v11 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = v13;
  *v13 = v14;
  v13[1] = sub_1DCB4AD3C;

  return v16(v8, v6, v4, v2);
}

uint64_t dispatch thunk of SiriLocationAccessGuardFlow.execute()()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *(*v0 + 208);
  v9 = (v4 + *v4);
  v5 = v4[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1DCB4AD3C;

  return v9(v3);
}

uint64_t sub_1DCFEBA34(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCFEB414(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for SiriLocationAccessGuardFlow.State(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCFEB414(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_1DCFEB434(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for SiriLocationAccessGuardFlow.State(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_1DCFEB434(v4, v5, v6);
  return a1;
}

uint64_t sub_1DCFEBB34(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1DCFEBB60(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1DCFEBBA8()
{
  result = qword_1ECCABE08;
  if (!qword_1ECCABE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABE08);
  }

  return result;
}

void sub_1DCFEBBFC(unint64_t a1, id a2, char a3)
{
  if (a3 != -1)
  {
    sub_1DCFEB434(a1, a2, a3);
  }
}

unint64_t sub_1DCFEBC10()
{
  result = qword_1EDE47FC0;
  if (!qword_1EDE47FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE47FC0);
  }

  return result;
}

uint64_t sub_1DCFEBC84(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_68_0();
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

_BYTE *sub_1DCFEBCD0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1DCFEBD84(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a2 + 8);
  v4 = v3;
  *(a1 + 8) = v3;
  return a1;
}

uint64_t assignWithCopy for SiriLocationAccessGuardFlow.Outcome(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  v5 = v4;
  *(a1 + 8) = v4;

  return a1;
}

uint64_t assignWithTake for SiriLocationAccessGuardFlow.Outcome(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

unint64_t sub_1DCFEBE78()
{
  result = qword_1ECCABE18;
  if (!qword_1ECCABE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABE18);
  }

  return result;
}

unint64_t sub_1DCFEBED0()
{
  result = qword_1ECCABE20;
  if (!qword_1ECCABE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABE20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_81_11()
{
}

uint64_t sub_1DCFEBF5C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  while (1)
  {
    v5 = byte_1F5850450[v4++ + 32];
    v6 = "egy.buttonWhileSiri";
    v7 = 0xD000000000000049;
    switch(v5)
    {
      case 1:
        v7 = 0xD00000000000004ELL;
        v6 = ".firstTimePrompt/";
        break;
      case 2:
        v7 = 0xD000000000000053;
        v6 = "ionAccessPromptView";
        break;
      case 3:
        v7 = 0xD00000000000004FLL;
        v6 = "ationAccessStrategy.buttonOnce";
        break;
      default:
        break;
    }

    if (v7 == a1 && (v6 | 0x8000000000000000) == a2)
    {
      break;
    }

    v9 = sub_1DD0DF0AC();

    if (v9)
    {
      goto LABEL_14;
    }

    if (v4 == 4)
    {

      return 4;
    }
  }

LABEL_14:

  return v5;
}

const char *SiriNLUTypesFeatureFlag.feature.getter()
{
  if (*v0)
  {
    return "SKESiriNLUTypesSDAAdoption";
  }

  else
  {
    return "SKESiriNLUTypesUserParseAdoption";
  }
}

uint64_t SiriNLUTypesFeatureFlag.isEnabled.getter()
{
  v1 = *v0;
  if (qword_1EDE4EFF0 != -1)
  {
    OUTLINED_FUNCTION_0_124();
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EDE57DE8;
  if (*(qword_1EDE57DE8 + 16) && (v3 = sub_1DCC5F9DC(v1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + v3);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v7[3] = &type metadata for SiriNLUTypesFeatureFlag;
    v7[4] = sub_1DCFEC54C();
    LOBYTE(v7[0]) = v1;
    v5 = sub_1DD0DB2AC();
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  return v5 & 1;
}

uint64_t SiriNLUTypesFeatureFlag.withForcedEnabled<A>(_:block:)(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *v2;
  if (qword_1EDE4EFF0 != -1)
  {
    OUTLINED_FUNCTION_0_124();
    swift_once();
  }

  swift_beginAccess();
  v5 = sub_1DCC17E88(v4, qword_1EDE57DE8);
  swift_endAccess();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v8 = qword_1EDE57DE8;
  sub_1DCC607F4();
  qword_1EDE57DE8 = v8;
  v6 = swift_endAccess();
  a2(v6);
  return sub_1DCFEC2FC(v5, v4);
}

uint64_t sub_1DCFEC2FC(char a1, char a2)
{
  if (a1 == 2)
  {
    if (qword_1EDE4EFF0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1DCC5F9DC(a2 & 1);
    if (v3)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v7 = qword_1EDE57DE8;
      v4 = qword_1EDE57DE8;
      qword_1EDE57DE8 = 0x8000000000000000;
      v5 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA27F0, &unk_1DD1097F0);
      sub_1DD0DEDCC();
      sub_1DCFEC6D4();
      sub_1DD0DEDEC();
      qword_1EDE57DE8 = v7;
    }
  }

  else
  {
    if (qword_1EDE4EFF0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v8 = qword_1EDE57DE8;
    sub_1DCC607F4();
    qword_1EDE57DE8 = v8;
  }

  return swift_endAccess();
}

uint64_t SiriNLUTypesFeatureFlag.hashValue.getter()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

unint64_t sub_1DCFEC54C()
{
  result = qword_1EDE4EFE0;
  if (!qword_1EDE4EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4EFE0);
  }

  return result;
}

unint64_t sub_1DCFEC5A4()
{
  result = qword_1ECCABE30;
  if (!qword_1ECCABE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABE30);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriNLUTypesFeatureFlag(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DCFEC6D4()
{
  result = qword_1ECCABE38;
  if (!qword_1ECCABE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABE38);
  }

  return result;
}

void sub_1DCFEC728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v10 - v7;
  sub_1DCB28B08(a3, &v10 - v7, &unk_1ECCAAB70, &qword_1DD0E17E0);
  v9 = sub_1DD0DE4BC();
  __swift_getEnumTagSinglePayload(v8, 1, v9);
  sub_1DD0DCF8C();
}

Swift::Void __swiftcall SiriSuggestionsBroker.warmupForRequest()()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  oslog = sub_1DD0DD8EC();
  v1 = sub_1DD0DE6DC();
  if (os_log_type_enabled(oslog, v1))
  {
    OUTLINED_FUNCTION_5_109();
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DCAFC000, oslog, v1, "SiriSuggestionsBroker no-op default warmupForRequest", v2, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }
}

uint64_t sub_1DCFECAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v36 = swift_task_alloc();
  *(v31 + 16) = v36;
  *v36 = v31;
  v36[1] = sub_1DCBCF08C;

  return SiriSuggestionsBroker.doSiriHints(requestId:applicationSessionId:sourceDomainOwner:intentProperties:verb:executionProperties:dialogPhase:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

uint64_t SiriSuggestionsBroker.doSiriHints(requestId:applicationSessionId:sourceDomainOwner:intentProperties:verb:executionProperties:dialogPhase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  OUTLINED_FUNCTION_73_2();
  v57 = v33;
  v55 = v34;
  v56 = v35;
  v54 = v36;
  OUTLINED_FUNCTION_3_121();
  v37 = *(a31 + 32);
  OUTLINED_FUNCTION_24_0();
  v53 = v38 + *v38;
  v40 = *(v39 + 4);
  v41 = swift_task_alloc();
  *(v32 + 32) = v41;
  *v41 = v32;
  v41[1] = sub_1DCFECCF8;
  OUTLINED_FUNCTION_8_75();
  OUTLINED_FUNCTION_33_5();

  return v50(v42, v43, v44, v45, v46, v47, v48, v49, a31 + 32, v53, v54, v55, v56, v57, v31, a16, a17, a18, a19, a20, a21, a22, a23, v32);
}

uint64_t sub_1DCFECCF8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = *(v2 + 32);
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    v7 = sub_1DCFEEFD0;
  }

  else
  {
    v7 = sub_1DCFEEFC8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCFECDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  v16 = swift_task_alloc();
  *(v12 + 16) = v16;
  *v16 = v12;
  v16[1] = sub_1DCC467A0;

  return SiriSuggestionsBroker.doSiriHints(requestId:applicationSessionId:sourceDomainOwner:intentProperties:verb:executionProperties:dialogPhase:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t SiriSuggestionsBroker.doSiriHints(requestId:applicationSessionId:sourceDomainOwner:intentProperties:verb:executionProperties:dialogPhase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  *(v13 + 160) = a12;
  *(v13 + 168) = v12;
  *(v13 + 152) = a11;
  *(v13 + 136) = a10;
  *(v13 + 120) = a9;
  *(v13 + 104) = a7;
  *(v13 + 112) = a8;
  *(v13 + 88) = a5;
  *(v13 + 96) = a6;
  *(v13 + 72) = a3;
  *(v13 + 80) = a4;
  *(v13 + 56) = a1;
  *(v13 + 64) = a2;
  return OUTLINED_FUNCTION_5_113();
}

void sub_1DCFECF30()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 136);
  *(v0 + 24) = v2;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  v3 = *(v1 + 40);

  v14 = v3 + *v3;
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  *v5 = v0;
  v5[1] = sub_1DCFED090;
  v6 = *(v0 + 168);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  v11 = *(v0 + 64);
  v12 = *(v0 + 72);
  v13 = *(v0 + 56);
  v18 = *(v0 + 152);
  v19 = *(v0 + 160);
  v17 = *(v0 + 128);
  v16 = *(v0 + 112);

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1DCFED090()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = *(v2 + 176);
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 184) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCFED1C4, 0, 0);
  }

  else
  {
    v7 = *(v3 + 144);

    OUTLINED_FUNCTION_43();

    return v8();
  }
}

uint64_t sub_1DCFED1C4()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[18];

  v2 = v0[1];
  v3 = v0[23];

  return v2();
}

uint64_t sub_1DCFED230(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCF9464C;

  return SiriSuggestionsBroker.doSiriHints(requestId:applicationSessionId:suggestionContextData:sourceDomainOwner:intentProperties:verb:executionProperties:)(a1);
}

uint64_t sub_1DCFED2DC()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  v1[1] = 0;
  OUTLINED_FUNCTION_43();
  return v2();
}

uint64_t sub_1DCFED304()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCF9464C;

  return SiriSuggestionsBroker.submitEngagement(for:requestId:)();
}

uint64_t sub_1DCFED3AC()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  v1 = sub_1DD0DD8EC();
  v2 = sub_1DD0DE6DC();
  v3 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_5_109();
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DCAFC000, v1, v2, "Siri suggestions submit failed", v5, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  OUTLINED_FUNCTION_43();

  return v6();
}

uint64_t SiriSuggestionsBroker.doContinuousConversationsHint(requestId:applicationSessionId:dialogPhase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14[0] = a4;
  v14[1] = a5;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v11 = *(a7 + 64);

  v11(a1, a2, a3, v14, a6, a7);
}

void SiriSuggestionsBroker.doSiriHints(requestId:applicationSessionId:dialogPhase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_task_alloc();
  *(v7 + 32) = v12;
  *v12 = v7;
  v12[1] = sub_1DCFED668;
  OUTLINED_FUNCTION_7_77();

  SiriSuggestionsBroker.doSiriHints(requestId:applicationSessionId:dialogPhase:)(v13, v14, v15, v16, a4, a5, a6, a7);
}

uint64_t sub_1DCFED668()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = *(v2 + 32);
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    v7 = sub_1DCFED7EC;
  }

  else
  {
    v7 = sub_1DCFED76C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCFED76C()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    v3 = v2;
    sub_1DCBBF7D0(v2, v1);
  }

  else
  {
    v2 = 0;
  }

  v4 = v0[1];

  return v4(v2);
}

void SiriSuggestionsBroker.doSiriHints(requestId:applicationSessionId:dialogPhase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a8 + 32);
  OUTLINED_FUNCTION_24_0();
  v15 = v9 + *v9;
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_11_0(v12);
  *v13 = v14;
  v13[1] = sub_1DCF9464C;
  OUTLINED_FUNCTION_7_77();

  __asm { BRAA            X8, X16 }
}

void __swiftcall SuggestionContextData.init(dialogPhase:hasAdditionalCommands:patternId:)(SiriKitFlow::SuggestionContextData *__return_ptr retstr, Swift::String_optional dialogPhase, Swift::Bool hasAdditionalCommands, Swift::String_optional patternId)
{
  retstr->dialogPhase = dialogPhase;
  retstr->hasAdditionalCommands = hasAdditionalCommands;
  retstr->patternId = patternId;
}

id HintsUI.snippet.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t HintsUI.init(snippet:supportingCommands:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double sub_1DCFEDA2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();
  sub_1DCB28B08(a1 + 24, &v11, &qword_1ECCA54E8, &unk_1DD0F2080);
  if (v12)
  {
    sub_1DCB18FF0(&v11, a2);
  }

  else
  {
    sub_1DCB16D50(&v11, &qword_1ECCA54E8, &unk_1DD0F2080);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v5 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v5, qword_1EDE57E00);
    v6 = sub_1DD0DD8EC();
    v7 = sub_1DD0DE6EC();
    v8 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v8, v9))
    {
      OUTLINED_FUNCTION_5_109();
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DCAFC000, v6, v7, "Siri suggestions (sync) has not been initialized in time. Ensure that setInstance (sync) has been called by the runtime prior to getting any client instance", v10, 2u);
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void sub_1DCFEDC44(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1DCB28B08(a1 + 24, v9, &qword_1ECCA54E8, &unk_1DD0F2080);
  v4 = v10;
  sub_1DCB16D50(v9, &qword_1ECCA54E8, &unk_1DD0F2080);
  if (v4)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v5 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v5, qword_1EDE57E00);
    v6 = sub_1DD0DD8EC();
    v7 = sub_1DD0DE6CC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DCAFC000, v6, v7, "Suggestions sync broker instance is already set. No need to reevaluate", v8, 2u);
      MEMORY[0x1E12A8390](v8, -1, -1);
    }
  }

  else
  {
    sub_1DCB17CA0(a2, v9);
    swift_beginAccess();
    sub_1DCFEE550(v9, a1 + 24);
    swift_endAccess();
  }
}

uint64_t SiriSuggestionsSyncBrokerProvider.__deallocating_deinit()
{
  sub_1DCB16D50(v0 + 24, &qword_1ECCA54E8, &unk_1DD0F2080);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCFEDE4C()
{
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  return v0;
}

double sub_1DCFEDE90()
{
  type metadata accessor for SiriSuggestionsBrokerProvider();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = 0.0;
  *(v0 + 137) = 0u;
  v0[7] = 0u;
  v0[8] = 0u;
  qword_1EDE4B4C0 = v0;
  return result;
}

uint64_t sub_1DCFEDED8()
{
  type metadata accessor for SiriSuggestionsSyncBrokerProvider();
  v0 = swift_allocObject();
  result = sub_1DCFEDE4C();
  off_1EDE4B4D8 = v0;
  return result;
}

uint64_t sub_1DCFEDF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DCFEDF60, 0, 0);
}

uint64_t sub_1DCFEDF60()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 104);
  (*(v0 + 96))();
  v2 = *(v0 + 112);
  if (*(v0 + 80))
  {
    sub_1DCB18FF0((v0 + 56), v0 + 16);
    v3 = sub_1DCFEE028;
  }

  else
  {
    sub_1DCB16D50(v0 + 56, &qword_1ECCA54E8, &unk_1DD0F2080);
    v3 = sub_1DCFEE00C;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

uint64_t sub_1DCFEE028()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 112);
  sub_1DCFEE244(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DCFEE090, 0, 0);
}

uint64_t sub_1DCFEE090()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 128);
  (*(v0 + 120))();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

id sub_1DCFEE0F8()
{
  v0 = objc_opt_self();
  result = [v0 isContinuousConversationSupported];
  if (result)
  {
    result = [v0 isIOSDeviceSupportingBargeIn];
    if (result)
    {
      sub_1DCFEEF84();
      v2 = sub_1DCFEE1C8(0xD00000000000001ELL, 0x80000001DD129590, 2);
      v3 = sub_1DD0DDF8C();
      v4 = [v2 BOOLForKey_];

      return (v4 ^ 1);
    }
  }

  return result;
}

id sub_1DCFEE1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1DD0DDF8C();

  v6 = [v4 initWithStoreIdentifier:v5 type:a3];

  return v6;
}

void sub_1DCFEE244(uint64_t a1)
{
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();
  sub_1DCB28B08(v1 + 112, v8, &qword_1ECCA54E8, &unk_1DD0F2080);
  v3 = v9;
  sub_1DCB16D50(v8, &qword_1ECCA54E8, &unk_1DD0F2080);
  if (v3)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v4 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v4, qword_1EDE57E00);
    v5 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6CC();
    if (os_log_type_enabled(v5, v6))
    {
      OUTLINED_FUNCTION_5_109();
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DCAFC000, v5, v6, "Suggestions async broker instance is already set. No need to reevaluate", v7, 2u);
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }
  }

  else
  {
    sub_1DCB17CA0(a1, v8);
    swift_beginAccess();
    sub_1DCFEE550(v8, v1 + 112);
    swift_endAccess();
    if (qword_1EDE4B4D0 != -1)
    {
      swift_once();
    }

    sub_1DCFEDBEC();
  }
}

uint64_t SiriSuggestionsBrokerProvider.deinit()
{
  sub_1DCB16D50(v0 + 112, &qword_1ECCA54E8, &unk_1DD0F2080);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SiriSuggestionsBrokerProvider.__deallocating_deinit()
{
  sub_1DCB16D50(v0 + 112, &qword_1ECCA54E8, &unk_1DD0F2080);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DCFEE47C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  *v11 = v12;
  v11[1] = sub_1DCC467A0;

  return sub_1DCFEDF38(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCFEE550(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA54E8, &unk_1DD0F2080);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of SiriSuggestionsBroker.doSiriHints(requestId:applicationSessionId:sourceDomainOwner:intentProperties:verb:executionProperties:dialogPhase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  OUTLINED_FUNCTION_73_2();
  v57 = v33;
  v55 = v34;
  v56 = v35;
  v54 = v36;
  OUTLINED_FUNCTION_3_121();
  v37 = *(a31 + 24);
  OUTLINED_FUNCTION_24_0();
  v53 = v38 + *v38;
  v40 = *(v39 + 4);
  v41 = swift_task_alloc();
  *(v32 + 16) = v41;
  *v41 = v32;
  OUTLINED_FUNCTION_13_74(v41);
  OUTLINED_FUNCTION_7_77();
  OUTLINED_FUNCTION_8_75();
  OUTLINED_FUNCTION_33_5();

  return v50(v42, v43, v44, v45, v46, v47, v48, v49, a31 + 24, v53, v54, v55, v56, v57, v31, a16, a17, a18, a19);
}

uint64_t dispatch thunk of SiriSuggestionsBroker.doSiriHints(requestId:applicationSessionId:sourceDomainOwner:intentProperties:verb:executionProperties:dialogPhase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_3_121();
  v17 = *(a14 + 32);
  OUTLINED_FUNCTION_24_0();
  v25 = (v18 + *v18);
  v20 = *(v19 + 4);
  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_11_0(v21);
  *v22 = v23;
  OUTLINED_FUNCTION_13_74(v22);

  return v25(v16, v15, v14, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t dispatch thunk of SiriSuggestionsBroker.doSiriHints(requestId:applicationSessionId:suggestionContextData:sourceDomainOwner:intentProperties:verb:executionProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  OUTLINED_FUNCTION_73_2();
  v58 = v32;
  v56 = v33;
  v57 = v34;
  v55 = v35;
  OUTLINED_FUNCTION_3_121();
  v36 = *(a31 + 40);
  OUTLINED_FUNCTION_24_0();
  v54 = v37 + *v37;
  v39 = *(v38 + 4);
  v40 = swift_task_alloc();
  v41 = OUTLINED_FUNCTION_11_0(v40);
  *v41 = v42;
  OUTLINED_FUNCTION_13_74(v41);
  OUTLINED_FUNCTION_7_77();
  OUTLINED_FUNCTION_8_75();
  OUTLINED_FUNCTION_33_5();

  return v51(v43, v44, v45, v46, v47, v48, v49, v50, a31 + 40, v54, v55, v56, v57, v58, v31, a16, a17, a18, a19);
}

uint64_t dispatch thunk of SiriSuggestionsBroker.submitEngagement(for:requestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  OUTLINED_FUNCTION_24_0();
  v15 = (v10 + *v10);
  v12 = *(v11 + 4);
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_1DCF9464C;

  return v15(a1, a2, a3, a4);
}

uint64_t destroy for HintsUI(uint64_t a1)
{
  v2 = *(a1 + 8);
}

uint64_t assignWithCopy for HintsUI(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;

  return a1;
}

uint64_t assignWithTake for HintsUI(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

uint64_t destroy for SuggestionContextData(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 32);
}

uint64_t initializeWithCopy for SuggestionContextData(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  return a1;
}

uint64_t assignWithCopy for SuggestionContextData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;

  return a1;
}

uint64_t assignWithTake for SuggestionContextData(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;

  return a1;
}

uint64_t getEnumTagSinglePayload for SuggestionContextData(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SuggestionContextData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1DCFEEEF0()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_10_8(v4);

  return v7(v6);
}

unint64_t sub_1DCFEEF84()
{
  result = qword_1EDE46138;
  if (!qword_1EDE46138)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE46138);
  }

  return result;
}

void SiriSuggestionsClient.submit(for:propertyKey:propertyValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v34 = a7;
  v35 = a1;
  v36 = a3;
  v37 = a4;
  OUTLINED_FUNCTION_0_1();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16, v17);
  v18 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v23 = &v34 - v22;
  v24 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v24);
  (*(v13 + 16))(v18, v8, a6);
  sub_1DCFEF494(a5, v38);
  v25 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v26 = (v15 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  v29 = v34;
  *(v28 + 4) = a6;
  *(v28 + 5) = v29;
  (*(v13 + 32))(&v28[v25], v18, a6);
  v30 = &v28[v26];
  v31 = v36;
  *v30 = v35;
  *(v30 + 1) = a2;
  v32 = &v28[v27];
  v33 = v37;
  *v32 = v31;
  *(v32 + 1) = v33;
  sub_1DCFEF4F8(v38, &v28[(v27 + 23) & 0xFFFFFFFFFFFFFFF8]);

  sub_1DCBC64A4();
}

uint64_t sub_1DCFEF1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v13 = *(v19 + 16);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v8 + 24) = v15;
  *v15 = v8;
  v15[1] = sub_1DCFEF358;

  return v17(a5, a6, a7, a8);
}

uint64_t sub_1DCFEF358()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 32) = v0;

  if (v0)
  {

    v9 = sub_1DCFF21EC;
  }

  else
  {
    v9 = sub_1DCFEF460;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DCFEF460()
{
  **(v0 + 16) = *(v0 + 32) != 0;
  OUTLINED_FUNCTION_29();
  return v1();
}

uint64_t sub_1DCFEF494(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_1DCFEF4F8(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1DCFEF510(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v19 = v1[5];
  OUTLINED_FUNCTION_0_1();
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1[3];
  v18 = v1[2];
  v11 = (v1 + v8);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v9);
  v15 = *(v1 + v9 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1DCB4AD3C;

  return sub_1DCFEF1F4(a1, v18, v10, v1 + v6, v12, v13, v14, v15);
}

uint64_t ProtectedSiriSuggestionsClient.__allocating_init(delegate:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  sub_1DCAFF9E8(a1, v2 + 24);
  return v2;
}

uint64_t ProtectedSiriSuggestionsClient.init(delegate:)(__int128 *a1)
{
  *(v1 + 16) = 0;
  sub_1DCAFF9E8(a1, v1 + 24);
  return v1;
}

void sub_1DCFEF6F4(void *a1)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  v2 = a1;
}

void sub_1DCFEF734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DD0DDDAC();
  OUTLINED_FUNCTION_0_1();
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13, v14);
  sub_1DD0DDDFC();
  OUTLINED_FUNCTION_0_1();
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17, v18);
  v19 = *(v5 + 16);
  if (v19)
  {
    sub_1DCFEF494(a5, v27);
    v20 = swift_allocObject();
    *(v20 + 16) = v5;
    *(v20 + 24) = a1;
    *(v20 + 32) = a2;
    *(v20 + 40) = a3;
    *(v20 + 48) = a4;
    sub_1DCFEF4F8(v27, (v20 + 56));
    aBlock[4] = sub_1DCFF1B30;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DCF5B728;
    aBlock[3] = &block_descriptor_12;
    _Block_copy(aBlock);
    v21 = v19;
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v22 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v22, qword_1EDE57E00);
  v25 = sub_1DD0DD8EC();
  v23 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v25, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1DCAFC000, v25, v23, "Trying to invoke methods on the Suggestions Client before it is assigned to the provider lifecycle. Please call SiriSuggestionsClientProvider.setInstance with this instance from the runtime initialization prior to using", v24, 2u);
    MEMORY[0x1E12A8390](v24, -1, -1);
  }
}

uint64_t sub_1DCFEFB08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a1[6];
  v12 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v11);
  return (*(v12 + 8))(a2, a3, a4, a5, a6, v11, v12);
}

uint64_t sub_1DCFEFB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCFEFBB4()
{
  v1 = v0[7];
  v2 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v3 = *(v2 + 16);
  v12 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1DCFEFCE8;
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  v10 = OUTLINED_FUNCTION_55_2(v0[2]);

  return v12(v10);
}

uint64_t sub_1DCFEFCE8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t ProtectedSiriSuggestionsClient.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1DCFEFE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCB4AD3C;

  return sub_1DCFEFB98(a1, a2, a3, a4, a5);
}

uint64_t SiriSuggestionsClient.submitExecutionParam(for:propertyKey:propertyValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[14] = a7;
  v8[15] = v7;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[8] = a1;
  v8[9] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCFEFF30()
{
  v1 = *(v0 + 96);
  v17 = *(v0 + 112);
  MEMORY[0x1E12A6780](*(v0 + 80), *(v0 + 88));
  *(v0 + 128) = 0xE800000000000000;
  v2 = v1[5];
  v15 = *(v1 + 3);
  v3 = v1[3];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v3);
  *(v0 + 40) = v15;
  *(v0 + 56) = v2;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1Tm, v4, v3);
  v6 = *(v17 + 16);
  v16 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *v8 = v0;
  v8[1] = sub_1DCFF00F8;
  v9 = *(v0 + 112);
  v10 = *(v0 + 120);
  v11 = *(v0 + 104);
  v12 = *(v0 + 72);
  v13 = OUTLINED_FUNCTION_55_2(*(v0 + 64));

  return v16(v13);
}

uint64_t sub_1DCFF00F8()
{
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *(v5 + 128);
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v3 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCFF21DC, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t SiriSuggestionsClient.submitDialogTemplate(for:templatingResult:)()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v7 = *v6;
  *(v1 + 48) = v0;
  *(v1 + 56) = v7;
  *(v1 + 64) = *(v6 + 1);

  return MEMORY[0x1EEE6DFA0](sub_1DCFF02C8, 0, 0);
}

uint64_t sub_1DCFF02C8()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD0E07C0;
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  v5 = *(v2 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v24 = v4;
    v25 = MEMORY[0x1E69E7CC0];
    sub_1DCB38954();
    v6 = v25;
    v7 = *(v25 + 16);
    v8 = 16 * v7;
    v9 = (v2 + 40);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v12 = *(v25 + 24);

      if (v7 >= v12 >> 1)
      {
        sub_1DCB38954();
      }

      *(v25 + 16) = v7 + 1;
      v13 = v25 + v8;
      *(v13 + 32) = v11;
      *(v13 + 40) = v10;
      v8 += 16;
      v9 += 28;
      ++v7;
      --v5;
    }

    while (v5);
    v4 = v24;
  }

  v26 = v4;
  sub_1DCBB9238(v6);
  v0[10] = v26;
  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_1DCFF0474;
  v15 = v0[5];
  v16 = v0[6];
  v17 = v0[3];
  v18 = v0[4];
  v19 = OUTLINED_FUNCTION_55_2(v0[2]);

  return SiriSuggestionsClient.submit(for:dialogID:)(v19, v20, v26, v21, v22);
}

uint64_t sub_1DCFF0474()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCFF0598, 0, 0);
  }

  else
  {
    v9 = *(v3 + 80);

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCFF0598()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_29();
  v3 = *(v0 + 96);

  return v2();
}

uint64_t SiriSuggestionsClient.submit(for:dialogID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCFF0610()
{
  v27 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v3, qword_1EDE57E00);

  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6CC();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[8];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315394;
    v11 = MEMORY[0x1E12A6960](v6, MEMORY[0x1E69E6158]);
    v13 = sub_1DCB10E9C(v11, v12, &v26);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_1DCB10E9C(v8, v7, &v26);
    _os_log_impl(&dword_1DCAFC000, v4, v5, "Submitting dialogID: %s for requestId: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v10, -1, -1);
    MEMORY[0x1E12A8390](v9, -1, -1);
  }

  v25 = v0[12];
  v14 = v0[10];
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
  v0[6] = sub_1DCD4F0A8(&qword_1ECCA7D50);
  v0[7] = sub_1DCD4F0A8(&qword_1EDE46290);
  v0[2] = v14;
  v15 = *(v25 + 16);

  v24 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  v0[14] = v17;
  *v17 = v0;
  v17[1] = sub_1DCFF0944;
  v18 = v0[12];
  v19 = v0[13];
  v20 = v0[11];
  v21 = v0[9];
  v22 = OUTLINED_FUNCTION_55_2(v0[8]);

  return v24(v22);
}

uint64_t sub_1DCFF0944()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCF9CED0, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
    OUTLINED_FUNCTION_29();

    return v9();
  }
}

uint64_t SiriSuggestionsClient.submitSiriKitIntent<A>(for:siriKitIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[15] = a8;
  v9[16] = v8;
  v9[13] = a6;
  v9[14] = a7;
  v9[11] = a4;
  v9[12] = a5;
  v9[9] = a2;
  v9[10] = a3;
  v9[8] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCFF0A8C()
{
  OUTLINED_FUNCTION_10_80();
  v7 = (v0 + *v0);
  v2 = v0[1];
  v3 = swift_task_alloc();
  *(v1 + 136) = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_12_70(v3);
  v5 = OUTLINED_FUNCTION_55_2(v4);

  return v7(v5);
}

uint64_t sub_1DCFF0BB4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCFF21DC, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
    OUTLINED_FUNCTION_29();

    return v9();
  }
}

uint64_t SiriSuggestionsClient.submitSiriKitIntentResponse<A>(for:sirikitInResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[15] = a8;
  v9[16] = v8;
  v9[13] = a6;
  v9[14] = a7;
  v9[11] = a4;
  v9[12] = a5;
  v9[9] = a2;
  v9[10] = a3;
  v9[8] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCFF0CFC()
{
  OUTLINED_FUNCTION_10_80();
  v7 = (v0 + *v0);
  v2 = v0[1];
  v3 = swift_task_alloc();
  *(v1 + 136) = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_12_70(v3);
  v5 = OUTLINED_FUNCTION_55_2(v4);

  return v7(v5);
}

uint64_t sub_1DCFF0E24()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCFF0F48, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
    OUTLINED_FUNCTION_29();

    return v9();
  }
}

uint64_t sub_1DCFF0F48()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 144);

  return v1();
}

uint64_t SuggestionErrors.hashValue.getter()
{
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](0);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCFF1048()
{
  v12[0] = sub_1DD0DE75C();
  v0 = *(v12[0] - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v12[0], v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DD0DE74C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v8 = sub_1DD0DDDFC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  sub_1DCCDFED4();
  sub_1DD0DDDEC();
  v12[1] = MEMORY[0x1E69E7CC0];
  sub_1DCFF2138(&qword_1EDE461B8, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA42B0, &qword_1DD0EB730);
  sub_1DCFF2180(&qword_1EDE46270, &qword_1ECCA42B0, &qword_1DD0EB730);
  sub_1DD0DEABC();
  (*(v0 + 104))(v4, *MEMORY[0x1E69E8090], v12[0]);
  result = sub_1DD0DE79C();
  qword_1ECCABE40 = result;
  return result;
}

double sub_1DCFF129C()
{
  qword_1ECCD27A8 = 0;
  result = 0.0;
  xmmword_1ECCD2788 = 0u;
  unk_1ECCD2798 = 0u;
  return result;
}

uint64_t static SiriSuggestionsClientProvider.getInstance()()
{
  if (qword_1ECCA13D8 != -1)
  {
    OUTLINED_FUNCTION_1_134();
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE48, &qword_1DD109A00);
  return sub_1DD0DE77C();
}

uint64_t sub_1DCFF1348@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECCA13E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1DCFF1F9C(&xmmword_1ECCD2788, &v7);
  if (v8)
  {
    return sub_1DCAFF9E8(&v7, a1);
  }

  sub_1DCFF200C(&v7);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v3 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v3, qword_1EDE57E00);
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "Siri suggestions has not be initialized. Insure that setInstance has been called by the runtime prior to getting any client instance", v6, 2u);
    MEMORY[0x1E12A8390](v6, -1, -1);
  }

  sub_1DCFF20E4();
  swift_allocError();
  return swift_willThrow();
}

void static SiriSuggestionsClientProvider.setInstance(client:)(uint64_t a1)
{
  if (qword_1ECCA13D8 != -1)
  {
    OUTLINED_FUNCTION_1_134();
    swift_once();
  }

  sub_1DCB17CA0(a1, v6);
  v2 = swift_allocObject();
  sub_1DCAFF9E8(v6, v2 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DCFF1B44;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1DCD1BF88;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_6_79();
  aBlock[2] = v4;
  aBlock[3] = &block_descriptor_25;
  _Block_copy(aBlock);
  sub_1DD0DCF8C();
}

{
  if (qword_1ECCA13D8 != -1)
  {
    OUTLINED_FUNCTION_1_134();
    swift_once();
  }

  v2 = swift_allocObject();
  *(v2 + 16) = sub_1DCFF1B4C;
  *(v2 + 24) = a1;
  v4[4] = sub_1DCD2736C;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  OUTLINED_FUNCTION_6_79();
  v4[2] = v3;
  v4[3] = &block_descriptor_32;
  _Block_copy(v4);
  sub_1DD0DCF8C();
}

void sub_1DCFF1650(uint64_t a1)
{
  if (qword_1ECCA13E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1DCFF1F9C(&xmmword_1ECCD2788, v7);
  v2 = v8;
  sub_1DCFF200C(v7);
  if (v2)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v3 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v3, qword_1EDE57E00);
    v4 = sub_1DD0DD8EC();
    v5 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DCAFC000, v4, v5, "An attempt was made to reset the suggestions client instance. The lifecycle does not permit reassignment", v6, 2u);
      MEMORY[0x1E12A8390](v6, -1, -1);
    }
  }

  else
  {
    sub_1DCB17CA0(a1, v7);
    swift_beginAccess();
    sub_1DCFF2074(v7, &xmmword_1ECCD2788);
    swift_endAccess();
  }
}

void sub_1DCFF1958(uint64_t a1)
{
  if (qword_1ECCA13E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1DCFF1F9C(&xmmword_1ECCD2788, v7);
  v2 = v8;
  sub_1DCFF200C(v7);
  if (!v2)
  {
    v8 = type metadata accessor for ProtectedSiriSuggestionsClient();
    v9 = &protocol witness table for ProtectedSiriSuggestionsClient;
    v7[0] = a1;
    swift_beginAccess();
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v3 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v3, qword_1EDE57E00);
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "An attempt was made to reset the suggestions client instance. The lifecycle does not permit reassignment", v6, 2u);
    MEMORY[0x1E12A8390](v6, -1, -1);
  }
}

unint64_t sub_1DCFF1B58()
{
  result = qword_1ECCABE50;
  if (!qword_1ECCABE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABE50);
  }

  return result;
}

uint64_t dispatch thunk of SiriSuggestionsClient.submitAsync(for:propertyKey:propertyValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 16);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_1DCB4AE1C;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of ProtectedSiriSuggestionsClient.submitAsync(for:propertyKey:propertyValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 144);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1DCB4AD3C;

  return v16(a1, a2, a3, a4, a5);
}

_BYTE *sub_1DCFF1EF4(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1DCFF1F9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE58, &qword_1DD109BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCFF200C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE58, &qword_1DD109BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCFF2074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE58, &qword_1DD109BA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DCFF20E4()
{
  result = qword_1ECCABE60;
  if (!qword_1ECCABE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABE60);
  }

  return result;
}

uint64_t sub_1DCFF2138(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DCFF2180(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_1DCFF21F0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v7 = sub_1DD0DB04C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = *a3;
  v10 = a3[1];
  sub_1DD0DCA6C();
}

uint64_t sub_1DCFF2790()
{
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[22];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v5 = v1;
  v6 = sub_1DD0DD8EC();
  v7 = sub_1DD0DE6EC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[28];
  v10 = v0[22];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v9;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;

    _os_log_impl(&dword_1DCAFC000, v6, v7, "Error when getting suggestions: %@", v11, 0xCu);
    sub_1DCB16D50(v12, qword_1ECCA8AD0, &qword_1DD0E4F90);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {
    v15 = v0[22];
  }

  v16 = v0[12];
  (*(v0[18] + 8))(v0[19], v0[17]);
  *v16 = 0;
  v16[1] = 0;
  OUTLINED_FUNCTION_5_114();

  OUTLINED_FUNCTION_29();

  return v17();
}

uint64_t (*SnippetEventHandling.handler(for:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v10 = v9;
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v8, v13);
  v15 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v23[-v17];
  swift_getAssociatedConformanceWitness();
  sub_1DD0DD01C();
  v19 = *(v10 + 32);
  v19(v15, v18, AssociatedTypeWitness);
  v20 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = a3;
  v21[4] = v4;
  v19(v21 + v20, v15, AssociatedTypeWitness);
  swift_unknownObjectRetain();
  return sub_1DCFF2C0C;
}

uint64_t sub_1DCFF2C0C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = v0[4];
  return (*(v2 + 40))(v0 + ((*(v3 + 80) + 40) & ~*(v3 + 80)), v1, v2);
}

void sub_1DCFF2CD0(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a1;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = (a3 + 48);
  v9 = MEMORY[0x1E69E7CC0];
  v18 = v7;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_15;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    v10 = *v8;
    v21 = *(v8 - 1);
    v22 = v10;

    v11 = v5(&v21);
    if (v3)
    {

LABEL_15:

      return;
    }

    if (v11)
    {
      v12 = v21;
      v13 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = *(v9 + 16);
        sub_1DCE06B28();
        v9 = v23;
      }

      v16 = *(v9 + 16);
      if (v16 >= *(v9 + 24) >> 1)
      {
        sub_1DCE06B28();
        v9 = v23;
      }

      *(v9 + 16) = v16 + 1;
      v17 = v9 + 24 * v16;
      *(v17 + 32) = v12;
      *(v17 + 48) = v13;
      v4 = a3;
      v7 = v18;
      v5 = a1;
    }

    else
    {
    }

    v8 += 3;
    ++v6;
  }

  __break(1u);
}

uint64_t sub_1DCFF2E5C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a2;
  v5 = type metadata accessor for SnippetManager.SnippetRecord(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5 - 8, v8);
  v28 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v26 - v13;
  v15 = 0;
  v16 = *(a3 + 16);
  v29 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v16 == v15)
    {

      return v29;
    }

    if (v15 >= *(a3 + 16))
    {
      break;
    }

    v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v18 = *(v6 + 72);
    sub_1DCFFA3F0(a3 + v17 + v18 * v15, v14);
    v19 = v30(v14);
    if (v3)
    {
      sub_1DCFF8E30(v14, type metadata accessor for SnippetManager.SnippetRecord);
      v25 = v29;

      return v25;
    }

    if (v19)
    {
      sub_1DCFFA5C0(v14, v28);
      v20 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DCE06CA8(0, *(v20 + 16) + 1, 1);
        v20 = v32;
      }

      v23 = *(v20 + 16);
      v22 = *(v20 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v29 = v23 + 1;
        v27 = v23;
        sub_1DCE06CA8(v22 > 1, v23 + 1, 1);
        v24 = v29;
        v23 = v27;
        v20 = v32;
      }

      ++v15;
      *(v20 + 16) = v24;
      v29 = v20;
      result = sub_1DCFFA5C0(v28, v20 + v17 + v23 * v18);
    }

    else
    {
      result = sub_1DCFF8E30(v14, type metadata accessor for SnippetManager.SnippetRecord);
      ++v15;
    }
  }

  __break(1u);
  return result;
}

void *sub_1DCFF30F0()
{
  v0 = type metadata accessor for SnippetManager(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_1DCFF3AFC(sub_1DCFF3A78, 0);
  qword_1EDE49810 = v3;
  return result;
}

uint64_t sub_1DCFF3148@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DCFF328C();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1DCFFA450;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_1DCFF31B8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DCFFA448;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1DCB02C48(v3);
  return sub_1DCFF32C8(v6, v5);
}

uint64_t sub_1DCFF3248(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *))
{
  v5[0] = a1;
  v5[1] = a2;
  a3(&v4, v5);
  return v4;
}

uint64_t sub_1DCFF328C()
{
  OUTLINED_FUNCTION_5_22();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = OUTLINED_FUNCTION_33_1();
  sub_1DCB02C48(v3);
  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCFF32C8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_70();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_1DCB370A4(v5);
}

void sub_1DCFF3310()
{
  v0 = type metadata accessor for SnippetManager.SnippetManagerState(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0, v2);
  if (qword_1ECCA13B0 != -1)
  {
    swift_once();
  }

  v3 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v3, qword_1ECCD2760);
  sub_1DD0DCF8C();
}

void sub_1DCFF352C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_state;
  swift_beginAccess();
  sub_1DCFFA514(a1, v1 + v3);
  swift_endAccess();
  sub_1DCFF3310();
}

uint64_t sub_1DCFF359C()
{
  v1 = OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_canSendAddViews;
  OUTLINED_FUNCTION_5_22();
  return *(v0 + v1);
}

void sub_1DCFF35D4(char a1)
{
  sub_1DCFF36DC(a1, "Setting SnippetManager#canSendAddViews=%{BOOL}d");
  v3 = OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_canSendAddViews;
  OUTLINED_FUNCTION_13_70();
  *(v1 + v3) = a1;
  sub_1DCFF4598();
}

void (*sub_1DCFF3628())(uint64_t a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_11_5(v2) + 24) = v0;
  v3 = OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_canSendAddViews;
  OUTLINED_FUNCTION_156();
  *(v1 + 32) = *(v0 + v3);
  return sub_1DCFF369C;
}

void sub_1DCFF369C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  sub_1DCFF35D4(*(*a1 + 32));

  free(v1);
}

void sub_1DCFF36DC(char a1, const char *a2)
{
  if (qword_1ECCA13B0 != -1)
  {
    OUTLINED_FUNCTION_3_122();
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1ECCD2760);
  oslog = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = a1 & 1;
    _os_log_impl(&dword_1DCAFC000, oslog, v5, a2, v6, 8u);
    OUTLINED_FUNCTION_80();
  }
}

uint64_t sub_1DCFF37C8()
{
  v1 = OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_canSendXPCUpdates;
  OUTLINED_FUNCTION_5_22();
  return *(v0 + v1);
}

uint64_t sub_1DCFF3800(char a1)
{
  sub_1DCFF36DC(a1, "Setting SnippetManager#canSendXPCUpdates=%{BOOL}d");
  v3 = OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_canSendXPCUpdates;
  result = OUTLINED_FUNCTION_13_70();
  *(v1 + v3) = a1;
  return result;
}

void (*sub_1DCFF3850())(uint64_t a1)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  v3 = OUTLINED_FUNCTION_11_5(v2);
  v4 = OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_canSendXPCUpdates;
  *(v3 + 24) = v0;
  *(v3 + 32) = v4;
  swift_beginAccess();
  *(v1 + 40) = *(v0 + v4);
  return sub_1DCFF38CC;
}

void sub_1DCFF38CC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  sub_1DCFF36DC(v4, "Setting SnippetManager#canSendXPCUpdates=%{BOOL}d");
  *(v2 + v3) = v4;

  free(v1);
}

uint64_t sub_1DCFF3924@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE68, &qword_1DD109BF0);
  OUTLINED_FUNCTION_20_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v21 - v8;
  v10 = v1 + OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_state;
  OUTLINED_FUNCTION_156();
  v11 = type metadata accessor for SnippetManager.SnippetManagerState(0);
  sub_1DCB09970(v10 + *(v11 + 20), v9, &qword_1ECCABE68, &qword_1DD109BF0);
  v12 = type metadata accessor for SnippetManager.SnippetRecord(0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v12) == 1)
  {
    sub_1DCB0E9D8(v9, &qword_1ECCABE68, &qword_1DD109BF0);
    v13 = 1;
  }

  else
  {
    v14 = &v9[*(v12 + 20)];
    v15 = *v14;
    v16 = *(v14 + 1);
    swift_getObjectType();
    v21 = v15;
    v17 = *(v16 + 8);
    sub_1DD0DEC2C();
    OUTLINED_FUNCTION_6_80();
    sub_1DCFF8E30(v9, v18);
    v13 = 0;
  }

  v19 = sub_1DD0DB04C();
  return __swift_storeEnumTagSinglePayload(a1, v13, 1, v19);
}

void *sub_1DCFF3AFC(uint64_t a1, uint64_t a2)
{
  v2[4] = 0;
  v2[5] = 0;
  v5 = (v2 + OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_state);
  v6 = *(type metadata accessor for SnippetManager.SnippetManagerState(0) + 20);
  type metadata accessor for SnippetManager.SnippetRecord(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  *v5 = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_canSendAddViews) = 0;
  *(v2 + OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_canSendXPCUpdates) = 1;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

void sub_1DCFF3B94()
{
  OUTLINED_FUNCTION_50();
  v3 = type metadata accessor for SnippetManager.SnippetManagerState(0);
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  OUTLINED_FUNCTION_16();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE68, &qword_1DD109BF0);
  v12 = OUTLINED_FUNCTION_2(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_19_6();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_21_52();
  v39 = v0;
  v18 = (v0 + OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_state);
  OUTLINED_FUNCTION_156();
  v38 = v3;
  sub_1DCB09970(v18 + *(v3 + 20), v1, &qword_1ECCABE68, &qword_1DD109BF0);
  if (qword_1ECCA13B0 != -1)
  {
    OUTLINED_FUNCTION_3_122();
  }

  v19 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v19, qword_1ECCD2760);
  sub_1DCB09970(v1, v2, &qword_1ECCABE68, &qword_1DD109BF0);
  v20 = sub_1DD0DD8EC();
  v21 = sub_1DD0DE6CC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v40 = v23;
    *v22 = 136315138;
    v24 = sub_1DD0DE95C();
    v26 = v25;
    sub_1DCB0E9D8(v2, &qword_1ECCABE68, &qword_1DD109BF0);
    v27 = sub_1DCB10E9C(v24, v26, &v40);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_1DCAFC000, v20, v21, "Snippet Disappeared: OnScreen == %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {

    v28 = sub_1DCB0E9D8(v2, &qword_1ECCABE68, &qword_1DD109BF0);
  }

  v30 = *v18;
  MEMORY[0x1EEE9AC00](v28, v29);
  *(&v37 - 2) = v1;

  v31 = sub_1DCFF2E5C(sub_1DCFF4B08, (&v37 - 4), v30);
  v32 = *(v38 + 20);
  type metadata accessor for SnippetManager.SnippetRecord(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  *v10 = v31;
  sub_1DCFF352C(v10);
}

uint64_t sub_1DCFF3E94(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = sub_1DD0DB04C();
  v50 = *(v3 - 8);
  v4 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2628, &qword_1DD0E5C70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE68, &qword_1DD109BF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v49 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v47 - v24;
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v47 - v27;
  v29 = type metadata accessor for SnippetManager.SnippetRecord(0);
  v30 = (a1 + *(v29 + 20));
  v31 = *v30;
  v32 = v30[1];
  swift_getObjectType();
  v52 = v31;
  v33 = *(v32 + 8);
  sub_1DD0DEC2C();
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v3);
  sub_1DCB09970(v51, v16, &qword_1ECCABE68, &qword_1DD109BF0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v29) == 1)
  {
    sub_1DCB0E9D8(v16, &qword_1ECCABE68, &qword_1DD109BF0);
    v34 = 1;
  }

  else
  {
    v35 = &v16[*(v29 + 20)];
    v36 = *v35;
    v37 = *(v35 + 1);
    swift_getObjectType();
    v52 = v36;
    v38 = *(v37 + 8);
    sub_1DD0DEC2C();
    sub_1DCFF8E30(v16, type metadata accessor for SnippetManager.SnippetRecord);
    v34 = 0;
  }

  __swift_storeEnumTagSinglePayload(v25, v34, 1, v3);
  v39 = *(v7 + 48);
  sub_1DCB09970(v28, v11, &qword_1ECCA2618, &unk_1DD0E5C50);
  sub_1DCB09970(v25, &v11[v39], &qword_1ECCA2618, &unk_1DD0E5C50);
  if (__swift_getEnumTagSinglePayload(v11, 1, v3) != 1)
  {
    v41 = v49;
    sub_1DCB09970(v11, v49, &qword_1ECCA2618, &unk_1DD0E5C50);
    if (__swift_getEnumTagSinglePayload(&v11[v39], 1, v3) != 1)
    {
      v42 = v50;
      v43 = &v11[v39];
      v44 = v48;
      (*(v50 + 32))(v48, v43, v3);
      sub_1DCFFA578(&qword_1ECCA2630, 255, MEMORY[0x1E69695A8]);
      LODWORD(v51) = sub_1DD0DDF7C();
      v45 = *(v42 + 8);
      v45(v44, v3);
      sub_1DCB0E9D8(v25, &qword_1ECCA2618, &unk_1DD0E5C50);
      sub_1DCB0E9D8(v28, &qword_1ECCA2618, &unk_1DD0E5C50);
      v45(v41, v3);
      sub_1DCB0E9D8(v11, &qword_1ECCA2618, &unk_1DD0E5C50);
      v40 = v51 ^ 1;
      return v40 & 1;
    }

    sub_1DCB0E9D8(v25, &qword_1ECCA2618, &unk_1DD0E5C50);
    sub_1DCB0E9D8(v28, &qword_1ECCA2618, &unk_1DD0E5C50);
    (*(v50 + 8))(v41, v3);
    goto LABEL_9;
  }

  sub_1DCB0E9D8(v25, &qword_1ECCA2618, &unk_1DD0E5C50);
  sub_1DCB0E9D8(v28, &qword_1ECCA2618, &unk_1DD0E5C50);
  if (__swift_getEnumTagSinglePayload(&v11[v39], 1, v3) != 1)
  {
LABEL_9:
    sub_1DCB0E9D8(v11, &qword_1ECCA2628, &qword_1DD0E5C70);
    v40 = 1;
    return v40 & 1;
  }

  sub_1DCB0E9D8(v11, &qword_1ECCA2618, &unk_1DD0E5C50);
  v40 = 0;
  return v40 & 1;
}

void sub_1DCFF43C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);

  sub_1DCFF84E4();
}

uint64_t sub_1DCFF4434(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_6();
  v5 = sub_1DD0DB04C();
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6, v11);
  OUTLINED_FUNCTION_10_2();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_21_52();
  v17 = type metadata accessor for SnippetManager.SnippetRecord(0);
  v18 = (v2 + *(v17 + 20));
  v19 = *v18;
  v20 = v18[1];
  swift_getObjectType();
  v21 = *(v20 + 8);
  sub_1DD0DEC2C();
  v22 = (a2 + *(v17 + 20));
  v23 = *v22;
  v24 = v22[1];
  swift_getObjectType();
  v25 = *(v24 + 8);
  sub_1DD0DEC2C();
  LOBYTE(v23) = sub_1DD0DB01C();
  v26 = *(v8 + 8);
  v26(v14, v5);
  v26(v3, v5);
  return v23 & 1;
}

void sub_1DCFF4598()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABEA8, &qword_1DD109E90);
  OUTLINED_FUNCTION_20_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v68 - v7;
  v9 = type metadata accessor for SnippetManager.SnippetManagerState(0);
  v10 = OUTLINED_FUNCTION_20_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  OUTLINED_FUNCTION_16();
  v16 = v15 - v14;
  v17 = type metadata accessor for SnippetManager.SnippetManagerAction(0);
  v18 = OUTLINED_FUNCTION_2(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  OUTLINED_FUNCTION_10_2();
  v70 = v22 - v23;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v24, v25);
  OUTLINED_FUNCTION_33_2();
  v69 = v26;
  OUTLINED_FUNCTION_29_0();
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v31 = v68 - v30;
  MEMORY[0x1EEE9AC00](v29, v32);
  v34 = v68 - v33;
  if (qword_1ECCA13B0 != -1)
  {
    OUTLINED_FUNCTION_3_122();
  }

  v35 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v35, qword_1ECCD2760);
  v36 = sub_1DD0DD8EC();
  v37 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v38);
    _os_log_impl(&dword_1DCAFC000, v36, v37, "Checking if action is needed", v1, 2u);
    OUTLINED_FUNCTION_80();
  }

  v39 = OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_state;
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_12_71();
  sub_1DCFFA3F0(&v1[v39], v16);
  sub_1DCFF4B28();
  OUTLINED_FUNCTION_1_135();
  sub_1DCFF8E30(v16, v40);
  if (__swift_getEnumTagSinglePayload(v8, 1, v17) == 1)
  {
    sub_1DCB0E9D8(v8, &qword_1ECCABEA8, &qword_1DD109E90);
    v41 = sub_1DD0DD8EC();
    v42 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_22(v42))
    {
      v43 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v43);
      OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v44, v45, "No action needed");
      OUTLINED_FUNCTION_80();
    }
  }

  else
  {
    sub_1DCFFA5C0(v8, v34);
    OUTLINED_FUNCTION_4_114();
    sub_1DCFFA3F0(v34, v31);
    v46 = sub_1DD0DD8EC();
    v47 = sub_1DD0DE6DC();
    v48 = os_log_type_enabled(v46, v47);
    v68[1] = v17;
    if (v48)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v71[0] = v50;
      *v49 = 136315138;
      OUTLINED_FUNCTION_4_114();
      v51 = v69;
      sub_1DCFFA3F0(v31, v69);
      v52 = sub_1DD0DE02C();
      v68[0] = v34;
      v53 = v52;
      OUTLINED_FUNCTION_18_50();
      sub_1DCFF8E30(v31, v54);
      v55 = sub_1DCB10E9C(v53, v51, v71);

      *(v49 + 4) = v55;
      v34 = v68[0];
      _os_log_impl(&dword_1DCAFC000, v46, v47, "Performing action: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    else
    {

      sub_1DCFF8E30(v31, type metadata accessor for SnippetManager.SnippetManagerAction);
    }

    sub_1DCFF4F70();
    OUTLINED_FUNCTION_4_114();
    sub_1DCFFA3F0(v34, v70);
    v56 = sub_1DD0DD8EC();
    v57 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v71[0] = v59;
      *v58 = 136315138;
      OUTLINED_FUNCTION_4_114();
      v60 = v70;
      sub_1DCFFA3F0(v70, v69);
      v61 = sub_1DD0DE02C();
      OUTLINED_FUNCTION_18_50();
      v63 = v62;
      sub_1DCFF8E30(v64, v62);
      v65 = sub_1DCB10E9C(v61, v60, v71);

      *(v58 + 4) = v65;
      _os_log_impl(&dword_1DCAFC000, v56, v57, "Action completed: %s)", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();

      v66 = v34;
      v67 = v63;
    }

    else
    {

      sub_1DCFF8E30(v70, type metadata accessor for SnippetManager.SnippetManagerAction);
      v66 = OUTLINED_FUNCTION_33_1();
    }

    sub_1DCFF8E30(v66, v67);
  }

  OUTLINED_FUNCTION_49();
}

void sub_1DCFF4B28()
{
  OUTLINED_FUNCTION_50();
  v77 = v3;
  v4 = sub_1DD0DB04C();
  v5 = OUTLINED_FUNCTION_9(v4);
  v75 = v6;
  v76 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5, v9);
  OUTLINED_FUNCTION_10_2();
  v74 = v10 - v11;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_71_0();
  v73 = v14;
  v15 = OUTLINED_FUNCTION_12();
  v16 = type metadata accessor for SnippetManager.SnippetRecord(v15);
  v17 = OUTLINED_FUNCTION_9(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17, v22);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_19_6();
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_21_52();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABEB0, &qword_1DD109E98);
  OUTLINED_FUNCTION_2(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v73 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE68, &qword_1DD109BF0);
  OUTLINED_FUNCTION_20_0(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v73 - v37;
  if (*(*v0 + 16))
  {
    v39 = *(v19 + 80);
    OUTLINED_FUNCTION_2_110();
    sub_1DCFFA3F0(v40 + v41, v38);
    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  __swift_storeEnumTagSinglePayload(v38, v42, 1, v16);
  v43 = *(type metadata accessor for SnippetManager.SnippetManagerState(0) + 20);
  v44 = *(v25 + 48);
  sub_1DCC91890(v38, v31, &qword_1ECCABE68, &qword_1DD109BF0);
  sub_1DCB09970(v0 + v43, &v31[v44], &qword_1ECCABE68, &qword_1DD109BF0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v16);
  v46 = __swift_getEnumTagSinglePayload(&v31[v44], 1, v16);
  v47 = v46;
  if (EnumTagSinglePayload != 1)
  {
    v52 = v77;
    if (v46 == 1)
    {
      OUTLINED_FUNCTION_0_125();
      sub_1DCFFA5C0(v31, v52);
      v53 = type metadata accessor for SnippetManager.SnippetManagerAction(0);
    }

    else
    {
      sub_1DCFFA5C0(v31, v1);
      sub_1DCFFA5C0(&v31[v44], v2);
      if (sub_1DD0DB01C())
      {
        OUTLINED_FUNCTION_13_75();
        sub_1DCFF8E30(v2, v58);
        sub_1DCFF8E30(v1, type metadata accessor for SnippetManager.SnippetRecord);
        type metadata accessor for SnippetManager.SnippetManagerAction(0);
        OUTLINED_FUNCTION_31();
        goto LABEL_12;
      }

      v59 = (v1 + *(v16 + 20));
      v60 = *v59;
      v61 = v59[1];
      swift_getObjectType();
      v78 = v60;
      v62 = *(v61 + 8);
      v63 = v73;
      sub_1DD0DEC2C();
      v64 = (v2 + *(v16 + 20));
      v65 = *v64;
      v66 = v64[1];
      swift_getObjectType();
      v78 = v65;
      v67 = *(v66 + 8);
      v68 = v74;
      sub_1DD0DEC2C();
      sub_1DD0DB01C();
      v69 = *(v75 + 8);
      v70 = v68;
      v71 = v76;
      v69(v70, v76);
      v69(v63, v71);
      OUTLINED_FUNCTION_6_80();
      sub_1DCFF8E30(v2, v72);
      OUTLINED_FUNCTION_0_125();
      sub_1DCFFA5C0(v1, v52);
      v53 = type metadata accessor for SnippetManager.SnippetManagerAction(0);
    }

    swift_storeEnumTagMultiPayload();
    v54 = v52;
    v55 = 0;
    v56 = 1;
    v57 = v53;
LABEL_12:
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
    goto LABEL_13;
  }

  type metadata accessor for SnippetManager.SnippetManagerAction(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  if (v47 != 1)
  {
    sub_1DCB0E9D8(&v31[v44], &qword_1ECCABE68, &qword_1DD109BF0);
  }

LABEL_13:
  OUTLINED_FUNCTION_49();
}

void sub_1DCFF4F70()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_26_6();
  v138 = type metadata accessor for SnippetManager.SnippetManagerState(v2);
  v3 = OUTLINED_FUNCTION_2(v138);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  OUTLINED_FUNCTION_10_2();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_71_0();
  v139 = v12;
  OUTLINED_FUNCTION_12();
  v13 = sub_1DD0DB04C();
  v14 = OUTLINED_FUNCTION_9(v13);
  v136 = v15;
  v137 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14, v18);
  OUTLINED_FUNCTION_16();
  v135 = v20 - v19;
  v21 = OUTLINED_FUNCTION_12();
  v140 = type metadata accessor for SnippetManager.SnippetRecord(v21);
  v22 = OUTLINED_FUNCTION_2(v140);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22, v25);
  OUTLINED_FUNCTION_10_2();
  v134 = (v26 - v27);
  OUTLINED_FUNCTION_29_0();
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v32 = &v131 - v31;
  MEMORY[0x1EEE9AC00](v30, v33);
  OUTLINED_FUNCTION_33_2();
  v133 = v34;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v35, v36);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_24_1();
  v39 = MEMORY[0x1EEE9AC00](v37, v38);
  v41 = &v131 - v40;
  v43 = MEMORY[0x1EEE9AC00](v39, v42);
  v45 = &v131 - v44;
  v47 = MEMORY[0x1EEE9AC00](v43, v46);
  v49 = &v131 - v48;
  MEMORY[0x1EEE9AC00](v47, v50);
  v52 = &v131 - v51;
  v53 = type metadata accessor for SnippetManager.SnippetManagerAction(0);
  v54 = OUTLINED_FUNCTION_2(v53);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54, v57);
  OUTLINED_FUNCTION_16();
  v60 = v59 - v58;
  OUTLINED_FUNCTION_4_114();
  sub_1DCFFA3F0(v0, v60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_0_125();
    sub_1DCFFA5C0(v60, v41);
    v61 = OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_state;
    OUTLINED_FUNCTION_156();
    OUTLINED_FUNCTION_12_71();
    sub_1DCFFA3F0(v1 + v61, v9);
    v62 = OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_canSendXPCUpdates;
    OUTLINED_FUNCTION_156();
    v52 = v41;
    if (*(v1 + v62) == 1)
    {
      if (qword_1EDE46628 != -1)
      {
        swift_once();
      }

      sub_1DCB4E718(v141);
      __swift_destroy_boxed_opaque_existential_1Tm(v141);
      if ((RefreshableDeviceState.isHomePod.getter() & 1) == 0)
      {
        sub_1DCB4E718(v141);
        __swift_destroy_boxed_opaque_existential_1Tm(v141);
        if ((RefreshableDeviceState.isAppleTV.getter() & 1) == 0)
        {
          v126 = *v9;
          v127 = v139;
          v128 = *(v138 + 5);
          OUTLINED_FUNCTION_2_110();
          sub_1DCFFA3F0(v52, v127 + v128);
          OUTLINED_FUNCTION_41_30();
          sub_1DCFF352C(v127);
        }
      }

      if (qword_1ECCA13B0 != -1)
      {
        OUTLINED_FUNCTION_3_122();
      }

      v63 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v63, qword_1ECCD2760);
      v64 = sub_1DD0DD8EC();
      v65 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_22(v65))
      {
        v66 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v66);
        OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v67, v68, "Encore feature is disabled on HomePods and AppleTV devices we should not have reached here. This needs to be investigated.");
        OUTLINED_FUNCTION_80();
      }

      OUTLINED_FUNCTION_1_135();
      v130 = v9;
    }

    else
    {
      if (qword_1ECCA13B0 != -1)
      {
        OUTLINED_FUNCTION_3_122();
      }

      v90 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v90, qword_1ECCD2760);
      OUTLINED_FUNCTION_11_71();
      sub_1DCFFA3F0(v41, v32);
      v91 = v41;
      v92 = v134;
      sub_1DCFFA3F0(v91, v134);
      v93 = sub_1DD0DD8EC();
      v94 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v93, v94))
      {
        OUTLINED_FUNCTION_43_0();
        v142 = OUTLINED_FUNCTION_47_26();
        *v52 = 136315394;
        v138 = v9;
        v95 = v140;
        v141[0] = *&v32[*(v140 + 20)];
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABEA0, &unk_1DD109E80);
        sub_1DD0DE02C();
        OUTLINED_FUNCTION_17_50();
        v97 = v96;
        sub_1DCFF8E30(v32, v96);
        v98 = OUTLINED_FUNCTION_43_27();
        v100 = sub_1DCB10E9C(v98, v53, v99);

        *(v52 + 4) = v100;
        *(v52 + 6) = 2080;
        v101 = (v92 + *(v95 + 20));
        v102 = *v101;
        v103 = v101[1];
        swift_getObjectType();
        *&v141[0] = v102;
        v104 = *(v103 + 8);
        v105 = v135;
        sub_1DD0DEC2C();
        OUTLINED_FUNCTION_7_78();
        sub_1DCFFA578(v106, 255, v107);
        v108 = v137;
        sub_1DD0DF03C();
        v110 = v109;
        (*(v136 + 8))(v105, v108);
        sub_1DCFF8E30(v92, v97);
        v111 = OUTLINED_FUNCTION_43_27();
        v113 = sub_1DCB10E9C(v111, v110, v112);

        *(v52 + 14) = v113;
        _os_log_impl(&dword_1DCAFC000, v93, v94, "Not sending XPC update from flow %s with id %s since SnippetManager#canSendXPCUpdates is false", v52, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_80();
        v52 = v139;
        OUTLINED_FUNCTION_80();

        OUTLINED_FUNCTION_1_135();
        v130 = v138;
      }

      else
      {

        sub_1DCFF8E30(v32, type metadata accessor for SnippetManager.SnippetRecord);
        OUTLINED_FUNCTION_1_135();
        sub_1DCFF8E30(v9, v125);
        v130 = OUTLINED_FUNCTION_33_1();
      }
    }

    sub_1DCFF8E30(v130, v129);
  }

  else
  {
    OUTLINED_FUNCTION_0_125();
    sub_1DCFFA5C0(v60, v52);
    v69 = OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_canSendAddViews;
    OUTLINED_FUNCTION_156();
    if (*(v0 + v69) == 1)
    {
      if (qword_1ECCA13B0 != -1)
      {
        OUTLINED_FUNCTION_3_122();
      }

      v70 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v70, qword_1ECCD2760);
      OUTLINED_FUNCTION_11_71();
      sub_1DCFFA3F0(v52, v49);
      sub_1DCFFA3F0(v52, v45);
      v71 = sub_1DD0DD8EC();
      v72 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_22(v72))
      {
        v73 = OUTLINED_FUNCTION_43_0();
        v133 = swift_slowAlloc();
        v143[0] = v133;
        *v73 = 136315394;
        v74 = v140;
        v141[0] = *&v49[*(v140 + 20)];
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABEA0, &unk_1DD109E80);
        sub_1DD0DE02C();
        v132 = v0;
        OUTLINED_FUNCTION_17_50();
        v76 = v75;
        sub_1DCFF8E30(v49, v75);
        v77 = sub_1DCB10E9C(v0, v53, v143);

        *(v73 + 4) = v77;
        *(v73 + 12) = 2080;
        v78 = &v45[*(v74 + 20)];
        v134 = v52;
        v79 = *v78;
        v80 = *(v78 + 1);
        swift_getObjectType();
        *&v141[0] = v79;
        v81 = *(v80 + 8);
        v82 = v135;
        sub_1DD0DEC2C();
        OUTLINED_FUNCTION_7_78();
        sub_1DCFFA578(v83, 255, v84);
        v85 = v137;
        v86 = sub_1DD0DF03C();
        v88 = v87;
        (*(v136 + 8))(v82, v85);
        sub_1DCFF8E30(v45, v76);
        v89 = sub_1DCB10E9C(v86, v88, v143);
        v52 = v134;

        *(v73 + 14) = v89;
        _os_log_impl(&dword_1DCAFC000, v71, v132, "Rendering new snippet from flow %s with id %s over Ace", v73, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      else
      {

        OUTLINED_FUNCTION_13_75();
        sub_1DCFF8E30(v49, v120);
        sub_1DCFF8E30(v45, v71);
      }

      v121 = OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_state;
      OUTLINED_FUNCTION_156();
      v122 = *(v1 + v121);
      v123 = v139;
      v124 = *(v138 + 5);
      OUTLINED_FUNCTION_2_110();
      sub_1DCFFA3F0(v52, v123 + v124);
      OUTLINED_FUNCTION_41_30();
      sub_1DCFF352C(v123);
    }

    if (qword_1ECCA13B0 != -1)
    {
      OUTLINED_FUNCTION_3_122();
    }

    v114 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v114, qword_1ECCD2760);
    v115 = sub_1DD0DD8EC();
    v116 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_22(v116))
    {
      v117 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v117);
      OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v118, v119, "SnippetManager needs to send an AddViews, but can't send snippets right now. Will retry once SnippetManager#canSendAddViews is set to true");
      OUTLINED_FUNCTION_80();
    }
  }

  sub_1DCFF8E30(v52, type metadata accessor for SnippetManager.SnippetRecord);
  OUTLINED_FUNCTION_49();
}

void sub_1DCFF5BFC(void *a1, char a2)
{
  if (a2)
  {
    v3 = a1;
    if (qword_1ECCA13B0 != -1)
    {
      swift_once();
    }

    v4 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v4, qword_1ECCD2760);
    v5 = a1;
    oslog = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6EC();
    sub_1DCB79378(a1, 1);
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = a1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_1DCAFC000, oslog, v6, "Got an error submitted an AddViews. This may or may not be an issue depending on the error: %@", v7, 0xCu);
      sub_1DCB0E9D8(v8, qword_1ECCA8AD0, &qword_1DD0E4F90);
      MEMORY[0x1E12A8390](v8, -1, -1);
      MEMORY[0x1E12A8390](v7, -1, -1);
      sub_1DCB79378(a1, 1);
    }

    else
    {

      sub_1DCB79378(a1, 1);
    }
  }
}

void sub_1DCFF5DB8()
{
  OUTLINED_FUNCTION_50();
  v82 = v0;
  v2 = v1;
  v75 = v3;
  v5 = v4;
  v77 = v6;
  v7 = type metadata accessor for SnippetManager.SnippetRecord(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v10);
  OUTLINED_FUNCTION_16();
  v73 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE98, &unk_1DD109E70);
  OUTLINED_FUNCTION_20_0(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v71 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2460, &qword_1DD0E5228);
  v21 = OUTLINED_FUNCTION_9(v20);
  v76 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21, v25);
  OUTLINED_FUNCTION_10_2();
  v81 = v26 - v27;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_33_2();
  v80 = v30;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_33_2();
  v78 = v33;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_71_0();
  v74 = v36;
  v37 = 0;
  v38 = *(v5 + 16);
  v79 = MEMORY[0x1E69E7CC0];
  while (v38 != v37)
  {
    v39 = *(v8 + 80);
    OUTLINED_FUNCTION_19_32();
    sub_1DCFF6260(v5 + v40 + *(v8 + 72) * v37, v2, v19);
    if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
    {
      sub_1DCB0E9D8(v19, &qword_1ECCABE98, &unk_1DD109E70);
      ++v37;
    }

    else
    {
      v41 = v74;
      sub_1DCC91890(v19, v74, &qword_1ECCA2460, &qword_1DD0E5228);
      sub_1DCC91890(v41, v78, &qword_1ECCA2460, &qword_1DD0E5228);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = *(v79 + 16);
        sub_1DCE19D2C();
        v79 = v50;
      }

      v42 = *(v79 + 16);
      v43 = v42 + 1;
      if (v42 >= *(v79 + 24) >> 1)
      {
        v72 = v42 + 1;
        sub_1DCE19D2C();
        v43 = v72;
        v79 = v51;
      }

      ++v37;
      *(v79 + 16) = v43;
      v44 = *(v76 + 80);
      OUTLINED_FUNCTION_19_32();
      sub_1DCC91890(v48, v46 + v45 + *(v47 + 72) * v42, &qword_1ECCA2460, &qword_1DD0E5228);
    }
  }

  v83 = v79;

  sub_1DCFF7188(&v83);

  v52 = v83;
  v53 = *(v83 + 16);
  v54 = v77;
  if (v53)
  {
    v83 = MEMORY[0x1E69E7CC0];
    sub_1DCE06CA8(0, v53, 0);
    v55 = v83;
    v56 = v76;
    v57 = *(v76 + 80);
    OUTLINED_FUNCTION_19_32();
    v82 = v52;
    v59 = v52 + v58;
    v60 = *(v56 + 72);
    v61 = v73;
    do
    {
      v62 = v80;
      sub_1DCB09970(v59, v80, &qword_1ECCA2460, &qword_1DD0E5228);
      v63 = v62;
      v64 = v81;
      sub_1DCC91890(v63, v81, &qword_1ECCA2460, &qword_1DD0E5228);
      OUTLINED_FUNCTION_0_125();
      sub_1DCFFA5C0(v64, v61);
      v83 = v55;
      v66 = *(v55 + 16);
      v65 = *(v55 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_1DCE06CA8(v65 > 1, v66 + 1, 1);
        v55 = v83;
      }

      *(v55 + 16) = v66 + 1;
      v67 = *(v8 + 80);
      OUTLINED_FUNCTION_19_32();
      v68 = *(v8 + 72);
      OUTLINED_FUNCTION_0_125();
      sub_1DCFFA5C0(v61, v69);
      v59 += v60;
      --v53;
    }

    while (v53);

    v54 = v77;
  }

  else
  {

    v55 = MEMORY[0x1E69E7CC0];
  }

  v70 = type metadata accessor for SnippetManager.SnippetManagerState(0);
  sub_1DCB09970(v75, v54 + *(v70 + 20), &qword_1ECCABE68, &qword_1DD109BF0);
  *v54 = v55;
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCFF6260@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1DD0DB04C();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SnippetManager.SnippetRecord(0);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v49 - v19;
  v21 = a2(*(a1 + *(v18 + 20)), *(a1 + *(v18 + 20) + 8));
  if (v22)
  {
    v52 = a3;
    if (qword_1ECCA13B0 != -1)
    {
      swift_once();
    }

    v23 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v23, qword_1ECCD2760);
    sub_1DCFFA3F0(a1, v20);
    sub_1DCFFA3F0(a1, v16);
    v24 = sub_1DD0DD8EC();
    v25 = sub_1DD0DE70C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v56 = v51;
      *v26 = 136315394;
      v55 = *&v20[*(v11 + 20)];
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABEA0, &unk_1DD109E80);
      v27 = sub_1DD0DE02C();
      v49 = v24;
      v50 = v25;
      v28 = v27;
      v30 = v29;
      sub_1DCFF8E30(v20, type metadata accessor for SnippetManager.SnippetRecord);
      v31 = sub_1DCB10E9C(v28, v30, &v56);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      v32 = &v16[*(v11 + 20)];
      v33 = *v32;
      v34 = *(v32 + 1);
      swift_getObjectType();
      *&v55 = v33;
      v35 = *(v34 + 8);
      sub_1DD0DEC2C();
      sub_1DCFFA578(&qword_1EDE4D650, 255, MEMORY[0x1E69695A8]);
      v36 = v54;
      v37 = sub_1DD0DF03C();
      v39 = v38;
      (*(v53 + 8))(v10, v36);
      sub_1DCFF8E30(v16, type metadata accessor for SnippetManager.SnippetRecord);
      v40 = sub_1DCB10E9C(v37, v39, &v56);

      *(v26 + 14) = v40;
      v41 = v49;
      _os_log_impl(&dword_1DCAFC000, v49, v50, "Dropping SnippetRecord for Snippet since Flow is not in the stack. Flow %s with ID: %s", v26, 0x16u);
      v42 = v51;
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v42, -1, -1);
      MEMORY[0x1E12A8390](v26, -1, -1);
    }

    else
    {

      sub_1DCFF8E30(v20, type metadata accessor for SnippetManager.SnippetRecord);
      sub_1DCFF8E30(v16, type metadata accessor for SnippetManager.SnippetRecord);
    }

    v47 = v52;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2460, &qword_1DD0E5228);
    return __swift_storeEnumTagSinglePayload(v47, 1, 1, v48);
  }

  else
  {
    v43 = v21;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2460, &qword_1DD0E5228);
    v45 = *(v44 + 48);
    sub_1DCFFA3F0(a1, a3);
    *(a3 + v45) = v43;
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v44);
  }
}

uint64_t sub_1DCFF670C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DD0DB04C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void *SnippetManager.deinit()
{
  v1 = v0[3];

  v2 = v0[5];
  sub_1DCB370A4(v0[4]);
  OUTLINED_FUNCTION_1_135();
  sub_1DCFF8E30(v0 + v3, v4);
  return v0;
}

uint64_t SnippetManager.__deallocating_deinit()
{
  SnippetManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1DCFF6834(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1DD0DCF8C();
}

void sub_1DCFF6860()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE70, &qword_1DD109BF8);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_5_115();
  sub_1DCFFA578(v0, v1, v2);
  sub_1DD0DCEDC();
}

void sub_1DCFF6918()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE70, &qword_1DD109BF8);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_5_115();
  sub_1DCFFA578(v0, v1, v2);
  sub_1DD0DCF8C();
}

void sub_1DCFF69D8()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_11_5(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE70, &qword_1DD109BF8);
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_115();
  sub_1DCFFA578(v2, v3, v4);
  sub_1DD0DCECC();
}

void sub_1DCFF6AB4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE80, &qword_1DD109C48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  v10 = *a2;
  sub_1DCFF6B88(v8);
}

void sub_1DCFF6B88(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE80, &qword_1DD109C48);
  OUTLINED_FUNCTION_9(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v13 - v10;
  OUTLINED_FUNCTION_156();
  v12 = *(v1 + 24);
  (*(v5 + 16))(v11, a1, v3);
  sub_1DD0DCF8C();
}

void sub_1DCFF6C90()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *OUTLINED_FUNCTION_11_5(v2) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE80, &qword_1DD109C48);
  v1[1] = v3;
  v4 = *(v3 - 8);
  v1[2] = v4;
  v5 = *(v4 + 64);
  v1[3] = __swift_coroFrameAllocStub(v5);
  v1[4] = __swift_coroFrameAllocStub(v5);
  sub_1DCC627B8();
}

void sub_1DCFF6D6C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  if (a2)
  {
    v4 = *v2;
    (*(v2[2] + 16))((*a1)[3], (*a1)[4], v2[1]);
    sub_1DCFF6B88(v3);
  }

  v5 = *v2;
  sub_1DCFF6B88((*a1)[4]);
}

void SnippetManagerProvider.__allocating_init(snippetManager:)()
{
  OUTLINED_FUNCTION_5_2();
  swift_allocObject();
  SnippetManagerProvider.init(snippetManager:)();
}

void SnippetManagerProvider.init(snippetManager:)()
{
  OUTLINED_FUNCTION_40_33();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE70, &qword_1DD109BF8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1DD0DCE9C();
}

void SnippetManagerProvider.__allocating_init(storage:)()
{
  OUTLINED_FUNCTION_5_2();
  swift_allocObject();
  SnippetManagerProvider.init(storage:)();
}

void SnippetManagerProvider.init(storage:)()
{
  OUTLINED_FUNCTION_40_33();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE70, &qword_1DD109BF8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1DD0DCE9C();
}

uint64_t SnippetManagerProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t SnippetManagerProvider.__deallocating_deinit()
{
  SnippetManagerProvider.deinit();
  OUTLINED_FUNCTION_5_2();

  return swift_deallocClassInstance();
}

void sub_1DCFF704C()
{
  type metadata accessor for SnippetManagerProvider();

    ;
  }
}

void sub_1DCFF7098()
{
  type metadata accessor for SnippetManagerProvider();

  sub_1DD0DCF8C();
}

uint64_t sub_1DCFF70E8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SnippetManagerProvider();
  result = sub_1DD0DDAFC();
  *a1 = result;
  return result;
}

void SiriEnvironment.snippetManagerProvider.getter()
{
  type metadata accessor for SnippetManagerProvider();
  OUTLINED_FUNCTION_5_115();
  sub_1DCFFA578(v0, v1, v2);

  sub_1DD0DCA7C();
}

uint64_t sub_1DCFF7188(size_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2460, &qword_1DD0E5228) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1DCC224F8(v3);
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1DCFF723C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1DCFF723C(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DD0DF02C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2460, &qword_1DD0E5228);
        v6 = sub_1DD0DE38C();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2460, &qword_1DD0E5228) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1DCFF75F0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1DCFF7384(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DCFF7384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2460, &qword_1DD0E5228);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v45 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v48 = &v36 - v15;
  result = MEMORY[0x1EEE9AC00](v14, v16);
  v47 = &v36 - v19;
  v38 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v18 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v43 = -v21;
    v44 = v20;
    v23 = a1 - a3;
    v37 = v21;
    v24 = v20 + v21 * a3;
    v25 = &qword_1ECCA2460;
    v46 = v8;
    while (2)
    {
      v41 = v22;
      v42 = a3;
      v39 = v24;
      v40 = v23;
      do
      {
        v26 = v47;
        sub_1DCB09970(v24, v47, v25, &qword_1DD0E5228);
        v27 = v25;
        v28 = v48;
        sub_1DCB09970(v22, v48, v27, &qword_1DD0E5228);
        v29 = *(v8 + 48);
        v30 = *(v26 + v29);
        v31 = *(v28 + v29);
        v32 = v28;
        v25 = v27;
        sub_1DCB0E9D8(v32, v27, &qword_1DD0E5228);
        result = sub_1DCB0E9D8(v26, v27, &qword_1DD0E5228);
        v33 = v31 < v30;
        v8 = v46;
        if (!v33)
        {
          break;
        }

        if (!v44)
        {
          __break(1u);
          return result;
        }

        v34 = v45;
        sub_1DCC91890(v24, v45, v27, &qword_1DD0E5228);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1DCC91890(v34, v22, v27, &qword_1DD0E5228);
        v22 += v43;
        v24 += v43;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v42 + 1;
      v22 = v41 + v37;
      v23 = v40 - 1;
      v24 = v39 + v37;
      if (v42 + 1 != v38)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DCFF75F0(uint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v116 = a1;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2460, &qword_1DD0E5228);
  v123 = *(v133 - 8);
  v7 = *(v123 + 64);
  v9 = MEMORY[0x1EEE9AC00](v133, v8);
  v120 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v130 = &v115 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v132 = &v115 - v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v131 = &v115 - v18;
  v19 = a3[1];
  v125 = a3;
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_102:
    v127 = v21;
    v21 = *v116;
    if (!*v116)
    {
      goto LABEL_142;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v126;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_104:
      v108 = (v127 + 16);
      for (i = *(v127 + 2); i >= 2; *v108 = i)
      {
        if (!*v125)
        {
          goto LABEL_139;
        }

        v110 = &v127[16 * i];
        v111 = *v110;
        v112 = &v108[2 * i];
        v113 = *(v112 + 1);
        sub_1DCFF7F38(*v125 + *(v123 + 72) * *v110, *v125 + *(v123 + 72) * *v112, *v125 + *(v123 + 72) * v113, v21);
        if (v4)
        {
          break;
        }

        if (v113 < v111)
        {
          goto LABEL_127;
        }

        if (i - 2 >= *v108)
        {
          goto LABEL_128;
        }

        *v110 = v111;
        *(v110 + 1) = v113;
        v114 = *v108 - i;
        if (*v108 < i)
        {
          goto LABEL_129;
        }

        i = *v108 - 1;
        sub_1DCC223A4(v112 + 16, v114, v112);
      }

LABEL_100:

      return;
    }

LABEL_136:
    v127 = sub_1DCC22390(v127);
    goto LABEL_104;
  }

  v115 = a4;
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v117 = v20;
    if (v20 + 1 < v19)
    {
      v127 = v21;
      v128 = v20 + 1;
      v4 = v20;
      v24 = *v125;
      v25 = *(v123 + 72);
      v21 = *v125 + v25 * v23;
      v26 = v131;
      sub_1DCB09970(v21, v131, &qword_1ECCA2460, &qword_1DD0E5228);
      v27 = v132;
      sub_1DCB09970(v24 + v25 * v4, v132, &qword_1ECCA2460, &qword_1DD0E5228);
      v28 = *(v133 + 48);
      v29 = *(v26 + v28);
      v121 = *(v27 + v28);
      v122 = v29;
      sub_1DCB0E9D8(v27, &qword_1ECCA2460, &qword_1DD0E5228);
      sub_1DCB0E9D8(v26, &qword_1ECCA2460, &qword_1DD0E5228);
      v30 = v4 + 2;
      v124 = v25;
      v31 = v24 + v25 * (v4 + 2);
      while (1)
      {
        v32 = v30;
        if (++v128 >= v19)
        {
          break;
        }

        LODWORD(v129) = v121 < v122;
        v33 = v131;
        sub_1DCB09970(v31, v131, &qword_1ECCA2460, &qword_1DD0E5228);
        v34 = v19;
        v35 = v132;
        sub_1DCB09970(v21, v132, &qword_1ECCA2460, &qword_1DD0E5228);
        v36 = *(v133 + 48);
        v4 = *(v33 + v36);
        v37 = *(v35 + v36);
        v38 = v35;
        v19 = v34;
        sub_1DCB0E9D8(v38, &qword_1ECCA2460, &qword_1DD0E5228);
        sub_1DCB0E9D8(v33, &qword_1ECCA2460, &qword_1DD0E5228);
        v31 += v124;
        v21 += v124;
        v30 = v32 + 1;
        if (((v129 ^ (v37 >= v4)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v128 = v19;
LABEL_9:
      if (v121 < v122)
      {
        v23 = v128;
        v22 = v117;
        if (v128 < v117)
        {
          goto LABEL_133;
        }

        if (v117 >= v128)
        {
          v21 = v127;
          goto LABEL_30;
        }

        if (v19 >= v32)
        {
          v39 = v32;
        }

        else
        {
          v39 = v19;
        }

        v40 = v124 * (v39 - 1);
        v41 = v124 * v39;
        v42 = v117 * v124;
        v43 = v128;
        v44 = v117;
        do
        {
          if (v44 != --v43)
          {
            v4 = *v125;
            if (!*v125)
            {
              goto LABEL_140;
            }

            sub_1DCC91890(v4 + v42, v120, &qword_1ECCA2460, &qword_1DD0E5228);
            v45 = v42 < v40 || v4 + v42 >= (v4 + v41);
            if (v45)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v42 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1DCC91890(v120, v4 + v40, &qword_1ECCA2460, &qword_1DD0E5228);
          }

          ++v44;
          v40 -= v124;
          v41 -= v124;
          v42 += v124;
        }

        while (v44 < v43);
      }

      v21 = v127;
      v23 = v128;
      v22 = v117;
    }

LABEL_30:
    v46 = v125[1];
    if (v23 < v46)
    {
      if (__OFSUB__(v23, v22))
      {
        goto LABEL_132;
      }

      if (v23 - v22 < v115)
      {
        break;
      }
    }

LABEL_48:
    if (v23 < v22)
    {
      goto LABEL_131;
    }

    v60 = swift_isUniquelyReferenced_nonNull_native();
    v128 = v23;
    if ((v60 & 1) == 0)
    {
      v104 = *(v21 + 16);
      sub_1DCE18BB0();
      v21 = v105;
    }

    v61 = *(v21 + 16);
    v62 = v61 + 1;
    if (v61 >= *(v21 + 24) >> 1)
    {
      sub_1DCE18BB0();
      v21 = v106;
    }

    *(v21 + 16) = v62;
    v63 = v21 + 32;
    v64 = (v21 + 32 + 16 * v61);
    v65 = v128;
    *v64 = v117;
    v64[1] = v65;
    v129 = *v116;
    if (!v129)
    {
      goto LABEL_141;
    }

    if (v61)
    {
      v127 = v21;
      while (1)
      {
        v66 = v62 - 1;
        v67 = (v63 + 16 * (v62 - 1));
        v68 = (v21 + 16 * v62);
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v69 = *(v21 + 32);
          v70 = *(v21 + 40);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_69:
          if (v72)
          {
            goto LABEL_118;
          }

          v84 = *v68;
          v83 = v68[1];
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_121;
          }

          v88 = v67[1];
          v89 = v88 - *v67;
          if (__OFSUB__(v88, *v67))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v86, v89))
          {
            goto LABEL_126;
          }

          if (v86 + v89 >= v71)
          {
            if (v71 < v89)
            {
              v66 = v62 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v62 < 2)
        {
          goto LABEL_120;
        }

        v91 = *v68;
        v90 = v68[1];
        v79 = __OFSUB__(v90, v91);
        v86 = v90 - v91;
        v87 = v79;
LABEL_84:
        if (v87)
        {
          goto LABEL_123;
        }

        v93 = *v67;
        v92 = v67[1];
        v79 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v79)
        {
          goto LABEL_125;
        }

        if (v94 < v86)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v66 - 1 >= v62)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v125)
        {
          goto LABEL_138;
        }

        v98 = (v63 + 16 * (v66 - 1));
        v99 = *v98;
        v100 = v63;
        v101 = v66;
        v21 = v63 + 16 * v66;
        v4 = *(v21 + 8);
        v102 = v126;
        sub_1DCFF7F38(*v125 + *(v123 + 72) * *v98, *v125 + *(v123 + 72) * *v21, *v125 + *(v123 + 72) * v4, v129);
        v126 = v102;
        if (v102)
        {
          goto LABEL_100;
        }

        if (v4 < v99)
        {
          goto LABEL_113;
        }

        v103 = *(v127 + 2);
        if (v101 > v103)
        {
          goto LABEL_114;
        }

        *v98 = v99;
        v98[1] = v4;
        if (v101 >= v103)
        {
          goto LABEL_115;
        }

        v62 = v103 - 1;
        sub_1DCC223A4((v21 + 16), v103 - 1 - v101, v21);
        v21 = v127;
        *(v127 + 2) = v103 - 1;
        v63 = v100;
        if (v103 <= 2)
        {
          goto LABEL_98;
        }
      }

      v73 = v63 + 16 * v62;
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_116;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_117;
      }

      v80 = v68[1];
      v81 = v80 - *v68;
      if (__OFSUB__(v80, *v68))
      {
        goto LABEL_119;
      }

      v79 = __OFADD__(v71, v81);
      v82 = v71 + v81;
      if (v79)
      {
        goto LABEL_122;
      }

      if (v82 >= v76)
      {
        v96 = *v67;
        v95 = v67[1];
        v79 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v79)
        {
          goto LABEL_130;
        }

        if (v71 < v97)
        {
          v66 = v62 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v19 = v125[1];
    v20 = v128;
    if (v128 >= v19)
    {
      goto LABEL_102;
    }
  }

  v47 = v22 + v115;
  if (__OFADD__(v22, v115))
  {
    goto LABEL_134;
  }

  if (v47 >= v46)
  {
    v47 = v125[1];
  }

  if (v47 < v22)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v23 == v47)
  {
    goto LABEL_48;
  }

  v127 = v21;
  v48 = *(v123 + 72);
  v49 = *v125 + v48 * (v23 - 1);
  v50 = -v48;
  v4 = v22 - v23;
  v129 = *v125;
  v118 = v48;
  v119 = v47;
  v51 = v129 + v23 * v48;
  v52 = v133;
LABEL_39:
  v128 = v23;
  v121 = v51;
  v122 = v4;
  v124 = v49;
  v53 = v49;
  while (1)
  {
    v54 = v131;
    sub_1DCB09970(v51, v131, &qword_1ECCA2460, &qword_1DD0E5228);
    v55 = v132;
    sub_1DCB09970(v53, v132, &qword_1ECCA2460, &qword_1DD0E5228);
    v56 = *(v52 + 48);
    v57 = *(v54 + v56);
    v58 = *(v55 + v56);
    sub_1DCB0E9D8(v55, &qword_1ECCA2460, &qword_1DD0E5228);
    sub_1DCB0E9D8(v54, &qword_1ECCA2460, &qword_1DD0E5228);
    if (v58 >= v57)
    {
      v52 = v133;
LABEL_46:
      v23 = v128 + 1;
      v49 = v124 + v118;
      v4 = v122 - 1;
      v51 = v121 + v118;
      if (v128 + 1 == v119)
      {
        v23 = v119;
        v21 = v127;
        v22 = v117;
        goto LABEL_48;
      }

      goto LABEL_39;
    }

    if (!v129)
    {
      break;
    }

    v59 = v130;
    sub_1DCC91890(v51, v130, &qword_1ECCA2460, &qword_1DD0E5228);
    v52 = v133;
    swift_arrayInitWithTakeFrontToBack();
    sub_1DCC91890(v59, v53, &qword_1ECCA2460, &qword_1DD0E5228);
    v53 += v50;
    v51 += v50;
    v45 = __CFADD__(v4++, 1);
    if (v45)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_1DCFF7F38(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2460, &qword_1DD0E5228);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v59 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v11, v13);
  v60 = &v52 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v18 = a2 - a1;
  v19 = a2 - a1 == 0x8000000000000000 && v17 == -1;
  if (v19)
  {
    goto LABEL_61;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v22 = v18 / v17;
  v65 = a1;
  v64 = a4;
  v23 = v20 / v17;
  v61 = v8;
  if (v18 / v17 >= v20 / v17)
  {
    sub_1DCD3F630();
    v36 = a4 + v23 * v17;
    v37 = -v17;
    v38 = v36;
    v55 = -v17;
    v56 = a4;
    v62 = a1;
LABEL_37:
    v57 = a2 + v37;
    v39 = v38;
    v54 = v38;
    while (1)
    {
      if (v36 <= a4)
      {
        v65 = a2;
        v63 = v39;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v53 = v39;
      v40 = a3 + v37;
      v41 = v36 + v37;
      v42 = v36 + v37;
      v43 = v59;
      v44 = v60;
      v45 = v36;
      sub_1DCB09970(v42, v60, &qword_1ECCA2460, &qword_1DD0E5228);
      sub_1DCB09970(v57, v43, &qword_1ECCA2460, &qword_1DD0E5228);
      v46 = v43;
      v47 = *(v61 + 48);
      v58 = *(v44 + v47);
      v48 = *(v43 + v47);
      sub_1DCB0E9D8(v46, &qword_1ECCA2460, &qword_1DD0E5228);
      sub_1DCB0E9D8(v44, &qword_1ECCA2460, &qword_1DD0E5228);
      if (v48 < v58)
      {
        if (a3 < a2 || v40 >= a2)
        {
          a2 = v57;
          swift_arrayInitWithTakeFrontToBack();
          v38 = v53;
          a3 = v40;
          v37 = v55;
          a4 = v56;
          a1 = v62;
          v36 = v45;
        }

        else
        {
          v38 = v53;
          v19 = a3 == a2;
          a4 = v56;
          v51 = v57;
          a2 = v57;
          a1 = v62;
          a3 = v40;
          v37 = v55;
          v36 = v45;
          if (!v19)
          {
            v38 = v53;
            swift_arrayInitWithTakeBackToFront();
            v36 = v45;
            a2 = v51;
          }
        }

        goto LABEL_37;
      }

      if (a3 < v45 || v40 >= v45)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v40;
        v36 = v41;
        v39 = v41;
        v37 = v55;
        a4 = v56;
        a1 = v62;
        v38 = v54;
      }

      else
      {
        v39 = v41;
        v19 = v45 == a3;
        a3 = v40;
        v36 = v41;
        v37 = v55;
        a4 = v56;
        a1 = v62;
        v38 = v54;
        if (!v19)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v40;
          v36 = v41;
          v39 = v41;
        }
      }
    }

    v65 = a2;
    v63 = v38;
  }

  else
  {
    sub_1DCD3F630();
    v57 = a3;
    v58 = a4 + v22 * v17;
    v63 = v58;
    while (a4 < v58 && a2 < a3)
    {
      v62 = a1;
      v25 = v17;
      v26 = v60;
      sub_1DCB09970(a2, v60, &qword_1ECCA2460, &qword_1DD0E5228);
      v27 = a4;
      v28 = a4;
      v29 = v59;
      sub_1DCB09970(v27, v59, &qword_1ECCA2460, &qword_1DD0E5228);
      v30 = *(v8 + 48);
      v31 = *(v26 + v30);
      v32 = *(v29 + v30);
      sub_1DCB0E9D8(v29, &qword_1ECCA2460, &qword_1DD0E5228);
      sub_1DCB0E9D8(v26, &qword_1ECCA2460, &qword_1DD0E5228);
      v17 = v25;
      if (v32 >= v31)
      {
        a4 = v28 + v25;
        v33 = v62;
        if (v62 < v28 || v62 >= a4)
        {
          v8 = v61;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v8 = v61;
          if (v62 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v64 = v28 + v25;
      }

      else
      {
        v33 = v62;
        v34 = v62 < a2 || v62 >= a2 + v25;
        a4 = v28;
        if (v34)
        {
          v8 = v61;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v8 = v61;
          if (v62 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a2 += v25;
      }

      a1 = v33 + v25;
      v65 = a1;
      a3 = v57;
    }
  }

LABEL_59:
  sub_1DCFF83F8(&v65, &v64, &v63);
  return 1;
}

uint64_t sub_1DCFF83F8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2460, &qword_1DD0E5228);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1DCFF84E4()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v66 = v8;
  v10 = v9;
  v11 = type metadata accessor for SnippetManager.SnippetManagerState(0);
  v12 = OUTLINED_FUNCTION_2(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_19_6();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_21_52();
  v18 = type metadata accessor for SnippetManager.SnippetRecord(0);
  v65 = OUTLINED_FUNCTION_9(v18);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v65, v21);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v24, v25);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_71_0();
  v61 = v30;
  OUTLINED_FUNCTION_12();
  v64 = sub_1DD0DB04C();
  v31 = OUTLINED_FUNCTION_9(v64);
  v67 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31, v35);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v36, v37);
  OUTLINED_FUNCTION_71_0();
  v63 = v38;
  v71[3] = v3;
  v71[4] = v1;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v71);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1Tm, v7, v3);
  if (qword_1ECCA13B0 != -1)
  {
    OUTLINED_FUNCTION_3_122();
  }

  v40 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v40, qword_1ECCD2760);
  swift_unknownObjectRetain();
  v41 = sub_1DD0DD8EC();
  v42 = sub_1DD0DE6CC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v41, v42))
  {
    v62 = v42;
    v43 = OUTLINED_FUNCTION_43_0();
    v68[0] = swift_slowAlloc();
    *v43 = 136315394;
    v69 = v10;
    v70 = v66;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABEA0, &unk_1DD109E80);
    v44 = sub_1DD0DE02C();
    v46 = sub_1DCB10E9C(v44, v45, v68);

    *(v43 + 4) = v46;
    *(v43 + 12) = 2080;
    swift_getObjectType();
    v69 = v10;
    v47 = *(v66 + 8);
    sub_1DD0DEC2C();
    OUTLINED_FUNCTION_7_78();
    sub_1DCFFA578(v48, 255, v49);
    v50 = sub_1DD0DF03C();
    v52 = v51;
    (*(v67 + 8))(v63, v64);
    v53 = sub_1DCB10E9C(v50, v52, v68);

    *(v43 + 14) = v53;
    _os_log_impl(&dword_1DCAFC000, v41, v62, "Got new snippet from flow %s with id %s", v43, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  OUTLINED_FUNCTION_156();
  if (*(v5 + 32))
  {
    v60 = *(v5 + 32);
    v54 = *(v5 + 40);
    sub_1DCB17CA0(v71, v61 + *(v65 + 28));
    sub_1DD0DCF8C();
  }

  v55 = sub_1DD0DD8EC();
  v56 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_22(v56))
  {
    v57 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v57);
    OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v58, v59, "Received a new snippet before SnippetManager.positionLookup has been set. This is a noop; snippet will be ignored");
    OUTLINED_FUNCTION_80();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v71);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCFF8E30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DCFF8EFC()
{
  result = type metadata accessor for SnippetManager.SnippetManagerState(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_1DCFF930C(void *a1, void *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    sub_1DD0DCF8C();
  }

  v5 = *(a3 + 20);
  v6 = a1 + v5;
  v7 = a2 + v5;
  v8 = type metadata accessor for SnippetManager.SnippetRecord(0);

  if (__swift_getEnumTagSinglePayload(v7, 1, v8))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE68, &qword_1DD109BF0);
    memcpy(v6, v7, *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = sub_1DD0DB04C();
    (*(*(v10 - 8) + 16))(v6, v7, v10);
    *&v6[v8[5]] = *&v7[v8[5]];
    v11 = v8[6];
    v12 = *&v7[v11];
    *&v6[v11] = v12;
    v13 = v8[7];
    v14 = &v6[v13];
    v15 = &v7[v13];
    v16 = *(v15 + 24);
    *&v6[v13 + 24] = v16;
    v17 = v16;
    v18 = **(v16 - 8);
    swift_unknownObjectRetain();
    v19 = v12;
    v18(v14, v15, v17);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
  }

  return a1;
}

uint64_t sub_1DCFF94DC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = a1 + *(a2 + 20);
  v6 = type metadata accessor for SnippetManager.SnippetRecord(0);
  result = __swift_getEnumTagSinglePayload(v5, 1, v6);
  if (!result)
  {
    v8 = sub_1DD0DB04C();
    (*(*(v8 - 8) + 8))(v5, v8);
    v9 = *(v5 + v6[5]);
    swift_unknownObjectRelease();

    return __swift_destroy_boxed_opaque_existential_1Tm((v5 + v6[7]));
  }

  return result;
}

void *sub_1DCFF958C(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = type metadata accessor for SnippetManager.SnippetRecord(0);

  if (__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE68, &qword_1DD109BF0);
    memcpy(v5, v6, *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = sub_1DD0DB04C();
    (*(*(v9 - 8) + 16))(v5, v6, v9);
    *&v5[v7[5]] = *&v6[v7[5]];
    v10 = v7[6];
    v11 = *&v6[v10];
    *&v5[v10] = v11;
    v12 = v7[7];
    v13 = &v5[v12];
    v14 = &v6[v12];
    v15 = *(v14 + 24);
    *&v5[v12 + 24] = v15;
    v16 = v15;
    v17 = **(v15 - 8);
    swift_unknownObjectRetain();
    v18 = v11;
    v17(v13, v14, v16);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  }

  return a1;
}

uint64_t *sub_1DCFF9714(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = type metadata accessor for SnippetManager.SnippetRecord(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v10);
  v12 = __swift_getEnumTagSinglePayload(v9, 1, v10);
  if (!EnumTagSinglePayload)
  {
    if (!v12)
    {
      v24 = sub_1DD0DB04C();
      (*(*(v24 - 8) + 24))(v8, v9, v24);
      v25 = v10[5];
      v26 = &v8[v25];
      v27 = &v9[v25];
      v28 = *(v27 + 1);
      v29 = *v26;
      *v26 = *v27;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(v26 + 1) = v28;
      v30 = v10[6];
      v31 = *&v9[v30];
      v32 = *&v8[v30];
      *&v8[v30] = v31;
      v33 = v31;

      __swift_assign_boxed_opaque_existential_1(&v8[v10[7]], &v9[v10[7]]);
      return a1;
    }

    sub_1DCFF8E30(v8, type metadata accessor for SnippetManager.SnippetRecord);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE68, &qword_1DD109BF0);
    memcpy(v8, v9, *(*(v22 - 8) + 64));
    return a1;
  }

  v13 = sub_1DD0DB04C();
  (*(*(v13 - 8) + 16))(v8, v9, v13);
  *&v8[v10[5]] = *&v9[v10[5]];
  v14 = v10[6];
  v15 = *&v9[v14];
  *&v8[v14] = v15;
  v16 = v10[7];
  v17 = &v8[v16];
  v18 = &v9[v16];
  v19 = *(v18 + 3);
  *(v17 + 3) = v19;
  *(v17 + 4) = *(v18 + 4);
  v20 = **(v19 - 8);
  swift_unknownObjectRetain();
  v21 = v15;
  v20(v17, v18, v19);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  return a1;
}

void *sub_1DCFF9978(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = type metadata accessor for SnippetManager.SnippetRecord(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE68, &qword_1DD109BF0);
    memcpy(v5, v6, *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = sub_1DD0DB04C();
    (*(*(v9 - 8) + 32))(v5, v6, v9);
    *&v5[v7[5]] = *&v6[v7[5]];
    *&v5[v7[6]] = *&v6[v7[6]];
    v10 = v7[7];
    v11 = &v5[v10];
    v12 = &v6[v10];
    v13 = *(v12 + 1);
    *v11 = *v12;
    *(v11 + 1) = v13;
    *(v11 + 4) = *(v12 + 4);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  }

  return a1;
}

uint64_t *sub_1DCFF9A94(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = type metadata accessor for SnippetManager.SnippetRecord(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v10);
  v12 = __swift_getEnumTagSinglePayload(v9, 1, v10);
  if (!EnumTagSinglePayload)
  {
    if (!v12)
    {
      v20 = sub_1DD0DB04C();
      (*(*(v20 - 8) + 40))(v8, v9, v20);
      v21 = v10[5];
      v22 = &v8[v21];
      v23 = &v9[v21];
      v24 = *(v23 + 1);
      v25 = *v22;
      *v22 = *v23;
      swift_unknownObjectRelease();
      *(v22 + 1) = v24;
      v26 = v10[6];
      v27 = *&v8[v26];
      *&v8[v26] = *&v9[v26];

      v28 = v10[7];
      v29 = &v8[v28];
      v30 = &v9[v28];
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      v31 = *(v30 + 1);
      *v29 = *v30;
      *(v29 + 1) = v31;
      v29[4] = *(v30 + 4);
      return a1;
    }

    sub_1DCFF8E30(v8, type metadata accessor for SnippetManager.SnippetRecord);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE68, &qword_1DD109BF0);
    memcpy(v8, v9, *(*(v18 - 8) + 64));
    return a1;
  }

  v13 = sub_1DD0DB04C();
  (*(*(v13 - 8) + 32))(v8, v9, v13);
  *&v8[v10[5]] = *&v9[v10[5]];
  *&v8[v10[6]] = *&v9[v10[6]];
  v14 = v10[7];
  v15 = &v8[v14];
  v16 = &v9[v14];
  v17 = *(v16 + 1);
  *v15 = *v16;
  *(v15 + 1) = v17;
  *(v15 + 4) = *(v16 + 4);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  return a1;
}

void sub_1DCFF9CC0()
{
  sub_1DCFF9D5C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

void sub_1DCFF9D5C()
{
  if (!qword_1EDE49900)
  {
    type metadata accessor for SnippetManager.SnippetRecord(255);
    v0 = sub_1DD0DE97C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE49900);
    }
  }
}

void *sub_1DCFF9DB4(void *a1, void *a2, int *a3)
{
  if ((*(*(a3 - 1) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = *(a2 + v7);
  *(a1 + v7) = v8;
  v9 = a3[7];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(v11 + 24);
  *(a1 + v9 + 24) = v12;
  v13 = v12;
  v14 = **(v12 - 8);
  swift_unknownObjectRetain();
  v15 = v8;
  v14(v10, v11, v13);
  return a1;
}

uint64_t sub_1DCFF9EFC(uint64_t a1, int *a2)
{
  v4 = sub_1DD0DB04C();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a1 + a2[5]);
  swift_unknownObjectRelease();

  return __swift_destroy_boxed_opaque_existential_1Tm((a1 + a2[7]));
}

uint64_t sub_1DCFF9F7C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = *(a2 + v7);
  *(a1 + v7) = v8;
  v9 = a3[7];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(v11 + 24);
  *(a1 + v9 + 24) = v12;
  v13 = v12;
  v14 = **(v12 - 8);
  swift_unknownObjectRetain();
  v15 = v8;
  v14(v10, v11, v13);
  return a1;
}

uint64_t sub_1DCFFA078(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v9[1];
  v11 = *v8;
  *v8 = *v9;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v8[1] = v10;
  v12 = a3[6];
  v13 = *(a2 + v12);
  v14 = *(a1 + v12);
  *(a1 + v12) = v13;
  v15 = v13;

  __swift_assign_boxed_opaque_existential_1((a1 + a3[7]), (a2 + a3[7]));
  return a1;
}

uint64_t sub_1DCFFA140(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[7];
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v11;
  *(v9 + 32) = *(v10 + 32);
  return a1;
}

uint64_t sub_1DCFFA1E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v9[1];
  v11 = *v8;
  *v8 = *v9;
  swift_unknownObjectRelease();
  v8[1] = v10;
  v12 = a3[6];
  v13 = *(a1 + v12);
  *(a1 + v12) = *(a2 + v12);

  v14 = a3[7];
  v15 = a1 + v14;
  v16 = a2 + v14;
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + v14));
  v17 = *(v16 + 16);
  *v15 = *v16;
  *(v15 + 16) = v17;
  *(v15 + 32) = *(v16 + 32);
  return a1;
}

uint64_t sub_1DCFFA2D8()
{
  result = sub_1DD0DB04C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1DCFFA3F0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_26_6();
  v5 = v4(v3);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_33_1();
  v9(v8);
  return a2;
}

uint64_t sub_1DCFFA450@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1[1]);
  *a2 = result;
  *(a2 + 8) = v7 & 1;
  return result;
}

uint64_t sub_1DCFFA4B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetManager.SnippetRecord(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCFFA514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetManager.SnippetManagerState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCFFA578(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1DCFFA5C0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_26_6();
  v5 = v4(v3);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_33_1();
  v9(v8);
  return a2;
}

void *sub_1DCFFA618(void *a1, void *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  swift_getEnumCaseMultiPayload();
  v5 = sub_1DD0DB04C();
  (*(*(v5 - 8) + 16))(a1, a2, v5);
  v6 = type metadata accessor for SnippetManager.SnippetRecord(0);
  *(a1 + v6[5]) = *(a2 + v6[5]);
  v7 = v6[6];
  v8 = *(a2 + v7);
  *(a1 + v7) = v8;
  v9 = v6[7];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(v11 + 24);
  *(a1 + v9 + 24) = v12;
  v13 = v12;
  v14 = **(v12 - 8);
  swift_unknownObjectRetain();
  v15 = v8;
  v14(v10, v11, v13);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_1DCFFA7A4(uint64_t a1)
{
  v2 = sub_1DD0DB04C();
  (*(*(v2 - 8) + 8))(a1, v2);
  v3 = type metadata accessor for SnippetManager.SnippetRecord(0);
  v4 = *(a1 + v3[5]);
  swift_unknownObjectRelease();

  return __swift_destroy_boxed_opaque_existential_1Tm((a1 + v3[7]));
}

uint64_t sub_1DCFFA82C(uint64_t a1, uint64_t a2)
{
  swift_getEnumCaseMultiPayload();
  v4 = sub_1DD0DB04C();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  v5 = type metadata accessor for SnippetManager.SnippetRecord(0);
  *(a1 + v5[5]) = *(a2 + v5[5]);
  v6 = v5[6];
  v7 = *(a2 + v6);
  *(a1 + v6) = v7;
  v8 = v5[7];
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = *(v10 + 24);
  *(a1 + v8 + 24) = v11;
  v12 = v11;
  v13 = **(v11 - 8);
  swift_unknownObjectRetain();
  v14 = v7;
  v13(v9, v10, v12);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_1DCFFA960(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1DCFF8E30(a1, type metadata accessor for SnippetManager.SnippetManagerAction);
    swift_getEnumCaseMultiPayload();
    v4 = sub_1DD0DB04C();
    (*(*(v4 - 8) + 16))(a1, a2, v4);
    v5 = type metadata accessor for SnippetManager.SnippetRecord(0);
    *(a1 + v5[5]) = *(a2 + v5[5]);
    v6 = v5[6];
    v7 = *(a2 + v6);
    *(a1 + v6) = v7;
    v8 = v5[7];
    v9 = a1 + v8;
    v10 = a2 + v8;
    v11 = *(v10 + 24);
    *(v9 + 24) = v11;
    *(v9 + 32) = *(v10 + 32);
    v12 = **(v11 - 8);
    swift_unknownObjectRetain();
    v13 = v7;
    v12(v9, v10, v11);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1DCFFAABC(uint64_t a1, uint64_t a2)
{
  swift_getEnumCaseMultiPayload();
  v4 = sub_1DD0DB04C();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  v5 = type metadata accessor for SnippetManager.SnippetRecord(0);
  *(a1 + v5[5]) = *(a2 + v5[5]);
  *(a1 + v5[6]) = *(a2 + v5[6]);
  v6 = v5[7];
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  *(v7 + 32) = *(v8 + 32);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_1DCFFAB8C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1DCFF8E30(a1, type metadata accessor for SnippetManager.SnippetManagerAction);
    swift_getEnumCaseMultiPayload();
    v4 = sub_1DD0DB04C();
    (*(*(v4 - 8) + 32))(a1, a2, v4);
    v5 = type metadata accessor for SnippetManager.SnippetRecord(0);
    *(a1 + v5[5]) = *(a2 + v5[5]);
    *(a1 + v5[6]) = *(a2 + v5[6]);
    v6 = v5[7];
    v7 = a1 + v6;
    v8 = a2 + v6;
    v9 = *(v8 + 16);
    *v7 = *v8;
    *(v7 + 16) = v9;
    *(v7 + 32) = *(v8 + 32);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1DCFFAC80()
{
  result = type metadata accessor for SnippetManager.SnippetRecord(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

id sub_1DCFFAD0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v77 = a7;
  v78 = a8;
  v79 = a3;
  v12 = sub_1DD0DB04C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DD0DB28C();
  if (v19 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v20 = v18;
  v21 = v19;
  if (!sub_1DCB6A8AC(v18, v19))
  {
    v76 = v21;
    v71 = a5;
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v73 = a6;
    v27 = sub_1DD0DD8FC();
    v75 = __swift_project_value_buffer(v27, qword_1EDE57E00);
    v28 = sub_1DD0DD8EC();
    v29 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = v20;
      v31 = swift_slowAlloc();
      *v31 = 0;
      OUTLINED_FUNCTION_34_3();
      _os_log_impl(v32, v33, v34, v35, v31, 2u);
      v20 = v30;
      OUTLINED_FUNCTION_80();
    }

    v72 = a9;

    v36 = sub_1DD0DD8EC();
    v37 = sub_1DD0DE6DC();
    v74 = a4;

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v70 = v20;
      v39 = v38;
      v40 = swift_slowAlloc();
      v80 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_1DCB10E9C(v79, v74, &v80);
      OUTLINED_FUNCTION_34_3();
      _os_log_impl(v41, v42, v43, v44, v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      OUTLINED_FUNCTION_80();
      v20 = v70;
      OUTLINED_FUNCTION_80();
    }

    v45 = [objc_allocWithZone(MEMORY[0x1E69C7B88]) init];
    sub_1DD0DB03C();
    sub_1DD0DAFFC();
    (*(v13 + 8))(v17, v12);
    v46 = sub_1DD0DDF8C();

    [v45 setAceId_];

    v26 = v45;
    v47 = sub_1DD0DDF8C();
    OUTLINED_FUNCTION_3_123(v47, sel_setViewId_);

    sub_1DD0DB25C();
    v48 = sub_1DD0DDF8C();

    [v26 setBundleName_];

    v49 = sub_1DD0DDF8C();
    OUTLINED_FUNCTION_3_123(v49, sel_setItemType_);

    v50 = sub_1DD0DAEFC();
    OUTLINED_FUNCTION_3_123(v50, sel_setModelData_);

    [v26 setIsTransient_];
    v51 = v73;
    if (v73)
    {
      v52 = v71;
      v53 = sub_1DD0DDF8C();
      OUTLINED_FUNCTION_3_123(v53, sel_setResponseViewId_);

      v54 = sub_1DD0DD8EC();
      v55 = sub_1DD0DE6DC();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v80 = v57;
        *v56 = 136315138;
        *(v56 + 4) = sub_1DCB10E9C(v52, v51, &v80);
        OUTLINED_FUNCTION_34_3();
        _os_log_impl(v58, v59, v60, v61, v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        OUTLINED_FUNCTION_80();
LABEL_20:
        OUTLINED_FUNCTION_80();
      }
    }

    else
    {
      v54 = sub_1DD0DD8EC();
      v62 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v54, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        OUTLINED_FUNCTION_34_3();
        _os_log_impl(v64, v65, v66, v67, v63, 2u);
        goto LABEL_20;
      }
    }

    sub_1DCB2C520(v20, v76);

    return v26;
  }

  sub_1DCB2C520(v20, v21);
LABEL_4:
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v22 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v22, qword_1EDE57E00);
  v23 = sub_1DD0DD8EC();
  v24 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1DCAFC000, v23, v24, "ResponseFactory: SnippetPluginModel has no Data. Unable to build ACEView.", v25, 2u);
    OUTLINED_FUNCTION_80();
  }

  return 0;
}

void sub_1DCFFB2CC()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v33 = v6;
  v34 = v5;
  v35 = v7;
  OUTLINED_FUNCTION_0_1();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  v32 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 56))(v42, v15, v14);
  sub_1DCB17CA0(v42, v41);
  OUTLINED_FUNCTION_29_34();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_29_34();
  v17 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_138();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_138();
  v19 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_138();
  v20 = swift_getAssociatedConformanceWitness();
  v36 = AssociatedTypeWitness;
  v37 = v17;
  v38 = AssociatedConformanceWitness;
  v39 = v19;
  v40 = v20;
  v21 = type metadata accessor for SnippetPresenter();
  OUTLINED_FUNCTION_2(v21);
  (*(v22 + 8))(v42);
  v23 = v41[3];
  OUTLINED_FUNCTION_52_30(v41[4]);
  __swift_project_boxed_opaque_existential_1(v41, v23);
  v24 = v32;
  (*(v9 + 16))(v32, v0, v4);
  v25 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v26 = (v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = v4;
  *(v27 + 24) = v2;
  (*(v9 + 32))(v27 + v25, v24, v4);
  v28 = v34;
  *(v27 + v26) = v33;
  v29 = (v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8));
  v30 = v35;
  *v29 = v28;
  v29[1] = v30;
  sub_1DD0DCF8C();
}

void SnippetPresenter.init<A>(_:reducer:eventHandler:)(void *a1)
{
  v1[1] = *a1;
  type metadata accessor for Resolvable();
  Resolvable.resolvedValuePublisher.getter(v1);
}

void SnippetPresenter.init<A, B>(_:_:reducer:eventHandler:)()
{
  OUTLINED_FUNCTION_50();
  v3 = v2;
  v11 = v4;
  OUTLINED_FUNCTION_22_44();
  sub_1DD0DE97C();
  sub_1DD0DDB6C();
  OUTLINED_FUNCTION_46_29();
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_6_0();
  sub_1DD0DDB6C();
  OUTLINED_FUNCTION_6_81();
  v13 = v0;
  v14 = v1;
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v5 = sub_1DD0DD9EC();
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v10 = *v11;
  v13 = *v3;
  OUTLINED_FUNCTION_59_25();
  Resolvable.resolvedValuePublisher.getter(&v12);
}

uint64_t sub_1DCFFB96C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_1DCFFB9F8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 80);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  return sub_1DCFFB96C(a1, *(v1 + 72));
}

void SnippetPresenter.init<A, B, C>(_:_:_:reducer:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_50();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  OUTLINED_FUNCTION_22_44();
  sub_1DD0DE97C();
  v27 = OUTLINED_FUNCTION_11_72();
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_5_116();
  OUTLINED_FUNCTION_31_30();
  sub_1DD0DE97C();
  v28 = OUTLINED_FUNCTION_5_116();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_40_11(WitnessTable, &a12);
  v30 = swift_getWitnessTable();
  OUTLINED_FUNCTION_40_11(v30, &a11);
  v41 = v27;
  v42 = v20;
  v43 = v28;
  v44 = WitnessTable;
  v45 = v30;
  v46 = swift_getWitnessTable();
  v31 = sub_1DD0DDA0C();
  OUTLINED_FUNCTION_9(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v34, v35);
  v36 = *v26;
  v37 = *v24;
  OUTLINED_FUNCTION_48_23();
  v39 = *v38;
  v41 = v36;
  OUTLINED_FUNCTION_59_25();
  Resolvable.resolvedValuePublisher.getter(&v40);
}

uint64_t sub_1DCFFBD94(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  return a2(a1, a1 + *(TupleTypeMetadata3 + 48), a1 + *(TupleTypeMetadata3 + 64));
}

uint64_t sub_1DCFFBE4C()
{
  OUTLINED_FUNCTION_8_76();
  v1 = *(v0 + 88);
  v4 = *(v0 + 72);
  return sub_1DCFFBD94(v2, *(v0 + 80));
}

void SnippetPresenter.init<A, B, C, D>(_:_:_:_:reducer:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  v43 = v26;
  v42 = v27;
  OUTLINED_FUNCTION_52_30(v28);
  OUTLINED_FUNCTION_32_30(a22);
  OUTLINED_FUNCTION_22_44();
  sub_1DD0DE97C();
  v29 = OUTLINED_FUNCTION_11_72();
  OUTLINED_FUNCTION_29_34();
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_5_116();
  OUTLINED_FUNCTION_31_30();
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_5_116();
  OUTLINED_FUNCTION_46_29();
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_5_116();
  OUTLINED_FUNCTION_6_81();
  v30 = v29;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_40_11(WitnessTable, v49);
  v32 = swift_getWitnessTable();
  OUTLINED_FUNCTION_40_11(v32, v47);
  v33 = swift_getWitnessTable();
  OUTLINED_FUNCTION_40_11(v33, &v44);
  v34 = swift_getWitnessTable();
  v45[0] = v30;
  v45[1] = a24;
  v46 = v24;
  v47[0] = v25;
  v47[1] = WitnessTable;
  v48 = v32;
  v49[0] = v33;
  v49[1] = v34;
  OUTLINED_FUNCTION_24_39();
  v35 = sub_1DD0DDA2C();
  OUTLINED_FUNCTION_9(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v38, v39);
  OUTLINED_FUNCTION_55_18(v45);
  v40 = *v42;
  v41 = *v43;
  OUTLINED_FUNCTION_53_21(&v48);
  v45[0] = a24;
  OUTLINED_FUNCTION_59_25();
  OUTLINED_FUNCTION_37_37();
}

uint64_t sub_1DCFFC2A0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  return a2(a1, a1 + TupleTypeMetadata[12], a1 + TupleTypeMetadata[16], a1 + TupleTypeMetadata[20]);
}

uint64_t sub_1DCFFC378()
{
  OUTLINED_FUNCTION_8_76();
  v1 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  return sub_1DCFFC2A0(v2, *(v0 + 88));
}

void SnippetPresenter.init<A, B, C, D, E>(_:_:_:_:_:reducer:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_50();
  a19 = v29;
  a20 = v30;
  v63 = v31;
  v62 = v32;
  v61 = v33;
  v35 = v34;
  OUTLINED_FUNCTION_50_24(v36);
  OUTLINED_FUNCTION_32_30(a29);
  OUTLINED_FUNCTION_51_29(v37);
  sub_1DD0DE97C();
  v38 = OUTLINED_FUNCTION_40_34();
  OUTLINED_FUNCTION_22_44();
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_6_0();
  v39 = OUTLINED_FUNCTION_40_34();
  OUTLINED_FUNCTION_29_34();
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_6_0();
  v40 = OUTLINED_FUNCTION_40_34();
  OUTLINED_FUNCTION_16_61(v40, &v71);
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_6_0();
  v41 = OUTLINED_FUNCTION_40_34();
  OUTLINED_FUNCTION_16_61(v41, &v70);
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_6_0();
  v42 = OUTLINED_FUNCTION_40_34();
  OUTLINED_FUNCTION_3_124(v42, &v69);
  WitnessTable = swift_getWitnessTable();
  v64 = swift_getWitnessTable();
  v60 = swift_getWitnessTable();
  v59 = swift_getWitnessTable();
  v72 = v39;
  v73 = v40;
  v74 = v41;
  v75 = v42;
  v76 = WitnessTable;
  v77 = v64;
  v78 = v60;
  v79 = v59;
  v43 = sub_1DD0DDA2C();
  v66 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_111();
  v65 = swift_getWitnessTable();
  v72 = v38;
  v73 = v43;
  v74 = v66;
  v75 = v65;
  OUTLINED_FUNCTION_24_39();
  v68 = sub_1DD0DD9EC();
  OUTLINED_FUNCTION_9(v68);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v46, v47);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v48);
  v49 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50, v51);
  OUTLINED_FUNCTION_12_72();
  MEMORY[0x1EEE9AC00](v52, v53);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_13_2(v54);
  v55 = *v35;
  v56 = *v61;
  v57 = *v62;
  v58 = *v63;
  OUTLINED_FUNCTION_57_19(&a12);
  v72 = v55;
  type metadata accessor for Resolvable();
  OUTLINED_FUNCTION_37_37();
}

uint64_t sub_1DCFFCA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, char *, char *, char *, char *)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v29 = a7;
  v30 = a6;
  v26 = a5;
  v27 = a8;
  v28 = a1;
  v31 = sub_1DD0DE97C();
  v32 = sub_1DD0DE97C();
  v33 = sub_1DD0DE97C();
  v34 = sub_1DD0DE97C();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v12 = *(TupleTypeMetadata - 1);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata, v14);
  v16 = &v25 - v15;
  v17 = sub_1DD0DE97C();
  (*(*(v17 - 8) + 16))(v16, a2, v17);
  v18 = TupleTypeMetadata[12];
  v19 = sub_1DD0DE97C();
  (*(*(v19 - 8) + 16))(&v16[v18], a3, v19);
  v20 = TupleTypeMetadata[16];
  v21 = sub_1DD0DE97C();
  (*(*(v21 - 8) + 16))(&v16[v20], a4, v21);
  v22 = TupleTypeMetadata[20];
  v23 = sub_1DD0DE97C();
  (*(*(v23 - 8) + 16))(&v16[v22], v26, v23);
  v30(v28, v16, &v16[v18], &v16[v20], &v16[v22]);
  return (*(v12 + 8))(v16, TupleTypeMetadata);
}

uint64_t sub_1DCFFCCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *(v6 + 16);
  v13 = *(v6 + 88);
  v11 = *(v6 + 56);
  v12 = *(v6 + 72);
  v9 = *(v6 + 24);
  v10 = *(v6 + 40);
  return sub_1DCFFCA44(a1, a2, a3, a4, a5, *(v6 + 96), *(v6 + 104), a6);
}

uint64_t sub_1DCFFCCF8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48), a1 + *(TupleTypeMetadata2 + 48) + TupleTypeMetadata[12], a1 + *(TupleTypeMetadata2 + 48) + TupleTypeMetadata[16], a1 + *(TupleTypeMetadata2 + 48) + TupleTypeMetadata[20]);
}

uint64_t sub_1DCFFCE0C()
{
  OUTLINED_FUNCTION_8_76();
  v1 = *(v0 + 104);
  v5 = *(v0 + 88);
  v4 = *(v0 + 72);
  return sub_1DCFFCCF8(v2, *(v0 + 96));
}

void SnippetPresenter.init<A, B, C, D, E, F>(_:_:_:_:_:_:reducer:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_50();
  v78 = v33;
  v68 = v34;
  OUTLINED_FUNCTION_51_29(v35);
  OUTLINED_FUNCTION_32_30(v36);
  OUTLINED_FUNCTION_50_24(a32);
  OUTLINED_FUNCTION_49_26(a24);
  v74[0] = a30;
  v71 = a28;
  v73 = a27;
  v72 = a26;
  v74[1] = a25;
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_11_72();
  OUTLINED_FUNCTION_31_30();
  sub_1DD0DE97C();
  v37 = OUTLINED_FUNCTION_5_116();
  OUTLINED_FUNCTION_16_61(v37, v74);
  sub_1DD0DE97C();
  v38 = OUTLINED_FUNCTION_5_116();
  OUTLINED_FUNCTION_3_124(v38, &v73);
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(WitnessTable, &v72);
  v40 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v40, &v71);
  v65 = swift_getWitnessTable();
  v85 = v32;
  v86 = v37;
  v87 = v38;
  v88 = WitnessTable;
  v89 = v40;
  v90 = v65;
  sub_1DD0DDA0C();
  OUTLINED_FUNCTION_31_30();
  sub_1DD0DE97C();
  v41 = OUTLINED_FUNCTION_5_116();
  OUTLINED_FUNCTION_16_61(v41, &v85);
  sub_1DD0DE97C();
  v42 = OUTLINED_FUNCTION_5_116();
  OUTLINED_FUNCTION_16_61(v42, &v84);
  sub_1DD0DE97C();
  v43 = OUTLINED_FUNCTION_5_116();
  OUTLINED_FUNCTION_30_3(v43, &v83);
  v44 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v44, &v82);
  v45 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v45, &v81);
  v66 = swift_getWitnessTable();
  v85 = v41;
  v86 = v42;
  v87 = v43;
  v88 = v44;
  v89 = v45;
  v90 = v66;
  v46 = sub_1DD0DDA0C();
  v47 = swift_getWitnessTable();
  OUTLINED_FUNCTION_40_11(v47, &v80);
  v67 = swift_getWitnessTable();
  v85 = v32;
  v86 = v46;
  v70 = v46;
  v87 = v47;
  v88 = v67;
  v69 = sub_1DD0DD9EC();
  OUTLINED_FUNCTION_9(v69);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v50, v51);
  OUTLINED_FUNCTION_34_0();
  v76 = v52;
  v77 = *(v46 - 8);
  v53 = *(v77 + 64);
  v56 = MEMORY[0x1EEE9AC00](v54, v55);
  MEMORY[0x1EEE9AC00](v56, v57);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_13_2(v58);
  v75 = *(v32 - 8);
  v59 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v60, v61);
  OUTLINED_FUNCTION_12_72();
  MEMORY[0x1EEE9AC00](v62, v63);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_35_34(&v70);
  OUTLINED_FUNCTION_57_19(&v77);
  OUTLINED_FUNCTION_55_18(&v78);
  OUTLINED_FUNCTION_53_21(&v79);
  v64 = *v68;
  v85 = v40;
  type metadata accessor for Resolvable();
  Resolvable.resolvedValuePublisher.getter(&v84);
}

uint64_t sub_1DCFFD680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char *, char *, char *, char *, char *, char *)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v39 = a8;
  v40 = a7;
  v36 = a5;
  v37 = a6;
  v35 = a4;
  v33 = a3;
  v30 = a1;
  v31 = a2;
  v38 = a9;
  v9 = sub_1DD0DE97C();
  v10 = sub_1DD0DE97C();
  v32 = sub_1DD0DE97C();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v34 = *(TupleTypeMetadata3 - 8);
  v12 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3, v13);
  v15 = &v30 - v14;
  v16 = sub_1DD0DE97C();
  v17 = sub_1DD0DE97C();
  v18 = sub_1DD0DE97C();
  v19 = swift_getTupleTypeMetadata3();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v30 - v23;
  (*(*(v16 - 8) + 16))(&v30 - v23, v30, v16);
  v25 = *(v19 + 48);
  (*(*(v17 - 8) + 16))(&v24[v25], v31, v17);
  v26 = *(v19 + 64);
  (*(*(v18 - 8) + 16))(&v24[v26], v33, v18);
  (*(*(v9 - 8) + 16))(v15, v35, v9);
  v27 = *(TupleTypeMetadata3 + 48);
  (*(*(v10 - 8) + 16))(&v15[v27], v36, v10);
  v28 = *(TupleTypeMetadata3 + 64);
  (*(*(v32 - 8) + 16))(&v15[v28], v37);
  v40(v24, &v24[v25], &v24[v26], v15, &v15[v27], &v15[v28]);
  (*(v34 + 8))(v15, TupleTypeMetadata3);
  return (*(v20 + 8))(v24, v19);
}

uint64_t sub_1DCFFD9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(v7 + 96);
  v12 = *(v7 + 64);
  v13 = *(v7 + 80);
  v10 = *(v7 + 32);
  v11 = *(v7 + 48);
  v9 = *(v7 + 16);
  return sub_1DCFFD680(a1, a2, a3, a4, a5, a6, *(v7 + 104), *(v7 + 112), a7);
}

uint64_t sub_1DCFFDA3C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v4 = *(TupleTypeMetadata3 + 48);
  v5 = *(TupleTypeMetadata3 + 64);
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  v6 = swift_getTupleTypeMetadata3();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + v4, a1 + v5, a1 + *(TupleTypeMetadata2 + 48), a1 + *(TupleTypeMetadata2 + 48) + *(v6 + 48), a1 + *(TupleTypeMetadata2 + 48) + *(v6 + 64));
}

uint64_t sub_1DCFFDB8C()
{
  OUTLINED_FUNCTION_8_76();
  v1 = *(v0 + 112);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v4 = *(v0 + 72);
  return sub_1DCFFDA3C(v2, *(v0 + 104));
}

void SnippetPresenter.init<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:reducer:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  OUTLINED_FUNCTION_50();
  a19 = v36;
  a20 = v37;
  v102 = v38;
  v95 = v39;
  v94 = v40;
  v91 = v41;
  v90 = v42;
  v89 = v43;
  v88 = v44;
  v87 = v45;
  OUTLINED_FUNCTION_51_29(v46);
  OUTLINED_FUNCTION_32_30(v47);
  OUTLINED_FUNCTION_52_30(v48);
  v101 = a35;
  v100 = a34;
  OUTLINED_FUNCTION_49_26(a33);
  v99 = a24;
  v112[2] = a31;
  v113 = a32;
  v107[0] = a30;
  v106 = a29;
  v112[0] = a28;
  v111 = a27;
  v98 = a25;
  v107[1] = a26;
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_11_72();
  OUTLINED_FUNCTION_46_29();
  sub_1DD0DE97C();
  v49 = OUTLINED_FUNCTION_5_116();
  OUTLINED_FUNCTION_16_61(v49, v107);
  sub_1DD0DE97C();
  v50 = OUTLINED_FUNCTION_5_116();
  OUTLINED_FUNCTION_3_124(v50, &v106);
  v51 = v35;
  v86 = v35;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(WitnessTable, &v105);
  v53 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v53, &v104);
  v84 = swift_getWitnessTable();
  v120 = v51;
  v121 = v49;
  v122 = v50;
  v123 = WitnessTable;
  v124 = v53;
  v125 = v84;
  v54 = sub_1DD0DDA0C();
  OUTLINED_FUNCTION_29_34();
  sub_1DD0DE97C();
  v55 = OUTLINED_FUNCTION_5_116();
  OUTLINED_FUNCTION_16_61(v55, &v119);
  sub_1DD0DE97C();
  v56 = OUTLINED_FUNCTION_5_116();
  OUTLINED_FUNCTION_16_61(v56, &v118);
  sub_1DD0DE97C();
  v57 = OUTLINED_FUNCTION_5_116();
  OUTLINED_FUNCTION_16_61(v57, &v117);
  sub_1DD0DE97C();
  v58 = OUTLINED_FUNCTION_5_116();
  OUTLINED_FUNCTION_30_3(v58, &v116);
  v59 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v59, &v115);
  v60 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v60, &v113);
  v61 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v61, &v103);
  v85 = swift_getWitnessTable();
  v120 = v55;
  v121 = v56;
  v122 = v57;
  v123 = v58;
  v124 = v59;
  v125 = v60;
  v126 = v61;
  v127 = v85;
  v62 = sub_1DD0DDA2C();
  OUTLINED_FUNCTION_7_79();
  v93 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_111();
  v92 = swift_getWitnessTable();
  v120 = v54;
  v121 = v62;
  v104 = v54;
  v105 = v62;
  v122 = v93;
  v123 = v92;
  OUTLINED_FUNCTION_24_39();
  v96 = sub_1DD0DD9EC();
  OUTLINED_FUNCTION_9(v96);
  v97 = v63;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v66, v67);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v68);
  v110 = *(v62 - 8);
  v69 = *(v110 + 64);
  v72 = MEMORY[0x1EEE9AC00](v70, v71);
  v83[1] = v83 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72, v74);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_13_2(v75);
  v108 = *(v54 - 8);
  v76 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v77, v78);
  OUTLINED_FUNCTION_12_72();
  MEMORY[0x1EEE9AC00](v79, v80);
  OUTLINED_FUNCTION_57_19(&v108);
  OUTLINED_FUNCTION_53_21(&v109);
  v81 = *v89;
  v82 = *v90;
  OUTLINED_FUNCTION_55_18(v112);
  OUTLINED_FUNCTION_35_34(&v114);
  v120 = v57;
  type metadata accessor for Resolvable();
  OUTLINED_FUNCTION_37_37();
}

uint64_t sub_1DCFFE484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(char *, char *, char *, char *, char *, char *, char *)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v51 = a5;
  v52 = a7;
  v50 = a6;
  v44 = a2;
  v45 = a3;
  v43 = a1;
  v53 = a9;
  v54 = a10;
  v55 = a8;
  v47 = a4;
  v48 = a19;
  v46 = a17;
  v56 = sub_1DD0DE97C();
  v57 = sub_1DD0DE97C();
  v58 = sub_1DD0DE97C();
  v59 = sub_1DD0DE97C();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v49 = *(TupleTypeMetadata - 1);
  v20 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata, v21);
  v23 = &v43 - v22;
  v24 = sub_1DD0DE97C();
  v25 = sub_1DD0DE97C();
  v26 = sub_1DD0DE97C();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v28 = *(TupleTypeMetadata3 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3, v30);
  v32 = &v43 - v31;
  (*(*(v24 - 8) + 16))(&v43 - v31, v43, v24);
  v33 = *(TupleTypeMetadata3 + 48);
  (*(*(v25 - 8) + 16))(&v32[v33], v44, v25);
  v34 = *(TupleTypeMetadata3 + 64);
  (*(*(v26 - 8) + 16))(&v32[v34], v45, v26);
  v35 = sub_1DD0DE97C();
  (*(*(v35 - 8) + 16))(v23, v47, v35);
  v36 = TupleTypeMetadata[12];
  v37 = sub_1DD0DE97C();
  (*(*(v37 - 8) + 16))(&v23[v36], v51, v37);
  v38 = TupleTypeMetadata[16];
  v39 = sub_1DD0DE97C();
  (*(*(v39 - 8) + 16))(&v23[v38], v50, v39);
  v40 = TupleTypeMetadata[20];
  v41 = sub_1DD0DE97C();
  (*(*(v41 - 8) + 16))(&v23[v40], v52, v41);
  v55(v32, &v32[v33], &v32[v34], v23, &v23[v36], &v23[v38], &v23[v40]);
  (*(v49 + 8))(v23, TupleTypeMetadata);
  return (*(v28 + 8))(v32, TupleTypeMetadata3);
}

uint64_t sub_1DCFFE888()
{
  OUTLINED_FUNCTION_30_41();
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[15];
  v27 = v5;
  v25 = v6;
  v26 = v7;
  OUTLINED_FUNCTION_45_25();
  return sub_1DCFFE484(v8, v9, v10, v11, v12, v13, v14, v15, v16, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_1DCFFE8D4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v4 = *(TupleTypeMetadata3 + 48);
  v5 = *(TupleTypeMetadata3 + 64);
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + v4, a1 + v5, a1 + *(TupleTypeMetadata2 + 48), a1 + *(TupleTypeMetadata2 + 48) + TupleTypeMetadata[12], a1 + *(TupleTypeMetadata2 + 48) + TupleTypeMetadata[16], a1 + *(TupleTypeMetadata2 + 48) + TupleTypeMetadata[20]);
}

uint64_t sub_1DCFFEA3C()
{
  OUTLINED_FUNCTION_8_76();
  v1 = *(v0 + 120);
  v6 = *(v0 + 104);
  v4 = *(v0 + 72);
  v5 = *(v0 + 88);
  return sub_1DCFFE8D4(v2, *(v0 + 112));
}

void SnippetPresenter.init<A, B, C, D, E, F, G, H>(_:_:_:_:_:_:_:reducer:modelTransformer:snippetEventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  OUTLINED_FUNCTION_50();
  v103[6] = v39;
  v97 = v40;
  v96 = v41;
  v95 = v42;
  v94 = v43;
  v103[7] = v44;
  v104 = a24;
  OUTLINED_FUNCTION_51_29(a23);
  OUTLINED_FUNCTION_32_30(v45);
  v103[5] = v46;
  v103[4] = a39;
  v103[3] = a38;
  v103[2] = a37;
  v103[10] = a25;
  v103[0] = a26;
  v103[1] = a36;
  v106[0] = a35;
  v106[3] = a30;
  OUTLINED_FUNCTION_52_30(a29);
  v102 = a27;
  v106[2] = a28;
  v105[3] = a34;
  v105[2] = a33;
  v105[1] = a32;
  v105[0] = a31;
  sub_1DD0DE97C();
  v47 = OUTLINED_FUNCTION_11_72();
  OUTLINED_FUNCTION_22_44();
  sub_1DD0DE97C();
  v48 = OUTLINED_FUNCTION_5_116();
  OUTLINED_FUNCTION_16_61(v48, &v112);
  sub_1DD0DE97C();
  v49 = OUTLINED_FUNCTION_5_116();
  OUTLINED_FUNCTION_16_61(v49, &v111);
  sub_1DD0DE97C();
  v50 = OUTLINED_FUNCTION_5_116();
  OUTLINED_FUNCTION_3_124(v50, &v110);
  v101 = v47;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(WitnessTable, &v109);
  v52 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v52, &v108);
  v53 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v53, &v107);
  v98 = swift_getWitnessTable();
  v113 = v47;
  v114 = v48;
  v115 = v49;
  v116 = v50;
  v117 = WitnessTable;
  v118 = v52;
  v119 = v53;
  v120 = v98;
  OUTLINED_FUNCTION_24_39();
  v54 = sub_1DD0DDA2C();
  OUTLINED_FUNCTION_2(v54);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v57, v58);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v59);
  sub_1DD0DE97C();
  v60 = OUTLINED_FUNCTION_5_116();
  OUTLINED_FUNCTION_16_61(v60, v103);
  sub_1DD0DE97C();
  v61 = OUTLINED_FUNCTION_5_116();
  OUTLINED_FUNCTION_16_61(v61, &v102);
  sub_1DD0DE97C();
  v62 = OUTLINED_FUNCTION_5_116();
  OUTLINED_FUNCTION_30_3(v62, &v101);
  v63 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v63, &v100);
  v64 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v64, &v99);
  v90 = swift_getWitnessTable();
  v113 = v60;
  v114 = v61;
  v115 = v62;
  v116 = v63;
  v117 = v64;
  v118 = v90;
  OUTLINED_FUNCTION_24_39();
  v65 = sub_1DD0DDA0C();
  OUTLINED_FUNCTION_2(v65);
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v68, v69);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v70);
  OUTLINED_FUNCTION_7_79();
  v92 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_111();
  v91 = swift_getWitnessTable();
  v113 = v65;
  v114 = v54;
  v115 = v92;
  v116 = v91;
  OUTLINED_FUNCTION_24_39();
  sub_1DD0DD9EC();
  OUTLINED_FUNCTION_0_1();
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v73, v74);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v75);
  OUTLINED_FUNCTION_1_136();
  swift_getWitnessTable();
  sub_1DD0DDA9C();
  OUTLINED_FUNCTION_0_1();
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v78, v79);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v80);
  OUTLINED_FUNCTION_3_1();
  swift_getWitnessTable();
  v93 = sub_1DD0DDA8C();
  OUTLINED_FUNCTION_9(v93);
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v83, v84);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v85);
  OUTLINED_FUNCTION_55_18(&v104);
  v86 = *v94;
  OUTLINED_FUNCTION_57_19(v105);
  v87 = *v95;
  v88 = *v96;
  OUTLINED_FUNCTION_53_21(v106);
  v89 = *v97;
  v113 = v54;
  OUTLINED_FUNCTION_59_25();
  OUTLINED_FUNCTION_37_37();
}

uint64_t sub_1DCFFF410()
{
  OUTLINED_FUNCTION_30_41();
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[17];
  v29 = v7;
  v27 = v8;
  v28 = v9;
  OUTLINED_FUNCTION_45_25();
  return sub_1DCFFE484(v10, v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
}

uint64_t sub_1DCFFF46C()
{
  OUTLINED_FUNCTION_8_76();
  v1 = *(v0 + 136);
  v7 = *(v0 + 120);
  v5 = *(v0 + 88);
  v6 = *(v0 + 104);
  v4 = *(v0 + 72);
  return sub_1DCFFE8D4(v2, *(v0 + 128));
}

void sub_1DCFFF4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a5;
  v10 = a4;
  v12 = a3;
  v13 = a2;
  v15 = a1;
  v9 = type metadata accessor for AceOutput();
  v5 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v6);
  v14 = &v8 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD0DCC3C();
}

void sub_1DD000158()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_0_1();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1DCFFF4F8(v7, v0 + v4, *(v0 + v6), *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1DD0001D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v78 = a2;
  v9 = type metadata accessor for SnippetManager.SnippetManagerState(0);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = type metadata accessor for SnippetManager.SnippetRecord(0);
  v75 = *(v14 - 8);
  v76 = v14;
  v15 = *(v75 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v68 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v69 = v64 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v66 = v64 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v72 = v64 - v27;
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = v64 - v29;
  v74 = sub_1DD0DB04C();
  v80 = *(v74 - 8);
  v31 = *(v80 + 64);
  v33 = MEMORY[0x1EEE9AC00](v74, v32);
  v71 = v64 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v35);
  v73 = v64 - v36;
  v85[3] = type metadata accessor for AceOutput();
  v85[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v85);
  sub_1DD000C7C(a4, boxed_opaque_existential_1Tm, type metadata accessor for AceOutput);
  if (qword_1ECCA13B0 != -1)
  {
    swift_once();
  }

  v38 = sub_1DD0DD8FC();
  v39 = __swift_project_value_buffer(v38, qword_1ECCD2760);
  swift_unknownObjectRetain();
  v40 = sub_1DD0DD8EC();
  v41 = sub_1DD0DE6CC();
  swift_unknownObjectRelease();
  v42 = os_log_type_enabled(v40, v41);
  v77 = a1;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v79 = v39;
    v65 = v41;
    v44 = v43;
    v70 = swift_slowAlloc();
    v82[0] = v70;
    *v44 = 136315394;
    v81 = a3;
    v45 = v78;
    v83 = a1;
    v84 = v78;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABEA0, &unk_1DD109E80);
    v46 = sub_1DD0DE02C();
    v48 = sub_1DCB10E9C(v46, v47, v82);
    v67 = a5;
    v49 = v30;
    v50 = v48;

    *(v44 + 4) = v50;
    *(v44 + 12) = 2080;
    swift_getObjectType();
    v83 = a1;
    v51 = *(v45 + 8);
    v52 = v73;
    sub_1DD0DEC2C();
    sub_1DCB28A60();
    v53 = v74;
    v54 = sub_1DD0DF03C();
    v56 = v55;
    (*(v80 + 8))(v52, v53);
    v57 = sub_1DCB10E9C(v54, v56, v82);
    v30 = v49;
    a5 = v67;

    *(v44 + 14) = v57;
    _os_log_impl(&dword_1DCAFC000, v40, v65, "Got new snippet from flow %s with id %s", v44, 0x16u);
    v58 = v70;
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v58, -1, -1);
    MEMORY[0x1E12A8390](v44, -1, -1);
  }

  swift_beginAccess();
  if (*(a5 + 32))
  {
    v64[5] = *(a5 + 32);
    v59 = *(a5 + 40);
    sub_1DCB17CA0(v85, &v30[*(v76 + 28)]);
    v64[4] = v59;
    sub_1DD0DCF8C();
  }

  v60 = sub_1DD0DD8EC();
  v61 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_1DCAFC000, v60, v61, "Received a new snippet before SnippetManager.positionLookup has been set. This is a noop; snippet will be ignored", v62, 2u);
    MEMORY[0x1E12A8390](v62, -1, -1);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v85);
}

uint64_t sub_1DD000C7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD000CDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetManager.SnippetRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD000D40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

Swift::Int __swiftcall DialogUsageProvider.usageCount(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = objc_opt_self();
  v4 = sub_1DD0DDF8C();
  v5 = [v3 getDialogStateUseCase_];

  v6 = [v5 usageCount];
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v7 = v6;
  v8 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v8, qword_1EDE57E00);

  v9 = sub_1DD0DD8EC();
  v10 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1DCB10E9C(countAndFlagsBits, object, &v14);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_1DCAFC000, v9, v10, "DialogUsageProvider: CAT %s has usage count: %ld", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  return v7;
}

_BYTE *storeEnumTagSinglePayload for DialogUsageProvider(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

char *sub_1DD00187C(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1DD003E30(a1, type metadata accessor for RelationshipLabel);
    type metadata accessor for RelationshipLabel();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);

    if (EnumCaseMultiPayload != 1)
    {
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
      v8 = sub_1DD0DB0FC();
      (*(*(v8 - 8) + 16))(&a1[v7], &a2[v7], v8);
    }

    swift_storeEnumTagMultiPayload();
  }

  v9 = *(a3 + 20);
  v10 = &a1[v9];
  v11 = &a2[v9];
  *v10 = *v11;
  v12 = *(v10 + 1);
  *(v10 + 1) = *(v11 + 1);

  return a1;
}

_OWORD *sub_1DD0019AC(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1DD003E30(a1, type metadata accessor for RelationshipLabel);
    v6 = type metadata accessor for RelationshipLabel();
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }

    else
    {
      *a1 = *a2;
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
      v8 = sub_1DD0DB0FC();
      (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
      swift_storeEnumTagMultiPayload();
    }
  }

  v9 = *(a3 + 20);
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v13 = *v11;
  v12 = v11[1];
  v14 = v10[1];
  *v10 = v13;
  v10[1] = v12;

  return a1;
}

uint64_t sub_1DD001B3C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA20E8, &unk_1DD0E40F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v16 - v5;
  sub_1DD0DC72C();
  v7 = sub_1DD0DBD0C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1DCB0E9D8(v6, &qword_1ECCA20E8, &unk_1DD0E40F0);
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5();
    }

    sub_1DD0DE6EC();
    sub_1DD0DD7EC();
    v8 = 0;
  }

  else
  {
    v9 = sub_1DD0DBCFC();
    v11 = v10;
    (*(*(v7 - 8) + 8))(v6, v7);
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5();
    }

    sub_1DD0DE6DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1DD0E07C0;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1DCB34060();
    *(v12 + 32) = v9;
    *(v12 + 40) = v11;

    sub_1DD0DD7EC();

    v13 = (v1 + *(type metadata accessor for StartCallUnsetRelationshipFlowConfig(0) + 20));
    if (*v13 == v9 && v13[1] == v11)
    {

      v8 = 1;
    }

    else
    {
      v8 = sub_1DD0DF0AC();
    }
  }

  return v8 & 1;
}

uint64_t sub_1DD001DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABF68, &qword_1DD10A048);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v53 - v7;
  v9 = type metadata accessor for PhoneIntent(0);
  v10 = OUTLINED_FUNCTION_2(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PhoneIntent.Contact(0);
  v17 = OUTLINED_FUNCTION_2(v16);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v53 - v25;
  v27 = sub_1DD0DC76C();
  OUTLINED_FUNCTION_2(v27);
  (*(v28 + 16))(v15, a1);
  if (qword_1ECCA13F8 != -1)
  {
    OUTLINED_FUNCTION_6_82();
  }

  OUTLINED_FUNCTION_5_117();
  sub_1DD003EA8(v29, v30);
  OUTLINED_FUNCTION_4_115();
  sub_1DD003EA8(v31, v32);
  v33 = sub_1DD0DBCCC();
  OUTLINED_FUNCTION_1_137();
  sub_1DD003E30(v15, v34);
  sub_1DCC62364(v33, v8);

  if (__swift_getEnumTagSinglePayload(v8, 1, v16) == 1)
  {
    result = sub_1DCB0E9D8(v8, &qword_1ECCABF68, &qword_1DD10A048);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    *a2 = xmmword_1DD0E3FF0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
  }

  else
  {
    sub_1DD003EF0(v8, v26);
    sub_1DD003F54(v26, v23, type metadata accessor for PhoneIntent.Contact);
    OUTLINED_FUNCTION_4_115();
    sub_1DD003EA8(v42, v43);
    OUTLINED_FUNCTION_11_43();
    v44 = sub_1DD0DBE8C();
    v55 = v45;
    v56 = v44;
    OUTLINED_FUNCTION_11_43();
    v46 = sub_1DD0DBE6C();
    v53 = v47;
    v54 = v46;
    OUTLINED_FUNCTION_11_43();
    v36 = sub_1DD0DBE4C();
    v37 = v48;
    OUTLINED_FUNCTION_11_43();
    v38 = sub_1DD0DBE5C();
    v39 = v49;
    OUTLINED_FUNCTION_11_43();
    v40 = sub_1DD0DBE7C();
    v41 = v50;
    sub_1DD003E30(v26, type metadata accessor for PhoneIntent.Contact);
    result = sub_1DD003E30(v23, type metadata accessor for PhoneIntent.Contact);
    v51 = v55;
    *a2 = v56;
    *(a2 + 8) = v51;
    v52 = v53;
    *(a2 + 16) = v54;
    *(a2 + 24) = v52;
  }

  *(a2 + 32) = v36;
  *(a2 + 40) = v37;
  *(a2 + 48) = v38;
  *(a2 + 56) = v39;
  *(a2 + 64) = v40;
  *(a2 + 72) = v41;
  return result;
}

uint64_t sub_1DD002110(uint64_t a1)
{
  v2 = type metadata accessor for PhoneIntent(0);
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DD0DC76C();
  OUTLINED_FUNCTION_2(v9);
  (*(v10 + 16))(v8, a1);
  if (qword_1ECCA1408 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_117();
  sub_1DD003EA8(v11, v12);
  sub_1DD0DBCEC();
  v13 = v18;
  if (v18 == 4)
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5();
    }

    sub_1DD0DE6EC();
    sub_1DD0DD7EC();
    OUTLINED_FUNCTION_1_137();
    sub_1DD003E30(v8, v14);
    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_1_137();
    sub_1DD003E30(v8, v16);
    return 0x10001u >> (8 * v13);
  }
}

uint64_t sub_1DD0022B8@<X0>(uint64_t a1@<X8>)
{
  NLContextUpdate.init()(a1);
  v2 = sub_1DD002414(0);
  v4 = v3;
  v5 = *(a1 + 192);

  *(a1 + 184) = v2;
  *(a1 + 192) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_13_42(v6, xmmword_1DD0E07C0);
  v7 = OUTLINED_FUNCTION_10_45();
  OUTLINED_FUNCTION_3_74(v7, v8, v9, v10, v11, v12, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69E6158], v7, v7, v7, v21, v22, v23);
  sub_1DD0DEA3C();

  sub_1DD002414(4);
  OUTLINED_FUNCTION_9_47();
  v14 = sub_1DD0DE06C();
  MEMORY[0x1E12A6780](v14);

  v6[2].n128_u64[0] = v24;
  v6[2].n128_u64[1] = v25;
  v15 = *(a1 + 168);

  *(a1 + 168) = v6;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DD0E32B0;
  *(v16 + 32) = sub_1DD002414(2);
  *(v16 + 40) = v17;
  *(v16 + 48) = sub_1DD002414(3);
  *(v16 + 56) = v18;
  v19 = *(a1 + 160);

  *(a1 + 160) = v16;
  *(a1 + 176) = 1;
  return result;
}

unint64_t sub_1DD002414(char a1)
{
  sub_1DD0DEC1C();

  sub_1DD002DE8(a1);

  sub_1DCB598EC(1);
  v2 = sub_1DD0DE99C();
  v4 = v3;

  sub_1DCB594B0(1uLL);
  sub_1DCB59970();

  sub_1DD0DE11C();

  MEMORY[0x1E12A6780](v2, v4);

  return 0xD000000000000012;
}

uint64_t sub_1DD002538@<X0>(uint64_t a1@<X8>)
{
  NLContextUpdate.init()(a1);
  v2 = sub_1DD002414(0);
  v4 = v3;
  v5 = *(a1 + 192);

  *(a1 + 184) = v2;
  *(a1 + 192) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_13_42(v6, xmmword_1DD0E07C0);
  v7 = OUTLINED_FUNCTION_10_45();
  OUTLINED_FUNCTION_3_74(v7, v8, v9, v10, v11, v12, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69E6158], v7, v7, v7, v23, v24, v25);
  sub_1DD0DEA3C();

  sub_1DD002414(4);
  OUTLINED_FUNCTION_9_47();
  v14 = sub_1DD0DE06C();
  MEMORY[0x1E12A6780](v14);

  v6[2].n128_u64[0] = v26;
  v6[2].n128_u64[1] = v27;
  v15 = *(a1 + 168);

  *(a1 + 168) = v6;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DD0E32B0;
  *(v16 + 32) = sub_1DD002414(2);
  *(v16 + 40) = v17;
  *(v16 + 48) = sub_1DD002414(3);
  *(v16 + 56) = v18;
  v19 = *(a1 + 160);

  *(a1 + 160) = v16;
  *(a1 + 176) = 1;
  v20 = sub_1DD0026C0();
  v21 = *(a1 + 104);

  *(a1 + 104) = v20;
  return result;
}

uint64_t sub_1DD0026C0()
{
  __src[0] = &unk_1F584EF70;
  __src[1] = 1953718636;
  __src[2] = 0xE400000000000000;
  strcpy(&__src[3], "secondToLast");
  BYTE5(__src[4]) = 0;
  HIWORD(__src[4]) = -5120;
  __src[5] = 0x4C6F546472696874;
  __src[6] = 0xEB00000000747361;
  __src[7] = 0xD000000000000019;
  __src[8] = 0x80000001DD129730;
  v42 = MEMORY[0x1E69E7CC0];
  v43 = MEMORY[0x1E69E7CC0];
  if (qword_1EDE4F908 != -1)
  {
LABEL_37:
    OUTLINED_FUNCTION_1_5();
  }

  sub_1DD0DE6DC();
  v0 = MEMORY[0x1E69E7CC0];
  v1 = sub_1DD0DD7EC();
  MEMORY[0x1EEE9AC00](v1, v2);
  sub_1DCC34890();
  v4 = v3;
  v5 = 0;
  v37 = *(v3 + 16);
  v6 = 32;
  while (v37 != v5)
  {
    if (v5 >= *(v4 + 16))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v7 = v4;
    v8 = *(v4 + v6);
    v9 = *(v8 + 16);
    v10 = *(v0 + 16);
    v11 = __OFADD__(v10, v9);

    if (v11)
    {
      goto LABEL_32;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v10 + v9 > *(v0 + 24) >> 1)
    {
      sub_1DCE18ECC();
      v0 = v12;
    }

    if (*(v8 + 16))
    {
      if ((*(v0 + 24) >> 1) - *(v0 + 16) < v9)
      {
        goto LABEL_35;
      }

      swift_arrayInitWithCopy();

      if (v9)
      {
        v13 = *(v0 + 16);
        v14 = __OFADD__(v13, v9);
        v15 = v13 + v9;
        if (v14)
        {
          goto LABEL_36;
        }

        *(v0 + 16) = v15;
      }
    }

    else
    {

      if (v9)
      {
        goto LABEL_33;
      }
    }

    v6 += 56;
    ++v5;
    v4 = v7;
  }

  sub_1DCBB9680(v0);
  v16 = *(v4 + 16);
  if (v16)
  {
    v41[0] = MEMORY[0x1E69E7CC0];
    sub_1DCE06C08();
    v17 = v41[0];
    v18 = (v4 + 80);
    do
    {
      v19 = *(v18 - 4);
      v20 = *(v18 - 2);
      v36 = *(v18 - 3);
      v38 = *(v18 - 5);
      v21 = *v18;
      v35 = *(v18 - 1);
      v41[0] = v17;
      v23 = *(v17 + 16);
      v22 = *(v17 + 24);

      if (v23 >= v22 >> 1)
      {
        sub_1DCE06C08();
        v17 = v41[0];
      }

      v18 += 7;
      *(v17 + 16) = v23 + 1;
      v24 = (v17 + 48 * v23);
      v24[4] = v38;
      v24[5] = v19;
      v24[6] = v36;
      v24[7] = v20;
      v24[8] = v35;
      v24[9] = v21;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_1DCBB9718(v17);
  memcpy(v41, __src, 0x48uLL);
  v25 = OrdinalDisplayHintsBuilder.build(for:)(v42);
  sub_1DCC08984(__src);
  sub_1DCBB9680(v25);
  v26 = 0;
  v27 = v43;
  v28 = *(v43 + 16);
  v29 = 32;
  while (v28 != v26)
  {
    if (v26 >= *(v27 + 16))
    {
      goto LABEL_34;
    }

    memcpy(v41, (v27 + v29), 0x60uLL);
    ++v26;
    sub_1DCC089D8(v41, v40);
    sub_1DD0DE6DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1DD0E07C0;
    memcpy(v40, v41, sizeof(v40));
    sub_1DCC089D8(v41, &v39);
    v31 = sub_1DD0DE02C();
    v33 = v32;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = sub_1DCB34060();
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    sub_1DD0DD7EC();

    sub_1DCC08A34(v41);
    v29 += 96;
  }

  return v27;
}

uint64_t sub_1DD002B9C@<X0>(uint64_t a1@<X8>)
{
  NLContextUpdate.init()(a1);
  v2 = sub_1DD002414(0);
  v4 = v3;
  v5 = *(a1 + 192);

  *(a1 + 184) = v2;
  *(a1 + 192) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_13_42(v6, xmmword_1DD0E32B0);
  v7 = sub_1DCB1C4D8();
  OUTLINED_FUNCTION_3_74(v7, v8, v9, v10, v11, v12, v13, v14, MEMORY[0x1E69E6158], v7, v7, v7, 95, 0xE100000000000000, 32);
  sub_1DD0DEA3C();

  v24 = sub_1DD002414(4);
  v26 = v15;
  MEMORY[0x1E12A6780](0x2E65756C61562ELL, 0xE700000000000000);
  v16 = sub_1DD0DE06C();
  MEMORY[0x1E12A6780](v16);

  v6[2].n128_u64[0] = v24;
  v6[2].n128_u64[1] = v26;
  sub_1DD0DE06C();
  sub_1DD0DEA3C();

  v25 = sub_1DD002414(4);
  v27 = v17;
  MEMORY[0x1E12A6780](0x2E65756C61562ELL, 0xE700000000000000);
  v18 = sub_1DD0DE06C();
  MEMORY[0x1E12A6780](v18);

  v6[3].n128_u64[0] = v25;
  v6[3].n128_u64[1] = v27;
  v19 = *(a1 + 168);

  *(a1 + 168) = v6;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1DD0E07C0;
  *(v20 + 32) = sub_1DD002414(4);
  *(v20 + 40) = v21;
  v22 = *(a1 + 160);

  *(a1 + 160) = v20;
  *(a1 + 176) = 1;
  return result;
}

unint64_t sub_1DD002DE8(char a1)
{
  result = 0x6C6143656E6F6870;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      v3 = 9;
      goto LABEL_7;
    case 4:
      v3 = 5;
LABEL_7:
      result = v3 | 0xD000000000000010;
      break;
    case 5:
      result = 0x6D754E656E6F6870;
      break;
    case 6:
      result = 0x6464416C69616D65;
      break;
    case 7:
      result = 0x75466E6F73726570;
      break;
    case 8:
      result = 0x69466E6F73726570;
      break;
    case 9:
      result = 0x614C6E6F73726570;
      break;
    case 10:
      result = 0x54746361746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD002F70(uint64_t *a1, void *a2)
{
  v4 = sub_1DD003DB0(a2);
  v6 = v5;
  swift_bridgeObjectRelease_n();
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  v59 = sub_1DD002414(1);
  v10 = v9;

  v11 = sub_1DCCC331C(a2);
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = v11;
  v14 = v12;
  v15 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v15 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

LABEL_15:
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v56 = v7;

  swift_bridgeObjectRelease_n();
  v16 = sub_1DD002414(7);
  v51 = v17;
  v53 = v16;

  sub_1DCB22A50(0, 1);
  sub_1DCB22A50(0, 1);
  sub_1DCE18ECC();
  v19 = v18;
  v20 = *(v18 + 16);
  if (v20 >= *(v18 + 24) >> 1)
  {
    sub_1DCE18ECC();
    v19 = v44;
  }

  *(v19 + 16) = v20 + 1;
  v21 = v19 + 96 * v20;
  v7 = v56;
  *(v21 + 32) = v56;
  *(v21 + 40) = v8;
  *(v21 + 48) = 0xD000000000000012;
  *(v21 + 56) = 0x80000001DD129770;
  *(v21 + 64) = v59;
  *(v21 + 72) = v10;
  *(v21 + 80) = v13;
  *(v21 + 88) = v14;
  *(v21 + 96) = xmmword_1DD0E4020;
  *(v21 + 112) = v53;
  *(v21 + 120) = v51;
LABEL_16:
  v22 = sub_1DCC6E534(a2);
  if (v23)
  {
    v24 = v22;
    v25 = v23;
    v26 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v26 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {
      v57 = v8;

      swift_bridgeObjectRelease_n();
      v27 = sub_1DD002414(8);
      v52 = v28;
      v54 = v27;

      sub_1DCB22A50(0, 1);
      sub_1DCB22A50(0, 1);
      v29 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = *(v19 + 16);
        sub_1DCE18ECC();
        v19 = v46;
      }

      v30 = *(v19 + 16);
      v31 = v59;
      if (v30 >= *(v19 + 24) >> 1)
      {
        sub_1DCE18ECC();
        v19 = v47;
        v31 = v59;
      }

      *(v19 + 16) = v30 + 1;
      v32 = v19 + 96 * v30;
      v7 = v29;
      *(v32 + 32) = v29;
      v8 = v57;
      *(v32 + 40) = v57;
      *(v32 + 48) = 0xD000000000000012;
      *(v32 + 56) = 0x80000001DD129770;
      *(v32 + 64) = v31;
      *(v32 + 72) = v10;
      *(v32 + 80) = v24;
      *(v32 + 88) = v25;
      *(v32 + 96) = xmmword_1DD0E4030;
      *(v32 + 112) = v54;
      *(v32 + 120) = v52;
    }

    else
    {
    }
  }

  v33 = sub_1DCC6E540(a2);
  if (!v34)
  {
    goto LABEL_36;
  }

  v35 = v33;
  v36 = v34;
  v37 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v37 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (!v37)
  {

LABEL_36:
    v41 = v59;
    goto LABEL_37;
  }

  v58 = v7;

  swift_bridgeObjectRelease_n();
  v55 = sub_1DD002414(9);
  v39 = v38;

  sub_1DCB22A50(0, 1);
  sub_1DCB22A50(0, 1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v48 = *(v19 + 16);
    sub_1DCE18ECC();
    v19 = v49;
  }

  v40 = *(v19 + 16);
  v41 = v59;
  if (v40 >= *(v19 + 24) >> 1)
  {
    sub_1DCE18ECC();
    v19 = v50;
    v41 = v59;
  }

  *(v19 + 16) = v40 + 1;
  v42 = v19 + 96 * v40;
  *(v42 + 32) = v58;
  *(v42 + 40) = v8;
  *(v42 + 48) = 0xD000000000000012;
  *(v42 + 56) = 0x80000001DD129770;
  *(v42 + 64) = v41;
  *(v42 + 72) = v10;
  *(v42 + 80) = v35;
  *(v42 + 88) = v36;
  *(v42 + 96) = xmmword_1DD0E4040;
  *(v42 + 112) = v55;
  *(v42 + 120) = v39;
  v7 = v58;
LABEL_37:
  *a1 = v7;
  a1[1] = v8;
  a1[2] = 0xD000000000000012;
  a1[3] = 0x80000001DD129770;
  a1[4] = v41;
  a1[5] = v10;
  return v19;
}