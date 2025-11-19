void sub_22717141C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9F8, &unk_22767B6A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - v8;
  v10 = [objc_allocWithZone(MEMORY[0x277CEE498]) initWithBag_];
  v11 = sub_22766BE90();
  v12 = [v10 enqueueData_];

  (*(v6 + 16))(v9, a3, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  (*(v6 + 32))(v14 + v13, v9, v5);
  aBlock[4] = sub_22717B47C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9F1D0;
  aBlock[3] = &block_descriptor_334;
  v15 = _Block_copy(aBlock);

  [v12 addFinishBlock_];
  _Block_release(v15);
}

uint64_t sub_227171644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_2271716E4;

  return sub_227170C54(a3);
}

uint64_t sub_2271716E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_227171830, 0, 0);
  }
}

BOOL sub_227171854()
{
  swift_getErrorValue();
  v0 = sub_22766D280();
  v2 = v1;
  v3 = *MEMORY[0x277CEE188];
  if (v0 == sub_22766C000() && v2 == v4)
  {
  }

  else
  {
    v6 = sub_22766D190();

    if ((v6 & 1) == 0)
    {
      return 1;
    }
  }

  swift_getErrorValue();
  return sub_22766D270() != 1;
}

uint64_t sub_227171938(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 58) = a3;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  v4 = *(*(sub_2276629D0() - 8) + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  v5 = sub_22766B390();
  *(v3 + 88) = v5;
  v6 = *(v5 - 8);
  *(v3 + 96) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2E0, &qword_227672100);
  *(v3 + 112) = v8;
  v9 = *(v8 - 8);
  *(v3 + 120) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  v11 = sub_2276666A0();
  *(v3 + 136) = v11;
  v12 = *(v11 - 8);
  *(v3 + 144) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227171AEC, 0, 0);
}

uint64_t sub_227171AEC()
{
  v1 = *(v0 + 72);
  v2 = v1[64];
  __swift_project_boxed_opaque_existential_0(v1 + 59, v1[62]);
  v3 = sub_22766A330();
  v4 = 4u >> (v3 & 7);
  if (v3 > 2)
  {
    LOBYTE(v4) = 0;
  }

  *(v0 + 59) = v4 & 1;
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  *v5 = v0;
  v5[1] = sub_227171BE8;
  v6 = *(v0 + 72);

  return sub_227172390();
}

uint64_t sub_227171BE8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[20];
  v7 = *v3;
  v5[21] = a2;
  v5[22] = v2;

  if (v2)
  {
    v8 = v5[19];
    v9 = v5[16];
    v10 = v5[13];
    v11 = v5[10];

    v12 = v7[1];

    return v12();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227171D5C, 0, 0);
  }
}

uint64_t sub_227171D5C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 58);
  v3 = *(v0 + 72);
  v4 = v3[46];
  __swift_project_boxed_opaque_existential_0(v3 + 42, v3[45]);
  v5 = sub_22766A2C0();
  v6 = sub_22715958C(v5);

  *(v0 + 184) = sub_226F44D54(v6);

  if (v2 == 1)
  {
    v7 = *(v0 + 128);
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v10 = *(v0 + 88);
    v11 = *__swift_project_boxed_opaque_existential_0((*(v0 + 72) + 584), *(*(v0 + 72) + 608));
    sub_22766A730();
    sub_22766B370();
    (*(v9 + 8))(v8, v10);
    sub_226EDD55C(v7);
    v12 = swift_task_alloc();
    *(v0 + 192) = v12;
    *(v12 + 16) = "SeymourServices/RecommendationSystem.swift";
    *(v12 + 24) = 42;
    *(v12 + 32) = 2;
    *(v12 + 40) = 504;
    *(v12 + 48) = v7;
    v13 = *(MEMORY[0x277D85A40] + 4);
    v14 = swift_task_alloc();
    *(v0 + 200) = v14;
    *v14 = v0;
    v14[1] = sub_22717200C;
    v15 = *(v0 + 152);
    v16 = *(v0 + 136);

    return MEMORY[0x2822008A0](v15, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_22717AE5C, v12, v16);
  }

  else
  {
    v17 = *(v0 + 184);
    v18 = *(v0 + 168);
    v19 = *(v0 + 24);
    v20 = *(v0 + 59);
    v21 = *(v0 + 152);
    v22 = *(v0 + 128);
    v23 = *(v0 + 104);
    v24 = *(v0 + 80);
    v25 = *(v0 + 64);
    sub_2276629B0();
    sub_227666CD0();

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_22717200C()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  v2[26] = v0;

  v5 = v2[24];
  if (v0)
  {
    v6 = v2[23];
    v7 = v2[21];

    v8 = sub_2271722E8;
  }

  else
  {
    v10 = v2[15];
    v9 = v2[16];
    v11 = v2[14];

    (*(v10 + 8))(v9, v11);
    v8 = sub_227172188;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_227172188()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = sub_227666680();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  *(v0 + 48) = v4;
  *(v0 + 56) = v6 & 1;
  *(v0 + 57) = 1;
  sub_227033D54();
  sub_227033DA8();
  sub_227663B30();
  v7 = *(v0 + 184);
  v8 = *(v0 + 168);
  v9 = *(v0 + 24);
  v10 = *(v0 + 59);
  v11 = *(v0 + 152);
  v12 = *(v0 + 128);
  v17 = *(v0 + 104);
  v13 = *(v0 + 80);
  v14 = *(v0 + 64);
  sub_2276629B0();
  sub_227666CD0();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2271722E8()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[26];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_227172390()
{
  v1[9] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v5 = sub_227669890();
  v1[13] = v5;
  v6 = *(v5 - 8);
  v1[14] = v6;
  v7 = *(v6 + 64) + 15;
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271724B8, 0, 0);
}

uint64_t sub_2271724B8()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[9];
  sub_22766A7F0();
  sub_226E9DD3C("queryLanguageCode", 17, 2, &dword_226E8E000, 1, v0 + 2);
  v4 = *__swift_project_boxed_opaque_existential_0((v3 + 744), *(v3 + 768));
  sub_226FCFE28();
  v5 = swift_task_alloc();
  v0[16] = v5;
  *(v5 + 16) = "SeymourServices/RecommendationSystem.swift";
  *(v5 + 24) = 42;
  *(v5 + 32) = 2;
  *(v5 + 40) = 701;
  *(v5 + 48) = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_227172618;
  v8 = MEMORY[0x277D837D0];

  return MEMORY[0x2822008A0](v0 + 7, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_22717AE74, v5, v8);
}

uint64_t sub_227172618()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 88);
  v11 = *v1;
  *(*v1 + 144) = v0;

  v5 = v2[16];
  if (v0)
  {

    v6 = sub_22717284C;
  }

  else
  {
    v7 = v2[12];
    v8 = v2[10];
    v9 = v2[8];
    v2[19] = v2[7];
    v2[20] = v9;

    (*(v4 + 8))(v7, v8);
    v6 = sub_227172780;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_227172780()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v6 = v0[1];
  v7 = v0[19];
  v8 = v0[20];

  return v6(v7, v8);
}

uint64_t sub_22717284C()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  (*(v0[11] + 8))(v0[12], v0[10]);
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  swift_willThrow();
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669920();
  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v7 = v0[1];
  v8 = v0[18];

  return v7();
}

uint64_t sub_22717296C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_227172990, 0, 0);
}

uint64_t sub_227172990()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);
  *(v0 + 112) = 20;
  *(v0 + 56) = sub_226F19410();
  *(v0 + 64) = sub_226F19464();
  sub_22766A130();
  v4 = v2[70];
  v5 = v2[71];
  __swift_project_boxed_opaque_existential_0(v2 + 67, v4);
  v6 = *(v5 + 24);

  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB940, qword_22767B408);
  *v8 = v0;
  v8[1] = sub_227172BA0;
  v10 = *(v0 + 40);

  return (v12)(v0 + 16, sub_22717AE40, v10, v9, v4, v5);
}

uint64_t sub_227172BA0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_227172F7C;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_227172CBC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227172CBC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  v4 = v2[70];
  v5 = v2[71];
  __swift_project_boxed_opaque_existential_0(v2 + 67, v4);
  v6 = swift_allocObject();
  v0[11] = v6;
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v1;
  v7 = *(v5 + 24);

  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[12] = v9;
  v10 = sub_227668650();
  *v9 = v0;
  v9[1] = sub_227172E60;
  v11 = v0[3];

  return (v13)(v11, sub_226EDC5A0, v6, v10, v4, v5);
}

uint64_t sub_227172E60()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_227173158;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_22717306C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227172F7C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);

  v5 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  *(v0 + 113) = 20;
  sub_22766A120();
  v6 = *(v0 + 80);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22717306C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  *(v0 + 115) = 20;
  sub_22766A120();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_227173158()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 32);

  v5 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  *(v0 + 114) = 20;
  sub_22766A120();
  v6 = *(v0 + 104);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22717324C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_227173270, 0, 0);
}

uint64_t sub_227173270()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);
  *(v0 + 72) = 21;
  *(v0 + 40) = sub_226F19410();
  *(v0 + 48) = sub_226F19464();
  sub_22766A130();
  v4 = v2[70];
  v5 = v2[71];
  __swift_project_boxed_opaque_existential_0(v2 + 67, v4);
  v6 = *(v5 + 24);

  v13 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  v9 = sub_227667870();
  *v8 = v0;
  v8[1] = sub_227173474;
  v10 = *(v0 + 32);
  v11 = *(v0 + 16);

  return (v13)(v11, sub_22717ACA4, v10, v9, v4, v5);
}

uint64_t sub_227173474()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_22717367C;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_227173590;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227173590()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  *(v0 + 74) = 21;
  sub_22766A120();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22717367C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);

  v5 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  *(v0 + 73) = 21;
  sub_22766A120();
  v6 = *(v0 + 8);
  v7 = *(v0 + 64);

  return v6();
}

uint64_t sub_22717376C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3A8, &qword_22767B360);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v130 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8F0, &qword_22767B368);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v153 = &v130 - v15;
  v155 = sub_227668F30();
  v149 = *(v155 - 8);
  v16 = *(v149 + 64);
  v17 = MEMORY[0x28223BE20](v155);
  v146 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v145 = &v130 - v19;
  v158 = sub_227666B60();
  v156 = *(v158 - 8);
  v20 = *(v156 + 64);
  MEMORY[0x28223BE20](v158);
  v157 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_227662750();
  v23 = *(v22 - 8);
  v24 = v23[8];
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v130 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v130 - v28;
  v154 = a2;
  v30 = *(a2 + 920);
  sub_227662720();
  if (sub_22766A110() < 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    sub_22766C360();
    goto LABEL_6;
  }

  v143 = v10;
  v144 = v12;
  v138 = a3;
  sub_22766C510();
  sub_2276626D0();
  v31 = v23[1];
  v31(v27, v22);
  v32 = sub_2276626A0();
  v140 = v29;
  v142 = v22;
  v141 = v23 + 1;
  v139 = v31;
  v31(v29, v22);
  v33 = [v30 stringFromDate_];

  v151 = sub_22766C000();
  v35 = v34;

  v36 = a1[3];
  v148 = a1;
  v37 = __swift_project_boxed_opaque_existential_0(a1, v36);
  v38 = *v37;
  v39 = v37[1];
  LOBYTE(v32) = *(v37 + 16);
  v40 = v37[3];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  v147 = v41;
  v10 = swift_allocObject();
  v44 = v38;
  v45 = v39;

  sub_22766A070();
  *(v10 + 2) = v44;
  *(v10 + 3) = v45;
  v10[32] = v32;
  *(v10 + 5) = v40;
  swift_getKeyPath();
  v161[3] = MEMORY[0x277D837D0];
  v161[0] = v151;
  v161[1] = v35;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v46 = sub_22766C820();
  sub_226E93170(v161, v159, &unk_27D7BC990, &qword_227670A30);
  v47 = v160;
  if (v160)
  {
    v48 = __swift_project_boxed_opaque_existential_0(v159, v160);
    v49 = *(v47 - 8);
    v50 = *(v49 + 64);
    MEMORY[0x28223BE20](v48);
    v52 = &v130 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v49 + 16))(v52);
    v53 = sub_22766D170();
    (*(v49 + 8))(v52, v47);
    __swift_destroy_boxed_opaque_existential_0(v159);
  }

  else
  {
    v53 = 0;
  }

  a1 = v152;
  v54 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v55 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

  sub_226E97D1C(v161, &unk_27D7BC990, &qword_227670A30);
  v23 = &qword_2813B2078;
  swift_beginAccess();
  v30 = v55;
  v12 = sub_22766A080();
  v57 = v56;
  MEMORY[0x22AA985C0]();
  if (*((*v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_33;
  }

LABEL_6:
  sub_22766C3A0();
  (v12)(v161, 0);
  swift_endAccess();

  v58 = sub_226EE010C(100);
  if (a1)
  {
    swift_setDeallocating();

    v59 = *(v10 + 5);

    v60 = *v23;
    v61 = sub_22766A100();
    (*(*(v61 - 8) + 8))(&v10[v60], v61);
    v113 = *(*v10 + 48);
    v114 = *(*v10 + 52);
    return swift_deallocClassInstance();
  }

  v62 = v58;
  swift_setDeallocating();

  v63 = *(v10 + 5);

  v64 = *v23;
  v65 = sub_22766A100();
  v66 = *(v65 - 8);
  v67 = *(v66 + 8);
  v135 = v65;
  v136 = v67;
  v134 = v66 + 8;
  v67(&v10[v64]);
  v68 = *(*v10 + 48);
  v69 = *(*v10 + 52);
  swift_deallocClassInstance();
  v12 = v62 + 56;
  v70 = 1 << v62[32];
  v71 = -1;
  if (v70 < 64)
  {
    v71 = ~(-1 << v70);
  }

  v72 = v71 & *(v62 + 7);
  a1 = ((v70 + 63) >> 6);
  v150 = v156 + 16;
  v151 = (v156 + 8);
  v10 = (v149 + 48);
  v133 = (v149 + 32);
  v152 = v62;

  v30 = 0;
  v137 = MEMORY[0x277D84F90];
  v73 = v157;
  v23 = v158;
LABEL_11:
  v74 = v30;
  if (!v72)
  {
    goto LABEL_13;
  }

  do
  {
    v30 = v74;
LABEL_16:
    (*(v156 + 16))(v73, *(v152 + 6) + *(v156 + 72) * (__clz(__rbit64(v72)) | (v30 << 6)), v23);
    v75 = v23;
    v76 = v153;
    sub_22717481C(v73, v154, v153);
    v72 &= v72 - 1;
    (*v151)(v73, v75);
    if ((*v10)(v76, 1, v155) != 1)
    {
      v77 = *v133;
      v78 = v76;
      v79 = v155;
      (*v133)(v145, v78, v155);
      v77(v146, v145, v79);
      v80 = v77;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v137 = sub_226EE040C(0, *(v137 + 2) + 1, 1, v137);
      }

      v73 = v157;
      v23 = v158;
      v82 = *(v137 + 2);
      v81 = *(v137 + 3);
      v83 = v82 + 1;
      if (v82 >= v81 >> 1)
      {
        v132 = v82 + 1;
        v131 = v82;
        v85 = sub_226EE040C(v81 > 1, v82 + 1, 1, v137);
        v83 = v132;
        v82 = v131;
        v137 = v85;
      }

      v84 = v137;
      *(v137 + 2) = v83;
      v80(&v84[((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v82], v146, v155);
      goto LABEL_11;
    }

    sub_226E97D1C(v76, &unk_27D7BB8F0, &qword_22767B368);
    v74 = v30;
    v73 = v157;
    v23 = v158;
  }

  while (v72);
  while (1)
  {
LABEL_13:
    v30 = v74 + 1;
    if (__OFADD__(v74, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v30 >= a1)
    {
      break;
    }

    v72 = *&v12[8 * v30];
    ++v74;
    if (v72)
    {
      goto LABEL_16;
    }
  }

  v86 = __swift_project_boxed_opaque_existential_0(v148, v148[3]);
  v87 = *v86;
  v88 = v86[1];
  v89 = *(v86 + 16);
  v90 = v86[3];
  v91 = *(v147 + 48);
  v92 = *(v147 + 52);
  v93 = swift_allocObject();
  v94 = v87;
  v95 = v88;

  sub_22766A070();
  *(v93 + 16) = v94;
  *(v93 + 24) = v95;
  *(v93 + 32) = v89;
  *(v93 + 40) = v90;
  v96 = sub_227284754(0);
  [v96 setResultType_];
  [v96 setFetchLimit_];
  [v96 setFetchOffset_];
  [v96 setIncludesSubentities_];
  sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
  v97 = sub_22766C9D0();
  v98 = v136;
  v158 = v97;

  swift_setDeallocating();
  v99 = v135;
  v98(v93 + qword_2813B2078, v135);
  v100 = *(*v93 + 48);
  v101 = *(*v93 + 52);
  swift_deallocClassInstance();
  v102 = __swift_project_boxed_opaque_existential_0(v148, v148[3]);
  v103 = *v102;
  v104 = v102[1];
  v105 = *(v102 + 16);
  v106 = v102[3];
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB910, &qword_22767B3B0);
  v108 = *(v107 + 48);
  v109 = *(v107 + 52);
  v110 = swift_allocObject();
  v111 = v103;
  v112 = v104;

  sub_22766A070();
  *(v110 + 16) = v111;
  *(v110 + 24) = v112;
  *(v110 + 32) = v105;
  *(v110 + 40) = v106;
  v116 = sub_2272376B8(100);
  swift_setDeallocating();

  v117 = *(v110 + 40);

  v136(v110 + qword_2813B2078, v99);
  v118 = *(*v110 + 48);
  v119 = *(*v110 + 52);
  swift_deallocClassInstance();
  v120 = v144;
  sub_22722AF04(v116, v144);

  v121 = v143;
  sub_226E93170(v120, v143, &qword_27D7BA3A8, &qword_22767B360);
  v122 = sub_227665030();
  v123 = *(v122 - 8);
  if ((*(v123 + 48))(v121, 1, v122) == 1)
  {
    sub_226E97D1C(v121, &qword_27D7BA3A8, &qword_22767B360);
    v124 = v140;
    sub_227662660();
  }

  else
  {
    v124 = v140;
    sub_227664FA0();
    (*(v123 + 8))(v121, v122);
  }

  v125 = v142;
  v126 = v139;
  sub_2276626F0();
  v128 = v127;
  v126(v124, v125);
  v129 = v128 / 86400.0;
  if (COERCE__INT64(fabs(v128 / 86400.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v129 > -9.22337204e18)
  {
    if (v129 < 9.22337204e18)
    {
      sub_227667860();
      return sub_226E97D1C(v120, &qword_27D7BA3A8, &qword_22767B360);
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_36:
  __break(1u);

  (*v151)(v124, 0);

  __break(1u);
  return result;
}

uint64_t sub_22717481C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22766B390();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227666B60();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = *(v10 + 16);
  v15(&v34 - v16, a1, v9);
  v17 = *(a2 + 920);
  v38 = a3;
  v18 = v37;
  sub_227668F20();
  if (v18)
  {
    sub_22766A680();
    v15(v14, a1, v9);
    v19 = v18;
    v20 = sub_22766B380();
    v21 = sub_22766C8B0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v40 = v37;
      *v22 = 136315394;
      sub_22717B7C4(&qword_27D7BB360, MEMORY[0x277D52828]);
      v23 = sub_22766D140();
      v25 = v24;
      (*(v10 + 8))(v14, v9);
      v26 = sub_226E97AE8(v23, v25, &v40);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      swift_getErrorValue();
      v27 = sub_22766D250();
      v29 = sub_226E97AE8(v27, v28, &v40);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_226E8E000, v20, v21, "Failed to transform %s for personalization with error: %s", v22, 0x16u);
      v30 = v37;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v30, -1, -1);
      MEMORY[0x22AA9A450](v22, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v14, v9);
    }

    (*(v35 + 8))(v39, v36);
    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  v32 = sub_227668F30();
  return (*(*(v32 - 8) + 56))(v38, v31, 1, v32);
}

uint64_t sub_227174C10(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v8 + 8))(v11, v7);
  v12 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8A0, &qword_227677F10);
  v13 = sub_227666650();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  v22 = xmmword_227670CD0;
  *(v17 + 16) = xmmword_227670CD0;
  (*(v14 + 16))(v17 + v16, a3, v13);
  sub_227563C94(v17, v12[1], *(v12 + 16), v12[3]);

  if (!v3)
  {
    v19 = *__swift_project_boxed_opaque_existential_0((a2 + 792), *(a2 + 816));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v20 = swift_allocObject();
    *(v20 + 16) = v22;
    *(v20 + 32) = sub_227666620();
    *(v20 + 40) = v21;
    sub_2272D7D58(0, v20, a1);
  }

  return result;
}

uint64_t sub_227174F10(void *a1, uint64_t *a2)
{
  v119 = a2;
  v3 = sub_22766A430();
  v117 = *(v3 - 8);
  v118 = v3;
  v4 = *(v117 + 64);
  MEMORY[0x28223BE20](v3);
  v116 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  v122 = v6;
  v123 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v124 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v120 = &v106 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v106 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v106 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8C0, &qword_22767F780);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v106 - v20;
  v22 = sub_227666650();
  v121 = *(v22 - 8);
  v23 = *(v121 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = (&v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v106 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v106 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v106 - v33;
  v35 = v125;
  result = sub_22734441C(a1);
  if (!v35)
  {
    v112 = v29;
    v113 = a1;
    v109 = v32;
    v110 = v15;
    v111 = v26;
    v114 = v34;
    v115 = v22;
    v125 = 0;
    if (*(result + 16) < 2uLL)
    {
      v45 = v124;
      v46 = result;
      sub_22766A660();
      v47 = v46;

      v48 = sub_22766B380();
      v49 = sub_22766C8B0();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 134217984;
        v51 = *(v47 + 16);

        *(v50 + 4) = v51;

        _os_log_impl(&dword_226E8E000, v48, v49, "[RecommendationSystem] Found %ld onboarding survey result(s), deduplication not needed", v50, 0xCu);
        MEMORY[0x22AA9A450](v50, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      return (*(v123 + 8))(v45, v122);
    }

    else
    {
      v37 = v21;
      v38 = result;
      sub_226F75D68(result, v21);
      v39 = v121;
      v40 = v21;
      v41 = v115;
      if ((*(v121 + 48))(v40, 1, v115) == 1)
      {

        sub_226E97D1C(v37, &unk_27D7BB8C0, &qword_22767F780);
        sub_22766A660();
        v42 = sub_22766B380();
        v43 = sub_22766C890();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_226E8E000, v42, v43, "[RecommendationSystem] Onboarding survey state deduplication unexpectedly returned nil", v44, 2u);
          MEMORY[0x22AA9A450](v44, -1, -1);
        }

        return (*(v123 + 8))(v17, v122);
      }

      else
      {
        v52 = v114;
        v53 = (*(v39 + 32))(v114, v37, v41);
        MEMORY[0x28223BE20](v53);
        *(&v106 - 2) = v52;
        v54 = v125;
        v55 = sub_22735A88C(sub_22717B7A4, (&v106 - 2), v38);
        v56 = sub_2271597F4(v55);
        v57 = sub_226F3E6A8(v56);

        v58 = v113;
        sub_227345598(v57, v113);
        if (v54)
        {

          return (*(v39 + 8))(v52, v41);
        }

        else
        {

          v59 = v119;
          v60 = *__swift_project_boxed_opaque_existential_0(v119 + 99, v119[102]);
          v61 = sub_227159AFC(v55);
          sub_2272D7D58(1, v61, v58);
          v124 = v55;
          v125 = 0;

          v63 = v59[52];
          v62 = v59[53];
          swift_getObjectType();
          v64 = v116;
          sub_22766A420();
          v65 = v118;
          sub_2276699D0();
          (*(v117 + 8))(v64, v65);
          v66 = v110;
          sub_22766A660();
          v67 = v109;
          v117 = *(v39 + 16);
          v118 = v39 + 16;
          (v117)(v109, v52, v41);
          v68 = sub_22766B380();
          v69 = sub_22766C8B0();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            v119 = swift_slowAlloc();
            v126 = v119;
            *v70 = 136315138;
            sub_22717B7C4(&unk_27D7BBA40, MEMORY[0x277D52498]);
            v71 = sub_22766D140();
            v72 = v67;
            v74 = v73;
            v75 = *(v39 + 8);
            v75(v72, v41);
            v76 = sub_226E97AE8(v71, v74, &v126);

            *(v70 + 4) = v76;
            _os_log_impl(&dword_226E8E000, v68, v69, "[RecommendationSystem] Deduplicated onboarding survey results with winner: %s", v70, 0xCu);
            v77 = v119;
            __swift_destroy_boxed_opaque_existential_0(v119);
            MEMORY[0x22AA9A450](v77, -1, -1);
            MEMORY[0x22AA9A450](v70, -1, -1);

            v78 = &unk_227670000;
            v79 = (v39 + 8);
          }

          else
          {

            v79 = (v39 + 8);
            v75 = *(v39 + 8);
            v75(v67, v41);
            v78 = &unk_227670000;
          }

          v80 = v123 + 8;
          v113 = *(v123 + 8);
          (v113)(v66, v122);
          v81 = v112;
          v82 = v124 + 56;
          v83 = 1 << v124[32];
          v84 = -1;
          if (v83 < 64)
          {
            v84 = ~(-1 << v83);
          }

          v85 = v84 & *(v124 + 7);
          v86 = (v83 + 63) >> 6;

          v87 = 0;
          *&v88 = v78[278];
          v106 = v88;
          v119 = v79;
          v109 = v82;
          v110 = v79 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v89 = v111;
          v116 = v75;
          v123 = v80;
          while (v85)
          {
LABEL_28:
            v92 = v115;
            v93 = v117;
            (v117)(v81, *(v124 + 6) + *(v121 + 72) * (__clz(__rbit64(v85)) | (v87 << 6)), v115);
            v94 = v120;
            sub_22766A660();
            v93(v89, v81, v92);
            v95 = v89;
            v96 = sub_22766B380();
            v97 = sub_22766C8B0();
            if (os_log_type_enabled(v96, v97))
            {
              v98 = swift_slowAlloc();
              v108 = v98;
              v111 = swift_slowAlloc();
              v126 = v111;
              *v98 = v106;
              sub_22717B7C4(&unk_27D7BBA40, MEMORY[0x277D52498]);
              v99 = sub_22766D140();
              v107 = v97;
              v101 = v100;
              v75 = v116;
              (v116)(v95, v92);
              v102 = sub_226E97AE8(v99, v101, &v126);

              v103 = v108;
              *(v108 + 1) = v102;
              v104 = v103;
              _os_log_impl(&dword_226E8E000, v96, v107, "[RecommendationSystem] Deleting duplicate onboarding survey result: %s", v103, 0xCu);
              v105 = v111;
              __swift_destroy_boxed_opaque_existential_0(v111);
              MEMORY[0x22AA9A450](v105, -1, -1);
              MEMORY[0x22AA9A450](v104, -1, -1);

              v90 = v120;
            }

            else
            {

              v75 = v116;
              (v116)(v95, v92);
              v90 = v94;
            }

            (v113)(v90, v122);
            v89 = v95;
            v85 &= v85 - 1;
            v81 = v112;
            result = (v75)(v112, v92);
            v82 = v109;
          }

          while (1)
          {
            v91 = v87 + 1;
            if (__OFADD__(v87, 1))
            {
              break;
            }

            if (v91 >= v86)
            {

              return (v75)(v114, v115);
            }

            v85 = *&v82[8 * v91];
            ++v87;
            if (v85)
            {
              v87 = v91;
              goto LABEL_28;
            }
          }

          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t sub_2271759B0()
{
  v0 = sub_227666620();
  v2 = v1;
  if (v0 == sub_227666620() && v2 == v3)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_22766D190();

    v4 = v5 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_227175A60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v5 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - v6;
  v8 = *__swift_project_boxed_opaque_existential_0((v0 + 704), *(v0 + 728));
  v9 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_226E92A44(v8 + v9, &v19);
  if (v20)
  {
    sub_226E92AB8(&v19, v18);
    sub_226E91B50(v18, v17);
    v10 = swift_allocObject();
    sub_226E92AB8(v17, v10 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    sub_226F099DC();
    v11 = swift_allocError();
    *v12 = 0;
    *(swift_allocObject() + 16) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
  }

  (*(v2 + 16))(v5, v7, v1);
  v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v14 = swift_allocObject();
  (*(v2 + 32))(v14 + v13, v5, v1);
  v15 = (v14 + ((v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = sub_227175D4C;
  v15[1] = 0;
  sub_227665AD0();
  sub_227669270();
  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_227175D4C(void *a1)
{
  v2 = sub_227667900();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276678E0();
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v7);
  (*(v8 + 8))(v6, v7, v8);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_227175E68(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_227175E88, 0, 0);
}

uint64_t sub_227175E88()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 40) + 96), *(*(v0 + 40) + 120));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_227175F28;

  return sub_226EB91E0();
}

uint64_t sub_227175F28(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_227176028, 0, 0);
}

uint64_t sub_227176028()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = *(v2 + 576);
  v4 = sub_22766C670();
  v0[8] = v4;

  v5 = *__swift_project_boxed_opaque_existential_0((v2 + 56), *(v2 + 80));
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_226EDE35C;

  return sub_226EC9C54(v4);
}

uint64_t sub_2271760F4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = *(v2 + 16);

    v6 = sub_2271762E8;
  }

  else
  {
    v7 = *(v2 + 40);

    v6 = sub_227176224;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_227176224()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  v6 = sub_22717A3A0(v5, v3);
  swift_bridgeObjectRelease_n();

  v7 = sub_226F450A4(v6);

  *v4 = v7;
  v8 = v0[1];

  return v8();
}

uint64_t sub_2271762E8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1();
}

uint64_t sub_22717634C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v97 = a1;
  v91 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB958, qword_22767B490);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v92 = &v79 - v6;
  v7 = sub_227668630();
  v93 = *(v7 - 8);
  v94 = v7;
  v8 = *(v93 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v90 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v89 = &v79 - v11;
  v12 = sub_227664530();
  v95 = *(v12 - 8);
  v13 = *(v95 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227667AE0();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_227665FB0();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = (&v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_227667AA0();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_227663FA0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *__swift_project_boxed_opaque_existential_0((a2 + 296), *(a2 + 320));
  v34 = v96;
  result = sub_226EAF48C(v97, v32);
  if (!v34)
  {
    v82 = v23;
    v83 = v19;
    v84 = v27;
    v85 = v15;
    v86 = v12;
    v87 = v32;
    v88 = v29;
    v96 = v28;
    v36 = __swift_project_boxed_opaque_existential_0(v97, *(v97 + 3));
    v37 = *v36;
    v38 = v36[1];
    v39 = *(v36 + 16);
    v40 = v36[3];
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB960, &qword_227675B20);
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    v44 = swift_allocObject();
    v45 = v37;
    v46 = v38;

    sub_22766A070();
    *(v44 + 16) = v45;
    *(v44 + 24) = v46;
    *(v44 + 32) = v39;
    *(v44 + 40) = v40;
    KeyPath = swift_getKeyPath();
    v48 = sub_2273FC874(KeyPath);
    v49 = sub_226F3E6A8(v48);

    swift_setDeallocating();

    v50 = *(v44 + 40);

    v51 = qword_2813B2078;
    v52 = sub_22766A100();
    (*(*(v52 - 8) + 8))(v44 + v51, v52);
    v53 = *(*v44 + 48);
    v54 = *(*v44 + 52);
    swift_deallocClassInstance();
    sub_227663F60();
    sub_227665F60();
    sub_2276671B0();
    sub_227667AB0();
    v55 = v84;
    sub_227667A80();
    v56 = __swift_project_boxed_opaque_existential_0(v97, *(v97 + 3));
    sub_22742F870(v55, *v56, v56[1], *(v56 + 16), v56[3]);
    v97 = sub_227232EB8(100);
    v83 = v49;

    v57 = v97 + 56;
    v58 = 1 << v97[32];
    v59 = -1;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    v60 = v59 & *(v97 + 7);
    v61 = (v58 + 63) >> 6;
    v62 = v95;
    v81 = v95 + 16;
    v82 = (v95 + 8);
    v63 = (v93 + 48);
    v79 = (v93 + 32);

    v64 = 0;
    v80 = MEMORY[0x277D84F90];
    v65 = v92;
    v66 = v85;
    for (i = v86; v60; i = v86)
    {
      v68 = v64;
LABEL_11:
      (*(v62 + 16))(v66, *(v97 + 6) + *(v62 + 72) * (__clz(__rbit64(v60)) | (v68 << 6)), i);
      sub_227176C50(v66, v83, v65);
      v60 &= v60 - 1;
      (*v82)(v66, i);
      if ((*v63)(v65, 1, v94) == 1)
      {
        sub_226E97D1C(v65, &qword_27D7BB958, qword_22767B490);
      }

      else
      {
        v69 = *v79;
        (*v79)(v89, v65, v94);
        v69(v90, v89, v94);
        v70 = v80;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_2273A694C(0, v70[2] + 1, 1, v70);
        }

        v72 = v70[2];
        v71 = v70[3];
        v73 = v72 + 1;
        v74 = v90;
        if (v72 >= v71 >> 1)
        {
          v76 = v70;
          v77 = v70[2];
          v80 = (v72 + 1);
          v78 = sub_2273A694C(v71 > 1, v73, 1, v76);
          v73 = v80;
          v72 = v77;
          v74 = v90;
          v70 = v78;
        }

        v70[2] = v73;
        v75 = (*(v93 + 80) + 32) & ~*(v93 + 80);
        v80 = v70;
        v69(v70 + v75 + *(v93 + 72) * v72, v74, v94);
      }

      v64 = v68;
      v62 = v95;
      v66 = v85;
    }

    while (1)
    {
      v68 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      if (v68 >= v61)
      {

        sub_22717B2F8(v84, MEMORY[0x277D530D0]);
        (*(v88 + 8))(v87, v96);

        *v91 = v80;
        return result;
      }

      v60 = v57[v68];
      ++v64;
      if (v60)
      {
        goto LABEL_11;
      }
    }

    __break(1u);

    (*v82)(v66, i);

    __break(1u);
  }

  return result;
}

uint64_t sub_227176C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22766B390();
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v6);
  v41 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227664530();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  v17 = sub_2276644D0();
  sub_22718C70C(v17, v18, a2);

  v19 = *(v10 + 16);
  v19(v16, a1, v9);
  v40 = a3;
  v20 = v39;
  sub_2276685E0();
  if (v20)
  {
    sub_22766A680();
    v19(v14, a1, v9);
    v21 = v20;
    v22 = sub_22766B380();
    v23 = sub_22766C8B0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v42 = v39;
      *v24 = 136315394;
      sub_22717B7C4(&qword_27D7B8C68, MEMORY[0x277D50978]);
      v25 = sub_22766D140();
      v27 = v26;
      (*(v10 + 8))(v14, v9);
      v28 = sub_226E97AE8(v25, v27, &v42);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      swift_getErrorValue();
      v29 = sub_22766D250();
      v31 = sub_226E97AE8(v29, v30, &v42);

      *(v24 + 14) = v31;
      _os_log_impl(&dword_226E8E000, v22, v23, "Failed to transform %s for personalization with error: %s", v24, 0x16u);
      v32 = v39;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v32, -1, -1);
      MEMORY[0x22AA9A450](v24, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v14, v9);
    }

    (*(v37 + 8))(v41, v38);
    v33 = 1;
  }

  else
  {
    v33 = 0;
  }

  v34 = sub_227668630();
  return (*(*(v34 - 8) + 56))(v40, v33, 1, v34);
}

uint64_t sub_22717705C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v181 = a2;
  v161 = a3;
  v165 = sub_22766B390();
  v162 = *(v165 - 8);
  v5 = *(v162 + 64);
  MEMORY[0x28223BE20](v165);
  v177 = &v150 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB958, qword_22767B490);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v176 = &v150 - v9;
  v179 = sub_227668630();
  v163 = *(v179 - 8);
  v10 = *(v163 + 64);
  v11 = MEMORY[0x28223BE20](v179);
  v160 = &v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v159 = &v150 - v13;
  v182 = sub_227664530();
  v180 = *(v182 - 8);
  v14 = v180[8];
  v15 = MEMORY[0x28223BE20](v182);
  v164 = &v150 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v178 = &v150 - v18;
  MEMORY[0x28223BE20](v17);
  v171 = &v150 - v19;
  v20 = sub_227667AE0();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = (&v150 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_227667AA0();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v173 = &v150 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_227665FB0();
  v174 = *(v175 - 8);
  v26 = *(v174 + 64);
  v27 = MEMORY[0x28223BE20](v175);
  v169 = &v150 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v172 = &v150 - v29;
  v167 = sub_227663FA0();
  v166 = *(v167 - 8);
  v30 = *(v166 + 64);
  MEMORY[0x28223BE20](v167);
  v183 = &v150 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = a1;
  v32 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v33 = *v32;
  v34 = v32[1];
  v35 = *(v32 + 16);
  v36 = v32[3];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  v40 = swift_allocObject();
  v41 = v33;
  v42 = v34;

  sub_22766A070();
  *(v40 + 16) = v41;
  *(v40 + 24) = v42;
  *(v40 + 32) = v35;
  *(v40 + 40) = v36;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9A0, &unk_2276795E0);
  v43 = swift_allocObject();
  v168 = xmmword_2276728D0;
  *(v43 + 16) = xmmword_2276728D0;
  *(v43 + 32) = sub_227664C10();
  *(v43 + 40) = v44;
  *(v43 + 48) = sub_227664C10();
  *(v43 + 56) = v45;
  v187[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v187[0] = v43;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v46 = sub_22766C820();
  sub_226E93170(v187, &v185, &unk_27D7BC990, &qword_227670A30);
  v47 = v186;
  if (v186)
  {
    v48 = __swift_project_boxed_opaque_existential_0(&v185, v186);
    v49 = *(v47 - 8);
    v50 = *(v49 + 64);
    MEMORY[0x28223BE20](v48);
    v52 = &v150 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v49 + 16))(v52);
    v53 = sub_22766D170();
    (*(v49 + 8))(v52, v47);
    __swift_destroy_boxed_opaque_existential_0(&v185);
  }

  else
  {
    v53 = 0;
  }

  v54 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

  sub_226E97D1C(v187, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v55 = sub_22766A080();
  v57 = v56;
  MEMORY[0x22AA985C0]();
  if (*((*v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v55(v187, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  v59 = sub_2273FC91C(KeyPath);
  if (v3)
  {

    swift_setDeallocating();

    v60 = *(v40 + 40);

    v61 = qword_2813B2078;
    v62 = sub_22766A100();
    (*(*(v62 - 8) + 8))(v40 + v61, v62);
    v63 = *(*v40 + 48);
    v64 = *(*v40 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v155 = sub_226F3E6A8(v59);

    swift_setDeallocating();

    v65 = *(v40 + 40);

    v66 = qword_2813B2078;
    v67 = sub_22766A100();
    v68 = *(v67 - 8);
    v69 = *(v68 + 8);
    v158 = v67;
    v157 = v69;
    v156 = (v68 + 8);
    v69(v40 + v66);
    v70 = *(*v40 + 48);
    v71 = *(*v40 + 52);
    swift_deallocClassInstance();
    v72 = v184;
    v73 = __swift_project_boxed_opaque_existential_0(v184, v184[3]);
    v74 = *v73;
    v75 = v73[1];
    v76 = *(v73 + 16);
    v77 = v73[3];
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB960, &qword_227675B20);
    v79 = *(v78 + 48);
    v80 = *(v78 + 52);
    v81 = swift_allocObject();
    v82 = v74;
    v83 = v75;

    sub_22766A070();
    *(v81 + 16) = v82;
    *(v81 + 24) = v83;
    *(v81 + 32) = v76;
    *(v81 + 40) = v77;
    v84 = swift_getKeyPath();
    v85 = sub_2273FC874(v84);
    v87 = v155;
    v88 = sub_226F3E6A8(v85);

    swift_setDeallocating();

    v89 = *(v81 + 40);

    v157(v81 + qword_2813B2078, v158);
    v90 = *(*v81 + 48);
    v91 = *(*v81 + 52);
    swift_deallocClassInstance();
    v92 = *__swift_project_boxed_opaque_existential_0((v181 + 296), *(v181 + 320));
    sub_226EAF48C(v72, v183);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9B0, &qword_227673180);
    v93 = *(sub_2276682D0() - 8);
    v94 = *(v93 + 72);
    v95 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v96 = swift_allocObject();
    *(v96 + 16) = v168;
    v181 = 0;
    *(v96 + v95) = v88;
    swift_storeEnumTagMultiPayload();
    *(v96 + v95 + v94) = v87;
    swift_storeEnumTagMultiPayload();
    sub_226F4F620(v96);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v97 = v183;
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_227670CD0;
    sub_227663F60();
    *(v98 + v95) = v99;
    swift_storeEnumTagMultiPayload();
    sub_226F4F620(v98);
    swift_setDeallocating();
    sub_22717B2F8(v98 + v95, MEMORY[0x277D53468]);
    swift_deallocClassInstance();
    v100 = v172;
    sub_227665F80();
    v101 = v174;
    v102 = v175;
    (*(v174 + 16))(v169, v100, v175);
    sub_2276671B0();
    sub_227667AB0();
    v103 = v173;
    sub_227667A80();
    v104 = __swift_project_boxed_opaque_existential_0(v184, v184[3]);
    sub_22742F870(v103, *v104, v104[1], *(v104 + 16), v104[3]);
    v105 = v181;
    v106 = sub_227232EB8(100);
    v181 = v105;
    if (v105)
    {

      sub_22717B2F8(v103, MEMORY[0x277D530D0]);
      (*(v101 + 8))(v100, v102);
      return (*(v166 + 8))(v97, v167);
    }

    else
    {
      v107 = v106;

      v108 = v107 + 56;
      v109 = 1 << v107[32];
      v110 = -1;
      if (v109 < 64)
      {
        v110 = ~(-1 << v109);
      }

      v111 = v110 & *(v107 + 7);
      v112 = (v109 + 63) >> 6;
      v113 = v180 + 2;
      v114 = (v180 + 1);
      v156 = (v162 + 8);
      v170 = (v163 + 56);
      v162 = v163 + 48;
      v151 = (v163 + 32);

      v115 = 0;
      v153 = MEMORY[0x277D84F90];
      *&v116 = 136315394;
      v152 = v116;
      v117 = v176;
      v118 = v171;
      *&v168 = v112;
      v184 = v107 + 56;
      v169 = v107;
      v157 = v113;
      v158 = v114;
      for (i = v182; v111; i = v182)
      {
        v120 = v115;
LABEL_17:
        v121 = *(v107 + 6) + v180[9] * (__clz(__rbit64(v111)) | (v120 << 6));
        v122 = v180[2];
        v122(v118, v121, i);
        v123 = v118;
        v122(v178, v118, i);
        v124 = v181;
        sub_2276685E0();
        if (v124)
        {
          v125 = v177;
          sub_22766A680();
          v126 = v164;
          v122(v164, v123, i);
          v127 = v124;
          v128 = sub_22766B380();
          v129 = sub_22766C8B0();

          if (os_log_type_enabled(v128, v129))
          {
            v130 = swift_slowAlloc();
            v181 = swift_slowAlloc();
            v187[0] = v181;
            *v130 = v152;
            sub_22717B7C4(&qword_27D7B8C68, MEMORY[0x277D50978]);
            v131 = sub_22766D140();
            v155 = v128;
            v132 = v131;
            v134 = v133;
            v135 = i;
            v154 = v129;
            v136 = *v158;
            (*v158)(v126, v135);
            v137 = sub_226E97AE8(v132, v134, v187);

            *(v130 + 4) = v137;
            *(v130 + 12) = 2080;
            swift_getErrorValue();
            v138 = sub_22766D250();
            v140 = sub_226E97AE8(v138, v139, v187);

            *(v130 + 14) = v140;
            v141 = v155;
            _os_log_impl(&dword_226E8E000, v155, v154, "Failed to transform %s for personalization with error: %s", v130, 0x16u);
            v142 = v181;
            swift_arrayDestroy();
            MEMORY[0x22AA9A450](v142, -1, -1);
            MEMORY[0x22AA9A450](v130, -1, -1);

            (*v156)(v177, v165);
          }

          else
          {

            v144 = i;
            v136 = *v158;
            (*v158)(v126, v144);
            (*v156)(v125, v165);
          }

          v117 = v176;
          v143 = v179;
          (*v170)(v176, 1, 1, v179);
          v181 = 0;
          v118 = v171;
        }

        else
        {
          v181 = 0;
          v143 = v179;
          (*v170)(v117, 0, 1, v179);
          v136 = *v158;
        }

        v108 = v184;
        v111 &= v111 - 1;
        v136(v118, v182);
        if ((*v162)(v117, 1, v143) == 1)
        {
          result = sub_226E97D1C(v117, &qword_27D7BB958, qword_22767B490);
          v115 = v120;
        }

        else
        {
          v145 = *v151;
          (*v151)(v159, v117, v143);
          v145(v160, v159, v143);
          v146 = v145;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v153 = sub_2273A694C(0, v153[2] + 1, 1, v153);
          }

          v148 = v153[2];
          v147 = v153[3];
          if (v148 >= v147 >> 1)
          {
            v153 = sub_2273A694C(v147 > 1, v148 + 1, 1, v153);
          }

          v149 = v153;
          v153[2] = v148 + 1;
          result = (v146)(v149 + ((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v163 + 72) * v148, v160, v179);
          v115 = v120;
          v117 = v176;
        }

        v107 = v169;
        v112 = v168;
      }

      while (1)
      {
        v120 = v115 + 1;
        if (__OFADD__(v115, 1))
        {
          break;
        }

        if (v120 >= v112)
        {

          sub_22717B2F8(v173, MEMORY[0x277D530D0]);
          (*(v174 + 8))(v172, v175);
          (*(v166 + 8))(v183, v167);

          *v161 = v153;
          return result;
        }

        v111 = v108[v120];
        ++v115;
        if (v111)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_227178508(uint64_t a1, uint64_t a2)
{
  v2[4] = a2;
  v3 = sub_22766AE90();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_227665D10();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = sub_227662750();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227178680, 0, 0);
}

uint64_t sub_227178680()
{
  v1 = v0[13];
  v2 = __swift_project_boxed_opaque_existential_0((v0[4] + 256), *(v0[4] + 280));
  v3 = sub_227666350();
  v4 = *v2;
  sub_227662740();
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_227178748;
  v6 = v0[13];

  return sub_2273A75C8(v3, v6);
}

uint64_t sub_227178748()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  v2[15] = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2271788FC, 0, 0);
  }

  else
  {
    v5 = v2[13];
    v6 = v2[10];
    v7 = v2[7];

    v8 = *(v4 + 8);

    return v8();
  }
}

uint64_t sub_2271788FC()
{
  v1 = *(v0 + 120);
  *(v0 + 16) = v1;
  v2 = (v0 + 16);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    v6 = (*(*(v0 + 72) + 88))(*(v0 + 80), *(v0 + 64));
    if (v6 == *MEMORY[0x277D51DE8] || v6 == *MEMORY[0x277D51DF0])
    {
      goto LABEL_9;
    }

    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  }

  v2 = (v0 + 24);
  v8 = *(v0 + 120);
  v9 = *(v0 + 56);
  v10 = *(v0 + 40);

  *(v0 + 24) = v8;
  v11 = v8;
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 48) + 88))(*(v0 + 56), *(v0 + 40)) == *MEMORY[0x277D4FB00])
    {
LABEL_9:

      v12 = *(v0 + 104);
      v13 = *(v0 + 80);
      v14 = *(v0 + 56);

      v15 = *(v0 + 8);
      goto LABEL_12;
    }

    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  }

  v16 = *(v0 + 120);
  v17 = *(v0 + 104);
  v18 = *(v0 + 80);
  v19 = *(v0 + 56);

  swift_willThrow();

  v15 = *(v0 + 8);
  v20 = *(v0 + 120);
LABEL_12:

  return v15();
}

uint64_t sub_227178B00(void **a1)
{
  v2 = *(sub_227664CA0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2271178C8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_227178BA8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_227178BA8(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_22766D130();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_227664CA0();
        v6 = sub_22766C380();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_227664CA0() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_227179074(v8, v9, a1, v4);
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
    return sub_227178CD4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_227178CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = sub_227662750();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v62);
  v61 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v43 - v12;
  v13 = sub_227664CA0();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v53 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v59 = &v43 - v18;
  result = MEMORY[0x28223BE20](v17);
  v58 = &v43 - v21;
  v45 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v55 = (v8 + 8);
    v56 = v24;
    v54 = (v23 - 8);
    v57 = v23;
    v26 = (v22 + v25 * (a3 - 1));
    v50 = -v25;
    v51 = (v23 + 16);
    v27 = a1 - a3;
    v52 = v22;
    v44 = v25;
    v28 = v22 + v25 * a3;
    v29 = v60;
LABEL_5:
    v48 = v26;
    v49 = a3;
    v46 = v28;
    v47 = v27;
    v63 = v27;
    while (1)
    {
      v30 = v58;
      v31 = v56;
      v56(v58, v28, v13);
      v32 = v13;
      v33 = v59;
      v31(v59, v26, v32);
      sub_227664C90();
      v34 = v61;
      sub_227664C90();
      v64 = sub_2276626B0();
      v35 = *v55;
      v36 = v34;
      v37 = v62;
      (*v55)(v36, v62);
      v35(v29, v37);
      v38 = *v54;
      v39 = v33;
      v13 = v32;
      (*v54)(v39, v32);
      result = v38(v30, v32);
      if ((v64 & 1) == 0)
      {
LABEL_4:
        a3 = v49 + 1;
        v26 = &v48[v44];
        v27 = v47 - 1;
        v28 = v46 + v44;
        if (v49 + 1 == v45)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v52)
      {
        break;
      }

      v40 = *v51;
      v41 = v53;
      (*v51)(v53, v28, v32);
      swift_arrayInitWithTakeFrontToBack();
      result = v40(v26, v41, v32);
      v26 += v50;
      v28 += v50;
      if (__CFADD__(v63++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_227179074(char **a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v139 = a1;
  v161 = sub_227662750();
  v8 = *(v161 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v161);
  v160 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v159 = &v135 - v12;
  v13 = sub_227664CA0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v16 = MEMORY[0x28223BE20](v13);
  v142 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v151 = &v135 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v158 = &v135 - v21;
  result = MEMORY[0x28223BE20](v20);
  v162 = &v135 - v23;
  v24 = *(a3 + 1);
  v147 = a3;
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_96:
    v13 = v26;
    v26 = *v139;
    if (!*v139)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v54 = v147;
    if ((result & 1) == 0)
    {
LABEL_128:
      result = sub_2271171D0(v13);
      v13 = result;
    }

    v164 = v13;
    v131 = *(v13 + 16);
    if (v131 >= 2)
    {
      while (*v54)
      {
        v132 = *(v13 + 16 * v131);
        v133 = *(v13 + 16 * (v131 - 1) + 40);
        sub_227179C74(*v54 + *(v14 + 9) * v132, *v54 + *(v14 + 9) * *(v13 + 16 * (v131 - 1) + 32), *v54 + *(v14 + 9) * v133, v26);
        if (v5)
        {
        }

        if (v133 < v132)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_2271171D0(v13);
        }

        if (v131 - 2 >= *(v13 + 16))
        {
          goto LABEL_122;
        }

        v134 = (v13 + 16 * v131);
        *v134 = v132;
        v134[1] = v133;
        v164 = v13;
        result = sub_227117144(v131 - 1);
        v13 = v164;
        v131 = *(v164 + 16);
        if (v131 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v135 = a4;
  v25 = 0;
  v155 = (v8 + 8);
  v156 = v14 + 16;
  v153 = (v14 + 32);
  v154 = v14 + 8;
  v26 = MEMORY[0x277D84F90];
  v157 = v13;
  v138 = v14;
  while (1)
  {
    v27 = v25 + 1;
    if (v25 + 1 >= v24)
    {
      v43 = v25 + 1;
      v54 = v147;
    }

    else
    {
      v148 = v24;
      v136 = v26;
      v137 = v5;
      v28 = v25;
      v140 = v25;
      v29 = *v147;
      v163 = v29;
      v30 = *(v14 + 9);
      v31 = (v29 + v30 * v27);
      v32 = v13;
      v33 = *(v14 + 2);
      (v33)(v162, v31, v13);
      v34 = v158;
      v149 = v33;
      (v33)(v158, v29 + v30 * v28, v32);
      v35 = v159;
      sub_227664C90();
      v36 = v160;
      sub_227664C90();
      LODWORD(v150) = sub_2276626B0();
      v37 = *v155;
      v38 = v36;
      v39 = v161;
      (*v155)(v38, v161);
      v146 = v37;
      (v37)(v35, v39);
      v40 = *(v138 + 1);
      v26 = v154;
      v40(v34, v32);
      v145 = v40;
      result = (v40)(v162, v32);
      v41 = v140 + 2;
      v152 = v30;
      v42 = v163 + v30 * (v140 + 2);
      while (1)
      {
        v43 = v148;
        if (v148 == v41)
        {
          break;
        }

        v44 = v157;
        v45 = v149;
        v149();
        v46 = v158;
        v45(v158, v31, v44);
        v47 = v159;
        sub_227664C90();
        v48 = v160;
        sub_227664C90();
        LOBYTE(v163) = sub_2276626B0() & 1;
        LODWORD(v163) = v163;
        v49 = v48;
        v50 = v161;
        v51 = v31;
        v52 = v146;
        (v146)(v49, v161);
        v52(v47, v50);
        v26 = v154;
        v53 = v145;
        (v145)(v46, v44);
        result = v53(v162, v44);
        ++v41;
        v42 += v152;
        v31 = &v152[v51];
        if ((v150 & 1) != v163)
        {
          v43 = v41 - 1;
          goto LABEL_9;
        }
      }

      v5 = v137;
      v54 = v147;
      v14 = v138;
      v13 = v157;
      v25 = v140;
      if ((v150 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v43 < v140)
      {
        goto LABEL_125;
      }

      if (v140 < v43)
      {
        v55 = v43;
        v56 = v152 * (v43 - 1);
        v57 = v43 * v152;
        v148 = v43;
        v58 = v140;
        v59 = v140 * v152;
        do
        {
          if (v58 != --v55)
          {
            v60 = *v54;
            if (!v60)
            {
              goto LABEL_131;
            }

            v61 = *v153;
            (*v153)(v142, v60 + v59, v13);
            if (v59 < v56 || v60 + v59 >= (v60 + v57))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v56)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v61)(v60 + v56, v142, v13);
            v54 = v147;
          }

          ++v58;
          v56 -= v152;
          v57 -= v152;
          v59 += v152;
        }

        while (v58 < v55);
        v5 = v137;
        v14 = v138;
        v26 = v136;
        v25 = v140;
        v43 = v148;
      }

      else
      {
LABEL_23:
        v26 = v136;
      }
    }

    v62 = *(v54 + 1);
    if (v43 < v62)
    {
      if (__OFSUB__(v43, v25))
      {
        goto LABEL_124;
      }

      if (v43 - v25 < v135)
      {
        if (__OFADD__(v25, v135))
        {
          goto LABEL_126;
        }

        if (v25 + v135 >= v62)
        {
          v63 = *(v54 + 1);
        }

        else
        {
          v63 = v25 + v135;
        }

        if (v63 < v25)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v43 != v63)
        {
          break;
        }
      }
    }

    v64 = v43;
    if (v43 < v25)
    {
      goto LABEL_123;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2273A4F9C(0, *(v26 + 2) + 1, 1, v26);
      v26 = result;
    }

    v66 = *(v26 + 2);
    v65 = *(v26 + 3);
    v67 = v66 + 1;
    v54 = v14;
    if (v66 >= v65 >> 1)
    {
      result = sub_2273A4F9C((v65 > 1), v66 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 2) = v67;
    v68 = &v26[16 * v66];
    *(v68 + 4) = v25;
    *(v68 + 5) = v64;
    v69 = *v139;
    if (!*v139)
    {
      goto LABEL_133;
    }

    v143 = v64;
    if (v66)
    {
      v14 = v69;
      while (1)
      {
        v70 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v71 = *(v26 + 4);
          v72 = *(v26 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_55:
          if (v74)
          {
            goto LABEL_112;
          }

          v87 = &v26[16 * v67];
          v89 = *v87;
          v88 = *(v87 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_115;
          }

          v93 = &v26[16 * v70 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_119;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              v70 = v67 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v97 = &v26[16 * v67];
        v99 = *v97;
        v98 = *(v97 + 1);
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_69:
        if (v92)
        {
          goto LABEL_114;
        }

        v100 = &v26[16 * v70];
        v102 = *(v100 + 4);
        v101 = *(v100 + 5);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_117;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_76:
        v108 = v70 - 1;
        if (v70 - 1 >= v67)
        {
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
          goto LABEL_127;
        }

        if (!*v147)
        {
          goto LABEL_130;
        }

        v109 = *&v26[16 * v108 + 32];
        v110 = *&v26[16 * v70 + 40];
        sub_227179C74(*v147 + *(v54 + 9) * v109, *v147 + *(v54 + 9) * *&v26[16 * v70 + 32], *v147 + *(v54 + 9) * v110, v14);
        if (v5)
        {
        }

        if (v110 < v109)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_2271171D0(v26);
        }

        if (v108 >= *(v26 + 2))
        {
          goto LABEL_109;
        }

        v111 = &v26[16 * v108];
        *(v111 + 4) = v109;
        *(v111 + 5) = v110;
        v164 = v26;
        result = sub_227117144(v70);
        v26 = v164;
        v67 = *(v164 + 16);
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = &v26[16 * v67 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_110;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_111;
      }

      v82 = &v26[16 * v67];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_113;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_116;
      }

      if (v86 >= v78)
      {
        v104 = &v26[16 * v70 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_120;
        }

        if (v73 < v107)
        {
          v70 = v67 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v24 = *(v147 + 1);
    v25 = v143;
    v14 = v54;
    if (v143 >= v24)
    {
      goto LABEL_96;
    }
  }

  v136 = v26;
  v137 = v5;
  v112 = *v54;
  v113 = *(v14 + 9);
  v152 = *(v14 + 2);
  v114 = (v112 + v113 * (v43 - 1));
  v149 = -v113;
  v140 = v25;
  v115 = (v25 - v43);
  v150 = v112;
  v141 = v113;
  v116 = v112 + v43 * v113;
  v143 = v63;
LABEL_87:
  v148 = v43;
  v144 = v116;
  v145 = v115;
  v117 = v116;
  v146 = v114;
  v118 = v114;
  while (1)
  {
    v54 = v162;
    v119 = v152;
    (v152)(v162, v117, v13);
    v120 = v158;
    v119(v158, v118, v13);
    v121 = v159;
    sub_227664C90();
    v122 = v160;
    sub_227664C90();
    LODWORD(v163) = sub_2276626B0();
    v123 = *v155;
    v124 = v122;
    v125 = v161;
    (*v155)(v124, v161);
    v126 = v121;
    v13 = v157;
    v123(v126, v125);
    v127 = *v154;
    (*v154)(v120, v13);
    result = v127(v54, v13);
    if ((v163 & 1) == 0)
    {
LABEL_86:
      v43 = v148 + 1;
      v114 = &v146[v141];
      v115 = v145 - 1;
      v64 = v143;
      v116 = v144 + v141;
      if (v148 + 1 != v143)
      {
        goto LABEL_87;
      }

      v5 = v137;
      v14 = v138;
      v26 = v136;
      v25 = v140;
      if (v143 < v140)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v150)
    {
      break;
    }

    v128 = *v153;
    v129 = v151;
    (*v153)(v151, v117, v13);
    swift_arrayInitWithTakeFrontToBack();
    v128(v118, v129, v13);
    v118 = v149 + v118;
    v117 += v149;
    if (__CFADD__(v115++, 1))
    {
      goto LABEL_86;
    }
  }

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
  return result;
}

uint64_t sub_227179C74(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v75 = a3;
  v70 = sub_227662750();
  v7 = *(v70 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v70);
  v69 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v68 = &v58 - v11;
  v74 = sub_227664CA0();
  v12 = *(v74 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v74);
  v67 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v72 = &v58 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v20 = v75 - a2;
  if (v75 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_62;
  }

  v21 = (a2 - a1) / v19;
  v78 = a1;
  v77 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v23;
    if (v23 >= 1)
    {
      v41 = -v19;
      v62 = (v7 + 8);
      v63 = (v12 + 16);
      v60 = a4;
      v61 = (v12 + 8);
      v42 = v40;
      v73 = a1;
      v64 = -v19;
      v43 = v74;
      while (2)
      {
        while (1)
        {
          v58 = v40;
          v44 = a2;
          v45 = a2 + v41;
          v65 = v44;
          v66 = v45;
          while (1)
          {
            v46 = v75;
            if (v44 <= a1)
            {
              v78 = v44;
              v76 = v58;
              goto LABEL_59;
            }

            v59 = v40;
            v75 += v41;
            v47 = v42 + v41;
            v48 = *v63;
            (*v63)();
            v49 = v67;
            (v48)(v67, v45, v43);
            v50 = v68;
            sub_227664C90();
            v51 = v69;
            sub_227664C90();
            v71 = sub_2276626B0();
            v52 = *v62;
            v53 = v51;
            v54 = v70;
            (*v62)(v53, v70);
            v52(v50, v54);
            v55 = *v61;
            (*v61)(v49, v43);
            v55(v72, v43);
            if (v71)
            {
              break;
            }

            v40 = v47;
            v56 = v60;
            if (v46 < v42 || v75 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v66;
              v41 = v64;
            }

            else
            {
              v45 = v66;
              v41 = v64;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v47;
            a1 = v73;
            v44 = v65;
            if (v47 <= v56)
            {
              a2 = v65;
              goto LABEL_58;
            }
          }

          v57 = v60;
          if (v46 < v65 || v75 >= v65)
          {
            break;
          }

          a2 = v66;
          a1 = v73;
          v40 = v59;
          v41 = v64;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_58;
          }
        }

        a2 = v66;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v73;
        v40 = v59;
        v41 = v64;
        if (v42 > v57)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v78 = a2;
    v76 = v40;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v66 = a4 + v22;
    v76 = a4 + v22;
    if (v22 >= 1 && a2 < v75)
    {
      v25 = *(v12 + 16);
      v62 = (v7 + 8);
      v63 = v25;
      v64 = v19;
      v65 = v12 + 16;
      v61 = (v12 + 8);
      v26 = v74;
      do
      {
        v73 = a1;
        v27 = v72;
        v28 = v63;
        (v63)(v72, a2, v26);
        v29 = v67;
        (v28)(v67, a4, v26);
        v30 = v68;
        sub_227664C90();
        v31 = v69;
        sub_227664C90();
        v71 = sub_2276626B0();
        v32 = a2;
        v33 = *v62;
        v34 = v31;
        v35 = a4;
        v36 = v70;
        (*v62)(v34, v70);
        v33(v30, v36);
        v37 = *v61;
        (*v61)(v29, v26);
        v37(v27, v26);
        if (v71)
        {
          v38 = v64;
          a2 = v32 + v64;
          v39 = v73;
          a4 = v35;
          if (v73 < v32 || v73 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v32;
          v38 = v64;
          a4 = v35 + v64;
          v39 = v73;
          if (v73 < v35 || v73 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v77 = a4;
        }

        a1 = v39 + v38;
        v78 = a1;
      }

      while (a4 < v66 && a2 < v75);
    }
  }

LABEL_59:
  sub_227117384(&v78, &v77, &v76);
  return 1;
}

uint64_t sub_22717A350@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  result = sub_227667710();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_22717A3A0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v38 = sub_227668EF0();
  v40 = *(v38 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_22766CD20();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v47 = MEMORY[0x277D84F90];
    sub_226F20188(0, v7 & ~(v7 >> 63), 0);
    v42 = v47;
    if (v41)
    {
      result = sub_22766CCD0();
    }

    else
    {
      v10 = -1 << *(a1 + 32);
      result = sub_22766CC90();
      v9 = *(a1 + 36);
    }

    v44 = result;
    v45 = v9;
    v46 = v41 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v36 = v7;
      v37 = v40 + 32;
      v12 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v12 = a1;
      }

      v34 = a1 + 56;
      v35 = v12;
      v32 = v2;
      v33 = a1 + 64;
      while (v11 < v7)
      {
        if (__OFADD__(v11++, 1))
        {
          goto LABEL_37;
        }

        v15 = v44;
        v16 = v45;
        v17 = v46;
        sub_2274DD7DC(v44, v45, v46, a1);

        sub_227668E90();
        v18 = v42;
        v47 = v42;
        v20 = *(v42 + 16);
        v19 = *(v42 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_226F20188(v19 > 1, v20 + 1, 1);
          v18 = v47;
        }

        *(v18 + 16) = v20 + 1;
        v21 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v42 = v18;
        result = (*(v40 + 32))(v18 + v21 + *(v40 + 72) * v20, v6, v38);
        if (v41)
        {
          if (!v17)
          {
            goto LABEL_42;
          }

          if (sub_22766CCF0())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v36;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB980, &qword_2276794C0);
          v13 = sub_22766C6A0();
          sub_22766CD70();
          result = v13(v43, 0);
          if (v11 == v7)
          {
LABEL_34:
            sub_226EB526C(v44, v45, v46);
            return v42;
          }
        }

        else
        {
          if (v17)
          {
            goto LABEL_43;
          }

          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v22 = 1 << *(a1 + 32);
          if (v15 >= v22)
          {
            goto LABEL_38;
          }

          v23 = v15 >> 6;
          v24 = *(v34 + 8 * (v15 >> 6));
          if (((v24 >> v15) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(a1 + 36) != v16)
          {
            goto LABEL_40;
          }

          v25 = v24 & (-2 << (v15 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v15 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v33 + 8 * v23);
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                result = sub_226EB526C(v15, v16, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_33;
              }
            }

            result = sub_226EB526C(v15, v16, 0);
          }

LABEL_33:
          v31 = *(a1 + 36);
          v44 = v22;
          v45 = v31;
          v46 = 0;
          v7 = v36;
          if (v11 == v36)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_22717A7A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(v2 + 24);
  v6 = *(v2 + 16);
  return sub_22728A0C4(v5, v3, v4, a2);
}

char *sub_22717A800@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = sub_22734441C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22717A860(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_22716CE00(a1);
}

uint64_t sub_22717A8FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_22716D4E4(a1);
}

uint64_t sub_22717A998(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22716D6AC(a1, v1);
}

uint64_t sub_22717AA34(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_22716D99C(a1);
}

uint64_t sub_22717AAD0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_22716EE78(a1);
}

uint64_t sub_22717AB6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_22716F700(a1);
}

uint64_t sub_22717AC08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_22716FCFC(a1);
}

uint64_t sub_22717ACC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8C0, &qword_22767F780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22717AD98()
{
  result = qword_28139B470;
  if (!qword_28139B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B470);
  }

  return result;
}

unint64_t sub_22717ADEC()
{
  result = qword_28139B468;
  if (!qword_28139B468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B468);
  }

  return result;
}

char *sub_22717AEA4@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_226EB16F8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22717AF00(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_227165380(a1, v1);
}

uint64_t sub_22717AF9C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_227165C00(a1);
}

uint64_t sub_22717B038(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_227166230(a1);
}

uint64_t sub_22717B0D4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227166528(a1, v1);
}

char *sub_22717B18C(void *a1)
{
  __swift_project_boxed_opaque_existential_0((v1 + 880), *(v1 + 904));
  v3 = off_283AA53C0;
  type metadata accessor for WorkoutPlanDataStore();
  return (v3)(a1);
}

uint64_t sub_22717B214(uint64_t a1)
{
  v4 = *(sub_227668F90() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_22715F6A4(a1, v6, v1 + v5);
}

uint64_t sub_22717B2F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22717B358(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226E93028;

  return sub_227171644(a1, v5, v4);
}

void sub_22717B40C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9F8, &unk_22767B6A0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_22717141C(v2, v3, v4);
}

uint64_t sub_22717B47C()
{
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9F8, &unk_22767B6A0) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9F8, &unk_22767B6A0);
  return sub_22766C430();
}

uint64_t sub_22717B5D8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2271706A8(a1, v1);
}

uint64_t sub_22717B6C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_22717B7C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22717B84C()
{
  v1 = sub_227669A70();
  v20 = *(v1 - 8);
  v2 = v20;
  v3 = *(v20 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v17 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  v24 = v6;
  v8 = *MEMORY[0x277D4EC18];
  v22 = *(v2 + 104);
  v22(v5, v8, v1);
  v16 = v2 + 104;
  swift_allocObject();
  v23 = v0;
  swift_weakInit();
  v21 = sub_227665100();
  swift_unknownObjectRetain_n();
  sub_227669EC0();

  v15 = *(v20 + 8);
  v15(v5, v1);
  swift_unknownObjectRelease();
  v24 = v6;
  v22(v5, *MEMORY[0x277D4E690], v1);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBA50, &qword_22767B740);
  v19 = sub_22717CB10();
  v18 = sub_22717CB94();
  v14[1] = ObjectType;
  sub_227669ED0();

  v14[0] = v1;
  v9 = v15;
  v15(v5, v1);
  swift_unknownObjectRelease();
  v24 = v6;
  v10 = v1;
  v11 = v22;
  v22(v5, *MEMORY[0x277D4EC58], v10);
  swift_allocObject();
  swift_weakInit();
  sub_227669EC0();

  v12 = v14[0];
  v9(v5, v14[0]);
  swift_unknownObjectRelease();
  v24 = v6;
  v11(v5, *MEMORY[0x277D4E798], v12);
  swift_allocObject();
  swift_weakInit();
  sub_227669ED0();

  v9(v5, v12);
  return swift_unknownObjectRelease();
}

uint64_t sub_22717BC9C(uint64_t a1, void *a2, uint64_t a3)
{
  v3[5] = a1;
  v3[6] = a3;
  v3[7] = *a2;
  return MEMORY[0x2822009F8](sub_22717BCC4, 0, 0);
}

uint64_t sub_22717BCC4()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[8] = *(Strong + 40);

    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_22717BE10;
    v4 = v0[7];
    v5 = v0[5];

    return sub_2271DEC38(v5, v4);
  }

  else
  {
    v7 = v0[5];
    v8 = sub_227665100();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_22717BE10()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22717BF4C, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_22717BF4C()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_22717BFB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_22717BFD0, 0, 0);
}

uint64_t sub_22717BFD0()
{
  v1 = *(v0 + 56);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 40);
    *(v0 + 64) = v3;

    v4 = v3[13];
    v5 = v3[14];
    __swift_project_boxed_opaque_existential_0(v3 + 10, v4);
    v6 = *(v5 + 24);
    v12 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 72) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBA50, &qword_22767B740);
    *v8 = v0;
    v8[1] = sub_22717C1B8;

    return (v12)(v0 + 40, sub_2271DEA24, 0, v9, v4, v5);
  }

  else
  {
    **(v0 + 48) = 0;
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_22717C1B8()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_22717BF4C;
  }

  else
  {
    v3 = sub_22717C2CC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22717C2CC()
{
  v1 = *(v0 + 64);

  **(v0 + 48) = *(v0 + 40);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22717C338(uint64_t a1, void *a2, uint64_t a3)
{
  v3[5] = a1;
  v3[6] = a3;
  v3[7] = *a2;
  return MEMORY[0x2822009F8](sub_22717C360, 0, 0);
}

uint64_t sub_22717C360()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[8] = *(Strong + 40);

    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_22717C4A0;

    return sub_2271DFCB0();
  }

  else
  {
    v5 = v0[5];
    v6 = sub_227665100();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22717C4A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *v2;
  v3[10] = a1;
  v3[11] = v1;

  if (v1)
  {
    v6 = v3[8];

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22717C5F0, 0, 0);
  }
}

uint64_t sub_22717C5F0()
{
  v1 = v0[11];
  v2 = v0[8];
  sub_2271DF5E0(v0[7], v0[10], v0[5]);
  v3 = v0[10];
  if (v1)
  {

    v4 = v0[8];
  }

  else
  {
    v6 = v0[8];

    v7 = v0[5];
    v8 = sub_227665100();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_22717C6DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_22717C6FC, 0, 0);
}

uint64_t sub_22717C6FC()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(v0 + 56) = *(Strong + 40);

    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_22717C810;
    v4 = MEMORY[0x277D84F90];

    return sub_2271DD124(v4);
  }

  else
  {
    **(v0 + 40) = 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_22717C810(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_22700162C;
  }

  else
  {
    v8 = *(v4 + 56);

    *(v4 + 80) = a1;
    v7 = sub_22717C940;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22717C964()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_22717C9C8(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_22717BC9C(a1, a2, v2);
}

uint64_t sub_22717CA74(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22717BFB0(a1, v1);
}

unint64_t sub_22717CB10()
{
  result = qword_281398DA0;
  if (!qword_281398DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BBA50, &qword_22767B740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398DA0);
  }

  return result;
}

unint64_t sub_22717CB94()
{
  result = qword_281398D98;
  if (!qword_281398D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BBA50, &qword_22767B740);
    sub_22717CC18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D98);
  }

  return result;
}

unint64_t sub_22717CC18()
{
  result = qword_28139B858;
  if (!qword_28139B858)
  {
    sub_227665100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B858);
  }

  return result;
}

uint64_t sub_22717CC70(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E92F34;

  return sub_22717C338(a1, a2, v2);
}

uint64_t sub_22717CD1C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22717C6DC(a1, v1);
}

unint64_t sub_22717CDB8()
{
  v1 = v0;
  v2 = sub_227667DF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9558, &qword_227674778);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22767B770;
  *(inited + 32) = 0x6E6F697461727564;
  *(inited + 40) = 0xE800000000000000;
  v8 = *v0;
  *(inited + 48) = sub_22766C4E0();
  *(inited + 56) = 1701605234;
  *(inited + 64) = 0xE400000000000000;
  v9 = *(v0 + 16);
  v27[25] = v0[1];
  v28 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBA58, &unk_22767B7C0);
  sub_227663AD0();
  *(inited + 72) = sub_22766C750();
  *(inited + 80) = 0x774F656369766564;
  *(inited + 88) = 0xEB0000000072656ELL;
  v10 = type metadata accessor for GuestPairingAuthenticatorAnalyticsEvent();
  (*(v3 + 16))(v6, v1 + v10[6], v2);
  v11 = (*(v3 + 88))(v6, v2);
  if (v11 == *MEMORY[0x277D53370] || v11 == *MEMORY[0x277D53378] || v11 != *MEMORY[0x277D53380] && v11 != *MEMORY[0x277D53360] && v11 != *MEMORY[0x277D53368])
  {
    (*(v3 + 8))(v6, v2);
  }

  v12 = sub_22766BFD0();

  *(inited + 96) = v12;
  *(inited + 104) = 0xD000000000000012;
  *(inited + 112) = 0x8000000227699F70;
  v13 = *(v1 + v10[7]);
  sub_227668DC0();
  *(inited + 120) = sub_22766C750();
  *(inited + 128) = 0x646F43726F727265;
  *(inited + 136) = 0xE900000000000065;
  v14 = *(v1 + v10[8]);
  if (v14)
  {
    swift_getErrorValue();
    sub_22766D2C0();
    v15 = sub_22766BFD0();

    *(inited + 144) = v15;
    *(inited + 152) = 0x6D6F44726F727265;
    *(inited + 160) = 0xEB000000006E6961;
    swift_getErrorValue();
    sub_22766D2D0();
  }

  else
  {
    v16 = sub_22766BFD0();

    *(inited + 144) = v16;
    *(inited + 152) = 0x6D6F44726F727265;
    *(inited + 160) = 0xEB000000006E6961;
  }

  v17 = sub_22766BFD0();

  *(inited + 168) = v17;
  *(inited + 176) = 0xD000000000000013;
  *(inited + 184) = 0x8000000227696560;
  if (v14)
  {
    swift_getErrorValue();
    v18 = sub_22766D260();
    if (v18)
    {
      v19 = v18;
      swift_getErrorValue();
      sub_22766D2C0();
    }

    v21 = sub_22766BFD0();

    *(inited + 192) = v21;
    *(inited + 200) = 0xD000000000000015;
    *(inited + 208) = 0x8000000227696580;
    swift_getErrorValue();
    v22 = sub_22766D260();
    if (v22)
    {
      v23 = v22;
      swift_getErrorValue();
      sub_22766D2D0();
    }
  }

  else
  {
    v20 = sub_22766BFD0();

    *(inited + 192) = v20;
    *(inited + 200) = 0xD000000000000015;
    *(inited + 208) = 0x8000000227696580;
  }

  v24 = sub_22766BFD0();

  *(inited + 216) = v24;
  v25 = sub_227148D24(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9560, &qword_227674780);
  swift_arrayDestroy();
  return v25;
}

uint64_t type metadata accessor for GuestPairingAuthenticatorAnalyticsEvent()
{
  result = qword_27D7BBA60;
  if (!qword_27D7BBA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22717D3C0()
{
  sub_22717D474();
  if (v0 <= 0x3F)
  {
    sub_227667DF0();
    if (v1 <= 0x3F)
    {
      sub_22717D524();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22717D474()
{
  if (!qword_27D7BBA70)
  {
    sub_22717D4D0();
    v0 = sub_227663B70();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7BBA70);
    }
  }
}

unint64_t sub_22717D4D0()
{
  result = qword_27D7BBA78;
  if (!qword_27D7BBA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BBA78);
  }

  return result;
}

void sub_22717D524()
{
  if (!qword_27D7BBA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BA3C0, &qword_2276709C0);
    v0 = sub_22766CB90();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7BBA80);
    }
  }
}

uint64_t sub_22717D588()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226E96C50(v4);

    v6 = sub_227669290();
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    v6(sub_226E9F7B0, v7);

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

void sub_22717D764(void *a1)
{
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  v6 = *(v2 + 16);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB428, &qword_22767A998);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v3;
  v12 = v4;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v6;
  *(v10 + 40) = v5;
  v13 = qword_2813B2078;
  swift_beginAccess();
  v14 = sub_226ED811C(v10 + v13, v6, v5);
  if (v14)
  {
    if (v14 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_5;
  }

  v15 = sub_226EB0E3C(0);
  if (v1)
  {
LABEL_5:

    return;
  }

  v16 = v15;
  [v15 setResultType_];
  sub_226ED9864();
  v17 = sub_22766C9E0();
  v18 = sub_226EDAB24(v17);

  sub_226EDAB78(v18, v12);
}

size_t static ScoreSummary.representativeSamples()()
{
  v20 = sub_227663C10();
  v0 = *(v20 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v20);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F05E24();
  v4 = sub_22766CFA0();
  v38 = &unk_283A93AF8;
  v39[0] = v4;
  v39[1] = v39;
  v39[2] = &v38;
  v36 = &unk_283A93B48;
  v37 = &unk_283A93B20;
  v39[3] = &v37;
  v39[4] = &v36;
  v34 = &unk_283A93B98;
  v35 = &unk_283A93B70;
  v39[5] = &v35;
  v39[6] = &v34;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBA88, &qword_22767B878);
  v30 = v29;
  v31 = v29;
  v32 = v29;
  v33 = v29;
  v22 = sub_226F5BF60(&qword_27D7B8510, &qword_27D7B96F0, qword_227674920);
  v23 = sub_226F5BF60(&qword_27D7BBA90, &qword_27D7BBA88, &qword_22767B878);
  v24 = v23;
  v25 = v23;
  v26 = v23;
  v27 = v23;
  v5 = sub_2276638E0();

  v6 = *(v5 + 16);
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    result = sub_226F201A8(0, v6, 0);
    v8 = 0;
    v9 = v21;
    v10 = (v5 + 56);
    while (v8 < *(v5 + 16))
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 4);
      v13 = *(v10 - 3);
      v14 = *(v10 - 2);
      v15 = *(v10 - 1);
      v16 = *v10;
      sub_227663BF0();
      v21 = v9;
      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_226F201A8(v17 > 1, v18 + 1, 1);
        v9 = v21;
      }

      ++v8;
      *(v9 + 16) = v18 + 1;
      result = (*(v0 + 32))(v9 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v18, v3, v20);
      v10 += 8;
      if (v6 == v8)
      {

        return v9;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_22717DC48(void *a1)
{
  [a1 elapsedSeconds];
  [a1 personalScore];
  [a1 communityLowerScore];
  [a1 communityLowerMiddleScore];
  [a1 communityUpperMiddleScore];
  [a1 communityUpperScore];
  sub_227663BF0();
}

unint64_t sub_22717DD4C(uint64_t a1)
{
  result = sub_22717DD74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22717DD74()
{
  result = qword_27D7BBA98;
  if (!qword_27D7BBA98)
  {
    sub_227663C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BBA98);
  }

  return result;
}

id sub_22717DDCC(void *a1)
{
  v2 = sub_227663C00();
  v3 = 0x7FFFFFFFLL;
  if (v2 < 0x7FFFFFFF)
  {
    v3 = v2;
  }

  if (v3 <= 0xFFFFFFFF80000000)
  {
    v4 = 0xFFFFFFFF80000000;
  }

  else
  {
    v4 = v3;
  }

  [a1 setElapsedSeconds_];
  sub_227663BE0();
  [a1 setPersonalScore_];
  sub_227663BA0();
  [a1 setCommunityLowerScore_];
  sub_227663BC0();
  [a1 setCommunityLowerMiddleScore_];
  sub_227663BD0();
  [a1 setCommunityUpperMiddleScore_];
  sub_227663BB0();

  return [a1 setCommunityUpperScore_];
}

uint64_t sub_22717DFA0(uint64_t a1)
{
  v3 = sub_227663480();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v38 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v32 - v8;
  v10 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v32[1] = v1;
    v45 = MEMORY[0x277D84F90];
    v39 = v7;
    sub_226F1F568(0, v10, 0);
    v12 = v39;
    v13 = -1 << *(a1 + 32);
    v43 = a1 + 56;
    v44 = v45;
    result = sub_22766CC90();
    v14 = result;
    v15 = 0;
    v36 = v12 + 8;
    v37 = v12 + 16;
    v34 = v10;
    v35 = v12 + 32;
    v33 = a1 + 64;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      if ((*(v43 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_23;
      }

      v40 = v15;
      v41 = *(a1 + 36);
      v42 = v14 >> 6;
      v17 = *(v12 + 72);
      v18 = v38;
      (*(v12 + 16))(v38, *(a1 + 48) + v17 * v14, v3);
      sub_227663470();
      v12 = v39;
      (*(v39 + 8))(v18, v3);
      v19 = v44;
      v45 = v44;
      v20 = v9;
      v21 = a1;
      v23 = *(v44 + 16);
      v22 = *(v44 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_226F1F568(v22 > 1, v23 + 1, 1);
        v12 = v39;
        v19 = v45;
      }

      *(v19 + 16) = v23 + 1;
      v24 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v44 = v19;
      result = (*(v12 + 32))(v19 + v24 + v23 * v17, v20, v3);
      v16 = 1 << *(v21 + 32);
      if (v14 >= v16)
      {
        goto LABEL_24;
      }

      v25 = *(v43 + 8 * v42);
      if ((v25 & (1 << v14)) == 0)
      {
        goto LABEL_25;
      }

      a1 = v21;
      if (v41 != *(v21 + 36))
      {
        goto LABEL_26;
      }

      v26 = v25 & (-2 << (v14 & 0x3F));
      if (v26)
      {
        v16 = __clz(__rbit64(v26)) | v14 & 0x7FFFFFFFFFFFFFC0;
        v9 = v20;
      }

      else
      {
        v27 = v42 << 6;
        v28 = v42 + 1;
        v29 = (v33 + 8 * v42);
        v9 = v20;
        while (v28 < (v16 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_226EB526C(v14, v41, 0);
            v16 = __clz(__rbit64(v30)) + v27;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v14, v41, 0);
LABEL_19:
        v12 = v39;
      }

      v15 = v40 + 1;
      v14 = v16;
      if (v40 + 1 == v34)
      {
        return v44;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_22717E35C(uint64_t a1)
{
  v50 = sub_227663480();
  v2 = *(v50 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v50);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v45 = &v43 - v7;
  MEMORY[0x28223BE20](v6);
  v44 = &v43 - v8;
  v9 = *(a1 + 16);
  v55 = MEMORY[0x277D84F90];
  sub_226F1EF90(0, v9, 0);
  v10 = a1 + 56;
  v11 = v55;
  v12 = -1;
  v13 = -1 << *(a1 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(a1 + 56);
  v15 = (63 - v13) >> 6;
  v51 = a1;
  v52 = v2;
  v48 = v9;
  if (v9)
  {
    v46 = v2 + 8;
    v47 = v2 + 16;

    v16 = 0;
    v17 = 0;
    while (v14)
    {
      v18 = v11;
LABEL_11:
      v20 = v52;
      v21 = *(a1 + 48) + *(v52 + 72) * (__clz(__rbit64(v14)) | (v17 << 6));
      v22 = v49;
      v23 = v50;
      (*(v52 + 16))(v49, v21, v50);
      v24 = sub_2276633E0();
      v53 = v25;
      v54 = v24;
      (*(v20 + 8))(v22, v23);
      v11 = v18;
      v55 = v18;
      v27 = *(v18 + 16);
      v26 = *(v18 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_226F1EF90(v26 > 1, v27 + 1, 1);
        v11 = v55;
      }

      ++v16;
      v14 &= v14 - 1;
      *(v11 + 16) = v27 + 1;
      v28 = v11 + 16 * v27;
      v29 = v53;
      *(v28 + 32) = v54;
      *(v28 + 40) = v29;
      a1 = v51;
      if (v16 == v48)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {
        goto LABEL_29;
      }

      v14 = *(v10 + 8 * v19);
      ++v17;
      if (v14)
      {
        v18 = v11;
        v17 = v19;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v17 = 0;
LABEL_16:
    v30 = v52;
    v53 = v52 + 16;
    v48 = v52 + 8;
    v49 = (v52 + 32);
    if (!v14)
    {
      goto LABEL_18;
    }

    do
    {
      v54 = v11;
LABEL_22:
      v32 = *(a1 + 48) + *(v30 + 72) * (__clz(__rbit64(v14)) | (v17 << 6));
      v33 = v45;
      v34 = v50;
      (*(v30 + 16))(v45, v32, v50);
      v35 = v44;
      (*(v30 + 32))(v44, v33, v34);
      v36 = sub_2276633E0();
      v38 = v37;
      (*(v30 + 8))(v35, v34);
      v11 = v54;
      v55 = v54;
      v40 = *(v54 + 16);
      v39 = *(v54 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_226F1EF90(v39 > 1, v40 + 1, 1);
        v11 = v55;
      }

      v14 &= v14 - 1;
      *(v11 + 16) = v40 + 1;
      v41 = v11 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v38;
      a1 = v51;
      v30 = v52;
    }

    while (v14);
LABEL_18:
    while (1)
    {
      v31 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v31 >= v15)
      {

        return v11;
      }

      v14 = *(v10 + 8 * v31);
      ++v17;
      if (v14)
      {
        v54 = v11;
        v17 = v31;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_29:

  __break(1u);
  return result;
}

uint64_t sub_22717E740@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = sub_22707B578(a1);
  if (!v3)
  {
    v8 = result;
    sub_22707FCE8(a1);
    sub_22707D144(a1);
    v9 = sub_22707FF94(a1);
    sub_2270801E0(a1);
    v10 = *__swift_project_boxed_opaque_existential_0((a2 + 712), *(a2 + 736));
    v11 = sub_22717E35C(v9);
    sub_2272D752C(1, v11, a1);

    v12 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[3];
    v51 = *(v12 + 16);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE600, &qword_2276711C8);
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    v19 = swift_allocObject();
    v20 = v13;
    v21 = v14;

    sub_22766A070();
    *(v19 + 16) = v20;
    *(v19 + 24) = v21;
    *(v19 + 32) = v51;
    *(v19 + 40) = v15;
    v22 = qword_2813B2078;
    swift_beginAccess();
    v23 = sub_227542588(v19 + v22, v51, v15);
    if (v23)
    {
      if (v23 != 1)
      {
        swift_willThrow();

        swift_setDeallocating();
        v37 = qword_2813B2078;
        v38 = sub_22766A100();
        (*(*(v38 - 8) + 8))(v19 + v37, v38);
        v39 = *(*v19 + 48);
        v40 = *(*v19 + 52);
        return swift_deallocClassInstance();
      }
    }

    else
    {
      v45 = sub_2272846C4(0);
      [v45 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v52 = v45;
      v46 = sub_22766C9E0();
      v49 = sub_226EDAB24(v46);

      sub_226EDAB78(v49, v21);
    }

    v24 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[3];
    v28 = *(v24 + 16);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A8, &qword_227677A20);
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    v32 = swift_allocObject();
    v33 = v25;
    v34 = v26;

    sub_22766A070();
    *(v32 + 16) = v33;
    *(v32 + 24) = v34;
    *(v32 + 32) = v28;
    *(v32 + 40) = v27;
    v35 = qword_2813B2078;
    swift_beginAccess();
    v36 = sub_227542540(v32 + v35, v28, v27);
    if (!v36)
    {
      v47 = sub_22723D128(0);
      [v47 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v48 = sub_22766C9E0();
      v50 = sub_226EDAB24(v48);

      sub_226EDAB78(v50, v34);

      goto LABEL_10;
    }

    if (v36 == 1)
    {

LABEL_10:
      sub_2274B2754(v8);

      *a3 = v9;
      return result;
    }

    swift_willThrow();

    swift_setDeallocating();
    v41 = qword_2813B2078;
    v42 = sub_22766A100();
    (*(*(v42 - 8) + 8))(v32 + v41, v42);
    v43 = *(*v32 + 48);
    v44 = *(*v32 + 52);
    return swift_deallocClassInstance();
  }

  return result;
}

uint64_t sub_22717ED2C(uint64_t *a1, uint64_t a2)
{
  v38 = sub_227669B90();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_227663480();
  v7 = *(v43 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v43);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v34 = &v29 - v11;
  v12 = *a1;
  v13 = *(a2 + 736);
  v39 = a2;
  v14 = *__swift_project_boxed_opaque_existential_0((a2 + 712), v13);
  sub_2271D7EE8();
  v15 = *(v12 + 56);
  v30 = v12 + 56;
  v16 = 1 << *(v12 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v32 = (v4 + 8);
  v33 = v7 + 16;
  v36 = v7;
  v31 = v7 + 8;
  v40 = v12;

  for (i = 0; v18; result = (*(v24 + 8))(v25, v43))
  {
    v22 = i;
LABEL_9:
    v23 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v24 = v36;
    v25 = v34;
    (*(v36 + 16))(v34, *(v40 + 48) + *(v36 + 72) * (v23 | (v22 << 6)), v43);
    v26 = *(v39 + 536);
    v42 = *(v39 + 544);
    ObjectType = swift_getObjectType();
    sub_227663470();
    v27 = v37;
    sub_227669B80();
    v28 = v38;
    sub_2276699D0();
    (*v32)(v27, v28);
  }

  while (1)
  {
    v22 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
    }

    v18 = *(v30 + 8 * v22);
    ++i;
    if (v18)
    {
      i = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22717F068@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_227663180();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276625E0();
  result = sub_22707F154(a1, v12);
  if (!v3)
  {
    v14 = result;
    v15 = sub_22707B7C4(result, a1);
    v28 = v14;
    v29 = a1;
    v32 = a2;
    v33 = v15;
    v27 = a3;
    v35 = 0;
    v16 = v15 + 56;
    v17 = 1 << v15[32];
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v15 + 7);
    v20 = (v17 + 63) >> 6;
    v30 = v8 + 16;
    v31 = (v8 + 8);

    v21 = 0;
    for (i = 0; v19; v21 = v23)
    {
      v23 = v21;
LABEL_9:
      (*(v8 + 16))(v11, *(v33 + 6) + *(v8 + 72) * (__clz(__rbit64(v19)) | (v23 << 6)), v7);
      sub_22717F32C(&v35, v11, &v34);
      v19 &= v19 - 1;
      (*v31)(v11, v7);
      i = v34;
      v35 = v34;
    }

    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v20)
      {
        v24 = v33;

        v26 = v28;
        v25 = v29;
        sub_22707984C(v28, v29);
        sub_22707BC10(v26, v25);

        sub_2274B2754(v24);

        *v27 = i;
        return result;
      }

      v19 = *&v16[8 * v23];
      ++v21;
      if (v19)
      {
        goto LABEL_9;
      }
    }

    __break(1u);

    result = (*v31)(v11, v7);
    __break(1u);
  }

  return result;
}

uint64_t sub_22717F32C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v49 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v53 = &v45 - v9;
  v10 = sub_2276624A0();
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = *(v55 + 64);
  MEMORY[0x28223BE20](v10);
  v54 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227663180();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22766B390();
  v51 = *(v18 - 8);
  v19 = *(v51 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v48 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v45 - v22;
  v50 = *a1;
  sub_22766A6C0();
  v24 = *(v14 + 16);
  v52 = a2;
  v24(v17, a2, v13);
  v25 = sub_22766B380();
  v26 = sub_22766C8B0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v46 = v18;
    v28 = v27;
    v45 = swift_slowAlloc();
    v57 = v45;
    *v28 = 141558274;
    *(v28 + 4) = 1752392040;
    *(v28 + 12) = 2080;
    sub_227186290(&qword_28139BD48, MEMORY[0x277D4FCA8]);
    v29 = sub_22766D140();
    v47 = v3;
    v31 = v30;
    (*(v14 + 8))(v17, v13);
    v32 = sub_226E97AE8(v29, v31, &v57);
    v4 = v47;

    *(v28 + 14) = v32;
    _os_log_impl(&dword_226E8E000, v25, v26, "Deleting expired entry: %{mask.hash}s", v28, 0x16u);
    v33 = v45;
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x22AA9A450](v33, -1, -1);
    MEMORY[0x22AA9A450](v28, -1, -1);

    v34 = *(v51 + 8);
    v35 = v23;
    v36 = v46;
    v34(v35, v46);
  }

  else
  {

    (*(v14 + 8))(v17, v13);
    v34 = *(v51 + 8);
    v34(v23, v18);
    v36 = v18;
  }

  v37 = v53;
  sub_227663160();
  v39 = v55;
  v38 = v56;
  if ((*(v55 + 48))(v37, 1, v56) == 1)
  {
    result = sub_226E97D1C(v37, &unk_27D7BB570, &unk_227670FC0);
    v41 = v50;
LABEL_11:
    *v49 = v41;
    return result;
  }

  (*(v39 + 32))(v54, v37, v38);
  v42 = v48;
  sub_22766A6C0();
  sub_22766B370();
  v34(v42, v36);
  v43 = sub_227125FB4();
  if (v4)
  {

    v44 = 0;
  }

  else
  {
    v44 = v43;
  }

  result = (*(v39 + 8))(v54, v38);
  if (v44 < 0)
  {
    __break(1u);
  }

  else
  {
    v41 = v50 + v44;
    if (!__CFADD__(v50, v44))
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22717F88C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, objc_class *a5@<X4>, int a6@<W5>, uint64_t *a7@<X8>)
{
  LODWORD(v124) = a6;
  v117 = a4;
  v118 = a5;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *__swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520));
  result = sub_227393794(a3 & 1);
  if (!v7)
  {
    v114 = v19;
    v115 = result;
    v109 = v16;
    v110 = v13;
    v111 = v12;
    v112 = a2;
    v108 = a7;
    v116 = 0;
    v20 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(v20 + 16);
    v24 = v20[3];
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    v28 = swift_allocObject();
    v29 = v21;
    v30 = v22;

    sub_22766A070();
    *(v28 + 16) = v29;
    *(v28 + 24) = v30;
    *(v28 + 32) = v23;
    *(v28 + 40) = v24;
    swift_getKeyPath();
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v123 = v113;
    v121 = v117;
    v122 = v118;
    v31 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v32 = sub_22766C820();
    sub_226ED25F8(&v121, v119);
    v33 = v120;
    if (v120)
    {
      v34 = __swift_project_boxed_opaque_existential_0(v119, v120);
      v35 = *(v33 - 8);
      v36 = *(v35 + 64);
      MEMORY[0x28223BE20](v34);
      v38 = &v107 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v35 + 16))(v38);
      v39 = sub_22766D170();
      (*(v35 + 8))(v38, v33);
      __swift_destroy_boxed_opaque_existential_0(v119);
    }

    else
    {
      v39 = 0;
    }

    v40 = objc_opt_self();
    v41 = [v40 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
    v42 = [objc_allocWithZone(v118) initWithLeftExpression:v32 rightExpression:v41 modifier:0 type:4 options:0];

    sub_226E97D1C(&v121, &unk_27D7BC990, &qword_227670A30);
    v43 = qword_2813B2078;
    swift_beginAccess();
    v44 = v42;
    v45 = sub_22766A080();
    v47 = v46;
    MEMORY[0x22AA985C0]();
    if (*((*v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v45(&v121, 0);
    swift_endAccess();

    swift_getKeyPath();
    v48 = sub_227663450();
    v123 = MEMORY[0x277D83B88];
    v121 = v48;

    v124 = v31;
    v49 = sub_22766C820();
    sub_226ED25F8(&v121, v119);
    v50 = v120;
    if (v120)
    {
      v51 = __swift_project_boxed_opaque_existential_0(v119, v120);
      v117 = &v107;
      v52 = v43;
      v53 = v40;
      v54 = *(v50 - 8);
      v55 = *(v54 + 64);
      MEMORY[0x28223BE20](v51);
      v57 = &v107 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v54 + 16))(v57);
      v58 = sub_22766D170();
      (*(v54 + 8))(v57, v50);
      v40 = v53;
      v43 = v52;
      __swift_destroy_boxed_opaque_existential_0(v119);
    }

    else
    {
      v58 = 0;
    }

    v59 = [v40 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v60 = [objc_allocWithZone(v118) initWithLeftExpression:v49 rightExpression:v59 modifier:0 type:4 options:0];

    sub_226E97D1C(&v121, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v61 = v60;
    v62 = sub_22766A080();
    v64 = v63;
    MEMORY[0x22AA985C0]();
    if (*((*v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v105 = *((*v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v62(&v121, 0);
    swift_endAccess();

    swift_getKeyPath();
    v123 = v113;
    v121 = v115;
    v122 = v114;

    v65 = sub_22766C820();
    sub_226ED25F8(&v121, v119);
    v66 = v120;
    if (v120)
    {
      v67 = __swift_project_boxed_opaque_existential_0(v119, v120);
      v124 = v43;
      v68 = *(v66 - 8);
      v69 = *(v68 + 64);
      MEMORY[0x28223BE20](v67);
      v71 = &v107 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v68 + 16))(v71);
      v72 = sub_22766D170();
      (*(v68 + 8))(v71, v66);
      __swift_destroy_boxed_opaque_existential_0(v119);
    }

    else
    {
      v72 = 0;
    }

    v73 = [v40 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v74 = [objc_allocWithZone(v118) initWithLeftExpression:v65 rightExpression:v73 modifier:0 type:4 options:0];

    sub_226E97D1C(&v121, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v75 = v74;
    v76 = sub_22766A080();
    v78 = v77;
    MEMORY[0x22AA985C0]();
    if (*((*v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v106 = *((*v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v76(&v121, 0);
    swift_endAccess();

    v79 = v116;
    v80 = sub_2272328B8(100);
    if (v79)
    {
      swift_setDeallocating();

      v81 = *(v28 + 40);

      v82 = qword_2813B2078;
      v83 = sub_22766A100();
      (*(*(v83 - 8) + 8))(v28 + v82, v83);
      v84 = *(*v28 + 48);
      v85 = *(*v28 + 52);
      return swift_deallocClassInstance();
    }

    else
    {
      v86 = v80;
      swift_setDeallocating();

      v87 = *(v28 + 40);

      v88 = qword_2813B2078;
      v89 = sub_22766A100();
      (*(*(v89 - 8) + 8))(v28 + v88, v89);
      v90 = *(*v28 + 48);
      v91 = *(*v28 + 52);
      swift_deallocClassInstance();
      v92 = v109;
      sub_22766A6C0();

      v93 = sub_22766B380();
      v94 = sub_22766C8B0();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v121 = v96;
        *v95 = 141558274;
        *(v95 + 4) = 1752392040;
        *(v95 + 12) = 2080;
        sub_227663480();
        sub_227186290(&unk_2813A5800, MEMORY[0x277D4FF88]);
        v97 = sub_22766C610();
        v99 = sub_226E97AE8(v97, v98, &v121);

        *(v95 + 14) = v99;
        _os_log_impl(&dword_226E8E000, v93, v94, "Cancel - Found bundle requests: %{mask.hash}s", v95, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v96);
        MEMORY[0x22AA9A450](v96, -1, -1);
        MEMORY[0x22AA9A450](v95, -1, -1);
      }

      (*(v110 + 8))(v92, v111);
      v100 = *(*__swift_project_boxed_opaque_existential_0((v112 + 496), *(v112 + 520)) + 32);
      sub_2276696A0();
      v101 = v121;
      v102 = v122;

      v103 = sub_227185914(v86, v101, v102);

      swift_bridgeObjectRelease_n();
      v104 = sub_226F40934(v103);

      *v108 = v104;
    }
  }

  return result;
}

void sub_2271804AC(uint64_t a1, uint64_t a2)
{

  sub_2273CAE98(a1, a2);

  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v4 = sub_22766C950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0C8, qword_227677C60);
  sub_22718622C();
  sub_227669240();
}

uint64_t sub_227180570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v30 = a1;
  v32 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85C8, &qword_227679600);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v31 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v13 + 8))(v16, v12);
  v17 = v4[75];
  v18 = v4[76];
  __swift_project_boxed_opaque_existential_0(v4 + 72, v17);
  v19 = swift_allocObject();
  v19[2] = v30;
  v19[3] = a2;
  v19[4] = v4;

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85D0, &unk_227671060);
  sub_226ECF5D8(sub_2271860CC, v19, v17, v20, v18, v11);

  v21 = *__swift_project_boxed_opaque_existential_0(v4 + 12, v4[15]);
  v34[3] = type metadata accessor for AssetCancellationHandler();
  v34[4] = &off_283A96BC0;
  v34[0] = v21;
  sub_226E91B50(v34, v33);
  v22 = swift_allocObject();
  sub_226E92AB8(v33, v22 + 16);

  __swift_destroy_boxed_opaque_existential_0(v34);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_2271860EC;
  *(v23 + 24) = v22;
  v24 = v31;
  (*(v7 + 16))(v31, v11, v6);
  v25 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v26 = swift_allocObject();
  (*(v7 + 32))(v26 + v25, v24, v6);
  v27 = (v26 + ((v8 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_227186134;
  v27[1] = v23;
  sub_227669270();
  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_227180938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, size_t *a5@<X8>)
{
  v43 = a1;
  v44 = a4;
  v42 = a5;
  v7 = __swift_project_boxed_opaque_existential_0(a1, *(a1 + 24));
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v8;
  v17 = v9;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  swift_getKeyPath();
  v45[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v45[0] = a2;
  v45[1] = a3;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v18 = sub_22766C820();
  sub_226ED25F8(v45, v46);
  v19 = v47;
  if (v47)
  {
    v20 = __swift_project_boxed_opaque_existential_0(v46, v47);
    v21 = *(v19 - 8);
    v22 = *(v21 + 64);
    MEMORY[0x28223BE20](v20);
    v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24);
    v25 = sub_22766D170();
    (*(v21 + 8))(v24, v19);
    __swift_destroy_boxed_opaque_existential_0(v46);
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v27 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0 &qword_22767FF20))];

  sub_226E97D1C(v45, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v28 = v27;
  v29 = sub_22766A080();
  v31 = v30;
  MEMORY[0x22AA985C0]();
  if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v41 = *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v29(v45, 0);
  swift_endAccess();

  v32 = *__swift_project_boxed_opaque_existential_0((v44 + 176), *(v44 + 200));
  v33 = v48;
  v34 = sub_2272322B8(100);
  if (v33)
  {
  }

  v36 = sub_22707488C(v34, v43);

  v37 = *(v36 + 16);
  if (v37)
  {
    v38 = sub_2274CD768(*(v36 + 16), 0);
    v39 = *(sub_2276639B0() - 8);
    v40 = sub_2274CDD80(v45, (v38 + ((*(v39 + 80) + 32) & ~*(v39 + 80))), v37, v36);
    result = sub_226EBB21C();
    if (v40 == v37)
    {

      *v42 = v38;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    *v42 = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_227180DD0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  v11 = *(v7 + 8);
  v11(v10, v6);
  if (a1)
  {
    if (a1 == 1)
    {
      return sub_227180FDC(a2);
    }

    else
    {
      sub_22766A6C0();
      sub_22766B370();
      v11(v10, v6);
      v13 = v3[75];
      v14 = v3[76];
      __swift_project_boxed_opaque_existential_0(v3 + 72, v13);
      return sub_226ECF5D8(sub_2271825B8, 0, v13, MEMORY[0x277D84D38], v14, a2);
    }
  }

  else
  {
    *(swift_allocObject() + 16) = 0;
    return sub_227669280();
  }
}

uint64_t sub_227180FDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD400, qword_22767B9F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v23[0] = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v23 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  v14 = *(v10 + 8);
  v14(v13, v9);
  sub_22766A6C0();
  sub_22766B370();
  v14(v13, v9);
  v15 = v2[75];
  v16 = v2[76];
  __swift_project_boxed_opaque_existential_0(v2 + 72, v15);

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6C0, qword_227670F00);
  sub_226ECF5D8(sub_227186014, v2, v15, v17, v16, v8);

  v18 = v23[0];
  (*(v4 + 16))(v23[0], v8, v3);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  (*(v4 + 32))(v20 + v19, v18, v3);
  v21 = (v20 + ((v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_227185188;
  v21[1] = 0;
  sub_227669270();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_227181320@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  v11 = *(v7 + 8);
  v11(v10, v6);
  if (a1)
  {
    if (a1 == 1)
    {
      sub_22766A6C0();
      sub_22766B370();
      v11(v10, v6);
      v12 = v3[75];
      v13 = v3[76];
      __swift_project_boxed_opaque_existential_0(v3 + 72, v12);

      sub_226ECF5D8(sub_227181860, v3, v12, MEMORY[0x277D84D38], v13, a2);
    }

    else
    {
      return sub_22718153C(a2);
    }
  }

  else
  {
    *(swift_allocObject() + 16) = 0;
    return sub_227669280();
  }
}

uint64_t sub_22718153C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD970, &qword_227673C10);
  v3 = *(v24 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v24);
  v23 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  v13 = *(v9 + 8);
  v13(v12, v8);
  sub_22766A6C0();
  sub_22766B370();
  v13(v12, v8);
  v14 = *(v2 + 75);
  v15 = *(v2 + 76);
  __swift_project_boxed_opaque_existential_0(v2 + 72, v14);
  sub_226ECF5D8(sub_2271825B8, 0, v14, MEMORY[0x277D84D38], v15, v7);
  v17 = v23;
  v16 = v24;
  (*(v3 + 16))(v23, v7, v24);
  v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v19 = swift_allocObject();
  (*(v3 + 32))(v19 + v18, v17, v16);
  v20 = (v19 + ((v4 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_227185CBC;
  v20[1] = v2;

  sub_227669270();
  return (*(v3 + 8))(v7, v16);
}

uint64_t sub_22718187C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)@<X0>(uint64_t a1@<X8>)@<X1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v70 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD420, &qword_227679D40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v57 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v71 = *(v11 - 8);
  v72 = v11;
  v12 = v71[8];
  v13 = MEMORY[0x28223BE20](v11);
  v61 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v57 - v15;
  MEMORY[0x28223BE20](v14);
  v62 = &v57 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD970, &qword_227673C10);
  v68 = *(v18 - 8);
  v69 = v18;
  v67 = *(v68 + 64);
  v19 = MEMORY[0x28223BE20](v18);
  v66 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v64 = &v57 - v21;
  v65 = *a1;
  sub_227181F1C(v10);
  v22 = swift_allocObject();
  *(v22 + 16) = nullsub_1;
  *(v22 + 24) = 0;
  (*(v5 + 16))(v8, v10, v4);
  v23 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v24 = (v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v5 + 32))(v25 + v23, v8, v4);
  v26 = (v25 + v24);
  *v26 = sub_227185CEC;
  v26[1] = v22;
  v59 = v16;
  sub_227669270();
  (*(v5 + 8))(v10, v4);
  v27 = swift_allocObject();
  v27[2] = 0xD00000000000002ALL;
  v27[3] = 0x8000000227695BD0;
  v27[4] = 129;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_226F323BC;
  *(v28 + 24) = v27;
  v30 = v71;
  v29 = v72;
  v60 = v71[2];
  v31 = v61;
  v60(v61, v16, v72);
  v32 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v58 = v32;
  v33 = (v12 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v35 = v30[4];
  v35(v34 + v32, v31, v29);
  v36 = (v34 + v33);
  *v36 = sub_226F323DC;
  v36[1] = v28;
  v37 = v62;
  sub_227669270();
  v38 = v72;
  v39 = v71[1];
  v40 = v59;
  v39(v59, v72);
  v60(v40, v37, v38);
  v41 = swift_allocObject();
  v35(v41 + v58, v40, v38);
  v42 = (v41 + v33);
  v43 = v63;
  *v42 = sub_227185D44;
  v42[1] = v43;

  v44 = v64;
  sub_227669270();
  v39(v37, v38);
  v45 = swift_allocObject();
  *(v45 + 16) = v65;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_227185D74;
  *(v46 + 24) = v45;
  v47 = v68;
  v48 = v69;
  v49 = v66;
  v50 = v44;
  (*(v68 + 16))(v66, v44, v69);
  v51 = v47;
  v52 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v53 = (v67 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v51 + 32))(v54 + v52, v49, v48);
  v55 = (v54 + v53);
  *v55 = sub_227185D90;
  v55[1] = v46;
  sub_227669270();
  return (*(v51 + 8))(v50, v48);
}

uint64_t sub_227181F1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD420, &qword_227679D40);
  v3 = *(v42 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v42);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v41 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v43 = v41 - v10;
  MEMORY[0x28223BE20](v9);
  v44 = v41 - v11;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v13 + 8))(v16, v12);
  v17 = *(v2 + 75);
  v18 = *(v2 + 76);
  __swift_project_boxed_opaque_existential_0(v2 + 72, v17);

  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
  v41[0] = v8;
  sub_226ECF5D8(sub_226FBDF28, v2, v17, v51, v18, v8);

  v19 = swift_allocObject();
  *(v19 + 16) = sub_227185D98;
  *(v19 + 24) = v2;
  v20 = v3;
  v21 = v3 + 16;
  v22 = *(v3 + 16);
  v50 = v21;
  v23 = v42;
  v22(v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v42);
  v24 = v20;
  v25 = *(v20 + 80);
  v41[1] = v25;
  v26 = (v25 + 16) & ~v25;
  v49 = v26;
  v27 = (v4 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v48 = *(v24 + 32);
  v48(v28 + v26, v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
  v29 = (v28 + v27);
  *v29 = sub_227086814;
  v29[1] = v19;

  v30 = v43;
  sub_227669270();
  v31 = *(v24 + 8);
  v46 = v24 + 8;
  v47 = v31;
  v32 = v41[0];
  v31(v41[0], v23);
  v33 = swift_allocObject();
  *(v33 + 16) = sub_227185DC4;
  *(v33 + 24) = v2;
  v22(v32, v30, v23);
  v34 = swift_allocObject();
  v48(v34 + v49, v32, v23);
  v35 = (v34 + v27);
  *v35 = sub_227087D64;
  v35[1] = v33;

  v36 = v44;
  sub_227669270();
  v47(v30, v23);
  v37 = v36;
  v22(v30, v36, v23);
  v38 = swift_allocObject();
  v48(v38 + v49, v30, v23);
  v39 = (v38 + v27);
  *v39 = sub_227185DC8;
  v39[1] = v2;

  sub_227669270();
  return (v47)(v37, v23);
}

uint64_t sub_227182464@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v5 + 8))(v8, v4);
  v9 = a1[75];
  v10 = a1[76];
  __swift_project_boxed_opaque_existential_0(a1 + 72, v9);
  return sub_226ECF5D8(sub_2271825B8, 0, v9, MEMORY[0x277D84D38], v10, a2);
}

uint64_t sub_2271825B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a2;
  v3 = sub_227663180();
  v4 = *(v3 - 8);
  v63 = v3;
  v64 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v62 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8580, &qword_2276777B0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v8;
  v17 = v9;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  swift_getKeyPath();
  v18 = sub_227664570();
  v67[3] = MEMORY[0x277D83B88];
  v67[0] = v18;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v19 = sub_22766C820();
  sub_226ED25F8(v67, v65);
  v20 = v66;
  if (v66)
  {
    v21 = __swift_project_boxed_opaque_existential_0(v65, v66);
    v22 = *(v20 - 8);
    v23 = *(v22 + 64);
    MEMORY[0x28223BE20](v21);
    v25 = v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25);
    v26 = sub_22766D170();
    (*(v22 + 8))(v25, v20);
    __swift_destroy_boxed_opaque_existential_0(v65);
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v28 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8590 &unk_2276777E0))];

  sub_226E97D1C(v67, &unk_27D7BC990, &qword_227670A30);
  v29 = &qword_2813B2078;
  swift_beginAccess();
  v30 = v28;
  v31 = sub_22766A080();
  v33 = v32;
  MEMORY[0x22AA985C0]();
  if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_24:
    sub_22766C360();
  }

  sub_22766C3A0();
  (v31)(v67, 0);
  swift_endAccess();

  v34 = v68;
  v35 = sub_2272325B8(100);
  if (v34)
  {
    swift_setDeallocating();

    v36 = *(v15 + 40);

    v37 = *v29;
    v38 = sub_22766A100();
    (*(*(v38 - 8) + 8))(v15 + v37, v38);
    v39 = *(*v15 + 48);
    v40 = *(*v15 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v42 = v35;
    v58[1] = 0;
    swift_setDeallocating();

    v43 = *(v15 + 40);

    v44 = *v29;
    v45 = sub_22766A100();
    (*(*(v45 - 8) + 8))(v15 + v44, v45);
    v46 = *(*v15 + 48);
    v47 = *(*v15 + 52);
    swift_deallocClassInstance();
    v15 = (v42 + 56);
    v48 = 1 << v42[32];
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v29 = v49 & *(v42 + 7);
    v50 = (v48 + 63) >> 6;
    v60 = v64 + 8;
    v61 = v64 + 16;

    v51 = 0;
    v31 = 0;
    do
    {
      if (!v29)
      {
        while (1)
        {
          v52 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            break;
          }

          if (v52 >= v50)
          {
            goto LABEL_20;
          }

          v29 = *(v15 + 8 * v52);
          ++v51;
          if (v29)
          {
            v68 = v31;
            v51 = v52;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v68 = v31;
LABEL_16:
      v53 = v42;
      v54 = v63;
      v30 = v64;
      v55 = *(v42 + 6) + *(v64 + 72) * (__clz(__rbit64(v29)) | (v51 << 6));
      v56 = v62;
      (*(v64 + 16))(v62, v55, v63);
      v31 = sub_227663130();
      (*(v30 + 1))(v56, v54);
      if (v31 < 0)
      {
        goto LABEL_23;
      }

      v29 &= v29 - 1;
      v57 = __CFADD__(v68, v31);
      v31 += v68;
      v42 = v53;
    }

    while (!v57);
    __break(1u);
LABEL_20:

    *v59 = v31;
  }

  return result;
}

uint64_t sub_227182BF0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = v8;
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v38 - v9;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();

  v15 = sub_22766B380();
  v16 = sub_22766C8B0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v41 = v4;
    v18 = v17;
    v39 = swift_slowAlloc();
    v45 = v39;
    *v18 = 141558274;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2080;
    sub_2276639B0();
    v40 = v11;
    sub_227186290(&qword_28139BCA8, MEMORY[0x277D501C8]);
    v19 = sub_22766C610();
    v21 = sub_226E97AE8(v19, v20, &v45);
    v38 = v10;
    v22 = v21;

    *(v18 + 14) = v22;
    _os_log_impl(&dword_226E8E000, v15, v16, "Cache Delete - cancelling requests: %{mask.hash}s", v18, 0x16u);
    v23 = v39;
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x22AA9A450](v23, -1, -1);
    v24 = v18;
    v4 = v41;
    MEMORY[0x22AA9A450](v24, -1, -1);

    (*(v40 + 8))(v14, v38);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v25 = v2[75];
  v26 = v2[76];
  __swift_project_boxed_opaque_existential_0(v2 + 72, v25);
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  *(v27 + 24) = v2;

  v28 = v44;
  sub_226ECF5D8(sub_227185FF8, v27, v25, MEMORY[0x277D84F78] + 8, v26, v44);

  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_227086F08;
  *(v30 + 24) = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_227186304;
  *(v31 + 24) = v30;
  v32 = v43;
  (*(v5 + 16))(v43, v28, v4);
  v33 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v34 = (v42 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  (*(v5 + 32))(v35 + v33, v32, v4);
  v36 = (v35 + v34);
  *v36 = sub_2271862D8;
  v36[1] = v31;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
  sub_227669270();
  return (*(v5 + 8))(v28, v4);
}

uint64_t sub_2271830E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27[1] = a2;
  v27[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v5 = *(v27[0] - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v27[0]);
  v8 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v27 - v9;
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v12 + 8))(v15, v11);
  v16 = v3[75];
  v17 = v3[76];
  __swift_project_boxed_opaque_existential_0(v3 + 72, v16);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v3;

  sub_226ECF5D8(sub_227185E00, v18, v16, MEMORY[0x277D84F78] + 8, v17, v10);

  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_2271862F4;
  *(v20 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_227186304;
  *(v21 + 24) = v20;
  v22 = v27[0];
  (*(v5 + 16))(v8, v10, v27[0]);
  v23 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v24 = swift_allocObject();
  (*(v5 + 32))(v24 + v23, v8, v22);
  v25 = (v24 + ((v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_2271862D8;
  v25[1] = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
  sub_227669270();
  return (*(v5 + 8))(v10, v22);
}

uint64_t sub_227183480@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22766B390();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v38 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v16 = *a1;
  v17 = *(*a1 + 16);
  if (!v17)
  {
    v18 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v30 = a2;
  v31 = v12;
  v32 = v11;
  v33 = &v30 - v14;
  v34 = v10;
  v35 = a3;
  v18 = sub_2274CD768(v17, 0);
  v19 = *(sub_2276639B0() - 8);
  v20 = sub_2274CDD80(&v39, (v18 + ((*(v19 + 80) + 32) & ~*(v19 + 80))), v17, v16);

  result = sub_226EBB21C();
  if (v20 == v17)
  {
    v10 = v34;
    v11 = v32;
    v15 = v33;
    a2 = v30;
    v12 = v31;
LABEL_5:
    sub_22766A6C0();
    sub_22766B370();
    (*(v36 + 8))(v9, v37);
    v22 = *__swift_project_boxed_opaque_existential_0((a2 + 96), *(a2 + 120));
    sub_226F29A00(v18, v15);

    v23 = swift_allocObject();
    *(v23 + 16) = v16;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_2271862F4;
    *(v24 + 24) = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_227086F10;
    *(v25 + 24) = v24;
    v26 = v38;
    (*(v11 + 16))(v38, v15, v10);
    v27 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v28 = swift_allocObject();
    (*(v11 + 32))(v28 + v27, v26, v10);
    v29 = (v28 + ((v12 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v29 = sub_227185DD0;
    v29[1] = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
    sub_227669270();
    return (*(v11 + 8))(v15, v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_227183890(void *a1, uint64_t a2, uint64_t a3)
{
  v105 = a3;
  v115 = sub_227663480();
  v108 = *(v115 - 8);
  v5 = *(v108 + 64);
  v6 = MEMORY[0x28223BE20](v115);
  v100 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v106 = &v99 - v8;
  v107 = a1;
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  v13 = v9[3];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = v10;
  v19 = v11;

  sub_22766A070();
  *(v17 + 16) = v18;
  *(v17 + 24) = v19;
  *(v17 + 32) = v12;
  *(v17 + 40) = v13;
  swift_getKeyPath();
  v20 = sub_227185E1C(a2);
  v21 = sub_227230638(v20);

  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v113[0] = v21;
  v22 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v110 = v22;
  v23 = sub_22766C820();
  sub_226ED25F8(v113, v111);
  v24 = v112;
  if (v112)
  {
    v25 = __swift_project_boxed_opaque_existential_0(v111, v112);
    v26 = *(v24 - 8);
    v27 = *(v26 + 64);
    MEMORY[0x28223BE20](v25);
    v29 = &v99 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v29);
    v30 = sub_22766D170();
    (*(v26 + 8))(v29, v24);
    __swift_destroy_boxed_opaque_existential_0(v111);
  }

  else
  {
    v30 = 0;
  }

  i = objc_opt_self();
  v31 = [i expressionForConstantValue_];
  swift_unknownObjectRelease();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
  [objc_allocWithZone(v32) initWithLeftExpression:v23 rightExpression:v31 modifier:0 type:10 options:0];

  sub_226E97D1C(v113, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v33 = sub_22766A080();
  v35 = v34;
  MEMORY[0x22AA985C0]();
  if (*((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    sub_22766C3A0();
    v33(v113, 0);
    swift_endAccess();

    swift_getKeyPath();
    v36 = sub_227663450();
    v114 = MEMORY[0x277D83B88];
    v113[0] = v36;

    v37 = sub_22766C820();
    sub_226ED25F8(v113, v111);
    v38 = v112;
    if (v112)
    {
      v39 = __swift_project_boxed_opaque_existential_0(v111, v112);
      v103 = &v99;
      v40 = v32;
      v41 = *(v38 - 8);
      v42 = *(v41 + 64);
      MEMORY[0x28223BE20](v39);
      v44 = &v99 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v41 + 16))(v44);
      v45 = sub_22766D170();
      (*(v41 + 8))(v44, v38);
      v32 = v40;
      __swift_destroy_boxed_opaque_existential_0(v111);
    }

    else
    {
      v45 = 0;
    }

    v46 = [i expressionForConstantValue_];
    swift_unknownObjectRelease();
    v47 = [objc_allocWithZone(v32) initWithLeftExpression:v37 rightExpression:v46 modifier:0 type:4 options:0];

    sub_226E97D1C(v113, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v48 = v47;
    v49 = sub_22766A080();
    v51 = v50;
    MEMORY[0x22AA985C0]();
    if (*((*v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v97 = *((*v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v49(v113, 0);
    swift_endAccess();

    swift_getKeyPath();
    v52 = sub_227664570();
    v114 = MEMORY[0x277D83B88];
    v113[0] = v52;

    v53 = sub_22766C820();
    sub_226ED25F8(v113, v111);
    v54 = v112;
    if (v112)
    {
      v55 = __swift_project_boxed_opaque_existential_0(v111, v112);
      v110 = &v99;
      v56 = v32;
      v57 = *(v54 - 8);
      v58 = *(v57 + 64);
      MEMORY[0x28223BE20](v55);
      v60 = &v99 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v57 + 16))(v60);
      v61 = sub_22766D170();
      (*(v57 + 8))(v60, v54);
      v32 = v56;
      __swift_destroy_boxed_opaque_existential_0(v111);
    }

    else
    {
      v61 = 0;
    }

    v62 = [i expressionForConstantValue_];
    swift_unknownObjectRelease();
    v63 = [objc_allocWithZone(v32) initWithLeftExpression:v53 rightExpression:v62 modifier:0 type:4 options:0];

    sub_226E97D1C(v113, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v64 = v63;
    v65 = sub_22766A080();
    v67 = v66;
    MEMORY[0x22AA985C0]();
    if (*((*v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v98 = *((*v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v65(v113, 0);
    swift_endAccess();

    v68 = v104;
    v69 = sub_2272328B8(100);
    v33 = v68;
    if (v68)
    {
      break;
    }

    v76 = v69;
    swift_setDeallocating();

    v77 = *(v17 + 40);

    v78 = qword_2813B2078;
    v79 = sub_22766A100();
    (*(*(v79 - 8) + 8))(v17 + v78, v79);
    v80 = *(*v17 + 48);
    v81 = *(*v17 + 52);
    swift_deallocClassInstance();
    v82 = v76;
    v83 = 0;
    v84 = v76 + 56;
    v85 = 1 << v76[32];
    v86 = -1;
    if (v85 < 64)
    {
      v86 = ~(-1 << v85);
    }

    v17 = v86 & *(v76 + 7);
    v87 = (v85 + 63) >> 6;
    v102 = v108 + 32;
    v103 = (v108 + 16);
    v104 = (v108 + 8);
    v101 = xmmword_227670CD0;
    v88 = v100;
    for (i = v76; v17; v82 = i)
    {
      v32 = v83;
LABEL_24:
      v89 = v108;
      v90 = v106;
      v91 = v115;
      (*(v108 + 16))(v106, *(v82 + 6) + *(v108 + 72) * (__clz(__rbit64(v17)) | (v32 << 6)), v115);
      (*(v89 + 32))(v88, v90, v91);
      v92 = sub_2276633E0();
      v93 = v107;
      sub_2270781A4(v92, v94, v107);

      v110 = *__swift_project_boxed_opaque_existential_0((v105 + 712), *(v105 + 736));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
      v95 = swift_allocObject();
      *(v95 + 16) = v101;
      *(v95 + 32) = sub_2276633E0();
      *(v95 + 40) = v96;
      sub_2272D752C(1, v95, v93);
      v33 = 0;
      v17 &= v17 - 1;

      (*v104)(v88, v115);
      v83 = v32;
    }

    while (1)
    {
      v32 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        break;
      }

      if (v32 >= v87)
      {
      }

      v17 = *&v84[8 * v32];
      ++v83;
      if (v17)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    sub_22766C360();
  }

  swift_setDeallocating();

  v70 = *(v17 + 40);

  v71 = qword_2813B2078;
  v72 = sub_22766A100();
  (*(*(v72 - 8) + 8))(v17 + v71, v72);
  v73 = *(*v17 + 48);
  v74 = *(*v17 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_2271844B8(void *a1, uint64_t a2)
{
  v106 = sub_22766B390();
  v99 = *(v106 - 8);
  v4 = *(v99 + 64);
  MEMORY[0x28223BE20](v106);
  v105 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227663480();
  v107 = *(v6 - 8);
  v108 = v6;
  v7 = *(v107 + 64);
  MEMORY[0x28223BE20](v6);
  v97 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v109 = a1;
  v10 = __swift_project_boxed_opaque_existential_0(a1, v9);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 16);
  v14 = v10[3];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = v11;
  v20 = v12;

  sub_22766A070();
  *(v18 + 16) = v19;
  *(v18 + 24) = v20;
  *(v18 + 32) = v13;
  *(v18 + 40) = v14;
  swift_getKeyPath();
  v21 = sub_227185E1C(a2);
  v22 = sub_227230638(v21);

  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v113[0] = v22;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v23 = sub_22766C820();
  sub_226ED25F8(v113, v111);
  v24 = v112;
  if (v112)
  {
    v25 = __swift_project_boxed_opaque_existential_0(v111, v112);
    v26 = *(v24 - 8);
    v27 = *(v26 + 64);
    MEMORY[0x28223BE20](v25);
    v29 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v29);
    v30 = sub_22766D170();
    (*(v26 + 8))(v29, v24);
    __swift_destroy_boxed_opaque_existential_0(v111);
  }

  else
  {
    v30 = 0;
  }

  v115 = objc_opt_self();
  v31 = [v115 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
  [objc_allocWithZone(v110) initWithLeftExpression:v23 rightExpression:v31 modifier:0 type:10 options:0];

  sub_226E97D1C(v113, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v32 = sub_22766A080();
  v34 = v33;
  MEMORY[0x22AA985C0]();
  if (*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    sub_22766C3A0();
    v32(v113, 0);
    swift_endAccess();

    swift_getKeyPath();
    v35 = sub_227663450();
    v114 = MEMORY[0x277D83B88];
    v113[0] = v35;

    v36 = sub_22766C820();
    sub_226ED25F8(v113, v111);
    v37 = v112;
    if (v112)
    {
      v38 = __swift_project_boxed_opaque_existential_0(v111, v112);
      v103 = &v96;
      v39 = *(v37 - 8);
      v40 = *(v39 + 64);
      MEMORY[0x28223BE20](v38);
      v42 = &v96 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v39 + 16))(v42);
      v43 = sub_22766D170();
      (*(v39 + 8))(v42, v37);
      __swift_destroy_boxed_opaque_existential_0(v111);
    }

    else
    {
      v43 = 0;
    }

    v44 = [v115 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v45 = [objc_allocWithZone(v110) initWithLeftExpression:v36 rightExpression:v44 modifier:0 type:4 options:0];

    sub_226E97D1C(v113, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v46 = v45;
    v47 = sub_22766A080();
    v49 = v48;
    MEMORY[0x22AA985C0]();
    if (*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v94 = *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v47(v113, 0);
    swift_endAccess();

    swift_getKeyPath();
    v50 = sub_227664570();
    v114 = MEMORY[0x277D83B88];
    v113[0] = v50;

    v51 = sub_22766C820();
    sub_226ED25F8(v113, v111);
    v52 = v112;
    if (v112)
    {
      v53 = __swift_project_boxed_opaque_existential_0(v111, v112);
      v54 = *(v52 - 8);
      v55 = *(v54 + 64);
      MEMORY[0x28223BE20](v53);
      v57 = &v96 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v54 + 16))(v57);
      v58 = sub_22766D170();
      (*(v54 + 8))(v57, v52);
      __swift_destroy_boxed_opaque_existential_0(v111);
    }

    else
    {
      v58 = 0;
    }

    v59 = [v115 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v60 = [objc_allocWithZone(v110) initWithLeftExpression:v51 rightExpression:v59 modifier:0 type:4 options:0];

    sub_226E97D1C(v113, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v61 = v60;
    v32 = sub_22766A080();
    v63 = v62;
    MEMORY[0x22AA985C0]();
    if (*((*v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v95 = *((*v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v32(v113, 0);
    swift_endAccess();

    v64 = v104;
    v65 = sub_2272328B8(100);
    v66 = v109;
    if (v64)
    {
      swift_setDeallocating();

      v67 = *(v18 + 40);

      v68 = qword_2813B2078;
      v69 = sub_22766A100();
      (*(*(v69 - 8) + 8))(v18 + v68, v69);
      v70 = *(*v18 + 48);
      v71 = *(*v18 + 52);
      return swift_deallocClassInstance();
    }

    v73 = v65;
    swift_setDeallocating();

    v74 = *(v18 + 40);

    v75 = qword_2813B2078;
    v76 = sub_22766A100();
    (*(*(v76 - 8) + 8))(v18 + v75, v76);
    v77 = *(*v18 + 48);
    v78 = *(*v18 + 52);
    swift_deallocClassInstance();
    v79 = sub_22717DFA0(v73);

    v80 = v79;
    v102 = *(v79 + 16);
    if (!v102)
    {
      break;
    }

    v81 = 0;
    v18 = v107 + 16;
    v100 = "AssetDataStore.swift";
    v101 = "deleteBundleData(_:)";
    v99 += 8;
    v103 = (v107 + 8);
    v98 = xmmword_227670CD0;
    v82 = v108;
    v83 = v97;
    v104 = v79;
    while (v81 < *(v80 + 16))
    {
      v84 = (*(v107 + 80) + 32) & ~*(v107 + 80);
      v85 = *(v107 + 72);
      v110 = v81;
      v115 = 0;
      v86 = *(v107 + 16);
      v86(v83, v80 + v84 + v85 * v81, v82);
      v87 = sub_2276633E0();
      v88 = v115;
      sub_2270781A4(v87, v89, v66);
      if (v88)
      {
        (*v103)(v83, v108);
      }

      v90 = v105;
      sub_22766A6C0();
      sub_22766B370();
      (*v99)(v90, v106);
      v91 = __swift_project_boxed_opaque_existential_0(v66, v66[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85F8, &unk_227679DE0);
      v92 = swift_allocObject();
      *(v92 + 16) = v98;
      v93 = v92 + v84;
      v32 = v108;
      v86(v93, v83, v108);
      sub_227556A7C(v92, v91[1], *(v91 + 16), v91[3]);
      v81 = (v110 + 1);

      (*v103)(v83, v32);
      v66 = v109;
      v82 = v32;
      v80 = v104;
      if (v102 == v81)
      {
      }
    }

    __break(1u);
LABEL_25:
    sub_22766C360();
  }
}

uint64_t sub_227185188(uint64_t *a1)
{
  v1 = *a1;
  *(swift_allocObject() + 16) = v1;

  return sub_227669280();
}

uint64_t sub_22718520C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v53 = a2;
  v67 = sub_22766B390();
  v3 = *(v67 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v67);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = &v51 - v8;
  v9 = sub_227663180();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v68 = &v51 - v16;
  v17 = a1 + 56;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 56);
  v21 = (v18 + 63) >> 6;
  v63 = v15 + 16;
  v64 = v15;
  v62 = (v15 + 8);
  v22 = (v3 + 8);
  v23 = v14;
  v65 = v22;
  v66 = a1;

  v25 = 0;
  v70 = 0;
  *&v26 = 141558274;
  v56 = v26;
  v69 = v13;
  v54 = v21;
  v55 = v7;
  while (v20)
  {
LABEL_11:
    v30 = *(v64 + 16);
    v31 = v68;
    v30(v68, *(v66 + 48) + *(v64 + 72) * (__clz(__rbit64(v20)) | (v25 << 6)), v23);
    sub_22766A6C0();
    v30(v69, v31, v23);
    v32 = v23;
    v33 = sub_22766B380();
    v34 = sub_22766C8B0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v60 = v34;
      v36 = v35;
      v61 = swift_slowAlloc();
      v71 = v61;
      *v36 = v56;
      *(v36 + 4) = 1752392040;
      *(v36 + 12) = 2080;
      sub_227186290(&qword_28139BD48, MEMORY[0x277D4FCA8]);
      v58 = v33;
      v37 = v69;
      v57 = sub_22766D140();
      v38 = v32;
      v40 = v39;
      v59 = *v62;
      v59(v37, v38);
      v21 = v54;
      v41 = sub_226E97AE8(v57, v40, &v71);
      v32 = v38;

      *(v36 + 14) = v41;
      v42 = v58;
      _os_log_impl(&dword_226E8E000, v58, v60, "Found expired asset entry: %{mask.hash}s", v36, 0x16u);
      v43 = v61;
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x22AA9A450](v43, -1, -1);
      v44 = v36;
      v27 = v59;
      MEMORY[0x22AA9A450](v44, -1, -1);

      v7 = v55;
      (*v65)(v55, v67);
    }

    else
    {

      v27 = *v62;
      (*v62)(v69, v32);
      (*v65)(v7, v67);
    }

    v20 &= v20 - 1;
    v28 = v68;
    v70 += sub_227663130();
    result = (v27)(v28, v32);
    v23 = v32;
  }

  while (1)
  {
    v29 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      return result;
    }

    if (v29 >= v21)
    {
      break;
    }

    v20 = *(v17 + 8 * v29);
    ++v25;
    if (v20)
    {
      v25 = v29;
      goto LABEL_11;
    }
  }

  v45 = v52;
  sub_22766A6C0();
  v46 = sub_22766B380();
  v47 = sub_22766C8B0();
  v48 = os_log_type_enabled(v46, v47);
  v49 = v70;
  if (v48)
  {
    v50 = swift_slowAlloc();
    *v50 = 134349056;
    *(v50 + 4) = v49;
    _os_log_impl(&dword_226E8E000, v46, v47, "Total size in bytes of expired entries: %{public}llu", v50, 0xCu);
    MEMORY[0x22AA9A450](v50, -1, -1);
  }

  result = (*v65)(v45, v67);
  *v53 = v49;
  return result;
}

uint64_t sub_227185740(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_227669270();
}

uint64_t sub_2271857D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_227669270();
}

uint64_t sub_22718587C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);

  return sub_227669270();
}

uint64_t sub_227185914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v45 = a3;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v12)
  {
    v37 = v3;
    v51 = MEMORY[0x277D84F90];
    sub_226F1F568(0, v12, 0);
    v14 = -1 << *(a1 + 32);
    v49 = a1 + 56;
    v50 = v51;
    result = sub_22766CC90();
    v15 = result;
    v16 = 0;
    v41 = v6 + 8;
    v42 = v6 + 16;
    v39 = v12;
    v40 = v6 + 32;
    v38 = a1 + 64;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
    {
      v18 = v15 >> 6;
      if ((*(v49 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_23;
      }

      v19 = *(a1 + 36);
      v46 = v16;
      v47 = v19;
      v20 = *(a1 + 48);
      v48 = *(v6 + 72);
      v21 = v43;
      (*(v6 + 16))(v43, v20 + v48 * v15, v5);
      sub_227663470();
      (*(v6 + 8))(v21, v5);
      v22 = v50;
      v51 = v50;
      v23 = a1;
      v25 = *(v50 + 16);
      v24 = *(v50 + 24);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v50 = v25 + 1;
        sub_226F1F568(v24 > 1, v25 + 1, 1);
        v26 = v50;
        v22 = v51;
      }

      *(v22 + 16) = v26;
      v27 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v50 = v22;
      result = (*(v6 + 32))(v22 + v27 + v25 * v48, v11, v5);
      v17 = 1 << *(v23 + 32);
      if (v15 >= v17)
      {
        goto LABEL_24;
      }

      v28 = *(v49 + 8 * v18);
      if ((v28 & (1 << v15)) == 0)
      {
        goto LABEL_25;
      }

      a1 = v23;
      if (v47 != *(v23 + 36))
      {
        goto LABEL_26;
      }

      v29 = v28 & (-2 << (v15 & 0x3F));
      if (v29)
      {
        v17 = __clz(__rbit64(v29)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v11;
        v31 = v5;
        v32 = v18 << 6;
        v33 = v18 + 1;
        v34 = (v38 + 8 * v18);
        while (v33 < (v17 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            result = sub_226EB526C(v15, v47, 0);
            v17 = __clz(__rbit64(v35)) + v32;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v15, v47, 0);
LABEL_19:
        v5 = v31;
        v11 = v30;
      }

      v16 = v46 + 1;
      v15 = v17;
      if (v46 + 1 == v39)
      {
        return v50;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

unint64_t *sub_227185D74@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = v3 >= *result;
  v5 = v3 - *result;
  if (v4)
  {
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_227185E1C(uint64_t a1)
{
  v2 = sub_2276639B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x277D84FA0];
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  v17 = v3 + 16;

  v12 = 0;
  while (v9)
  {
    v13 = v12;
LABEL_10:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    (*(v3 + 16))(v6, *(a1 + 48) + *(v3 + 72) * (v14 | (v13 << 6)), v2);
    v15 = sub_227663960();
    if (v16)
    {
      sub_2270AE890(&v18, v15, v16);
    }

    result = (*(v3 + 8))(v6, v2);
    v12 = v13;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v19;
    }

    v9 = *(a1 + 56 + 8 * v13);
    ++v12;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_36Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 24));
  a2(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, 40, 7);
}

uint64_t sub_227186164(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_22718622C()
{
  result = qword_281398FB0;
  if (!qword_281398FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BA0C8, qword_227677C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398FB0);
  }

  return result;
}

uint64_t sub_227186290(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_22718631C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OfflineScriptBag();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_227186350()
{
  v1 = sub_227669A70();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1);
  v5 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v7 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  v108 = v6;
  v9 = *MEMORY[0x277D4EDC8];
  v10 = v2[13];
  v103 = v2 + 13;
  v106 = v10;
  v10(v5, v9, v1);
  swift_allocObject();
  swift_weakInit();
  v99 = sub_227668700();
  swift_unknownObjectRetain_n();
  v100 = v7;
  v101 = ObjectType;
  sub_227669EA0();

  v105 = v2[1];
  v107 = v1;
  v105(v5, v1);
  v104 = v2 + 1;
  swift_unknownObjectRelease();
  v108 = v6;
  v11 = v106;
  v106(v5, *MEMORY[0x277D4EDB8], v1);
  swift_allocObject();
  v102 = v0;
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E90();

  v12 = v107;
  v105(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v11(v5, *MEMORY[0x277D4ED38], v12);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAA0, &qword_22767BB38);
  v99 = MEMORY[0x277D53728];
  sub_226E9CFD0(&qword_28139B3B0, &qword_27D7BBAA0, &qword_22767BB38);
  v98 = MEMORY[0x277D53730];
  sub_226E9CFD0(&qword_28139B3A8, &qword_27D7BBAA0, &qword_22767BB38);
  sub_227669EA0();

  v105(v5, v12);
  swift_unknownObjectRelease();
  v108 = v6;
  v91 = *MEMORY[0x277D4EAE0];
  v13 = v106;
  (v106)(v5);
  swift_allocObject();
  swift_weakInit();
  v14 = sub_227665350();
  v15 = sub_227667670();
  swift_unknownObjectRetain();
  v96 = v15;
  sub_227669E80();

  v16 = v105;
  v105(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v89 = *MEMORY[0x277D4EDE0];
  v13(v5);
  v17 = v13;
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E80();

  v16(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v90 = *MEMORY[0x277D4E340];
  v13(v5);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v18 = v107;
  v16(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v93 = *MEMORY[0x277D4ED10];
  v17(v5);
  swift_allocObject();
  swift_weakInit();
  v92 = sub_227665AD0();
  swift_unknownObjectRetain();
  v97 = v14;
  sub_227669E80();

  v19 = v105;
  v105(v5, v18);
  swift_unknownObjectRelease();
  v108 = v6;
  v106(v5, *MEMORY[0x277D4E360], v18);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v20 = v107;
  v19(v5, v107);

  swift_unknownObjectRelease();
  v108 = v6;
  v21 = v106;
  v106(v5, *MEMORY[0x277D4E358], v20);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v22 = v105;
  v105(v5, v20);

  swift_unknownObjectRelease();
  v108 = v6;
  v88 = *MEMORY[0x277D4ED08];
  v21(v5);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v23 = v107;
  v22(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v106(v5, *MEMORY[0x277D4E928], v23);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v24 = v107;
  v22(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v25 = v106;
  v106(v5, *MEMORY[0x277D4EC30], v24);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v26 = v105;
  v105(v5, v24);

  swift_unknownObjectRelease();
  v108 = v6;
  v25(v5, *MEMORY[0x277D4EE08], v24);
  swift_allocObject();
  swift_weakInit();
  sub_227666E80();
  swift_unknownObjectRetain();
  sub_227669E80();

  v27 = v107;
  v26(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v106(v5, *MEMORY[0x277D4ED40], v27);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAA8, &qword_22767BB40);
  sub_226E9CFD0(&qword_28139B3D0, &qword_27D7BBAA8, &qword_22767BB40);
  sub_226E9CFD0(&qword_28139B3C8, &qword_27D7BBAA8, &qword_22767BB40);
  sub_227669EA0();

  v28 = v105;
  v105(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v95 = *MEMORY[0x277D4E9B0];
  v29 = v106;
  (v106)(v5);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v28(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v94 = *MEMORY[0x277D4ED28];
  v29(v5);
  swift_allocObject();
  swift_weakInit();
  sub_2276690F0();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v30 = v107;
  v28(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  (v29)(v5, *MEMORY[0x277D4EDC0], v30);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAB0, &qword_22767BB48);
  sub_226E9CFD0(&qword_28139B430, &qword_27D7BBAB0, &qword_22767BB48);
  sub_226E9CFD0(&qword_28139B428, &qword_27D7BBAB0, &qword_22767BB48);
  sub_227669EA0();

  v31 = v107;
  v105(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v106(v5, *MEMORY[0x277D4EBE8], v31);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAB8, &qword_22767BB50);
  sub_226E9CFD0(&qword_28139B450, &qword_27D7BBAB8, &qword_22767BB50);
  sub_226E9CFD0(&qword_28139B448, &qword_27D7BBAB8, &qword_22767BB50);
  sub_227669EA0();

  v32 = v107;
  v105(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v106(v5, *MEMORY[0x277D4ECC8], v32);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAC0, &qword_22767BB58);
  sub_226E9CFD0(&qword_28139B3E0, &qword_27D7BBAC0, &qword_22767BB58);
  sub_226E9CFD0(&qword_28139B3D8, &qword_27D7BBAC0, &qword_22767BB58);
  sub_227669EA0();

  v33 = v107;
  v105(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v34 = v106;
  v106(v5, *MEMORY[0x277D4EE18], v33);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAC8, &qword_22767BB60);
  sub_226E9CFD0(&qword_28139B310, &qword_27D7BBAC8, &qword_22767BB60);
  sub_226E9CFD0(&qword_28139B308, &qword_27D7BBAC8, &qword_22767BB60);
  sub_227669EA0();

  v35 = v107;
  v105(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v34(v5, *MEMORY[0x277D4ED70], v35);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAD0, &qword_22767BB68);
  sub_226E9CFD0(&qword_28139B3A0, &qword_27D7BBAD0, &qword_22767BB68);
  sub_226E9CFD0(&qword_28139B398, &qword_27D7BBAD0, &qword_22767BB68);
  sub_227669EA0();

  v36 = v105;
  v105(v5, v35);
  swift_unknownObjectRelease();
  v108 = v6;
  v106(v5, *MEMORY[0x277D4ED78], v35);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAD8, &qword_22767BB70);
  sub_226E9CFD0(&qword_28139B390, &qword_27D7BBAD8, &qword_22767BB70);
  sub_226E9CFD0(&qword_28139B388, &qword_27D7BBAD8, &qword_22767BB70);
  sub_227669EA0();

  v37 = v107;
  v36(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v38 = v106;
  v106(v5, *MEMORY[0x277D4ED48], v37);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAE0, &qword_22767BB78);
  sub_226E9CFD0(&qword_28139B3C0, &qword_27D7BBAE0, &qword_22767BB78);
  sub_226E9CFD0(&qword_28139B3B8, &qword_27D7BBAE0, &qword_22767BB78);
  sub_227669EA0();

  v105(v5, v37);
  swift_unknownObjectRelease();
  v108 = v6;
  v38(v5, *MEMORY[0x277D4ED80], v37);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAE8, &qword_22767BB80);
  sub_226E9CFD0(&qword_28139B380, &qword_27D7BBAE8, &qword_22767BB80);
  sub_226E9CFD0(&qword_28139B378, &qword_27D7BBAE8, &qword_22767BB80);
  sub_227669EA0();

  v39 = v107;
  v105(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v106(v5, *MEMORY[0x277D4ED88], v39);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAF0, &qword_22767BB88);
  sub_226E9CFD0(&qword_28139B370, &qword_27D7BBAF0, &qword_22767BB88);
  sub_226E9CFD0(&qword_28139B368, &qword_27D7BBAF0, &qword_22767BB88);
  sub_227669EA0();

  v40 = v107;
  v105(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v106(v5, *MEMORY[0x277D4ED98], v40);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAF8, &unk_22767BB90);
  sub_226E9CFD0(&qword_28139B350, &qword_27D7BBAF8, &unk_22767BB90);
  sub_226E9CFD0(&qword_28139B348, &qword_27D7BBAF8, &unk_22767BB90);
  sub_227669EA0();

  v105(v5, v40);
  swift_unknownObjectRelease();
  v108 = v6;
  v106(v5, *MEMORY[0x277D4E958], v40);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB00, &unk_22768B330);
  v86 = sub_226E9CFD0(&qword_28139B2C0, &qword_27D7BBB00, &unk_22768B330);
  v85 = sub_226E9CFD0(&qword_28139B2B8, &qword_27D7BBB00, &unk_22768B330);
  sub_227669EA0();

  v41 = v105;
  v105(v5, v40);
  swift_unknownObjectRelease();
  v108 = v6;
  v42 = v106;
  v106(v5, *MEMORY[0x277D4E9A0], v40);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v41(v5, v40);
  swift_unknownObjectRelease();
  v108 = v6;
  v42(v5, *MEMORY[0x277D4E8E8], v40);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB08, &unk_22767BBA0);
  v86 = sub_226E9CFD0(&qword_28139B300, &qword_27D7BBB08, &unk_22767BBA0);
  v85 = sub_226E9CFD0(&qword_28139B2F8, &qword_27D7BBB08, &unk_22767BBA0);
  sub_227669EA0();

  v105(v5, v40);
  swift_unknownObjectRelease();
  v108 = v6;
  v43 = v106;
  v106(v5, *MEMORY[0x277D4E8C8], v40);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v105(v5, v40);
  swift_unknownObjectRelease();
  v108 = v6;
  v43(v5, *MEMORY[0x277D4EBF8], v40);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB10, &unk_22768B320);
  sub_226E9CFD0(&qword_28139B400, &qword_27D7BBB10, &unk_22768B320);
  sub_226E9CFD0(&qword_28139B3F8, &qword_27D7BBB10, &unk_22768B320);
  sub_227669EA0();

  v44 = v107;
  v105(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v45 = v106;
  v106(v5, *MEMORY[0x277D4EC38], v44);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB18, &qword_22767BBB0);
  sub_226E9CFD0(&qword_28139B2D0, &qword_27D7BBB18, &qword_22767BBB0);
  sub_226E9CFD0(&qword_28139B2C8, &qword_27D7BBB18, &qword_22767BBB0);
  sub_227669EA0();

  v46 = v107;
  v105(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v45(v5, *MEMORY[0x277D4ED60], v46);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB20, &qword_22767BBB8);
  sub_226E9CFD0(&qword_28139B2F0, &qword_27D7BBB20, &qword_22767BBB8);
  sub_226E9CFD0(&qword_28139B2E8, &qword_27D7BBB20, &qword_22767BBB8);
  sub_227669EA0();

  v47 = v107;
  v48 = v105;
  v105(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v106(v5, *MEMORY[0x277D4EBA8], v47);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB28, &qword_22767BBC0);
  sub_226E9CFD0(&qword_28139B410, &qword_27D7BBB28, &qword_22767BBC0);
  sub_226E9CFD0(&qword_28139B408, &qword_27D7BBB28, &qword_22767BBC0);
  sub_227669EA0();

  v49 = v107;
  v48(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v50 = v106;
  v106(v5, *MEMORY[0x277D4EC50], v49);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB30, &qword_22767BBC8);
  sub_226E9CFD0(&qword_28139B3F0, &qword_27D7BBB30, &qword_22767BBC8);
  sub_226E9CFD0(&qword_28139B3E8, &qword_27D7BBB30, &qword_22767BBC8);
  sub_227669EA0();

  v51 = v107;
  v52 = v105;
  v105(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v50(v5, *MEMORY[0x277D4ECB8], v51);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB38, &unk_22767BBD0);
  sub_226E9CFD0(&qword_28139B2E0, &qword_27D7BBB38, &unk_22767BBD0);
  sub_226E9CFD0(&qword_28139B2D8, &qword_27D7BBB38, &unk_22767BBD0);
  sub_227669EA0();

  v53 = v107;
  v52(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v106(v5, *MEMORY[0x277D4EA48], v53);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB40, &unk_22768B310);
  v87 = sub_2276638D0();
  sub_226E9CFD0(&qword_28139B440, &qword_27D7BBB40, &unk_22768B310);
  sub_226E9CFD0(&qword_28139B438, &qword_27D7BBB40, &unk_22768B310);
  sub_227669E80();

  v54 = v107;
  v105(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v106(v5, *MEMORY[0x277D4EA58], v54);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB48, &unk_22767BBE0);
  sub_226E9CFD0(&qword_28139B420, &qword_27D7BBB48, &unk_22767BBE0);
  sub_226E9CFD0(&qword_28139B418, &qword_27D7BBB48, &unk_22767BBE0);
  sub_227669E80();

  v55 = v107;
  v105(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v56 = v55;
  v57 = v106;
  v106(v5, *MEMORY[0x277D4ECB0], v56);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB50, &unk_22768B300);
  sub_226E9CFD0(&qword_28139B360, &qword_27D7BBB50, &unk_22768B300);
  sub_226E9CFD0(&qword_28139B358, &qword_27D7BBB50, &unk_22768B300);
  sub_227669EA0();

  v58 = v107;
  v59 = v105;
  v105(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v57(v5, *MEMORY[0x277D4EC90], v58);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB58, &unk_22767BBF0);
  sub_226E9CFD0(&qword_28139B340, &qword_27D7BBB58, &unk_22767BBF0);
  sub_226E9CFD0(&qword_28139B338, &qword_27D7BBB58, &unk_22767BBF0);
  sub_227669EA0();

  v60 = v107;
  v59(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v106(v5, *MEMORY[0x277D4EDF8], v60);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB60, &unk_22768B2F0);
  sub_226E9CFD0(&qword_28139B330, &qword_27D7BBB60, &unk_22768B2F0);
  sub_226E9CFD0(&qword_28139B328, &qword_27D7BBB60, &unk_22768B2F0);
  sub_227669EA0();

  v61 = v107;
  v62 = v105;
  v105(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v106(v5, *MEMORY[0x277D4EE10], v61);
  swift_allocObject();
  swift_weakInit();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB68, &qword_22767BC00);
  sub_226E9CFD0(&qword_28139B320, &qword_27D7BBB68, &qword_22767BC00);
  sub_226E9CFD0(&qword_28139B318, &qword_27D7BBB68, &qword_22767BC00);
  sub_227669EA0();

  v63 = v107;
  v62(v5, v107);
  swift_unknownObjectRelease();
  v108 = v6;
  v64 = v63;
  v106(v5, *MEMORY[0x277D4E328], v63);
  swift_allocObject();
  v65 = v102;
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB70, &qword_22767BC08);
  sub_227664460();
  sub_226E9CFD0(&qword_28139B2B0, &qword_27D7BBB70, &qword_22767BC08);
  sub_226E9CFD0(&qword_28139B2A8, &qword_27D7BBB70, &qword_22767BC08);
  sub_227669E80();

  v66 = v64;
  v67 = v64;
  v68 = v105;
  v105(v5, v67);
  swift_unknownObjectRelease();
  v69 = *(v65 + 64);
  v101 = *(v65 + 80);
  v100 = swift_getObjectType();
  v108 = v69;
  v70 = v106;
  v106(v5, v91, v66);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  sub_227669E90();

  v71 = v107;
  v68(v5, v107);
  swift_unknownObjectRelease();
  v108 = v69;
  v70(v5, v89, v71);
  swift_allocObject();
  swift_weakInit();
  v99 = sub_227668BB0();
  swift_unknownObjectRetain();
  sub_227669E80();

  v72 = v105;
  v105(v5, v71);
  swift_unknownObjectRelease();
  v108 = v69;
  v106(v5, v90, v71);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v72(v5, v71);
  swift_unknownObjectRelease();
  v108 = v69;
  v73 = v106;
  v106(v5, v88, v71);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v74 = v107;
  v75 = v105;
  v105(v5, v107);
  swift_unknownObjectRelease();
  v108 = v69;
  v73(v5, *MEMORY[0x277D4EC70], v74);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E80();

  v76 = v107;
  v75(v5, v107);
  swift_unknownObjectRelease();
  v108 = v69;
  v77 = v106;
  v106(v5, v93, v76);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E90();

  v78 = v105;
  v105(v5, v76);
  swift_unknownObjectRelease();
  v108 = v69;
  v77(v5, v95, v76);
  swift_allocObject();
  v79 = v102;
  swift_weakInit();

  sub_227669EB0();

  v80 = v107;
  v78(v5, v107);

  swift_unknownObjectRelease();
  v108 = v69;
  v81 = v106;
  v106(v5, v94, v80);
  swift_allocObject();
  swift_weakInit();
  v99 = sub_227666D60();
  sub_227669EA0();

  v82 = v105;
  v105(v5, v80);
  swift_unknownObjectRelease();
  v83 = *(v79 + 40);
  v101 = *(v79 + 56);
  swift_getObjectType();
  v108 = v83;
  v81(v5, v95, v80);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();

  sub_227669EB0();

  v82(v5, v80);

  swift_unknownObjectRelease();
  v108 = v83;
  v106(v5, v94, v80);
  swift_allocObject();
  swift_weakInit();
  sub_227669EA0();

  v82(v5, v80);
  return swift_unknownObjectRelease();
}

uint64_t sub_227189644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227668700();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v21);

    v13 = *__swift_project_boxed_opaque_existential_0(v21, v21[3]);
    sub_22766A670();
    sub_22766B370();
    (*(v8 + 8))(v11, v7);
    v14 = v13[26];
    v15 = v13[27];
    __swift_project_boxed_opaque_existential_0(v13 + 23, v14);
    (*(v5 + 16))(v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v17 = swift_allocObject();
    (*(v5 + 32))(v17 + v16, v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    sub_226ECF5D8(sub_22718C4B4, v17, v14, MEMORY[0x277D84F78] + 8, v15, a2);

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
    return __swift_destroy_boxed_opaque_existential_0(v21);
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
  }
}

uint64_t sub_22718997C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v9);

    __swift_project_boxed_opaque_existential_0(v9, v9[3]);
    v5 = off_283AC7D88[0];
    type metadata accessor for RemoteBrowsingSystem();
    v5(a1);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }
}

uint64_t sub_227189AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v9);

    __swift_project_boxed_opaque_existential_0(v9, v9[3]);
    v5 = off_283AC7D90;
    type metadata accessor for RemoteBrowsingSystem();
    v5(a1, a2);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
    (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }
}

uint64_t sub_227189C44@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v14);

    v8 = *__swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_22766A670();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    __swift_project_boxed_opaque_existential_0((v8 + 224), *(v8 + 248));
    v9 = off_283AB6108[0];
    v10 = type metadata accessor for RemoteBrowsingConfirmationCoordinator();
    v9(v10, &off_283AB60F8);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }
}

uint64_t sub_227189E78@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v14);

    v8 = *__swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_22766A670();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    __swift_project_boxed_opaque_existential_0((v8 + 224), *(v8 + 248));
    v9 = off_283AB6110[0];
    v10 = type metadata accessor for RemoteBrowsingConfirmationCoordinator();
    v9(v10, &off_283AB60F8);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }
}

uint64_t sub_22718A0B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v15);

    v10 = *__swift_project_boxed_opaque_existential_0(v15, v15[3]);
    sub_22766A670();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v11 = *__swift_project_boxed_opaque_existential_0((v10 + 264), *(v10 + 288));
    sub_22713E7A0(a1, a2);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }
}

uint64_t sub_22718A2C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v17);

    v12 = *__swift_project_boxed_opaque_existential_0(v17, v17[3]);
    sub_22766A670();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v13 = *__swift_project_boxed_opaque_existential_0((v12 + 264), *(v12 + 288));
    sub_2271400E8();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
    return __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

uint64_t sub_22718A4F4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v13);

    v8 = *__swift_project_boxed_opaque_existential_0(v13, v13[3]);
    sub_22766A670();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    __swift_project_boxed_opaque_existential_0((v8 + 304), *(v8 + 328));
    v9 = off_283ACA1E8[0];
    type metadata accessor for RemoteBrowsingGuestPairingVerifier();
    v9();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
    return __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }
}

uint64_t sub_22718A728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v9);

    __swift_project_boxed_opaque_existential_0(v9, v9[3]);
    v5 = off_283AC7ED0;
    type metadata accessor for RemoteBrowsingSystem();
    v5(a1, a2);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD600, &unk_22767BC30);
    (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD600, &unk_22767BC30);
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }
}

uint64_t sub_22718A88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v9);

    __swift_project_boxed_opaque_existential_0(v9, v9[3]);
    v5 = off_283AC7EA8;
    type metadata accessor for RemoteBrowsingSystem();
    v5(a1, a2);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }
}

uint64_t sub_22718A9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAC8, &qword_22767BB60);
  v4 = *(v3 - 8);
  v37 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - v5;
  v35 = sub_227665350();
  v7 = *(v35 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v35);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v11 = *(v39 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v39);
  v36 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v40);

    v17 = __swift_project_boxed_opaque_existential_0(v40, v40[3]);
    v33 = v12;
    v34 = a2;
    v18 = *v17;
    v19 = v38;
    sub_227668A30();
    sub_227521540();
    (*(v7 + 8))(v10, v35);
    (*(v4 + 16))(v6, v19, v3);
    v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    (*(v4 + 32))(v21 + v20, v6, v3);
    v22 = v36;
    v23 = v39;
    (*(v11 + 16))(v36, v15, v39);
    v24 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v25 = (v33 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    (*(v11 + 32))(v26 + v24, v22, v23);
    v27 = (v26 + v25);
    *v27 = sub_22718C28C;
    v27[1] = v21;
    v28 = v34;
    sub_227669270();
    (*(v11 + 8))(v15, v23);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
    return __swift_destroy_boxed_opaque_existential_0(v40);
  }

  else
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v31 - 8) + 56))(a2, 1, 1, v31);
  }
}

uint64_t sub_22718AE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAD0, &qword_22767BB68);
  v4 = *(v3 - 8);
  v37 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - v5;
  v35 = sub_227665350();
  v7 = *(v35 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v35);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v11 = *(v39 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v39);
  v36 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v40);

    v17 = __swift_project_boxed_opaque_existential_0(v40, v40[3]);
    v33 = v12;
    v34 = a2;
    v18 = *v17;
    v19 = v38;
    sub_227668A30();
    sub_227521540();
    (*(v7 + 8))(v10, v35);
    (*(v4 + 16))(v6, v19, v3);
    v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    (*(v4 + 32))(v21 + v20, v6, v3);
    v22 = v36;
    v23 = v39;
    (*(v11 + 16))(v36, v15, v39);
    v24 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v25 = (v33 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    (*(v11 + 32))(v26 + v24, v22, v23);
    v27 = (v26 + v25);
    *v27 = sub_22718C260;
    v27[1] = v21;
    v28 = v34;
    sub_227669270();
    (*(v11 + 8))(v15, v23);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
    return __swift_destroy_boxed_opaque_existential_0(v40);
  }

  else
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v31 - 8) + 56))(a2, 1, 1, v31);
  }
}

uint64_t sub_22718B2B0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v14);

    v8 = *__swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_22766A670();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    __swift_project_boxed_opaque_existential_0((v8 + 224), *(v8 + 248));
    v9 = off_283AB6118[0];
    v10 = type metadata accessor for RemoteBrowsingConfirmationCoordinator();
    v9(v10, &off_283AB60F8);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }
}

uint64_t sub_22718B4E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v10);

    v6 = *__swift_project_boxed_opaque_existential_0(v10, v10[3]);
    sub_227524530(v4, v3, a2);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB78, &qword_22767BC10);
    (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB78, &qword_22767BC10);
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }
}

uint64_t sub_22718B61C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v13);

    v9 = *__swift_project_boxed_opaque_existential_0(v13, v13[3]);
    a3();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    (*(*(v10 - 8) + 56))(a4, 0, 1, v10);
    return __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    return (*(*(v12 - 8) + 56))(a4, 1, 1, v12);
  }
}

uint64_t sub_22718B74C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v15);

    v11 = *__swift_project_boxed_opaque_existential_0(v15, v15[3]);
    a4(a1);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    (*(*(v12 - 8) + 56))(a5, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    return (*(*(v14 - 8) + 56))(a5, 1, 1, v14);
  }
}

uint64_t sub_22718C2B4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t objectdestroy_58Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22718C3F8(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_2273D4954(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_22718C53C(uint64_t *a1, uint64_t *a2, unsigned int *a3)
{
  v7 = sub_2276694E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226E91B50(v3 + 232, &v19);
  sub_226E91B50(v3 + 176, v18);
  v16 = *(v3 + 216);
  sub_226E91B50(v3 + 312, v17);
  swift_unknownObjectRetain();
  v12 = sub_2276693D0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v14 = swift_allocObject();
  sub_226E92AB8(&v19, v14 + 16);
  sub_226E92AB8(v18, v14 + 56);
  *(v14 + 96) = v16;
  *(v14 + 112) = v12;
  sub_226E92AB8(v17, v14 + 120);
  (*(v8 + 104))(v11, *a3, v7);
  v20 = v13;
  v21 = &off_283AB14F0;
  *&v19 = v14;
  swift_beginAccess();

  sub_227363128(&v19, v11);
  swift_endAccess();
}

uint64_t sub_22718C70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_22766D370();
  sub_22766C100();
  v7 = sub_22766D3F0();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_22766D190() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_22718C804(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_11;
  }

  v3 = *(a2 + 40);
  sub_22766D370();
  sub_2276637A0();
  sub_22766C100();

  v4 = sub_22766D3F0();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(a2 + 48) + v6);
      v9 = sub_2276637A0();
      v11 = v10;
      if (v9 == sub_2276637A0() && v11 == v12)
      {
        break;
      }

      v14 = sub_22766D190();

      if ((v14 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v14 & 1;
    }

    v14 = 1;
  }

  else
  {
LABEL_11:
    v14 = 0;
  }

  return v14 & 1;
}

BOOL sub_22718C954(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  v5 = sub_22766D360();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_22718C9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v5 = *(a4 + 40);
  sub_22766D370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_226F480FC();
  sub_227663B10();
  v6 = sub_22766D3F0();
  v7 = -1 << *(a4 + 32);
  v8 = v6 & ~v7;
  if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_226F48150();
    sub_226EC1E18();
    do
    {
      v10 = *(a4 + 48) + 24 * v8;
      v13 = *v10;
      v14 = *(v10 + 16);
      v11 = sub_227663B20();
      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

BOOL sub_22718CBBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v6 = *(a2 + 40);
  sub_22766D370();
  v7 = a3(a1);
  MEMORY[0x22AA996B0](v7);
  v8 = sub_22766D3F0();
  v9 = -1 << *(a2 + 32);
  v10 = v8 & ~v9;
  if (((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  do
  {
    v12 = a3(*(*(a2 + 48) + v10));
    v13 = v12 == a3(a1);
    result = v13;
    if (v13)
    {
      break;
    }

    v10 = (v10 + 1) & v11;
  }

  while (((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  return result;
}

void sub_22718CCBC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t Daemon.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  Daemon.init()();
  return v3;
}

uint64_t sub_2271A8B30()
{
  v1 = v0;
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v3 + 8))(v6, v2);
  v7 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_duetObserver);
  sub_226F77C00();
  sub_226F78128();
  v8 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_xpcBroadcastConnection);
  sub_22766A940();
  sub_227669AA0();
  v9 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_assetPurgeListener);
  sub_2272C04E4();
  v10 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_pushServiceObserver);
  v11 = *MEMORY[0x277CEE9F0];
  v12 = sub_22766C000();
  sub_22745D1E8(v12, v13, MEMORY[0x277D84F90]);

  return xpc_transaction_exit_clean();
}

uint64_t *Daemon.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  v2 = OBJC_IVAR____TtC15SeymourServices6Daemon_xpcStreamHandler;
  v3 = sub_227669AC0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_xpcStreamPublisher);

  v5 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_managedProfileObserver);

  v6 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_eventHub);

  v7 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_pairedCompanionConnection);

  v8 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_remoteParticipantBroadcastConnection);

  v9 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_accountProvider);

  v10 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_accountDeviceObserver);

  v11 = OBJC_IVAR____TtC15SeymourServices6Daemon_appLauncher;
  v12 = sub_22766AAB0();
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_dataProtectionMonitor));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_persistenceStore));
  v13 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_scriptConnection);

  v14 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_scriptListener);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_scriptSystem));
  v15 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_scriptBundleLoader);

  v16 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_remoteScriptFetcher);

  v17 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_scriptUpdateJournal);

  v18 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_serverContainer);

  v19 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_publicServerEndpoint);

  v20 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_privateServerEndpoint);

  v21 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_serverSyncCoordinator);

  v22 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_pairedSyncCoordinator);

  v23 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_syncCoordinator);

  v24 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_syncListener);

  v25 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_syncSystem);

  v26 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_adminListener);

  v27 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_adminSystem);

  v28 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_bookmarkDataStore);

  v29 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_bookmarkListener);

  v30 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_bookmarkSystem);

  v31 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_catalogDataStore);

  v32 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_catalogListener);

  v33 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_catalogScriptClient);

  v34 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_catalogSystem);

  v35 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_catalogSyncCoordinator);

  v36 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_configurationDataStore);

  v37 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_configurationListener);

  v38 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_configurationScriptClient);

  v39 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_configurationSystem);

  v40 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_contactService);

  v41 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_sessionPreferenceDataStore);

  v42 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_sessionPreferenceListener);

  v43 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_sessionPreferenceSystem);

  v44 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_privacyPreferenceDataSource);

  v45 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_privacyPreferenceListener);

  v46 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_privacyPreferenceSystem);

  v47 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_scoreListener);

  v48 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_scoreSystem);

  v49 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_scoreServer);

  v50 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_archivedSessionDataStore);

  v51 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_archivedSessionListener);

  v52 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_archivedSessionSystem);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_programCompletionDataStore));
  sub_2271BC7EC(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_healthKitMindfulSessionService);
  sub_2271BC798(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_healthKitWorkoutService);
  v53 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_healthDataSystem);

  v54 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_healthDataListener);

  v55 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_estimatedCaloriesSystem);

  v56 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_estimatedCaloriesListener);

  v57 = OBJC_IVAR____TtC15SeymourServices6Daemon_localDeviceProvider;
  v58 = sub_22766ABA0();
  (*(*(v58 - 8) + 8))(v0 + v57, v58);
  v59 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_metricIdentifierProvider);

  v60 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_recommendationDataStore);

  v61 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_recommendationScriptClient);

  v62 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_recommendationSystem);

  v63 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_recommendationListener);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_searchDataStore));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_searchScriptClient));
  v64 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_searchSystem);

  v65 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_searchListener);

  v66 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_schedulingListener);

  v67 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_duetObserver);

  v68 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_schedulingSystem);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_achievementDataStore));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_achievementEnvironmentCacheCoordinator));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_achievementEvaluatorProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_achievementHistoricalAwardingSource));
  v69 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_achievementListener);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_achievementProgressProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_achievementTemplateSource));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_achievementSystem));
  v70 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_assetBundleHandler);

  v71 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_assetBundleProgressPublisher);

  v72 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_assetCancellationHandler);

  v73 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_assetCatalogUpdater);

  v74 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_assetDataStore);

  v75 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_assetFileStore);

  v76 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_assetKeyDeletionHander);

  v77 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_assetListener);

  v78 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_assetLoaderRegistry);

  v79 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_assetPreferencesObserver);

  v80 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_assetRequestHandler);

  v81 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_assetRequestProvider);

  v82 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_assetScriptClient);

  v83 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_assetSystem);

  v84 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_assetValidator);

  v85 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_bagConsumer);

  v86 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_deviceRegistry);

  v87 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_supportedDeviceAvailability);

  v88 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_syncServer);

  v89 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_accountSyncStatusObserver);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_metricBackgroundAccountEventStore));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_metricBackgroundAccountEventPublisher));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_metricIdentifierStore));
  v90 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_metricRecorderBroker);

  v91 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_metricSystem);

  v92 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_metricListener);

  v93 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_assetPurgeListener);

  v94 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_keyDeliveryDataStore);

  v95 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_keyProvider);

  v96 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_keyDeliverySystem);

  v97 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_keyDeliveryListener);

  v98 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_contentAvailabilityListener);

  v99 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_contentAvailabilitySystem);

  v100 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_contentAvailabilityObserver);

  v101 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_contentAvailabilityScriptClient);

  v102 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_contentRestrictionObserver);

  v103 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_storefrontObserver);

  v104 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_engagementDataStore);

  v105 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_engagementListener);

  v106 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_engagementPushCoordinator);

  v107 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_engagementSystem);

  v108 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_engagementScriptClient);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_notificationSettingsProvider));
  sub_2271BD838(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_restrictionsProvider, type metadata accessor for RestrictionsProvider);
  v109 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_xpcClientConnectionMonitor);

  v110 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_serviceSubscriptionListener);

  v111 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_serviceSubscriptionObserver);

  v112 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_serviceSubscriptionProviderBroker);

  v113 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_serviceSubscriptionSystem);

  v114 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_remoteBrowsingEnvironmentBuilder);

  v115 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_remoteBrowsingGuestPairingAuthenticator);

  v116 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_remoteBrowsingGuestPairingVerifier);

  v117 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_remoteBrowsingListener);

  v118 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_remoteBrowsingSystem);

  v119 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_userNotificationCoordinator);

  v120 = OBJC_IVAR____TtC15SeymourServices6Daemon_participantConnectionBrokerProvider;
  v121 = sub_22766AD60();
  (*(*(v121 - 8) + 8))(v0 + v120, v121);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_playbackVoucherDataStore));
  v122 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_siriSystem);

  v123 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_siriListener);

  v124 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_siriScriptClient);

  v125 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_upNextQueueDataStore);

  v126 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_upNextQueueSystem);

  v127 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_upNextQueueListener);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_userNotificationCenter));
  v128 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_workoutPlanListener);

  v129 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_workoutPlanSystem);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_workoutPlanDataStore));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_workoutPlanSummaryBuilder));
  v130 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_sigTermHandler);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_transactionCoordinator));
  v131 = *(v0 + OBJC_IVAR____TtC15SeymourServices6Daemon_journalingSystem);

  return v0;
}

uint64_t Daemon.__deallocating_deinit()
{
  Daemon.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall Daemon.activate()()
{
  v1 = v0;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C0, &unk_227684560);
  v141 = *(v142 - 8);
  v2 = *(v141 + 64);
  MEMORY[0x28223BE20](v142);
  v140 = &v138 - v3;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v147 = *(v145 - 8);
  v4 = *(v147 + 64);
  MEMORY[0x28223BE20](v145);
  v144 = &v138 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBCE8, &unk_22767E460);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v138 - v9;
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v138 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v138 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v138 - v23;
  sub_22766A730();
  sub_22766B370();
  v25 = *(v12 + 8);
  v143 = v24;
  v146 = v11;
  v148 = v25;
  v149 = v12 + 8;
  v25(v24, v11);
  v26 = *__swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  if (sub_227453E70())
  {
    v27 = *__swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
    sub_227454118(v10);
    v28 = sub_227669290();
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    v28(sub_2271BDB10, v29);

    (*(v7 + 8))(v10, v6);
    sub_22766A730();
    v30 = sub_22766B380();
    v31 = sub_22766C8B0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_226E8E000, v30, v31, "Application installation request finished; exiting when clean", v32, 2u);
      MEMORY[0x22AA9A450](v32, -1, -1);
    }

    v33 = v22;
LABEL_5:
    v148(v33, v146);
    sub_2271A8B30();
    return;
  }

  v34 = v1[7];
  v35 = v34[9];
  v36 = v34[10];
  v34[9] = sub_2271BD898;
  v34[10] = v1;

  sub_226EA9E3C(v35);
  v37 = v34[8];
  v38 = sub_22766BFD0();
  LODWORD(v37) = [v37 BOOLForKey_];

  if (v37)
  {
    sub_2274EAC5C();
  }

  else if ((sub_2274EAB54() & 1) == 0)
  {
    sub_22766A730();
    v135 = sub_22766B380();
    v136 = sub_22766C8B0();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      *v137 = 0;
      _os_log_impl(&dword_226E8E000, v135, v136, "Application not installed, exiting when clean", v137, 2u);
      MEMORY[0x22AA9A450](v137, -1, -1);
    }

    v33 = v16;
    goto LABEL_5;
  }

  sub_22766A730();
  v39 = sub_22766B380();
  v40 = sub_22766C8B0();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_226E8E000, v39, v40, "Starting up!", v41, 2u);
    MEMORY[0x22AA9A450](v41, -1, -1);
  }

  v42 = v146;
  v43 = v148;
  v148(v19, v146);
  v44 = swift_allocObject();
  *(v44 + 16) = "SeymourServices/Daemon.swift";
  *(v44 + 24) = 28;
  *(v44 + 32) = 2;
  *(v44 + 40) = 1165;
  *(v44 + 48) = &unk_22767BE08;
  *(v44 + 56) = v1;

  v45 = v144;
  sub_227669270();
  v46 = v145;
  v47 = sub_227669290();
  v48 = swift_allocObject();
  *(v48 + 16) = sub_2271AAE5C;
  *(v48 + 24) = 0;
  v47(sub_226E9F7B8, v48);

  v139 = *(v147 + 8);
  v147 += 8;
  v139(v45, v46);
  v49 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_publicServerEndpoint);
  v50 = *__swift_project_boxed_opaque_existential_0((v49 + 56), *(v49 + 80));
  v51 = sub_2274FE5D0(*(v49 + 96));
  v52 = type metadata accessor for SeymourServerAPIAsyncOperationClient();
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  v153 = v52;
  v154 = &protocol witness table for SeymourServerAPIAsyncOperationClient;
  aBlock = v53;
  swift_beginAccess();
  sub_2271BD940(&aBlock, v49 + 104);
  swift_endAccess();
  v54 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_privateServerEndpoint);
  v55 = *__swift_project_boxed_opaque_existential_0((v54 + 56), *(v54 + 80));
  v56 = sub_2274FE5D0(*(v54 + 96));
  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  v153 = v52;
  v154 = &protocol witness table for SeymourServerAPIAsyncOperationClient;
  aBlock = v57;
  swift_beginAccess();
  sub_2271BD940(&aBlock, v54 + 104);
  swift_endAccess();
  v58 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_assetFileStore);
  v59 = v143;
  sub_22766A6C0();
  sub_22766B370();
  v43(v59, v42);

  sub_227669280();
  v60 = sub_227669290();
  v61 = swift_allocObject();
  *(v61 + 16) = sub_2271AAE68;
  *(v61 + 24) = 0;
  v60(sub_226E9F880, v61);

  v62 = v139;
  v139(v45, v46);
  v63 = swift_allocObject();
  *(v63 + 16) = "SeymourServices/Daemon.swift";
  *(v63 + 24) = 28;
  *(v63 + 32) = 2;
  *(v63 + 40) = 1183;
  *(v63 + 48) = &unk_22767BE20;
  *(v63 + 56) = v1;

  sub_227669270();
  v64 = sub_227669290();
  v65 = swift_allocObject();
  *(v65 + 16) = sub_2271AB234;
  *(v65 + 24) = 0;
  v64(sub_226E9F880, v65);

  v62(v45, v46);
  v66 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_serviceSubscriptionProviderBroker);
  sub_2275F0F8C(&aBlock);
  sub_226E91B50(&aBlock, v156);
  v67 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_2271BDAB4(v156, v66 + v67);
  swift_endAccess();
  sub_2276692A0();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v68 = sub_227669290();
  v69 = swift_allocObject();
  *(v69 + 16) = sub_2271AB240;
  *(v69 + 24) = 0;
  v68(sub_226E9F880, v69);

  v62(v45, v46);
  v70 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_accountProvider);
  sub_22766ADB0();
  v71 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_accountSyncStatusObserver);
  sub_227397FCC();
  v72 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_accountDeviceObserver);
  sub_2272BC58C();
  v73 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_deviceRegistry);
  sub_227392E8C();
  v74 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_keyProvider);
  sub_22766A690();
  sub_22766B370();
  v75 = v146;
  v76 = v148;
  v148(v59, v146);
  v77 = v140;
  sub_227345AA0(v140);
  v78 = v142;
  v79 = sub_227669290();
  v80 = swift_allocObject();
  *(v80 + 16) = 0;
  *(v80 + 24) = 0;
  v79(sub_2271BDB10, v80);

  (*(v141 + 8))(v77, v78);
  v81 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_managedProfileObserver);
  sub_22766A730();
  sub_22766B370();
  v76(v59, v75);
  v82 = *(v81 + 32);
  sub_2276696A0();
  v83 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_powerMonitor);
  sub_22722C818();
  v84 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_serviceSubscriptionObserver);
  sub_2275D225C();
  v85 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_storefrontObserver);
  sub_226FCC458();
  v86 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_contentAvailabilityObserver);
  sub_227088CB0();
  v87 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_engagementNotificationCoordinator);
  sub_226FF716C();
  v88 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_engagementPushHandler);
  sub_22745C268();
  v89 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_metricIdentifierStore + 24);
  v90 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_metricIdentifierStore + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_metricIdentifierStore), v89);
  (*(v90 + 8))(v89, v90);
  v91 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_metricRecorderBroker);
  sub_22736DA24(&aBlock);
  sub_226E91B50(&aBlock, v156);
  swift_beginAccess();
  sub_2271BDB5C(v156, v91 + 280);
  swift_endAccess();
  v92 = v144;
  sub_2276692A0();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v93 = v145;
  v94 = sub_227669290();
  v95 = swift_allocObject();
  *(v95 + 16) = sub_2271AB24C;
  *(v95 + 24) = 0;
  v94(sub_226E9F880, v95);

  v96 = v139;
  v139(v92, v93);
  v97 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_adminListener);
  sub_2275E1B4C();
  v98 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_archivedSessionListener);
  sub_226FA81EC();
  v99 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_assetListener);
  sub_226FB7880();
  v100 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_assetPurgeListener);
  sub_2272C04E4();
  v101 = *__swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_achievementSystem), *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_achievementSystem + 24));
  sub_2271C5484();
  v102 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_achievementListener);
  sub_22710B900();
  v103 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_bookmarkListener);
  sub_2275C9D80();
  v104 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_catalogListener);
  sub_22766A730();
  sub_22766B370();
  v148(v59, v75);
  sub_227219854();
  sub_2272195E4();
  sub_22721D9F0();
  v105 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_configurationListener);
  sub_226FC3510();
  v106 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_contentAvailabilityListener);
  sub_227481E74();
  v107 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_sessionPreferenceListener);
  sub_227000374();
  v108 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_privacyPreferenceListener);
  sub_22739D1FC();
  v109 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_engagementListener);
  sub_2274F165C();
  v110 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_healthDataListener);
  sub_2274891CC();
  v111 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_estimatedCaloriesListener);
  sub_22717B84C();
  v112 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_keyDeliveryListener);
  sub_22707145C();
  v113 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_metricListener);
  sub_22746FC54();
  v114 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_recommendationListener);
  sub_226F5F1D0();
  v115 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_remoteBrowsingListener);
  sub_227186350();
  v116 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_schedulingListener);
  sub_227117DCC();
  v117 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_scoreListener);
  sub_22750C30C();
  v118 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_scriptListener);
  sub_2275D56A4();
  v119 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_searchListener);
  sub_227451234();
  v120 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_serviceSubscriptionListener);
  sub_2271295F4();
  v121 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_siriListener);
  sub_22722E918();
  v122 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_syncListener);
  sub_227126D64();
  v123 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_scriptUpdateJournal);

  sub_227669270();
  v124 = sub_227669290();
  v125 = swift_allocObject();
  *(v125 + 16) = 0;
  *(v125 + 24) = 0;
  v124(sub_226E9F880, v125);

  v96(v92, v93);
  v126 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_upNextQueueListener);
  sub_22735F01C();
  v127 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_workoutPlanListener);
  sub_2275BC9EC();
  v128 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_pairedCompanionLink);
  v154 = sub_2271AB258;
  v155 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v151 = 1107296256;
  v152 = sub_22718CCBC;
  v153 = &block_descriptor_18;
  v129 = _Block_copy(&aBlock);
  [v128 activateWithCompletion_];
  _Block_release(v129);
  v130 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_remoteParticipantBroadcastLink);
  v154 = sub_2271AB264;
  v155 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v151 = 1107296256;
  v152 = sub_22718CCBC;
  v153 = &block_descriptor_241;
  v131 = _Block_copy(&aBlock);
  [v130 activateWithCompletion_];
  _Block_release(v131);
  v132 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_duetObserver);
  sub_226F77C00();
  v133 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_xpcBroadcastConnection);
  sub_22766A940();
  sub_227669AA0();
  v134 = *(v1 + OBJC_IVAR____TtC15SeymourServices6Daemon_sigTermHandler);
  sub_22766AB10();
}