uint64_t sub_2697D1F84(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803253F0, &qword_2698659F8);
    v2 = sub_2698553C4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v12 = (*(a1 + 48) + v11);
    v13 = v12[1];
    v14 = (*(a1 + 56) + v11);
    v16 = *v14;
    v15 = v14[1];
    *&v35[0] = *v12;
    *(&v35[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_269694FFC(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_269694FFC(v34, v35);
    v17 = *(v2 + 40);
    result = sub_269855194();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v7 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = *(v2 + 48) + 40 * v21;
    *v26 = v27;
    *(v26 + 16) = v28;
    *(v26 + 32) = v29;
    result = sub_269694FFC(v35, (*(v2 + 56) + 32 * v21));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_2697D2248(char a1)
{
  result = 0x6F632F697269732FLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x696C68637461772FLL;
      break;
    case 3:
      result = 0x61772F697269732FLL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x746E65746E6F632FLL;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2697D2348(char a1)
{
  if (!a1)
  {
    return 5522759;
  }

  if (a1 == 1)
  {
    return 1414745936;
  }

  return 0x4554454C4544;
}

unint64_t sub_2697D238C(void *a1)
{
  v1 = 0xD000000000000031;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD00000000000003ELL;
    }

    else
    {
      sub_269855204();
      MEMORY[0x26D645A60](0xD000000000000039, 0x80000002698803E0);
      v3 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
      v4 = sub_269854AE4();
      MEMORY[0x26D645A60](v4);

      return 0;
    }
  }

  return v1;
}

uint64_t sub_2697D2484@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2697D2348(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2697D24B0@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v17 = sub_269854F94();
  v3 = OUTLINED_FUNCTION_8(v17);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  v11 = sub_269854F74();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v13 = sub_269854994();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_3_1();
  *a2 = 0x401E000000000000;
  sub_26969329C(0, &qword_2815718E0, 0x277D85C78);
  sub_269854974();
  sub_2697D5034(&qword_2815718E8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324D40, &unk_269862100);
  sub_2697A1A60(&qword_281571900, &unk_280324D40, &unk_269862100);
  sub_269855174();
  (*(v5 + 104))(v10, *MEMORY[0x277D85260], v17);
  a2[1] = sub_269854FB4();
  return sub_26968E5D4(a1, (a2 + 2));
}

uint64_t sub_2697D270C()
{
  OUTLINED_FUNCTION_2_7();
  *(v1 + 249) = v2;
  *(v1 + 248) = v3;
  *(v1 + 112) = v4;
  *(v1 + 120) = v0;
  v5 = sub_2698548D4();
  *(v1 + 128) = v5;
  OUTLINED_FUNCTION_5_12(v5);
  *(v1 + 136) = v6;
  v8 = *(v7 + 64) + 15;
  *(v1 + 144) = swift_task_alloc();
  v9 = sub_269854324();
  *(v1 + 152) = v9;
  OUTLINED_FUNCTION_5_12(v9);
  *(v1 + 160) = v10;
  v12 = *(v11 + 64) + 15;
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  v13 = sub_269854824();
  *(v1 + 184) = v13;
  OUTLINED_FUNCTION_5_12(v13);
  *(v1 + 192) = v14;
  v16 = *(v15 + 64) + 15;
  *(v1 + 200) = swift_task_alloc();
  *(v1 + 208) = swift_task_alloc();
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_2697D2884()
{
  v31 = v0;
  if (qword_280322710 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 208);
  v2 = sub_269854854();
  __swift_project_value_buffer(v2, qword_28033D958);
  sub_269854814();
  v3 = sub_269854844();
  v4 = sub_269854FF4();
  if (sub_269855074())
  {
    v5 = *(v0 + 208);
    v6 = *(v0 + 248);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 136446210;
    v9 = sub_2697D2248(v6);
    v11 = sub_26974F520(v9, v10, &v30);

    *(v7 + 4) = v11;
    v12 = sub_269854804();
    _os_signpost_emit_with_name_impl(&dword_269684000, v3, v4, v12, "UTSOperation.request", "endpoint=%{signpost.telemetry:string1,public}s enableTelemetry=YES", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26D647170](v8, -1, -1);
    MEMORY[0x26D647170](v7, -1, -1);
  }

  v13 = *(v0 + 208);
  v14 = *(v0 + 184);
  v15 = *(v0 + 192);
  v16 = *(v0 + 249);
  v17 = *(v0 + 248);
  v18 = *(v0 + 112);
  v19 = *(v0 + 120);
  (*(v15 + 16))(*(v0 + 200), v13, v14);
  v20 = sub_269854894();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(v0 + 216) = sub_269854884();
  (*(v15 + 8))(v13, v14);
  v23 = *v19;
  sub_2697D4CBC(v19, v0 + 16);
  v24 = swift_allocObject();
  v25 = *(v0 + 32);
  *(v24 + 40) = *(v0 + 16);
  *(v0 + 224) = v24;
  *(v24 + 16) = v16;
  *(v24 + 24) = v18;
  *(v24 + 32) = v17;
  *(v24 + 56) = v25;
  *(v24 + 72) = *(v0 + 48);
  *(v24 + 88) = *(v0 + 64);
  v26 = *(MEMORY[0x277D61CC0] + 4);

  v27 = swift_task_alloc();
  *(v0 + 232) = v27;
  *v27 = v0;
  v27[1] = sub_2697D2B68;
  v28.n128_u64[0] = v23;

  return MEMORY[0x2821C8618](v0 + 72, &unk_2698659C8, v24, &type metadata for UTSResponse, v28);
}

uint64_t sub_2697D2B68()
{
  OUTLINED_FUNCTION_2_7();
  v3 = *(*v1 + 232);
  v2 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v4 = v2;
  *(v2 + 240) = v0;

  if (!v0)
  {
    v5 = *(v2 + 224);
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2697D2C74()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[18];
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[11];
  v12 = v0[12];
  sub_2697D305C();

  v10 = v0[1];

  return v10(v7, v8, v9, v12);
}

uint64_t sub_2697D2D54()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);

  *(v0 + 104) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 168);
    v7 = *(v0 + 176);
    v8 = *(v0 + 152);
    v9 = *(v0 + 160);

    (*(v9 + 32))(v6, v7, v8);
    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 136);
    v10 = *(v0 + 144);
    v12 = *(v0 + 128);
    v13 = __swift_project_value_buffer(v12, qword_281571B38);
    (*(v11 + 16))(v10, v13, v12);
    v14 = sub_2698548B4();
    v15 = sub_269854F24();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_269684000, v14, v15, "UTSOperation timed out waiting on a response", v16, 2u);
      MEMORY[0x26D647170](v16, -1, -1);
    }

    v17 = *(v0 + 160);
    v35 = *(v0 + 168);
    v18 = *(v0 + 144);
    v19 = *(v0 + 152);
    v20 = *(v0 + 128);
    v21 = *(v0 + 136);
    v22 = *(v0 + 120);
    v23 = *(v0 + 248);
    v24 = *(v0 + 249);

    (*(v21 + 8))(v18, v20);
    __swift_project_boxed_opaque_existential_1((v22 + 16), *(v22 + 40));
    sub_2697B3060();
    sub_2697D5034(&qword_2803253C8, MEMORY[0x277D61CF0]);
    swift_allocError();
    (*(v17 + 16))(v25, v35, v19);
    swift_willThrow();
    (*(v17 + 8))(v35, v19);
  }

  else
  {

    swift_willThrow();
    v26 = *(v0 + 240);
  }

  v28 = *(v0 + 208);
  v27 = *(v0 + 216);
  v29 = *(v0 + 200);
  v31 = *(v0 + 168);
  v30 = *(v0 + 176);
  v32 = *(v0 + 144);
  sub_2697D305C();

  OUTLINED_FUNCTION_7_7();

  return v33();
}

uint64_t sub_2697D305C()
{
  v0 = sub_269854864();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269854824();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322710 != -1)
  {
    swift_once();
  }

  v10 = sub_269854854();
  __swift_project_value_buffer(v10, qword_28033D958);
  v11 = sub_269854844();
  sub_269854874();
  v12 = sub_269854FE4();
  if (sub_269855074())
  {

    sub_2698548A4();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_269854804();
    _os_signpost_emit_with_name_impl(&dword_269684000, v11, v12, v15, "UTSOperation.request", v13, v14, 2u);
    MEMORY[0x26D647170](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2697D32E8(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 24) = a3;
  *(v5 + 32) = a5;
  *(v5 + 65) = a4;
  *(v5 + 64) = a2;
  *(v5 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2697D3314, 0, 0);
}

uint64_t sub_2697D3314()
{
  v1 = *(v0 + 65);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 64);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_2697D3424;
  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2697D3424()
{
  OUTLINED_FUNCTION_2_7();
  v3 = *(*v1 + 48);
  v2 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v4 = v2;
  *(v2 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_6_7();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  else
  {
    v8 = *(v2 + 40);

    OUTLINED_FUNCTION_7_7();

    return v9();
  }
}

uint64_t sub_2697D354C()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_7_7();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_2697D35A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v99 = a5;
  v100 = a1;
  v8 = sub_269854954();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v103 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_269854994();
  v102 = *(v12 - 8);
  v13 = *(v102 + 64);
  MEMORY[0x28223BE20](v12);
  v101 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803253D0, &unk_2698659D8);
  v97 = *(v98 - 8);
  v95 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v96 = &v87 - v15;
  v92 = sub_269854AD4();
  v91 = *(v92 - 8);
  v16 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v90 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_269851B24();
  v19 = *(v18 - 8);
  v112 = v18;
  v113 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_269851B64();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v106 = v8;
  v107 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v12;
  v105 = v9;
  v94 = v25;
  v93 = v27;
  if (a2 == 1)
  {
  }

  else
  {
    v28 = sub_269855584();

    if ((v28 & 1) == 0)
    {

      v63 = 0;
      v65 = 0xF000000000000000;
LABEL_30:
      v116 = v63;
      v66 = MEMORY[0x277D84F90];
      v67 = sub_2697D1F84(a3);

      v68 = a2;
      v69 = qword_269865B08[a2];
      v70 = qword_269865B20[v68];
      v71 = sub_2697D2248(a4);
      v73 = v72;
      sub_26969329C(0, &qword_2803253D8, 0x277D7A978);
      sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
      v74 = sub_269855044();
      sub_2697D4DCC(v63, v65);
      v75 = sub_2697D4028(v71, v73, v67, v69, v70, v63, v65, 0, 0x696C632D69726973, 0xEB00000000746E65, 0, v74, 0);
      v76 = *(v99 + 8);
      v77 = v97;
      v78 = v96;
      v79 = v98;
      (*(v97 + 16))(v96, v100, v98);
      v80 = (*(v77 + 80) + 24) & ~*(v77 + 80);
      v81 = swift_allocObject();
      *(v81 + 16) = v75;
      (*(v77 + 32))(v81 + v80, v78, v79);
      aBlock[4] = sub_2697D4DE0;
      aBlock[5] = v81;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2696A8DD0;
      aBlock[3] = &block_descriptor_19;
      v82 = _Block_copy(aBlock);
      v83 = v75;
      v84 = v101;
      sub_269854974();
      v117 = v66;
      sub_2697D5034(&qword_281571918, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
      sub_2697A1A60(&qword_281571908, &unk_2803228A0, &qword_2698577D0);
      v85 = v103;
      v86 = v106;
      sub_269855174();
      MEMORY[0x26D645EA0](0, v84, v85, v82);
      _Block_release(v82);

      sub_2696CE4BC(v116, v65);
      (*(v105 + 8))(v85, v86);
      (*(v102 + 8))(v84, v104);
    }
  }

  v29 = MEMORY[0x277D84F90];
  v89 = sub_269854A04();
  sub_269851B54();
  v30 = *(a3 + 16);
  if (!v30)
  {
LABEL_25:
    v59 = v107;
    v60 = sub_269851B34();
    MEMORY[0x26D642A40](v60);
    if (v61)
    {
      v62 = v90;
      sub_269854AC4();
      v63 = sub_269854AA4();
      v65 = v64;

      (*(v91 + 8))(v62, v92);
      (*(v93 + 8))(v59, v94);
    }

    else
    {
      (*(v93 + 8))(v59, v94);
      v63 = 0;
      v65 = 0xF000000000000000;
    }

    a3 = v89;
    goto LABEL_30;
  }

  v87 = a2;
  v88 = a4;
  aBlock[0] = v29;
  sub_269815390(0, v30, 0);
  v31 = aBlock[0];
  result = sub_2697F1D9C(a3);
  v35 = result;
  v36 = 0;
  v37 = a3 + 64;
  v110 = a3 + 64;
  v111 = v113 + 32;
  v108 = a3 + 72;
  v109 = v30;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v35 < 1 << *(a3 + 32))
    {
      v38 = v35 >> 6;
      if ((*(v37 + 8 * (v35 >> 6)) & (1 << v35)) == 0)
      {
        goto LABEL_32;
      }

      if (*(a3 + 36) != v33)
      {
        goto LABEL_33;
      }

      v114 = v34;
      v115 = v36;
      v116 = v33;
      v39 = *(a3 + 56);
      v40 = (*(a3 + 48) + 16 * v35);
      v41 = a3;
      v43 = *v40;
      v42 = v40[1];
      v44 = (v39 + 16 * v35);
      v45 = v22;
      v47 = *v44;
      v46 = v44[1];

      sub_269851B14();

      aBlock[0] = v31;
      v49 = *(v31 + 16);
      v48 = *(v31 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_269815390(v48 > 1, v49 + 1, 1);
        v31 = aBlock[0];
      }

      *(v31 + 16) = v49 + 1;
      result = (*(v113 + 32))(v31 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v49, v45, v112);
      v50 = 1 << *(v41 + 32);
      if (v35 >= v50)
      {
        goto LABEL_34;
      }

      a3 = v41;
      v37 = v110;
      v51 = *(v110 + 8 * v38);
      if ((v51 & (1 << v35)) == 0)
      {
        goto LABEL_35;
      }

      if (*(a3 + 36) != v116)
      {
        goto LABEL_36;
      }

      v22 = v45;
      v52 = v51 & (-2 << (v35 & 0x3F));
      if (v52)
      {
        v50 = __clz(__rbit64(v52)) | v35 & 0x7FFFFFFFFFFFFFC0;
        v53 = v109;
      }

      else
      {
        v54 = v38 << 6;
        v55 = v38 + 1;
        v53 = v109;
        v56 = (v108 + 8 * v38);
        while (v55 < (v50 + 63) >> 6)
        {
          v58 = *v56++;
          v57 = v58;
          v54 += 64;
          ++v55;
          if (v58)
          {
            result = sub_26968E5C8(v35, v116, v114 & 1);
            v50 = __clz(__rbit64(v57)) + v54;
            goto LABEL_21;
          }
        }

        result = sub_26968E5C8(v35, v116, v114 & 1);
      }

LABEL_21:
      v36 = v115 + 1;
      if (v115 + 1 == v53)
      {
        LOBYTE(a4) = v88;
        LOBYTE(a2) = v87;
        goto LABEL_25;
      }

      v34 = 0;
      v33 = *(a3 + 36);
      v35 = v50;
      if (v50 < 0)
      {
        break;
      }
    }
  }

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
  return result;
}

id sub_2697D4028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13)
{
  v18 = sub_269854A64();

  if (a3)
  {
    v19 = sub_2698549D4();

    if (a5)
    {
LABEL_3:
      v20 = sub_269854A64();

      goto LABEL_6;
    }
  }

  else
  {
    v19 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
LABEL_6:
  if (a7 >> 60 == 15)
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_269851C84();
    sub_2696CE4BC(a6, a7);
  }

  if (a8)
  {
    v22 = sub_2698549D4();
  }

  else
  {
    v22 = 0;
  }

  if (a10)
  {
    v23 = sub_269854A64();
  }

  else
  {
    v23 = 0;
  }

  v24 = [swift_getObjCClassFromMetadata() requestPropertiesWithEndpoint:v18 queryParameters:v19 httpMethod:v20 httpBody:v21 headers:v22 caller:v23 timeout:a11 apiVersion:a12 options:a13];

  return v24;
}

void sub_2697D41F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803253D0, &unk_2698659D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = [objc_allocWithZone(MEMORY[0x277D7A980]) initWithRequestProperties_];
  (*(v5 + 16))(v8, a2, v4);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_2697D4ED4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2696A8DD0;
  aBlock[3] = &block_descriptor_14_1;
  v12 = _Block_copy(aBlock);
  v13 = v9;
  sub_269687554(sub_2697D4ED4);

  [v13 setCompletionBlock_];

  _Block_release(v12);

  [v13 start];
}

uint64_t sub_2697D4408(void *a1, uint64_t a2)
{
  v80 = a2;
  v3 = sub_2698548D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v78 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v78 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803253E0, &unk_2698659E8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v78 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v78 - v23;
  v25 = [a1 error];
  if (!v25)
  {
    v79 = v3;
    v41 = [a1 responseDictionary];
    v42 = sub_2698549E4();

    v43 = [a1 request];
    if (v43)
    {
      v44 = v43;
      sub_269851A54();

      v45 = sub_269851A74();
      v46 = 0;
    }

    else
    {
      v45 = sub_269851A74();
      v46 = 1;
    }

    __swift_storeEnumTagSinglePayload(v18, v46, 1, v45);
    sub_2697D4F70(v18, v20);
    sub_269851A74();
    if (__swift_getEnumTagSinglePayload(v20, 1, v45) == 1)
    {
      v47 = &qword_2803253E0;
      v48 = &unk_2698659E8;
      v49 = v20;
    }

    else
    {
      sub_269851A64();
      (*(*(v45 - 8) + 8))(v20, v45);
      v50 = sub_269851C74();
      if (__swift_getEnumTagSinglePayload(v24, 1, v50) != 1)
      {
        v51 = sub_269851BF4();
        v52 = v53;
        (*(*(v50 - 8) + 8))(v24, v50);
LABEL_16:
        v54 = [a1 responseStatusCode];
        v55 = qword_280322700;

        if (v54 == 200)
        {
          if (v55 != -1)
          {
            swift_once();
          }

          v56 = v79;
          v57 = __swift_project_value_buffer(v79, qword_281571B38);
          (*(v4 + 16))(v8, v57, v56);

          v58 = sub_2698548B4();
          v59 = sub_269854F14();

          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v78 = v42;
            v62 = v51;
            v63 = v61;
            v82[0] = v61;
            *v60 = 136315138;
            v64 = sub_26974F520(v62, v52, v82);

            *(v60 + 4) = v64;
            _os_log_impl(&dword_269684000, v58, v59, "UTSOperation received success status for url: %s", v60, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v63);
            v65 = v63;
            v51 = v62;
            v42 = v78;
            MEMORY[0x26D647170](v65, -1, -1);
            MEMORY[0x26D647170](v60, -1, -1);

            v66 = *(v4 + 8);
            v67 = v8;
LABEL_25:
            v77 = v79;
LABEL_29:
            v66(v67, v77);
            v82[0] = v42;
            v82[1] = v51;
            v82[2] = v52;
            v82[3] = v54;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803253D0, &unk_2698659D8);
            return sub_269854D54();
          }

          v66 = *(v4 + 8);
          v67 = v8;
        }

        else
        {
          if (v55 != -1)
          {
            swift_once();
          }

          v56 = v79;
          v68 = __swift_project_value_buffer(v79, qword_281571B38);
          (*(v4 + 16))(v11, v68, v56);

          v69 = sub_2698548B4();
          v70 = sub_269854F24();
          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            v82[0] = v78;
            *v71 = 134349314;
            *(v71 + 4) = v54;

            *(v71 + 12) = 2080;
            v72 = v54;
            v73 = v42;
            v74 = v51;
            v75 = sub_26974F520(v51, v52, v82);

            *(v71 + 14) = v75;
            v51 = v74;
            v42 = v73;
            v54 = v72;
            _os_log_impl(&dword_269684000, v69, v70, "UTSOperation received failure status %{public}ld for url: %s", v71, 0x16u);
            v76 = v78;
            __swift_destroy_boxed_opaque_existential_0(v78);
            MEMORY[0x26D647170](v76, -1, -1);
            MEMORY[0x26D647170](v71, -1, -1);

            v66 = *(v4 + 8);
            v67 = v11;
            goto LABEL_25;
          }

          swift_bridgeObjectRelease_n();

          v66 = *(v4 + 8);
          v67 = v11;
        }

        v77 = v56;
        goto LABEL_29;
      }

      v47 = &qword_280323030;
      v48 = &qword_26985BAE0;
      v49 = v24;
    }

    sub_269698048(v49, v47, v48);
    v51 = 0;
    v52 = 0xE000000000000000;
    goto LABEL_16;
  }

  v26 = v25;
  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v3, qword_281571B38);
  (*(v4 + 16))(v13, v27, v3);
  v28 = v3;
  v29 = v26;
  v30 = sub_2698548B4();
  v31 = sub_269854F24();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v81 = v29;
    v82[0] = v33;
    *v32 = 136315138;
    v34 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v35 = sub_269854AE4();
    v37 = sub_26974F520(v35, v36, v82);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_269684000, v30, v31, "UTSOperation returned an error: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x26D647170](v33, -1, -1);
    MEMORY[0x26D647170](v32, -1, -1);
  }

  (*(v4 + 8))(v13, v28);
  sub_2697D4FE0();
  v38 = swift_allocError();
  *v39 = v26;
  v82[0] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803253D0, &unk_2698659D8);
  return sub_269854D44();
}

uint64_t sub_2697D4CF4(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2696BBE14;

  return sub_2697D32E8(a1, v6, v4, v5, v1 + 40);
}

uint64_t sub_2697D4DCC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2696CE464(a1, a2);
  }

  return a1;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_7Tm_1()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803253D0, &unk_2698659D8);
  OUTLINED_FUNCTION_8(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2697D4EEC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803253D0, &unk_2698659D8) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_2697D4F70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803253E0, &unk_2698659E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2697D4FE0()
{
  result = qword_2803253E8;
  if (!qword_2803253E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803253E8);
  }

  return result;
}

uint64_t sub_2697D5034(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents17UTSOperationErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2697D5094(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2697D50E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2697D5170(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_26977D4F4(*(a1 + 16), 0);
  sub_2697E21C8(&v7, (v3 + 4), v1, a1);
  v5 = v4;

  sub_26968E614();
  if (v5 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v7 = v3;
  sub_2697B4758(&v7);
  return v7;
}

uint64_t sub_2697D5254()
{
  OUTLINED_FUNCTION_2_7();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_269851D34();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_4_7();
  v7 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2697D52F8()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[3];
  v2 = sub_2697DA7E8(v0[2]);
  v0[7] = v2;
  if (*(v2 + 16))
  {
    v3 = v0[6];
    v4 = v0[3];
    sub_269851D24();
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    OUTLINED_FUNCTION_10_24(v5);

    return sub_2697D270C();
  }

  else
  {

    sub_2697D9F34();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_15(v7, 3);
    v8 = v0[6];

    OUTLINED_FUNCTION_7_7();

    return v9();
  }
}

uint64_t sub_2697D5424()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_13_24();
  v5 = v4;
  OUTLINED_FUNCTION_3_6();
  *v6 = v5;
  v8 = *(v7 + 64);
  *v6 = *v2;
  v5[9] = v9;
  v5[10] = v10;
  v5[11] = v1;

  if (v1)
  {
    v11 = v5[7];
  }

  else
  {
    v5[12] = v3;
    v5[13] = v0;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_2697D5548()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  __swift_project_boxed_opaque_existential_1((v0[3] + 40), *(v0[3] + 64));
  sub_2696C9DAC();
  sub_2697D5170(v7);

  sub_2697B1BA4();

  OUTLINED_FUNCTION_40_7();
  v9 = v0[9];
  v8 = v0[10];
  v11 = v0[5];
  v10 = v0[6];
  v12 = v0[4];
  if (v3)
  {
    v13 = OUTLINED_FUNCTION_17_20();
    v14(v13);

    v15 = v0[6];

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_71();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_38_12();

  sub_2697C3B1C(v4, v7, v2);

  v18 = OUTLINED_FUNCTION_17_20();
  v19(v18);

  OUTLINED_FUNCTION_16_19();
  OUTLINED_FUNCTION_71();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2697D56BC()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[11];
  v2 = v0[6];

  OUTLINED_FUNCTION_7_7();

  return v3();
}

id sub_2697D5730()
{
  v1 = v0;
  v36[5] = *MEMORY[0x277D85DE8];
  v2 = sub_2698548D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = sub_2698549D4();
  v36[0] = 0;
  v9 = [v7 dataWithJSONObject:v8 options:0 error:v36];

  v10 = v36[0];
  if (v9)
  {
    v11 = sub_269851C94();
    v13 = v12;

    v14 = sub_269851AA4();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    sub_269851A94();
    sub_2697DA2AC();
    sub_269851A84();
    if (!v0)
    {

      sub_2696C1F3C(v11, v13);
      result = v36[1];
      goto LABEL_12;
    }

    sub_2696C1F3C(v11, v13);
  }

  else
  {
    v17 = v10;
    v1 = sub_269851BD4();

    swift_willThrow();
  }

  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v2, qword_281571B38);
  (*(v3 + 16))(v6, v18, v2);

  v19 = v1;
  v20 = sub_2698548B4();
  v21 = sub_269854F24();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v36[0] = v23;
    *v22 = 136315394;
    v24 = sub_2698549F4();
    v26 = sub_26974F520(v24, v25, v36);
    v35[0] = v2;
    v27 = v3;
    v28 = v26;

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v35[1] = v1;
    v29 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v30 = sub_269854AE4();
    v32 = sub_26974F520(v30, v31, v36);

    *(v22 + 14) = v32;
    _os_log_impl(&dword_269684000, v20, v21, "Unexpected exception when serializing dictionary to/from JSON for content conversion: %s, error: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D647170](v23, -1, -1);
    MEMORY[0x26D647170](v22, -1, -1);

    (*(v27 + 8))(v6, v35[0]);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  result = swift_willThrow();
LABEL_12:
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2697D5B68()
{
  v1 = v0;
  v38[4] = *MEMORY[0x277D85DE8];
  v2 = sub_2698548D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = sub_2698549D4();
  v38[0] = 0;
  v9 = [v7 dataWithJSONObject:v8 options:0 error:v38];

  v10 = v38[0];
  if (v9)
  {
    v11 = sub_269851C94();
    v13 = v12;

    v14 = sub_269851AA4();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    sub_269851A94();
    sub_2697DA134();
    sub_269851A84();
    if (!v0)
    {

      sub_2696C1F3C(v11, v13);
      result = v38[1];
      goto LABEL_12;
    }

    sub_2696C1F3C(v11, v13);
  }

  else
  {
    v17 = v10;
    v1 = sub_269851BD4();

    swift_willThrow();
  }

  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v2, qword_281571B38);
  (*(v3 + 16))(v6, v18, v2);

  v19 = v1;
  v20 = sub_2698548B4();
  v21 = sub_269854F24();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v38[0] = v23;
    *v22 = 136315394;
    v24 = sub_2698549F4();
    v26 = sub_26974F520(v24, v25, v38);
    v36 = v2;
    v27 = v3;
    v28 = v26;

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v37 = v1;
    v29 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v30 = sub_269854AE4();
    v32 = sub_26974F520(v30, v31, v38);

    *(v22 + 14) = v32;
    _os_log_impl(&dword_269684000, v20, v21, "Unexpected exception when serializing dictionary to/from JSON for content conversion: %s, error: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D647170](v23, -1, -1);
    MEMORY[0x26D647170](v22, -1, -1);

    (*(v27 + 8))(v6, v36);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  result = swift_willThrow();
LABEL_12:
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2697D5FA0()
{
  v1 = v0;
  v39[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2698548D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = sub_2698549D4();
  v39[0] = 0;
  v9 = [v7 dataWithJSONObject:v8 options:0 error:v39];

  v10 = v39[0];
  if (v9)
  {
    v11 = sub_269851C94();
    v13 = v12;

    v14 = sub_269851AA4();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    sub_269851A94();
    sub_2697DA258();
    sub_269851A84();
    if (!v0)
    {

      sub_2696C1F3C(v11, v13);
      result = v38;
      goto LABEL_12;
    }

    sub_2696C1F3C(v11, v13);
  }

  else
  {
    v17 = v10;
    v1 = sub_269851BD4();

    swift_willThrow();
  }

  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v2, qword_281571B38);
  (*(v3 + 16))(v6, v18, v2);

  v19 = v1;
  v20 = sub_2698548B4();
  v21 = sub_269854F24();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v39[0] = v23;
    *v22 = 136315394;
    v24 = sub_2698549F4();
    v26 = sub_26974F520(v24, v25, v39);
    v36 = v2;
    v27 = v3;
    v28 = v26;

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v37 = v1;
    v29 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v30 = sub_269854AE4();
    v32 = sub_26974F520(v30, v31, v39);

    *(v22 + 14) = v32;
    _os_log_impl(&dword_269684000, v20, v21, "Unexpected exception when serializing dictionary to/from JSON for content conversion: %s, error: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D647170](v23, -1, -1);
    MEMORY[0x26D647170](v22, -1, -1);

    (*(v27 + 8))(v6, v36);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  result = swift_willThrow();
LABEL_12:
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2697D63D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v7 = v5;
  v40[1] = a3;
  v44[1] = *MEMORY[0x277D85DE8];
  v8 = sub_2698548D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();
  v14 = sub_2698549D4();
  v44[0] = 0;
  v15 = [v13 dataWithJSONObject:v14 options:0 error:v44];

  v16 = v44[0];
  v41 = v8;
  if (v15)
  {
    v17 = v9;
    v18 = sub_269851C94();
    v20 = v19;

    v21 = sub_269851AA4();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_269851A94();
    a5();
    sub_269851A84();
    if (!v5)
    {

      sub_2696C1F3C(v18, v20);
      result = v43;
      goto LABEL_12;
    }

    sub_2696C1F3C(v18, v20);
    v9 = v17;
    v8 = v41;
  }

  else
  {
    v24 = v16;
    v7 = sub_269851BD4();

    swift_willThrow();
  }

  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  v25 = __swift_project_value_buffer(v8, qword_281571B38);
  (*(v9 + 16))(v12, v25, v8);

  v26 = v7;
  v27 = sub_2698548B4();
  v28 = sub_269854F24();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v44[0] = swift_slowAlloc();
    *v29 = 136315394;
    v30 = sub_2698549F4();
    v32 = v9;
    v33 = sub_26974F520(v30, v31, v44);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    v42 = v7;
    v34 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v35 = sub_269854AE4();
    v37 = sub_26974F520(v35, v36, v44);

    *(v29 + 14) = v37;
    _os_log_impl(&dword_269684000, v27, v28, "Unexpected exception when serializing dictionary to/from JSON for content conversion: %s, error: %s", v29, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();

    (*(v32 + 8))(v12, v41);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  result = swift_willThrow();
LABEL_12:
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2697D680C()
{
  OUTLINED_FUNCTION_2_7();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_269851D34();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_4_7();
  v7 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2697D68B0()
{
  OUTLINED_FUNCTION_2_7();
  v1 = v0[6];
  v2 = v0[3];
  sub_269851D24();
  OUTLINED_FUNCTION_43_6();
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_2697D695C;
  v4 = v0[2];

  return sub_2697D270C();
}

uint64_t sub_2697D695C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_13_24();
  v5 = v4;
  OUTLINED_FUNCTION_3_6();
  *v6 = v5;
  v8 = *(v7 + 56);
  *v6 = *v2;
  v5[8] = v9;
  v5[9] = v10;
  v5[10] = v1;

  if (!v1)
  {
    v5[11] = v3;
    v5[12] = v0;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_2697D6A78()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v6 = v0[6];
  v7 = v0[2];
  __swift_project_boxed_opaque_existential_1((v0[3] + 40), *(v0[3] + 64));
  sub_2696C9DAC();
  v8 = sub_2697D5170(v7);
  sub_2697B1BA4();

  OUTLINED_FUNCTION_40_7();
  v10 = v0[8];
  v9 = v0[9];
  v12 = v0[5];
  v11 = v0[6];
  v13 = v0[4];
  if (v3)
  {
    v14 = OUTLINED_FUNCTION_17_20();
    v15(v14);

    v16 = v0[6];

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_71();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_38_12();

  sub_2697C3B1C(v4, v8, v2);

  v19 = OUTLINED_FUNCTION_17_20();
  v20(v19);

  OUTLINED_FUNCTION_16_19();
  OUTLINED_FUNCTION_71();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2697D6BE4()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[10];
  v2 = v0[6];

  OUTLINED_FUNCTION_7_7();

  return v3();
}

uint64_t sub_2697D6C58()
{
  OUTLINED_FUNCTION_2_7();
  v1[11] = v2;
  v1[12] = v0;
  v3 = _s11ContentLiteOMa(0);
  OUTLINED_FUNCTION_5_12(v3);
  v1[13] = v4;
  v6 = *(v5 + 64);
  v1[14] = OUTLINED_FUNCTION_4_7();
  v7 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2697D6CF8()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1(*(v0 + 96), *(*(v0 + 96) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  *(inited + 32) = 7562345;
  *(inited + 40) = 0xE300000000000000;
  *(v0 + 80) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
  sub_2697B47C4();
  *(inited + 48) = OUTLINED_FUNCTION_36_9();
  *(inited + 56) = v3;
  *(v0 + 120) = OUTLINED_FUNCTION_11_5();
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_10_24(v4);

  return sub_2697D270C();
}

uint64_t sub_2697D6E24()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_13_24();
  v5 = v4;
  OUTLINED_FUNCTION_3_6();
  *v6 = v5;
  v8 = *(v7 + 128);
  *v6 = *v2;
  v5[17] = v9;
  v5[18] = v10;
  v5[19] = v1;

  if (!v1)
  {
    v11 = v5[15];

    v5[20] = v3;
    v5[21] = v0;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2697D6F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  v16 = v14[20];
  v15 = v14[21];
  v17 = v14[18];
  v18 = v14[19];
  v19 = v14[17];
  v20 = sub_2697D5FA0();
  v21 = v14[17];
  v22 = v14[18];
  if (v18)
  {

    v23 = v14[14];

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_116();

    return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v33 = v14[13];

    v52 = MEMORY[0x277D84F90];
    v34 = -1;
    v35 = -1 << *(v20 + 32);
    if (-v35 < 64)
    {
      v34 = ~(-1 << -v35);
    }

    v36 = v34 & *(v20 + 64);
    v37 = (63 - v35) >> 6;

    v38 = 0;
    while (v36)
    {
LABEL_13:
      v40 = v14[14];
      v41 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      sub_2697DA198(*(v20 + 56) + *(v33 + 72) * (v41 | (v38 << 6)), v40);
      v42 = sub_2697CB710();
      result = sub_2697DA1FC(v40);
      if (v42)
      {
        MEMORY[0x26D645B90](result);
        if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_269854CD4();
        }

        result = sub_269854CF4();
      }
    }

    while (1)
    {
      v39 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        return result;
      }

      if (v39 >= v37)
      {
        break;
      }

      v36 = *(v20 + 64 + 8 * v39);
      ++v38;
      if (v36)
      {
        v38 = v39;
        goto LABEL_13;
      }
    }

    v43 = v14[14];

    OUTLINED_FUNCTION_16_19();
    OUTLINED_FUNCTION_116();

    return v46(v44, v45, v46, v47, v48, v49, v50, v51, a9, v52, a11, a12, a13, a14);
  }
}

uint64_t sub_2697D7134()
{
  OUTLINED_FUNCTION_2_7();
  v1 = v0[15];

  v2 = v0[19];
  v3 = v0[14];

  OUTLINED_FUNCTION_7_7();

  return v4();
}

uint64_t sub_2697D7198()
{
  OUTLINED_FUNCTION_2_7();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2698548D4();
  v1[5] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_4_7();
  v8 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2697D7240()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[2];
  if (*(v1 + 16))
  {
    v2 = v0[4];
    v0[8] = sub_2697D76BC(v1, v0[3]);
    OUTLINED_FUNCTION_43_6();
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_24_16(v3);

    return sub_2697D270C();
  }

  else
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_45();
      swift_once();
    }

    v6 = v0[6];
    v5 = v0[7];
    OUTLINED_FUNCTION_33_0(v0[5], qword_281571B38);
    (*(v6 + 16))(v5);
    v7 = sub_2698548B4();
    v8 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v8))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_31_0(&dword_269684000, v9, v10, "Request to getPlayables with empty list of canonical IDs");
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    v12 = v0[6];
    v11 = v0[7];
    v13 = v0[5];

    v14 = OUTLINED_FUNCTION_12_23();
    v15(v14);
    sub_2697D9F34();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_15(v16, 4);
    v17 = v0[7];

    OUTLINED_FUNCTION_7_7();

    return v18();
  }
}

uint64_t sub_2697D740C()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_14_6();
  v11 = v10;
  OUTLINED_FUNCTION_3_6();
  *v12 = v11;
  v14 = *(v13 + 72);
  v15 = *v1;
  v11[10] = v0;

  if (!v0)
  {
    v16 = v11[8];
    v11[11] = v5;
    v11[12] = v9;

    v11[13] = v3;
    v11[14] = v7;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_2697D7548()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[10];
  sub_2697D63D4(v0[12], v0[14], v0[11], v0[13], sub_2697D9F88);
  v3 = v2;

  v4 = v0[7];
  if (v1)
  {
    v5 = v0[7];

    OUTLINED_FUNCTION_7_7();

    return v6();
  }

  else
  {

    v8 = v0[1];

    return v8(v3);
  }
}

uint64_t sub_2697D7658()
{
  OUTLINED_FUNCTION_2_7();
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[7];

  OUTLINED_FUNCTION_7_7();

  return v4();
}

uint64_t sub_2697D76BC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000269880460;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
  sub_2697B47C4();
  *(inited + 48) = sub_269854A44();
  *(inited + 56) = v4;
  v5 = sub_269854A04();
  if (*(a2 + 16))
  {
    sub_269854A44();
    swift_isUniquelyReferenced_nonNull_native();
    sub_269840AF0();
  }

  return v5;
}

uint64_t sub_2697D780C()
{
  OUTLINED_FUNCTION_2_7();
  v1[11] = v2;
  v1[12] = v0;
  v3 = sub_2698548D4();
  v1[13] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[14] = v4;
  v6 = *(v5 + 64);
  v1[15] = OUTLINED_FUNCTION_37_0();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2697D78D4()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 88);
  if (*(v1 + 16))
  {
    __swift_project_boxed_opaque_existential_1(*(v0 + 96), *(*(v0 + 96) + 24));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_269857710;
    *(inited + 32) = 0x7364497374617473;
    *(inited + 40) = 0xE800000000000000;
    *(v0 + 80) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
    sub_2697B47C4();
    *(inited + 48) = OUTLINED_FUNCTION_36_9();
    *(inited + 56) = v3;
    *(v0 + 152) = OUTLINED_FUNCTION_11_5();
    v4 = swift_task_alloc();
    *(v0 + 160) = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_10_24(v4);

    return sub_2697D270C();
  }

  else
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_45();
      swift_once();
    }

    v7 = *(v0 + 112);
    v6 = *(v0 + 120);
    OUTLINED_FUNCTION_33_0(*(v0 + 104), qword_281571B38);
    (*(v7 + 16))(v6);
    v8 = sub_2698548B4();
    v9 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v9))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_31_0(&dword_269684000, v10, v11, "Request to sportsTuneIn with empty list of matchup IDs");
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    v13 = *(v0 + 112);
    v12 = *(v0 + 120);
    v14 = *(v0 + 104);

    v15 = OUTLINED_FUNCTION_12_23();
    v16(v15);
    sub_2697D9F34();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_15(v17, 4);
    v19 = *(v0 + 136);
    v18 = *(v0 + 144);
    v21 = *(v0 + 120);
    v20 = *(v0 + 128);

    OUTLINED_FUNCTION_7_7();

    return v22();
  }
}

uint64_t sub_2697D7B44()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  v6 = *(v5 + 160);
  *v4 = *v1;
  v3[21] = v7;
  v3[22] = v8;
  v3[23] = v9;
  v3[24] = v10;
  v3[25] = v0;

  if (!v0)
  {
    v11 = v3[19];
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2697D7C54()
{
  if (v0[24] != 200)
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_45();
      swift_once();
    }

    v20 = v0[23];
    v21 = v0[21];
    v22 = v0[16];
    v23 = v0[14];
    __swift_project_value_buffer(v0[13], qword_281571B38);
    v24 = OUTLINED_FUNCTION_4_32();
    v25(v24);

    v26 = sub_2698548B4();
    v27 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v27))
    {
      v28 = v0[23];
      v29 = v0[24];
      v30 = v0[21];
      v31 = OUTLINED_FUNCTION_27_2();
      *v31 = 134217984;
      *(v31 + 4) = v29;

      OUTLINED_FUNCTION_9_30(&dword_269684000, v32, v33, "Unexpected failure code %ld while requesting sportsTuneIn");
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    else
    {
      v34 = v0[23];
      v35 = v0[21];
    }

    v36 = v0[23];
    v37 = v0[21];
    (*(v0[14] + 8))(v0[16], v0[13]);
    sub_2697D9F34();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_15(v38, 5);
    goto LABEL_14;
  }

  if (qword_2803226E0 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  OUTLINED_FUNCTION_33_0(v0[13], qword_28033D910);
  v60 = *(v2 + 16);
  v61 = v3;
  v60(v1);
  v4 = sub_2698548B4();
  v5 = sub_269854F04();
  if (OUTLINED_FUNCTION_19_5(v5))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_31_0(&dword_269684000, v6, v7, "Retrieving UTS sportsTuneIn Response");
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
  }

  v8 = v0[25];
  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[21];
  v12 = v0[18];
  v14 = v0[13];
  v13 = v0[14];

  v15 = *(v13 + 8);
  v15(v12, v14);
  v16 = sub_2697D63D4(v11, v10, v9, 200, sub_2697D9FDC);
  if (v8)
  {
    v18 = v0[23];
    v19 = v0[21];
LABEL_14:

    v40 = v0[17];
    v39 = v0[18];
    v42 = v0[15];
    v41 = v0[16];

    OUTLINED_FUNCTION_7_7();

    return v43();
  }

  v57 = v17;
  v58 = v16;
  v59 = v15;
  (v60)(v0[17], v61, v0[13]);
  v45 = sub_2698548B4();
  v46 = sub_269854F04();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = OUTLINED_FUNCTION_16_2();
    *v47 = 0;
    _os_log_impl(&dword_269684000, v45, v46, "Successfully deserialized sportsTuneIn response", v47, 2u);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
  }

  v48 = v0[23];
  v49 = v0[21];
  v51 = v0[17];
  v50 = v0[18];
  v53 = v0[15];
  v52 = v0[16];
  v54 = v0[13];
  v55 = v0[14];

  v59(v51, v54);

  v56 = v0[1];

  return v56(v58, v57);
}

uint64_t sub_2697D8078()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[19];

  v2 = v0[25];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];

  OUTLINED_FUNCTION_7_7();

  return v7();
}

uint64_t sub_2697D8100()
{
  OUTLINED_FUNCTION_2_7();
  v1[9] = v2;
  v1[10] = v0;
  v3 = sub_2698548D4();
  v1[11] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[12] = v4;
  v6 = *(v5 + 64);
  v1[13] = OUTLINED_FUNCTION_37_0();
  v1[14] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2697D81B0()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[9];
  v2 = v0[10];
  OUTLINED_FUNCTION_43_6();
  v0[15] = sub_2697D8798(v1);
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_10_24(v3);

  return sub_2697D270C();
}

uint64_t sub_2697D8264()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  v6 = *(v5 + 128);
  *v4 = *v1;
  v3[17] = v7;
  v3[18] = v8;
  v3[19] = v9;
  v3[20] = v0;

  if (!v0)
  {
    v10 = v3[15];
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_2697D8370()
{
  OUTLINED_FUNCTION_49();
  if (v0[19] == 200)
  {
    v1 = v0[17];
    v2 = v0[18];
    v4 = v0[13];
    v3 = v0[14];

    OUTLINED_FUNCTION_7_7();
  }

  else
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_45();
      swift_once();
    }

    v5 = v0[17];
    v6 = v0[18];
    v7 = v0[14];
    v8 = v0[12];
    __swift_project_value_buffer(v0[11], qword_281571B38);
    v9 = OUTLINED_FUNCTION_4_32();
    v10(v9);

    v11 = sub_2698548B4();
    v12 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v12))
    {
      v13 = v0[18];
      v14 = v0[19];
      v15 = v0[17];
      v16 = OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_42_8(v16, 3.852e-34);

      OUTLINED_FUNCTION_46_4();

      OUTLINED_FUNCTION_9_30(&dword_269684000, v17, v18, "Unexpected failure code %ld while adding to WatchList");
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    else
    {
      v19 = v0[17];
      v20 = v0[18];
      swift_bridgeObjectRelease_n();
      OUTLINED_FUNCTION_44_8();
    }

    v21 = v0[19];
    (*(v0[12] + 8))(v0[14], v0[11]);
    sub_2697DA0E0();
    v22 = OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_15_24(v22, v23);
    swift_willThrow();
    v25 = v0[13];
    v24 = v0[14];

    OUTLINED_FUNCTION_7_7();
  }

  OUTLINED_FUNCTION_35_13();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2697D8538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_28_6();
  a20 = v22;
  v25 = *(v22 + 160);
  v26 = *(v22 + 120);

  *(v22 + 56) = v25;
  v27 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
  if (!swift_dynamicCast())
  {
    goto LABEL_4;
  }

  v28 = *(v22 + 64);
  if (v28)
  {
    sub_2697DA188(v28);
LABEL_4:

    v29 = *(v22 + 160);
    goto LABEL_5;
  }

  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  v42 = *(v22 + 96);
  v41 = *(v22 + 104);
  v43 = *(v22 + 72);
  OUTLINED_FUNCTION_33_0(*(v22 + 88), qword_281571B38);
  (*(v42 + 16))(v41);
  sub_2697DA030(v43, v22 + 16);
  v44 = sub_2698548B4();
  v45 = sub_269854F24();
  sub_2697DA08C(v43);
  v46 = os_log_type_enabled(v44, v45);
  v48 = *(v22 + 96);
  v47 = *(v22 + 104);
  v49 = *(v22 + 88);
  if (v46)
  {
    a9 = *(v22 + 104);
    v50 = *(v22 + 72);
    v51 = OUTLINED_FUNCTION_27_2();
    v52 = swift_slowAlloc();
    a10 = v52;
    *v51 = 136315138;
    v53 = sub_2697DBFB8();
    v55 = sub_26974F520(v53, v54, &a10);

    *(v51 + 4) = v55;
    _os_log_impl(&dword_269684000, v44, v45, "Timed out adding %s to WatchList", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();

    (*(v48 + 8))(a9, v49);
  }

  else
  {

    (*(v48 + 8))(v47, v49);
  }

  sub_2697B9A20();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_30_15(v56, 2);

LABEL_5:
  v31 = *(v22 + 104);
  v30 = *(v22 + 112);

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_116();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2697D8798(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (a1[4])
  {
    v4 = a1[2];
    v3 = a1[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26985C7B0;
    *(inited + 32) = 25705;
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v2;
    *(inited + 56) = v1;
    *(inited + 64) = 0x6449646E617262;
    *(inited + 72) = 0xE700000000000000;
    *(inited + 80) = v4;
    *(inited + 88) = v3;
    *(inited + 96) = 0x657079546469;
    *(inited + 104) = 0xE600000000000000;
    *(inited + 112) = 0x6C616E7265747845;
    *(inited + 120) = 0xE800000000000000;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
    v6 = swift_initStackObject();
    *(v6 + 16) = xmmword_2698580D0;
    *(v6 + 32) = 25705;
    *(v6 + 40) = 0xE200000000000000;
    *(v6 + 48) = v2;
    *(v6 + 56) = v1;
    *(v6 + 64) = 0x657079546469;
    *(v6 + 72) = 0xE600000000000000;
    *(v6 + 80) = 0x6163696E6F6E6143;
    *(v6 + 88) = 0xE90000000000006CLL;
  }

  return sub_269854A04();
}

uint64_t sub_2697D88FC()
{
  OUTLINED_FUNCTION_2_7();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_2698548D4();
  v1[10] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[11] = v4;
  v6 = *(v5 + 64);
  v1[12] = OUTLINED_FUNCTION_37_0();
  v1[13] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2697D89AC()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[8];
  v2 = v0[9];
  OUTLINED_FUNCTION_43_6();
  v0[14] = sub_2697D8798(v1);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_10_24(v3);

  return sub_2697D270C();
}

uint64_t sub_2697D8A60()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  v6 = *(v5 + 120);
  *v4 = *v1;
  v3[16] = v7;
  v3[17] = v8;
  v3[18] = v9;
  v3[19] = v0;

  if (!v0)
  {
    v10 = v3[14];
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_2697D8B6C()
{
  OUTLINED_FUNCTION_49();
  if (v0[18] == 200)
  {
    v1 = v0[16];
    v2 = v0[17];
    v4 = v0[12];
    v3 = v0[13];

    OUTLINED_FUNCTION_7_7();
  }

  else
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_45();
      swift_once();
    }

    v5 = v0[16];
    v6 = v0[17];
    v8 = v0[11];
    v7 = v0[12];
    __swift_project_value_buffer(v0[10], qword_281571B38);
    v9 = OUTLINED_FUNCTION_4_32();
    v10(v9);

    v11 = sub_2698548B4();
    v12 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v12))
    {
      v13 = v0[17];
      v14 = v0[18];
      v15 = v0[16];
      v16 = OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_42_8(v16, 3.9122e-34);

      OUTLINED_FUNCTION_46_4();

      OUTLINED_FUNCTION_9_30(&dword_269684000, v17, v18, "Unexpected failure code %{public}ld while removing from WatchList");
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    else
    {
      v19 = v0[16];
      v20 = v0[17];
      swift_bridgeObjectRelease_n();
      OUTLINED_FUNCTION_44_8();
    }

    v21 = v0[18];
    (*(v0[11] + 8))(v0[12], v0[10]);
    sub_2697DA0E0();
    v22 = OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_15_24(v22, v23);
    v25 = v0[12];
    v24 = v0[13];
    swift_willThrow();

    OUTLINED_FUNCTION_7_7();
  }

  OUTLINED_FUNCTION_35_13();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2697D8D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_28_6();
  a20 = v22;
  v25 = v22[14];

  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  v26 = v22[19];
  v27 = v22[13];
  v28 = v22[11];
  v29 = v22[8];
  OUTLINED_FUNCTION_33_0(v22[10], qword_281571B38);
  (*(v28 + 16))(v27);
  sub_2697DA030(v29, (v22 + 2));
  v30 = v26;
  v31 = sub_2698548B4();
  v32 = sub_269854F24();
  sub_2697DA08C(v29);

  if (os_log_type_enabled(v31, v32))
  {
    v33 = v22[19];
    a9 = v22[13];
    v35 = v22[10];
    v34 = v22[11];
    v36 = v22[8];
    v37 = swift_slowAlloc();
    a10 = swift_slowAlloc();
    *v37 = 136315394;
    v38 = sub_2697DBFB8();
    v40 = sub_26974F520(v38, v39, &a10);

    *(v37 + 4) = v40;
    *(v37 + 12) = 2080;
    v22[7] = v33;
    v41 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v42 = sub_269854AE4();
    v44 = sub_26974F520(v42, v43, &a10);

    *(v37 + 14) = v44;
    _os_log_impl(&dword_269684000, v31, v32, "Error removing %s from WatchList: %s", v37, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();

    (*(v34 + 8))(a9, v35);
  }

  else
  {
    v45 = v22[13];
    v46 = v22[10];
    v47 = v22[11];

    (*(v47 + 8))(v45, v46);
  }

  v48 = v22[19];
  v50 = v22[12];
  v49 = v22[13];
  swift_willThrow();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_116();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2697D8FA4()
{
  OUTLINED_FUNCTION_2_7();
  v1[12] = v2;
  v1[13] = v0;
  v1[11] = v3;
  v4 = sub_2698548D4();
  v1[14] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[15] = v5;
  v7 = *(v6 + 64);
  v1[16] = OUTLINED_FUNCTION_37_0();
  v1[17] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2697D9058()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1(*(v0 + 104), *(*(v0 + 104) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v2;
  *(inited + 56) = v1;

  *(v0 + 144) = OUTLINED_FUNCTION_11_5();
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_24_16(v4);

  return sub_2697D270C();
}

uint64_t sub_2697D9168()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  v6 = *(v5 + 152);
  *v4 = *v1;
  OUTLINED_FUNCTION_39_6(v7, v8, v9, v10);
  if (!v0)
  {
    v11 = *(v3 + 144);
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_2697D9268()
{
  OUTLINED_FUNCTION_49();
  if (v0[23] == 200)
  {
    v2 = v0[24];
    v3 = v0[13];
    sub_2697D966C(v0[20], v0[21], v0[22], 200);
    OUTLINED_FUNCTION_33_13();
    if (!v3)
    {
      v25 = v0[16];
      v24 = v0[17];

      v26 = v0[1];
      OUTLINED_FUNCTION_35_13();

      __asm { BRAA            X2, X16 }
    }
  }

  else
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_45();
      swift_once();
    }

    OUTLINED_FUNCTION_34_10();
    __swift_project_value_buffer(v1, qword_281571B38);
    v4 = OUTLINED_FUNCTION_4_32();
    v5(v4);

    v6 = sub_2698548B4();
    v7 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v7))
    {
      v8 = v0[22];
      v9 = v0[23];
      v10 = v0[20];
      v11 = OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_42_8(v11, 3.9122e-34);

      OUTLINED_FUNCTION_46_4();

      OUTLINED_FUNCTION_9_30(&dword_269684000, v12, v13, "Unexpected failure code %{public}ld while removing from WatchList");
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    else
    {
      v14 = v0[22];
      v15 = v0[20];
      swift_bridgeObjectRelease_n();
      OUTLINED_FUNCTION_44_8();
    }

    v16 = OUTLINED_FUNCTION_32_11();
    v17(v16);
    sub_2697DA0E0();
    v18 = OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_15_24(v18, v19);
    swift_willThrow();
  }

  v21 = v0[16];
  v20 = v0[17];

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_35_13();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2697D947C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_28_6();
  a20 = v22;
  v25 = v22[18];

  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  v26 = v22[24];
  v27 = v22[17];
  v28 = v22[15];
  OUTLINED_FUNCTION_33_0(v22[14], qword_281571B38);
  (*(v28 + 16))(v27);
  v29 = v26;
  v30 = sub_2698548B4();
  LOBYTE(v28) = sub_269854F24();

  if (os_log_type_enabled(v30, v28))
  {
    v31 = v22[24];
    v32 = v22[17];
    v33 = v22[14];
    v34 = v22[15];
    v35 = OUTLINED_FUNCTION_27_2();
    v36 = swift_slowAlloc();
    a10 = v36;
    *v35 = 136315138;
    v22[10] = v31;
    v37 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v38 = sub_269854AE4();
    v40 = sub_26974F520(v38, v39, &a10);

    *(v35 + 4) = v40;
    OUTLINED_FUNCTION_119(&dword_269684000, v41, v42, "Error searching against WatchList: %s");
    __swift_destroy_boxed_opaque_existential_0(v36);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();

    (*(v34 + 8))(v32, v33);
  }

  else
  {
    v43 = v22[17];
    v44 = v22[14];
    v45 = v22[15];

    v46 = OUTLINED_FUNCTION_12_23();
    v47(v46);
  }

  v48 = v22[24];
  swift_willThrow();
  v49 = v22[24];
  v51 = v22[16];
  v50 = v22[17];

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_116();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2697D966C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_269854824();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2803226D8 != -1)
  {
    swift_once();
  }

  v11 = qword_281571B68;
  sub_2698547F4();
  sub_269854FF4();
  sub_2698547E4();
  v12 = sub_2697D5B68();
  if (!v4)
  {
    a4 = sub_2697C3B1C(v12, v13, v14);

    sub_269854FE4();
    sub_2698547E4();
  }

  (*(v7 + 8))(v10, v6);
  return a4;
}

uint64_t sub_2697D984C()
{
  OUTLINED_FUNCTION_2_7();
  v1[12] = v2;
  v1[13] = v0;
  v1[11] = v3;
  v4 = sub_2698548D4();
  v1[14] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[15] = v5;
  v7 = *(v6 + 64);
  v1[16] = OUTLINED_FUNCTION_37_0();
  v1[17] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2697D9900()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1(*(v0 + 104), *(*(v0 + 104) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v2;
  *(inited + 56) = v1;

  *(v0 + 144) = OUTLINED_FUNCTION_11_5();
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_24_16(v4);

  return sub_2697D270C();
}

uint64_t sub_2697D9A0C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  v6 = *(v5 + 152);
  *v4 = *v1;
  OUTLINED_FUNCTION_39_6(v7, v8, v9, v10);
  if (!v0)
  {
    v11 = *(v3 + 144);
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2697D9B0C()
{
  OUTLINED_FUNCTION_49();
  if (v2[23] != 200)
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_45();
      swift_once();
    }

    OUTLINED_FUNCTION_34_10();
    __swift_project_value_buffer(v3, qword_281571B38);
    v11 = OUTLINED_FUNCTION_4_32();
    v12(v11);

    v13 = sub_2698548B4();
    v14 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v14))
    {
      v15 = v2[22];
      v16 = v2[23];
      v17 = v2[20];
      v18 = OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_42_8(v18, 3.852e-34);

      OUTLINED_FUNCTION_46_4();

      OUTLINED_FUNCTION_9_30(&dword_269684000, v19, v20, "Unexpected failure code %ld while searching for live services");
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    else
    {
      v21 = v2[22];
      v22 = v2[20];
      swift_bridgeObjectRelease_n();
      OUTLINED_FUNCTION_44_8();
    }

    v23 = OUTLINED_FUNCTION_32_11();
    v24(v23);
    sub_2697DA0E0();
    v25 = OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_15_24(v25, v26);
    swift_willThrow();
    goto LABEL_10;
  }

  v4 = v2[24];
  v5 = v2[21];
  v6 = v2[22];
  v7 = v2[20];
  sub_2697D5730();
  OUTLINED_FUNCTION_33_13();
  if (v1)
  {

LABEL_10:
    v28 = v2[16];
    v27 = v2[17];

    OUTLINED_FUNCTION_7_7();

    return v29();
  }

  v31 = v8;
  v32 = v9;
  v33 = v10;
  v35 = v2[16];
  v34 = v2[17];

  v36 = v2[1];

  return v36(v0, v31, v32, v33);
}

uint64_t sub_2697D9D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_28_6();
  a20 = v22;
  v25 = v22[18];

  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  v26 = v22[24];
  v27 = v22[17];
  v28 = v22[15];
  OUTLINED_FUNCTION_33_0(v22[14], qword_281571B38);
  (*(v28 + 16))(v27);
  v29 = v26;
  v30 = sub_2698548B4();
  LOBYTE(v28) = sub_269854F24();

  if (os_log_type_enabled(v30, v28))
  {
    v31 = v22[24];
    v32 = v22[17];
    v33 = v22[14];
    v34 = v22[15];
    v35 = OUTLINED_FUNCTION_27_2();
    v36 = swift_slowAlloc();
    a10 = v36;
    *v35 = 136315138;
    v22[10] = v31;
    v37 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v38 = sub_269854AE4();
    v40 = sub_26974F520(v38, v39, &a10);

    *(v35 + 4) = v40;
    OUTLINED_FUNCTION_119(&dword_269684000, v41, v42, "Error searching for live services: %s");
    __swift_destroy_boxed_opaque_existential_0(v36);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();

    (*(v34 + 8))(v32, v33);
  }

  else
  {
    v43 = v22[17];
    v44 = v22[14];
    v45 = v22[15];

    v46 = OUTLINED_FUNCTION_12_23();
    v47(v46);
  }

  v48 = v22[24];
  swift_willThrow();
  v49 = v22[24];
  v51 = v22[16];
  v50 = v22[17];

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_116();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14);
}

unint64_t sub_2697D9F34()
{
  result = qword_280325400;
  if (!qword_280325400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325400);
  }

  return result;
}

unint64_t sub_2697D9F88()
{
  result = qword_280325408;
  if (!qword_280325408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325408);
  }

  return result;
}

unint64_t sub_2697D9FDC()
{
  result = qword_280325410;
  if (!qword_280325410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325410);
  }

  return result;
}

unint64_t sub_2697DA0E0()
{
  result = qword_280325418;
  if (!qword_280325418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325418);
  }

  return result;
}

unint64_t sub_2697DA134()
{
  result = qword_280325420;
  if (!qword_280325420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325420);
  }

  return result;
}

void sub_2697DA188(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_2697DA198(uint64_t a1, uint64_t a2)
{
  v4 = _s11ContentLiteOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2697DA1FC(uint64_t a1)
{
  v2 = _s11ContentLiteOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2697DA258()
{
  result = qword_280325428;
  if (!qword_280325428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325428);
  }

  return result;
}

unint64_t sub_2697DA2AC()
{
  result = qword_280325430;
  if (!qword_280325430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325430);
  }

  return result;
}

uint64_t sub_2697DA30C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2697DA34C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_9_30(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_30_15@<X0>(_BYTE *a1@<X1>, char a2@<W8>)
{
  *a1 = a2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_32_11()
{
  v1 = v0[23];
  result = v0[16];
  v3 = v0[14];
  v4 = *(v0[15] + 8);
  return result;
}

void OUTLINED_FUNCTION_34_10()
{
  v1 = v0[22];
  v2 = v0[20];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
}

uint64_t OUTLINED_FUNCTION_36_9()
{

  return sub_269854A44();
}

uint64_t OUTLINED_FUNCTION_38_12()
{
}

uint64_t OUTLINED_FUNCTION_39_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a1;
  v4[21] = a2;
  v4[22] = a3;
  v4[23] = a4;
  v4[24] = v5;
}

id OUTLINED_FUNCTION_40_7()
{

  return sub_2697D5B68();
}

uint64_t OUTLINED_FUNCTION_42_8(float *a1, float a2)
{
  *a1 = a2;
}

void *OUTLINED_FUNCTION_43_6()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v2);
}

uint64_t OUTLINED_FUNCTION_44_8()
{

  return swift_bridgeObjectRelease_n();
}

uint64_t OUTLINED_FUNCTION_46_4()
{
  *(v0 + 4) = v1;
}

uint64_t sub_2697DA594(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  v3 = MEMORY[0x277D84F98];
  v44 = MEMORY[0x277D84F98];
  v42 = *(a1 + 16);
  v4 = (a1 + 48);
  v40 = xmmword_269857710;
  while (1)
  {
    if (v42 == v2)
    {

      return v3;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v43 = v4;
    v7 = *v4;
    v8 = sub_26973D314(*v4);
    v10 = v3[2];
    v11 = (v9 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      goto LABEL_19;
    }

    v13 = v8;
    v14 = v9;
    v15 = v3[3];

    if (v15 < v12)
    {
      sub_26980E770(v12, 1, v16, v17, v18, v19, v20, v21, v38, v39, v40, SBYTE4(v40));
      v3 = v44;
      v22 = sub_26973D314(v7);
      if ((v14 & 1) != (v23 & 1))
      {
        goto LABEL_21;
      }

      v13 = v22;
    }

    if (v14)
    {
      v24 = v3[7];
      v25 = *(v24 + 8 * v13);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v13) = v25;
      v39 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = *(v25 + 16);
        sub_26977CBAC();
        v25 = v35;
        *(v24 + 8 * v13) = v35;
      }

      v27 = *(v25 + 16);
      if (v27 >= *(v25 + 24) >> 1)
      {
        sub_26977CBAC();
        v25 = v36;
        *(v24 + 8 * v13) = v36;
      }

      v28 = v43;
      *(v25 + 16) = v27 + 1;
      v29 = v25 + 24 * v27;
      *(v29 + 32) = v5;
      *(v29 + 40) = v6;
      *(v29 + 48) = v7;
      v1 = a1;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803243A0, &qword_26985F418);
      v30 = swift_allocObject();
      *(v30 + 16) = v40;
      *(v30 + 32) = v5;
      *(v30 + 40) = v6;
      *(v30 + 48) = v7;
      v3[(v13 >> 6) + 8] |= 1 << v13;
      *(v3[6] + v13) = v7;
      *(v3[7] + 8 * v13) = v30;
      v31 = v3[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_20;
      }

      v3[2] = v33;
      v28 = v43;
    }

    v4 = v28 + 24;
    ++v2;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325438, qword_269865CA8);
  result = sub_2698555F4();
  __break(1u);
  return result;
}

uint64_t sub_2697DA7E8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_24_3();
  v56 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = v55 - v7;
  v9 = sub_2698548D4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_24_3();
  v55[0] = v12;
  MEMORY[0x28223BE20](v13);
  v15 = v55 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230C0, &unk_269859340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269858BC0;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  v17 = *(a1 + 8);
  *(inited + 48) = *a1;
  *(inited + 56) = v17;
  *(inited + 64) = 0x6163696E6F6E6163;
  *(inited + 72) = 0xEF6449776F68536CLL;
  v18 = *(a1 + 24);
  *(inited + 80) = *(a1 + 16);
  *(inited + 88) = v18;
  *(inited + 96) = 0x6F54676E69676170;
  *(inited + 104) = 0xEB000000006E656BLL;
  v19 = *(a1 + 40);
  *(inited + 112) = *(a1 + 32);
  *(inited + 120) = v19;
  *(inited + 128) = 0x7365726E6567;
  *(inited + 136) = 0xE600000000000000;
  v20 = *(a1 + 104);
  *(inited + 144) = *(a1 + 96);
  *(inited + 152) = v20;
  *(inited + 160) = 0x4E736F6964757473;
  *(inited + 168) = 0xEF736B726F777465;
  v57 = type metadata accessor for ContentResolutionParameters();
  v21 = (a1 + *(v57 + 60));
  v22 = v21[1];
  *(inited + 176) = *v21;
  *(inited + 184) = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  v23 = sub_269854A04();
  v59[0] = v23;
  v24 = *(a1 + 56);
  if (v24 > 5)
  {
    v18 = *(a1 + 48);
    sub_2697DBE0C(v18, *(a1 + 56));
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_44();
    *(v54 - 256) = v23;
    OUTLINED_FUNCTION_6_36();
    sub_26984076C();
    OUTLINED_FUNCTION_0_49();
    v25 = v10;
  }

  else if (((1 << v24) & 0x1B) != 0)
  {
    v25 = v10;
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v26 = __swift_project_value_buffer(v9, qword_281571B38);
    (*(v10 + 16))(v15, v26, v9);
    v27 = sub_2698548B4();
    v28 = sub_269854F14();
    if (os_log_type_enabled(v27, v28))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_269684000, v27, v28, "Unsupported value for episode while mapping parameters", v18, 2u);
      MEMORY[0x26D647170](v18, -1, -1);
    }

    (*(v10 + 8))(v15, v9);
  }

  else
  {
    v25 = v10;
    if (v24 == 2)
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_1_44();
      *(v33 - 256) = v23;
      sub_26984076C();
      OUTLINED_FUNCTION_0_49();
    }
  }

  switch(*(a1 + 72))
  {
    case 0:
      if (qword_280322700 != -1)
      {
        goto LABEL_49;
      }

      goto LABEL_10;
    case 1:
      OUTLINED_FUNCTION_4_33();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_1_44();
      *(v34 - 256) = v18;
      OUTLINED_FUNCTION_3_40();
      goto LABEL_18;
    case 2:
      OUTLINED_FUNCTION_4_33();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_1_44();
      *(v35 - 256) = v18;
      goto LABEL_18;
    case 3:
      goto LABEL_19;
    default:
      v18 = *(a1 + 64);
      sub_2697DBDF8(v18, *(a1 + 72));
      v36 = v59[0];
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_1_44();
      *(v37 - 256) = v36;
      OUTLINED_FUNCTION_3_40();
LABEL_18:
      sub_26984076C();
      OUTLINED_FUNCTION_0_49();
      break;
  }

  while (1)
  {
LABEL_19:
    v38 = v57;
    switch(*(a1 + 80))
    {
      case 1:
      case 2:
      case 4:
        break;
      default:
        OUTLINED_FUNCTION_4_33();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_1_44();
        *(v39 - 256) = v18;
        OUTLINED_FUNCTION_7_36();
        sub_26984076C();
        OUTLINED_FUNCTION_0_49();
        break;
    }

    sub_269707020(a1 + v38[13], v8);
    v9 = sub_269851D34();
    v25 = &unk_26985A000;
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_2697DB144(v8);
    }

    else
    {
      sub_269851D04();
      OUTLINED_FUNCTION_8_33();
      (*(v40 + 8))(v8, v9);
      if ((v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (v1 <= -9.22337204e18)
      {
        goto LABEL_42;
      }

      if (v1 >= 9.22337204e18)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_5_32();
      if (!v42)
      {
        goto LABEL_46;
      }

      v8 = "contentConversion";
      v58[0] = v41;
      v18 = sub_269855544();
      v43 = v59[0];
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_1_44();
      *(v44 - 256) = v43;
      OUTLINED_FUNCTION_6_36();
      sub_26984076C();
      OUTLINED_FUNCTION_0_49();
    }

    v45 = v56;
    sub_269707020(a1 + v38[14], v56);
    if (__swift_getEnumTagSinglePayload(v45, 1, v9) == 1)
    {
      sub_2697DB144(v45);
      goto LABEL_37;
    }

    sub_269851D04();
    OUTLINED_FUNCTION_8_33();
    (*(v46 + 8))(v45, v9);
    if ((v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_43;
    }

    if (v1 <= -9.22337204e18)
    {
      goto LABEL_45;
    }

    if (v1 >= 9.22337204e18)
    {
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_5_32();
    if (v42)
    {
      break;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    OUTLINED_FUNCTION_0_4();
LABEL_10:
    v29 = __swift_project_value_buffer(v9, qword_281571B38);
    v30 = v55[0];
    v25[2](v55[0], v29, v9);
    v31 = sub_2698548B4();
    v32 = sub_269854F14();
    if (os_log_type_enabled(v31, v32))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_269684000, v31, v32, "Unsupported value for season while mapping parameters", v18, 2u);
      MEMORY[0x26D647170](v18, -1, -1);
    }

    (v25[1])(v30, v9);
  }

  v58[0] = v47;
  sub_269855544();
  OUTLINED_FUNCTION_10_25();
  OUTLINED_FUNCTION_1_44();
  *(v48 - 256) = v58;
  OUTLINED_FUNCTION_6_36();
  sub_26984076C();
  OUTLINED_FUNCTION_0_49();
LABEL_37:
  v49 = a1 + v38[16];
  if ((*(v49 + 8) & 1) == 0)
  {
    v58[0] = *v49;
    sub_269855544();
    OUTLINED_FUNCTION_10_25();
    OUTLINED_FUNCTION_1_44();
    *(v50 - 256) = v58;
    OUTLINED_FUNCTION_6_36();
    sub_26984076C();
    OUTLINED_FUNCTION_0_49();
  }

  sub_2697DB1AC(*(a1 + 88), v59);
  sub_2697DB2D4(*(a1 + 81), v59);
  sub_2697DB47C(a1, v59);
  v51 = OUTLINED_FUNCTION_4_33();
  v52 = sub_2697DB828(v51);

  return v52;
}

uint64_t sub_2697DB144(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2697DB1AC(uint64_t a1, uint64_t *a2)
{

  v5 = sub_2697DA594(v4);
  v6 = v5;
  v7 = v5 + 64;
  v8 = 1 << *(v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_9:
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v16 = v15 | (v14 << 6);
      v17 = *(*(v6 + 56) + 8 * v16);
      v18 = *(*(v6 + 48) + v16);

      sub_2697DBA78(v18, v17, v2, a2);

      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return result;
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }
}

uint64_t sub_2697DB2D4(uint64_t result, uint64_t *a2)
{
  switch(result)
  {
    case 9:
      return result;
    default:
      v3 = *a2;
      swift_isUniquelyReferenced_nonNull_native();
      v4 = *a2;
      result = sub_26984076C();
      *a2 = v4;
      break;
  }

  return result;
}

uint64_t sub_2697DB47C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ContentResolutionParameters();
  v5 = *(a1 + v4[17]);
  if (v5 == 2 || (v5 & 1) == 0)
  {
    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_26977BCE4();
    v7 = v6;
    v8 = *(v6 + 16);
    v9 = v8 + 1;
    if (v8 >= *(v6 + 24) >> 1)
    {
      sub_26977BCE4();
      v9 = v8 + 1;
      v7 = v27;
    }

    *(v7 + 16) = v9;
    v10 = v7 + 16 * v8;
    *(v10 + 32) = 4474965;
    *(v10 + 40) = 0xE300000000000000;
  }

  v11 = *(a1 + v4[18]);
  if (v11 != 2 && (v11 & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = *(v7 + 16);
      sub_26977BCE4();
      v7 = v29;
    }

    v12 = *(v7 + 16);
    v13 = v12 + 1;
    if (v12 >= *(v7 + 24) >> 1)
    {
      sub_26977BCE4();
      v13 = v12 + 1;
      v7 = v30;
    }

    *(v7 + 16) = v13;
    v14 = v7 + 16 * v12;
    strcpy((v14 + 32), "DolbyVisionHDR");
    *(v14 + 47) = -18;
  }

  v15 = *(a1 + v4[19]);
  if (v15 != 2 && (v15 & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = *(v7 + 16);
      sub_26977BCE4();
      v7 = v32;
    }

    v16 = *(v7 + 16);
    v17 = v16 + 1;
    if (v16 >= *(v7 + 24) >> 1)
    {
      sub_26977BCE4();
      v17 = v16 + 1;
      v7 = v33;
    }

    *(v7 + 16) = v17;
    v18 = v7 + 16 * v16;
    *(v18 + 32) = 0x736F6D7441;
    *(v18 + 40) = 0xE500000000000000;
  }

  v19 = *(a1 + v4[20]);
  if (v19 != 2 && (v19 & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = *(v7 + 16);
      sub_26977BCE4();
      v7 = v35;
    }

    v20 = *(v7 + 16);
    v21 = v20 + 1;
    if (v20 >= *(v7 + 24) >> 1)
    {
      sub_26977BCE4();
      v21 = v20 + 1;
      v7 = v36;
    }

    *(v7 + 16) = v21;
    v22 = v7 + 16 * v20;
    *(v22 + 32) = 5391432;
    *(v22 + 40) = 0xE300000000000000;
  }

  if (*(v7 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
    sub_2697B47C4();
    sub_269854A44();

    v23 = *a2;
    swift_isUniquelyReferenced_nonNull_native();
    v37 = *a2;
    result = sub_26984076C();
    *a2 = v37;
  }

  else
  {
  }

  v25 = *(a1 + v4[22]);
  if (v25 != 2 && (v25 & 1) != 0)
  {
    v26 = *a2;
    swift_isUniquelyReferenced_nonNull_native();
    v38 = *a2;
    result = sub_26984076C();
    *a2 = v38;
  }

  return result;
}

uint64_t sub_2697DB828(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v33 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 56) + 16 * v12);
    v14 = v13[1];
    if (v14)
    {
      v15 = (*(a1 + 48) + 16 * v12);
      v31 = v15[1];
      v32 = *v15;
      v30 = *v13;
      v16 = *(v2 + 16);
      if (*(v2 + 24) <= v16)
      {

        sub_26980E904(v16 + 1, 1);
        v2 = v33;
      }

      else
      {
      }

      v17 = *(v2 + 40);
      sub_269855674();
      sub_269854B34();
      result = sub_2698556C4();
      v18 = v2 + 64;
      v19 = -1 << *(v2 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v19) >> 6;
        v23 = v31;
        while (++v21 != v25 || (v24 & 1) == 0)
        {
          v26 = v21 == v25;
          if (v21 == v25)
          {
            v21 = 0;
          }

          v24 |= v26;
          v27 = *(v18 + 8 * v21);
          if (v27 != -1)
          {
            v22 = __clz(__rbit64(~v27)) + (v21 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v22 = __clz(__rbit64((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
      v23 = v31;
LABEL_23:
      *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v28 = (*(v2 + 48) + 16 * v22);
      *v28 = v32;
      v28[1] = v23;
      v29 = (*(v2 + 56) + 16 * v22);
      *v29 = v30;
      v29[1] = v14;
      ++*(v2 + 16);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2697DBA78(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_2698548D4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325438, qword_269865CA8);
  sub_2697DBE20();
  v12 = sub_269854A04();
  v13 = sub_26981D6D4(a1, v12);
  v15 = v14;

  if (v15)
  {
    v16 = *(a2 + 16);
    v17 = MEMORY[0x277D84F90];
    if (v16)
    {
      v34[1] = v13;
      v36 = MEMORY[0x277D84F90];
      sub_269814F0C(0, v16, 0);
      v17 = v36;
      v18 = (a2 + 40);
      do
      {
        v20 = *(v18 - 1);
        v19 = *v18;
        v36 = v17;
        v22 = *(v17 + 16);
        v21 = *(v17 + 24);

        if (v22 >= v21 >> 1)
        {
          sub_269814F0C(v21 > 1, v22 + 1, 1);
          v17 = v36;
        }

        *(v17 + 16) = v22 + 1;
        v23 = v17 + 16 * v22;
        *(v23 + 32) = v20;
        *(v23 + 40) = v19;
        v18 += 3;
        --v16;
      }

      while (v16);
    }

    v36 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
    sub_2697B47C4();
    sub_269854A44();

    v24 = *a4;
    swift_isUniquelyReferenced_nonNull_native();
    v36 = *a4;
    sub_26984076C();
    *a4 = v36;
  }

  else
  {
    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v7, qword_281571B38);
    (*(v8 + 16))(v11, v26, v7);
    v27 = sub_2698548B4();
    v28 = sub_269854F24();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36 = v30;
      *v29 = 136315138;
      v35 = a1;
      v31 = sub_269854AE4();
      v33 = sub_26974F520(v31, v32, &v36);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_269684000, v27, v28, "Unexpected role: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x26D647170](v30, -1, -1);
      MEMORY[0x26D647170](v29, -1, -1);
    }

    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_2697DBDF8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_2697DBE0C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

unint64_t sub_2697DBE20()
{
  result = qword_280325440;
  if (!qword_280325440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325438, qword_269865CA8);
    sub_2697DBEA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325440);
  }

  return result;
}

unint64_t sub_2697DBEA4()
{
  result = qword_280325448[0];
  if (!qword_280325448[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280325448);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_25()
{
  v2 = *(v0 - 112);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_2697DBFB8()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[4])
  {
    v4 = v0[2];
    v3 = v0[3];
    v9 = 0;
    sub_269855204();

    v5 = OUTLINED_FUNCTION_0_50();
    MEMORY[0x26D645A60](v5);
    MEMORY[0x26D645A60](0x49646E617262202CLL, 0xEB00000000203A64);
    v6 = v4;
    v7 = v3;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_0_50();
  }

  MEMORY[0x26D645A60](v6, v7);
  MEMORY[0x26D645A60](41, 0xE100000000000000);
  return v9;
}

uint64_t sub_2697DC0B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2697DC0F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_2697DC16C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2697DC1AC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2697DC204(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *sub_2697DC27C(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFF8;
    if ((v6 & 0xFFFFFFF8) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *(result + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *result;
        }

        return (v5 + (v8 | v13) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return __swift_getEnumTagSinglePayload(result, v5, v4);
        }

        return 0;
    }
  }

  return __swift_getEnumTagSinglePayload(result, v5, v4);
}

void sub_2697DC380(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 <= v7)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        break;
      case 2:
        *&a1[v8] = v13;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_2697DC530()
{
  sub_269855204();
  MEMORY[0x26D645A60](0xD00000000000001ELL, 0x80000002698804C0);
  v4 = v0[5];
  v1 = sub_269855544();
  MEMORY[0x26D645A60](v1);

  MEMORY[0x26D645A60](0x746C75736572202CLL, 0xEA0000000000203ALL);
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_269855564();
  MEMORY[0x26D645A60](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_2697DC628(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 56))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
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

uint64_t sub_2697DC664(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents17AppPredictorModel_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents16TrialIdentifiersVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2697DC6FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 184))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 160);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2697DC73C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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
      *(result + 160) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_2697DC7B8(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_269851C24();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_269851C74();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_269851BD4();

    swift_willThrow();
    v11 = sub_269851C74();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_2697DC920()
{
  type metadata accessor for TrialAppPredictorConfigProvider();
  v0 = swift_allocObject();
  result = sub_2697DE150();
  qword_28033D8A8 = v0;
  return result;
}

void sub_2697DC998(uint64_t a1@<X8>)
{
  v2 = v1;
  v179 = 0;
  v182 = sub_269851C74();
  v4 = OUTLINED_FUNCTION_8(v182);
  v181 = v5;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v178 = &v167[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v180 = &v167[-v10];
  v11 = sub_2698548D4();
  v12 = OUTLINED_FUNCTION_8(v11);
  v184 = v13;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v167[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v167[-v20];
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v167[-v23];
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v167[-v26];
  MEMORY[0x28223BE20](v25);
  v29 = &v167[-v28];
  OUTLINED_FUNCTION_0_51();
  v30 = sub_2697E902C(0xD000000000000014, 0x800000026987BBA0);
  if (!v30)
  {
    v40 = 0;
    goto LABEL_47;
  }

  v1 = v30;
  v177 = v18;
  v183 = v2;
  v31 = [v30 BOOLeanValue];

  if (v31)
  {
    v176 = v27;
    OUTLINED_FUNCTION_0_51();
    v32 = sub_2697E902C(0xD000000000000014, 0x80000002698806D0);
    if (v32 && (v33 = v32, v34 = [v32 directoryValue], v33, v34))
    {
      if ([v34 hasPath] && (v35 = sub_2697DE354(v34), v36))
      {
        v172 = v36;
        v173 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803249A8, &qword_269860CE8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2698580D0;
        v38 = [v34 asset];
        if (v38)
        {
          v38 = sub_2696D1E04(v38, &selRef_name);
        }

        else
        {
          v39 = 0;
        }

        *(inited + 32) = v38;
        *(inited + 40) = v39;
        v52 = [v34 asset];
        v174 = v34;
        if (v52)
        {
          v53 = v52;
          v54 = inited;
          v55 = [v52 size];

          *&v186[0] = 0x20657A6973;
          *(&v186[0] + 1) = 0xE500000000000000;
          v185 = v55;
          v56 = sub_269855544();
          MEMORY[0x26D645A60](v56);
          inited = v54;

          v58 = *(&v186[0] + 1);
          v57 = *&v186[0];
        }

        else
        {
          v57 = 0;
          v58 = 0;
        }

        v59 = 0;
        *(inited + 48) = v57;
        *(inited + 56) = v58;
        v171 = inited;
        v60 = inited + 40;
        v61 = MEMORY[0x277D84F90];
        v175 = v11;
LABEL_25:
        v62 = (v60 + 16 * v59);
        while (++v59 != 3)
        {
          v63 = v62 + 2;
          v64 = *v62;
          v62 += 2;
          if (v64)
          {
            v170 = *(v63 - 3);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v67 = *(v61 + 16);
              sub_26977BCE4();
              v61 = v68;
            }

            v65 = *(v61 + 16);
            if (v65 >= *(v61 + 24) >> 1)
            {
              sub_26977BCE4();
              v61 = v69;
            }

            *(v61 + 16) = v65 + 1;
            v66 = v61 + 16 * v65;
            *(v66 + 32) = v170;
            *(v66 + 40) = v64;
            v11 = v175;
            goto LABEL_25;
          }
        }

        swift_setDeallocating();
        sub_269819D58();
        *&v186[0] = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
        sub_2697B47C4();
        v70 = sub_269854A44();
        v72 = v71;

        if (qword_280322708 != -1)
        {
          OUTLINED_FUNCTION_2_1();
        }

        __swift_project_value_buffer(v11, qword_281571B50);
        OUTLINED_FUNCTION_5_33();
        v169 = v73;
        v171 = v74;
        v170 = v75;
        v75(v29);

        v76 = sub_2698548B4();
        v77 = sub_269854F14();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = OUTLINED_FUNCTION_27_2();
          v168 = v77;
          v79 = v70;
          v80 = v78;
          v81 = OUTLINED_FUNCTION_9_3();
          *&v186[0] = v81;
          *v80 = 136315138;
          v82 = sub_26974F520(v79, v72, v186);

          *(v80 + 4) = v82;
          _os_log_impl(&dword_269684000, v76, v168, "TrialAppPredictorConfigProvider attempting to load model %s", v80, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v81);
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_10();
        }

        else
        {
        }

        v83 = MEMORY[0x280322008];
        MEMORY[0x280322008](v29, v11);
        v84 = v177;
        v85 = v180;
        sub_269851C14();

        v86 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
        [v86 setComputeUnits_];
        sub_26969329C(0, &qword_280322EA8, 0x277CBFF20);
        v87 = v178;
        (*(v181 + 16))(v178, v85, v182);
        v88 = v86;
        v89 = v179;
        v90 = sub_2697DC7B8(v87, v88);
        v91 = v176;
        if (!v89)
        {
          v103 = v90;
          v178 = v88;
          v104 = v175;
          OUTLINED_FUNCTION_7_37();
          v105();
          v40 = v103;
          v1 = sub_2698548B4();
          v106 = sub_269854F14();

          if (os_log_type_enabled(v1, v106))
          {
            v107 = OUTLINED_FUNCTION_27_2();
            v173 = v107;
            v177 = OUTLINED_FUNCTION_9_3();
            *&v186[0] = v177;
            *v107 = 136315138;
            v108 = [v40 modelDescription];
            v109 = [v108 outputDescriptionsByName];
            LODWORD(v172) = v106;
            v110 = v109;

            sub_26969329C(0, &qword_2803254D8, 0x277CBFEE0);
            v179 = v83;
            sub_2698549E4();

            v111 = sub_269854A14();
            v113 = v112;

            v114 = sub_26974F520(v111, v113, v186);

            v115 = v173;
            *(v173 + 1) = v114;
            _os_log_impl(&dword_269684000, v1, v172, "TrialAppPredictorConfigProvider loaded model with outputs %s", v115, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v177);
            OUTLINED_FUNCTION_10();
            OUTLINED_FUNCTION_10();

            OUTLINED_FUNCTION_11_31();
            OUTLINED_FUNCTION_2_31();
            v179(v176, v104);
          }

          else
          {

            OUTLINED_FUNCTION_11_31();
            OUTLINED_FUNCTION_2_31();
            v83(v91, v104);
          }

          v165 = OUTLINED_FUNCTION_3_41();
          v166(v165);
          goto LABEL_46;
        }

        v92 = v175;
        OUTLINED_FUNCTION_7_37();
        v93();
        v94 = v89;
        v1 = sub_2698548B4();
        v95 = sub_269854F24();

        if (os_log_type_enabled(v1, v95))
        {
          v96 = OUTLINED_FUNCTION_27_2();
          v97 = OUTLINED_FUNCTION_9_3();
          v179 = v83;
          v98 = v97;
          *&v186[0] = v97;
          *v96 = 136315138;
          v185 = v89;
          v99 = v89;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
          v100 = sub_269854AE4();
          v102 = sub_26974F520(v100, v101, v186);

          *(v96 + 4) = v102;
          _os_log_impl(&dword_269684000, v1, v95, "TrialAppPredictorConfigProvider error loading model, %s", v96, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v98);
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_10();

          OUTLINED_FUNCTION_11_31();
          OUTLINED_FUNCTION_2_31();
          v179(v177, v175);
        }

        else
        {

          OUTLINED_FUNCTION_11_31();
          OUTLINED_FUNCTION_2_31();
          v83(v84, v92);
        }

        v116 = OUTLINED_FUNCTION_3_41();
        v117(v116);
      }

      else
      {
        v46 = v34;
        if (qword_280322708 != -1)
        {
          OUTLINED_FUNCTION_2_1();
        }

        v47 = __swift_project_value_buffer(v11, qword_281571B50);
        v48 = v184;
        (*(v184 + 16))(v24, v47, v11);
        v1 = sub_2698548B4();
        v49 = v11;
        v50 = sub_269854F14();
        if (os_log_type_enabled(v1, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_269684000, v1, v50, "TrialAppPredictorConfigProvider no model", v51, 2u);
          OUTLINED_FUNCTION_10();
        }

        (*(v48 + 8))(v24, v49);
      }
    }

    else
    {
      if (qword_280322708 != -1)
      {
        OUTLINED_FUNCTION_2_1();
      }

      __swift_project_value_buffer(v11, qword_281571B50);
      OUTLINED_FUNCTION_5_33();
      v41(v21);
      v1 = sub_2698548B4();
      v42 = v11;
      v43 = sub_269854F24();
      if (os_log_type_enabled(v1, v43))
      {
        v44 = OUTLINED_FUNCTION_27_2();
        v45 = OUTLINED_FUNCTION_9_3();
        *&v186[0] = v45;
        *v44 = 136315138;
        *(v44 + 4) = sub_26974F520(0xD000000000000014, 0x80000002698806D0, v186);
        _os_log_impl(&dword_269684000, v1, v43, "TrialAppPredictorConfigProvider no directoryValue for %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();
      }

      MEMORY[0x280322008](v21, v42);
    }
  }

  v40 = 0;
LABEL_46:
  v2 = v183;
LABEL_47:
  OUTLINED_FUNCTION_0_51();
  v118 = sub_2697E902C(0xD000000000000029, 0x8000000269880530);
  if (v118)
  {
    v119 = v118;
    v1 = [v118 longValue];

    v120 = 0;
    while (v120 != 2)
    {
      v121 = &unk_287A39468 + v120++;
      v122 = v121[32];
      if (v122)
      {
        v123 = 2;
      }

      else
      {
        v123 = 1;
      }

      if (v123 == v1)
      {
        goto LABEL_56;
      }
    }
  }

  v122 = 1;
LABEL_56:
  OUTLINED_FUNCTION_0_51();
  v124 = sub_2697E902C(0xD000000000000022, 0x8000000269880560);
  if (v124)
  {
    v184 = OUTLINED_FUNCTION_6_37(v124);
  }

  else
  {
    v184 = 5;
  }

  OUTLINED_FUNCTION_0_51();
  v125 = sub_2697E902C(0xD00000000000002ALL, 0x8000000269880590);
  v126 = 0.0;
  v127 = 0.0;
  if (v125)
  {
    v128 = OUTLINED_FUNCTION_6_37(v125);

    if (v128 >= 1)
    {
      v127 = 1.0 / v128;
    }

    else
    {
      v127 = 0.0;
    }
  }

  OUTLINED_FUNCTION_0_51();
  v129 = sub_2697E902C(0xD00000000000002CLL, 0x80000002698805C0);
  if (v129)
  {
    v130 = OUTLINED_FUNCTION_6_37(v129);

    if (v130 >= 1)
    {
      v126 = 1.0 / v130;
    }

    else
    {
      v126 = 0.0;
    }
  }

  OUTLINED_FUNCTION_0_51();
  v131 = sub_2697E902C(0xD000000000000029, 0x80000002698805F0);
  if (v131)
  {
    v183 = OUTLINED_FUNCTION_6_37(v131);
  }

  else
  {
    v183 = 240;
  }

  OUTLINED_FUNCTION_0_51();
  v132 = sub_2697E902C(0xD000000000000031, 0x8000000269880620);
  v133 = 0.0;
  v134 = 0.0;
  if (v132)
  {
    v135 = OUTLINED_FUNCTION_6_37(v132);

    if (v135 >= 1)
    {
      v134 = 1.0 / v135;
    }

    else
    {
      v134 = 0.0;
    }
  }

  OUTLINED_FUNCTION_0_51();
  v136 = sub_2697E902C(0xD000000000000033, 0x8000000269880660);
  if (v136)
  {
    v137 = OUTLINED_FUNCTION_6_37(v136);

    if (v137 >= 1)
    {
      v133 = 1.0 / v137;
    }

    else
    {
      v133 = 0.0;
    }
  }

  OUTLINED_FUNCTION_0_51();
  v138 = sub_2697E902C(0xD000000000000023, 0x800000026987BAF0);
  if (v138 && (v139 = sub_2696D1E04(v138, &selRef_stringValue), v140))
  {
    v1 = v2;
    sub_2697DDB30(v139, v140);
    v182 = v141;
  }

  else
  {
    v182 = MEMORY[0x277D84FA0];
  }

  OUTLINED_FUNCTION_0_51();
  v142 = sub_2697E902C(0xD000000000000023, 0x800000026987BAC0);
  if (v142 && (v1 = v2, v143 = sub_2696D1E04(v142, &selRef_stringValue), v144))
  {
    sub_2697DDB30(v143, v144);
    v181 = v145;

    if (!v40)
    {
LABEL_85:
      v146 = 0;
      v180 = 0;
      goto LABEL_88;
    }
  }

  else
  {
    v181 = MEMORY[0x277D84FA0];
    if (!v40)
    {
      goto LABEL_85;
    }
  }

  v146 = sub_26969329C(0, &qword_280322EA8, 0x277CBFF20);
  v180 = &off_287A44328;
LABEL_88:
  OUTLINED_FUNCTION_0_51();
  v147 = v40;
  v148 = v40;
  v149 = sub_2697E902C(0xD000000000000027, 0x800000026987BB40);
  v150 = 0;
  v151 = 0;
  if (v149)
  {
    v1 = v149;
    [v149 doubleValue];
    v151 = v152;
  }

  OUTLINED_FUNCTION_0_51();
  v153 = sub_2697E902C(0xD000000000000029, 0x800000026987BB70);
  if (v153)
  {
    v1 = v153;
    [v153 doubleValue];
    v150 = v154;
  }

  v155 = OUTLINED_FUNCTION_0_51();
  v156 = v155[3];
  v157 = v155[4];
  __swift_project_boxed_opaque_existential_1(v155, v156);
  (*(v157 + 40))(v186, v1[5].isa, v1[6].isa, v156, v157);
  OUTLINED_FUNCTION_0_51();
  v158 = sub_2697E902C(0xD000000000000023, 0x80000002698806A0);
  if (!v158)
  {

    goto LABEL_96;
  }

  v159 = v158;
  v160 = [v158 longValue];

  if (v160 < 1)
  {
LABEL_96:
    v161 = 0.0;
    goto LABEL_97;
  }

  v161 = 1.0 / v160;
LABEL_97:
  *a1 = v147;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v146;
  *(a1 + 32) = v180;
  *(a1 + 40) = v151;
  *(a1 + 48) = v150;
  *(a1 + 56) = v184;
  *(a1 + 64) = v127;
  *(a1 + 72) = v126;
  *(a1 + 80) = v183;
  *(a1 + 88) = v122;
  *(a1 + 96) = v134;
  *(a1 + 104) = v133;
  v162 = v186[2];
  v163 = v186[0];
  *(a1 + 128) = v186[1];
  *(a1 + 144) = v162;
  *(a1 + 112) = v163;
  v164 = v181;
  *(a1 + 160) = v182;
  *(a1 + 168) = v164;
  *(a1 + 176) = v161;
}

void sub_2697DDB30(uint64_t a1, unint64_t a2)
{
  v22 = sub_269851B04();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v22);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = sub_2697DDD28(0x7FFFFFFFFFFFFFFFLL, 1u, a1, a2);
  v9 = *(v8 + 16);
  if (v9)
  {
    v26 = MEMORY[0x277D84F90];
    sub_269814F0C(0, v9, 0);
    v10 = v26;
    v11 = (v4 + 8);
    v21 = v8;
    v12 = (v8 + 56);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v23 = *(v12 - 3);
      v24 = v13;
      v25 = v14;

      sub_269851AF4();
      sub_2696A8114();
      v15 = sub_2698550F4();
      v17 = v16;
      (*v11)(v7, v22);

      v26 = v10;
      v19 = *(v10 + 16);
      v18 = *(v10 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_269814F0C(v18 > 1, v19 + 1, 1);
        v10 = v26;
      }

      *(v10 + 16) = v19 + 1;
      v20 = v10 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v12 += 4;
      --v9;
    }

    while (v9);
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  sub_2697F1EE0(v10);
}

unint64_t sub_2697DDD28(uint64_t a1, unsigned __int8 a2, uint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v6 = a4;
  v7 = a3;
  v10 = HIBYTE(a4) & 0xF;
  if (!a1 || ((a4 & 0x2000000000000000) != 0 ? (v11 = HIBYTE(a4) & 0xF) : (v11 = a3 & 0xFFFFFFFFFFFFLL), !v11))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v10 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v10 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v4 = sub_269854C04();
    v7 = v28;
    v8 = v29;
    v9 = v30;

    sub_26977BDB4();
    v13 = v31;
    v5 = *(v31 + 16);
    v6 = v5 + 1;
    if (v5 < *(v31 + 24) >> 1)
    {
LABEL_41:
      *(v13 + 16) = v6;
      v32 = (v13 + 32 * v5);
      v32[4] = v4;
      v32[5] = v7;
      v32[6] = v8;
      v32[7] = v9;
      return v13;
    }

LABEL_50:
    sub_26977BDB4();
    v13 = v39;
    goto LABEL_41;
  }

  v12 = 4 * v11;
  v48 = MEMORY[0x277D84F90];
  v13 = 15;
  v5 = 0xE100000000000000;
LABEL_8:
  for (i = v13; ; i = sub_269854B44())
  {
    v9 = i >> 14;
    if (i >> 14 == v12)
    {
      break;
    }

    v15 = sub_269854BE4();
    v17 = v16;
    v18 = v15 == 32 && v16 == 0xE100000000000000;
    if (v18 || (v8 = v15, (sub_269855584() & 1) != 0) || (v8 == 44 ? (v19 = v17 == 0xE100000000000000) : (v19 = 0), v19))
    {

LABEL_22:
      v4 = (v13 >> 14 == v9) & a2;
      if (((v13 >> 14 == v9) & a2) == 0)
      {
        if (v9 < v13 >> 14)
        {
          goto LABEL_49;
        }

        v20 = sub_269854C04();
        v45 = v22;
        v46 = v21;
        v44 = v23;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = *(v48 + 16);
          sub_26977BDB4();
          v48 = v26;
        }

        v8 = *(v48 + 16);
        v9 = v8 + 1;
        if (v8 >= *(v48 + 24) >> 1)
        {
          sub_26977BDB4();
          v48 = v27;
        }

        *(v48 + 16) = v9;
        v24 = (v48 + 32 * v8);
        v24[4] = v20;
        v24[5] = v46;
        v24[6] = v45;
        v24[7] = v44;
      }

      v13 = sub_269854B44();
      if ((v4 & 1) != 0 || *(v48 + 16) != a1)
      {
        goto LABEL_8;
      }

      break;
    }

    v8 = sub_269855584();

    if (v8)
    {
      goto LABEL_22;
    }
  }

  if (v13 >> 14 == v12 && (a2 & 1) != 0)
  {

    return v48;
  }

  if (v12 < v13 >> 14)
  {
    __break(1u);
    goto LABEL_52;
  }

  v7 = sub_269854C04();
  v8 = v33;
  v9 = v34;
  v12 = v35;

  v13 = v48;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_52:
    v40 = *(v13 + 16);
    sub_26977BDB4();
    v13 = v41;
  }

  v36 = *(v13 + 16);
  if (v36 >= *(v13 + 24) >> 1)
  {
    sub_26977BDB4();
    v13 = v42;
  }

  *(v13 + 16) = v36 + 1;
  v37 = (v13 + 32 * v36);
  v37[4] = v7;
  v37[5] = v8;
  v37[6] = v9;
  v37[7] = v12;
  return v13;
}

uint64_t sub_2697DE118()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2697DE150()
{
  v1 = [objc_opt_self() clientWithIdentifier_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803254D0, qword_269866000);
  v2 = swift_allocObject();
  *(v0 + 16) = sub_2697EA120(v1, 0xD000000000000018, 0x800000026987BA10, v2);
  return v0;
}

id sub_2697DE28C(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v2 = [v1 predictionsFromBatch:a1 error:v7];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_269851BD4();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_2697DE354(void *a1)
{
  v1 = [a1 path];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_269854A94();

  return v3;
}

uint64_t OUTLINED_FUNCTION_3_41()
{
  v1 = *(*(v0 - 296) + 8);
  result = *(v0 - 304);
  v3 = *(v0 - 288);
  return result;
}

id OUTLINED_FUNCTION_6_37(void *a1)
{

  return [a1 (v1 + 2720)];
}

void OUTLINED_FUNCTION_11_31()
{
  v2 = *(v0 - 352);
}

_BYTE *storeEnumTagSinglePayload for AppPredictorUsecase(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2697DE544()
{
  result = qword_2803254E0;
  if (!qword_2803254E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803254E0);
  }

  return result;
}

uint64_t sub_2697DE598(char a1)
{
  if (a1)
  {
    sub_26969329C(0, &qword_2815718C8, 0x277CD4030);
    v1 = &qword_280322F80;
    v2 = &unk_2698660B0;
  }

  else
  {
    sub_26969329C(0, &qword_2815718F0, 0x277CD3EC0);
    v1 = &qword_280322F78;
    v2 = &qword_269858E08;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  return sub_269854AE4();
}

void sub_2697DE69C()
{
  sub_2697DEA84(319, &qword_280325500, &type metadata for PredictedApp, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ModelParams(319);
    if (v1 <= 0x3F)
    {
      sub_2697DE7B8();
      if (v2 <= 0x3F)
      {
        sub_2697DEA84(319, &qword_280323CE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2697DE7B8()
{
  if (!qword_280325508)
  {
    sub_269853984();
    v0 = sub_2698550A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280325508);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PredictedApp.Order(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_2697DE954()
{
  type metadata accessor for ModelInput(319);
  if (v0 <= 0x3F)
  {
    sub_2697DEA84(319, &qword_280325500, &type metadata for PredictedApp, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2697DEA84(319, &qword_280325520, &type metadata for TrialIdentifiers, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2697DEA84(319, &qword_280323CE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2697DEA84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2697DEAFC()
{
  sub_2697DEB54();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_2697DEB54()
{
  if (!qword_280325538)
  {
    v0 = sub_269853984();
    if (!v1)
    {
      atomic_store(v0, &qword_280325538);
    }
  }
}

unint64_t sub_2697DEBA0()
{
  result = qword_280325540;
  if (!qword_280325540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325548, qword_2698661A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325540);
  }

  return result;
}

void *sub_2697DEC04(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_26977D4F4(*(a1 + 16), 0);
  sub_2697E1B98(v7, (v3 + 4), v2, a1);
  v5 = v4;
  OUTLINED_FUNCTION_15_25();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_2697DEC88(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result - a2;
  if (!__OFSUB__(result, a2))
  {
    if (v3)
    {
      v6 = result;
      v7 = sub_26977D55C(result - a2, 0);
      v8 = sub_2697E22C0(&v9, v7 + 4, v3, v6, a2, a3);

      if (v8 == v3)
      {
        return v7;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

uint64_t sub_2697DEDB0(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v8 = a2(*(a1 + 16), 0);
  v9 = *(a3(0) - 8);
  v10 = sub_2697E1C90(v12, (v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80))), v5, a1, a4);
  OUTLINED_FUNCTION_15_25();
  if (v10 != v5)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v8;
}

uint64_t sub_2697DEE90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2697DEF98()
{
  OUTLINED_FUNCTION_16_20();
  sub_2697DF7FC();
  return sub_2698556C4();
}

uint64_t sub_2697DF050(char a1)
{
  sub_269855674();
  MEMORY[0x26D646580]((a1 & 1u) + 1);
  return sub_2698556C4();
}

uint64_t sub_2697DF09C(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_16_20();
  MEMORY[0x26D646580](a1);
  return sub_2698556C4();
}

uint64_t sub_2697DF0F4(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_16_20();
  a2(a1);
  OUTLINED_FUNCTION_14_23();

  return sub_2698556C4();
}

uint64_t sub_2697DF144(uint64_t a1)
{
  OUTLINED_FUNCTION_16_20();
  MEMORY[0x26D646580](a1);
  return sub_2698556C4();
}

uint64_t sub_2697DF19C(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_1_45();
  }

  else
  {
    OUTLINED_FUNCTION_8_34();
  }

  sub_269854B34();
}

uint64_t sub_2697DF1F4()
{
  sub_269854B34();
}

uint64_t sub_2697DF260(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_19_16();
  }

  sub_269854B34();
}

uint64_t sub_2697DF2D0(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_7_38();
  }

  sub_269854B34();
}

uint64_t sub_2697DF390()
{
  sub_269854B34();
}

uint64_t sub_2697DF444()
{
  sub_269854B34();
}

uint64_t sub_2697DF574()
{
  sub_269854B34();
}

uint64_t sub_2697DF6E4(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_21_17();
  }

  sub_269854B34();
}

uint64_t sub_2697DF764()
{
  OUTLINED_FUNCTION_10_26();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_22_17();
      break;
    default:
      break;
  }

  sub_269854B34();
}

uint64_t sub_2697DF7FC()
{
  OUTLINED_FUNCTION_10_26();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_22_17();
      break;
    default:
      break;
  }

  sub_269854B34();
}

uint64_t sub_2697DF884()
{
  sub_269854B34();
}

uint64_t sub_2697DF8EC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_269854B34();
}

uint64_t sub_2697DF944()
{
  sub_269854B34();
}

uint64_t sub_2697DF9B4()
{
  sub_269854B34();
}

uint64_t sub_2697DFAF8()
{
  sub_269854B34();
}

uint64_t sub_2697DFC28(uint64_t a1, char a2)
{
  sub_269855674();
  MEMORY[0x26D646580]((a2 & 1u) + 1);
  return sub_2698556C4();
}

uint64_t sub_2697DFCA0()
{
  OUTLINED_FUNCTION_9_31();
  OUTLINED_FUNCTION_13_25();

  return sub_2698556C4();
}

uint64_t sub_2697DFD2C()
{
  OUTLINED_FUNCTION_9_31();
  sub_269854B34();

  return sub_2698556C4();
}

uint64_t sub_2697DFD90()
{
  OUTLINED_FUNCTION_9_31();
  sub_2697DF7FC();
  return sub_2698556C4();
}

uint64_t sub_2697DFDE4(uint64_t a1, char a2)
{
  sub_269855674();
  if (!a2)
  {
    OUTLINED_FUNCTION_21_17();
  }

  OUTLINED_FUNCTION_13_25();

  return sub_2698556C4();
}

uint64_t sub_2697DFEE8()
{
  OUTLINED_FUNCTION_9_31();
  if (!v0)
  {
    OUTLINED_FUNCTION_7_38();
  }

  OUTLINED_FUNCTION_13_25();

  return sub_2698556C4();
}

uint64_t sub_2697DFF7C(uint64_t a1, unsigned __int8 a2)
{
  sub_269855674();
  MEMORY[0x26D646580](a2);
  return sub_2698556C4();
}

uint64_t sub_2697DFFC0()
{
  OUTLINED_FUNCTION_9_31();
  if (!v0)
  {
    OUTLINED_FUNCTION_19_16();
  }

  OUTLINED_FUNCTION_13_25();

  return sub_2698556C4();
}

uint64_t sub_2697E0034()
{
  OUTLINED_FUNCTION_9_31();
  OUTLINED_FUNCTION_13_25();

  return sub_2698556C4();
}

uint64_t sub_2697E00A4()
{
  OUTLINED_FUNCTION_9_31();
  OUTLINED_FUNCTION_13_25();

  return sub_2698556C4();
}

uint64_t sub_2697E0118()
{
  OUTLINED_FUNCTION_9_31();
  if (v0)
  {
    OUTLINED_FUNCTION_1_45();
  }

  else
  {
    OUTLINED_FUNCTION_8_34();
  }

  OUTLINED_FUNCTION_13_25();

  return sub_2698556C4();
}

uint64_t sub_2697E0174(uint64_t a1, uint64_t a2)
{
  sub_269855674();
  MEMORY[0x26D646580](a2);
  return sub_2698556C4();
}

uint64_t sub_2697E01D0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_269855674();
  a3(a2);
  OUTLINED_FUNCTION_14_23();

  return sub_2698556C4();
}

BOOL sub_2697E0230()
{
  sub_2698547B4();
  OUTLINED_FUNCTION_11_16();
  return sub_2698547B4() >= v0;
}

BOOL sub_2697E0274()
{
  sub_2698547B4();
  OUTLINED_FUNCTION_11_16();
  return sub_2698547B4() >= v0;
}

BOOL sub_2697E02A8()
{
  sub_2698547B4();
  OUTLINED_FUNCTION_11_16();
  return sub_2698547B4() < v0;
}

void *sub_2697E0304(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    if (a4)
    {
      v11 = swift_allocObject();
      *(v11 + 16) = a4;
      *(v11 + 24) = a5;
      v12 = sub_2697E0F08;
      if (a3)
      {
LABEL_4:
        v27 = a1;
        sub_269687554(a4);
        v12(&v26, &v27);
LABEL_10:

        return v26;
      }
    }

    else
    {
      v12 = sub_2697E054C;
      if (a3)
      {
        goto LABEL_4;
      }
    }

    v27 = a1;

    sub_269687554(a4);
    sub_2697E0E9C(&v27);
    v20 = sub_269771A0C(a2, v27);
    v27 = sub_2697DEC88(v20, v21, v22);
    v12(&v26, &v27);

    goto LABEL_10;
  }

  v27 = a1;

  sub_2697E0E9C(&v27);
  v13 = sub_2697E0D64(v27);

  if ((a3 & 1) == 0)
  {
    v14 = sub_26977E488(a2, v13);
    v13 = v15;
    v17 = v16;
    v19 = v18;
    if ((v18 & 1) == 0)
    {
LABEL_7:
      sub_2697E0C90(v14, v13, v17, v19);
      OUTLINED_FUNCTION_11_16();
      swift_unknownObjectRelease();
      return v13;
    }

    sub_2698555A4();
    swift_unknownObjectRetain_n();
    v24 = swift_dynamicCastClass();
    if (!v24)
    {
      swift_unknownObjectRelease();
      v24 = MEMORY[0x277D84F90];
    }

    v25 = *(v24 + 16);

    if (__OFSUB__(v19 >> 1, v17))
    {
      __break(1u);
    }

    else if (v25 == (v19 >> 1) - v17)
    {
      swift_dynamicCastClass();
      OUTLINED_FUNCTION_11_16();
      swift_unknownObjectRelease();
      if (!v13)
      {
        swift_unknownObjectRelease();
        return MEMORY[0x277D84F90];
      }

      return v13;
    }

    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  return v13;
}

void sub_2697E054C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;

  sub_2697E19E4();
  *a2 = v3;
}

uint64_t sub_2697E0590(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2697E05C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2697E0590(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2697E05EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2697E02F8(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_2697E062C()
{
  result = qword_280325550;
  if (!qword_280325550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325550);
  }

  return result;
}

BOOL sub_2697E068C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (a1 == a3 && a2 == a4)
  {
    return a5 == a6;
  }

  v9 = sub_269855584();
  result = 0;
  if (v9)
  {
    return a5 == a6;
  }

  return result;
}

uint64_t sub_2697E06D8(double a1)
{
  sub_269854B34();
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  return MEMORY[0x26D6465A0](*&v2);
}

uint64_t sub_2697E071C(double a1)
{
  OUTLINED_FUNCTION_16_20();
  sub_2697E06D8(a1);
  return sub_2698556C4();
}

uint64_t sub_2697E0774()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  return sub_2697E071C(v0[2]);
}

uint64_t sub_2697E0780()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  return sub_2697E06D8(v0[2]);
}

uint64_t sub_2697E078C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  sub_269855674();
  sub_2697E06D8(v3);
  return sub_2698556C4();
}

uint64_t sub_2697E0878@<X0>(uint64_t *a1@<X8>)
{
  result = OUTLINED_FUNCTION_5();
  *a1 = result;
  return result;
}

unint64_t sub_2697E08A4()
{
  result = qword_280325558;
  if (!qword_280325558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325558);
  }

  return result;
}

unint64_t sub_2697E08FC()
{
  result = qword_280325560;
  if (!qword_280325560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325560);
  }

  return result;
}

unint64_t sub_2697E0954()
{
  result = qword_280325568;
  if (!qword_280325568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325568);
  }

  return result;
}

unint64_t sub_2697E09AC()
{
  result = qword_280325570;
  if (!qword_280325570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325570);
  }

  return result;
}

unint64_t sub_2697E0A04()
{
  result = qword_280325578;
  if (!qword_280325578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325578);
  }

  return result;
}

unint64_t sub_2697E0A5C()
{
  result = qword_280325580;
  if (!qword_280325580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325580);
  }

  return result;
}

unint64_t sub_2697E0AB4()
{
  result = qword_280325588;
  if (!qword_280325588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325588);
  }

  return result;
}

unint64_t sub_2697E0B0C()
{
  result = qword_280325590;
  if (!qword_280325590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325590);
  }

  return result;
}

unint64_t sub_2697E0B60()
{
  result = qword_280325598;
  if (!qword_280325598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325598);
  }

  return result;
}

void sub_2697E0BB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      type metadata accessor for Content();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_2697E0C90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324228, &qword_269867D20);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 24);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_2697E0D64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_26977D55C(*(a1 + 16), 0);
  v4 = sub_2697E1F2C(&v6, v3 + 4, v1, a1);

  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_2697E0DF8(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_269855324();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_26977D62C(v2, 0);

    v1 = sub_2697E2008(v5, v3 + 4, v2, v1);
    OUTLINED_FUNCTION_15_25();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t sub_2697E0E9C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2697E23D8(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2697E0F3C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_2697E0F08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2697E0F3C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_269855534();
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
        v6 = sub_269854CE4();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2697E10B0(v7, v8, a1, v4);
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
    return sub_2697E1030(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2697E1030(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *(v9 - 1))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        v11 = *(v9 + 1);
        *v9 = *(v9 - 3);
        v9[2] = *(v9 - 1);
        *(v9 - 2) = v11;
        *(v9 - 1) = v7;
        *(v9 - 3) = v10;
        v9 -= 3;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2697E10B0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v90 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v85 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9 + 16);
        v11 = *a3 + 24 * v7;
        v12 = 24 * v7;
        v13 = *(v11 + 16);
        v14 = (v11 + 64);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 3;
          v19 = (v10 < v13) ^ (v18 >= v16);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 24 * v6 - 8;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = (v23 + v20);
                v26 = *v24;
                v27 = v24[1];
                v28 = v24[2];
                v29 = *v25;
                *v24 = *(v25 - 1);
                v24[2] = v29;
                *(v25 - 2) = v26;
                *(v25 - 1) = v27;
                *v25 = v28;
              }

              ++v22;
              v20 -= 24;
              v12 += 24;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9 + 16);
              v34 = v32;
              v35 = v31;
              do
              {
                if (v33 >= *(v35 - 1))
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *v35;
                v37 = *(v35 + 1);
                *v35 = *(v35 - 3);
                v35[2] = *(v35 - 1);
                *(v35 - 2) = v37;
                *(v35 - 1) = v33;
                *(v35 - 3) = v36;
                v35 -= 3;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v87 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_26977BE84();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_26977BE84();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v7;
      v42[1] = v87;
      v88 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_56:
            if (v49)
            {
              goto LABEL_96;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_99;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_104;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v40 < 2)
          {
            goto LABEL_98;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_71:
          if (v64)
          {
            goto LABEL_101;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_103;
          }

          if (v71 < v63)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_2697E16FC((*a3 + 24 * *v75), (*a3 + 24 * *v77), *a3 + 24 * v78, v88);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v78 < v76)
          {
            goto LABEL_91;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_92;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_93;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          v5 = 0;
          if (!v81)
          {
            goto LABEL_85;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_94;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_95;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_97;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_100;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_105;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v87;
      a4 = v85;
      if (v87 >= v6)
      {
        v90 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_2697E15C4(&v90, *a1, a3);
LABEL_89:
}

uint64_t sub_2697E15C4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2697E18A4(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_2697E16FC((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_2697E16FC(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_26977D8A4(a1, (a2 - a1) / 24, a4);
    v10 = &v4[3 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v6[2] >= v4[2])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 3;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 3;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 3;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v7[2] = v12[2];
    *v7 = v14;
    goto LABEL_13;
  }

  sub_26977D8A4(a2, (a3 - a2) / 24, a4);
  v10 = &v4[3 * v9];
LABEL_15:
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v10 - 1) < *(v6 - 1))
    {
      v17 = v6 - 3;
      v13 = v5 + 24 == v6;
      v6 -= 3;
      if (!v13)
      {
        v18 = *v17;
        *(v5 + 16) = v17[2];
        *v5 = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v16 = *(v10 - 3);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v16;
    }

    v10 -= 3;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[3 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

char *sub_2697E18B8(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_2697E18E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324230, &qword_26985F270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_2697E19E4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v24 = 0;
      MEMORY[0x26D647190](&v24, 8);
      v5 = (v24 * v2) >> 64;
      if (v2 > v24 * v2)
      {
        v6 = -v2 % v2;
        if (v6 > v24 * v2)
        {
          do
          {
            v24 = 0;
            MEMORY[0x26D647190](&v24, 8);
          }

          while (v6 > v24 * v2);
          v5 = (v24 * v2) >> 64;
        }
      }

      v7 = v4 + v5;
      if (__OFADD__(v4, v5))
      {
        break;
      }

      if (v4 != v7)
      {
        v8 = *(v1 + 16);
        if (v4 >= v8)
        {
          goto LABEL_20;
        }

        if (v7 >= v8)
        {
          goto LABEL_21;
        }

        v9 = (v1 + 32 + 24 * v4);
        v11 = *v9;
        v10 = v9[1];
        v12 = v9[2];
        v13 = (v1 + 32 + 24 * v7);
        v15 = *v13;
        v14 = v13[1];
        v16 = v13[2];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2697E23D8(v1);
          v1 = v17;
        }

        if (v4 >= *(v1 + 16))
        {
          goto LABEL_22;
        }

        v18 = (v1 + 32 + 24 * v4);
        v19 = v18[1];
        *v18 = v15;
        v18[1] = v14;
        v18[2] = v16;

        if (v7 >= *(v1 + 16))
        {
          goto LABEL_23;
        }

        v20 = (v1 + 32 + 24 * v7);
        v21 = v20[1];
        *v20 = v11;
        v20[1] = v10;
        v20[2] = v12;

        *v23 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void sub_2697E1B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4 + 56;
  v7 = *(a4 + 56);
  v9 = *(a4 + 32);
  OUTLINED_FUNCTION_4_34();
  if (!v11)
  {
    v13 = 0;
LABEL_17:
    OUTLINED_FUNCTION_11_32(v13);
    return;
  }

  v12 = v10;
  if (!v10)
  {
    v13 = 0;
    goto LABEL_17;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_5_34();
    while (v14 < v12)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_21;
      }

      if (!v5)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v6)
          {
            goto LABEL_17;
          }

          v5 = *(v8 + 8 * v16);
          ++v13;
          if (v5)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v16 = v13;
LABEL_12:
      OUTLINED_FUNCTION_0_52();
      if (v17)
      {

        v13 = v16;
        goto LABEL_17;
      }

      v4 += 16;

      v14 = v15;
      v13 = v16;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_2697E1C90(void *a1, char *a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = a5(0);
  v10 = *(v9 - 8);
  v43 = v9;
  v44 = v10;
  v11 = *(v10 + 64);
  v12 = (MEMORY[0x28223BE20])();
  v42 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v41 = &v34 - v14;
  v16 = a4 + 56;
  v15 = *(a4 + 56);
  v40 = -1 << *(a4 + 32);
  if (-v40 < 64)
  {
    v17 = ~(-1 << -v40);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  if (!a2)
  {
    v21 = 0;
    result = 0;
LABEL_22:
    v33 = ~v40;
    *a1 = a4;
    a1[1] = v16;
    a1[2] = v33;
    a1[3] = v21;
    a1[4] = v18;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v21 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = a1;
    v36 = a4 + 56;
    v20 = 0;
    v21 = 0;
    v22 = (63 - v40) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    v39 = result;
    while (v20 < result)
    {
      if (__OFADD__(v20, 1))
      {
        goto LABEL_26;
      }

      if (!v18)
      {
        v16 = v36;
        while (1)
        {
          v23 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v23 >= v22)
          {
            v18 = 0;
            result = v20;
            a1 = v35;
            goto LABEL_22;
          }

          v18 = *(v36 + 8 * v23);
          ++v21;
          if (v18)
          {
            v45 = v20 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v45 = v20 + 1;
      v23 = v21;
LABEL_17:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = a4;
      v26 = *(a4 + 48);
      v28 = v43;
      v27 = v44;
      v29 = *(v44 + 72);
      v30 = v42;
      (*(v44 + 16))(v42, v26 + v29 * (v24 | (v23 << 6)), v43);
      v31 = *(v27 + 32);
      v32 = v41;
      v31(v41, v30, v28);
      v31(a2, v32, v28);
      result = v39;
      v20 = v45;
      if (v45 == v39)
      {
        v21 = v23;
        a1 = v35;
        v16 = v36;
        a4 = v25;
        goto LABEL_22;
      }

      a2 += v29;
      v21 = v23;
      a4 = v25;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2697E1F2C(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v12 = *(a4 + 16);
    v6 = 0;
LABEL_13:
    *v5 = a4;
    v5[1] = v12;
    return v6;
  }

  if (!a3)
  {
    v12 = *(a4 + 16);
LABEL_12:
    v6 = a3;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v9 = 0;
    v10 = a3 - 1;
    for (i = (a4 + 24 * v6 + 24); ; i -= 3)
    {
      v12 = v6 + v9;
      if (!(v6 + v9))
      {
        break;
      }

      if (v12 > *(a4 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v13 = *(i - 1);
      v14 = *i;
      *v8 = *(i - 2);
      v8[1] = v13;
      v8[2] = v14;
      if (!(v10 + v9))
      {

        v12 = v6 + v9 - 1;
        goto LABEL_12;
      }

      v8 += 3;

      --v9;
    }

    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2697E2008(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v7 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    result = sub_269855314();
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v4 = result | 0x8000000000000000;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v12 = 0;
    a3 = 0;
LABEL_28:
    *v7 = v4;
    v7[1] = v8;
    v7[2] = v9;
    v7[3] = v12;
    v7[4] = v10;
    return a3;
  }

  v17 = -1 << *(a4 + 32);
  v8 = a4 + 64;
  v9 = ~v17;
  v18 = -v17;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v10 = v19 & *(a4 + 64);
  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_28;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = v9;
    v11 = 0;
    v12 = 0;
    v13 = (v9 + 64) >> 6;
    while (1)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if ((v4 & 0x8000000000000000) != 0)
      {
        if (!sub_269855344() || (sub_269854664(), swift_dynamicCast(), (result = v21) == 0))
        {
LABEL_25:
          a3 = v11;
LABEL_26:
          v9 = v20;
          goto LABEL_28;
        }
      }

      else
      {
        if (!v10)
        {
          while (1)
          {
            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            if (v15 >= v13)
            {
              v10 = 0;
              goto LABEL_25;
            }

            v10 = *(v8 + 8 * v15);
            ++v12;
            if (v10)
            {
              v12 = v15;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v16 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        result = *(*(v4 + 48) + ((v12 << 9) | (8 * v16)));
        if (!result)
        {
          goto LABEL_25;
        }
      }

      *v6++ = result;
      ++v11;
      if (v14 == a3)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2697E21C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4 + 64;
  v7 = *(a4 + 64);
  v9 = *(a4 + 32);
  OUTLINED_FUNCTION_4_34();
  if (!v11)
  {
    v13 = 0;
LABEL_17:
    OUTLINED_FUNCTION_11_32(v13);
    return;
  }

  v12 = v10;
  if (!v10)
  {
    v13 = 0;
    goto LABEL_17;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_5_34();
    while (v14 < v12)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_21;
      }

      if (!v5)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v6)
          {
            goto LABEL_17;
          }

          v5 = *(v8 + 8 * v16);
          ++v13;
          if (v5)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v16 = v13;
LABEL_12:
      OUTLINED_FUNCTION_0_52();
      if (v17)
      {

        v13 = v16;
        goto LABEL_17;
      }

      v4 += 16;

      v14 = v15;
      v13 = v16;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2697E22C0(uint64_t result, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (!a2)
  {
    v10 = 0;
LABEL_14:
    v14 = a4;
LABEL_17:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = v14;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = (a6 + 24 * a4 + 24);
    v14 = a4;
    while (v12 < v10)
    {
      if (__OFADD__(v12, 1))
      {
        goto LABEL_19;
      }

      if (a5 == v14)
      {
        v14 = a5;
        v10 = a4 - a5;
        goto LABEL_17;
      }

      if (v14 <= a5)
      {
        goto LABEL_20;
      }

      if (v14-- < 1)
      {
        goto LABEL_21;
      }

      if (v14 >= *(a6 + 16))
      {
        goto LABEL_22;
      }

      v16 = *(v13 - 1);
      v17 = *v13;
      *v11 = *(v13 - 2);
      v11[1] = v16;
      v11[2] = v17;
      if (v12 + 1 == v10)
      {

        goto LABEL_17;
      }

      v11 += 3;

      ++v12;
      v13 -= 3;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2697E2434()
{
  sub_2697E2500();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AppDisambiguationContext(319);
    if (v1 <= 0x3F)
    {
      sub_2697E25B8(319, &qword_2803255B8, &qword_280322878, &qword_2698587A0);
      if (v2 <= 0x3F)
      {
        sub_2697E25B8(319, &qword_2803255C0, &qword_2803255C8, &unk_269866690);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_2697E2500()
{
  if (!qword_2803255B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280322878, &qword_2698587A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323CC8, &unk_269866680);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280322EA0, &unk_2698577C0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_2803255B0);
    }
  }
}

void sub_2697E25B8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280322EA0, &unk_2698577C0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_52()
{
  v4 = (*(v0 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v2)))));
  result = v4[1];
  *v1 = *v4;
  v1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_32(uint64_t *a1)
{
  result = *a1;
  v3 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_31()
{

  return sub_269855674();
}

uint64_t OUTLINED_FUNCTION_11_32@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t OUTLINED_FUNCTION_13_25()
{

  return sub_269854B34();
}

uint64_t OUTLINED_FUNCTION_14_23()
{

  return sub_269854B34();
}

uint64_t OUTLINED_FUNCTION_15_25()
{

  return sub_26968E614();
}

uint64_t OUTLINED_FUNCTION_16_20()
{

  return sub_269855674();
}

uint64_t OUTLINED_FUNCTION_20_15@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

id sub_2697E28FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_2697017A0();
    v5 = sub_2698549D4();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_2697E2988(uint64_t a1)
{
  v2 = type metadata accessor for AppDisambiguationContext(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_3_1();
  v6 = v5 - v4;
  v7 = type metadata accessor for AppSelectionResult(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  sub_2697E2F08(a1, v10 - v9);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26971522C(v11, v6);
      sub_2697E2B70(0, (*(v6 + 16) & 4) != 0, (*(v6 + 16) & 2) != 0, 0, 0, 0, 1);
      sub_2697E2F6C(v6, type metadata accessor for AppDisambiguationContext);
      return;
    case 2u:
      OUTLINED_FUNCTION_0_53();
      goto LABEL_5;
    case 3u:
      OUTLINED_FUNCTION_0_53();
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 1;
      v25 = 0;
      goto LABEL_6;
    case 4u:
      OUTLINED_FUNCTION_2_33();
      v25 = 0;
      v26 = 1;
      goto LABEL_9;
    case 5u:
LABEL_5:
      OUTLINED_FUNCTION_2_33();
      v25 = 1;
LABEL_6:
      v26 = 0;
LABEL_9:
      sub_2697E2B70(v21, v22, v23, v24, v25, v26, 0);
      break;
    default:
      v12 = *(v11 + 8);

      v13 = *(v11 + 16);

      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F48, &unk_2698667E0);
      v15 = *(v14 + 64);
      v16 = *(v11 + *(v14 + 80) + 8);

      OUTLINED_FUNCTION_2_33();
      sub_2697E2B70(v17, v18, v19, v20, 0, 0, 0);
      sub_2697E2FCC(v11 + v15);
      break;
  }
}

void sub_2697E2B70(char a1, char a2, char a3, char a4, char a5, char a6, char a7)
{
  v13 = sub_2698548D4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v18 = v17 - v16;
  v19 = *(v7 + 56);
  v20 = *(v7 + 64);
  v19(v38);
  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v13, qword_281571B38);
  (*(v14 + 16))(v18, v21, v13);
  v22 = sub_2698548B4();
  v23 = sub_269854F14();
  if (os_log_type_enabled(v22, v23))
  {
    v34 = a3;
    v24 = a4;
    v25 = a5;
    v26 = a6;
    v27 = a7;
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_269684000, v22, v23, "sending com.apple.siri.video.appSelectionEngagement", v28, 2u);
    v29 = v28;
    a7 = v27;
    a6 = v26;
    a5 = v25;
    a4 = v24;
    a3 = v34;
    MEMORY[0x26D647170](v29, -1, -1);
  }

  (*(v14 + 8))(v18, v13);
  v30 = sub_269854A64();
  v31 = swift_allocObject();
  v32 = v38[1];
  *(v31 + 24) = v38[0];
  *(v31 + 16) = a1 & 1;
  *(v31 + 17) = a2 & 1;
  *(v31 + 18) = a3 & 1;
  *(v31 + 19) = a4 & 1;
  *(v31 + 20) = a5 & 1;
  *(v31 + 21) = a6 & 1;
  *(v31 + 22) = a7 & 1;
  *(v31 + 40) = v32;
  *(v31 + 56) = v38[2];
  aBlock[4] = sub_2697E2ECC;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2697E28FC;
  aBlock[3] = &block_descriptor_20;
  v33 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v33);
}

uint64_t sub_2697E2E68()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2697E2F08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppSelectionResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2697E2F6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2697E2FCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323CC8, &unk_269866680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_53()
{

  return sub_2697E2F6C(v0, type metadata accessor for AppSelectionResult);
}

uint64_t sub_2697E30C8(uint64_t a1)
{
  *(v1 + 16) = a1;

  *(v1 + 24) = sub_2697F8D7C(v2);
  return v1;
}

id sub_2697E30F0(uint64_t a1, unint64_t a2)
{
  v5 = sub_2698548D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26981CF80(a1, a2, *(v2 + 16));
  if ((v11 & 1) == 0)
  {
    return [objc_opt_self() featureValueWithInt64_];
  }

  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, qword_281571B50);
  (*(v6 + 16))(v9, v12, v5);

  v13 = sub_2698548B4();
  v14 = sub_269854F24();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_26974F520(a1, a2, &v19);
    _os_log_impl(&dword_269684000, v13, v14, "IntDictionaryFeatureProvider featureValue for %s has no value", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x26D647170](v16, -1, -1);
    MEMORY[0x26D647170](v15, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  return 0;
}

uint64_t sub_2697E33AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_2697E33D4()
{
  sub_2697E33AC();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_2697E342C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803255F0, &unk_269866820);
    OUTLINED_FUNCTION_86();
    v2 = sub_2698553C4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5)) | (v8 << 6);
    v10 = (*(a1 + 48) + 16 * v9);
    v12 = *v10;
    v11 = v10[1];
    v13 = *(*(a1 + 56) + 8 * v9);
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {

      return;
    }

    v15 = v14;
    v5 &= v5 - 1;

    v16 = v13;
    v17 = sub_26973CEF8(v12, v11);
    v18 = v17;
    if (v19)
    {
      v20 = (v2[6] + 16 * v17);
      v21 = v20[1];
      *v20 = v12;
      v20[1] = v11;

      v22 = v2[7];
      v23 = *(v22 + 8 * v18);
      *(v22 + 8 * v18) = v15;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_21;
      }

      *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
      v24 = (v2[6] + 16 * v17);
      *v24 = v12;
      v24[1] = v11;
      *(v2[7] + 8 * v17) = v15;
      v25 = v2[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_22;
      }

      v2[2] = v27;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_2697E3630(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FC0, qword_269859000);
    v2 = sub_2698553C4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_2696B8A68(*(a1 + 48) + 40 * v11, v30);
    v12 = *(*(a1 + 56) + 8 * v11);
    *(&v31 + 1) = v12;
    v28[0] = v30[0];
    v28[1] = v30[1];
    v29 = v31;
    sub_2696B8A68(v28, &v26);
    v13 = v12;
    if (!swift_dynamicCast())
    {
      sub_26969B0C0(v28, &qword_2803255D8, &unk_269866800);

      goto LABEL_28;
    }

    v14 = *(&v29 + 1);
    sub_26969B0C0(v28, &qword_2803255D8, &unk_269866800);
    v26 = 0;
    v27 = 1;
    MEMORY[0x26D645D00](v14, &v26);

    if (v27)
    {
      break;
    }

    v15 = v26;
    v16 = *(v2 + 40);
    result = sub_269855664();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_23;
        }
      }

LABEL_31:
      __break(1u);
      return result;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    v5 &= v5 - 1;
    *(v7 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v2 + 48) + 8 * v20) = v25;
    *(*(v2 + 56) + 8 * v20) = v15;
    ++*(v2 + 16);
    if (!v5)
    {
LABEL_8:
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v10 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v10);
        ++v9;
        if (v5)
        {
          v9 = v10;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_31;
    }
  }

LABEL_28:

  return 0;
}

id sub_2697E3918()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FB0, &unk_2698667F0);
  v1 = sub_269854CA4();

  v2 = [v0 initWithFeatureProviderArray_];

  return v2;
}

uint64_t sub_2697E399C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803255E8, &unk_269866810);
    v3 = sub_2698553C4();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_2697E6F80(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void *sub_2697E3A34()
{
  if (qword_280322678 != -1)
  {
    swift_once();
  }

  v0 = swift_retain_n();

  return sub_2697E72B8(v0, sub_2697E72AC, v0);
}

uint64_t sub_2697E3AB0(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_2697EABE0(v9);
  v4 = v10;
  v5 = v11;
  v6 = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  v7 = sub_2697F17C8(a1 & 1, v4, v5, v6);

  sub_2697E719C(v9);
  return v7;
}

uint64_t sub_2697E3B34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*__swift_project_boxed_opaque_existential_1(a1, a1[3]) + 16);
  sub_2697EABE0(v11);
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  sub_2697E6F30(v12, v13);
  result = sub_2697E719C(v11);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  return result;
}

uint64_t sub_2697E3BC8()
{
  OUTLINED_FUNCTION_2_7();
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  *(v1 + 144) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  v8 = sub_2698548D4();
  *(v1 + 80) = v8;
  OUTLINED_FUNCTION_5_12(v8);
  *(v1 + 88) = v9;
  v11 = *(v10 + 64);
  *(v1 + 96) = OUTLINED_FUNCTION_37_0();
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2697E3C98, 0, 0);
}

uint64_t sub_2697E3C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_6();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = *(v24 + 72);
  v28 = *(v24 + 48);
  v29 = *(v27 + 64);
  v30 = (*(v27 + 56))(*(v24 + 144) & 1);
  v31 = v30;
  *(v24 + 120) = v30;
  if (!v28)
  {

    if (qword_280322708 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v56 = *(v24 + 88);
    v55 = *(v24 + 96);
    __swift_project_value_buffer(*(v24 + 80), qword_281571B50);
    v57 = OUTLINED_FUNCTION_2_8();
    v58(v57);
    v59 = sub_2698548B4();
    v60 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v60))
    {
      v61 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v61);
      OUTLINED_FUNCTION_18_8();
      _os_log_impl(v62, v63, v64, v65, v66, 2u);
      OUTLINED_FUNCTION_18_7();
    }

    v68 = *(v24 + 88);
    v67 = *(v24 + 96);
    v69 = *(v24 + 80);
    v70 = *(v24 + 32);

    v71 = *(v68 + 8);
    v72 = OUTLINED_FUNCTION_22_3();
    v73(v72);
    type metadata accessor for AppSelectionResult(0);
    swift_storeEnumTagMultiPayload();
    goto LABEL_18;
  }

  if (v30[2] == 1)
  {
    v32 = v30[4];
    v33 = v30[5];
    v34 = qword_280322708;

    if (v34 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v35 = *(v24 + 112);
    v37 = *(v24 + 80);
    v36 = *(v24 + 88);
    v38 = *(v24 + 64);
    v39 = __swift_project_value_buffer(v37, qword_281571B50);
    (*(v36 + 16))(v35, v39, v37);

    v40 = sub_2698548B4();
    v41 = sub_269854F14();

    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v24 + 88);
    if (v42)
    {
      a9 = *(v24 + 80);
      a10 = *(v24 + 112);
      v45 = *(v24 + 56);
      v44 = *(v24 + 64);
      OUTLINED_FUNCTION_27_2();
      a12 = v32;
      a11 = v33;
      v46 = OUTLINED_FUNCTION_14_24();
      a13 = v46;
      *v32 = 136315138;
      *(v24 + 16) = v45;
      *(v24 + 24) = v44;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
      v47 = sub_269854AE4();
      v49 = sub_26974F520(v47, v48, &a13);

      *(v32 + 4) = v49;
      OUTLINED_FUNCTION_40();
      _os_log_impl(v50, v51, v52, v53, v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      v33 = a11;
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      (*(v43 + 8))(a10, a9);
    }

    else
    {

      v97 = *(v43 + 8);
      v98 = OUTLINED_FUNCTION_44_0();
      v100(v98, v99);
    }

    v102 = *(v24 + 56);
    v101 = *(v24 + 64);
    v103 = *(v24 + 32);
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F48, &unk_2698667E0);
    v105 = *(v104 + 64);
    v106 = (v103 + *(v104 + 80));
    *v103 = v32;
    v103[1] = v33;
    v103[2] = v31;
    v107 = type metadata accessor for ModelParams(0);
    __swift_storeEnumTagSinglePayload(v103 + v105, 1, 1, v107);
    *v106 = v102;
    v106[1] = v101;
    type metadata accessor for AppSelectionResult(0);
    OUTLINED_FUNCTION_86();
    swift_storeEnumTagMultiPayload();

LABEL_18:
    v109 = *(v24 + 104);
    v108 = *(v24 + 112);
    v110 = *(v24 + 96);

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_7_8();

    return v112(v111, v112, v113, v114, v115, v116, v117, v118, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  v74 = *(v24 + 40);
  v75 = *(v24 + 48);
  __swift_project_boxed_opaque_existential_1((*(v24 + 72) + 72), *(*(v24 + 72) + 96));
  sub_269818540();
  v77 = v76;
  *(v24 + 128) = v76;
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v78 = *(v24 + 104);
  v80 = *(v24 + 80);
  v79 = *(v24 + 88);
  v81 = __swift_project_value_buffer(v80, qword_281571B50);
  (*(v79 + 16))(v78, v81, v80);

  v82 = sub_2698548B4();
  v83 = sub_269854F14();

  v84 = os_log_type_enabled(v82, v83);
  v85 = *(v24 + 104);
  v86 = *(v24 + 80);
  v87 = *(v24 + 88);
  if (v84)
  {
    swift_slowAlloc();
    v88 = OUTLINED_FUNCTION_14_24();
    a13 = v88;
    *v75 = 134218242;
    *(v75 + 4) = *(v77 + 16);

    *(v75 + 12) = 2080;
    v89 = MEMORY[0x26D645BC0](v31, MEMORY[0x277D837D0]);
    v127 = v86;
    v91 = sub_26974F520(v89, v90, &a13);

    *(v75 + 14) = v91;
    OUTLINED_FUNCTION_40();
    _os_log_impl(v92, v93, v94, v95, v96, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v88);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v87 + 8))(v85, v127);
  }

  else
  {

    (*(v87 + 8))(v85, v86);
  }

  v120 = swift_task_alloc();
  *(v24 + 136) = v120;
  *v120 = v24;
  v120[1] = sub_2697E422C;
  v121 = *(v24 + 64);
  v122 = *(v24 + 72);
  v123 = *(v24 + 56);
  v124 = *(v24 + 32);
  v125 = *(v24 + 40);
  OUTLINED_FUNCTION_7_8();

  return sub_2697E43AC();
}