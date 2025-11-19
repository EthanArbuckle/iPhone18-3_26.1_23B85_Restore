uint64_t sub_268D8C3D0(uint64_t a1)
{
  v14 = *v2;
  v12 = *v2 + 16;
  v13 = v14 + 92;
  v4 = *(*v2 + 1040);
  v14[92] = *v2;
  v14[131] = a1;
  v14[132] = v1;

  if (v1)
  {
    v7 = *v13;
    v6 = sub_268D8B458;
  }

  else
  {
    v9 = *(v12 + 1008);
    v10 = *(v12 + 1000);
    v11 = *(v12 + 992);

    v5 = *v13;
    v6 = sub_268D8C588;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268D8C588()
{
  v1 = v0[131];
  v9 = v0[104];
  v10 = v0[101];
  v12 = v0[100];
  v8 = v0[99];
  v0[92] = v0;
  v0[95] = v1;
  sub_268F99804();

  v11 = swift_task_alloc();
  *(v11 + 16) = v12;
  *(v11 + 24) = v8;
  sub_268F99B94();

  sub_268CDE730(v12 + 152, (v0 + 82));
  v14 = v0[85];
  v15 = v0[86];
  __swift_project_boxed_opaque_existential_1(v0 + 82, v14);
  v2 = *(MEMORY[0x277D5BE50] + 4);
  v3 = swift_task_alloc();
  v13[133] = v3;
  *v3 = v13[92];
  v3[1] = sub_268D8AF60;
  v4 = v13[131];
  v5 = v13[104];
  v6 = v13[98];

  return MEMORY[0x2821BB480](v6, v4, v5, v14, v15);
}

uint64_t sub_268D8C714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v7 = a2;
  v9 = a3;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v7 - v8;
  v18 = MEMORY[0x28223BE20](v11);
  v17 = v4;
  v16 = a3;
  v14 = *(v4 + 96);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC768, &qword_268F9FFE0);
  v13 = sub_268F99B44();
  v12 = sub_268F99B24();
  sub_268EAE738(v13, v12, v15);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);

  v5 = sub_268F999A4();
  (*(*(v5 - 8) + 56))(v15, 0, 1);
  return sub_268F99BA4();
}

uint64_t sub_268D8C8A8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  return v4;
}

uint64_t sub_268D8C96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_268D34238;

  return sub_268D88144(a1, a2, a3);
}

uint64_t sub_268D8CA34(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D34238;

  return sub_268D899C8(a1, a2);
}

uint64_t sub_268D8CAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B430] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for ConfirmBinarySettingIntentStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9D08](a1, a2, v7, a4);
}

uint64_t sub_268D8CBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B438] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for ConfirmBinarySettingIntentStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9D10](a1, a2, v7, a4);
}

uint64_t sub_268D8CCC4(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D34238;

  return sub_268D8BB88(a1, a2);
}

uint64_t sub_268D8CD84(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D34238;

  return sub_268D8B82C(a1, a2);
}

uint64_t sub_268D8CE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v5;
  *(v5 + 16) = v5;
  v6 = *(MEMORY[0x277D5B428] + 4);
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  v8 = type metadata accessor for ConfirmBinarySettingIntentStrategy();
  *v7 = *(v10 + 16);
  v7[1] = sub_268D34238;

  return MEMORY[0x2821B9D00](a1, a2, a3, v8, a5);
}

uint64_t sub_268D8CF20()
{
  type metadata accessor for GetFlashlightHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE81B0 = result;
  return result;
}

uint64_t *sub_268D8CF88()
{
  if (qword_280FE4D30 != -1)
  {
    swift_once();
  }

  return &qword_280FE81B0;
}

uint64_t sub_268D8CFE8()
{
  v1 = *sub_268D8CF88();

  return v1;
}

uint64_t sub_268D8D018(void *a1, void (*a2)(id), uint64_t a3)
{
  v35 = a3;
  v36 = a2;
  v37 = a1;
  v39 = 0;
  v47 = 0;
  v46 = 0;
  v38 = 0;
  v50 = a1;
  v48 = a2;
  v49 = a3;
  v41 = sub_268F9B284();
  v43 = *sub_268DC7AE8();
  v4 = v43;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v42 = sub_268F9B734();
  sub_268F9AC14();

  v44 = *(v3 + 16);

  v45 = sub_268D3DE34();

  v46 = v45;
  usleep(0x30D40u);
  if (sub_268D3DF9C())
  {
    v5 = v38;
    v6 = sub_268DB9D74();
    v27 = *v6;
    v28 = v6[1];
    v29 = *(v6 + 16);
    v30 = *sub_268DC7AE8();
    v26 = v30;
    v7 = v30;
    v31 = *(v34 + 24);

    v8 = v37;

    v32 = v20;
    v9 = MEMORY[0x28223BE20](v27);
    v19[2] = v10;
    v19[3] = v37;
    v19[4] = v36;
    v19[5] = v11;
    sub_268DB944C(v9, v12, v13, v14, v15, sub_268D8D700, v19, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v33 = v5;

    return v33;
  }

  else
  {
    v20[1] = sub_268F9B284();
    v22 = *sub_268DC7AE8();
    v16 = v22;
    v21 = sub_268F9B734();
    sub_268F9AC14();

    sub_268E948B8();
    v23 = v17;
    v24 = sub_268E41B70();

    v36(v24);

    return v38;
  }
}

uint64_t sub_268D8D388(uint64_t a1, void *a2, void (*a3)(id))
{
  v18 = sub_268D3E0C4();

  if (v18)
  {
    v15 = sub_268D3DFD8() ^ 1;
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  v14 = (v15 & 1) != 0 && sub_268D3E1B0() > 0.0;

  if (v14)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  sub_268CDD0DC();
  v19 = sub_268CD42AC(3, 0);
  sub_268CDD140();
  sub_268F9B734();
  *v3 = sub_268E41954([a2 settingMetadata], 0, 0, v13, 0, 0);
  sub_268CD0F7C();
  v8 = sub_268F9B004();

  [v19 setSettingResponseDatas_];
  MEMORY[0x277D82BD8](v8);
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v5;
  MEMORY[0x277D82BE0](v19);
  sub_268CDD1A4();
  v9 = sub_268F9AE74();
  v10 = v6;
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v12);

  a3(v19);

  return MEMORY[0x277D82BD8](v19);
}

uint64_t sub_268D8D758()
{
  type metadata accessor for SetConversationAwarenessHandler();
  v0 = sub_268CDC590();
  result = sub_268D8D7C0(v0, 0);
  qword_2802F07B8 = result;
  return result;
}

uint64_t *sub_268D8D818()
{
  if (qword_2802DAFA8 != -1)
  {
    swift_once();
  }

  return &qword_2802F07B8;
}

uint64_t sub_268D8D878()
{
  v1 = *sub_268D8D818();

  return v1;
}

uint64_t sub_268D8D8A8(uint64_t a1, char a2)
{
  v3 = sub_268DB9DD4();
  v4 = v3[1];
  v5 = *(v3 + 16);
  *(v2 + 16) = *v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;

  return v9;
}

uint64_t sub_268D8D938(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 57) = a1 & 1;
  *(v2 + 16) = v2;
  *(v2 + 56) = 0;
  *(v2 + 24) = 0;
  *(v2 + 56) = a1 & 1;
  *(v2 + 24) = v1;
  v3 = *(v2 + 16);
  return MEMORY[0x2822009F8](sub_268D8D9A0, 0);
}

uint64_t sub_268D8D9A0()
{
  v1 = v0[4];
  v0[2] = v0;
  v0[5] = *(v1 + 40);

  v2 = swift_task_alloc();
  *(v5 + 48) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268D8DA64;
  v3 = *(v5 + 57) & 1;

  return sub_268D51B00(v3);
}

uint64_t sub_268D8DA64(__int16 a1)
{
  v9 = *v1;
  v3 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  *(v9 + 16) = *v1;
  v7 = a1;
  v8 = HIBYTE(a1);

  v4 = *(*(v9 + 16) + 8);

  return v4(__PAIR16__(v8, v7));
}

uint64_t sub_268D8DBF0(char a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_268CD7DB8;

  return sub_268D8D938(a1 & 1);
}

uint64_t sub_268D8DCAC()
{
  v5 = v1;
  *(v1 + 16) = v1;
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268CD7DB8;

  return sub_268CDD400();
}

uint64_t sub_268D8DD5C()
{
  type metadata accessor for SetAXReduceTransparencyHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F07C0 = result;
  return result;
}

uint64_t *sub_268D8DDC4()
{
  if (qword_2802DAFB0 != -1)
  {
    swift_once();
  }

  return &qword_2802F07C0;
}

uint64_t sub_268D8DE24()
{
  v1 = *sub_268D8DDC4();

  return v1;
}

uint64_t sub_268D8DE54(void *a1, void (*a2)(void), uint64_t a3)
{
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v7 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v7);
  v9 = *(v3 + 16);

  v10 = sub_268D3E754();

  v5 = sub_268DB9E34();
  v12 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v15 = *(v8 + 24);

  sub_268DAAB84(v10, a1, v12, v13, v14, v15 & 1, a2, a3, sub_268D8E078, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268D8E078);
}

uint64_t sub_268D8E008(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  sub_268D3E784();
}

uint64_t sub_268D8E0C4()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_280FE8088 = result;
  return result;
}

uint64_t *sub_268D8E144()
{
  if (qword_280FE3718 != -1)
  {
    swift_once();
  }

  return &qword_280FE8088;
}

uint64_t sub_268D8E1A4()
{
  v0 = sub_268D8E144();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268D8E1DC()
{
  result = sub_268F9AEF4();
  qword_280FE8078 = result;
  qword_280FE8080 = v1;
  return result;
}

uint64_t *sub_268D8E220()
{
  if (qword_280FE3710 != -1)
  {
    swift_once();
  }

  return &qword_280FE8078;
}

uint64_t sub_268D8E280()
{
  v0 = sub_268D8E220();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268D8E2BC()
{
  result = sub_268F9AEF4();
  qword_2802F07C8 = result;
  qword_2802F07D0 = v1;
  return result;
}

uint64_t *sub_268D8E300()
{
  if (qword_2802DAFB8 != -1)
  {
    swift_once();
  }

  return &qword_2802F07C8;
}

uint64_t sub_268D8E360()
{
  v0 = sub_268D8E300();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268D8E39C()
{
  result = sub_268F9AEF4();
  qword_2802F07D8 = result;
  qword_2802F07E0 = v1;
  return result;
}

uint64_t *sub_268D8E3E0()
{
  if (qword_2802DAFC0 != -1)
  {
    swift_once();
  }

  return &qword_2802F07D8;
}

uint64_t sub_268D8E440()
{
  v0 = sub_268D8E3E0();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268D8E47C()
{
  type metadata accessor for SupportedFlowDomainProvider();
  v3 = *sub_268D2B334();

  sub_268D58CB4(v5);
  v2 = sub_268CDC590();
  sub_268D8E52C(v4);
  v0 = sub_268CDD6D4();
  result = sub_268D8E580(v3, v5, v2, v4, v0 & 1);
  qword_280FE3700 = result;
  return result;
}

uint64_t sub_268D8E52C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *sub_268E518F0();

  result = type metadata accessor for SiriReferenceResolutionConverter();
  a1[3] = result;
  a1[4] = &off_287992C68;
  *a1 = v3;
  return result;
}

uint64_t *sub_268D8E5F0()
{
  if (qword_280FE36F8 != -1)
  {
    swift_once();
  }

  return &qword_280FE3700;
}

uint64_t static SupportedFlowDomainProvider.shared.getter()
{
  v1 = *sub_268D8E5F0();

  return v1;
}

uint64_t sub_268D8E688()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_268D8E6F0()
{
  v2 = *(v0 + 64);

  return v2;
}

const char *sub_268D8E7B0(char a1)
{
  if (a1)
  {
    return "DisableAllActions";
  }

  else
  {
    return "IntelligenceFlow";
  }
}

uint64_t sub_268D8E8FC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, char a5)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5 & 1;
  v15 = v5;

  *(v5 + 16) = a1;
  sub_268CDE730(a2, v14);
  sub_268CDF978(v14, (v5 + 24));

  *(v5 + 64) = a3;
  sub_268D35D60(a4, v13);
  memcpy((v5 + 72), v13, 0x28uLL);
  *(v5 + 112) = a5;
  sub_268D28414(a4);

  __swift_destroy_boxed_opaque_existential_0(a2);

  return v12;
}

unint64_t sub_268D8E9F8()
{
  v2 = qword_2802DC770;
  if (!qword_2802DC770)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC770);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D8EA74@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v132 = a2;
  v183 = a1;
  v193 = "SupportedFlowDomainProvider: attempting to determine domain for %@.";
  v134 = "SupportedFlowDomainProvider failed to parse uso";
  v135 = "SupportedFlowDomainProvider: NLX disabled on macOS.";
  v136 = "SupportedFlowDomainProvider: Siri X flag is not enabled.";
  v228 = 0;
  v226 = 0;
  v225 = 0;
  v233 = 0;
  v137 = 0;
  v221 = 0;
  v232 = 0;
  v231 = 0;
  v230 = 0;
  v229 = 0;
  v227 = 0;
  v201 = 0;
  v197 = 0;
  v138 = sub_268F99CB4();
  v139 = *(v138 - 8);
  v140 = v138 - 8;
  v141 = (*(v139 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v142 = v66 - v141;
  v143 = sub_268F99C64();
  v144 = *(v143 - 8);
  v145 = v143 - 8;
  v146 = (*(v144 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v197);
  v147 = v66 - v146;
  v233 = v66 - v146;
  v148 = sub_268F99C24();
  v149 = *(v148 - 8);
  v150 = v148 - 8;
  v151 = (*(v149 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v197);
  v152 = v66 - v151;
  v232 = v66 - v151;
  v153 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3);
  v154 = v66 - v153;
  v231 = v66 - v153;
  v155 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v5);
  v156 = v66 - v155;
  v230 = v66 - v155;
  v157 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v158 = v66 - v157;
  v229 = v66 - v157;
  v9 = type metadata accessor for SettingsNLIntent();
  v159 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v160 = v66 - v159;
  v228 = v66 - v159;
  v161 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC778, &unk_268F9F500) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v197);
  v162 = v66 - v161;
  v163 = sub_268F9A704();
  v164 = *(v163 - 8);
  v165 = v163 - 8;
  v166 = (*(v164 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v197);
  v167 = v66 - v166;
  v168 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v169 = v66 - v168;
  v227 = v66 - v168;
  v186 = sub_268F99C34();
  v181 = *(v186 - 8);
  v182 = v186 - 8;
  v170 = (*(v181 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v183);
  v171 = v66 - v170;
  v172 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v12);
  v173 = v66 - v172;
  v174 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x28223BE20](v14);
  v175 = v66 - v174;
  v176 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = MEMORY[0x28223BE20](v16);
  v177 = (v66 - v176);
  v178 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = MEMORY[0x28223BE20](v18);
  v179 = v66 - v178;
  v180 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = MEMORY[0x28223BE20](v20);
  v187 = v66 - v180;
  v226 = v22;
  v225 = v2;
  v194 = sub_268F9B284();
  v196 = *sub_268D8E144();
  MEMORY[0x277D82BE0](v196);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v192 = sub_268F9B734();
  v190 = v23;
  v184 = *(v181 + 16);
  v185 = v181 + 16;
  v184(v187, v183, v186);
  v188 = sub_268F9AE64();
  v189 = v24;
  v190[3] = MEMORY[0x277D837D0];
  v25 = sub_268CDD224();
  v26 = v188;
  v27 = v189;
  v28 = v190;
  v29 = v25;
  v30 = v192;
  v190[4] = v29;
  *v28 = v26;
  v28[1] = v27;
  sub_268CD0F7C();
  v195 = v30;
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v196);
  sub_268D90470();
  v198 = sub_268CF0C44();
  v199 = [v198 isClarityBoardEnabled];
  MEMORY[0x277D82BD8](v198);
  result = v199;
  if (v199)
  {
    *v132 = 5;
    return result;
  }

  v184(v179, v183, v186);
  v131 = (*(v181 + 88))(v179, v186);
  if (v131 == *MEMORY[0x277D5C128])
  {
    v33 = v169;
    v184(v175, v179, v186);
    (*(v181 + 96))(v175, v186);
    (*(v164 + 32))(v33, v175, v163);
    v227 = v33;
    sub_268F9A6F4();
    v117 = sub_268F9A114();
    v118 = *(v117 - 8);
    v119 = v117 - 8;
    if ((*(v118 + 48))(v162, 1) == 1)
    {
      sub_268D91070(v162);
      v115 = 0;
      v116 = 0;
    }

    else
    {
      v113 = sub_268F9A104();
      v114 = v34;
      (*(v118 + 8))(v162, v117);
      v115 = v113;
      v116 = v114;
    }

    v111 = v116;
    v110 = v115;

    v109 = sub_268F9AEF4();
    v112 = v35;

    v219[0] = v110;
    v219[1] = v111;
    *&v220 = v109;
    *(&v220 + 1) = v112;
    if (v111)
    {
      sub_268D28874(v219, &v204);
      if (*(&v220 + 1))
      {
        v106 = &v203;
        v203 = v204;
        v105 = &v202;
        v202 = v220;
        v107 = MEMORY[0x26D62DB50](v204, *(&v204 + 1), v220, *(&v220 + 1));
        sub_268CD9D30(v105);
        sub_268CD9D30(v106);
        sub_268CD9D30(v219);
        v108 = v107;
        goto LABEL_26;
      }

      sub_268CD9D30(&v204);
    }

    else if (!*(&v220 + 1))
    {
      sub_268CD9D30(v219);
      v108 = 1;
LABEL_26:
      v104 = v108;

      if ((v104 & 1) == 0)
      {
        v40 = v163;
        v41 = v169;
        v42 = v164;
        *v132 = 3;
        (*(v42 + 8))(v41, v40);
        return (*(v181 + 8))(v179, v186);
      }

      v36 = v160;
      (*(v164 + 16))(v167, v169, v163);
      sub_268E42410(v167, v36);
      sub_268E4262C();
      v218[0] = v218[1];
      v103 = &v217;
      v217 = 3;
      v102 = &v216;
      sub_268D288B4(v218, &v215);
      sub_268D288B4(v103, v102);
      if (v215 == 13)
      {
        if (v216 == 13)
        {
          v101 = 1;
LABEL_36:
          if (v101)
          {
            v37 = v160;
            *v132 = 1;
            sub_268D87800(v37);
            (*(v164 + 8))(v169, v163);
            return (*(v181 + 8))(v179, v186);
          }

          sub_268E4262C();
          v214[0] = v214[1];
          v98 = &v213;
          v213 = 9;
          v97 = &v212;
          sub_268D288B4(v214, &v211);
          sub_268D288B4(v98, v97);
          if (v211 == 13)
          {
            if (v212 == 13)
            {
              v96 = 1;
LABEL_47:
              if (v96)
              {
                v92 = *(v133 + 16);

                v93 = sub_268D2B440();

                if (v93)
                {
                  v91 = 2;
                }

                else
                {
                  v91 = 1;
                }

                v38 = v160;
                *v132 = v91;
                sub_268D87800(v38);
                (*(v164 + 8))(v169, v163);
                return (*(v181 + 8))(v179, v186);
              }

              else
              {
                v39 = v160;
                *v132 = 2;
                sub_268D87800(v39);
                (*(v164 + 8))(v169, v163);
                return (*(v181 + 8))(v179, v186);
              }
            }
          }

          else
          {
            sub_268D288B4(&v211, &v210);
            if (v212 != 13)
            {
              v95 = &v209;
              v209 = v210;
              v94 = &v208;
              v208 = v212;
              sub_268D91118();
              v96 = sub_268F9AE04();
              goto LABEL_47;
            }
          }

          v96 = 0;
          goto LABEL_47;
        }
      }

      else
      {
        sub_268D288B4(&v215, &v207);
        if (v216 != 13)
        {
          v100 = &v206;
          v206 = v207;
          v99 = &v205;
          v205 = v216;
          sub_268D91118();
          v101 = sub_268F9AE04();
          goto LABEL_36;
        }
      }

      v101 = 0;
      goto LABEL_36;
    }

    sub_268D28550(v219);
    v108 = 0;
    goto LABEL_26;
  }

  if (v131 == *MEMORY[0x277D5C150])
  {
    v43 = v158;
    v184(v173, v179, v186);
    (*(v181 + 96))(v173, v186);
    v88 = *(v149 + 16);
    v89 = v149 + 16;
    v88(v43, v173, v148);
    v90 = type metadata accessor for ToggleBinarySetting();
    v44 = sub_268D90E70();
    if (sub_268F39FF8(v90, v90, v44))
    {
      v45 = v149;
      v229 = v158;
      *v132 = 2;
      v87 = *(v45 + 8);
      v86 = v45 + 8;
      v87();
      (v87)(v173, v148);
      return (*(v181 + 8))(v179, v186);
    }

    v46 = v156;
    v83 = *(v149 + 8);
    v84 = v149 + 8;
    (v83)(v158, v148);
    v88(v46, v173, v148);
    v85 = type metadata accessor for UndoBinarySetting();
    v47 = sub_268D90EF0();
    if (sub_268F39FF8(v85, v85, v47))
    {
      v48 = v83;
      v230 = v156;
      *v132 = 2;
      v48();
      (v83)(v173, v148);
      return (*(v181 + 8))(v179, v186);
    }

    v49 = v154;
    (v83)(v156, v148);
    v88(v49, v173, v148);
    v82 = type metadata accessor for UndoNumericSetting();
    v50 = sub_268D90F70();
    if (sub_268F39FF8(v82, v82, v50))
    {
      v51 = v83;
      v231 = v154;
      *v132 = 2;
      v51();
      (v83)(v173, v148);
      return (*(v181 + 8))(v179, v186);
    }

    v52 = v152;
    (v83)(v154, v148);
    (*(v149 + 32))(v52, v173, v148);
    v81 = type metadata accessor for LaunchEnvPicker();
    v53 = sub_268D90FF0();
    if (sub_268F39FF8(v81, v81, v53))
    {
      v54 = v83;
      v232 = v152;
      *v132 = 2;
      v54();
      return (*(v181 + 8))(v179, v186);
    }

    (v83)(v152, v148);
    goto LABEL_71;
  }

  if (v131 == *MEMORY[0x277D5C148])
  {
    v184(v177, v179, v186);
    (*(v181 + 96))(v177, v186);
    v127 = *v177;
    v201 = v127;
    v129 = sub_268F9ABB4();
    v200[2] = v129;
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7A0, &unk_268F9F510);
    sub_268D91190();
    sub_268F9B234();
    v130 = v200[1];

    if (v130)
    {
      v126 = v130;
      v124 = v130;
      sub_268F9AB84();
      v125 = swift_dynamicCastClass();
      if (v125)
      {
        v123 = v125;
      }

      else
      {
        MEMORY[0x277D82BD8](v124);
        v123 = 0;
      }

      v122 = v123;
    }

    else
    {
      v122 = 0;
    }

    v200[0] = v122;
    v121 = v122 != 0;
    v120 = v121;
    sub_268D35038(v200);
    v32 = v127;
    if (v120)
    {
      *v132 = 6;
    }

    else
    {
      *v132 = 0;
    }

    MEMORY[0x277D82BD8](v32);
    return (*(v181 + 8))(v179, v186);
  }

  else
  {
    if (v131 != *MEMORY[0x277D5C160])
    {
LABEL_71:
      v62 = v186;
      v63 = v179;
      v64 = v181;
      *v132 = 0;
      return (*(v64 + 8))(v63, v62);
    }

    v184(v171, v179, v186);
    (*(v181 + 96))(v171, v186);
    (*(v144 + 32))(v147, v171, v143);
    v233 = v147;
    v79 = v222;
    sub_268CDE730(v133 + 24, v222);
    v78 = v223;
    v77 = v224;
    __swift_project_boxed_opaque_existential_1(v79, v223);
    v80 = (*(v77 + 8))(v78);
    __swift_destroy_boxed_opaque_existential_0(v79);
    if (v80)
    {
      if (sub_268D3DBE8())
      {
        v71 = sub_268F9B294();
        v73 = *sub_268D8E144();
        MEMORY[0x277D82BE0](v73);
        v72 = sub_268F9B734();
        sub_268F9AC14();

        MEMORY[0x277D82BD8](v73);
        v58 = v144;
        v59 = v147;
        v60 = v143;
        *v132 = 0;
        (*(v58 + 8))(v59, v60);
        return (*(v181 + 8))(v179, v186);
      }

      else
      {
        v61 = v137;
        sub_268F99C54();
        sub_268D904D4(v142, v132);
        v70 = v61;
        if (v61)
        {
          v69 = v70;
          (*(v139 + 8))(v142, v138);
          v65 = v69;
          v221 = v69;
          v66[1] = sub_268F9B294();
          v68 = *sub_268D8E144();
          MEMORY[0x277D82BE0](v68);
          v67 = sub_268F9B734();
          sub_268F9AC14();

          MEMORY[0x277D82BD8](v68);

          (*(v144 + 8))(v147, v143);
          result = (*(v181 + 8))(v179, v186);
          *v132 = 0;
        }

        else
        {
          (*(v139 + 8))(v142, v138);
          (*(v144 + 8))(v147, v143);
          return (*(v181 + 8))(v179, v186);
        }
      }
    }

    else
    {
      v74 = sub_268F9B294();
      v76 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v76);
      v75 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v76);
      v55 = v144;
      v56 = v147;
      v57 = v143;
      *v132 = 4;
      (*(v55 + 8))(v56, v57);
      return (*(v181 + 8))(v179, v186);
    }
  }

  return result;
}

unint64_t sub_268D90470()
{
  v2 = qword_280FE2770;
  if (!qword_280FE2770)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280FE2770);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_268D904D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v62 = a1;
  v3 = v2;
  v4 = v62;
  v74 = v3;
  v81 = 0;
  v84 = sub_268D91218;
  v63 = "SupportedFlowDomainProvider no first userStatedTask found";
  v64 = "SupportedFlowDomainProvider userDialogAct.userStarted.task serialization error";
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v86 = 0;
  v71 = 0;
  v65 = sub_268F99E04();
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v65);
  v69 = &v26 - v68;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC748, &qword_268F9F1F8);
  v70 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v80 = &v26 - v70;
  v72 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7A8, &unk_268F9F520) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v71);
  v73 = &v26 - v72;
  v75 = sub_268F99C94();
  v76 = *(v75 - 8);
  v77 = v75 - 8;
  v78 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v75);
  v79 = &v26 - v78;
  v90 = &v26 - v78;
  v89 = v4;
  v88 = v6;
  v87 = sub_268F99CA4();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC750, &qword_268F9F200);
  sub_268D898B8();
  v7 = v83;
  sub_268F9AF94();
  v85 = v7;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    sub_268CD7930(&v87);
    v58 = sub_268F99DE4();
    v59 = *(v58 - 8);
    v60 = v58 - 8;
    if ((*(v59 + 48))(v80, 1) == 1)
    {
      sub_268D8809C(v80);
      (*(v76 + 56))(v73, 1, 1, v75);
    }

    else
    {
      sub_268F99D94();
      (*(v59 + 8))(v80, v58);
      sub_268F99DF4();
      (*(v66 + 8))(v69, v65);
      (*(v76 + 56))(v73, 0, 1, v75);
    }

    if ((*(v76 + 48))(v73, 1, v75) == 1)
    {
      sub_268D9125C(v73);
      v28 = sub_268F9B294();
      v30 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v31 = 0;
      v29 = sub_268F9B734();
      v33 = 57;
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v30);
      v34 = sub_268F9A7E4();
      sub_268D91304();
      v32 = 1;
      v36 = swift_allocError();
      v35 = v19;
      v20 = sub_268F9AEF4();
      v21 = v34;
      v22 = v20;
      v23 = v35;
      *v35 = v22;
      v23[1] = v24;
      v25 = *MEMORY[0x277D61E00];
      (*(*(v21 - 8) + 104))();
      swift_willThrow();
      result = v36;
      v46 = v36;
      return result;
    }

    (*(v76 + 32))(v79, v73, v75);
    v8 = v85;
    v9 = sub_268F99E44();
    v55 = v8;
    v56 = v9;
    v57 = v8;
    if (!v8)
    {
      v53 = v56;
      v54 = 0;
      goto LABEL_7;
    }
  }

  v27 = 0;

  v53 = 0;
  v54 = v27;
LABEL_7:
  v51 = v54;
  v52 = v53;
  if (v53)
  {
    v50 = v52;
    v10 = v51;
    v47 = v52;
    v86 = v52;
    sub_268D91384(v52);
    v48 = v10;
    v49 = v10;
    if (v10)
    {
      v26 = v49;
    }

    return (*(v76 + 8))(v79, v75);
  }

  else
  {
    v37 = sub_268F9B294();
    v39 = *sub_268D8E144();
    MEMORY[0x277D82BE0](v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v40 = 0;
    v38 = sub_268F9B734();
    v42 = 78;
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v39);
    v43 = sub_268F9A7E4();
    sub_268D91304();
    v41 = 1;
    v45 = swift_allocError();
    v44 = v12;
    v13 = sub_268F9AEF4();
    v14 = v43;
    v15 = v13;
    v16 = v44;
    *v44 = v15;
    v16[1] = v17;
    v18 = *MEMORY[0x277D61E00];
    (*(*(v14 - 8) + 104))();
    swift_willThrow();
    (*(v76 + 8))(v79, v75);
    result = v45;
    v46 = v45;
  }

  return result;
}

unint64_t sub_268D90E70()
{
  v2 = qword_2802DC780;
  if (!qword_2802DC780)
  {
    type metadata accessor for ToggleBinarySetting();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC780);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D90EF0()
{
  v2 = qword_2802DC788;
  if (!qword_2802DC788)
  {
    type metadata accessor for UndoBinarySetting();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC788);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D90F70()
{
  v2 = qword_2802DC790;
  if (!qword_2802DC790)
  {
    type metadata accessor for UndoNumericSetting();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC790);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D90FF0()
{
  v2 = qword_2802DC798;
  if (!qword_2802DC798)
  {
    type metadata accessor for LaunchEnvPicker();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC798);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D91070(uint64_t a1)
{
  v3 = sub_268F9A114();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_268D91118()
{
  v2 = qword_280FE3F40;
  if (!qword_280FE3F40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE3F40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D91190()
{
  v2 = qword_280FE2848;
  if (!qword_280FE2848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC7A0, &unk_268F9F510);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2848);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D9125C(uint64_t a1)
{
  v3 = sub_268F99C94();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_268D91304()
{
  v2 = qword_2802DC7B0;
  if (!qword_2802DC7B0)
  {
    sub_268F9A7E4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC7B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D91384(uint64_t a1)
{
  v3 = MEMORY[0x28223BE20](a1);
  v1222 = v1468;
  v1223 = v4;
  v1330 = v3;
  v1224 = v1;
  v1226 = "SupportedFlowDomainProvider got an open:no_Entity task. Returning .invalidParse";
  v1227 = "SupportedFlowDomainProvider got a close:no_Entity task. Returning .invalidParse";
  v1228 = "UsoTask is no verb.";
  v1229 = sub_268D9C164;
  v1230 = sub_268D9C164;
  v1231 = "Task Entity level uso identifier domain: %@";
  v1232 = "UsoTask is checkExistence";
  v1233 = sub_268D9C164;
  v1234 = "UsoTask is toggle";
  v1235 = sub_268D9C164;
  v1236 = "UsoTask is enable";
  v1237 = sub_268D9C164;
  v1238 = sub_268DA6048;
  v1239 = sub_268CD7608;
  v1240 = sub_268CD7600;
  v1241 = sub_268CD7600;
  v1242 = sub_268CD7614;
  v1243 = "UsoTask is disable";
  v1244 = sub_268D9C164;
  v1245 = "UsoTask is set";
  v1246 = sub_268D9C164;
  v1247 = "UsoTask is summarise";
  v1248 = sub_268D9C164;
  v1249 = "Rejecting UsoTask because it contains Home Automation artifacts: %@";
  v1250 = "UsoTask is open";
  v1251 = "UsoTask is request";
  v1252 = sub_268D9C164;
  v1253 = "UsoTask is increaseBy";
  v1254 = sub_268D9C164;
  v1255 = "UsoEntity is not UsoEntity_common_MediaItem. Setting name to entity id.";
  v1256 = "UsoEntity is UsoEntity_common_MediaItem. Setting name to volume.";
  v1257 = "choosing .settings for increaseByTask";
  v1258 = "choosing .deviceExpertSetting for increaseByTask";
  v1259 = "choosing .playbackControls for increaseByTask";
  v1260 = "UsoTask is decreaseBy";
  v1261 = sub_268D9C164;
  v1262 = "choosing .settings for decraseByTask";
  v1263 = "choosing .deviceExpertSetting for decraseByTask";
  v1264 = "choosing .playbackControls for decraseByTask";
  v1265 = "UsoTask is increaseByMeasurement";
  v1266 = sub_268D9C164;
  v1267 = "UsoTask is decreaseByMeasurement";
  v1268 = sub_268D9C164;
  v1269 = "UsoTask is setNumber";
  v1270 = sub_268D9C164;
  v1271 = "SupportedFlowDomainProvider userStartUSOGraph has no tasks";
  v1637 = 0;
  v1636 = 0;
  v1635 = 0;
  v1634 = 0;
  v1633 = 0;
  v1632 = 0;
  v1631 = 0;
  v1630 = 0;
  v1629 = 0;
  v1628 = 0;
  v1627 = 0;
  v1626 = 0;
  v1625 = 0;
  v1624 = 0;
  v1623 = 0;
  v1622 = 0;
  v1621 = 0;
  v1620 = 0;
  v1617 = 0;
  v1599 = 0;
  v1594 = 0;
  v1566 = 0;
  v1563 = 0;
  v1560 = 0;
  v1557 = 0;
  v1552 = 0;
  v1529 = 0;
  v1519 = 0;
  v1514 = 0;
  v1481 = 0;
  v1478 = 0;
  v1475 = 0;
  v1470 = 0;
  v1463 = 0;
  v1460 = 0;
  v1457 = 0;
  v1454 = 0;
  v1445 = 0;
  v1442 = 0;
  v1439 = 0;
  v1434 = 0;
  v1427 = 0;
  v1425 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530);
  v1272 = *(*(v5 - 8) + 64);
  v1273 = (v1272 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v1274 = v249 - v1273;
  v1275 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v249 - v1273);
  v1276 = v249 - v1275;
  v1277 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v249 - v1275);
  v1278 = v249 - v1277;
  v1637 = v249 - v1277;
  v1279 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v1280 = v249 - v1279;
  v1281 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v249 - v1279);
  v1282 = v249 - v1281;
  v1283 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v249 - v1281);
  v1284 = v249 - v1283;
  v1636 = v249 - v1283;
  v1285 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v1286 = v249 - v1285;
  v1287 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v249 - v1285);
  v1288 = v249 - v1287;
  v1289 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v249 - v1287);
  v1290 = v249 - v1289;
  v1635 = v249 - v1289;
  v1305 = 0;
  v1291 = sub_268F9A434();
  v1292 = *(v1291 - 8);
  v1293 = v1291 - 8;
  v1294 = (*(v1292 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1291);
  v1295 = v249 - v1294;
  v1296 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v249 - v1294);
  v1297 = v249 - v1296;
  v1298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7B8, &qword_268F9F538);
  v1299 = (*(*(v1298 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = MEMORY[0x28223BE20](v1298);
  v1300 = v249 - v1299;
  v1301 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = MEMORY[0x28223BE20](v17);
  v1302 = v249 - v1301;
  v1303 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v1304 = v249 - v1303;
  v1306 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C0, &unk_268F9F540) - 8) + 64);
  v1307 = (v1306 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = MEMORY[0x28223BE20](v1305);
  v1308 = v249 - v1307;
  v1309 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = MEMORY[0x28223BE20](v21);
  v1310 = v249 - v1309;
  v1311 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = MEMORY[0x28223BE20](v23);
  v1312 = v249 - v1311;
  v1313 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = MEMORY[0x28223BE20](v25);
  v1314 = v249 - v1313;
  v1315 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = MEMORY[0x28223BE20](v27);
  v1316 = v249 - v1315;
  v1317 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = MEMORY[0x28223BE20](v29);
  v1318 = v249 - v1317;
  v1319 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = MEMORY[0x28223BE20](v31);
  v1320 = v249 - v1319;
  v1321 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = MEMORY[0x28223BE20](v33);
  v1322 = v249 - v1321;
  v1323 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35);
  v1324 = v249 - v1323;
  v1325 = sub_268F99F64();
  v1326 = *(v1325 - 8);
  v1327 = v1325 - 8;
  v1328 = (*(v1326 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1325);
  v1329 = v249 - v1328;
  v1331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290);
  v1332 = *(*(v1331 - 8) + 64);
  v1333 = (v1332 + 15) & 0xFFFFFFFFFFFFFFF0;
  v37 = MEMORY[0x28223BE20](v1330);
  v1334 = v249 - v1333;
  v1335 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = MEMORY[0x28223BE20](v37);
  v1336 = v249 - v1335;
  v1337 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v41 = MEMORY[0x28223BE20](v39);
  v1338 = v249 - v1337;
  v1339 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  v43 = MEMORY[0x28223BE20](v41);
  v1340 = v249 - v1339;
  v1634 = v249 - v1339;
  v1341 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
  v45 = MEMORY[0x28223BE20](v43);
  v1342 = v249 - v1341;
  v1343 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  v47 = MEMORY[0x28223BE20](v45);
  v1344 = v249 - v1343;
  v1345 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  v49 = MEMORY[0x28223BE20](v47);
  v1346 = v249 - v1345;
  v1633 = v249 - v1345;
  v1347 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
  v51 = MEMORY[0x28223BE20](v49);
  v1348 = v249 - v1347;
  v1349 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  v53 = MEMORY[0x28223BE20](v51);
  v1350 = v249 - v1349;
  v1351 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  v55 = MEMORY[0x28223BE20](v53);
  v1352 = v249 - v1351;
  v1632 = v249 - v1351;
  v1353 = (v56 + 15) & 0xFFFFFFFFFFFFFFF0;
  v57 = MEMORY[0x28223BE20](v55);
  v1354 = v249 - v1353;
  v1355 = (v58 + 15) & 0xFFFFFFFFFFFFFFF0;
  v59 = MEMORY[0x28223BE20](v57);
  v1356 = v249 - v1355;
  v1357 = (v60 + 15) & 0xFFFFFFFFFFFFFFF0;
  v61 = MEMORY[0x28223BE20](v59);
  v1358 = v249 - v1357;
  v1359 = (v62 + 15) & 0xFFFFFFFFFFFFFFF0;
  v63 = MEMORY[0x28223BE20](v61);
  v1360 = v249 - v1359;
  v1361 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
  v65 = MEMORY[0x28223BE20](v63);
  v1362 = v249 - v1361;
  v1631 = v249 - v1361;
  v1363 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  v67 = MEMORY[0x28223BE20](v65);
  v1364 = v249 - v1363;
  v1365 = (v68 + 15) & 0xFFFFFFFFFFFFFFF0;
  v69 = MEMORY[0x28223BE20](v67);
  v1366 = v249 - v1365;
  v1367 = (v70 + 15) & 0xFFFFFFFFFFFFFFF0;
  v71 = MEMORY[0x28223BE20](v69);
  v1368 = v249 - v1367;
  v1369 = (v72 + 15) & 0xFFFFFFFFFFFFFFF0;
  v73 = MEMORY[0x28223BE20](v71);
  v1370 = v249 - v1369;
  v1371 = (v74 + 15) & 0xFFFFFFFFFFFFFFF0;
  v75 = MEMORY[0x28223BE20](v73);
  v1372 = v249 - v1371;
  v1630 = v249 - v1371;
  v1373 = (v76 + 15) & 0xFFFFFFFFFFFFFFF0;
  v77 = MEMORY[0x28223BE20](v75);
  v1374 = v249 - v1373;
  v1375 = (v78 + 15) & 0xFFFFFFFFFFFFFFF0;
  v79 = MEMORY[0x28223BE20](v77);
  v1376 = v249 - v1375;
  v1377 = (v80 + 15) & 0xFFFFFFFFFFFFFFF0;
  v81 = MEMORY[0x28223BE20](v79);
  v1378 = v249 - v1377;
  v1629 = v249 - v1377;
  v1379 = (v82 + 15) & 0xFFFFFFFFFFFFFFF0;
  v83 = MEMORY[0x28223BE20](v81);
  v1380 = v249 - v1379;
  v1381 = (v84 + 15) & 0xFFFFFFFFFFFFFFF0;
  v85 = MEMORY[0x28223BE20](v83);
  v1382 = v249 - v1381;
  v1383 = (v86 + 15) & 0xFFFFFFFFFFFFFFF0;
  v87 = MEMORY[0x28223BE20](v85);
  v1384 = v249 - v1383;
  v1385 = (v88 + 15) & 0xFFFFFFFFFFFFFFF0;
  v89 = MEMORY[0x28223BE20](v87);
  v1386 = v249 - v1385;
  v1628 = v249 - v1385;
  v1387 = (v90 + 15) & 0xFFFFFFFFFFFFFFF0;
  v91 = MEMORY[0x28223BE20](v89);
  v1388 = v249 - v1387;
  v1389 = (v92 + 15) & 0xFFFFFFFFFFFFFFF0;
  v93 = MEMORY[0x28223BE20](v91);
  v1390 = v249 - v1389;
  v1391 = (v94 + 15) & 0xFFFFFFFFFFFFFFF0;
  v95 = MEMORY[0x28223BE20](v93);
  v1392 = v249 - v1391;
  v1627 = v249 - v1391;
  v1393 = (v96 + 15) & 0xFFFFFFFFFFFFFFF0;
  v97 = MEMORY[0x28223BE20](v95);
  v1394 = v249 - v1393;
  v1395 = (v98 + 15) & 0xFFFFFFFFFFFFFFF0;
  v99 = MEMORY[0x28223BE20](v97);
  v1396 = v249 - v1395;
  v1397 = (v100 + 15) & 0xFFFFFFFFFFFFFFF0;
  v101 = MEMORY[0x28223BE20](v99);
  v1398 = v249 - v1397;
  v1626 = v249 - v1397;
  v1399 = (v102 + 15) & 0xFFFFFFFFFFFFFFF0;
  v103 = MEMORY[0x28223BE20](v101);
  v1400 = v249 - v1399;
  v1401 = (v104 + 15) & 0xFFFFFFFFFFFFFFF0;
  v105 = MEMORY[0x28223BE20](v103);
  v1402 = v249 - v1401;
  v1403 = (v106 + 15) & 0xFFFFFFFFFFFFFFF0;
  v107 = MEMORY[0x28223BE20](v105);
  v1404 = v249 - v1403;
  v1405 = (v108 + 15) & 0xFFFFFFFFFFFFFFF0;
  v109 = MEMORY[0x28223BE20](v107);
  v1406 = v249 - v1405;
  v1625 = v249 - v1405;
  v1407 = (v110 + 15) & 0xFFFFFFFFFFFFFFF0;
  v111 = MEMORY[0x28223BE20](v109);
  v1408 = v249 - v1407;
  v1409 = (v112 + 15) & 0xFFFFFFFFFFFFFFF0;
  v113 = MEMORY[0x28223BE20](v111);
  v1410 = v249 - v1409;
  v1411 = (v114 + 15) & 0xFFFFFFFFFFFFFFF0;
  v115 = MEMORY[0x28223BE20](v113);
  v1412 = v249 - v1411;
  v1624 = v249 - v1411;
  v1413 = (v116 + 15) & 0xFFFFFFFFFFFFFFF0;
  v117 = MEMORY[0x28223BE20](v115);
  v1414 = v249 - v1413;
  v1415 = (v118 + 15) & 0xFFFFFFFFFFFFFFF0;
  v119 = MEMORY[0x28223BE20](v117);
  v1416 = v249 - v1415;
  v1417 = (v120 + 15) & 0xFFFFFFFFFFFFFFF0;
  v121 = MEMORY[0x28223BE20](v119);
  v1418 = v249 - v1417;
  v1419 = (v122 + 15) & 0xFFFFFFFFFFFFFFF0;
  v123 = MEMORY[0x28223BE20](v121);
  v1420 = v249 - v1419;
  v1623 = v249 - v1419;
  v1622 = v123;
  v1621 = v1;
  v1421 = MEMORY[0x26D62CD00]();
  v1620 = v1421;
  v1619 = v1421;
  v1422 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7D0, &qword_268F9F550);
  sub_268D9BF0C();
  sub_268F9B234();
  v1423 = v1618;
  if (!v1618)
  {
    v249[3] = sub_268F9B294();
    v251 = *sub_268D8E144();
    MEMORY[0x277D82BE0](v251);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v252 = 0;
    v250 = sub_268F9B734();
    v254 = 58;
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v251);
    v255 = sub_268F9A7E4();
    sub_268D91304();
    v253 = 1;
    v257 = swift_allocError();
    v256 = v242;
    v243 = sub_268F9AEF4();
    v244 = v255;
    v245 = v243;
    v246 = v256;
    *v256 = v245;
    v246[1] = v247;
    v248 = *MEMORY[0x277D61E00];
    (*(*(v244 - 8) + 104))();
    swift_willThrow();
  }

  v1221 = v1423;
  v1220 = v1423;
  v1617 = v1423;

  sub_268F9A204();

  if (v1616[3])
  {
    sub_268F9A2A4();
    if (swift_dynamicCast())
    {
      v1219 = v1424;
    }

    else
    {
      v1219 = 0;
    }

    v1218 = v1219;
  }

  else
  {
    sub_268D28414(v1616);
    v1218 = 0;
  }

  v1217 = v1218;
  if (v1218)
  {
    v1216 = v1217;
    v1214 = v1217;
    v1425 = v1217;
    v1211 = sub_268F9B294();
    v1213 = *sub_268D8E144();
    MEMORY[0x277D82BE0](v1213);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v1212 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v1213);
    *v1223 = 0;

    result = v1225;
    v1215 = v1225;
    return result;
  }

  sub_268F9A204();

  if (v1615[3])
  {
    sub_268F9A2F4();
    if (swift_dynamicCast())
    {
      v1210 = v1426;
    }

    else
    {
      v1210 = 0;
    }

    v1209 = v1210;
  }

  else
  {
    sub_268D28414(v1615);
    v1209 = 0;
  }

  v1208 = v1209;
  if (v1209)
  {
    v1207 = v1208;
    v1206 = v1208;
    v1427 = v1208;
    v1203 = sub_268F9B294();
    v1205 = *sub_268D8E144();
    MEMORY[0x277D82BE0](v1205);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v1204 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v1205);
    *v1223 = 0;

    result = v1225;
    v1215 = v1225;
    return result;
  }

  sub_268F9A204();

  if (v1614[3])
  {
    sub_268F9A3A4();
    if (swift_dynamicCast())
    {
      v1202 = v1428;
    }

    else
    {
      v1202 = 0;
    }

    v1201 = v1202;
  }

  else
  {
    sub_268D28414(v1614);
    v1201 = 0;
  }

  v1200 = v1201;
  if (!v1201)
  {

    sub_268F9A204();

    if (v1613[3])
    {
      sub_268F9A624();
      if (swift_dynamicCast())
      {
        v1131 = v1440;
      }

      else
      {
        v1131 = 0;
      }

      v1130 = v1131;
    }

    else
    {
      sub_268D28414(v1613);
      v1130 = 0;
    }

    v1129 = v1130;
    if (v1130)
    {
      v1128 = v1129;
      v1124 = v1129;
      v1442 = v1129;
      v1121 = sub_268F9B284();
      v1123 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v1123);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v1122 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v1123);

      v1126 = sub_268F9A314();

      sub_268F9A324();
      v1125 = v1441[4];

      v1127 = sub_268DA2274(v1126, v1125);

      if ((v1127 & 1) == 0)
      {

        v1119 = sub_268F9A314();

        sub_268F9A324();
        v1118 = v1441[3];

        has_malloc_size = _swift_stdlib_has_malloc_size();
        v1120 = sub_268D9F984(v1119, v1118, has_malloc_size & 1);

        if (v1120)
        {
          goto LABEL_538;
        }

        sub_268F9A324();
        v1117 = v1441[2];

        if (!v1117)
        {
          goto LABEL_94;
        }

        v1116 = v1117;
        v1114 = v1117;
        v142 = sub_268D8E220();
        v1112 = *v142;
        v1113 = v142[1];

        v1115 = sub_268F9A0A4();

        if (v1115)
        {
          v1111 = v1115;
          v1441[0] = v1115;
          v1109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
          sub_268DA5FC0();
          result = sub_268F9AF94();
          v1110 = v2;
          if (v2)
          {
            goto LABEL_658;
          }

          sub_268CD7930(v1441);
          v1108 = v1110;
        }

        else
        {
LABEL_94:
          (*(v1326 + 56))(v1412, 1, 1, v1325);
          v1108 = v1225;
        }

        v1105 = v1108;
        sub_268D9BF94(v1412, v1410);
        v1106 = *(v1326 + 48);
        v1107 = v1326 + 48;
        if (v1106(v1410, 1, v1325) == 1)
        {
          sub_268D9C0BC(v1410);
          v1103 = 0;
          v1104 = 0;
        }

        else
        {
          v1101 = sub_268F99F44();
          v1102 = v143;
          (*(v1326 + 8))(v1410, v1325);
          v1103 = v1101;
          v1104 = v1102;
        }

        v1099 = v1104;
        v1100 = v1103;
        sub_268D9BF94(v1412, v1408);
        if (v1106(v1408, 1, v1325) == 1)
        {
          sub_268D9C0BC(v1408);
          v1097 = 0;
          v1098 = 0;
        }

        else
        {
          v1095 = sub_268F99F54();
          v1096 = v144;
          (*(v1326 + 8))(v1408, v1325);
          v1097 = v1095;
          v1098 = v1096;
        }

        v1092 = v1098;
        v1093 = v1097;

        sub_268F9A324();
        v1094 = v1441[1];

        if (v1094)
        {
          v1091 = v1094;
          v1088 = v1094;
          v1089 = sub_268F99F04();

          v1090 = v1089;
        }

        else
        {
          v1090 = 0;
        }

        v1087 = v1090;
        sub_268D9DAD8(v1100, v1099, v1093, v1092, v1090, v1223);

        sub_268D9C0BC(v1412);

        result = v1105;
        v1215 = v1105;
        return result;
      }

LABEL_536:
      *v1223 = 0;

      result = v1225;
      v1215 = v1225;
      return result;
    }

    sub_268F9A204();

    if (v1612[3])
    {
      sub_268F9A3B4();
      if (swift_dynamicCast())
      {
        v1086 = v1443;
      }

      else
      {
        v1086 = 0;
      }

      v1085 = v1086;
    }

    else
    {
      sub_268D28414(v1612);
      v1085 = 0;
    }

    v1084 = v1085;
    if (v1085)
    {
      v1083 = v1084;
      v1079 = v1084;
      v1445 = v1084;
      v1076 = sub_268F9B284();
      v1078 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v1078);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v1077 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v1078);

      v1081 = sub_268F9A5A4();

      sub_268F9A5C4();
      v1080 = v1444[4];

      v1082 = sub_268DA2274(v1081, v1080);

      if ((v1082 & 1) == 0)
      {

        v1074 = sub_268F9A5A4();

        sub_268F9A5C4();
        v1073 = v1444[3];

        v145 = _swift_stdlib_has_malloc_size();
        v1075 = sub_268D9F984(v1074, v1073, v145 & 1);

        if (v1075)
        {
          goto LABEL_538;
        }

        sub_268F9A5C4();
        v1072 = v1444[2];

        if (!v1072)
        {
          goto LABEL_122;
        }

        v1071 = v1072;
        v1069 = v1072;
        v146 = sub_268D8E220();
        v1067 = *v146;
        v1068 = v146[1];

        v1070 = sub_268F9A0A4();

        if (v1070)
        {
          v1066 = v1070;
          v1444[0] = v1070;
          v1064 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
          sub_268DA5FC0();
          result = sub_268F9AF94();
          v1065 = v2;
          if (v2)
          {
            goto LABEL_659;
          }

          sub_268CD7930(v1444);
          v1063 = v1065;
        }

        else
        {
LABEL_122:
          (*(v1326 + 56))(v1406, 1, 1, v1325);
          v1063 = v1225;
        }

        v1060 = v1063;
        sub_268D9BF94(v1406, v1404);
        v1061 = *(v1326 + 48);
        v1062 = v1326 + 48;
        if (v1061(v1404, 1, v1325) == 1)
        {
          sub_268D9C0BC(v1404);
          v1058 = 0;
          v1059 = 0;
        }

        else
        {
          v1056 = sub_268F99F44();
          v1057 = v147;
          (*(v1326 + 8))(v1404, v1325);
          v1058 = v1056;
          v1059 = v1057;
        }

        v1054 = v1059;
        v1055 = v1058;
        sub_268D9BF94(v1406, v1402);
        if (v1061(v1402, 1, v1325) == 1)
        {
          sub_268D9C0BC(v1402);
          v1052 = 0;
          v1053 = 0;
        }

        else
        {
          v1050 = sub_268F99F54();
          v1051 = v148;
          (*(v1326 + 8))(v1402, v1325);
          v1052 = v1050;
          v1053 = v1051;
        }

        v1047 = v1053;
        v1048 = v1052;

        sub_268F9A5C4();
        v1049 = v1444[1];

        if (v1049)
        {
          v1046 = v1049;
          v1043 = v1049;
          v1044 = sub_268F99F04();

          v1045 = v1044;
        }

        else
        {
          v1045 = 0;
        }

        v1042 = v1045;
        sub_268D9DAD8(v1055, v1054, v1048, v1047, v1045, v1223);

        sub_268D9C0BC(v1406);

        result = v1060;
        v1215 = v1060;
        return result;
      }

      goto LABEL_536;
    }

    sub_268F9A204();

    if (v1611[3])
    {
      sub_268F9A394();
      if (swift_dynamicCast())
      {
        v1041 = v1446;
      }

      else
      {
        v1041 = 0;
      }

      v1040 = v1041;
    }

    else
    {
      sub_268D28414(v1611);
      v1040 = 0;
    }

    v1039 = v1040;
    if (v1040)
    {
      v1038 = v1039;
      v1034 = v1039;
      v1457 = v1039;
      v1031 = sub_268F9B284();
      v1033 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v1033);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v1032 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v1033);

      v1036 = sub_268F9A5A4();

      sub_268F9A5C4();
      v1035 = v1456;

      v1037 = sub_268DA2274(v1036, v1035);

      if ((v1037 & 1) == 0)
      {

        v1029 = sub_268F9A5A4();

        sub_268F9A5C4();
        v1028 = v1455;

        v149 = _swift_stdlib_has_malloc_size();
        v1030 = sub_268D9F984(v1029, v1028, v149 & 1);

        if (v1030)
        {
          goto LABEL_538;
        }

        v1025 = swift_allocBox();
        v1026 = v150;
        v1454 = v150;

        sub_268F9A5C4();
        v1027 = v1453[3];

        if (!v1027)
        {
          goto LABEL_161;
        }

        v1024 = v1027;
        v1022 = v1027;
        v151 = sub_268D8E220();
        v1020 = *v151;
        v1021 = v151[1];

        v1023 = sub_268F9A0A4();

        if (v1023)
        {
          v1019 = v1023;
          v1447 = v1023;
          v1017 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
          sub_268DA5FC0();
          result = sub_268F9AF94();
          v1018 = v2;
          if (v2)
          {
            goto LABEL_660;
          }

          sub_268CD7930(&v1447);
          v1016 = v1018;
        }

        else
        {
LABEL_161:
          (*(v1326 + 56))(v1026, 1, 1, v1325);
          v1016 = v1225;
        }

        v1003 = v1016;
        v1015 = sub_268F9B284();
        v1014 = *sub_268D8E144();
        MEMORY[0x277D82BE0](v1014);

        v1004 = 17;
        v1006 = 7;
        v1008 = swift_allocObject();
        *(v1008 + 16) = 32;
        v1009 = swift_allocObject();
        *(v1009 + 16) = 8;
        v1005 = 32;
        v152 = swift_allocObject();
        v153 = v1025;
        v1007 = v152;
        *(v152 + 16) = v1238;
        *(v152 + 24) = v153;
        v154 = swift_allocObject();
        v155 = v1007;
        v1011 = v154;
        *(v154 + 16) = v1239;
        *(v154 + 24) = v155;
        v1013 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
        v1010 = sub_268F9B734();
        v1012 = v156;

        v157 = v1008;
        v158 = v1012;
        *v1012 = v1240;
        v158[1] = v157;

        v159 = v1009;
        v160 = v1012;
        v1012[2] = v1241;
        v160[3] = v159;

        v161 = v1011;
        v162 = v1012;
        v1012[4] = v1242;
        v162[5] = v161;
        sub_268CD0F7C();

        if (os_log_type_enabled(v1014, v1015))
        {
          v996 = sub_268F9B3A4();
          v995 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
          v997 = sub_268CD5448(0);
          v998 = sub_268CD5448(1);
          v999 = v1452;
          v1452[0] = v996;
          v1000 = &v1451;
          v1451 = v997;
          v1001 = &v1450;
          v1450 = v998;
          sub_268CD549C(2, v1452);
          sub_268CD549C(1, v999);
          v163 = v1003;
          v1448 = v1240;
          v1449 = v1008;
          sub_268CD54B0(&v1448, v999, v1000, v1001);
          v1002 = v163;
          if (v163)
          {

            __break(1u);
          }

          else
          {
            v1448 = v1241;
            v1449 = v1009;
            sub_268CD54B0(&v1448, v1452, &v1451, &v1450);
            v993 = 0;
            v1448 = v1242;
            v1449 = v1011;
            sub_268CD54B0(&v1448, v1452, &v1451, &v1450);
            v992 = 0;
            _os_log_impl(&dword_268CBE000, v1014, v1015, "Uso identifier: %s.", v996, 0xCu);
            sub_268CD54FC(v997);
            sub_268CD54FC(v998);
            sub_268F9B384();

            v994 = v992;
          }
        }

        else
        {

          v994 = v1003;
        }

        v988 = v994;
        MEMORY[0x277D82BD8](v1014);
        v989 = v1453;
        swift_beginAccess();
        sub_268D9BF94(v1026, v1400);
        swift_endAccess();
        v990 = *(v1326 + 48);
        v991 = v1326 + 48;
        v987 = v990(v1400, 1, v1325) == 1;
        v986 = v987;
        sub_268D9C0BC(v1400);

        if (v986)
        {
          v985 = sub_268D9C5C0(v1034);
        }

        else
        {
          v985 = 0;
        }

        v984 = v985;

        if (v984)
        {
          *v1223 = 2;

          result = v988;
          v1215 = v988;
        }

        else
        {
          swift_beginAccess();
          if (v990(v1026, 1, v1325) == 0)
          {
            (*(v1326 + 16))(v1329, v1026, v1325);
            swift_endAccess();
            v979 = sub_268F99F44();
            v980 = v164;
            (*(v1326 + 8))(v1329, v1325);
            v981 = v979;
            v982 = v980;
          }

          else
          {
            swift_endAccess();
            v981 = 0;
            v982 = 0;
          }

          v976 = v982;
          v977 = v981;
          swift_beginAccess();
          if (v990(v1026, 1, v1325) == 0)
          {
            (*(v1326 + 16))(v1329, v1026, v1325);
            swift_endAccess();
            v972 = sub_268F99F54();
            v973 = v165;
            (*(v1326 + 8))(v1329, v1325);
            v974 = v972;
            v975 = v973;
          }

          else
          {
            swift_endAccess();
            v974 = 0;
            v975 = 0;
          }

          v969 = v975;
          v970 = v974;

          sub_268F9A5C4();
          v971 = v1452[1];

          if (v971)
          {
            v968 = v971;
            v965 = v971;
            v966 = sub_268F99F04();

            v967 = v966;
          }

          else
          {
            v967 = 0;
          }

          v964 = v967;
          sub_268D9DAD8(v977, v976, v970, v969, v967, v1223);

          result = v988;
          v1215 = v988;
        }

        return result;
      }

      goto LABEL_536;
    }

    sub_268F9A204();

    if (v1610[3])
    {
      sub_268F9A444();
      if (swift_dynamicCast())
      {
        v963 = v1458;
      }

      else
      {
        v963 = 0;
      }

      v962 = v963;
    }

    else
    {
      sub_268D28414(v1610);
      v962 = 0;
    }

    v961 = v962;
    if (v962)
    {
      v960 = v961;
      v956 = v961;
      v1460 = v961;
      v953 = sub_268F9B284();
      v955 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v955);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v954 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v955);

      v958 = sub_268F9A5A4();

      sub_268F9A5C4();
      v957 = v1459[4];

      v959 = sub_268DA2274(v958, v957);

      if ((v959 & 1) == 0)
      {

        v951 = sub_268F9A5A4();

        sub_268F9A5C4();
        v950 = v1459[3];

        v166 = _swift_stdlib_has_malloc_size();
        v952 = sub_268D9F984(v951, v950, v166 & 1);

        if (v952)
        {
          goto LABEL_538;
        }

        sub_268F9A5C4();
        v949 = v1459[2];

        if (!v949)
        {
          goto LABEL_190;
        }

        v948 = v949;
        v946 = v949;
        v167 = sub_268D8E220();
        v944 = *v167;
        v945 = v167[1];

        v947 = sub_268F9A0A4();

        if (v947)
        {
          v943 = v947;
          v1459[0] = v947;
          v941 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
          sub_268DA5FC0();
          result = sub_268F9AF94();
          v942 = v2;
          if (v2)
          {
            goto LABEL_661;
          }

          sub_268CD7930(v1459);
          v940 = v942;
        }

        else
        {
LABEL_190:
          (*(v1326 + 56))(v1398, 1, 1, v1325);
          v940 = v1225;
        }

        v937 = v940;
        sub_268D9BF94(v1398, v1396);
        v938 = *(v1326 + 48);
        v939 = v1326 + 48;
        if (v938(v1396, 1, v1325) == 1)
        {
          sub_268D9C0BC(v1396);
          v935 = 0;
          v936 = 0;
        }

        else
        {
          v933 = sub_268F99F44();
          v934 = v168;
          (*(v1326 + 8))(v1396, v1325);
          v935 = v933;
          v936 = v934;
        }

        v931 = v936;
        v932 = v935;
        sub_268D9BF94(v1398, v1394);
        if (v938(v1394, 1, v1325) == 1)
        {
          sub_268D9C0BC(v1394);
          v929 = 0;
          v930 = 0;
        }

        else
        {
          v927 = sub_268F99F54();
          v928 = v169;
          (*(v1326 + 8))(v1394, v1325);
          v929 = v927;
          v930 = v928;
        }

        v924 = v930;
        v925 = v929;

        sub_268F9A5C4();
        v926 = v1459[1];

        if (v926)
        {
          v923 = v926;
          v920 = v926;
          v921 = sub_268F99F04();

          v922 = v921;
        }

        else
        {
          v922 = 0;
        }

        v919 = v922;
        sub_268D9DAD8(v932, v931, v925, v924, v922, v1223);

        sub_268D9C0BC(v1398);

        result = v937;
        v1215 = v937;
        return result;
      }

      goto LABEL_536;
    }

    sub_268F9A204();

    if (v1609[3])
    {
      sub_268F9A304();
      if (swift_dynamicCast())
      {
        v918 = v1461;
      }

      else
      {
        v918 = 0;
      }

      v917 = v918;
    }

    else
    {
      sub_268D28414(v1609);
      v917 = 0;
    }

    v916 = v917;
    if (v917)
    {
      v915 = v916;
      v911 = v916;
      v1463 = v916;
      v908 = sub_268F9B284();
      v910 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v910);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v909 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v910);

      v913 = sub_268F9A5A4();

      sub_268F9A5C4();
      v912 = v1462[4];

      v914 = sub_268DA2274(v913, v912);

      if ((v914 & 1) == 0)
      {

        v906 = sub_268F9A5A4();

        sub_268F9A5C4();
        v905 = v1462[3];

        v170 = _swift_stdlib_has_malloc_size();
        v907 = sub_268D9F984(v906, v905, v170 & 1);

        if (v907)
        {
          goto LABEL_538;
        }

        sub_268F9A5C4();
        v904 = v1462[2];

        if (!v904)
        {
          goto LABEL_219;
        }

        v903 = v904;
        v901 = v904;
        v171 = sub_268D8E220();
        v899 = *v171;
        v900 = v171[1];

        v902 = sub_268F9A0A4();

        if (v902)
        {
          v898 = v902;
          v1462[0] = v902;
          v896 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
          sub_268DA5FC0();
          result = sub_268F9AF94();
          v897 = v2;
          if (v2)
          {
            goto LABEL_662;
          }

          sub_268CD7930(v1462);
          v895 = v897;
        }

        else
        {
LABEL_219:
          (*(v1326 + 56))(v1392, 1, 1, v1325);
          v895 = v1225;
        }

        v892 = v895;
        sub_268D9BF94(v1392, v1390);
        v893 = *(v1326 + 48);
        v894 = v1326 + 48;
        if (v893(v1390, 1, v1325) == 1)
        {
          sub_268D9C0BC(v1390);
          v890 = 0;
          v891 = 0;
        }

        else
        {
          v888 = sub_268F99F44();
          v889 = v172;
          (*(v1326 + 8))(v1390, v1325);
          v890 = v888;
          v891 = v889;
        }

        v886 = v891;
        v887 = v890;
        sub_268D9BF94(v1392, v1388);
        if (v893(v1388, 1, v1325) == 1)
        {
          sub_268D9C0BC(v1388);
          v884 = 0;
          v885 = 0;
        }

        else
        {
          v882 = sub_268F99F54();
          v883 = v173;
          (*(v1326 + 8))(v1388, v1325);
          v884 = v882;
          v885 = v883;
        }

        v879 = v885;
        v880 = v884;

        sub_268F9A5C4();
        v881 = v1462[1];

        if (v881)
        {
          v878 = v881;
          v875 = v881;
          v876 = sub_268F99F04();

          v877 = v876;
        }

        else
        {
          v877 = 0;
        }

        v874 = v877;
        sub_268D9DAD8(v887, v886, v880, v879, v877, v1223);

        sub_268D9C0BC(v1392);

        result = v892;
        v1215 = v892;
        return result;
      }

      goto LABEL_536;
    }

    sub_268F9A204();

    if (v1608[3])
    {
      sub_268F9A524();
      if (swift_dynamicCast())
      {
        v873 = v1464;
      }

      else
      {
        v873 = 0;
      }

      v872 = v873;
    }

    else
    {
      sub_268D28414(v1608);
      v872 = 0;
    }

    v871 = v872;
    if (v872)
    {
      v870 = v871;
      v868 = v871;
      v1475 = v871;
      v865 = sub_268F9B284();
      v867 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v867);
      v864 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v866 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v867);

      sub_268F9A324();
      v869 = v1474;

      if (!v869)
      {
        goto LABEL_263;
      }

      v863 = v869;
      v861 = v869;
      v174 = sub_268D8E220();
      v859 = *v174;
      v860 = v174[1];

      v862 = sub_268F9A0A4();

      if (v862)
      {
        v858 = v862;
        v1465 = v862;
        v856 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        result = sub_268F9AF94();
        v857 = v2;
        if (v2)
        {
          goto LABEL_663;
        }

        sub_268CD7930(&v1465);
        v855 = v857;
      }

      else
      {
LABEL_263:
        (*(v1326 + 56))(v1386, 1, 1, v1325);
        v855 = v1225;
      }

      v852 = v855;
      sub_268D9BF94(v1386, v1384);
      v853 = *(v1326 + 48);
      v854 = v1326 + 48;
      if (v853(v1384, 1, v1325) == 1)
      {
        sub_268D9C0BC(v1384);
        v850 = 0;
        v851 = 0;
      }

      else
      {
        v848 = sub_268F99F44();
        v849 = v175;
        (*(v1326 + 8))(v1384, v1325);
        v850 = v848;
        v851 = v849;
      }

      v846 = v851;
      v845 = v850;

      v1473 = 9;
      v844 = NumericSettingIdentifier.rawValue.getter();
      v847 = v176;

      v1471[0] = v845;
      v1471[1] = v846;
      *&v1472 = v844;
      *(&v1472 + 1) = v847;
      if (v846)
      {
        sub_268D28874(v1471, v1468);
        if (*(&v1472 + 1))
        {
          v177 = *v1222;
          v841 = &v1467;
          v1467 = v177;
          v840 = &v1466;
          v1466 = v1472;
          v842 = MEMORY[0x26D62DB50](v177, *(&v177 + 1), v1472, *(&v1472 + 1));
          sub_268CD9D30(v840);
          sub_268CD9D30(v841);
          sub_268CD9D30(v1471);
          v843 = v842;
LABEL_243:
          v839 = v843;

          v1470 = v839 & 1;

          if (v839)
          {
            v838 = 0;
          }

          else
          {

            v836 = sub_268F9A314();

            sub_268F9A324();
            v835 = v1468[2];

            v837 = sub_268DA2274(v836, v835);

            v838 = v837;
          }

          v834 = v838;

          if (v834)
          {
            v831 = sub_268F9B284();
            v833 = *sub_268D8E144();
            MEMORY[0x277D82BE0](v833);
            v830 = sub_268F9B734();
            v829 = v178;

            v825 = sub_268F9A314();

            v826 = v1469;
            v1469[0] = v825;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E8, &unk_268F9F560);
            v827 = sub_268F9AE64();
            v828 = v179;
            v829[3] = MEMORY[0x277D837D0];
            v180 = sub_268CDD224();
            v181 = v827;
            v182 = v828;
            v183 = v829;
            v184 = v180;
            v185 = v830;
            v829[4] = v184;
            *v183 = v181;
            v183[1] = v182;
            sub_268CD0F7C();
            v832 = v185;
            sub_268F9AC14();

            MEMORY[0x277D82BD8](v833);
            v186 = v1386;
            *v1223 = 0;
            sub_268D9C0BC(v186);

            result = v852;
            v1215 = v852;
          }

          else
          {

            v823 = sub_268F9A314();

            sub_268F9A324();
            v822 = v1469[2];

            v824 = sub_268D9F984(v823, v822, 0);

            if (v824)
            {
              v187 = v1386;
              *v1223 = 7;
              sub_268D9C0BC(v187);

              result = v852;
              v1215 = v852;
            }

            else
            {
              sub_268D9BF94(v1386, v1382);
              if (v853(v1382, 1, v1325) == 1)
              {
                sub_268D9C0BC(v1382);
                v820 = 0;
                v821 = 0;
              }

              else
              {
                v818 = sub_268F99F44();
                v819 = v188;
                (*(v1326 + 8))(v1382, v1325);
                v820 = v818;
                v821 = v819;
              }

              v816 = v821;
              v817 = v820;
              sub_268D9BF94(v1386, v1380);
              if (v853(v1380, 1, v1325) == 1)
              {
                sub_268D9C0BC(v1380);
                v814 = 0;
                v815 = 0;
              }

              else
              {
                v812 = sub_268F99F54();
                v813 = v189;
                (*(v1326 + 8))(v1380, v1325);
                v814 = v812;
                v815 = v813;
              }

              v809 = v815;
              v810 = v814;

              sub_268F9A324();
              v811 = v1469[1];

              if (v811)
              {
                v808 = v811;
                v805 = v811;
                v806 = sub_268F99F04();

                v807 = v806;
              }

              else
              {
                v807 = 0;
              }

              v804 = v807;
              sub_268D9DAD8(v817, v816, v810, v809, v807, v1223);

              sub_268D9C0BC(v1386);

              result = v852;
              v1215 = v852;
            }
          }

          return result;
        }

        sub_268CD9D30(v1468);
      }

      else if (!*(&v1472 + 1))
      {
        sub_268CD9D30(v1471);
        v843 = 1;
        goto LABEL_243;
      }

      sub_268D28550(v1471);
      v843 = 0;
      goto LABEL_243;
    }

    sub_268F9A204();

    if (v1607[3])
    {
      sub_268F9A354();
      if (swift_dynamicCast())
      {
        v803 = v1476;
      }

      else
      {
        v803 = 0;
      }

      v802 = v803;
    }

    else
    {
      sub_268D28414(v1607);
      v802 = 0;
    }

    v801 = v802;
    if (v802)
    {
      v800 = v801;
      v796 = v801;
      v1478 = v801;
      v793 = sub_268F9B284();
      v795 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v795);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v794 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v795);

      v798 = sub_268F9A314();

      sub_268F9A324();
      v797 = v1477;

      v190 = _swift_stdlib_has_malloc_size();
      v799 = sub_268D9F984(v798, v797, v190 & 1);

      if (v799)
      {
        *v1223 = 7;
      }

      else
      {
        *v1223 = 2;
      }

LABEL_273:

      result = v1225;
      v1215 = v1225;
      return result;
    }

    sub_268F9A204();

    if (v1606[3])
    {
      sub_268F9A454();
      if (swift_dynamicCast())
      {
        v792 = v1479;
      }

      else
      {
        v792 = 0;
      }

      v791 = v792;
    }

    else
    {
      sub_268D28414(v1606);
      v791 = 0;
    }

    v790 = v791;
    if (v791)
    {
      v789 = v790;
      v785 = v790;
      v1481 = v790;
      v782 = sub_268F9B284();
      v784 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v784);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v783 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v784);

      v787 = sub_268F9A534();

      sub_268F9A544();
      v786 = v1480[3];

      v191 = _swift_stdlib_has_malloc_size();
      v788 = sub_268D9F984(v787, v786, v191 & 1);

      if (v788)
      {
        goto LABEL_538;
      }

      sub_268F9A544();
      v781 = v1480[2];

      if (!v781)
      {
        goto LABEL_301;
      }

      v780 = v781;
      v778 = v781;
      v192 = sub_268D8E220();
      v776 = *v192;
      v777 = v192[1];

      v779 = sub_268F9A0A4();

      if (v779)
      {
        v775 = v779;
        v1480[0] = v779;
        v773 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        result = sub_268F9AF94();
        v774 = v2;
        if (v2)
        {
          goto LABEL_664;
        }

        sub_268CD7930(v1480);
        v772 = v774;
      }

      else
      {
LABEL_301:
        (*(v1326 + 56))(v1378, 1, 1, v1325);
        v772 = v1225;
      }

      v769 = v772;
      sub_268D9BF94(v1378, v1376);
      v770 = *(v1326 + 48);
      v771 = v1326 + 48;
      if (v770(v1376, 1, v1325) == 1)
      {
        sub_268D9C0BC(v1376);
        v767 = 0;
        v768 = 0;
      }

      else
      {
        v765 = sub_268F99F44();
        v766 = v193;
        (*(v1326 + 8))(v1376, v1325);
        v767 = v765;
        v768 = v766;
      }

      v763 = v768;
      v764 = v767;
      sub_268D9BF94(v1378, v1374);
      if (v770(v1374, 1, v1325) == 1)
      {
        sub_268D9C0BC(v1374);
        v761 = 0;
        v762 = 0;
      }

      else
      {
        v759 = sub_268F99F54();
        v760 = v194;
        (*(v1326 + 8))(v1374, v1325);
        v761 = v759;
        v762 = v760;
      }

      v756 = v762;
      v757 = v761;

      sub_268F9A544();
      v758 = v1480[1];

      if (v758)
      {
        v755 = v758;
        v752 = v758;
        v753 = sub_268F99F04();

        v754 = v753;
      }

      else
      {
        v754 = 0;
      }

      v751 = v754;
      sub_268D9DAD8(v764, v763, v757, v756, v754, v1223);

      sub_268D9C0BC(v1378);

      result = v769;
      v1215 = v769;
      return result;
    }

    sub_268F9A204();

    if (v1605[3])
    {
      sub_268F9A594();
      if (swift_dynamicCast())
      {
        v750 = v1482;
      }

      else
      {
        v750 = 0;
      }

      v749 = v750;
    }

    else
    {
      sub_268D28414(v1605);
      v749 = 0;
    }

    v748 = v749;
    if (v749)
    {
      v747 = v748;
      v745 = v748;
      v1519 = v748;
      v742 = sub_268F9B284();
      v744 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v744);
      v741 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v743 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v744);

      sub_268F9A664();
      v746 = v1518;

      if (!v746)
      {
        goto LABEL_399;
      }

      v740 = v746;
      v738 = v746;
      v195 = sub_268D8E220();
      v736 = *v195;
      v737 = v195[1];

      v739 = sub_268F9A0A4();

      if (v739)
      {
        v735 = v739;
        v1483 = v739;
        v733 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        result = sub_268F9AF94();
        v734 = v2;
        if (v2)
        {
          goto LABEL_665;
        }

        sub_268CD7930(&v1483);
        v732 = v734;
      }

      else
      {
LABEL_399:
        (*(v1326 + 56))(v1372, 1, 1, v1325);
        v732 = v1225;
      }

      v729 = v732;
      sub_268D9BF94(v1372, v1370);
      v730 = *(v1326 + 48);
      v731 = v1326 + 48;
      if (v730(v1370, 1, v1325) == 1)
      {
        sub_268D9C0BC(v1370);
        v727 = 0;
        v728 = 0;
      }

      else
      {
        v725 = sub_268F99F44();
        v726 = v196;
        (*(v1326 + 8))(v1370, v1325);
        v727 = v725;
        v728 = v726;
      }

      v723 = v728;
      v722 = v727;

      v1517 = 9;
      v721 = NumericSettingIdentifier.rawValue.getter();
      v724 = v197;

      v1515[0] = v722;
      v1515[1] = v723;
      v1515[2] = v721;
      v1516 = v724;
      if (v723)
      {
        sub_268D28874(v1515, &v1486);
        if (v1516)
        {
          v718 = &v1485;
          v1485 = v1486;
          v198 = v1222[30];
          v717 = &v1484;
          v1484 = v198;
          v719 = MEMORY[0x26D62DB50](v1486, *(&v1486 + 1), v198, *(&v198 + 1));
          sub_268CD9D30(v717);
          sub_268CD9D30(v718);
          sub_268CD9D30(v1515);
          v720 = v719;
          goto LABEL_325;
        }

        sub_268CD9D30(&v1486);
      }

      else if (!v1516)
      {
        sub_268CD9D30(v1515);
        v720 = 1;
LABEL_325:
        v716 = v720;

        v1514 = v716 & 1;

        if (v716)
        {
          v715 = 0;
        }

        else
        {

          v713 = sub_268F9A644();

          sub_268F9A664();
          v712 = v1487;

          v714 = sub_268DA2274(v713, v712);

          v715 = v714;
        }

        v711 = v715;

        if (v711)
        {
          goto LABEL_331;
        }

        if (v716)
        {
          v710 = 0;
        }

        else
        {

          sub_268F9A664();
          v708 = v1488;

          v709 = sub_268DA1D80(v708);

          v710 = v709;
        }

        v707 = v710;

        if (v707)
        {
LABEL_331:
          v199 = v1372;
          *v1223 = 0;
          sub_268D9C0BC(v199);

          result = v729;
          v1215 = v729;
          return result;
        }

        sub_268D9BF94(v1372, v1368);
        if (v730(v1368, 1, v1325) == 1)
        {
          sub_268D9C0BC(v1368);
          v1512 = 0;
          v1513 = 0;
        }

        else
        {
          v705 = sub_268F99F44();
          v706 = v200;
          (*(v1326 + 8))(v1368, v1325);
          v1512 = v705;
          v1513 = v706;
        }

        v703 = v1512;
        v704 = v1513;

        v1511[0] = v703;
        v1511[1] = v704;
        v702 = v704 == 0;
        v701 = v702;
        sub_268CD9D30(v1511);
        if (!v701)
        {
          goto LABEL_377;
        }

        sub_268F9A664();
        v700 = v1501;

        if (v700 && (v699 = v700, v697 = v700, v698 = sub_268F9A094(), , v698))
        {
          v696 = v698;
          v695 = v698;
          sub_268F9A424();
        }

        else
        {
          (*(v1292 + 56))(v1324, 1, 1, v1291);
        }

        (*(v1292 + 104))(v1322, *MEMORY[0x277D5EE50], v1291);
        v201 = *(v1292 + 56);
        v692 = 1;
        v201(v1322, 0);
        v691 = &v1304[*(v1298 + 48)];
        sub_268D9FB5C(v1324, v1304);
        sub_268D9FB5C(v1322, v691);
        v693 = *(v1292 + 48);
        v694 = v1292 + 48;
        if (v693(v1304, v692, v1291) == 1)
        {
          if (v693(v691, 1, v1291) == 1)
          {
            sub_268D9FDB0(v1304);
            v690 = 1;
            goto LABEL_351;
          }
        }

        else
        {
          sub_268D9FB5C(v1304, v1320);
          if (v693(v691, 1, v1291) != 1)
          {
            v686 = *(v1292 + 32);
            v685 = v1292 + 32;
            v686(v1297, v1320, v1291);
            v686(v1295, v691, v1291);
            sub_268D9FF80();
            v689 = sub_268F9AE04();
            v688 = *(v1292 + 8);
            v687 = v1292 + 8;
            v688(v1295, v1291);
            v688(v1297, v1291);
            sub_268D9FDB0(v1304);
            v690 = v689;
            goto LABEL_351;
          }

          (*(v1292 + 8))(v1320, v1291);
        }

        sub_268D9FC84(v1304);
        v690 = 0;
LABEL_351:
        v684 = v690;
        sub_268D9FDB0(v1322);
        sub_268D9FDB0(v1324);
        if (v684)
        {
          sub_268D35D60((v1224 + 72), v1498);
          if (v1499)
          {
            v680 = v1499;
            v681 = v1500;
            v682 = __swift_project_boxed_opaque_existential_1(v1498, v1499);

            sub_268F9A664();
            v683 = v1489;

            if (v683)
            {
              v679 = v683;
              v676 = v683;
              v677 = sub_268F99F04();

              v678 = v677;
            }

            else
            {
              v678 = 0;
            }

            v675 = v678;
            (*(v681 + 16))();

            __swift_destroy_boxed_opaque_existential_0(v1498);
          }

          else
          {
            sub_268D28414(v1498);
            v205 = sub_268F9ACE4();
            (*(*(v205 - 8) + 56))(v1290, 1);
          }

          sub_268D9FE58(v1290, v1288);
          v670 = sub_268F9ACE4();
          v671 = *(v670 - 8);
          v672 = v670 - 8;
          v673 = *(v671 + 48);
          v674 = v671 + 48;
          if (v673(v1288, 1) == 1)
          {
            sub_268D59D2C(v1288);
            v669 = 0;
          }

          else
          {
            v668 = sub_268F9ACD4();
            (*(v671 + 8))(v1288, v670);
            v669 = v668;
          }

          v667 = v669;
          sub_268F9A2E4();
          sub_268F9A2D4();

          v1496 = v1497;
          v666 = v1497 != 0;
          v665 = v666;
          sub_268D287E8(&v1496);
          if (v665)
          {
            v662 = sub_268F9B284();
            v664 = *sub_268D8E144();
            MEMORY[0x277D82BE0](v664);
            v663 = sub_268F9B734();
            sub_268F9AC14();

            MEMORY[0x277D82BD8](v664);
            v1490 = 9;
            v1512 = NumericSettingIdentifier.rawValue.getter();
            v1513 = v202;
          }

          else
          {
            v659 = sub_268F9B284();
            v661 = *sub_268D8E144();
            MEMORY[0x277D82BE0](v661);
            v660 = sub_268F9B734();
            sub_268F9AC14();

            MEMORY[0x277D82BD8](v661);
            sub_268D9FE58(v1290, v1286);
            if ((v673)(v1286, 1, v670) == 1)
            {
              sub_268D59D2C(v1286);
              v657 = 0;
              v658 = 0;
            }

            else
            {
              v655 = sub_268F9ACC4();
              v656 = v203;
              (*(v671 + 8))(v1286, v670);
              v657 = v655;
              v658 = v656;
            }

            v1492 = v657;
            v1493 = v658;
            if (v658)
            {
              v1494 = v1492;
              v1495 = v1493;
            }

            else
            {
              v1491 = 9;
              v1494 = NumericSettingIdentifier.rawValue.getter();
              v1495 = v204;
              if (v1493)
              {
                sub_268CD9D30(&v1492);
              }
            }

            v1512 = v1494;
            v1513 = v1495;
          }

          sub_268D59D2C(v1290);
        }

LABEL_377:
        v1510 = 1;
        v653 = v1512;
        v654 = v1513;

        sub_268D9BF94(v1372, v1366);
        if (v730(v1366, 1, v1325) == 1)
        {
          sub_268D9C0BC(v1366);
          v651 = 0;
          v652 = 0;
        }

        else
        {
          v649 = sub_268F99F54();
          v650 = v206;
          (*(v1326 + 8))(v1366, v1325);
          v651 = v649;
          v652 = v650;
        }

        v646 = v652;
        v647 = v651;

        sub_268F9A664();
        v648 = v1508;

        if (v648)
        {
          v645 = v648;
          v642 = v648;
          v643 = sub_268F99F04();

          v644 = v643;
        }

        else
        {
          v644 = 0;
        }

        v641 = v644;
        sub_268D9DAD8(v653, v654, v647, v646, v644, &v1509);

        v1507 = v1509;
        if (static SupportedFlowDomain.== infix(_:_:)(&v1510, &v1507))
        {
          v638 = sub_268F9B284();
          v640 = *sub_268D8E144();
          MEMORY[0x277D82BE0](v640);
          v639 = sub_268F9B734();
          sub_268F9AC14();

          MEMORY[0x277D82BD8](v640);
          *v1223 = 1;
          sub_268CD9D30(&v1512);
          sub_268D9C0BC(v1372);

          result = v729;
          v1215 = v729;
        }

        else
        {
          v1506 = 2;
          v636 = v1512;
          v637 = v1513;

          sub_268D9BF94(v1372, v1364);
          if (v730(v1364, 1, v1325) == 1)
          {
            sub_268D9C0BC(v1364);
            v634 = 0;
            v635 = 0;
          }

          else
          {
            v632 = sub_268F99F54();
            v633 = v207;
            (*(v1326 + 8))(v1364, v1325);
            v634 = v632;
            v635 = v633;
          }

          v629 = v635;
          v630 = v634;

          sub_268F9A664();
          v631 = v1504;

          if (v631)
          {
            v628 = v631;
            v625 = v631;
            v626 = sub_268F99F04();

            v627 = v626;
          }

          else
          {
            v627 = 0;
          }

          v624 = v627;
          sub_268D9EBC0(v636, v637, v630, v629, v627, &v1505);

          v1503 = v1505;
          if (static SupportedFlowDomain.== infix(_:_:)(&v1506, &v1503))
          {
            v620 = sub_268F9B284();
            v622 = *sub_268D8E144();
            MEMORY[0x277D82BE0](v622);
            v621 = sub_268F9B734();
            v623 = 2;
            sub_268F9AC14();

            MEMORY[0x277D82BD8](v622);
            *v1223 = v623;
            sub_268CD9D30(&v1512);
            sub_268D9C0BC(v1372);

            result = v729;
            v1215 = v729;
          }

          else
          {

            v618 = sub_268F9A644();

            sub_268F9A664();
            v617 = v1502;

            v208 = _swift_stdlib_has_malloc_size();
            v619 = sub_268D9F984(v618, v617, v208 & 1);

            if (v619)
            {
              v614 = sub_268F9B284();
              v616 = *sub_268D8E144();
              MEMORY[0x277D82BE0](v616);
              v615 = sub_268F9B734();
              sub_268F9AC14();

              MEMORY[0x277D82BD8](v616);
              *v1223 = 7;
            }

            else
            {
              v610 = sub_268F9B284();
              v612 = *sub_268D8E144();
              MEMORY[0x277D82BE0](v612);
              v611 = sub_268F9B734();
              v613 = 2;
              sub_268F9AC14();

              MEMORY[0x277D82BD8](v612);
              *v1223 = v613;
            }

            sub_268CD9D30(&v1512);
            sub_268D9C0BC(v1372);

            result = v729;
            v1215 = v729;
          }
        }

        return result;
      }

      sub_268D28550(v1515);
      v720 = 0;
      goto LABEL_325;
    }

    sub_268F9A204();

    if (v1604[3])
    {
      sub_268F9A584();
      if (swift_dynamicCast())
      {
        v609 = v1520;
      }

      else
      {
        v609 = 0;
      }

      v608 = v609;
    }

    else
    {
      sub_268D28414(v1604);
      v608 = 0;
    }

    v607 = v608;
    if (v608)
    {
      v606 = v607;
      v604 = v607;
      v1557 = v607;
      v601 = sub_268F9B284();
      v603 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v603);
      v600 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v602 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v603);

      sub_268F9A664();
      v605 = v1556;

      if (!v605)
      {
        goto LABEL_497;
      }

      v599 = v605;
      v597 = v605;
      v209 = sub_268D8E220();
      v595 = *v209;
      v596 = v209[1];

      v598 = sub_268F9A0A4();

      if (v598)
      {
        v594 = v598;
        v1521 = v598;
        v592 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        result = sub_268F9AF94();
        v593 = v2;
        if (v2)
        {
          goto LABEL_666;
        }

        sub_268CD7930(&v1521);
        v591 = v593;
      }

      else
      {
LABEL_497:
        (*(v1326 + 56))(v1362, 1, 1, v1325);
        v591 = v1225;
      }

      v588 = v591;
      sub_268D9BF94(v1362, v1360);
      v589 = *(v1326 + 48);
      v590 = v1326 + 48;
      if (v589(v1360, 1, v1325) == 1)
      {
        sub_268D9C0BC(v1360);
        v586 = 0;
        v587 = 0;
      }

      else
      {
        v584 = sub_268F99F44();
        v585 = v210;
        (*(v1326 + 8))(v1360, v1325);
        v586 = v584;
        v587 = v585;
      }

      v582 = v587;
      v581 = v586;

      v1555 = 9;
      v580 = NumericSettingIdentifier.rawValue.getter();
      v583 = v211;

      v1553[0] = v581;
      v1553[1] = v582;
      *&v1554 = v580;
      *(&v1554 + 1) = v583;
      if (v582)
      {
        sub_268D28874(v1553, &v1524);
        if (*(&v1554 + 1))
        {
          v577 = &v1523;
          v1523 = v1524;
          v576 = &v1522;
          v1522 = v1554;
          v578 = MEMORY[0x26D62DB50](v1524, *(&v1524 + 1), v1554, *(&v1554 + 1));
          sub_268CD9D30(v576);
          sub_268CD9D30(v577);
          sub_268CD9D30(v1553);
          v579 = v578;
          goto LABEL_423;
        }

        sub_268CD9D30(&v1524);
      }

      else if (!*(&v1554 + 1))
      {
        sub_268CD9D30(v1553);
        v579 = 1;
LABEL_423:
        v575 = v579;

        v1552 = v575 & 1;

        if (v575)
        {
          v574 = 0;
        }

        else
        {

          v572 = sub_268F9A644();

          sub_268F9A664();
          v571 = v1525;

          v573 = sub_268DA2274(v572, v571);

          v574 = v573;
        }

        v570 = v574;

        if (v570)
        {
          goto LABEL_429;
        }

        if (v575)
        {
          v569 = 0;
        }

        else
        {

          sub_268F9A664();
          v567 = v1526;

          v568 = sub_268DA1D80(v567);

          v569 = v568;
        }

        v566 = v569;

        if (v566)
        {
LABEL_429:
          v212 = v1362;
          *v1223 = 0;
          sub_268D9C0BC(v212);

          result = v588;
          v1215 = v588;
          return result;
        }

        sub_268D9BF94(v1362, v1358);
        if (v589(v1358, 1, v1325) == 1)
        {
          sub_268D9C0BC(v1358);
          v1550 = 0;
          v1551 = 0;
        }

        else
        {
          v564 = sub_268F99F44();
          v565 = v213;
          (*(v1326 + 8))(v1358, v1325);
          v1550 = v564;
          v1551 = v565;
        }

        v562 = v1550;
        v563 = v1551;

        v1549[0] = v562;
        v1549[1] = v563;
        v561 = v563 == 0;
        v560 = v561;
        sub_268CD9D30(v1549);
        if (!v560)
        {
          goto LABEL_475;
        }

        sub_268F9A664();
        v559 = v1539;

        if (v559 && (v558 = v559, v556 = v559, v557 = sub_268F9A094(), , v557))
        {
          v555 = v557;
          v554 = v557;
          sub_268F9A424();
        }

        else
        {
          (*(v1292 + 56))(v1318, 1, 1, v1291);
        }

        (*(v1292 + 104))(v1316, *MEMORY[0x277D5EE50], v1291);
        v214 = *(v1292 + 56);
        v551 = 1;
        v214(v1316, 0);
        v550 = &v1302[*(v1298 + 48)];
        sub_268D9FB5C(v1318, v1302);
        sub_268D9FB5C(v1316, v550);
        v552 = *(v1292 + 48);
        v553 = v1292 + 48;
        if (v552(v1302, v551, v1291) == 1)
        {
          if (v552(v550, 1, v1291) == 1)
          {
            sub_268D9FDB0(v1302);
            v549 = 1;
            goto LABEL_449;
          }
        }

        else
        {
          sub_268D9FB5C(v1302, v1314);
          if (v552(v550, 1, v1291) != 1)
          {
            v545 = *(v1292 + 32);
            v544 = v1292 + 32;
            v545(v1297, v1314, v1291);
            v545(v1295, v550, v1291);
            sub_268D9FF80();
            v548 = sub_268F9AE04();
            v547 = *(v1292 + 8);
            v546 = v1292 + 8;
            v547(v1295, v1291);
            v547(v1297, v1291);
            sub_268D9FDB0(v1302);
            v549 = v548;
            goto LABEL_449;
          }

          (*(v1292 + 8))(v1314, v1291);
        }

        sub_268D9FC84(v1302);
        v549 = 0;
LABEL_449:
        v543 = v549;
        sub_268D9FDB0(v1316);
        sub_268D9FDB0(v1318);
        if (v543)
        {
          sub_268D35D60((v1224 + 72), v1536);
          if (v1537)
          {
            v539 = v1537;
            v540 = v1538;
            v541 = __swift_project_boxed_opaque_existential_1(v1536, v1537);

            sub_268F9A664();
            v542 = v1527;

            if (v542)
            {
              v538 = v542;
              v535 = v542;
              v536 = sub_268F99F04();

              v537 = v536;
            }

            else
            {
              v537 = 0;
            }

            v534 = v537;
            (*(v540 + 16))();

            __swift_destroy_boxed_opaque_existential_0(v1536);
          }

          else
          {
            sub_268D28414(v1536);
            v218 = sub_268F9ACE4();
            (*(*(v218 - 8) + 56))(v1284, 1);
          }

          sub_268D9FE58(v1284, v1282);
          v529 = sub_268F9ACE4();
          v530 = *(v529 - 8);
          v531 = v529 - 8;
          v532 = *(v530 + 48);
          v533 = v530 + 48;
          if (v532(v1282, 1) == 1)
          {
            sub_268D59D2C(v1282);
            v528 = 0;
          }

          else
          {
            v527 = sub_268F9ACD4();
            (*(v530 + 8))(v1282, v529);
            v528 = v527;
          }

          v525 = v528;
          sub_268F9A2E4();
          sub_268F9A2D4();

          v526 = v1535;
          if (v1535)
          {
            v524 = v526;
            v523 = v526;
            v1529 = v526;
            v520 = sub_268F9B284();
            v522 = *sub_268D8E144();
            MEMORY[0x277D82BE0](v522);
            v521 = sub_268F9B734();
            sub_268F9AC14();

            MEMORY[0x277D82BD8](v522);
            v1528 = 9;
            v1550 = NumericSettingIdentifier.rawValue.getter();
            v1551 = v215;
          }

          else
          {
            v517 = sub_268F9B284();
            v519 = *sub_268D8E144();
            MEMORY[0x277D82BE0](v519);
            v518 = sub_268F9B734();
            sub_268F9AC14();

            MEMORY[0x277D82BD8](v519);
            sub_268D9FE58(v1284, v1280);
            if ((v532)(v1280, 1, v529) == 1)
            {
              sub_268D59D2C(v1280);
              v515 = 0;
              v516 = 0;
            }

            else
            {
              v513 = sub_268F9ACC4();
              v514 = v216;
              (*(v530 + 8))(v1280, v529);
              v515 = v513;
              v516 = v514;
            }

            v1531 = v515;
            v1532 = v516;
            if (v516)
            {
              v1533 = v1531;
              v1534 = v1532;
            }

            else
            {
              v1530 = 9;
              v1533 = NumericSettingIdentifier.rawValue.getter();
              v1534 = v217;
              if (v1532)
              {
                sub_268CD9D30(&v1531);
              }
            }

            v1550 = v1533;
            v1551 = v1534;
          }

          sub_268D59D2C(v1284);
        }

LABEL_475:
        v1548 = 1;
        v511 = v1550;
        v512 = v1551;

        sub_268D9BF94(v1362, v1356);
        if (v589(v1356, 1, v1325) == 1)
        {
          sub_268D9C0BC(v1356);
          v509 = 0;
          v510 = 0;
        }

        else
        {
          v507 = sub_268F99F54();
          v508 = v219;
          (*(v1326 + 8))(v1356, v1325);
          v509 = v507;
          v510 = v508;
        }

        v504 = v510;
        v505 = v509;

        sub_268F9A664();
        v506 = v1546;

        if (v506)
        {
          v503 = v506;
          v500 = v506;
          v501 = sub_268F99F04();

          v502 = v501;
        }

        else
        {
          v502 = 0;
        }

        v499 = v502;
        sub_268D9DAD8(v511, v512, v505, v504, v502, &v1547);

        v1545 = v1547;
        if (static SupportedFlowDomain.== infix(_:_:)(&v1548, &v1545))
        {
          v496 = sub_268F9B284();
          v498 = *sub_268D8E144();
          MEMORY[0x277D82BE0](v498);
          v497 = sub_268F9B734();
          sub_268F9AC14();

          MEMORY[0x277D82BD8](v498);
          *v1223 = 1;
          sub_268CD9D30(&v1550);
          sub_268D9C0BC(v1362);

          result = v588;
          v1215 = v588;
        }

        else
        {
          v1544 = 2;
          v494 = v1550;
          v495 = v1551;

          sub_268D9BF94(v1362, v1354);
          if (v589(v1354, 1, v1325) == 1)
          {
            sub_268D9C0BC(v1354);
            v492 = 0;
            v493 = 0;
          }

          else
          {
            v490 = sub_268F99F54();
            v491 = v220;
            (*(v1326 + 8))(v1354, v1325);
            v492 = v490;
            v493 = v491;
          }

          v487 = v493;
          v488 = v492;

          sub_268F9A664();
          v489 = v1542;

          if (v489)
          {
            v486 = v489;
            v483 = v489;
            v484 = sub_268F99F04();

            v485 = v484;
          }

          else
          {
            v485 = 0;
          }

          v482 = v485;
          sub_268D9EBC0(v494, v495, v488, v487, v485, &v1543);

          v1541 = v1543;
          if (static SupportedFlowDomain.== infix(_:_:)(&v1544, &v1541))
          {
            v478 = sub_268F9B284();
            v480 = *sub_268D8E144();
            MEMORY[0x277D82BE0](v480);
            v479 = sub_268F9B734();
            v481 = 2;
            sub_268F9AC14();

            MEMORY[0x277D82BD8](v480);
            *v1223 = v481;
            sub_268CD9D30(&v1550);
            sub_268D9C0BC(v1362);

            result = v588;
            v1215 = v588;
          }

          else
          {

            v476 = sub_268F9A644();

            sub_268F9A664();
            v475 = v1540;

            v221 = _swift_stdlib_has_malloc_size();
            v477 = sub_268D9F984(v476, v475, v221 & 1);

            if (v477)
            {
              v472 = sub_268F9B284();
              v474 = *sub_268D8E144();
              MEMORY[0x277D82BE0](v474);
              v473 = sub_268F9B734();
              sub_268F9AC14();

              MEMORY[0x277D82BD8](v474);
              *v1223 = 7;
            }

            else
            {
              v468 = sub_268F9B284();
              v470 = *sub_268D8E144();
              MEMORY[0x277D82BE0](v470);
              v469 = sub_268F9B734();
              v471 = 2;
              sub_268F9AC14();

              MEMORY[0x277D82BD8](v470);
              *v1223 = v471;
            }

            sub_268CD9D30(&v1550);
            sub_268D9C0BC(v1362);

            result = v588;
            v1215 = v588;
          }
        }

        return result;
      }

      sub_268D28550(v1553);
      v579 = 0;
      goto LABEL_423;
    }

    sub_268F9A204();

    if (v1603[3])
    {
      sub_268F9A684();
      if (swift_dynamicCast())
      {
        v467 = v1558;
      }

      else
      {
        v467 = 0;
      }

      v466 = v467;
    }

    else
    {
      sub_268D28414(v1603);
      v466 = 0;
    }

    v465 = v466;
    if (v466)
    {
      v464 = v465;
      v460 = v465;
      v1560 = v465;
      v457 = sub_268F9B284();
      v459 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v459);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v458 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v459);

      v462 = sub_268F9A694();

      sub_268F9A6A4();
      v461 = v1559[4];

      v463 = sub_268DA2274(v462, v461);

      if ((v463 & 1) == 0)
      {

        v455 = sub_268F9A694();

        sub_268F9A6A4();
        v454 = v1559[3];

        v222 = _swift_stdlib_has_malloc_size();
        v456 = sub_268D9F984(v455, v454, v222 & 1);

        if (v456)
        {
          goto LABEL_538;
        }

        sub_268F9A6A4();
        v453 = v1559[2];

        if (!v453)
        {
          goto LABEL_527;
        }

        v452 = v453;
        v450 = v453;
        v223 = sub_268D8E220();
        v448 = *v223;
        v449 = v223[1];

        v451 = sub_268F9A0A4();

        if (v451)
        {
          v447 = v451;
          v1559[0] = v451;
          v445 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
          sub_268DA5FC0();
          result = sub_268F9AF94();
          v446 = v2;
          if (v2)
          {
            goto LABEL_667;
          }

          sub_268CD7930(v1559);
          v444 = v446;
        }

        else
        {
LABEL_527:
          (*(v1326 + 56))(v1352, 1, 1, v1325);
          v444 = v1225;
        }

        v441 = v444;
        sub_268D9BF94(v1352, v1350);
        v442 = *(v1326 + 48);
        v443 = v1326 + 48;
        if (v442(v1350, 1, v1325) == 1)
        {
          sub_268D9C0BC(v1350);
          v439 = 0;
          v440 = 0;
        }

        else
        {
          v437 = sub_268F99F44();
          v438 = v224;
          (*(v1326 + 8))(v1350, v1325);
          v439 = v437;
          v440 = v438;
        }

        v435 = v440;
        v436 = v439;
        sub_268D9BF94(v1352, v1348);
        if (v442(v1348, 1, v1325) == 1)
        {
          sub_268D9C0BC(v1348);
          v433 = 0;
          v434 = 0;
        }

        else
        {
          v431 = sub_268F99F54();
          v432 = v225;
          (*(v1326 + 8))(v1348, v1325);
          v433 = v431;
          v434 = v432;
        }

        v428 = v434;
        v429 = v433;

        sub_268F9A6A4();
        v430 = v1559[1];

        if (v430)
        {
          v427 = v430;
          v424 = v430;
          v425 = sub_268F99F04();

          v426 = v425;
        }

        else
        {
          v426 = 0;
        }

        v423 = v426;
        sub_268D9DAD8(v436, v435, v429, v428, v426, v1223);

        sub_268D9C0BC(v1352);

        result = v441;
        v1215 = v441;
        return result;
      }

      goto LABEL_536;
    }

    sub_268F9A204();

    if (v1602[3])
    {
      sub_268F9A674();
      if (swift_dynamicCast())
      {
        v422 = v1561;
      }

      else
      {
        v422 = 0;
      }

      v421 = v422;
    }

    else
    {
      sub_268D28414(v1602);
      v421 = 0;
    }

    v420 = v421;
    if (v421)
    {
      v419 = v420;
      v415 = v420;
      v1563 = v420;
      v412 = sub_268F9B284();
      v414 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v414);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v413 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v414);

      v417 = sub_268F9A694();

      sub_268F9A6A4();
      v416 = v1562[4];

      v418 = sub_268DA2274(v417, v416);

      if ((v418 & 1) == 0)
      {

        v410 = sub_268F9A694();

        sub_268F9A6A4();
        v409 = v1562[3];

        v226 = _swift_stdlib_has_malloc_size();
        v411 = sub_268D9F984(v410, v409, v226 & 1);

        if (v411)
        {
LABEL_538:
          *v1223 = 7;

          result = v1225;
          v1215 = v1225;
          return result;
        }

        sub_268F9A6A4();
        v408 = v1562[2];

        if (!v408)
        {
          goto LABEL_557;
        }

        v407 = v408;
        v405 = v408;
        v227 = sub_268D8E220();
        v403 = *v227;
        v404 = v227[1];

        v406 = sub_268F9A0A4();

        if (v406)
        {
          v402 = v406;
          v1562[0] = v406;
          v400 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
          sub_268DA5FC0();
          result = sub_268F9AF94();
          v401 = v2;
          if (v2)
          {
            goto LABEL_668;
          }

          sub_268CD7930(v1562);
          v399 = v401;
        }

        else
        {
LABEL_557:
          (*(v1326 + 56))(v1346, 1, 1, v1325);
          v399 = v1225;
        }

        v396 = v399;
        sub_268D9BF94(v1346, v1344);
        v397 = *(v1326 + 48);
        v398 = v1326 + 48;
        if (v397(v1344, 1, v1325) == 1)
        {
          sub_268D9C0BC(v1344);
          v394 = 0;
          v395 = 0;
        }

        else
        {
          v392 = sub_268F99F44();
          v393 = v228;
          (*(v1326 + 8))(v1344, v1325);
          v394 = v392;
          v395 = v393;
        }

        v390 = v395;
        v391 = v394;
        sub_268D9BF94(v1346, v1342);
        if (v397(v1342, 1, v1325) == 1)
        {
          sub_268D9C0BC(v1342);
          v388 = 0;
          v389 = 0;
        }

        else
        {
          v386 = sub_268F99F54();
          v387 = v229;
          (*(v1326 + 8))(v1342, v1325);
          v388 = v386;
          v389 = v387;
        }

        v383 = v389;
        v384 = v388;

        sub_268F9A6A4();
        v385 = v1562[1];

        if (v385)
        {
          v382 = v385;
          v379 = v385;
          v380 = sub_268F99F04();

          v381 = v380;
        }

        else
        {
          v381 = 0;
        }

        v378 = v381;
        sub_268D9DAD8(v391, v390, v384, v383, v381, v1223);

        sub_268D9C0BC(v1346);

        result = v396;
        v1215 = v396;
        return result;
      }

      goto LABEL_536;
    }

    sub_268F9A204();

    if (v1601[3])
    {
      sub_268F9A634();
      if (swift_dynamicCast())
      {
        v377 = v1564;
      }

      else
      {
        v377 = 0;
      }

      v376 = v377;
    }

    else
    {
      sub_268D28414(v1601);
      v376 = 0;
    }

    v375 = v376;
    if (v376)
    {
      v374 = v375;
      v370 = v375;
      v1566 = v375;
      v367 = sub_268F9B284();
      v369 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v369);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v368 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v369);

      v372 = sub_268F9A694();

      sub_268F9A6A4();
      v371 = v1565;

      v373 = sub_268DA2274(v372, v371);

      if (v373)
      {
        *v1223 = 0;
      }

      else
      {
        *v1223 = 7;
      }

      goto LABEL_273;
    }

    sub_268F9A204();

    if (v1600[3])
    {
      sub_268F9A514();
      if (swift_dynamicCast())
      {
        v366 = v1567;
      }

      else
      {
        v366 = 0;
      }

      v365 = v366;
    }

    else
    {
      sub_268D28414(v1600);
      v365 = 0;
    }

    v364 = v365;
    if (!v365)
    {
      *v1223 = 2;

      result = v1225;
      v1215 = v1225;
      return result;
    }

    v363 = v364;
    v361 = v364;
    v1599 = v364;
    v358 = sub_268F9B284();
    v360 = *sub_268D8E144();
    MEMORY[0x277D82BE0](v360);
    v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v359 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v360);

    sub_268F9A664();
    v362 = v1598;

    if (!v362)
    {
      goto LABEL_653;
    }

    v356 = v362;
    v354 = v362;
    v230 = sub_268D8E220();
    v352 = *v230;
    v353 = v230[1];

    v355 = sub_268F9A0A4();

    if (v355)
    {
      v351 = v355;
      v1568 = v355;
      v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
      sub_268DA5FC0();
      result = sub_268F9AF94();
      v350 = v2;
      if (v2)
      {
        goto LABEL_669;
      }

      sub_268CD7930(&v1568);
      v348 = v350;
    }

    else
    {
LABEL_653:
      (*(v1326 + 56))(v1340, 1, 1, v1325);
      v348 = v1225;
    }

    v345 = v348;
    sub_268D9BF94(v1340, v1338);
    v346 = *(v1326 + 48);
    v347 = v1326 + 48;
    if (v346(v1338, 1, v1325) == 1)
    {
      sub_268D9C0BC(v1338);
      v343 = 0;
      v344 = 0;
    }

    else
    {
      v341 = sub_268F99F44();
      v342 = v231;
      (*(v1326 + 8))(v1338, v1325);
      v343 = v341;
      v344 = v342;
    }

    v339 = v344;
    v338 = v343;

    v1597 = 9;
    v337 = NumericSettingIdentifier.rawValue.getter();
    v340 = v232;

    v1595[0] = v338;
    v1595[1] = v339;
    *&v1596 = v337;
    *(&v1596 + 1) = v340;
    if (v339)
    {
      sub_268D28874(v1595, &v1571);
      if (*(&v1596 + 1))
      {
        v334 = &v1570;
        v1570 = v1571;
        v333 = &v1569;
        v1569 = v1596;
        v335 = MEMORY[0x26D62DB50](v1571, *(&v1571 + 1), v1596, *(&v1596 + 1));
        sub_268CD9D30(v333);
        sub_268CD9D30(v334);
        sub_268CD9D30(v1595);
        v336 = v335;
        goto LABEL_591;
      }

      sub_268CD9D30(&v1571);
    }

    else if (!*(&v1596 + 1))
    {
      sub_268CD9D30(v1595);
      v336 = 1;
LABEL_591:
      v332 = v336;

      v1594 = v332 & 1;

      if (v332)
      {
        v331 = 0;
      }

      else
      {

        v329 = sub_268F9A644();

        sub_268F9A664();
        v328 = v1572;

        v330 = sub_268DA2274(v329, v328);

        v331 = v330;
      }

      v327 = v331;

      if (v327)
      {
        v233 = v1340;
        *v1223 = 0;
        sub_268D9C0BC(v233);

        result = v345;
        v1215 = v345;
        return result;
      }

      sub_268D9BF94(v1340, v1336);
      if (v346(v1336, 1, v1325) == 1)
      {
        sub_268D9C0BC(v1336);
        v1592 = 0;
        v1593 = 0;
      }

      else
      {
        v325 = sub_268F99F44();
        v326 = v234;
        (*(v1326 + 8))(v1336, v1325);
        v1592 = v325;
        v1593 = v326;
      }

      v323 = v1592;
      v324 = v1593;

      v1591[0] = v323;
      v1591[1] = v324;
      v322 = v324 == 0;
      v321 = v322;
      sub_268CD9D30(v1591);
      if (!v321)
      {
        goto LABEL_639;
      }

      sub_268F9A664();
      v320 = v1585;

      if (v320 && (v319 = v320, v317 = v320, v318 = sub_268F9A094(), , v318))
      {
        v316 = v318;
        v315 = v318;
        sub_268F9A424();
      }

      else
      {
        (*(v1292 + 56))(v1312, 1, 1, v1291);
      }

      (*(v1292 + 104))(v1310, *MEMORY[0x277D5EE50], v1291);
      v235 = *(v1292 + 56);
      v312 = 1;
      v235(v1310, 0);
      v311 = &v1300[*(v1298 + 48)];
      sub_268D9FB5C(v1312, v1300);
      sub_268D9FB5C(v1310, v311);
      v313 = *(v1292 + 48);
      v314 = v1292 + 48;
      if (v313(v1300, v312, v1291) == 1)
      {
        if (v313(v311, 1, v1291) == 1)
        {
          sub_268D9FDB0(v1300);
          v310 = 1;
          goto LABEL_613;
        }
      }

      else
      {
        sub_268D9FB5C(v1300, v1308);
        if (v313(v311, 1, v1291) != 1)
        {
          v306 = *(v1292 + 32);
          v305 = v1292 + 32;
          v306(v1297, v1308, v1291);
          v306(v1295, v311, v1291);
          sub_268D9FF80();
          v309 = sub_268F9AE04();
          v308 = *(v1292 + 8);
          v307 = v1292 + 8;
          v308(v1295, v1291);
          v308(v1297, v1291);
          sub_268D9FDB0(v1300);
          v310 = v309;
          goto LABEL_613;
        }

        (*(v1292 + 8))(v1308, v1291);
      }

      sub_268D9FC84(v1300);
      v310 = 0;
LABEL_613:
      v304 = v310;
      sub_268D9FDB0(v1310);
      sub_268D9FDB0(v1312);
      if (v304)
      {
        sub_268D35D60((v1224 + 72), v1582);
        if (v1583)
        {
          v300 = v1583;
          v301 = v1584;
          v302 = __swift_project_boxed_opaque_existential_1(v1582, v1583);

          sub_268F9A664();
          v303 = v1573;

          if (v303)
          {
            v299 = v303;
            v296 = v303;
            v297 = sub_268F99F04();

            v298 = v297;
          }

          else
          {
            v298 = 0;
          }

          v295 = v298;
          (*(v301 + 16))();

          __swift_destroy_boxed_opaque_existential_0(v1582);
        }

        else
        {
          sub_268D28414(v1582);
          v239 = sub_268F9ACE4();
          (*(*(v239 - 8) + 56))(v1278, 1);
        }

        sub_268D9FE58(v1278, v1276);
        v290 = sub_268F9ACE4();
        v291 = *(v290 - 8);
        v292 = v290 - 8;
        v293 = *(v291 + 48);
        v294 = v291 + 48;
        if (v293(v1276, 1) == 1)
        {
          sub_268D59D2C(v1276);
          v289 = 0;
        }

        else
        {
          v288 = sub_268F9ACD4();
          (*(v291 + 8))(v1276, v290);
          v289 = v288;
        }

        v287 = v289;
        sub_268F9A2E4();
        sub_268F9A2D4();

        v1580 = v1581;
        v286 = v1581 != 0;
        v285 = v286;
        sub_268D287E8(&v1580);
        if (v285)
        {
          v282 = sub_268F9B284();
          v284 = *sub_268D8E144();
          MEMORY[0x277D82BE0](v284);
          v283 = sub_268F9B734();
          sub_268F9AC14();

          MEMORY[0x277D82BD8](v284);
          v1574 = 9;
          v1592 = NumericSettingIdentifier.rawValue.getter();
          v1593 = v236;
        }

        else
        {
          v279 = sub_268F9B284();
          v281 = *sub_268D8E144();
          MEMORY[0x277D82BE0](v281);
          v280 = sub_268F9B734();
          sub_268F9AC14();

          MEMORY[0x277D82BD8](v281);
          sub_268D9FE58(v1278, v1274);
          if ((v293)(v1274, 1, v290) == 1)
          {
            sub_268D59D2C(v1274);
            v277 = 0;
            v278 = 0;
          }

          else
          {
            v275 = sub_268F9ACC4();
            v276 = v237;
            (*(v291 + 8))(v1274, v290);
            v277 = v275;
            v278 = v276;
          }

          v1576 = v277;
          v1577 = v278;
          if (v278)
          {
            v1578 = v1576;
            v1579 = v1577;
          }

          else
          {
            v1575 = 9;
            v1578 = NumericSettingIdentifier.rawValue.getter();
            v1579 = v238;
            if (v1577)
            {
              sub_268CD9D30(&v1576);
            }
          }

          v1592 = v1578;
          v1593 = v1579;
        }

        sub_268D59D2C(v1278);
      }

LABEL_639:
      v1590 = 1;
      v273 = v1592;
      v274 = v1593;

      sub_268D9BF94(v1340, v1334);
      if (v346(v1334, 1, v1325) == 1)
      {
        sub_268D9C0BC(v1334);
        v271 = 0;
        v272 = 0;
      }

      else
      {
        v269 = sub_268F99F54();
        v270 = v240;
        (*(v1326 + 8))(v1334, v1325);
        v271 = v269;
        v272 = v270;
      }

      v266 = v272;
      v267 = v271;

      sub_268F9A664();
      v268 = v1588;

      if (v268)
      {
        v265 = v268;
        v262 = v268;
        v263 = sub_268F99F04();

        v264 = v263;
      }

      else
      {
        v264 = 0;
      }

      v261 = v264;
      sub_268D9DAD8(v273, v274, v267, v266, v264, &v1589);

      v1587 = v1589;
      if (static SupportedFlowDomain.== infix(_:_:)(&v1590, &v1587))
      {
        *v1223 = 1;
        sub_268CD9D30(&v1592);
        sub_268D9C0BC(v1340);

        result = v345;
        v1215 = v345;
      }

      else
      {

        v259 = sub_268F9A644();

        sub_268F9A664();
        v258 = v1586;

        v241 = _swift_stdlib_has_malloc_size();
        v260 = sub_268D9F984(v259, v258, v241 & 1);

        if (v260)
        {
          *v1223 = 7;
        }

        else
        {
          *v1223 = 2;
        }

        sub_268CD9D30(&v1592);
        sub_268D9C0BC(v1340);

        result = v345;
        v1215 = v345;
      }

      return result;
    }

    sub_268D28550(v1595);
    v336 = 0;
    goto LABEL_591;
  }

  v1199 = v1200;
  v1195 = v1200;
  v1439 = v1200;
  v1192 = sub_268F9B284();
  v1194 = *sub_268D8E144();
  MEMORY[0x277D82BE0](v1194);
  v1191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v1193 = sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v1194);

  v1197 = sub_268F99E74();

  sub_268F99E84();
  v1196 = v1438;

  v1198 = sub_268D9F984(v1197, v1196, 0);

  if (v1198)
  {
    goto LABEL_538;
  }

  sub_268F99E84();
  v1190 = v1437;

  if (!v1190)
  {
    goto LABEL_65;
  }

  v1189 = v1190;
  v1187 = v1190;
  v125 = sub_268D8E220();
  v1185 = *v125;
  v1186 = v125[1];

  v1188 = sub_268F9A0A4();

  if (!v1188)
  {
LABEL_65:
    (*(v1326 + 56))(v1418, 1, 1, v1325);
    v1181 = v1225;
    goto LABEL_34;
  }

  v1184 = v1188;
  v1429 = v1188;
  v1182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  sub_268DA5FC0();
  result = sub_268F9AF94();
  v1183 = v2;
  if (v2)
  {
    __break(1u);
LABEL_658:
    __break(1u);
LABEL_659:
    __break(1u);
LABEL_660:
    __break(1u);
LABEL_661:
    __break(1u);
LABEL_662:
    __break(1u);
LABEL_663:
    __break(1u);
LABEL_664:
    __break(1u);
LABEL_665:
    __break(1u);
LABEL_666:
    __break(1u);
LABEL_667:
    __break(1u);
LABEL_668:
    __break(1u);
LABEL_669:
    __break(1u);
    return result;
  }

  sub_268CD7930(&v1429);
  v1181 = v1183;
LABEL_34:
  v1178 = v1181;

  v1179 = *(v1326 + 48);
  v1180 = v1326 + 48;
  if (v1179(v1418, 1, v1325) == 1)
  {

    sub_268F99E84();
    v1176 = v1436;

    if (!v1176)
    {
      goto LABEL_47;
    }

    v1175 = v1176;
    v1173 = v1176;
    v126 = sub_268D8E220();
    v1171 = *v126;
    v1172 = v126[1];

    v1174 = sub_268F9A0A4();

    if (v1174)
    {
      v1170 = v1174;
      v1430[0] = v1174;
      v1168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
      sub_268DA5FC0();
      v127 = v1178;
      sub_268F9AF94();
      v1169 = v127;
      if (v127)
      {
        __break(1u);
      }

      else
      {
        sub_268CD7930(v1430);
        v1167 = v1169;
      }
    }

    else
    {
LABEL_47:
      (*(v1326 + 56))(v1420, 1, 1, v1325);
      v1167 = v1178;
    }

    v1166 = v1167;
    if (v1179(v1418, 1, v1325) != 1)
    {
      sub_268D9C0BC(v1418);
    }

    v1177 = v1166;
  }

  else
  {
    (*(v1326 + 32))(v1420, v1418, v1325);
    (*(v1326 + 56))(v1420, 0, 1, v1325);
    v1177 = v1178;
  }

  v1165 = v1177;

  sub_268D9BF94(v1420, v1416);
  if (v1179(v1416, 1, v1325) == 1)
  {
    sub_268D9C0BC(v1416);
    v1163 = 0;
    v1164 = 0;
  }

  else
  {
    v1161 = sub_268F99F44();
    v1162 = v128;
    (*(v1326 + 8))(v1416, v1325);
    v1163 = v1161;
    v1164 = v1162;
  }

  v1159 = v1164;
  v1160 = v1163;
  sub_268D9BF94(v1420, v1414);
  if (v1179(v1414, 1, v1325) == 1)
  {
    sub_268D9C0BC(v1414);
    v1157 = 0;
    v1158 = 0;
  }

  else
  {
    v1155 = sub_268F99F54();
    v1156 = v129;
    (*(v1326 + 8))(v1414, v1325);
    v1157 = v1155;
    v1158 = v1156;
  }

  v1146 = v1158;
  sub_268D9DAD8(v1160, v1159, v1157, v1158, 0, &v1435);

  v1154 = v1435;
  v1434 = v1435;
  v1151 = sub_268F9B284();
  v1153 = *sub_268D8E144();
  MEMORY[0x277D82BE0](v1153);
  v1150 = sub_268F9B734();
  v1149 = v130;
  v1433[1] = v1154;
  v1147 = sub_268F9AE64();
  v1148 = v131;
  v1149[3] = MEMORY[0x277D837D0];
  v132 = sub_268CDD224();
  v133 = v1147;
  v134 = v1148;
  v135 = v1149;
  v136 = v132;
  v137 = v1150;
  v1149[4] = v136;
  *v135 = v133;
  v135[1] = v134;
  sub_268CD0F7C();
  v1152 = v137;
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v1153);
  v1433[0] = v1154;
  v1432 = 0;
  if (static SupportedFlowDomain.== infix(_:_:)(v1433, &v1432))
  {

    sub_268F99E84();
    v1145 = v1430[1];

    if (v1145 && (v1144 = v1145, v1141 = v1145, v1142 = sub_268F9A1D4(), v1143 = v138, , v1143))
    {
      v1139 = v1142;
      v1140 = v1143;
      v1134 = v1143;
      v1135 = sub_268F9AE94();
      v1136 = v139;

      v1137 = v1135;
      v1138 = v1136;
    }

    else
    {
      v1137 = 0;
      v1138 = 0;
    }

    v1132 = v1138;
    sub_268D9DAD8(v1137, v1138, 0, 0, 0, &v1431);

    v1133 = v1431;
  }

  else
  {
    v1133 = v1154;
  }

  v140 = v1420;
  *v1223 = v1133;
  sub_268D9C0BC(v140);

  result = v1165;
  v1215 = v1165;
  return result;
}

unint64_t sub_268D9BF0C()
{
  v2 = qword_280FE2850;
  if (!qword_280FE2850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC7D0, &qword_268F9F550);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2850);
    return WitnessTable;
  }

  return v2;
}

void *sub_268D9BF94(const void *a1, void *a2)
{
  v6 = sub_268F99F64();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_268D9C0BC(uint64_t a1)
{
  v3 = sub_268F99F64();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

BOOL static SupportedFlowDomain.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v5 = *a1;
  v6 = *a2;
  if (*a1)
  {
    switch(v5)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      case 6:
        v4 = 6;
        break;
      default:
        v4 = 7;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    switch(v6)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      case 6:
        v3 = 6;
        break;
      default:
        v3 = 7;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_268D9C3BC(uint64_t a1)
{
  v10 = a1;
  v14 = sub_268F99F64();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v8 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v9 = &v3 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290);
  v13 = swift_projectBox();
  swift_beginAccess();
  if ((*(v11 + 48))(v13, 1, v14) == 0)
  {
    (*(v11 + 16))(v9, v13, v14);
    swift_endAccess();
    v4 = sub_268F99F44();
    v5 = v1;
    (*(v11 + 8))(v9, v14);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    swift_endAccess();
    v6 = 0;
    v7 = 0;
  }

  v3 = v16;
  v16[0] = v6;
  v16[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
  return sub_268F9AE64();
}

uint64_t sub_268D9C5C0(uint64_t a1)
{
  v153 = v204;
  v185 = a1;
  v2 = v1;
  v3 = v185;
  v167 = v2;
  v181 = "Checking for connect to wifi use case.";
  v154 = sub_268D9D86C;
  v155 = sub_268DA6B08;
  v156 = sub_268CD7608;
  v157 = sub_268CD7600;
  v158 = sub_268CD7600;
  v159 = sub_268CD7614;
  v160 = sub_268D9C164;
  v161 = sub_268DA6B78;
  v162 = sub_268CD7608;
  v163 = sub_268CD7600;
  v164 = sub_268CD7600;
  v165 = sub_268CD7614;
  v215 = 0;
  v214 = 0;
  v213 = 0;
  v212 = 0;
  v166 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290);
  v168 = *(v4 - 8);
  v169 = v168;
  v177 = *(v168 + 64);
  v170 = (v177 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v171 = &v46[-v170];
  v172 = v170;
  MEMORY[0x28223BE20](&v46[-v170]);
  v173 = &v46[-v172];
  v174 = (v177 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](&v46[-v172]);
  v175 = &v46[-v174];
  v215 = &v46[-v174];
  v176 = (v177 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v178 = &v46[-v176];
  v179 = (v177 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v46[-v176]);
  v180 = &v46[-v179];
  v214 = &v46[-v179];
  v213 = v3;
  v212 = v6;
  v182 = sub_268F9B284();
  v184 = *sub_268D8E144();
  MEMORY[0x277D82BE0](v184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v183 = sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v184);

  sub_268F9A5C4();
  v186 = v211;

  if (!v186)
  {
    goto LABEL_57;
  }

  v152 = v186;
  v150 = v186;
  v7 = sub_268D8E220();
  v148 = *v7;
  v149 = v7[1];

  v151 = sub_268F9A0A4();

  if (v151)
  {
    v147 = v151;
    v8 = v166;
    v187 = v151;
    v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
    sub_268DA5FC0();
    result = sub_268F9AF94();
    v146 = v8;
    if (v8)
    {
      __break(1u);
      goto LABEL_59;
    }

    sub_268CD7930(&v187);
    v144 = v146;
  }

  else
  {
LABEL_57:
    v45 = sub_268F99F64();
    (*(*(v45 - 8) + 56))(v180, 1);
    v144 = v166;
  }

  v128 = v144;
  v143 = sub_268F9B284();
  v142 = *sub_268D8E144();
  MEMORY[0x277D82BE0](v142);
  sub_268D9BF94(v180, v178);
  v129 = *(v169 + 80);
  v130 = (v129 + 16) & ~v129;
  v133 = 7;
  v134 = swift_allocObject();
  sub_268DA69E0(v178, (v134 + v130));
  v131 = 17;
  v136 = swift_allocObject();
  *(v136 + 16) = 32;
  v137 = swift_allocObject();
  *(v137 + 16) = 8;
  v132 = 32;
  v10 = swift_allocObject();
  v11 = v134;
  v135 = v10;
  *(v10 + 16) = v155;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v135;
  v139 = v12;
  *(v12 + 16) = v156;
  *(v12 + 24) = v13;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  v138 = sub_268F9B734();
  v140 = v14;

  v15 = v136;
  v16 = v140;
  *v140 = v157;
  v16[1] = v15;

  v17 = v137;
  v18 = v140;
  v140[2] = v158;
  v18[3] = v17;

  v19 = v139;
  v20 = v140;
  v140[4] = v159;
  v20[5] = v19;
  sub_268CD0F7C();

  if (os_log_type_enabled(v142, v143))
  {
    v21 = v128;
    v121 = sub_268F9B3A4();
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v122 = sub_268CD5448(0);
    v123 = sub_268CD5448(1);
    v124 = &v192;
    v192 = v121;
    v125 = &v191;
    v191 = v122;
    v126 = &v190;
    v190 = v123;
    sub_268CD549C(2, &v192);
    sub_268CD549C(1, v124);
    v188 = v157;
    v189 = v136;
    sub_268CD54B0(&v188, v124, v125, v126);
    v127 = v21;
    if (v21)
    {

      __break(1u);
    }

    else
    {
      v188 = v158;
      v189 = v137;
      sub_268CD54B0(&v188, &v192, &v191, &v190);
      v118 = 0;
      v188 = v159;
      v189 = v139;
      sub_268CD54B0(&v188, &v192, &v191, &v190);
      v117 = 0;
      _os_log_impl(&dword_268CBE000, v142, v143, "Uso identifier: %s.", v121, 0xCu);
      sub_268CD54FC(v122);
      sub_268CD54FC(v123);
      sub_268F9B384();

      v119 = v117;
    }
  }

  else
  {
    v22 = v128;

    v119 = v22;
  }

  v115 = v119;
  MEMORY[0x277D82BD8](v142);

  sub_268F9A5C4();
  v116 = v210;

  if (!v116)
  {
    goto LABEL_56;
  }

  v114 = v116;
  v112 = v116;
  v113 = sub_268F9A1C4();

  if (!v113)
  {
    goto LABEL_56;
  }

  v111 = v113;
  v109 = v113;
  v23 = sub_268D8E220();
  v107 = *v23;
  v108 = v23[1];

  v110 = sub_268F9A0A4();

  if (!v110)
  {
LABEL_56:
    v44 = sub_268F99F64();
    (*(*(v44 - 8) + 56))(v175, 1);
    v103 = v115;
LABEL_25:
    v89 = v103;
    v102 = sub_268F9B284();
    v101 = *sub_268D8E144();
    MEMORY[0x277D82BE0](v101);
    sub_268D9BF94(v175, v178);
    v90 = (v129 + 16) & ~v129;
    v93 = 7;
    v94 = swift_allocObject();
    sub_268DA69E0(v178, (v94 + v90));
    v91 = 17;
    v96 = swift_allocObject();
    *(v96 + 16) = 32;
    v97 = swift_allocObject();
    *(v97 + 16) = 8;
    v92 = 32;
    v25 = swift_allocObject();
    v26 = v94;
    v95 = v25;
    *(v25 + 16) = v161;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v95;
    v99 = v27;
    *(v27 + 16) = v162;
    *(v27 + 24) = v28;
    v98 = sub_268F9B734();
    v100 = v29;

    v30 = v96;
    v31 = v100;
    *v100 = v163;
    v31[1] = v30;

    v32 = v97;
    v33 = v100;
    v100[2] = v164;
    v33[3] = v32;

    v34 = v99;
    v35 = v100;
    v100[4] = v165;
    v35[5] = v34;
    sub_268CD0F7C();

    if (os_log_type_enabled(v101, v102))
    {
      v36 = v89;
      v82 = sub_268F9B3A4();
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v83 = sub_268CD5448(0);
      v84 = sub_268CD5448(1);
      v85 = &v198;
      v198 = v82;
      v86 = &v197;
      v197 = v83;
      v87 = &v196;
      v196 = v84;
      sub_268CD549C(2, &v198);
      sub_268CD549C(1, v85);
      v194 = v163;
      v195 = v96;
      sub_268CD54B0(&v194, v85, v86, v87);
      v88 = v36;
      if (v36)
      {

        __break(1u);
      }

      else
      {
        v194 = v164;
        v195 = v97;
        sub_268CD54B0(&v194, &v198, &v197, &v196);
        v80 = 0;
        v194 = v165;
        v195 = v99;
        sub_268CD54B0(&v194, &v198, &v197, &v196);
        _os_log_impl(&dword_268CBE000, v101, v102, "Associated setting: %s.", v82, 0xCu);
        sub_268CD54FC(v83);
        sub_268CD54FC(v84);
        sub_268F9B384();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v101);
    sub_268D9BF94(v175, v173);
    v75 = sub_268F99F64();
    v76 = *(v75 - 8);
    v77 = v75 - 8;
    v78 = *(v76 + 48);
    v79 = v76 + 48;
    if (v78(v173, 1) == 1)
    {
      sub_268D9C0BC(v173);
      v73 = 0;
      v74 = 0;
    }

    else
    {
      v71 = sub_268F99F44();
      v72 = v37;
      (*(v76 + 8))(v173, v75);
      v73 = v71;
      v74 = v72;
    }

    v69 = v74;
    v68 = v73;

    v209 = 51;
    v67 = BinarySettingIdentifier.rawValue.getter();
    v70 = v38;

    v207[0] = v68;
    v207[1] = v69;
    v207[2] = v67;
    v208 = v70;
    if (v69)
    {
      sub_268D28874(v207, &v201);
      if (v208)
      {
        v64 = &v200;
        v200 = v201;
        v39 = v153[4];
        v63 = &v199;
        v199 = v39;
        v65 = MEMORY[0x26D62DB50](v201, *(&v201 + 1), v39, *(&v39 + 1));
        sub_268CD9D30(v63);
        sub_268CD9D30(v64);
        sub_268CD9D30(v207);
        v66 = v65;
        goto LABEL_38;
      }

      sub_268CD9D30(&v201);
    }

    else if (!v208)
    {
      sub_268CD9D30(v207);
      v66 = 1;
LABEL_38:
      v62 = v66;

      if ((v62 & 1) == 0)
      {
        v49 = 0;
LABEL_54:
        v47 = v49;
        sub_268D9C0BC(v175);
        sub_268D9C0BC(v180);
        return v47 & 1;
      }

      sub_268D9BF94(v180, v171);
      if ((v78)(v171, 1, v75) == 1)
      {
        sub_268D9C0BC(v171);
        v60 = 0;
        v61 = 0;
      }

      else
      {
        v58 = sub_268F99F44();
        v59 = v40;
        (*(v76 + 8))(v171, v75);
        v60 = v58;
        v61 = v59;
      }

      v55 = v61;
      v54 = v60;

      v41 = sub_268F2842C();
      v56 = *v41;
      v57 = v41[1];

      v205[0] = v54;
      v205[1] = v55;
      v205[2] = v56;
      v206 = v57;
      if (v55)
      {
        sub_268D28874(v205, v204);
        if (v206)
        {
          v42 = *v153;
          v51 = &v203;
          v203 = v42;
          v43 = v153[2];
          v50 = &v202;
          v202 = v43;
          v52 = MEMORY[0x26D62DB50](v203, *(&v203 + 1), v43, *(&v43 + 1));
          sub_268CD9D30(v50);
          sub_268CD9D30(v51);
          sub_268CD9D30(v205);
          v53 = v52;
LABEL_51:
          v48 = v53;

          v49 = v48;
          goto LABEL_54;
        }

        sub_268CD9D30(v204);
      }

      else if (!v206)
      {
        sub_268CD9D30(v205);
        v53 = 1;
        goto LABEL_51;
      }

      sub_268D28550(v205);
      v53 = 0;
      goto LABEL_51;
    }

    sub_268D28550(v207);
    v66 = 0;
    goto LABEL_38;
  }

  v106 = v110;
  v24 = v115;
  v193 = v110;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  sub_268DA5FC0();
  result = sub_268F9AF94();
  v105 = v24;
  if (!v24)
  {
    sub_268CD7930(&v193);
    v103 = v105;
    goto LABEL_25;
  }

LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_268D9D8A4(uint64_t a1)
{
  v9 = a1;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v9);
  v11 = v4 - v10;
  sub_268D9BF94(v1, v4 - v10);
  v12 = sub_268F99F64();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  if ((*(v13 + 48))(v11, 1) == 1)
  {
    sub_268D9C0BC(v11);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v5 = sub_268F99F44();
    v6 = v2;
    (*(v13 + 8))(v11, v12);
    v7 = v5;
    v8 = v6;
  }

  v4[1] = v15;
  v15[0] = v7;
  v15[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
  return sub_268F9AE64();
}

uint64_t sub_268D9DA3C(uint64_t a1)
{
  v3 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290);
  v4 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v3);
  v6 = &v3 - v4;
  sub_268D9BF94(v1, &v3 - v4);
  return sub_268F9AE64();
}

uint64_t sub_268D9DAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v132 = &v192;
  v133 = a6;
  v148 = a1;
  v149 = a2;
  v143 = a3;
  v144 = a4;
  v145 = a5;
  v151 = sub_268DA6BE8;
  v155 = sub_268CD7608;
  v157 = sub_268CD7600;
  v159 = sub_268CD7600;
  v162 = sub_268CD7614;
  v135 = "SupportedFlowDomainProvider getDomainForSettingTask | rejecting non-setting namespace";
  v136 = sub_268DA6BF4;
  v137 = sub_268CD7608;
  v138 = sub_268CD7600;
  v139 = sub_268CD7600;
  v140 = sub_268CD7614;
  v141 = "SupportedFlowDomainProvider getDomainForSettingTask | name can't be resolved";
  v205 = 0;
  v206 = 0;
  v203 = 0;
  v204 = 0;
  v202 = 0;
  v201 = 0;
  v196 = 0;
  v197 = 0;
  v190 = 0;
  v191 = 0;
  v189 = 0;
  v185 = 0;
  v183 = 0;
  v182 = 0;
  v142 = 0;
  v175 = 0;
  v176 = 0;
  v146 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v147 = v48 - v146;
  v205 = MEMORY[0x28223BE20](v148);
  v206 = v7;
  v203 = v8;
  v204 = v9;
  v202 = v10;
  v201 = v6;
  v167 = sub_268F9B284();
  v166 = *sub_268D8E144();
  MEMORY[0x277D82BE0](v166);

  v152 = 32;
  v153 = 7;
  v11 = swift_allocObject();
  v12 = v149;
  v154 = v11;
  *(v11 + 16) = v148;
  *(v11 + 24) = v12;
  v150 = 17;
  v158 = swift_allocObject();
  *(v158 + 16) = 32;
  v160 = swift_allocObject();
  *(v160 + 16) = 8;
  v13 = swift_allocObject();
  v14 = v154;
  v156 = v13;
  *(v13 + 16) = v151;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v156;
  v163 = v15;
  *(v15 + 16) = v155;
  *(v15 + 24) = v16;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  v161 = sub_268F9B734();
  v164 = v17;

  v18 = v158;
  v19 = v164;
  *v164 = v157;
  v19[1] = v18;

  v20 = v160;
  v21 = v164;
  v164[2] = v159;
  v21[3] = v20;

  v22 = v163;
  v23 = v164;
  v164[4] = v162;
  v23[5] = v22;
  sub_268CD0F7C();

  if (os_log_type_enabled(v166, v167))
  {
    v24 = v142;
    v125 = sub_268F9B3A4();
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v126 = sub_268CD5448(0);
    v127 = sub_268CD5448(1);
    v128 = &v172;
    v172 = v125;
    v129 = &v171;
    v171 = v126;
    v130 = &v170;
    v170 = v127;
    sub_268CD549C(2, &v172);
    sub_268CD549C(1, v128);
    v168 = v157;
    v169 = v158;
    sub_268CD54B0(&v168, v128, v129, v130);
    v131 = v24;
    if (v24)
    {

      __break(1u);
    }

    else
    {
      v168 = v159;
      v169 = v160;
      sub_268CD54B0(&v168, &v172, &v171, &v170);
      v122 = 0;
      v168 = v162;
      v169 = v163;
      sub_268CD54B0(&v168, &v172, &v171, &v170);
      v121 = 0;
      _os_log_impl(&dword_268CBE000, v166, v167, "SupportedFlowDomainProvider getDomainForSettingTask | Attribute name is %s", v125, 0xCu);
      sub_268CD54FC(v126);
      sub_268CD54FC(v127);
      sub_268F9B384();

      v123 = v121;
    }
  }

  else
  {
    v25 = v142;

    v123 = v25;
  }

  v120 = v123;
  MEMORY[0x277D82BD8](v166);
  sub_268D35D60((v134 + 72), v198);
  if (v199)
  {
    v115 = v199;
    v116 = v200;
    __swift_project_boxed_opaque_existential_1(v198, v199);
    (*(v116 + 16))(v145, v115);
    v117 = sub_268F9ACE4();
    v118 = *(v117 - 8);
    v119 = v117 - 8;
    if ((*(v118 + 48))(v147, 1) != 1)
    {
      v111 = sub_268F9ACC4();
      v112 = v26;
      (*(v118 + 8))(v147, v117);
      __swift_destroy_boxed_opaque_existential_0(v198);
      v113 = v111;
      v114 = v112;
      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_0(v198);
    sub_268D59D2C(v147);
  }

  else
  {
    sub_268D28414(v198);
  }

  v113 = 0;
  v114 = 0;
LABEL_11:
  v110 = v114;
  v109 = v113;
  v196 = v113;
  v197 = v114;

  v192 = v148;
  v193 = v149;

  if (v193)
  {
    *(v132 + 1) = *v132;
  }

  else
  {

    v194 = v109;
    v195 = v110;
    if (v193)
    {
      sub_268CD9D30(&v192);
    }
  }

  v107 = v194;
  v108 = v195;
  if (v195)
  {
    v105 = v107;
    v106 = v108;
    v103 = v108;
    v104 = v107;
    v190 = v107;
    v191 = v108;

    if (v144)
    {
      v101 = v143;
      v102 = v144;
      v96 = v144;
      v95 = v143;
      v175 = v143;
      v176 = v144;
      v94 = *sub_268F2848C();

      v99 = &v174;
      v174 = v94;
      v98 = v173;
      v173[0] = v95;
      v173[1] = v96;
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
      sub_268DA6BFC();
      v100 = sub_268F9AFC4();
      sub_268CD7930(v99);
      if ((v100 & 1) == 0)
      {
        v91 = sub_268F9B284();
        v93 = *sub_268D8E144();
        MEMORY[0x277D82BE0](v93);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v92 = sub_268F9B734();
        sub_268F9AC14();

        MEMORY[0x277D82BD8](v93);
        *v133 = 0;
      }
    }

    v87 = *(v134 + 16);

    v88 = sub_268D2B440();

    v189 = v88 & 1;
    v188 = 3;
    v28 = NumericSettingIdentifier.rawValue.getter();
    v89 = v29;
    v90 = MEMORY[0x26D62DB50](v104, v103, v28);

    if (v90)
    {
      v86 = 1;
    }

    else
    {
      v187 = 4;
      v30 = NumericSettingIdentifier.rawValue.getter();
      v84 = v31;
      v85 = MEMORY[0x26D62DB50](v104, v103, v30);

      v86 = v85;
    }

    v83 = v86;

    if (v83)
    {
      v82 = 1;
    }

    else
    {
      v186 = 6;
      v32 = NumericSettingIdentifier.rawValue.getter();
      v80 = v33;
      v81 = MEMORY[0x26D62DB50](v104, v103, v32);

      v82 = v81;
    }

    v77 = v82;

    v185 = v77 & 1;
    v184 = 9;
    v34 = NumericSettingIdentifier.rawValue.getter();
    v78 = v35;
    v79 = MEMORY[0x26D62DB50](v104, v103, v34);

    if (v79)
    {
      v76 = v88 ^ 1;
    }

    else
    {
      v76 = 0;
    }

    v75 = v76;
    v183 = v76 & 1;
    if (v77)
    {
      v74 = 1;
    }

    else
    {
      v74 = v75;
    }

    if (v74)
    {
      v73 = 1;
    }

    else
    {
      v73 = 2;
    }

    v60 = v73;
    v182 = v73;
    v72 = sub_268F9B284();
    v71 = *sub_268D8E144();
    MEMORY[0x277D82BE0](v71);
    v61 = 17;
    v63 = 7;
    v64 = swift_allocObject();
    *(v64 + 16) = v60;
    v66 = swift_allocObject();
    *(v66 + 16) = 32;
    v67 = swift_allocObject();
    *(v67 + 16) = 8;
    v62 = 32;
    v36 = swift_allocObject();
    v37 = v64;
    v65 = v36;
    *(v36 + 16) = v136;
    *(v36 + 24) = v37;
    v38 = swift_allocObject();
    v39 = v65;
    v69 = v38;
    *(v38 + 16) = v137;
    *(v38 + 24) = v39;
    v68 = sub_268F9B734();
    v70 = v40;

    v41 = v66;
    v42 = v70;
    *v70 = v138;
    v42[1] = v41;

    v43 = v67;
    v44 = v70;
    v70[2] = v139;
    v44[3] = v43;

    v45 = v69;
    v46 = v70;
    v70[4] = v140;
    v46[5] = v45;
    sub_268CD0F7C();

    if (os_log_type_enabled(v71, v72))
    {
      v47 = v120;
      v53 = sub_268F9B3A4();
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v54 = sub_268CD5448(0);
      v55 = sub_268CD5448(1);
      v56 = &v181;
      v181 = v53;
      v57 = &v180;
      v180 = v54;
      v58 = &v179;
      v179 = v55;
      sub_268CD549C(2, &v181);
      sub_268CD549C(1, v56);
      v177 = v138;
      v178 = v66;
      sub_268CD54B0(&v177, v56, v57, v58);
      v59 = v47;
      if (v47)
      {

        __break(1u);
      }

      else
      {
        v177 = v139;
        v178 = v67;
        sub_268CD54B0(&v177, &v181, &v180, &v179);
        v51 = 0;
        v177 = v140;
        v178 = v69;
        sub_268CD54B0(&v177, &v181, &v180, &v179);
        _os_log_impl(&dword_268CBE000, v71, v72, "SupportedFlowDomainProvider getDomainForSettingTask | choosing domain %s", v53, 0xCu);
        sub_268CD54FC(v54);
        sub_268CD54FC(v55);
        sub_268F9B384();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v71);
    *v133 = v60;
  }

  else
  {
    v48[1] = sub_268F9B284();
    v50 = *sub_268D8E144();
    MEMORY[0x277D82BE0](v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v49 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v50);
    *v133 = 0;
  }
}

uint64_t sub_268D9EB24()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
  return sub_268F9AE64();
}

uint64_t sub_268D9EBC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v88 = a6;
  *&v100 = a1;
  *(&v100 + 1) = a2;
  v95 = a3;
  v96 = a4;
  v97 = a5;
  v102 = sub_268DA6BE8;
  v106 = sub_268CD7608;
  v108 = sub_268CD7600;
  v110 = sub_268CD7600;
  v113 = sub_268CD7614;
  v90 = "SupportedFlowDomainProvider isSRRVoiceTask | rejecting non-setting namespace";
  v91 = "SupportedFlowDomainProvider getDomainForSettingTask | found no voice SRR entity";
  v92 = "SupportedFlowDomainProvider getDomainForSettingTask | found voice SRR entity, choosing domain .setting";
  v93 = "SupportedFlowDomainProvider isSRRVoiceTask | name can't be resolved";
  v143 = 0;
  v144 = 0;
  v141 = 0;
  v142 = 0;
  v140 = 0;
  v139 = 0;
  v135 = 0uLL;
  v132 = 0uLL;
  v126 = 0;
  v127 = 0;
  v94 = 0;
  v98 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v99 = v36 - v98;
  v143 = MEMORY[0x28223BE20](v100);
  v144 = v7;
  v141 = v8;
  v142 = v9;
  v140 = v10;
  v139 = v6;
  v118 = sub_268F9B284();
  v117 = *sub_268D8E144();
  MEMORY[0x277D82BE0](v117);

  v103 = 32;
  v104 = 7;
  v11 = swift_allocObject();
  v12 = *(&v100 + 1);
  v105 = v11;
  *(v11 + 16) = v100;
  *(v11 + 24) = v12;
  v101 = 17;
  v109 = swift_allocObject();
  *(v109 + 16) = 32;
  v111 = swift_allocObject();
  *(v111 + 16) = 8;
  v13 = swift_allocObject();
  v14 = v105;
  v107 = v13;
  *(v13 + 16) = v102;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v107;
  v114 = v15;
  *(v15 + 16) = v106;
  *(v15 + 24) = v16;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  v112 = sub_268F9B734();
  v115 = v17;

  v18 = v109;
  v19 = v115;
  *v115 = v108;
  v19[1] = v18;

  v20 = v111;
  v21 = v115;
  v115[2] = v110;
  v21[3] = v20;

  v22 = v114;
  v23 = v115;
  v115[4] = v113;
  v23[5] = v22;
  sub_268CD0F7C();

  if (os_log_type_enabled(v117, v118))
  {
    v24 = v94;
    v81 = sub_268F9B3A4();
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v82 = sub_268CD5448(0);
    v83 = sub_268CD5448(1);
    v84 = &v123;
    v123 = v81;
    v85 = &v122;
    v122 = v82;
    v86 = &v121;
    v121 = v83;
    sub_268CD549C(2, &v123);
    sub_268CD549C(1, v84);
    v119 = v108;
    v120 = v109;
    sub_268CD54B0(&v119, v84, v85, v86);
    v87 = v24;
    if (v24)
    {

      __break(1u);
    }

    else
    {
      v119 = v110;
      v120 = v111;
      sub_268CD54B0(&v119, &v123, &v122, &v121);
      v79 = 0;
      v119 = v113;
      v120 = v114;
      sub_268CD54B0(&v119, &v123, &v122, &v121);
      _os_log_impl(&dword_268CBE000, v117, v118, "Attribute name is %s", v81, 0xCu);
      sub_268CD54FC(v82);
      sub_268CD54FC(v83);
      sub_268F9B384();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v117);
  sub_268D35D60((v89 + 72), v136);
  if (v137)
  {
    v74 = v137;
    v75 = v138;
    __swift_project_boxed_opaque_existential_1(v136, v137);
    (*(v75 + 16))(v97, v74);
    v76 = sub_268F9ACE4();
    v77 = *(v76 - 8);
    v78 = v76 - 8;
    if ((*(v77 + 48))(v99, 1) != 1)
    {
      *&v72 = sub_268F9ACC4();
      *(&v72 + 1) = v25;
      (*(v77 + 8))(v99, v76);
      __swift_destroy_boxed_opaque_existential_0(v136);
      v73 = v72;
      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_0(v136);
    sub_268D59D2C(v99);
  }

  else
  {
    sub_268D28414(v136);
  }

  v73 = 0uLL;
LABEL_11:
  v71 = v73;
  v135 = v73;

  v133 = v100;

  if (*(&v133 + 1))
  {
    v134 = v133;
  }

  else
  {

    v134 = v71;
    if (*(&v133 + 1))
    {
      sub_268CD9D30(&v133);
    }
  }

  v70 = v134;
  if (*(&v134 + 1))
  {
    v69 = v70;
    v67 = *(&v70 + 1);
    v68 = v70;
    v132 = v70;

    if (v96)
    {
      v65 = v95;
      v66 = v96;
      v60 = v96;
      v59 = v95;
      v126 = v95;
      v127 = v96;
      v58 = *sub_268F2848C();

      v63 = &v125;
      v125 = v58;
      v62 = v124;
      v124[0] = v59;
      v124[1] = v60;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
      sub_268DA6BFC();
      v64 = sub_268F9AFC4();
      sub_268CD7930(v63);
      if ((v64 & 1) == 0)
      {
        v55 = sub_268F9B284();
        v57 = *sub_268D8E144();
        MEMORY[0x277D82BE0](v57);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v56 = sub_268F9B734();
        sub_268F9AC14();

        MEMORY[0x277D82BD8](v57);
        *v88 = 0;
      }
    }

    v50 = MEMORY[0x277D837D0];
    v49 = sub_268F9B734();
    v48 = v27;
    v131 = 7;
    v28 = NumericSettingIdentifier.rawValue.getter();
    v29 = v48;
    *v48 = v28;
    v29[1] = v30;
    v130 = 8;
    v31 = NumericSettingIdentifier.rawValue.getter();
    v32 = v48;
    v33 = v31;
    v34 = v49;
    v48[2] = v33;
    v32[3] = v35;
    sub_268CD0F7C();
    v53 = &v129;
    v129 = v34;
    v52 = v128;
    v128[0] = v68;
    v128[1] = v67;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
    sub_268DA6BFC();
    v54 = sub_268F9AFC4();
    sub_268CD7930(v53);
    if (v54 & 1) == 0 || (v46 = *(v89 + 16), , v47 = sub_268D2B440(), , (v47))
    {
      v39 = sub_268F9B284();
      v41 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v41);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v40 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v41);
      *v88 = 0;
    }

    else
    {
      v42 = sub_268F9B284();
      v44 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v43 = sub_268F9B734();
      v45 = 2;
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v44);
      *v88 = v45;
    }
  }

  else
  {
    v36[3] = sub_268F9B284();
    v38 = *sub_268D8E144();
    MEMORY[0x277D82BE0](v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v37 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v38);
    *v88 = 0;
  }
}

uint64_t sub_268D9F7F0(uint64_t a1)
{
  v17 = a1;
  v16 = v1;
  v8 = sub_268F99F54();
  v9 = v2;

  v7 = sub_268F9AEF4();
  v10 = v3;

  v14[0] = v8;
  v14[1] = v9;
  *&v15 = v7;
  *(&v15 + 1) = v10;
  if (!v9)
  {
    if (!*(&v15 + 1))
    {
      sub_268CD9D30(v14);
      v6 = 1;
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  sub_268D28874(v14, &v13);
  if (!*(&v15 + 1))
  {
    sub_268CD9D30(&v13);
LABEL_8:
    sub_268D28550(v14);
    v6 = 0;
    goto LABEL_7;
  }

  v12 = v13;
  v11 = v15;
  v5 = MEMORY[0x26D62DB50](v13, *(&v13 + 1), v15, *(&v15 + 1));
  sub_268CD9D30(&v11);
  sub_268CD9D30(&v12);
  sub_268CD9D30(v14);
  v6 = v5;
LABEL_7:

  return v6 & 1;
}

uint64_t sub_268D9F984(uint64_t a1, uint64_t a2, char a3)
{
  v11[5] = 0;
  v14 = a1;
  v13 = a2;
  v12 = a3 & 1;
  v11[3] = &unk_28798DFB8;
  v8 = sub_268DA6C84();
  v11[4] = v8;
  LOBYTE(v11[0]) = 0;
  v9 = sub_268F99C84();
  __swift_destroy_boxed_opaque_existential_0(v11);
  if (v9 & 1) != 0 || (v10[3] = &unk_28798DFB8, v10[4] = v8, LOBYTE(v10[0]) = 1, v7 = sub_268F99C84(), __swift_destroy_boxed_opaque_existential_0(v10), (v7 & 1) == 0) || (AFDeviceSupportsSAE())
  {
    v6 = sub_268DA16CC() ^ 1;
  }

  else
  {
    sub_268F9B284();
    v3 = sub_268D8E144();
    v5 = *v3;
    MEMORY[0x277D82BE0](*v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v5);
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

void *sub_268D9FB5C(const void *a1, void *a2)
{
  v6 = sub_268F9A434();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C0, &unk_268F9F540);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_268D9FC84(uint64_t a1)
{
  v4 = sub_268F9A434();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!(v6)(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7B8, &qword_268F9F538) + 48);
  if (!v6())
  {
    (*(v5 + 8))(v2, v4);
  }

  return a1;
}

uint64_t sub_268D9FDB0(uint64_t a1)
{
  v3 = sub_268F9A434();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_268D9FE58(const void *a1, void *a2)
{
  v6 = sub_268F9ACE4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_268D9FF80()
{
  v2 = qword_2802DC7D8;
  if (!qword_2802DC7D8)
  {
    sub_268F9A434();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC7D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DA0000(uint64_t a1)
{
  v191 = a1;
  v192 = 0;
  v221 = 0;
  v220 = 0;
  v193 = 0;
  v214 = 0;
  v213 = 0;
  v212 = 0;
  v208 = 0;
  v207 = 0;
  v194 = sub_268F99F64();
  v195 = *(v194 - 8);
  v196 = v195;
  v198 = *(v195 + 64);
  v197 = v198;
  MEMORY[0x28223BE20](v194 - 8);
  v199 = &v78 - ((v198 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = a1;
  v220 = v2;
  v200 = sub_268F99F54();
  v201 = v3;
  if (!v3)
  {
    v114 = sub_268F9B284();
    v96 = v114;
    v115 = *sub_268D8E144();
    v97 = v115;
    v61 = v115;
    (*(v196 + 16))(v199, v191, v194);
    v98 = (*(v196 + 80) + 16) & ~*(v196 + 80);
    v105 = swift_allocObject();
    (*(v196 + 32))(v105 + v98, v199, v194);
    v99 = 17;
    v104 = 7;
    v108 = swift_allocObject();
    v100 = v108;
    v101 = 32;
    *(v108 + 16) = 32;
    v62 = swift_allocObject();
    v63 = v101;
    v109 = v62;
    v102 = v62;
    *(v62 + 16) = 8;
    v103 = v63;
    v64 = swift_allocObject();
    v65 = v105;
    v106 = v64;
    *(v64 + 16) = sub_268DA6D00;
    *(v64 + 24) = v65;
    v66 = swift_allocObject();
    v67 = v106;
    v112 = v66;
    v107 = v66;
    *(v66 + 16) = sub_268CD7608;
    *(v66 + 24) = v67;
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
    v110 = sub_268F9B734();
    v111 = v68;

    v69 = v108;
    v70 = v111;
    *v111 = sub_268CD7600;
    v70[1] = v69;

    v71 = v109;
    v72 = v111;
    v111[2] = sub_268CD7600;
    v72[3] = v71;

    v73 = v111;
    v74 = v112;
    v111[4] = sub_268CD7614;
    v73[5] = v74;
    sub_268CD0F7C();

    if (os_log_type_enabled(v115, v114))
    {
      v75 = v193;
      v89 = sub_268F9B3A4();
      v86 = v89;
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v90 = sub_268CD5448(0);
      v88 = v90;
      v92 = 1;
      v91 = sub_268CD5448(1);
      v219 = v89;
      v218 = v90;
      v217 = v91;
      v93 = &v219;
      sub_268CD549C(2, &v219);
      sub_268CD549C(v92, v93);
      v215 = sub_268CD7600;
      v216 = v100;
      sub_268CD54B0(&v215, v93, &v218, &v217);
      v94 = v75;
      v95 = v75;
      if (v75)
      {
        v84 = 0;

        __break(1u);
      }

      else
      {
        v215 = sub_268CD7600;
        v216 = v102;
        sub_268CD54B0(&v215, &v219, &v218, &v217);
        v82 = 0;
        v83 = 0;
        v215 = sub_268CD7614;
        v216 = v107;
        sub_268CD54B0(&v215, &v219, &v218, &v217);
        v80 = 0;
        v81 = 0;
        _os_log_impl(&dword_268CBE000, v97, v96, "SupportedFlowDomainProvider isIntelligenceFlowParse | found no namespace on identifier %s", v86, 0xCu);
        sub_268CD54FC(v88);
        sub_268CD54FC(v91);
        sub_268F9B384();

        v85 = v80;
      }
    }

    else
    {
      v76 = v193;

      v85 = v76;
    }

    v79 = v85;

    v117 = 1;
    v118 = v79;
    return v117 & 1;
  }

  v189 = v200;
  v190 = v201;
  v4 = v193;
  v183 = v201;
  v185 = v200;
  v213 = v200;
  v214 = v201;
  v181 = MEMORY[0x277D837D0];
  v180 = sub_268F9B734();
  v179 = v5;
  v178 = 11;
  v177 = 1;
  v6 = sub_268F9AEF4();
  v7 = v179;
  *v179 = v6;
  v7[1] = v8;
  v176 = 12;
  v9 = sub_268F9AEF4();
  v10 = v179;
  v179[2] = v9;
  v10[3] = v11;
  v12 = sub_268F9AEF4();
  v13 = v179;
  v179[4] = v12;
  v13[5] = v14;
  v15 = sub_268F9AEF4();
  v16 = v179;
  v179[6] = v15;
  v16[7] = v17;
  v18 = sub_268F9AEF4();
  v19 = v179;
  v179[8] = v18;
  v19[9] = v20;
  v21 = sub_268F9AEF4();
  v22 = v179;
  v179[10] = v21;
  v22[11] = v23;
  v24 = sub_268F9AEF4();
  v25 = v179;
  v26 = v24;
  v27 = v180;
  v179[12] = v26;
  v25[13] = v28;
  sub_268CD0F7C();
  v182 = v27;
  v212 = v27;
  v209 = v27;

  v184 = &v78;
  MEMORY[0x28223BE20](&v78);
  v186 = &v78 - 4;
  *(&v78 - 2) = v185;
  *(&v78 - 1) = v29;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
  sub_268DA6BFC();
  sub_268F9AF94();
  v188 = v4;
  if (!v4)
  {

    v174 = v210;
    v175 = v211;
    if (v211)
    {
      v172 = v174;
      v173 = v175;
      v144 = v175;
      v143 = v174;
      v207 = v174;
      v208 = v175;
      v170 = sub_268F9B284();
      v141 = v170;
      v171 = *sub_268D8E144();
      v142 = v171;
      v30 = v171;

      v151 = 32;
      v156 = 32;
      v157 = 7;
      v31 = swift_allocObject();
      v32 = v144;
      v33 = v191;
      v34 = v196;
      v35 = v194;
      v36 = v31;
      v37 = v199;
      v148 = v36;
      *(v36 + 16) = v143;
      *(v36 + 24) = v32;
      (*(v34 + 16))(v37, v33, v35);
      v145 = (*(v196 + 80) + 16) & ~*(v196 + 80);
      v158 = swift_allocObject();
      (*(v196 + 32))(v158 + v145, v199, v194);
      v152 = 17;
      v161 = swift_allocObject();
      v146 = v161;
      *(v161 + 16) = v151;
      v162 = swift_allocObject();
      v147 = v162;
      v154 = 8;
      *(v162 + 16) = 8;
      v38 = swift_allocObject();
      v39 = v148;
      v149 = v38;
      *(v38 + 16) = sub_268DA6D94;
      *(v38 + 24) = v39;
      v40 = swift_allocObject();
      v41 = v149;
      v163 = v40;
      v150 = v40;
      *(v40 + 16) = sub_268CD7608;
      *(v40 + 24) = v41;
      v164 = swift_allocObject();
      v153 = v164;
      *(v164 + 16) = v151;
      v165 = swift_allocObject();
      v155 = v165;
      *(v165 + 16) = v154;
      v42 = swift_allocObject();
      v43 = v158;
      v159 = v42;
      *(v42 + 16) = sub_268DA6D00;
      *(v42 + 24) = v43;
      v44 = swift_allocObject();
      v45 = v159;
      v168 = v44;
      v160 = v44;
      *(v44 + 16) = sub_268CD7608;
      *(v44 + 24) = v45;
      v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
      v166 = sub_268F9B734();
      v167 = v46;

      v47 = v161;
      v48 = v167;
      *v167 = sub_268CD7600;
      v48[1] = v47;

      v49 = v162;
      v50 = v167;
      v167[2] = sub_268CD7600;
      v50[3] = v49;

      v51 = v163;
      v52 = v167;
      v167[4] = sub_268CD7614;
      v52[5] = v51;

      v53 = v164;
      v54 = v167;
      v167[6] = sub_268CD7600;
      v54[7] = v53;

      v55 = v165;
      v56 = v167;
      v167[8] = sub_268CD7600;
      v56[9] = v55;

      v57 = v167;
      v58 = v168;
      v167[10] = sub_268CD7614;
      v57[11] = v58;
      sub_268CD0F7C();

      if (os_log_type_enabled(v171, v170))
      {
        v59 = v188;
        v134 = sub_268F9B3A4();
        v131 = v134;
        v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v135 = sub_268CD5448(0);
        v133 = v135;
        v137 = 2;
        v136 = sub_268CD5448(2);
        v206 = v134;
        v205 = v135;
        v204 = v136;
        v138 = &v206;
        sub_268CD549C(v137, &v206);
        sub_268CD549C(v137, v138);
        v202 = sub_268CD7600;
        v203 = v146;
        sub_268CD54B0(&v202, v138, &v205, &v204);
        v139 = v59;
        v140 = v59;
        if (v59)
        {
          v129 = 0;

          __break(1u);
        }

        else
        {
          v202 = sub_268CD7600;
          v203 = v147;
          sub_268CD54B0(&v202, &v206, &v205, &v204);
          v127 = 0;
          v128 = 0;
          v202 = sub_268CD7614;
          v203 = v150;
          sub_268CD54B0(&v202, &v206, &v205, &v204);
          v125 = 0;
          v126 = 0;
          v202 = sub_268CD7600;
          v203 = v153;
          sub_268CD54B0(&v202, &v206, &v205, &v204);
          v123 = 0;
          v124 = 0;
          v202 = sub_268CD7600;
          v203 = v155;
          sub_268CD54B0(&v202, &v206, &v205, &v204);
          v121 = 0;
          v122 = 0;
          v202 = sub_268CD7614;
          v203 = v160;
          sub_268CD54B0(&v202, &v206, &v205, &v204);
          v119 = 0;
          v120 = 0;
          _os_log_impl(&dword_268CBE000, v142, v141, "SupportedFlowDomainProvider isIntelligenceFlowParse | found Siri X namespace %s on identifier %s", v131, 0x16u);
          sub_268CD54FC(v133);
          sub_268CD54FC(v136);
          sub_268F9B384();

          v130 = v119;
        }
      }

      else
      {
        v60 = v188;

        v130 = v60;
      }

      v116 = v130;

      v117 = 1;
      v118 = v116;
    }

    else
    {

      v117 = 0;
      v118 = v188;
    }

    return v117 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_268DA1600(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_268D58980();
  return sub_268F9B3F4() & 1;
}

uint64_t sub_268DA16CC()
{
  sub_268F9B284();
  v0 = sub_268D8E144();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v2);
  return 1;
}

uint64_t sub_268DA17B4(uint64_t a1)
{
  v11 = a1;
  v2 = v1;
  v3 = v11;
  v14 = v2;
  v29 = 0;
  v28 = 0;
  v19 = sub_268F9A0D4();
  v15 = *(v19 - 8);
  v16 = v19 - 8;
  v12 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v17 = &v8 - v12;
  v13 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v8 - v12);
  v18 = &v8 - v13;
  v29 = v3;
  v28 = v14;
  sub_268F99F24();
  (*(v15 + 104))(v17, *MEMORY[0x277D5E6B0], v19);
  v22 = MEMORY[0x26D62CD10](v18, v17);
  v21 = *(v15 + 8);
  v20 = v15 + 8;
  v21(v17, v19);
  v21(v18, v19);
  if (v22)
  {
    v10 = 1;
  }

  else
  {
    v24 = sub_268F99F54();
    v25 = v5;
    if (v5)
    {
      v26 = v24;
      v27 = v25;
    }

    else
    {
      v26 = sub_268F9AEF4();
      v27 = v6;
      if (v25)
      {
        sub_268CD9D30(&v24);
      }
    }

    v23 = sub_268DA1A0C();
    v9 = v23 != 10;
    v10 = v9;
  }

  return v10 & 1;
}

uint64_t sub_268DA1A0C()
{
  sub_268F9B734();
  *v0 = "homeAutomationService";
  *(v0 + 8) = 21;
  *(v0 + 16) = 2;
  *(v0 + 24) = "homeAutomationAccessoryType";
  *(v0 + 32) = 27;
  *(v0 + 40) = 2;
  *(v0 + 48) = "homeAutomationPlaceHint";
  *(v0 + 56) = 23;
  *(v0 + 64) = 2;
  *(v0 + 72) = "homeAutomationNoun";
  *(v0 + 80) = 18;
  *(v0 + 88) = 2;
  *(v0 + 96) = "homeAutomationState";
  *(v0 + 104) = 19;
  *(v0 + 112) = 2;
  *(v0 + 120) = "homeAutomationHue";
  *(v0 + 128) = 17;
  *(v0 + 136) = 2;
  *(v0 + 144) = "homeAutomationTrigger";
  *(v0 + 152) = 21;
  *(v0 + 160) = 2;
  *(v0 + 168) = "homeAutomationSettingTag";
  *(v0 + 176) = 24;
  *(v0 + 184) = 2;
  *(v0 + 192) = "homeAutomationEntityTag";
  *(v0 + 200) = 23;
  *(v0 + 208) = 2;
  *(v0 + 216) = "homeAutomationScene";
  *(v0 + 224) = 19;
  *(v0 + 232) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_22:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_22;
    case 2:
      v3 = 2;
      goto LABEL_22;
    case 3:
      v3 = 3;
      goto LABEL_22;
    case 4:
      v3 = 4;
      goto LABEL_22;
    case 5:
      v3 = 5;
      goto LABEL_22;
    case 6:
      v3 = 6;
      goto LABEL_22;
    case 7:
      v3 = 7;
      goto LABEL_22;
    case 8:
      v3 = 8;
      goto LABEL_22;
    case 9:
      v3 = 9;
      goto LABEL_22;
  }

  return 10;
}

uint64_t sub_268DA1D80(uint64_t a1)
{
  v38 = a1;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v34 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v38);
  v35 = &v9 - v34;
  v36 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v2);
  v37 = &v9 - v36;
  v50 = &v9 - v36;
  v49 = v4;
  v48 = v1;

  if (!v38)
  {
    v10 = 0;
    return v10 & 1;
  }

  v32 = v38;
  v31 = v38;
  v47 = v38;
  sub_268D35D60((v33 + 72), &v44);
  if (v45)
  {
    v30 = &v44;
    v27 = v45;
    v28 = v46;
    v26 = __swift_project_boxed_opaque_existential_1(&v44, v45);

    v29 = sub_268F99F04();

    (*(v28 + 16))(v29, v27);

    __swift_destroy_boxed_opaque_existential_0(v30);
  }

  else
  {
    sub_268D28414(&v44);
    v7 = sub_268F9ACE4();
    (*(*(v7 - 8) + 56))(v37, 1);
  }

  sub_268D9FE58(v37, v35);
  v23 = sub_268F9ACE4();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  if ((*(v24 + 48))(v35, 1) == 1)
  {
    sub_268D59D2C(v35);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v19 = sub_268F9ACA4();
    v20 = v5;
    (*(v24 + 8))(v35, v23);
    v21 = v19;
    v22 = v20;
  }

  v17 = v22;
  v16 = v21;

  v15 = sub_268F9AEF4();
  v18 = v6;

  v42[0] = v16;
  v42[1] = v17;
  *&v43 = v15;
  *(&v43 + 1) = v18;
  if (!v17)
  {
    if (!*(&v43 + 1))
    {
      sub_268CD9D30(v42);
      v14 = 1;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  sub_268D28874(v42, &v41);
  if (!*(&v43 + 1))
  {
    sub_268CD9D30(&v41);
LABEL_13:
    sub_268D28550(v42);
    v14 = 0;
    goto LABEL_12;
  }

  v12 = &v40;
  v40 = v41;
  v11 = &v39;
  v39 = v43;
  v13 = MEMORY[0x26D62DB50](v41, *(&v41 + 1), v43, *(&v43 + 1));
  sub_268CD9D30(v11);
  sub_268CD9D30(v12);
  sub_268CD9D30(v42);
  v14 = v13;
LABEL_12:
  v9 = v14;

  sub_268D59D2C(v37);

  v10 = v9;
  return v10 & 1;
}

uint64_t sub_268DA2274(_BYTE *a1, uint64_t a2)
{
  v542 = a1;
  v553 = a2;
  v555 = sub_268DA6DA0;
  v559 = sub_268CD7608;
  v561 = sub_268CD7600;
  v563 = sub_268CD7600;
  v566 = sub_268CD7614;
  v469 = sub_268D9C164;
  v470 = sub_268DA60A4;
  v471 = sub_268DA6DB8;
  v472 = sub_268CD7608;
  v473 = sub_268CD7600;
  v474 = sub_268CD7600;
  v475 = sub_268CD7614;
  v476 = sub_268D9C164;
  v477 = sub_268DA6DB8;
  v478 = sub_268CD7608;
  v479 = sub_268CD7600;
  v480 = sub_268CD7600;
  v481 = sub_268CD7614;
  v482 = sub_268DA6DC0;
  v483 = sub_268CD7608;
  v484 = sub_268CD7600;
  v485 = sub_268CD7600;
  v486 = sub_268CD7614;
  v487 = sub_268DA6DB0;
  v488 = sub_268CD7608;
  v489 = sub_268CD7600;
  v490 = sub_268CD7600;
  v491 = sub_268CD7614;
  v492 = sub_268DA6DA8;
  v493 = sub_268CD7608;
  v494 = sub_268CD7600;
  v495 = sub_268CD7600;
  v496 = sub_268CD7614;
  v497 = "Settings identifier not detected.";
  v498 = sub_268DA60A4;
  v499 = "Neither Settings nor HA identifiers detected.";
  v500 = sub_268DA6DC0;
  v501 = sub_268CD7608;
  v502 = sub_268CD7600;
  v503 = sub_268CD7600;
  v504 = sub_268CD7614;
  v505 = sub_268DA60A4;
  v506 = sub_268DA6DB8;
  v507 = sub_268CD7608;
  v508 = sub_268CD7600;
  v509 = sub_268CD7600;
  v510 = sub_268CD7614;
  v511 = sub_268DA6DC0;
  v512 = sub_268CD7608;
  v513 = sub_268CD7600;
  v514 = sub_268CD7600;
  v515 = sub_268CD7614;
  v516 = sub_268DA6DB0;
  v517 = sub_268CD7608;
  v518 = sub_268CD7600;
  v519 = sub_268CD7600;
  v520 = sub_268CD7614;
  v521 = sub_268DA6DA8;
  v522 = sub_268CD7608;
  v523 = sub_268CD7600;
  v524 = sub_268CD7600;
  v525 = sub_268CD7614;
  v646 = 0;
  v645 = 0;
  v644 = 0;
  v643 = 0;
  v642 = 0;
  v641 = 0;
  v640 = 0;
  v526 = 0;
  v634 = 0;
  v627 = 0;
  v611 = 0;
  v610 = 0;
  v604 = 0;
  v597 = 0;
  v527 = sub_268F99F64();
  v529 = *(v527 - 8);
  v528 = v527 - 8;
  v530 = v529;
  v531 = *(v529 + 64);
  v532 = (v531 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v527);
  v533 = v163 - v532;
  v646 = v163 - v532;
  v534 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3);
  v535 = v163 - v534;
  v645 = v163 - v534;
  v536 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v5);
  v537 = v163 - v536;
  v644 = v163 - v536;
  v538 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v539 = v163 - v538;
  v540 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v163 - v538);
  v541 = v163 - v540;
  v643 = v163 - v540;
  v543 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v542);
  v544 = v163 - v543;
  v545 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v10);
  v546 = v163 - v545;
  v547 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v12);
  v548 = v163 - v547;
  v549 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x28223BE20](v14);
  v550 = v163 - v549;
  v551 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = MEMORY[0x28223BE20](v16);
  v552 = v163 - v551;
  v642 = v18;
  v641 = v19;
  v640 = v2;
  v571 = sub_268F9B284();
  v570 = *sub_268D8E144();
  MEMORY[0x277D82BE0](v570);

  v557 = 7;
  v558 = swift_allocObject();
  *(v558 + 16) = v553;
  v554 = 17;
  v562 = swift_allocObject();
  *(v562 + 16) = 32;
  v564 = swift_allocObject();
  *(v564 + 16) = 8;
  v556 = 32;
  v20 = swift_allocObject();
  v21 = v558;
  v560 = v20;
  *(v20 + 16) = v555;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v560;
  v567 = v22;
  *(v22 + 16) = v559;
  *(v22 + 24) = v23;
  v569 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  v565 = sub_268F9B734();
  v568 = v24;

  v25 = v562;
  v26 = v568;
  *v568 = v561;
  v26[1] = v25;

  v27 = v564;
  v28 = v568;
  v568[2] = v563;
  v28[3] = v27;

  v29 = v567;
  v30 = v568;
  v568[4] = v566;
  v30[5] = v29;
  sub_268CD0F7C();

  if (os_log_type_enabled(v570, v571))
  {
    v31 = v526;
    v462 = sub_268F9B3A4();
    v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v463 = sub_268CD5448(0);
    v464 = sub_268CD5448(1);
    v465 = &v576;
    v576 = v462;
    v466 = &v575;
    v575 = v463;
    v467 = &v574;
    v574 = v464;
    sub_268CD549C(2, &v576);
    sub_268CD549C(1, v465);
    v572 = v561;
    v573 = v562;
    sub_268CD54B0(&v572, v465, v466, v467);
    v468 = v31;
    if (v31)
    {

      __break(1u);
    }

    else
    {
      v572 = v563;
      v573 = v564;
      sub_268CD54B0(&v572, &v576, &v575, &v574);
      v459 = 0;
      v572 = v566;
      v573 = v567;
      sub_268CD54B0(&v572, &v576, &v575, &v574);
      v458 = 0;
      _os_log_impl(&dword_268CBE000, v570, v571, "Checking for HA parse: %s", v462, 0xCu);
      sub_268CD54FC(v463);
      sub_268CD54FC(v464);
      sub_268F9B384();

      v460 = v458;
    }
  }

  else
  {
    v32 = v526;

    v460 = v32;
  }

  v457 = v460;
  MEMORY[0x277D82BD8](v570);

  if (v553)
  {
    v456 = v553;
    v451 = v553;
    v611 = v553;
    v33 = sub_268D8E220();
    v452 = *v33;
    v453 = v33[1];

    v454 = sub_268F9A0A4();

    if (v454)
    {
      v450 = v454;
      v35 = v457;
      v446 = v454;
      v610 = v454;
      v609[1] = v454;
      v447 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
      v448 = sub_268DA5FC0();
      result = sub_268F9AF94();
      v449 = v35;
      if (v35)
      {
        __break(1u);
      }

      else
      {
        v444 = *(v529 + 48);
        v445 = v529 + 48;
        v443 = v444(v552, 1, v527) == 1;
        v442 = v443;
        sub_268D9C0BC(v552);
        if (!v442)
        {

          if (v542)
          {
            v410 = v542;
            v407 = v542;
            v581[3] = v542;
            v406 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7F0, &qword_268F9F570);
            sub_268DA6E24();
            sub_268F9B234();
            v408 = v581[2];

            v409 = v408;
          }

          else
          {
            v409 = 0;
          }

          v405 = v409;
          if (!v409)
          {
            v302 = sub_268F9B284();
            v301 = *sub_268D8E144();
            MEMORY[0x277D82BE0](v301);

            v293 = 7;
            v294 = swift_allocObject();
            *(v294 + 16) = v542;
            v291 = 17;
            v296 = swift_allocObject();
            *(v296 + 16) = 32;
            v297 = swift_allocObject();
            *(v297 + 16) = 8;
            v292 = 32;
            v101 = swift_allocObject();
            v102 = v294;
            v295 = v101;
            *(v101 + 16) = v492;
            *(v101 + 24) = v102;
            v103 = swift_allocObject();
            v104 = v295;
            v299 = v103;
            *(v103 + 16) = v493;
            *(v103 + 24) = v104;
            v298 = sub_268F9B734();
            v300 = v105;

            v106 = v296;
            v107 = v300;
            *v300 = v494;
            v107[1] = v106;

            v108 = v297;
            v109 = v300;
            v300[2] = v495;
            v109[3] = v108;

            v110 = v299;
            v111 = v300;
            v300[4] = v496;
            v111[5] = v110;
            sub_268CD0F7C();

            if (os_log_type_enabled(v301, v302))
            {
              v112 = v449;
              v284 = sub_268F9B3A4();
              v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
              v285 = sub_268CD5448(0);
              v286 = sub_268CD5448(1);
              v287 = v609;
              v609[0] = v284;
              v288 = &v608;
              v608 = v285;
              v289 = &v607;
              v607 = v286;
              sub_268CD549C(2, v609);
              sub_268CD549C(1, v287);
              v605 = v494;
              v606 = v296;
              sub_268CD54B0(&v605, v287, v288, v289);
              v290 = v112;
              if (v112)
              {

                __break(1u);
              }

              else
              {
                v605 = v495;
                v606 = v297;
                sub_268CD54B0(&v605, v609, &v608, &v607);
                v282 = 0;
                v605 = v496;
                v606 = v299;
                sub_268CD54B0(&v605, v609, &v608, &v607);
                _os_log_impl(&dword_268CBE000, v301, v302, "No associated user entities found: %s", v284, 0xCu);
                sub_268CD54FC(v285);
                sub_268CD54FC(v286);
                sub_268F9B384();
              }
            }

            else
            {
            }

            MEMORY[0x277D82BD8](v301);

            v411 = 0;
            return v411 & 1;
          }

          v404 = v405;
          v402 = v405;
          v604 = v405;
          sub_268F9A064();
          v403 = v603;
          if (v603)
          {
            v401 = v403;
            v398 = v403;
            sub_268F9AEF4();
            v397 = v50;
            v399 = sub_268F9A0A4();

            v400 = v399;
          }

          else
          {
            v400 = 0;
          }

          v396 = v400;
          if (!v400)
          {
            v322 = sub_268F9B284();
            v321 = *sub_268D8E144();
            MEMORY[0x277D82BE0](v321);

            v312 = 17;
            v314 = 7;
            v316 = swift_allocObject();
            *(v316 + 16) = 32;
            v317 = swift_allocObject();
            *(v317 + 16) = 8;
            v313 = 32;
            v89 = swift_allocObject();
            v90 = v402;
            v315 = v89;
            *(v89 + 16) = v487;
            *(v89 + 24) = v90;
            v91 = swift_allocObject();
            v92 = v315;
            v319 = v91;
            *(v91 + 16) = v488;
            *(v91 + 24) = v92;
            v318 = sub_268F9B734();
            v320 = v93;

            v94 = v316;
            v95 = v320;
            *v320 = v489;
            v95[1] = v94;

            v96 = v317;
            v97 = v320;
            v320[2] = v490;
            v97[3] = v96;

            v98 = v319;
            v99 = v320;
            v320[4] = v491;
            v99[5] = v98;
            sub_268CD0F7C();

            if (os_log_type_enabled(v321, v322))
            {
              v100 = v449;
              v305 = sub_268F9B3A4();
              v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
              v306 = sub_268CD5448(0);
              v307 = sub_268CD5448(1);
              v308 = &v602;
              v602 = v305;
              v309 = &v601;
              v601 = v306;
              v310 = &v600;
              v600 = v307;
              sub_268CD549C(2, &v602);
              sub_268CD549C(1, v308);
              v598 = v489;
              v599 = v316;
              sub_268CD54B0(&v598, v308, v309, v310);
              v311 = v100;
              if (v100)
              {

                __break(1u);
              }

              else
              {
                v598 = v490;
                v599 = v317;
                sub_268CD54B0(&v598, &v602, &v601, &v600);
                v303 = 0;
                v598 = v491;
                v599 = v319;
                sub_268CD54B0(&v598, &v602, &v601, &v600);
                _os_log_impl(&dword_268CBE000, v321, v322, "No names identifiers of associated user entity found: %s", v305, 0xCu);
                sub_268CD54FC(v306);
                sub_268CD54FC(v307);
                sub_268F9B384();
              }
            }

            else
            {
            }

            MEMORY[0x277D82BD8](v321);

            v411 = 0;
            return v411 & 1;
          }

          v395 = v396;
          v51 = v449;
          v393 = v396;
          v597 = v396;
          v596[1] = v396;
          result = sub_268F9AF94();
          v394 = v51;
          if (!v51)
          {
            if (v444(v548, 1, v527) == 1)
            {
              sub_268D9C0BC(v548);
              v343 = sub_268F9B284();
              v342 = *sub_268D8E144();
              MEMORY[0x277D82BE0](v342);

              v334 = 7;
              v335 = swift_allocObject();
              *(v335 + 16) = v393;
              v332 = 17;
              v337 = swift_allocObject();
              *(v337 + 16) = 32;
              v338 = swift_allocObject();
              *(v338 + 16) = 8;
              v333 = 32;
              v77 = swift_allocObject();
              v78 = v335;
              v336 = v77;
              *(v77 + 16) = v471;
              *(v77 + 24) = v78;
              v79 = swift_allocObject();
              v80 = v336;
              v340 = v79;
              *(v79 + 16) = v472;
              *(v79 + 24) = v80;
              v339 = sub_268F9B734();
              v341 = v81;

              v82 = v337;
              v83 = v341;
              *v341 = v473;
              v83[1] = v82;

              v84 = v338;
              v85 = v341;
              v341[2] = v474;
              v85[3] = v84;

              v86 = v340;
              v87 = v341;
              v341[4] = v475;
              v87[5] = v86;
              sub_268CD0F7C();

              if (os_log_type_enabled(v342, v343))
              {
                v88 = v394;
                v325 = sub_268F9B3A4();
                v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
                v326 = sub_268CD5448(0);
                v327 = sub_268CD5448(1);
                v328 = v596;
                v596[0] = v325;
                v329 = &v595;
                v595 = v326;
                v330 = &v594;
                v594 = v327;
                sub_268CD549C(2, v596);
                sub_268CD549C(1, v328);
                v592 = v473;
                v593 = v337;
                sub_268CD54B0(&v592, v328, v329, v330);
                v331 = v88;
                if (v88)
                {

                  __break(1u);
                }

                else
                {
                  v592 = v474;
                  v593 = v338;
                  sub_268CD54B0(&v592, v596, &v595, &v594);
                  v323 = 0;
                  v592 = v475;
                  v593 = v340;
                  sub_268CD54B0(&v592, v596, &v595, &v594);
                  _os_log_impl(&dword_268CBE000, v342, v343, "No HA identifier found in entities: %s", v325, 0xCu);
                  sub_268CD54FC(v326);
                  sub_268CD54FC(v327);
                  sub_268F9B384();
                }
              }

              else
              {
              }

              MEMORY[0x277D82BD8](v342);

              v411 = 0;
              return v411 & 1;
            }

            v52 = v394;
            v390 = *(v529 + 32);
            v391 = v529 + 32;
            v390(v537, v548, v527);
            v591[1] = v393;
            result = sub_268F9AF94();
            v392 = v52;
            if (!v52)
            {
              if (v444(v546, 1, v527) == 1)
              {
                sub_268D9C0BC(v546);
                v364 = sub_268F9B284();
                v363 = *sub_268D8E144();
                MEMORY[0x277D82BE0](v363);

                v355 = 7;
                v356 = swift_allocObject();
                *(v356 + 16) = v393;
                v353 = 17;
                v358 = swift_allocObject();
                *(v358 + 16) = 32;
                v359 = swift_allocObject();
                *(v359 + 16) = 8;
                v354 = 32;
                v65 = swift_allocObject();
                v66 = v356;
                v357 = v65;
                *(v65 + 16) = v477;
                *(v65 + 24) = v66;
                v67 = swift_allocObject();
                v68 = v357;
                v361 = v67;
                *(v67 + 16) = v478;
                *(v67 + 24) = v68;
                v360 = sub_268F9B734();
                v362 = v69;

                v70 = v358;
                v71 = v362;
                *v362 = v479;
                v71[1] = v70;

                v72 = v359;
                v73 = v362;
                v362[2] = v480;
                v73[3] = v72;

                v74 = v361;
                v75 = v362;
                v362[4] = v481;
                v75[5] = v74;
                sub_268CD0F7C();

                if (os_log_type_enabled(v363, v364))
                {
                  v76 = v392;
                  v346 = sub_268F9B3A4();
                  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
                  v347 = sub_268CD5448(0);
                  v348 = sub_268CD5448(1);
                  v349 = v591;
                  v591[0] = v346;
                  v350 = &v590;
                  v590 = v347;
                  v351 = &v589;
                  v589 = v348;
                  sub_268CD549C(2, v591);
                  sub_268CD549C(1, v349);
                  v587 = v479;
                  v588 = v358;
                  sub_268CD54B0(&v587, v349, v350, v351);
                  v352 = v76;
                  if (v76)
                  {

                    __break(1u);
                  }

                  else
                  {
                    v587 = v480;
                    v588 = v359;
                    sub_268CD54B0(&v587, v591, &v590, &v589);
                    v344 = 0;
                    v587 = v481;
                    v588 = v361;
                    sub_268CD54B0(&v587, v591, &v590, &v589);
                    _os_log_impl(&dword_268CBE000, v363, v364, "Setting identifier found in entities: %s", v346, 0xCu);
                    sub_268CD54FC(v347);
                    sub_268CD54FC(v348);
                    sub_268F9B384();
                  }
                }

                else
                {
                }

                MEMORY[0x277D82BD8](v363);
                (*(v529 + 8))(v537, v527);

                v411 = 1;
              }

              else
              {
                v390(v535, v546, v527);
                v389 = sub_268F9B284();
                v388 = *sub_268D8E144();
                MEMORY[0x277D82BE0](v388);
                v376 = v530;
                (*(v529 + 16))(v539, v537, v527);
                v377 = (*(v376 + 80) + 16) & ~*(v376 + 80);
                v380 = 7;
                v381 = swift_allocObject();
                v390((v381 + v377), v539, v527);
                v378 = 17;
                v383 = swift_allocObject();
                *(v383 + 16) = 32;
                v384 = swift_allocObject();
                *(v384 + 16) = 8;
                v379 = 32;
                v53 = swift_allocObject();
                v54 = v381;
                v382 = v53;
                *(v53 + 16) = v482;
                *(v53 + 24) = v54;
                v55 = swift_allocObject();
                v56 = v382;
                v386 = v55;
                *(v55 + 16) = v483;
                *(v55 + 24) = v56;
                v385 = sub_268F9B734();
                v387 = v57;

                v58 = v383;
                v59 = v387;
                *v387 = v484;
                v59[1] = v58;

                v60 = v384;
                v61 = v387;
                v387[2] = v485;
                v61[3] = v60;

                v62 = v386;
                v63 = v387;
                v387[4] = v486;
                v63[5] = v62;
                sub_268CD0F7C();

                if (os_log_type_enabled(v388, v389))
                {
                  v64 = v392;
                  v369 = sub_268F9B3A4();
                  v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
                  v370 = sub_268CD5448(0);
                  v371 = sub_268CD5448(1);
                  v372 = &v586;
                  v586 = v369;
                  v373 = &v585;
                  v585 = v370;
                  v374 = &v584;
                  v584 = v371;
                  sub_268CD549C(2, &v586);
                  sub_268CD549C(1, v372);
                  v582 = v484;
                  v583 = v383;
                  sub_268CD54B0(&v582, v372, v373, v374);
                  v375 = v64;
                  if (v64)
                  {

                    __break(1u);
                  }

                  else
                  {
                    v582 = v485;
                    v583 = v384;
                    sub_268CD54B0(&v582, &v586, &v585, &v584);
                    v367 = 0;
                    v582 = v486;
                    v583 = v386;
                    sub_268CD54B0(&v582, &v586, &v585, &v584);
                    _os_log_impl(&dword_268CBE000, v388, v389, "Found HA identifier: %s", v369, 0xCu);
                    sub_268CD54FC(v370);
                    sub_268CD54FC(v371);
                    sub_268F9B384();
                  }
                }

                else
                {
                }

                MEMORY[0x277D82BD8](v388);
                v366 = *(v529 + 8);
                v365 = v529 + 8;
                v366(v535, v527);
                v366(v537, v527);

                v411 = 0;
              }

              return v411 & 1;
            }

            goto LABEL_113;
          }

LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
          goto LABEL_114;
        }

        v37 = v449;
        v438 = sub_268F9B284();
        v440 = *sub_268D8E144();
        MEMORY[0x277D82BE0](v440);
        v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v439 = sub_268F9B734();
        sub_268F9AC14();

        MEMORY[0x277D82BD8](v440);
        v581[1] = v446;
        result = sub_268F9AF94();
        v441 = v37;
        if (!v37)
        {
          if (v444(v550, 1, v527) != 1)
          {
            v421 = v530;
            v424 = *(v529 + 32);
            v423 = v529 + 32;
            v424(v541, v550, v527);
            v436 = sub_268F9B284();
            v435 = *sub_268D8E144();
            MEMORY[0x277D82BE0](v435);
            (*(v529 + 16))(v539, v541, v527);
            v422 = (*(v421 + 80) + 16) & ~*(v421 + 80);
            v427 = 7;
            v428 = swift_allocObject();
            v424((v428 + v422), v539, v527);
            v425 = 17;
            v430 = swift_allocObject();
            *(v430 + 16) = 32;
            v431 = swift_allocObject();
            *(v431 + 16) = 8;
            v426 = 32;
            v38 = swift_allocObject();
            v39 = v428;
            v429 = v38;
            *(v38 + 16) = v500;
            *(v38 + 24) = v39;
            v40 = swift_allocObject();
            v41 = v429;
            v433 = v40;
            *(v40 + 16) = v501;
            *(v40 + 24) = v41;
            v432 = sub_268F9B734();
            v434 = v42;

            v43 = v430;
            v44 = v434;
            *v434 = v502;
            v44[1] = v43;

            v45 = v431;
            v46 = v434;
            v434[2] = v503;
            v46[3] = v45;

            v47 = v433;
            v48 = v434;
            v434[4] = v504;
            v48[5] = v47;
            sub_268CD0F7C();

            if (os_log_type_enabled(v435, v436))
            {
              v49 = v441;
              v414 = sub_268F9B3A4();
              v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
              v415 = sub_268CD5448(0);
              v416 = sub_268CD5448(1);
              v417 = v581;
              v581[0] = v414;
              v418 = &v580;
              v580 = v415;
              v419 = &v579;
              v579 = v416;
              sub_268CD549C(2, v581);
              sub_268CD549C(1, v417);
              v577 = v502;
              v578 = v430;
              sub_268CD54B0(&v577, v417, v418, v419);
              v420 = v49;
              if (v49)
              {

                __break(1u);
              }

              else
              {
                v577 = v503;
                v578 = v431;
                sub_268CD54B0(&v577, v581, &v580, &v579);
                v412 = 0;
                v577 = v504;
                v578 = v433;
                sub_268CD54B0(&v577, v581, &v580, &v579);
                _os_log_impl(&dword_268CBE000, v435, v436, "HA identifier detected: %s.", v414, 0xCu);
                sub_268CD54FC(v415);
                sub_268CD54FC(v416);
                sub_268F9B384();
              }
            }

            else
            {
            }

            MEMORY[0x277D82BD8](v435);
            (*(v529 + 8))(v541, v527);

            v411 = 1;
            return v411 & 1;
          }

          sub_268D9C0BC(v550);
          v279 = sub_268F9B284();
          v281 = *sub_268D8E144();
          MEMORY[0x277D82BE0](v281);
          v280 = sub_268F9B734();
          sub_268F9AC14();

          MEMORY[0x277D82BD8](v281);

          v455 = v441;
          goto LABEL_65;
        }
      }

      __break(1u);
      goto LABEL_112;
    }

    v34 = v457;

    v455 = v34;
  }

  else
  {
    v455 = v457;
  }

LABEL_65:
  v278 = v455;

  if (!v542)
  {
    goto LABEL_102;
  }

  v277 = v542;
  v275 = v542;
  v616 = v542;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7F0, &qword_268F9F570);
  v274 = sub_268DA6E24();
  sub_268F9B234();
  v276 = v615;

  if (!v276)
  {
    goto LABEL_102;
  }

  v272 = v276;
  v270 = v276;
  sub_268F9A064();
  v271 = v614;

  if (v271 && (v269 = v271, v267 = v271, v268 = sub_268F99E94(), , v268))
  {
    v266 = v268;
    v263 = v268;
    v613 = v268;
    sub_268F9B234();
    v264 = v612;

    v265 = v264;
  }

  else
  {
LABEL_102:
    v265 = 0;
  }

  v262 = v265;
  if (!v265)
  {
    v182 = sub_268F9B284();
    v181 = *sub_268D8E144();
    MEMORY[0x277D82BE0](v181);

    v173 = 7;
    v174 = swift_allocObject();
    *(v174 + 16) = v542;
    v171 = 17;
    v176 = swift_allocObject();
    *(v176 + 16) = 32;
    v177 = swift_allocObject();
    *(v177 + 16) = 8;
    v172 = 32;
    v151 = swift_allocObject();
    v152 = v174;
    v175 = v151;
    *(v151 + 16) = v521;
    *(v151 + 24) = v152;
    v153 = swift_allocObject();
    v154 = v175;
    v179 = v153;
    *(v153 + 16) = v522;
    *(v153 + 24) = v154;
    v178 = sub_268F9B734();
    v180 = v155;

    v156 = v176;
    v157 = v180;
    *v180 = v523;
    v157[1] = v156;

    v158 = v177;
    v159 = v180;
    v180[2] = v524;
    v159[3] = v158;

    v160 = v179;
    v161 = v180;
    v180[4] = v525;
    v161[5] = v160;
    sub_268CD0F7C();

    if (os_log_type_enabled(v181, v182))
    {
      v162 = v278;
      v164 = sub_268F9B3A4();
      v163[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v165 = sub_268CD5448(0);
      v166 = sub_268CD5448(1);
      v167 = &v639;
      v639 = v164;
      v168 = &v638;
      v638 = v165;
      v169 = &v637;
      v637 = v166;
      sub_268CD549C(2, &v639);
      sub_268CD549C(1, v167);
      v635 = v523;
      v636 = v176;
      sub_268CD54B0(&v635, v167, v168, v169);
      v170 = v162;
      if (v162)
      {

        __break(1u);
      }

      else
      {
        v635 = v524;
        v636 = v177;
        sub_268CD54B0(&v635, &v639, &v638, &v637);
        v163[0] = 0;
        v635 = v525;
        v636 = v179;
        sub_268CD54B0(&v635, &v639, &v638, &v637);
        _os_log_impl(&dword_268CBE000, v181, v182, "No associated user entities found: %s", v164, 0xCu);
        sub_268CD54FC(v165);
        sub_268CD54FC(v166);
        sub_268F9B384();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v181);
    v411 = 0;
    return v411 & 1;
  }

  v261 = v262;
  v259 = v262;
  v634 = v262;
  sub_268F9A064();
  v260 = v633;
  if (v633)
  {
    v258 = v260;
    v255 = v260;
    sub_268F9AEF4();
    v254 = v113;
    v256 = sub_268F9A0A4();

    v257 = v256;
  }

  else
  {
    v257 = 0;
  }

  v253 = v257;
  if (!v257)
  {
    v202 = sub_268F9B284();
    v201 = *sub_268D8E144();
    MEMORY[0x277D82BE0](v201);

    v192 = 17;
    v194 = 7;
    v196 = swift_allocObject();
    *(v196 + 16) = 32;
    v197 = swift_allocObject();
    *(v197 + 16) = 8;
    v193 = 32;
    v139 = swift_allocObject();
    v140 = v259;
    v195 = v139;
    *(v139 + 16) = v516;
    *(v139 + 24) = v140;
    v141 = swift_allocObject();
    v142 = v195;
    v199 = v141;
    *(v141 + 16) = v517;
    *(v141 + 24) = v142;
    v198 = sub_268F9B734();
    v200 = v143;

    v144 = v196;
    v145 = v200;
    *v200 = v518;
    v145[1] = v144;

    v146 = v197;
    v147 = v200;
    v200[2] = v519;
    v147[3] = v146;

    v148 = v199;
    v149 = v200;
    v200[4] = v520;
    v149[5] = v148;
    sub_268CD0F7C();

    if (os_log_type_enabled(v201, v202))
    {
      v150 = v278;
      v185 = sub_268F9B3A4();
      v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v186 = sub_268CD5448(0);
      v187 = sub_268CD5448(1);
      v188 = &v632;
      v632 = v185;
      v189 = &v631;
      v631 = v186;
      v190 = &v630;
      v630 = v187;
      sub_268CD549C(2, &v632);
      sub_268CD549C(1, v188);
      v628 = v518;
      v629 = v196;
      sub_268CD54B0(&v628, v188, v189, v190);
      v191 = v150;
      if (v150)
      {

        __break(1u);
      }

      else
      {
        v628 = v519;
        v629 = v197;
        sub_268CD54B0(&v628, &v632, &v631, &v630);
        v183 = 0;
        v628 = v520;
        v629 = v199;
        sub_268CD54B0(&v628, &v632, &v631, &v630);
        _os_log_impl(&dword_268CBE000, v201, v202, "No names identifiers of associated user entity found: %s", v185, 0xCu);
        sub_268CD54FC(v186);
        sub_268CD54FC(v187);
        sub_268F9B384();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v201);

    v411 = 0;
    return v411 & 1;
  }

  v252 = v253;
  v114 = v278;
  v249 = v253;
  v627 = v253;
  v626[1] = v253;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  sub_268DA5FC0();
  result = sub_268F9AF94();
  v251 = v114;
  if (!v114)
  {
    if ((*(v529 + 48))(v544, 1, v527) == 1)
    {
      sub_268D9C0BC(v544);
      v223 = sub_268F9B284();
      v222 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v222);

      v214 = 7;
      v215 = swift_allocObject();
      *(v215 + 16) = v249;
      v212 = 17;
      v217 = swift_allocObject();
      *(v217 + 16) = 32;
      v218 = swift_allocObject();
      *(v218 + 16) = 8;
      v213 = 32;
      v127 = swift_allocObject();
      v128 = v215;
      v216 = v127;
      *(v127 + 16) = v506;
      *(v127 + 24) = v128;
      v129 = swift_allocObject();
      v130 = v216;
      v220 = v129;
      *(v129 + 16) = v507;
      *(v129 + 24) = v130;
      v219 = sub_268F9B734();
      v221 = v131;

      v132 = v217;
      v133 = v221;
      *v221 = v508;
      v133[1] = v132;

      v134 = v218;
      v135 = v221;
      v221[2] = v509;
      v135[3] = v134;

      v136 = v220;
      v137 = v221;
      v221[4] = v510;
      v137[5] = v136;
      sub_268CD0F7C();

      if (os_log_type_enabled(v222, v223))
      {
        v138 = v251;
        v205 = sub_268F9B3A4();
        v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v206 = sub_268CD5448(0);
        v207 = sub_268CD5448(1);
        v208 = v626;
        v626[0] = v205;
        v209 = &v625;
        v625 = v206;
        v210 = &v624;
        v624 = v207;
        sub_268CD549C(2, v626);
        sub_268CD549C(1, v208);
        v622 = v508;
        v623 = v217;
        sub_268CD54B0(&v622, v208, v209, v210);
        v211 = v138;
        if (v138)
        {

          __break(1u);
        }

        else
        {
          v622 = v509;
          v623 = v218;
          sub_268CD54B0(&v622, v626, &v625, &v624);
          v203 = 0;
          v622 = v510;
          v623 = v220;
          sub_268CD54B0(&v622, v626, &v625, &v624);
          _os_log_impl(&dword_268CBE000, v222, v223, "No HA identifier found in entities: %s", v205, 0xCu);
          sub_268CD54FC(v206);
          sub_268CD54FC(v207);
          sub_268F9B384();
        }
      }

      else
      {
      }

      MEMORY[0x277D82BD8](v222);

      v411 = 0;
    }

    else
    {
      v233 = v530;
      v236 = *(v529 + 32);
      v235 = v529 + 32;
      v236(v533, v544, v527);
      v248 = sub_268F9B284();
      v247 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v247);
      (*(v529 + 16))(v539, v533, v527);
      v234 = (*(v233 + 80) + 16) & ~*(v233 + 80);
      v239 = 7;
      v240 = swift_allocObject();
      v236((v240 + v234), v539, v527);
      v237 = 17;
      v242 = swift_allocObject();
      *(v242 + 16) = 32;
      v243 = swift_allocObject();
      *(v243 + 16) = 8;
      v238 = 32;
      v115 = swift_allocObject();
      v116 = v240;
      v241 = v115;
      *(v115 + 16) = v511;
      *(v115 + 24) = v116;
      v117 = swift_allocObject();
      v118 = v241;
      v245 = v117;
      *(v117 + 16) = v512;
      *(v117 + 24) = v118;
      v244 = sub_268F9B734();
      v246 = v119;

      v120 = v242;
      v121 = v246;
      *v246 = v513;
      v121[1] = v120;

      v122 = v243;
      v123 = v246;
      v246[2] = v514;
      v123[3] = v122;

      v124 = v245;
      v125 = v246;
      v246[4] = v515;
      v125[5] = v124;
      sub_268CD0F7C();

      if (os_log_type_enabled(v247, v248))
      {
        v126 = v251;
        v226 = sub_268F9B3A4();
        v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v227 = sub_268CD5448(0);
        v228 = sub_268CD5448(1);
        v229 = &v621;
        v621 = v226;
        v230 = &v620;
        v620 = v227;
        v231 = &v619;
        v619 = v228;
        sub_268CD549C(2, &v621);
        sub_268CD549C(1, v229);
        v617 = v513;
        v618 = v242;
        sub_268CD54B0(&v617, v229, v230, v231);
        v232 = v126;
        if (v126)
        {

          __break(1u);
        }

        else
        {
          v617 = v514;
          v618 = v243;
          sub_268CD54B0(&v617, &v621, &v620, &v619);
          v224 = 0;
          v617 = v515;
          v618 = v245;
          sub_268CD54B0(&v617, &v621, &v620, &v619);
          _os_log_impl(&dword_268CBE000, v247, v248, "Found HA identifier: %s", v226, 0xCu);
          sub_268CD54FC(v227);
          sub_268CD54FC(v228);
          sub_268F9B384();
        }
      }

      else
      {
      }

      MEMORY[0x277D82BD8](v247);
      (*(v529 + 8))(v533, v527);

      v411 = 1;
    }

    return v411 & 1;
  }

LABEL_114:
  __break(1u);
  return result;
}

unint64_t sub_268DA5FC0()
{
  v2 = qword_280FE2868;
  if (!qword_280FE2868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC7E0, &qword_268F9F558);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2868);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DA6050()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC838, &qword_268F9F828);
  return sub_268F9AE64();
}

uint64_t sub_268DA60F4(uint64_t a1)
{
  v2[1] = a1;
  v5 = sub_268F99F64();
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  return sub_268F9AE64();
}

uint64_t sub_268DA61A8()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E8, &unk_268F9F560);
  return sub_268F9AE64();
}

uint64_t sub_268DA61FC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC830, &qword_268F9F820);
  return sub_268F9AE64();
}

uint64_t sub_268DA6250()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  sub_268DA7608();
  return sub_268F9AE74();
}

uint64_t SupportedFlowDomainProvider.deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  v2 = v0[8];

  sub_268D28414(v0 + 9);
  return v4;
}

uint64_t sub_268DA6340()
{
  result = sub_268F9B734();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  v1[3] = 3;
  v1[4] = 4;
  v1[5] = 5;
  v1[6] = 6;
  v1[7] = 7;
  v1[8] = 8;
  v1[9] = 9;
  sub_268CD0F7C();
  return result;
}

uint64_t sub_268DA675C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268DA1A0C();
  *a2 = result;
  return result;
}

uint64_t sub_268DA6794@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268DA63D0();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268DA67C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268DA6340();
  *a1 = result;
  return result;
}

uint64_t SupportedFlowDomain.hash(into:)()
{
  if (*v0)
  {
    *v0;
  }

  return sub_268F9B814();
}

uint64_t SupportedFlowDomain.hashValue.getter()
{
  v2 = *v0;
  sub_268DA6F28();
  return sub_268F9B4B4();
}

void *sub_268DA69E0(const void *a1, void *a2)
{
  v6 = sub_268F99F64();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_268DA6B08()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_268D9D8A4(v2);
}

uint64_t sub_268DA6B78()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_268D9DA3C(v2);
}

uint64_t sub_268DA6BE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_268D9EB24();
}

unint64_t sub_268DA6BFC()
{
  v2 = qword_280FE2840;
  if (!qword_280FE2840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC560, qword_268FA0000);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2840);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DA6C84()
{
  v2 = qword_280FE36F0;
  if (!qword_280FE36F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE36F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DA6D00()
{
  v1 = *(sub_268F99F64() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_268DA15DC();
}

uint64_t sub_268DA6D64(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_268DA1600(a1) & 1;
}

uint64_t sub_268DA6D94()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_268DA1698();
  return result;
}

uint64_t sub_268DA6DC0()
{
  v1 = *(sub_268F99F64() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_268DA60F4(v2);
}

unint64_t sub_268DA6E24()
{
  v2 = qword_280FE2858;
  if (!qword_280FE2858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC7F0, &qword_268F9F570);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2858);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DA6EAC()
{
  v2 = qword_2802DC7F8;
  if (!qword_2802DC7F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC7F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DA6F28()
{
  v2 = qword_2802DC800;
  if (!qword_2802DC800)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC800);
    return WitnessTable;
  }

  return v2;
}