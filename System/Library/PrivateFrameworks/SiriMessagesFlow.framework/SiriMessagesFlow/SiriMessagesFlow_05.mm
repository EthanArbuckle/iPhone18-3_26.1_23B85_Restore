void sub_267BF5414(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v35 = a6;
  v31 = a4;
  v32 = a5;
  v9 = sub_267EF2E38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v14 = a1[1];
  sub_267BA9F38(0, &qword_28022A0B8, 0x277CBEAF8);

  v33 = v15;
  v34 = v14;
  v16 = sub_267BF952C(v15, v14);
  v17 = [v16 languageCode];

  sub_267EF9028();

  v18 = sub_267BF952C(a2, a3);
  sub_267EF2D38();
  v19 = sub_267EF2D98();
  (*(v10 + 8))(v13, v9);
  LODWORD(v13) = [v18 isEquivalentTo_];

  if (v13)
  {
    v20 = v35;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v21 = sub_267EF8A08();
    __swift_project_value_buffer(v21, qword_280240FB0);
    v22 = v34;

    v23 = v32;

    v24 = sub_267EF89F8();
    v25 = sub_267EF95D8();

    v26 = os_log_type_enabled(v24, v25);
    v27 = v33;
    if (v26)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36 = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_267BA33E8(v31, v23, &v36);
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_267BA33E8(v27, v22, &v36);
      _os_log_impl(&dword_267B93000, v24, v25, "#TTSUtil match for %s and %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D60A7B0](v29, -1, -1);
      MEMORY[0x26D60A7B0](v28, -1, -1);
    }

    *v20 = v27;
    v20[1] = v22;
  }

  else
  {
    v30 = v35;
    *v35 = 0;
    v30[1] = 0;
  }
}

unint64_t sub_267BF5748()
{
  result = qword_280229168;
  if (!qword_280229168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28022BCB0, &unk_267EFCA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229168);
  }

  return result;
}

uint64_t sub_267BF57AC()
{
  OUTLINED_FUNCTION_12();
  *(v0 + 168) = v1;
  *(v0 + 176) = v26;
  *(v0 + 337) = v2;
  *(v0 + 152) = v3;
  *(v0 + 160) = v4;
  *(v0 + 336) = v5;
  *(v0 + 136) = v6;
  *(v0 + 144) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAE0, &unk_267F07D80);
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 64) + 15;
  *(v0 + 184) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294B0, &qword_267F001F0);
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64) + 15;
  *(v0 + 192) = swift_task_alloc();
  *(v0 + 200) = swift_task_alloc();
  v14 = sub_267EF8AE8();
  *(v0 + 208) = v14;
  v15 = *(v14 - 8);
  OUTLINED_FUNCTION_34_2();
  *(v0 + 216) = v16;
  v18 = *(v17 + 64) + 15;
  *(v0 + 224) = swift_task_alloc();
  *(v0 + 232) = swift_task_alloc();
  v19 = sub_267EF53D8();
  *(v0 + 240) = v19;
  v20 = *(v19 - 8);
  OUTLINED_FUNCTION_34_2();
  *(v0 + 248) = v21;
  v23 = *(v22 + 64) + 15;
  *(v0 + 256) = swift_task_alloc();
  *(v0 + 264) = swift_task_alloc();
  *(v0 + 272) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267BF596C, 0, 0);
}

uint64_t sub_267BF596C()
{
  v137 = v0;
  if (qword_280228900 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 272);
  v2 = *(v0 + 336);
  v3 = *(v0 + 136);
  v4 = sub_267BB8DFC();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_267EFCE30;
  *(v7 + 32) = sub_267BB90E4(1);
  *(v7 + 40) = v8;
  *(v7 + 48) = sub_267BB90E4(0);
  *(v7 + 56) = v9;
  *(v7 + 64) = sub_267BB90E4(7);
  *(v7 + 72) = v10;
  sub_267BF641C(v4, v6, v7, v2 & 1);
  sub_267BF6550(v2 & 1);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v12 = *(v0 + 264);
  v11 = *(v0 + 272);
  v13 = *(v0 + 240);
  v14 = *(v0 + 248);
  v15 = sub_267EF8A08();
  *(v0 + 280) = __swift_project_value_buffer(v15, qword_280240FB0);
  v16 = *(v14 + 16);
  v16(v12, v11, v13);
  v17 = sub_267EF89F8();
  v18 = sub_267EF95D8();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 264);
  if (v19)
  {
    v21 = *(v0 + 248);
    v22 = *(v0 + 256);
    v23 = *(v0 + 240);
    log = v17;
    v24 = OUTLINED_FUNCTION_48();
    v135 = OUTLINED_FUNCTION_52();
    v136 = v135;
    *v24 = 136315138;
    v16(v22, v20, v23);
    sub_267EF5458();
    *(v0 + 40) = v23;
    *(v0 + 48) = sub_267BF65C0();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
    v16(boxed_opaque_existential_0, v22, v23);
    v26 = sub_267EF5448();
    v27 = v16;
    v29 = v28;
    v133 = v18;
    v30 = *(v21 + 8);
    v31 = v22;
    v32 = v27;
    v30(v31, v23);
    v30(v20, v23);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v33 = sub_267BA33E8(v26, v29, &v136);

    *(v24 + 4) = v33;
    _os_log_impl(&dword_267B93000, log, v133, "#makeOfferNLContextUpdate submitting NLv4 dialog act: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v135);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
    v32 = v16;
    v35 = *(v0 + 240);
    v34 = *(v0 + 248);

    v30 = *(v34 + 8);
    v30(v20, v35);
  }

  *(v0 + 288) = v30;
  v36 = *(v0 + 272);
  v37 = *(v0 + 240);
  v38 = *(v0 + 248);
  v39 = *(v0 + 136);
  v40 = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v41 = *(v38 + 72);
  v42 = *(v38 + 80);
  v43 = OUTLINED_FUNCTION_30_21();
  *(v43 + 16) = xmmword_267EFC020;
  v32(v20 + v43, v36, v37);
  sub_267EF4088();
  if (!v40)
  {
    goto LABEL_27;
  }

  v44 = *(v0 + 144);
  v45 = sub_267BF6698();
  if (v45)
  {
    v46 = v45;
    v47 = sub_267BE8214();

    if (v47)
    {
      v48 = sub_267BF6698();
      if (v48 && (v49 = v48, v50 = [v48 groupName], v49, v50))
      {
        v52 = *(v0 + 200);
        v51 = *(v0 + 208);
        v53 = *(v0 + 184);
        sub_267EF8A78();
        OUTLINED_FUNCTION_78();
        __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
        sub_267EB8B0C(v53, v52);

        sub_267B9FF34(v53, &unk_28022BAE0, &unk_267F07D80);
        if (__swift_getEnumTagSinglePayload(v52, 1, v51) != 1)
        {
          v58 = *(v0 + 232);
          v59 = *(v0 + 208);
          v60 = *(v0 + 216);
          v61 = *(v0 + 136);
          (*(v60 + 32))(v58, *(v0 + 200), v59);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A80, &qword_267F00430);
          v62 = *(v60 + 72);
          v63 = *(v60 + 80);
          v64 = OUTLINED_FUNCTION_30_21();
          *(v64 + 16) = xmmword_267EFC020;
          (*(v60 + 16))(v20 + v64, v58, v59);
          sub_267EF4058();
          v65 = sub_267EF89F8();
          v66 = sub_267EF95D8();
          v67 = os_log_type_enabled(v65, v66);
          v68 = *(v0 + 232);
          v69 = *(v0 + 208);
          v70 = *(v0 + 216);
          if (v67)
          {
            v71 = OUTLINED_FUNCTION_32();
            *v71 = 0;
            _os_log_impl(&dword_267B93000, v65, v66, "#makeOfferNLContextUpdate #ReferenceResolution Donating group message entity to SRR", v71, 2u);
            OUTLINED_FUNCTION_32_0();
          }

          (*(v70 + 8))(v68, v69);
          goto LABEL_24;
        }
      }

      else
      {
        v72 = *(v0 + 200);
        v73 = *(v0 + 208);
        OUTLINED_FUNCTION_78();
        __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
      }

      sub_267B9FF34(*(v0 + 200), &qword_2802294B0, &qword_267F001F0);
    }
  }

  v78 = sub_267BF6698();
  if (v78)
  {
    v79 = v78;
    v80 = [v78 sender];

    if (v80)
    {
      v81 = *(v0 + 216);
      v82 = *(v0 + 184);
      v83 = *(v0 + 136);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A80, &qword_267F00430);
      v84 = *(v81 + 72);
      v85 = (*(v81 + 80) + 32) & ~*(v81 + 80);
      *(swift_allocObject() + 16) = xmmword_267EFC020;
      sub_267EF8A78();
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
      sub_267BF66B0();
      sub_267B9FF34(v82, &unk_28022BAE0, &unk_267F07D80);
      sub_267EF4058();
      v90 = v80;
      v91 = sub_267EF89F8();
      v92 = sub_267EF95D8();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = OUTLINED_FUNCTION_48();
        v94 = OUTLINED_FUNCTION_52();
        v136 = v94;
        *v93 = 136315138;
        v95 = [v90 displayName];
        v96 = sub_267EF9028();
        v32 = v97;

        v98 = sub_267BA33E8(v96, v32, &v136);

        *(v93 + 4) = v98;
        _os_log_impl(&dword_267B93000, v91, v92, "#makeOfferNLContextUpdate #ReferenceResolution Donating sender %s to SRR", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v94);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      else
      {
      }
    }
  }

LABEL_24:
  result = sub_267BAF0DC(v44);
  *(v0 + 296) = result;
  if (!result)
  {
LABEL_27:
    v102 = *(v0 + 136);
    sub_267EF4098();
    v103 = sub_267EF4748();
    OUTLINED_FUNCTION_97(v103);
    sub_267EF4738();
    if (qword_2802288F8 != -1)
    {
      OUTLINED_FUNCTION_6_37();
    }

    sub_267EF5648();
    OUTLINED_FUNCTION_17_20();

    if (qword_2802288B0 != -1)
    {
      OUTLINED_FUNCTION_5_43();
    }

    OUTLINED_FUNCTION_3_45();
    v104 = sub_267EF5648();
    OUTLINED_FUNCTION_27_20(v104, v105);

    sub_267EF4728();

    sub_267EF4138();
    sub_267EF4128();
    v132(v32);

    OUTLINED_FUNCTION_17();

    return v106();
  }

  v100 = *(v0 + 144);
  if ((v100 & 0xC000000000000001) != 0)
  {
    v101 = MEMORY[0x26D609870](0);
  }

  else
  {
    if (!*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v101 = *(v100 + 32);
  }

  *(v0 + 304) = v101;
  *(v0 + 312) = 1;
  v107 = [v101 content];
  if (v107)
  {
    v108 = v107;
    sub_267EF9028();
    v110 = v109;

    v111 = OUTLINED_FUNCTION_29_17();
    if (OUTLINED_FUNCTION_12_25())
    {
      OUTLINED_FUNCTION_16_23();
      v112 = OUTLINED_FUNCTION_12_25();

      if (v112)
      {
        OUTLINED_FUNCTION_28_23();
        if (__swift_getEnumTagSinglePayload(v111, 1, v110) == 1)
        {
          sub_267B9FF34(*(v0 + 192), &qword_2802294B0, &qword_267F001F0);
        }

        else
        {
          v114 = OUTLINED_FUNCTION_15_27();
          v115(v114);
          v116 = sub_267EF89F8();
          v117 = sub_267EF95D8();
          if (os_log_type_enabled(v116, v117))
          {
            *OUTLINED_FUNCTION_32() = 0;
            OUTLINED_FUNCTION_26_22(&dword_267B93000, v118, v119, "#makeOfferNLContextUpdate #ReferenceResolution Donating music RREntity to SRR");
            OUTLINED_FUNCTION_32_0();
          }

          v121 = *(v0 + 216);
          v120 = *(v0 + 224);
          v122 = *(v0 + 208);
          v123 = *(v0 + 136);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A80, &qword_267F00430);
          v124 = OUTLINED_FUNCTION_13_30();
          v125 = OUTLINED_FUNCTION_14_29(v124, xmmword_267EFC020);
          v126(v125);
          v127 = sub_267EF4048();
          v128 = *(v0 + 136);
          if (v127)
          {
            *(v0 + 128) = v127;

            sub_267C9B520(v129);
            v130 = *(v0 + 128);
            sub_267EF4058();
          }

          else
          {
            v131 = *(v0 + 136);
            sub_267EF4058();
          }

          (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
        }
      }
    }

    else
    {
    }
  }

  v113 = swift_task_alloc();
  *(v0 + 320) = v113;
  *v113 = v0;
  OUTLINED_FUNCTION_4_43(v113);

  return sub_267BF6D4C();
}

uint64_t sub_267BF641C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_267EF4148();
  sub_267EF40D8();
  sub_267EF4108();
  v5 = [objc_allocWithZone(MEMORY[0x277D47128]) init];
  v6 = MEMORY[0x277D47C08];
  if ((a4 & 1) == 0)
  {
    v6 = MEMORY[0x277D47C10];
  }

  v7 = *v6;
  v8 = sub_267EF9028();
  sub_267BF64EC(v8, v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_267EFCA40;
  *(v10 + 32) = v5;
  return sub_267EF40F8();
}

void sub_267BF64EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();

  [a3 setReason_];
}

uint64_t sub_267BF6550(char a1)
{
  if (a1)
  {
    v1 = sub_267EF6428();
    OUTLINED_FUNCTION_97(v1);
    sub_267EF6418();
  }

  else
  {
    v2 = sub_267EF6488();
    OUTLINED_FUNCTION_97(v2);
    sub_267EF6478();
  }

  sub_267BBB050();
}

unint64_t sub_267BF65C0()
{
  result = qword_28022BAF0;
  if (!qword_28022BAF0)
  {
    sub_267EF53D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BAF0);
  }

  return result;
}

char *sub_267BF6618()
{
  OUTLINED_FUNCTION_53_5();
  if (!v2)
  {
    result = OUTLINED_FUNCTION_85_3();
    if (!result)
    {
      return result;
    }

LABEL_3:
    v4 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v1(result - 1, (v0 & 0xC000000000000001) == 0, v0);
      if ((v0 & 0xC000000000000001) == 0)
      {
        return *(v0 + 8 * v4 + 32);
      }
    }

    v5 = OUTLINED_FUNCTION_3();
    return MEMORY[0x26D609870](v5);
  }

  result = OUTLINED_FUNCTION_63_4();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void sub_267BF66B0()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C288, &unk_267F09BF0);
  OUTLINED_FUNCTION_58(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  sub_267EF7028();
  v13 = sub_267EF7038();
  v41 = v0;
  v14 = 0;
  v13(&v43, &v41);
  v39 = v12;
  v40 = v4;

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v15 = sub_267EF8A08();
  __swift_project_value_buffer(v15, qword_280240FB0);
  v16 = v0;

  v17 = sub_267EF89F8();
  v18 = sub_267EF95D8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37 = v2;
    v20 = v19;
    v21 = swift_slowAlloc();
    v35 = v21;
    v36 = swift_slowAlloc();
    v41 = v36;
    *v20 = 138412546;
    *(v20 + 4) = v16;
    *v21 = v16;
    *(v20 + 12) = 2080;
    v22 = v16;
    v43 = sub_267EF56B8();
    sub_267EF6798();
    v38 = 0;
    v23 = v5;
    sub_267BF6B78();
    v24 = sub_267EF9E58();
    v26 = v25;

    v27 = sub_267BA33E8(v24, v26, &v41);
    v5 = v23;
    v14 = v38;

    *(v20 + 14) = v27;
    _os_log_impl(&dword_267B93000, v17, v18, "INPerson-RRaaS: Transformed person %@ to USO entity %s", v20, 0x16u);
    sub_267B9FED8(v35, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    __swift_destroy_boxed_opaque_existential_0(v36);
    OUTLINED_FUNCTION_32_0();
    v2 = v37;
    OUTLINED_FUNCTION_32_0();
  }

  sub_267EF56B8();

  sub_267BF6BD0(v2, v40);
  if (v14)
  {

    v41 = 0;
    v42 = 0xE000000000000000;
    sub_267EF9B68();
    MEMORY[0x26D608E60](0xD00000000000002ELL, 0x8000000267F1A850);
    v43 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    sub_267EF9C58();
    v29 = v41;
    v28 = v42;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v30 = sub_267EF8A08();
    __swift_project_value_buffer(v30, qword_280240FB0);

    v31 = sub_267EF89F8();
    v32 = sub_267EF95E8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v41 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_267BA33E8(v29, v28, &v41);
      _os_log_impl(&dword_267B93000, v31, v32, "Fatal error: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    sub_267EF9C98();
    __break(1u);
  }

  else
  {
    (*(v7 + 8))(v39, v5);

    OUTLINED_FUNCTION_47();
  }
}

unint64_t sub_267BF6B78()
{
  result = qword_28022C290;
  if (!qword_28022C290)
  {
    sub_267EF6798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022C290);
  }

  return result;
}

uint64_t sub_267BF6BD0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v10 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAE0, &unk_267F07D80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_267BBDEAC();
  sub_267BF6CEC(a1, v7, &unk_28022BAE0, &unk_267F07D80);
  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);

  v8 = v2;
  return sub_267EF8AB8();
}

uint64_t sub_267BF6CEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_5_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_61_0();
  v9(v8);
  return a2;
}

uint64_t sub_267BF6D4C()
{
  OUTLINED_FUNCTION_12();
  v1[62] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAE0, &unk_267F07D80) - 8) + 64) + 15;
  v1[63] = swift_task_alloc();
  v3 = sub_267EF2D28();
  v1[64] = v3;
  v4 = *(v3 - 8);
  v1[65] = v4;
  v5 = *(v4 + 64) + 15;
  v1[66] = swift_task_alloc();
  v6 = sub_267EF8AE8();
  v1[67] = v6;
  v7 = *(v6 - 8);
  v1[68] = v7;
  v8 = *(v7 + 64) + 15;
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267BF6EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, unint64_t a21, uint64_t a22, unint64_t a23, void (*a24)(uint64_t, uint64_t), uint64_t a25, unint64_t a26, unint64_t a27, uint64_t *a28, void (**a29)(uint64_t, uint64_t, uint64_t), uint64_t a30, void *a31, uint64_t *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  OUTLINED_FUNCTION_48_22();
  a44 = v48;
  a45 = v49;
  OUTLINED_FUNCTION_59_15();
  a43 = v46;
  v50 = v46;
  v51 = [*(v46 + 496) linkMetadata];
  *(v46 + 576) = v51;
  if (v51)
  {
    v52 = v51;
    *(v46 + 584) = sub_267EF42D8();
    *(v46 + 592) = sub_267EF6FF8();
    v53 = v52;
    sub_267EF6FE8();
    sub_267EF6FB8();

    sub_267EF42C8();

    type metadata accessor for AppleMapsLinkParser();
    *(v46 + 600) = swift_initStackObject();
    v54 = sub_267C77354(v53, (v46 + 288));
    *(v46 + 608) = v54;
    if (v54)
    {
      if (sub_267BF7B18())
      {
        v55 = swift_task_alloc();
        *(v46 + 616) = v55;
        *v55 = v46;
        v55[1] = sub_267DEF520;
LABEL_9:
        OUTLINED_FUNCTION_17_26();

        return sub_267C773E4();
      }

      v66 = *(v46 + 608);
    }

    v67 = *(v46 + 592);
    v68 = *(v46 + 584);
    v45 = *(v46 + 576);
    sub_267EF6FE8();
    sub_267EF6FB8();

    sub_267EF42C8();

    type metadata accessor for GoogleMapsLinkParser();
    swift_allocObject();
    v69 = sub_267E76A44(v45, (v46 + 328));
    *(v46 + 624) = v69;
    if (v69)
    {
      if (sub_267E76A70())
      {
        v70 = swift_task_alloc();
        *(v46 + 632) = v70;
        *v70 = v46;
        OUTLINED_FUNCTION_10_36(v70);
        OUTLINED_FUNCTION_17_26();

        return sub_267E76C98(v71);
      }
    }

    else
    {
    }

    v58 = 0;
    v59 = 0xE000000000000000;
    goto LABEL_26;
  }

  v56 = sub_267BB8214(*(v46 + 496));
  *(v46 + 640) = v56;
  *(v46 + 648) = v57;
  if (v57)
  {
    v58 = v56;
    v59 = v57;
    type metadata accessor for AppleMapsLinkParser();
    swift_allocObject();

    v60 = OUTLINED_FUNCTION_86_1();
    v62 = sub_267BF792C(v60, v61);
    v50[82] = v62;
    if (v62)
    {
      if (sub_267BF7B18())
      {
        v63 = swift_task_alloc();
        v50[83] = v63;
        *v63 = v50;
        v63[1] = sub_267DF0554;
        goto LABEL_9;
      }
    }

LABEL_26:
    v79 = objc_allocWithZone(MEMORY[0x277CCA948]);
    v80 = OUTLINED_FUNCTION_39_19();
    if (v45)
    {

      if (qword_280228818 != -1)
      {
LABEL_62:
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v81 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v81, qword_280240FB0);
      v82 = v45;
      v83 = sub_267EF89F8();
      sub_267EF95E8();
      OUTLINED_FUNCTION_65_12();
      if (OUTLINED_FUNCTION_68_10())
      {
        OUTLINED_FUNCTION_48();
        v84 = OUTLINED_FUNCTION_5_4();
        OUTLINED_FUNCTION_56_16(v84);
        *v47 = 136315138;
        swift_getErrorValue();
        v86 = v50[46];
        v85 = v50[47];
        v87 = v50[48];
        v88 = sub_267EF9F68();
        OUTLINED_FUNCTION_67_10(v88, v89);
        OUTLINED_FUNCTION_125_1();
        *(v47 + 4) = v59;
        OUTLINED_FUNCTION_14_37(&dword_267B93000, v90, v91, "#INMessage+RREntityHelpers extractAddressEntities NSDataDetector failed: %s.");
        OUTLINED_FUNCTION_18_30();
        OUTLINED_FUNCTION_32_0();
      }
    }

    else
    {
      v106 = v80;
      OUTLINED_FUNCTION_86_1();
      v107 = sub_267EF8FF8();

      v108 = OUTLINED_FUNCTION_86_1();
      v109 = MEMORY[0x26D608EC0](v108);

      a11 = v106;
      v110 = [v106 matchesInString:v107 options:0 range:{0, v109}];

      sub_267BA9F38(0, &qword_280229D10, 0x277CCACC0);
      OUTLINED_FUNCTION_37_18();
      v45 = sub_267EF92F8();

      a22 = sub_267BAF0DC(v45);
      if (a22)
      {
        v112 = 0;
        a21 = v45 & 0xC000000000000001;
        a12 = v45 & 0xFFFFFFFFFFFFFF8;
        a17 = v50[65] + 8;
        v113 = v50[68];
        a28 = (v113 + 8);
        a29 = (v113 + 16);
        a16 = v113;
        a15 = v113 + 32;
        v114 = MEMORY[0x277D84F90];
        *&v111 = 136642819;
        a13 = v111;
        a23 = v50;
        a19 = v58;
        a20 = v59;
        a18 = v45;
        while (1)
        {
          if (a21)
          {
            v115 = MEMORY[0x26D609870](v112, v45);
          }

          else
          {
            if (v112 >= *(a12 + 16))
            {
              goto LABEL_61;
            }

            v115 = *(v45 + 8 * v112 + 32);
          }

          v116 = v115;
          if (__OFADD__(v112, 1))
          {
            __break(1u);
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

          a26 = v112 + 1;
          a27 = v112;
          OUTLINED_FUNCTION_86_1();
          v117 = sub_267EF8FF8();
          a31 = v116;
          [v116 range];
          OUTLINED_FUNCTION_63_11();
          v118 = [v117 substringWithRange_];

          sub_267EF9028();
          OUTLINED_FUNCTION_66_15();
          v119 = sub_267EF6588();
          OUTLINED_FUNCTION_97(v119);
          v120 = sub_267EF6578();
          sub_267EF6568();

          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0_10();
            swift_once();
          }

          v121 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v121, qword_280240FB0);
          v122 = sub_267EF89F8();
          sub_267EF95D8();
          OUTLINED_FUNCTION_64();
          if (os_log_type_enabled(v122, v123))
          {
            v124 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_19_33(v124);
            OUTLINED_FUNCTION_460(&dword_267B93000, v122, v125, "#INMessage+RREntityHelpers extractAddressEntities Finished building postal address.");
            OUTLINED_FUNCTION_29_1();
          }

          a30 = v120;
          v126 = MEMORY[0x26D6059D0](v120);
          if (!v126)
          {
            break;
          }

          v127 = v126;
          a25 = v114;
          v128 = v50[71];
          v129 = v50[70];
          v130 = v50[67];
          v131 = v50[66];
          v132 = v50[63];
          v133 = v50[64];
          sub_267EF2D18();
          sub_267EF2CE8();
          v134 = OUTLINED_FUNCTION_16_33();
          v135(v134);
          v136 = sub_267EF8A78();
          OUTLINED_FUNCTION_11_20(v136);

          OUTLINED_FUNCTION_6_43();
          v50 = a23;
          OUTLINED_FUNCTION_1_65();
          OUTLINED_FUNCTION_29_24(v137, v138, v139, v140, v127);
          v141 = *a29;
          (*a29)(v129, v128, v130);
          v142 = sub_267EF89F8();
          v143 = sub_267EF95D8();
          v144 = os_log_type_enabled(v142, v143);
          v145 = *(a23 + 560);
          v146 = *(a23 + 536);
          if (v144)
          {
            v147 = OUTLINED_FUNCTION_48();
            v148 = OUTLINED_FUNCTION_52();
            a32 = v148;
            *v147 = a13;
            sub_267DF0E90();
            OUTLINED_FUNCTION_37_18();
            sub_267EF9E58();
            OUTLINED_FUNCTION_57_14();
            v149 = OUTLINED_FUNCTION_27_25(a28);
            a24 = v150;
            v150(v149, v146);
            sub_267BA33E8(v141, a23, &a32);
            OUTLINED_FUNCTION_61_2();
            v50 = a23;

            *(v147 + 4) = v145;
            _os_log_impl(&dword_267B93000, v142, v143, "#INMessage+RREntityHelpers extractAddressEntities Extracted address entity: %{sensitive}s.", v147, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v148);
            OUTLINED_FUNCTION_32_0();
            OUTLINED_FUNCTION_29_1();
          }

          else
          {

            v151 = OUTLINED_FUNCTION_27_25(a28);
            a24 = v152;
            v152(v151, v146);
          }

          v141(v50[69], v50[71], v50[67]);
          v114 = a25;
          v59 = a20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v157 = *(a25 + 16);
            OUTLINED_FUNCTION_4_7();
            sub_267C70CB0();
            v114 = v158;
          }

          v154 = *(v114 + 16);
          v153 = *(v114 + 24);
          if (v154 >= v153 >> 1)
          {
            OUTLINED_FUNCTION_5_6(v153);
            sub_267C70CB0();
            v114 = v159;
          }

          v47 = v50[71];
          v155 = v50[69];
          v156 = v50[67];

          a24(v47, v156);
          *(v114 + 16) = v154 + 1;
          (*(a16 + 32))(v114 + ((*(a16 + 80) + 32) & ~*(a16 + 80)) + *(a16 + 72) * v154, v155, v156);
          v112 = a27 + 1;
          v45 = a18;
          if (a26 == a22)
          {
            goto LABEL_56;
          }
        }

        v160 = sub_267EF89F8();
        sub_267EF95D8();
        OUTLINED_FUNCTION_64();
        if (os_log_type_enabled(v160, v161))
        {
          v162 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v162);
          OUTLINED_FUNCTION_3_0(&dword_267B93000, v163, v164, "#INMessage+RREntityHelpers extractAddressEntities Unable to build usoEntity for PostalAddress.");
          OUTLINED_FUNCTION_26();
        }
      }

      else
      {
LABEL_56:
      }
    }

    goto LABEL_31;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v73 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v73, qword_280240FB0);
  v74 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v76);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v77, v78, "#INMessage+RREntityHelpers extractAddressEntities INMessage has no content. Unable to perform search for location address. RREntity cannot be created.");
    OUTLINED_FUNCTION_26();
  }

LABEL_31:
  v92 = v50[71];
  v93 = v50[70];
  v94 = v50[69];
  v95 = v50[66];
  v96 = v50[63];

  v97 = v50[1];
  OUTLINED_FUNCTION_17_26();

  return v100(v98, v99, v100, v101, v102, v103, v104, v105, a9, a10, a11, a12, a13, *(&a13 + 1), a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

void *sub_267BF792C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v7 = OUTLINED_FUNCTION_18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  sub_267EF2B88();
  v12 = sub_267EF2BA8();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {

    sub_267BF9988(v11, &qword_280229E20, &unk_267EFDCC0);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v13 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v13, qword_280240FB0);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_27(v15))
    {
      v16 = OUTLINED_FUNCTION_32();
      *v16 = 0;
      _os_log_impl(&dword_267B93000, v14, a1, "#AppleMapsLinkParser URL missing", v16, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    type metadata accessor for AppleMapsLinkParser();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    sub_267BF9988(v11, &qword_280229E20, &unk_267EFDCC0);
    v3[2] = 0;
    v3[3] = a1;
    v3[4] = a2;
    sub_267EF42D8();
    sub_267EF6FF8();
    sub_267EF6FE8();
    sub_267EF6FB8();

    sub_267EF42C8();

    sub_267B9A5E8(&v19, (v3 + 5));
  }

  return v3;
}

uint64_t sub_267BF7B18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v2 = OUTLINED_FUNCTION_18(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - v5;
  v7 = sub_267EF2BA8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + 32))
  {
    goto LABEL_4;
  }

  v12 = *(v0 + 24);
  sub_267EF2B88();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_267BF9988(v6, &qword_280229E20, &unk_267EFDCC0);
LABEL_4:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v13 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v13, qword_280240FB0);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95E8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v16);
      _os_log_impl(&dword_267B93000, v14, v15, "#AppleMapsLinkParser URL missing", v11, 2u);
      OUTLINED_FUNCTION_26();
    }

    return 0;
  }

  (*(v8 + 32))(v11, v6, v7);
  v18 = objc_opt_self();
  v19 = sub_267EF2AF8();
  LODWORD(v18) = [v18 isValidMapURL_];

  if (!v18)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v26 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v26, qword_280240FB0);
    v27 = sub_267EF89F8();
    v28 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v28))
    {
      v29 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v29);
      OUTLINED_FUNCTION_1_1(&dword_267B93000, v30, v31, "#AppleMapsLinkParser invalid apple maps location link");
      OUTLINED_FUNCTION_29_1();
    }

    (*(v8 + 8))(v11, v7);
    return 0;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v20 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v20, qword_280240FB0);
  v21 = sub_267EF89F8();
  v22 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v22))
  {
    v23 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v23);
    OUTLINED_FUNCTION_1_1(&dword_267B93000, v24, v25, "#AppleMapsLinkParser valid apple maps location link");
    OUTLINED_FUNCTION_29_1();
  }

  (*(v8 + 8))(v11, v7);
  return 1;
}

uint64_t sub_267BF7E44()
{
  sub_267BF7E78();

  return swift_deallocClassInstance();
}

uint64_t sub_267BF7E78()
{
  v1 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  return v0;
}

uint64_t sub_267BF7EA8()
{
  OUTLINED_FUNCTION_12();
  v1 = *(*v0 + 320);
  v4 = *v0;
  *(*v0 + 328) = v2;

  return MEMORY[0x2822009F8](sub_267BF7FA4, 0, 0);
}

id sub_267BF7FA4()
{
  if (*(*(v0 + 328) + 16))
  {
    v2 = *(v0 + 280);
    v3 = sub_267EF89F8();
    v4 = sub_267EF95D8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = OUTLINED_FUNCTION_32();
      *v5 = 0;
      _os_log_impl(&dword_267B93000, v3, v4, "#makeOfferNLContextUpdate #ReferenceResolution Donating address RREntity to SRR", v5, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v6 = *(v0 + 136);

    v7 = sub_267EF4048();
    v8 = *(v0 + 328);
    v9 = *(v0 + 304);
    v10 = *(v0 + 136);
    if (v7)
    {
      *(v0 + 120) = v7;

      sub_267C9B520(v11);
      v12 = *(v0 + 120);
    }

    else
    {
      v13 = *(v0 + 328);
    }

    sub_267EF4058();
  }

  else
  {
  }

  v15 = *(v0 + 312);
  if (v15 == *(v0 + 296))
  {
    v16 = *(v0 + 136);
    sub_267EF4098();
    v17 = sub_267EF4748();
    OUTLINED_FUNCTION_97(v17);
    sub_267EF4738();
    if (qword_2802288F8 != -1)
    {
      OUTLINED_FUNCTION_6_37();
    }

    sub_267EF5648();
    OUTLINED_FUNCTION_17_20();

    if (qword_2802288B0 != -1)
    {
      OUTLINED_FUNCTION_5_43();
    }

    OUTLINED_FUNCTION_3_45();
    v18 = sub_267EF5648();
    OUTLINED_FUNCTION_27_20(v18, v19);

    sub_267EF4728();

    sub_267EF4138();
    sub_267EF4128();
    v47(v1);

    OUTLINED_FUNCTION_17();

    return v20();
  }

  v21 = *(v0 + 144);
  if ((v21 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x26D609870](*(v0 + 312));
  }

  else
  {
    if (v15 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_38:
      __break(1u);
      return result;
    }

    result = *(v21 + 8 * v15 + 32);
  }

  *(v0 + 304) = result;
  *(v0 + 312) = v15 + 1;
  if (__OFADD__(v15, 1))
  {
    __break(1u);
    goto LABEL_38;
  }

  v22 = [result content];
  if (v22)
  {
    v23 = v22;
    sub_267EF9028();
    v25 = v24;

    v26 = OUTLINED_FUNCTION_29_17();
    if (OUTLINED_FUNCTION_12_25())
    {
      OUTLINED_FUNCTION_16_23();
      v27 = OUTLINED_FUNCTION_12_25();

      if (v27)
      {
        OUTLINED_FUNCTION_28_23();
        if (__swift_getEnumTagSinglePayload(v26, 1, v25) == 1)
        {
          sub_267B9FF34(*(v0 + 192), &qword_2802294B0, &qword_267F001F0);
        }

        else
        {
          v29 = OUTLINED_FUNCTION_15_27();
          v30(v29);
          v31 = sub_267EF89F8();
          v32 = sub_267EF95D8();
          if (os_log_type_enabled(v31, v32))
          {
            *OUTLINED_FUNCTION_32() = 0;
            OUTLINED_FUNCTION_26_22(&dword_267B93000, v33, v34, "#makeOfferNLContextUpdate #ReferenceResolution Donating music RREntity to SRR");
            OUTLINED_FUNCTION_32_0();
          }

          v36 = *(v0 + 216);
          v35 = *(v0 + 224);
          v37 = *(v0 + 208);
          v38 = *(v0 + 136);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A80, &qword_267F00430);
          v39 = OUTLINED_FUNCTION_13_30();
          v40 = OUTLINED_FUNCTION_14_29(v39, xmmword_267EFC020);
          v41(v40);
          v42 = sub_267EF4048();
          v43 = *(v0 + 136);
          if (v42)
          {
            *(v0 + 128) = v42;

            sub_267C9B520(v44);
            v45 = *(v0 + 128);
            sub_267EF4058();
          }

          else
          {
            v46 = *(v0 + 136);
            sub_267EF4058();
          }

          (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
        }
      }
    }

    else
    {
    }
  }

  v28 = swift_task_alloc();
  *(v0 + 320) = v28;
  *v28 = v0;
  OUTLINED_FUNCTION_4_43();

  return sub_267BF6D4C();
}

uint64_t sub_267BF8490()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v5 = v4[49];
  v6 = v4[48];
  v7 = v4[47];
  v8 = *v0;
  OUTLINED_FUNCTION_5();
  *v9 = v8;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267BF85BC()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = v0[41];
  v2 = v0[37];
  v3 = v0[35];
  sub_267EF4158();
  v4 = OUTLINED_FUNCTION_57_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  sub_267EF4818();
  v8 = sub_267EF4198();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v0[50] = sub_267EF4188();
  v11 = v3[6];
  OUTLINED_FUNCTION_11_6(v3 + 2, v3[5]);
  v12 = OUTLINED_FUNCTION_7_1();
  v13(v12);
  v14 = v0[26];
  __swift_project_boxed_opaque_existential_0(v0 + 22, v0[25]);
  OUTLINED_FUNCTION_7_1();
  sub_267EF3C48();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[51] = v15;
  *v15 = v16;
  v15[1] = sub_267BF8A60;
  v17 = v0[45];
  v18 = v0[43];
  v19 = v0[41];
  v20 = v0[34];
  OUTLINED_FUNCTION_30_2();

  return sub_267BCF3A4(v21, v22, v23, v24, v25);
}

void sub_267BF86F0(void *a1)
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);

  v3 = sub_267EF89F8();
  v4 = sub_267EF95D8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v7 = sub_267EF7C18();
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v7 = 7104878;
      v9 = 0xE300000000000000;
    }

    v10 = sub_267BA33E8(v7, v9, &v15);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_267B93000, v3, v4, "#ResponseFramework+Utilities adding sash for %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x26D60A7B0](v6, -1, -1);
    MEMORY[0x26D60A7B0](v5, -1, -1);
  }

  sub_267BA9F38(0, &qword_28022CAD8, 0x277D47B08);
  v13 = sub_267BF88F4();
  sub_267EF7C18();
  if (v11)
  {
    v12 = sub_267EF8FF8();
  }

  else
  {
    v12 = 0;
  }

  [v13 setApplicationBundleIdentifier_];

  [a1 setSash_];
}

id sub_267BF88F4()
{
  v0 = sub_267EF2D28();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_267EF2D18();
  v6 = sub_267EF2CE8();
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  sub_267BF89FC(v6, v8, v5);
  return v5;
}

void sub_267BF89FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();

  [a3 setAceId_];
}

uint64_t sub_267BF8A60()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 408);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[52] = v0;

  v9 = v3[50];

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 22);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267BF8B70()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 344);
  v3 = *(v0 + 320);
  v2 = *(v0 + 328);
  v5 = *(v0 + 304);
  v4 = *(v0 + 312);
  v6 = *(v0 + 296);

  v7 = *(v3 + 8);
  v8 = OUTLINED_FUNCTION_26_0();
  v9(v8);

  OUTLINED_FUNCTION_1();

  return v10();
}

uint64_t sub_267BF8C1C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 152) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267BF8D18()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  swift_storeEnumTagMultiPayload();
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
  OUTLINED_FUNCTION_66_3();
  sub_267BF8DEC(v2, v3 + v4);
  swift_endAccess();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[20] = v5;
  *v5 = v6;
  v5[1] = sub_267C65BF8;
  v7 = v0[14];
  v8 = v0[15];

  return sub_267BF8E50();
}

uint64_t sub_267BF8DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowupOfferFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267BF8E50()
{
  OUTLINED_FUNCTION_12();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = type metadata accessor for FollowupOfferFlow.State(0);
  v1[15] = v4;
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  v1[16] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF3D88();
  v1[17] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[18] = v8;
  v10 = *(v9 + 64);
  v1[19] = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267BF8F1C()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[14];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_43();
  v5(v4, v2);
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v6);
  v8 = *(MEMORY[0x277D5BF40] + 4);
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_267C65F54;
  v10 = v0[13];

  return MEMORY[0x2821BB5D0](v10, v6, v7);
}

uint64_t sub_267BF902C(__int128 *a1, uint64_t a2, char a3)
{
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  sub_267B9A5E8(a1, v3 + 48);
  *(v3 + 16) = a2;
  *(v3 + 88) = a3;
  return v3;
}

uint64_t sub_267BF9074(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_267BF90D0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_267BF911C()
{
  result = qword_280228C20;
  if (!qword_280228C20)
  {
    type metadata accessor for NLLanguage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280228C20);
  }

  return result;
}

void sub_267BF9174(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v7 << 9) | (8 * v10);
    v12 = *(*(a1 + 56) + v11);
    v13 = *(*(a1 + 48) + v11);
    v14 = sub_267BF9318(v12);
    v16 = v15;

    if ((v16 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = *(v8 + 16);
        OUTLINED_FUNCTION_4_7();
        sub_267C70F4C();
        v8 = v20;
      }

      v17 = *(v8 + 16);
      v18 = v17 + 1;
      if (v17 >= *(v8 + 24) >> 1)
      {
        sub_267C70F4C();
        v18 = v17 + 1;
        v8 = v21;
      }

      *(v8 + 16) = v18;
      *(v8 + 8 * v17 + 32) = v14;
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_9;
    }
  }

  v22 = *(v8 + 16);
  if (v22)
  {
    v23 = (v8 + 32);
    v24 = 0.0;
    do
    {
      v25 = *v23++;
      v24 = v24 + v25;
      --v22;
    }

    while (v22);
  }
}

uint64_t sub_267BF9318(double a1)
{
  v17[0] = sub_267EF9028();
  v17[1] = v2;
  sub_267BB5034();
  v3 = sub_267EF98C8();

  if (!v3[2])
  {

    return 0;
  }

  v5 = v3[4];
  v4 = v3[5];

  if (v5 != 26746 || v4 != 0xE200000000000000)
  {
    v7 = sub_267EF9EA8();

    if (v7)
    {
      goto LABEL_11;
    }

    return 0;
  }

LABEL_11:
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v9 = sub_267EF8A08();
  __swift_project_value_buffer(v9, qword_280240FB0);
  v10 = sub_267EF89F8();
  v11 = sub_267EF95D8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136315138;
    v14 = sub_267EF9498();
    v16 = sub_267BA33E8(v14, v15, v17);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_267B93000, v10, v11, "#ContentProcessor key adding %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x26D60A7B0](v13, -1, -1);
    MEMORY[0x26D60A7B0](v12, -1, -1);
  }

  return *&a1;
}

uint64_t sub_267BF9538()
{
  OUTLINED_FUNCTION_12();
  v1[49] = v2;
  v1[50] = v0;
  v1[48] = v3;
  v4 = sub_267EF8A08();
  v1[51] = v4;
  v5 = *(v4 - 8);
  v1[52] = v5;
  v6 = *(v5 + 64) + 15;
  v1[53] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_267BF95F4(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v6 = sub_267BAF0DC(a3);
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D609870](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v10 = v8;
    a1(&v10);

    if (v3)
    {
      return;
    }
  }
}

uint64_t sub_267BF96CC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_267BF9918(a1, &v11 - v6);
  v8 = sub_267EF2CC8();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    v9 = sub_267EF2C48();
    (*(*(v8 - 8) + 8))(v7, v8);
  }

  OUTLINED_FUNCTION_102();
  objc_setAssociatedObject(v2, &unk_28022B580, v9, 0x303);
  swift_endAccess();

  return sub_267BF9988(a1, &qword_28022BD90, &unk_267EFCDD0);
}

uint64_t sub_267BF9810(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = *a1;
  v9 = sub_267EF2CC8();
  (*(*(v9 - 8) + 16))(v7, a2, v9);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  return sub_267BF96CC(v7);
}

uint64_t sub_267BF9918(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267BF9988(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_9(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_267BF99DC()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *(v2 + 440);
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v3 + 424);

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_267BF9B14()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[50];
  v13 = v0[49];
  v2 = (*(v13 + 64))(v0[48]);
  v3 = *(v13 + 72);
  OUTLINED_FUNCTION_2_17();
  v12 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[56] = v7;
  *v7 = v0;
  v7[1] = sub_267BBC3F8;
  v8 = v0[49];
  v9 = v0[50];
  v10 = v0[48];

  return (v12)(v0 + 2, v2 & 1, v10, v8);
}

uint64_t sub_267BF9C50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  swift_getWitnessTable();
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267BF9D28();
}

uint64_t sub_267BF9D28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BAEBEC;

  return sub_267BF9DE8();
}

uint64_t sub_267BF9DE8()
{
  OUTLINED_FUNCTION_56();
  *(v1 + 856) = v0;
  *(v1 + 848) = v2;
  *(v1 + 840) = v3;
  *(v1 + 258) = v4;
  *(v1 + 832) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB70, &unk_267F0BA10);
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  *(v1 + 864) = OUTLINED_FUNCTION_2();
  v9 = sub_267EF4CC8();
  *(v1 + 872) = v9;
  OUTLINED_FUNCTION_30_0(v9);
  *(v1 + 880) = v10;
  v12 = *(v11 + 64);
  *(v1 + 888) = OUTLINED_FUNCTION_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_18(v13);
  v15 = *(v14 + 64);
  *(v1 + 896) = OUTLINED_FUNCTION_2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v16);
  v18 = *(v17 + 64);
  *(v1 + 904) = OUTLINED_FUNCTION_2();
  v19 = sub_267EF3CF8();
  OUTLINED_FUNCTION_18(v19);
  v21 = *(v20 + 64);
  *(v1 + 912) = OUTLINED_FUNCTION_2();
  v22 = sub_267EF48A8();
  *(v1 + 920) = v22;
  OUTLINED_FUNCTION_30_0(v22);
  *(v1 + 928) = v23;
  v25 = *(v24 + 64);
  *(v1 + 936) = OUTLINED_FUNCTION_2();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A090, &unk_267F08CC0);
  OUTLINED_FUNCTION_18(v26);
  v28 = *(v27 + 64);
  *(v1 + 944) = OUTLINED_FUNCTION_2();
  v29 = type metadata accessor for TextComponent();
  *(v1 + 952) = v29;
  OUTLINED_FUNCTION_18(v29);
  v31 = *(v30 + 64);
  *(v1 + 960) = OUTLINED_FUNCTION_2();
  v32 = sub_267EF2CC8();
  *(v1 + 968) = v32;
  OUTLINED_FUNCTION_30_0(v32);
  *(v1 + 976) = v33;
  v35 = *(v34 + 64) + 15;
  *(v1 + 984) = swift_task_alloc();
  *(v1 + 992) = swift_task_alloc();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BD40, &unk_267F003E0);
  OUTLINED_FUNCTION_18(v36);
  v38 = *(v37 + 64) + 15;
  *(v1 + 1000) = swift_task_alloc();
  *(v1 + 1008) = swift_task_alloc();
  v39 = sub_267EF6EB8();
  *(v1 + 1016) = v39;
  OUTLINED_FUNCTION_30_0(v39);
  *(v1 + 1024) = v40;
  v42 = *(v41 + 64);
  *(v1 + 1032) = OUTLINED_FUNCTION_2();
  v43 = sub_267EF8228();
  *(v1 + 1040) = v43;
  OUTLINED_FUNCTION_30_0(v43);
  *(v1 + 1048) = v44;
  v46 = *(v45 + 64);
  *(v1 + 1056) = OUTLINED_FUNCTION_2();
  v47 = sub_267EF79B8();
  *(v1 + 1064) = v47;
  OUTLINED_FUNCTION_30_0(v47);
  *(v1 + 1072) = v48;
  v50 = *(v49 + 64);
  *(v1 + 1080) = OUTLINED_FUNCTION_2();
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters();
  *(v1 + 1088) = ComponentPatternCommonParameters;
  OUTLINED_FUNCTION_18(ComponentPatternCommonParameters);
  v53 = *(v52 + 64);
  *(v1 + 1096) = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_118_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v1 + 1104) = AssociatedTypeWitness;
  OUTLINED_FUNCTION_18(AssociatedTypeWitness);
  v56 = *(v55 + 64) + 15;
  *(v1 + 1112) = swift_task_alloc();
  *(v1 + 1120) = swift_task_alloc();
  v57 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v57, v58, v59);
}

uint64_t sub_267BFA1E0()
{
  v90 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v1 = *(v0 + 856);
  v2 = sub_267EF8A08();
  *(v0 + 1128) = OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  swift_unknownObjectRetain();
  v3 = sub_267EF89F8();
  v4 = sub_267EF95D8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 856);
    v6 = *(v0 + 848);
    v7 = *(v0 + 840);
    OUTLINED_FUNCTION_48();
    v89 = OUTLINED_FUNCTION_55_0();
    *v1 = 136315138;
    sub_267BD974C(v6, v0 + 264);
    v8 = *(v0 + 288);
    v9 = *(v0 + 296);
    __swift_project_boxed_opaque_existential_0((v0 + 264), v8);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    OUTLINED_FUNCTION_2();
    (*(v10 + 16))();
    v12 = *(v9 + 8);
    v13 = sub_267EF90A8();
    v15 = v14;

    __swift_destroy_boxed_opaque_existential_0((v0 + 264));
    sub_267BA33E8(v13, v15, &v89);
    OUTLINED_FUNCTION_75_2();

    *(v1 + 4) = v13;
    _os_log_impl(&dword_267B93000, v3, v4, "#ReadComponentAction Running RF patterns for %s", v1, 0xCu);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  v16 = *(v0 + 848);
  v17 = *(v0 + 840);
  *(v0 + 816) = *(v0 + 856);
  v18 = *(v16 + 8);
  *(v0 + 1136) = v18;
  v19 = *(v18 + 8);
  *(v0 + 1144) = v19;
  *(v0 + 1152) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0xB001000000000000;
  v83 = v18;
  v76 = v19;
  v20 = (v19)(v17);
  v21 = v20[6];
  __swift_project_boxed_opaque_existential_0(v20 + 2, v20[5]);
  v22 = *(v21 + 8);
  v23 = OUTLINED_FUNCTION_37_1();
  v24(v23);

  v81 = sub_267BFA8F4((v0 + 424));
  *(v0 + 1160) = v81;
  if (qword_2802286F0 != -1)
  {
    swift_once();
  }

  v25 = *(v0 + 1120);
  v26 = *(v0 + 1104);
  v27 = *(v0 + 856);
  v28 = *(v0 + 848);
  v29 = *(v0 + 840);
  __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
  v75 = sub_267BB4A3C();
  *(v0 + 1168) = v75;
  v30 = *(v28 + 32);
  *(v0 + 1176) = v30;
  *(v0 + 1184) = (v28 + 32) & 0xFFFFFFFFFFFFLL | 0x701000000000000;
  v30(v29, v28);
  v79 = swift_dynamicCast();
  if (v79)
  {
    v32 = *(v0 + 208);
    v31 = *(v0 + 216);
    v33 = *(v0 + 224);
    v34 = *(v0 + 240);
  }

  v86 = *(v0 + 1096);
  v88 = *(v0 + 1088);
  v82 = *(v0 + 1080);
  v85 = *(v0 + 1072);
  v35 = *(v0 + 1056);
  v73 = *(v0 + 1064);
  v74 = *(v0 + 1048);
  v36 = *(v0 + 1040);
  v37 = *(v0 + 856);
  v38 = *(v0 + 848);
  v39 = *(v0 + 840);
  OUTLINED_FUNCTION_107_0();
  sub_267BD974C(v40, v41);
  *(v0 + 744) = v37;
  v42 = v76(v39, v83);
  type metadata accessor for MessagesDialogContext();
  v43 = sub_267BFB110((v0 + 384), v42);
  v44 = sub_267BF4170();
  v80 = sub_267BFBFBC(v43, v44);
  *(v0 + 1192) = v80;

  *(v0 + 752) = v37;
  v84 = v76(v39, v83);
  *(v0 + 1200) = v84;
  sub_267BF4A24((v0 + 384), v75);
  sub_267EF90F8();

  (*(v85 + 16))(&v86[v88[5]], v82, v73);
  v45 = *MEMORY[0x277D5D508];
  v46 = *(v74 + 104);
  v47 = OUTLINED_FUNCTION_90_3();
  v46(v47);
  v78 = OUTLINED_FUNCTION_103_1();
  v48 = *(v74 + 8);
  v49 = OUTLINED_FUNCTION_65_2();
  v48(v49);
  v50 = *MEMORY[0x277D5D4D0];
  v51 = OUTLINED_FUNCTION_90_3();
  v46(v51);
  v77 = OUTLINED_FUNCTION_103_1();
  v52 = OUTLINED_FUNCTION_65_2();
  v48(v52);
  v53 = *MEMORY[0x277D5D4C0];
  v54 = OUTLINED_FUNCTION_90_3();
  v46(v54);
  v55 = OUTLINED_FUNCTION_103_1();
  v56 = OUTLINED_FUNCTION_65_2();
  v48(v56);
  v57 = *MEMORY[0x277D5D4C8];
  v58 = OUTLINED_FUNCTION_90_3();
  v46(v58);
  v59 = OUTLINED_FUNCTION_103_1();
  v60 = OUTLINED_FUNCTION_65_2();
  v48(v60);
  v61 = *MEMORY[0x277D5D4B8];
  v62 = OUTLINED_FUNCTION_90_3();
  v46(v62);
  v63 = OUTLINED_FUNCTION_103_1();
  v64 = OUTLINED_FUNCTION_65_2();
  v48(v64);
  (*(v85 + 8))(v82, v73);
  *v86 = v79;
  *&v86[v88[6]] = v78;
  *&v86[v88[7]] = v77;
  *&v86[v88[8]] = v55;
  *&v86[v88[9]] = v59;
  *&v86[v88[10]] = v63;
  *(v0 + 328) = type metadata accessor for SearchForMessagesCATPatternsExecutor(0);
  *(v0 + 336) = &off_2878D3460;
  *(v0 + 304) = v81;
  v65 = *(v0 + 408);
  v66 = *(v0 + 416);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 384, v65);
  v67 = *(OUTLINED_FUNCTION_119_1() + 72);

  v87 = (v67 + *v67);
  v68 = v67[1];
  v69 = swift_task_alloc();
  *(v0 + 1208) = v69;
  *v69 = v0;
  v69[1] = sub_267BD5E30;
  v70 = *(v0 + 1096);
  v71 = *(v0 + 258);

  return v87(v84, v80, v70, v71, v0 + 304, v65, v66);
}

uint64_t sub_267BFA8F4(void *a1)
{
  v3 = sub_267EF7B88();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B0, &unk_267EFDCA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24[-v7 - 8];
  v9 = sub_267EF70D8();
  v10 = OUTLINED_FUNCTION_2_29(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = &v24[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v15);
  v19 = &v24[-v18 - 8];
  sub_267EF6FF8();
  if (sub_267EF6FC8())
  {
    sub_267EF6FA8();

    sub_267EF8698();

    __swift_storeEnumTagSinglePayload(v8, 0, 1, v1);
    (*(v12 + 32))(v17, v8, v1);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v1);
    sub_267EF70A8();
    if (__swift_getEnumTagSinglePayload(v8, 1, v1) != 1)
    {
      sub_267B9FF34(v8, &qword_2802295B0, &unk_267EFDCA0);
    }
  }

  sub_267BFABE0(v17, a1, v19);
  v20 = *(v12 + 8);
  v20(v17, v1);
  sub_267EF78A8();
  sub_267B9AFEC(a1, v24);
  sub_267EF7868();
  sub_267B9FF34(v24, &qword_28022A620, &qword_267F08EC0);
  sub_267EF7888();

  sub_267EF7898();

  type metadata accessor for SearchForMessagesCATPatternsExecutor(0);
  sub_267EF7B68();
  v21 = sub_267EF78E8();
  v20(v19, v1);
  return v21;
}

uint64_t sub_267BFABE0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_267EF70D8();
  v8 = OUTLINED_FUNCTION_2_29(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  (*(v10 + 16))(a3, a1, v3);
  v13 = a2[4];
  v14 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  if ((sub_267EF3C48() & 1) != 0 && (sub_267EF7098(), sub_267BFAE7C(), OUTLINED_FUNCTION_5_29(), v14 = v3, sub_267EF8FE8(), v15 = OUTLINED_FUNCTION_3_27(), v16(v15), (v3 & 1) == 0))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v26 = sub_267EF8A08();
    __swift_project_value_buffer(v26, qword_280240FB0);
    v27 = sub_267EF89F8();
    v28 = sub_267EF95D8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      OUTLINED_FUNCTION_6_22(&dword_267B93000, v30, v31, "#MessageReadingUtils overriding mode to voiceForward for CarPlay");
      MEMORY[0x26D60A7B0](v29, -1, -1);
    }

    sub_267EF7098();
  }

  else
  {
    sub_267EF7088();
    OUTLINED_FUNCTION_5_29();
    sub_267EF70B8();
    v17 = OUTLINED_FUNCTION_3_27();
    result = v18(v17);
    if ((v14 & 1) == 0)
    {
      return result;
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v20 = sub_267EF8A08();
    __swift_project_value_buffer(v20, qword_280240FB0);
    v21 = sub_267EF89F8();
    v22 = sub_267EF95D8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      OUTLINED_FUNCTION_6_22(&dword_267B93000, v24, v25, "#MessageReadingUtils overriding mode to displayForward for reading");
      MEMORY[0x26D60A7B0](v23, -1, -1);
    }

    sub_267EF70A8();
  }

  v32 = *(v10 + 40);
  v33 = OUTLINED_FUNCTION_5_29();
  return v34(v33);
}

unint64_t sub_267BFAE7C()
{
  result = qword_28022BB90;
  if (!qword_28022BB90)
  {
    sub_267EF70D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BB90);
  }

  return result;
}

void sub_267BFAF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_267EF7B88();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v32 = OUTLINED_FUNCTION_18(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_267C2FB6C(v25, &a9 - v35, &qword_280229E20, &unk_267EFDCC0);
  (*(v27 + 16))(v30, v23, v26);
  OUTLINED_FUNCTION_193();
  sub_267EF78B8();
  (*(v27 + 8))(v23, v26);
  sub_267B9F98C(v25, &qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_47();
}

uint64_t OUTLINED_FUNCTION_136_0()
{
  v3 = *(v1 + 104);
  result = v0;
  v5 = *(v2 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_136_1()
{

  return sub_267EF92F8();
}

uint64_t OUTLINED_FUNCTION_136_2()
{

  return sub_267EF7E18();
}

uint64_t sub_267BFB110(void *a1, void *a2)
{
  v4 = sub_267EF2E38();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228820 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v8 = qword_280240FC8;
  sub_267EF95D8();
  v57 = v8;
  sub_267EF8998();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v10 = *(v9 + 32);
  v11 = OUTLINED_FUNCTION_26_0();
  v13 = v12(v11);
  v15 = v14;
  v16 = sub_267BFB6B4();
  v17 = *(v16 + 88);
  v18 = *(v16 + 96);

  v19 = sub_267BFB790(v17, v18, 1);

  v20 = *(v16 + 88);
  v21 = *(v16 + 96);

  v56 = sub_267BFB860();

  swift_beginAccess();
  sub_267BBD3E4(&v59, *(v16 + 24));
  v22 = *(&v60 + 1);
  if (!*(&v60 + 1))
  {
    sub_267B9FF34(&v59, &qword_280229910, &unk_267EFEB70);

    v29 = 0;
    if (v19)
    {
      goto LABEL_11;
    }

LABEL_15:
    v55 = 0;
    goto LABEL_16;
  }

  v23 = v61;
  __swift_project_boxed_opaque_existential_0(&v59, *(&v60 + 1));
  OUTLINED_FUNCTION_2_22();
  v25 = v24(v22, v23);
  v27 = v26;
  __swift_destroy_boxed_opaque_existential_0(&v59);
  if (v25 == v13 && v27 == v15)
  {

    v29 = 1;
    if (v19)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  v29 = sub_267EF9EA8();

  if (!v19)
  {
    goto LABEL_15;
  }

LABEL_11:
  v30 = *(v19 + 88);
  v31 = *(v19 + 96);

  v32 = sub_267BFB790(v30, v31, 1);

  HIDWORD(v55) = v32 == 0;
  if (v32)
  {
  }

  LODWORD(v55) = *(v19 + 80);
LABEL_16:
  if (sub_267BF4920())
  {
    sub_267B9AFEC(a1, v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    v33 = v7;
    if (swift_dynamicCast())
    {
      v34 = *(&v60 + 1);
      v35 = v61;
      __swift_project_boxed_opaque_existential_0(&v59, *(&v60 + 1));
      v36 = (*(v35 + 16))(v34, v35);
      __swift_destroy_boxed_opaque_existential_0(&v59);
    }

    else
    {
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
      sub_267B9FF34(&v59, &qword_280229CE0, &qword_267F00410);
      v36 = 0;
    }

    type metadata accessor for MessagesGroup(0);
    v38 = a2[5];
    v39 = a2[6];
    __swift_project_boxed_opaque_existential_0(a2 + 2, v38);
    (*(v39 + 8))(&v59, v38, v39);
    __swift_project_boxed_opaque_existential_0(&v59, *(&v60 + 1));
    sub_267EF3B68();

    sub_267D2EBEC(v40, v36, v33);
    v37 = v41;
    __swift_destroy_boxed_opaque_existential_0(&v59);
  }

  else
  {
    v37 = 0;
  }

  v42 = v19 == 0;
  v43 = (v19 == 0) & v29;
  v54 = v19;
  v44 = v56;
  type metadata accessor for MessagesConversationDialogContext();
  v45 = *(v16 + 80);
  v46 = sub_267BF4920();

  v47 = sub_267BF5078(v42, SBYTE4(v55), v44 == 0, v45, v55, v46, v37, v29 & 1, v43);
  sub_267EF95D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
  v48 = OUTLINED_FUNCTION_9_14();
  *(v48 + 16) = xmmword_267EFC020;
  *&v59 = v47;
  sub_267BFBA4C(&qword_280229CD0, type metadata accessor for MessagesConversationDialogContext);
  sub_267EF7B58();
  v49 = MEMORY[0x277D837D0];
  v50 = sub_267EF8F08();
  v52 = v51;

  *(v48 + 56) = v49;
  *(v48 + 64) = sub_267BFBEB4();
  *(v48 + 32) = v50;
  *(v48 + 40) = v52;
  sub_267EF8998();

  return v47;
}

uint64_t sub_267BFB6B4()
{
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_83();
  v1 = *(v0 + 392);

  OUTLINED_FUNCTION_218();
  sub_267BD9AD4(v2, v3, v4);
  v6 = v5;
  v8 = v7;

  OUTLINED_FUNCTION_83();
  v9 = *(v0 + 384);

  v10 = sub_267BD9C8C(v6, v8, v9);

  OUTLINED_FUNCTION_4_58();
  OUTLINED_FUNCTION_24_29();
  if (v8)
  {

    v10 = MEMORY[0x26D609870](v10, v0);
  }

  else
  {
    OUTLINED_FUNCTION_23_24(v0 + 8 * v10);
  }

  return v10;
}

uint64_t sub_267BFB790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_83();
  v5 = *(v3 + 384);

  v6 = OUTLINED_FUNCTION_19_35();
  v9 = sub_267BD9C8C(v6, v7, v8);

  v10 = __OFSUB__(v9, a3);
  v11 = v9 - a3;
  if (v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v11 < 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_24_29();
  if (v9)
  {
LABEL_9:

    v11 = MEMORY[0x26D609870](v11, v3);

    return v11;
  }

  OUTLINED_FUNCTION_23_24(v3 + 8 * v11);
  return v11;
}

unint64_t sub_267BFB860()
{
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_83();
  v2 = *(v0 + 384);

  OUTLINED_FUNCTION_218();
  v6 = sub_267BD9C8C(v3, v4, v5);

  OUTLINED_FUNCTION_83();
  v7 = sub_267BAF0DC(*(v0 + 56));
  if (__OFSUB__(v7, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 >= v7 - 1)
  {
    return 0;
  }

  v1 = v6 + 1;
  v6 = *(v0 + 56);
  v0 = v6 & 0xC000000000000001;
  sub_267BBD0EC(v1, (v6 & 0xC000000000000001) == 0, v6);
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_8:

    MEMORY[0x26D609870](v1, v6);
    OUTLINED_FUNCTION_43();

    return v0;
  }

  OUTLINED_FUNCTION_25_31(v6 + 8 * v1);
  return v0;
}

uint64_t sub_267BFB984(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_267BFB9C8(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 25) = *(a1 + 17);
  *(v1 + 26) = *(a1 + 18);
  *(v1 + 27) = *(a1 + 19);
  *(v1 + 28) = *(a1 + 20);
  *(v1 + 29) = *(a1 + 21);
  *(v1 + 32) = *(a1 + 24);
  *(v1 + 40) = *(a1 + 32);
  v2 = *(a1 + 33);

  *(v1 + 41) = v2;
  return v1;
}

uint64_t sub_267BFBA4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267BFBA94(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CAB0, &qword_267F0CC48);
  v6 = OUTLINED_FUNCTION_58(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v25[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267BFBCE0();
  sub_267EFA088();
  v14 = *(v3 + 24);
  LOBYTE(v26) = 0;
  sub_267EF9E18();
  if (!v2)
  {
    v15 = *(v3 + 25);
    OUTLINED_FUNCTION_1_4(1);
    v16 = *(v3 + 26);
    OUTLINED_FUNCTION_1_4(2);
    v17 = *(v3 + 27);
    OUTLINED_FUNCTION_1_4(3);
    v18 = *(v3 + 28);
    OUTLINED_FUNCTION_1_4(4);
    v19 = *(v3 + 29);
    OUTLINED_FUNCTION_1_4(5);
    v26 = *(v3 + 32);
    v25[7] = 6;
    type metadata accessor for MessagesGroup(0);
    OUTLINED_FUNCTION_3_75();
    sub_267BFBE6C(v20, 255, v21);
    sub_267EF9DF8();
    v22 = *(v3 + 40);
    OUTLINED_FUNCTION_1_4(7);
    v23 = *(v3 + 41);
    OUTLINED_FUNCTION_1_4(8);
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_267BFBCE0()
{
  result = qword_28022CAA8;
  if (!qword_28022CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022CAA8);
  }

  return result;
}

uint64_t sub_267BFBD50(char a1)
{
  result = 0x74737269467369;
  switch(a1)
  {
    case 1:
      v3 = 0x6F6365537369;
      goto LABEL_6;
    case 2:
      result = 0x7473614C7369;
      break;
    case 3:
      v3 = 0x657070417369;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x646E000000000000;
      break;
    case 4:
      result = 0xD00000000000001ELL;
      break;
    case 5:
      result = 0x70756F72477369;
      break;
    case 6:
      result = 0x70756F7267;
      break;
    case 7:
      result = 0xD00000000000001ELL;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267BFBE6C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_267BFBEB4()
{
  result = qword_28022A2E0;
  if (!qword_28022A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A2E0);
  }

  return result;
}

uint64_t sub_267BFBF08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267BFBF74(uint64_t a1)
{
  *(v1 + 16) = 0;
  v2 = *(a1 + 24);
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 32) = v2;
  *(v1 + 33) = *(a1 + 25);
  v3 = *(a1 + 26);

  *(v1 + 34) = v3;
  return v1;
}

uint64_t sub_267BFBFBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for MessagesDialogContext.Builder();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  sub_267BF43D0(a1);

  sub_267BFB984(a2);

  v7 = (*(v3 + 144))(inited);

  return v7;
}

uint64_t sub_267BFC05C(uint64_t a1)
{
  OUTLINED_FUNCTION_5_75();
  v2 = swift_allocObject();
  sub_267BF4998(a1);
  return v2;
}

uint64_t sub_267BFC094()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_267BFC0BC()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 256) = v2;
  *(v1 + 264) = v0;
  *(v1 + 89) = v3;
  *(v1 + 240) = v4;
  *(v1 + 248) = v5;
  *(v1 + 232) = v6;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  *(v1 + 272) = swift_task_alloc();
  v8 = sub_267EF2E38();
  *(v1 + 280) = v8;
  v9 = *(v8 - 8);
  *(v1 + 288) = v9;
  v10 = *(v9 + 64) + 15;
  *(v1 + 296) = swift_task_alloc();
  v11 = type metadata accessor for TextComponent();
  *(v1 + 304) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v1 + 312) = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267BFC1E4()
{
  v3 = *(v1 + 264);
  v4 = v3[1];
  if (!v4)
  {
    v19 = *(*(v1 + 304) + 60);
    OUTLINED_FUNCTION_10(&unk_267F062F8);
    v20 = swift_task_alloc();
    *(v1 + 320) = v20;
    *v20 = v1;
    v20[1] = sub_267BFF414;
    v21 = *(v1 + 264);
    v22 = *(v1 + 232);
    OUTLINED_FUNCTION_98();

    __asm { BR              X2 }
  }

  v115 = *v3;
  v5 = *(*(v1 + 232) + 416);
  *(v1 + 344) = v5;
  if (!v5)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v25 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v25, qword_280240FB0);
    v26 = sub_267EF89F8();
    v27 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v27))
    {
      v28 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v28);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v29, v30, "#TextComponent Current conversation is nil!!");
      OUTLINED_FUNCTION_26();
    }

    sub_267C266B0();
    v31 = swift_allocError();
    OUTLINED_FUNCTION_44_17(v31, v32);
    OUTLINED_FUNCTION_30_26();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_98();

    __asm { BRAA            X1, X16 }
  }

  v111 = v4;
  v6 = *(v1 + 312);
  sub_267BFF55C(v3, v6);

  sub_267BFF5C0();
  *(v1 + 352) = v7;
  sub_267C00468(v6);
  if (v3[9])
  {
    v8 = *(v1 + 288);
    v9 = *(v1 + 296);
    v10 = *(v1 + 280);
    v11 = *(v1 + 232);
    v12 = v11[6];
    __swift_project_boxed_opaque_existential_0(v11 + 2, v11[5]);
    v13 = *(v12 + 8);
    v14 = OUTLINED_FUNCTION_10_0();
    v15(v14);
    v2 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
    OUTLINED_FUNCTION_10_0();
    sub_267EF3B68();

    OUTLINED_FUNCTION_42_20();

    v16 = *(v8 + 8);
    v0 = (v8 + 8);
    v17 = OUTLINED_FUNCTION_63();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  }

  OUTLINED_FUNCTION_45_18();
  if ((v35 & 1) == 0)
  {
    v36 = *(v1 + 272);
    INMessageEffectType.description.getter(v0[10]);
    sub_267EF90F8();

    v0 = *(v1 + 264);
  }

  v37 = *(v1 + 272);
  v38 = *(v1 + 232);
  sub_267EF79B8();
  OUTLINED_FUNCTION_521();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  v43 = v0[7];
  v44 = v0[8];
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  v45 = *(v38 + 256);

  v46 = OUTLINED_FUNCTION_63();
  v48 = sub_267BBF2B0(v46, v47, v45);

  OUTLINED_FUNCTION_34_20();
  v49 = OUTLINED_FUNCTION_63();
  v51 = sub_267BBF2B0(v49, v50, v2);
  v53 = v52;

  *(v1 + 376) = v51;
  *(v1 + 384) = v53;
  if (v51 == 2)
  {
    v54 = 0.0;
  }

  else
  {
    v54 = v53;
  }

  if (v113)
  {
    v55 = [v113 displayName];
    sub_267EF9028();

    v56 = sub_267EF9118();
  }

  else
  {
    v56 = 0;
  }

  OUTLINED_FUNCTION_25_28();
  if (v51 != 2 && (v57 & 1) != 0)
  {
    __break(1u);
    goto LABEL_53;
  }

  if (v54 <= -1.0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v54 >= 1.84467441e19)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v58 = *(v1 + 232);

  sub_267BB78E4(BYTE4(v109) & v48, v56 & 1, v54);

  OUTLINED_FUNCTION_53_14(v59, v60, v61, v62, v63, v64, v65, v66, v109, v111, v113, v115);
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  v67 = *(v58 + 248);

  v68 = OUTLINED_FUNCTION_63();
  sub_267BB7A18(v68, v69, v67);

  v70 = *(v1 + 88);
  if (v70 == 1)
  {
    OUTLINED_FUNCTION_40_16();
    if (!v71)
    {
      OUTLINED_FUNCTION_0();
    }

    v72 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v72, qword_280240FB0);

    v73 = sub_267EF89F8();
    v74 = sub_267EF95D8();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = OUTLINED_FUNCTION_48();
      v76 = OUTLINED_FUNCTION_52();
      *v75 = 136315138;
      v77 = OUTLINED_FUNCTION_44_0();
      *(v75 + 4) = sub_267BA33E8(v77, v78, v79);
      _os_log_impl(&dword_267B93000, v73, v74, "#TextComponent processedContent is .differentLanguage(%s)", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v76);
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_46_17(v80, v81, v82, v83, v84, v85, v86, v87, v110, v112, v114, v116);
  }

  else
  {
    if (v70 != 255)
    {
      sub_267B9FF34(v1 + 56, &qword_280229918, &qword_267F003B0);
    }

    v5 = 0;
    v43 = 0;
  }

  *(v1 + 392) = v5;
  *(v1 + 400) = v43;
  if (v114)
  {
    v88 = [v114 displayName];
    sub_267EF9028();
    OUTLINED_FUNCTION_359();

    LOBYTE(v88) = sub_267EF9118();

    if (v88)
    {
      v89 = [v114 displayName];
      sub_267EF9028();
      OUTLINED_FUNCTION_359();

      v90 = [objc_allocWithZone(sub_267EF67F8()) init];

      v91 = sub_267EF67B8();
      v93 = v92;

      *(v1 + 208) = v91;
      *(v1 + 216) = v93;
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v94 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v94, qword_280240FB0);
      v95 = sub_267EF89F8();
      v96 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_10_2(v96))
      {
        v97 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v97);
        OUTLINED_FUNCTION_3_0(&dword_267B93000, v98, v99, "#TextComponent message from a shortcode..normalizing");
        OUTLINED_FUNCTION_26();
      }
    }
  }

  v48 = *(*(v1 + 264) + 40);
  if (sub_267BAF0DC(v48))
  {
    OUTLINED_FUNCTION_1_9();
    if (!v114)
    {
      v100 = *(v48 + 32);
LABEL_46:
      *(v1 + 408) = v100;
      v101 = swift_task_alloc();
      *(v1 + 416) = v101;
      *v101 = v1;
      OUTLINED_FUNCTION_12_33(v101);
      OUTLINED_FUNCTION_98();

      return sub_267BB7B40();
    }

LABEL_55:
    v100 = MEMORY[0x26D609870](0, v48);
    goto LABEL_46;
  }

  *(v1 + 440) = 0;
  *(v1 + 448) = 0;
  *(*(v1 + 344) + 82) = 0;
  v104 = swift_task_alloc();
  *(v1 + 456) = v104;
  *v104 = v1;
  OUTLINED_FUNCTION_1_60(v104);
  OUTLINED_FUNCTION_98();

  return sub_267BB8698(v105, v106, v107);
}

uint64_t sub_267BFC988()
{
  OUTLINED_FUNCTION_56();
  v2 = OUTLINED_FUNCTION_52_9(v1);
  OUTLINED_FUNCTION_18(v2);
  v4 = *(v3 + 64);
  *(v0 + 200) = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10(&unk_267F06300);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_49_12(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_9_32(v6);

  return v9(v8);
}

uint64_t sub_267BFCA34()
{
  OUTLINED_FUNCTION_12();
  v1[21] = v2;
  v1[22] = v0;
  v1[19] = v3;
  v1[20] = v4;
  v5 = sub_267EF89E8();
  v1[23] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[24] = v6;
  v8 = *(v7 + 64);
  v1[25] = OUTLINED_FUNCTION_2();
  v9 = type metadata accessor for TextComponent();
  v1[26] = v9;
  OUTLINED_FUNCTION_18(v9);
  v11 = *(v10 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v12 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v12);
  v14 = *(v13 + 64);
  v1[29] = OUTLINED_FUNCTION_2();
  v15 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_267BFCB34()
{
  OUTLINED_FUNCTION_56();
  if (qword_2802286F0 != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  v1 = v0[29];
  type metadata accessor for SearchForMessagesCATs();
  OUTLINED_FUNCTION_133();
  v0[30] = OUTLINED_FUNCTION_56_10();
  v0[5] = &type metadata for MessagesFeatureFlagsImpl;
  v0[6] = off_2878D1228;
  OUTLINED_FUNCTION_10(&unk_267F06308);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[31] = v2;
  *v2 = v3;
  v2[1] = sub_267D5A34C;
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[20];
  OUTLINED_FUNCTION_19_18();

  return v7();
}

uint64_t sub_267BFCC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[56] = a5;
  v6[57] = v5;
  v6[54] = a2;
  v6[55] = a3;
  v6[53] = a1;
  v7 = sub_267EF89E8();
  v6[58] = v7;
  v8 = *(v7 - 8);
  v6[59] = v8;
  v9 = *(v8 + 64) + 15;
  v6[60] = swift_task_alloc();
  v10 = sub_267EF2E38();
  v6[61] = v10;
  v11 = *(v10 - 8);
  v6[62] = v11;
  v12 = *(v11 + 64) + 15;
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();
  v6[65] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267BD2E2C, 0, 0);
}

uint64_t OUTLINED_FUNCTION_87_2(uint64_t result, __n128 a2)
{
  *(result + 16) = v2;
  *(result + 24) = a2;
  return result;
}

void OUTLINED_FUNCTION_87_3(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 0xCu);
}

unint64_t sub_267BFCDCC()
{
  result = qword_280229D10;
  if (!qword_280229D10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280229D10);
  }

  return result;
}

uint64_t sub_267BFCE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v5 = sub_267EF2BA8();
  v3[18] = v5;
  v6 = *(v5 - 8);
  v3[19] = v6;
  v7 = *(v6 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267BFCF18, 0, 0);
}

void sub_267BFCF18()
{
  v1 = *(v0 + 128);
  v102 = MEMORY[0x277D84F90];
  v2 = sub_267BAF0DC(v1);
  for (i = 0; v2 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x26D609870](i, v101[16]);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_64;
      }

      v4 = *(v1 + 32 + 8 * i);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if ([v4 resultType] == 32 || objc_msgSend(v5, sel_resultType) == 2048 || objc_msgSend(v5, sel_resultType) == 16)
    {
      sub_267EF9BD8();
      v6 = *(v102 + 16);
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
    }

    else
    {
    }
  }

  v8 = v101;
  v7 = v102;
  v101[22] = v102;
  v9 = sub_267BAF0DC(v102);
  v10 = 0;
  v101[23] = v9;
  v100 = v9;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v8[24] = v11;
    if (v100 == v10)
    {
      v32 = v8[14];
      v31 = v8[15];

      for (j = 0; ; j = v8[28])
      {
        v8[25] = v32;
        v8[26] = v31;
        for (k = 32 * j; ; k += 32)
        {
          OUTLINED_FUNCTION_62_5();
          if (v35)
          {
            v83 = v8[24];

            goto LABEL_60;
          }

          OUTLINED_FUNCTION_60_6();
          if (v35)
          {
            OUTLINED_FUNCTION_59_9(v36, v37);
            if (v41)
            {
              goto LABEL_74;
            }

            v64 = OUTLINED_FUNCTION_72_5(v38, v39);
          }

          else
          {
            v64 = MEMORY[0x26D609870](j);
          }

          v40 = v64;
          v8[27] = v64;
          v8[28] = j + 1;
          if (__OFADD__(j, 1))
          {
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
            return;
          }

          v42 = OUTLINED_FUNCTION_26_14();
          if (v35)
          {

LABEL_60:
            OUTLINED_FUNCTION_40_10();

            OUTLINED_FUNCTION_23_12();
            OUTLINED_FUNCTION_93();

            __asm { BRAA            X3, X16 }
          }

          if (v41)
          {
            goto LABEL_75;
          }

          v43 = *(v42 + k + 32);
          v8[29] = v43;
          v44 = *(v42 + k + 40);
          v8[30] = v44;
          v45 = *(v42 + k + 48);
          v8[31] = v45;
          v46 = *(v42 + k + 56);
          v8[32] = v46;

          v47 = [v40 URL];
          if (!v47)
          {
            break;
          }

          v48 = v47;
          v49 = v8[20];
          v50 = v8[21];
          v52 = v8[18];
          v51 = v8[19];
          sub_267EF2B48();

          (*(v51 + 32))(v50, v49, v52);
          v53 = sub_267EF2B78();
          if (!v54)
          {
            goto LABEL_55;
          }

          v55 = v54;
          v56 = OUTLINED_FUNCTION_6_25(v53, v54);
          OUTLINED_FUNCTION_22_14(v56);
          sub_267BB5034();
          OUTLINED_FUNCTION_4_31();
          sub_267EF9968();
          v57 = OUTLINED_FUNCTION_61_2();
          sub_267B9FF34(v57, &unk_28022AF10, &unk_267F001E0);

          if (v50)
          {
LABEL_55:
            v78 = swift_task_alloc();
            v79 = OUTLINED_FUNCTION_55_9(v78);
            *v79 = v80;
            OUTLINED_FUNCTION_2_32(v79);
            OUTLINED_FUNCTION_93();

            sub_267D027C0(v81);
            return;
          }

          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0_10();
            swift_once();
          }

          v58 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v58, qword_280240FB0);
          v59 = sub_267EF89F8();
          v60 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_10_2(v60))
          {
            *OUTLINED_FUNCTION_32() = 0;
            OUTLINED_FUNCTION_69_4(&dword_267B93000, v59, v55, "#MessageReadingDataDetector Found link match to an email address, skipping");
            OUTLINED_FUNCTION_32_0();
          }

          v61 = v8[21];
          v63 = v8[18];
          v62 = v8[19];

          (*(v62 + 8))(v61, v63);
          ++j;
        }

        sub_267D04504(v40);
        v8[37] = v65;
        if (v65)
        {
          goto LABEL_67;
        }

        if (sub_267E77C48(v40))
        {

          v92 = MEMORY[0x26D608DB0](v43, v44, v45, v46);
          OUTLINED_FUNCTION_27_13(v92, v93);
          v94 = swift_task_alloc();
          v95 = OUTLINED_FUNCTION_56_8(v94);
          *v95 = v96;
          OUTLINED_FUNCTION_1_34(v95);
          OUTLINED_FUNCTION_93();

          sub_267D03DF0(v97, v98);
          return;
        }

        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v66 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v66, qword_280240FB0);
        v67 = sub_267EF89F8();
        v68 = sub_267EF95E8();
        if (OUTLINED_FUNCTION_10_2(v68))
        {
          v69 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v69);
          _os_log_impl(&dword_267B93000, v67, v44, "#MessageReadingDataDetector cannot decipher data type", v40, 2u);
          OUTLINED_FUNCTION_26();
        }

        v70 = v8[31];
        v71 = v8[32];
        v72 = v8[26];
        v73 = v8[27];
        v8[6] = v8[25];
        v8[7] = v72;
        *(v8 + 1) = *(v8 + 29);
        v8[4] = v70;
        v8[5] = v71;
        v8[8] = 0;
        v8[9] = 0xE000000000000000;
        sub_267BB5034();
        sub_267D04568();
        v32 = sub_267EF9938();
        v31 = v74;
      }
    }

    if ((v102 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x26D609870](v10, v7);
    }

    else
    {
      if (v10 >= *(v7 + 16))
      {
        goto LABEL_66;
      }

      v12 = *(v7 + 8 * v10 + 32);
    }

    v13 = v12;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v15 = v8[14];
    v14 = v8[15];
    [v12 range];
    sub_267EF9578();
    if (v16)
    {

      sub_267D044B0();
      OUTLINED_FUNCTION_61_1();
      *v75 = 1;
      swift_willThrow();

      OUTLINED_FUNCTION_73_4();

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_93();

      __asm { BRAA            X1, X16 }
    }

    v17 = v8[14];
    v18 = v8[15];
    v19 = sub_267EF9278();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = *(v11 + 16);
      sub_267C70D88();
      v11 = v29;
    }

    v26 = *(v11 + 16);
    if (v26 >= *(v11 + 24) >> 1)
    {
      sub_267C70D88();
      v11 = v30;
    }

    *(v11 + 16) = v26 + 1;
    v27 = (v11 + 32 * v26);
    v27[4] = v19;
    v27[5] = v21;
    v27[6] = v23;
    v27[7] = v25;
    ++v10;
    v8 = v101;
    v7 = v102;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  v86 = swift_task_alloc();
  v87 = OUTLINED_FUNCTION_57_1(v86);
  *v87 = v88;
  OUTLINED_FUNCTION_3_30(v87);
  OUTLINED_FUNCTION_93();

  sub_267D036E8(v89, v90);
}

uint64_t sub_267BFD69C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v6;
  v3[5] = v0;
  v8 = *(v7 + 128);
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  v3[17] = v0;

  if (!v0)
  {
    v11 = v3[15];
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267BFD7A8()
{
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 64);
  sub_267EF2CB8();
  sub_267EF2C88();
  v7 = v6;
  v2(v4, v5);
  v8 = sub_267EF89F8();
  v9 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v9))
  {
    v10 = *(v0 + 96);
    v11 = OUTLINED_FUNCTION_48();
    *v11 = 134217984;
    *(v11 + 4) = v7 - v10;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    OUTLINED_FUNCTION_26();
  }

  v17 = *(v0 + 24);
  v18 = *(v0 + 32);
  v19 = *(v0 + 80);

  OUTLINED_FUNCTION_23_12();

  return v20(v17, v18);
}

uint64_t sub_267BFD8B0()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[14] = v9;

  if (v0)
  {
    v10 = v3[12];

    v11 = *(v7 + 8);
    OUTLINED_FUNCTION_30_2();

    __asm { BRAA            X1, X16 }
  }

  v14 = swift_task_alloc();
  v3[15] = v14;
  *v14 = v7;
  v14[1] = sub_267BF4DDC;
  v15 = v3[8];
  v16 = v3[9];
  v17 = v3[7];
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_30_2();

  return sub_267BFDA28(v18, v19, v20, v21, v22);
}

uint64_t sub_267BFDA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267BFDA44()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[8];
  if (v1 && *(v1 + 16))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v2 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
    v3 = sub_267EF89F8();
    v4 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v4))
    {
      v5 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v5);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_26();
    }

    v11 = v0[10];
    v13 = v0[7];
    v12 = v0[8];
    v14 = v0[6];

    sub_267EF8FF8();
    OUTLINED_FUNCTION_108_6();
    v0[11] = sub_267DAE6FC(v15, v16, v11);

    v17 = swift_task_alloc();
    v0[12] = v17;
    *v17 = v0;
    v17[1] = sub_267DAE278;
    v18 = v0[9];
    v19 = v0[10];
    OUTLINED_FUNCTION_30_2();

    return sub_267DAF228(v20, v21, v22);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v25 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v25, qword_280240FB0);
    v26 = sub_267EF89F8();
    v27 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v27))
    {
      v28 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v28);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v29, v30, v31, v32, v33, 2u);
      OUTLINED_FUNCTION_26();
    }

    v34 = v0[10];
    v36 = v0[6];
    v35 = v0[7];

    sub_267BFDCA0();
    v0[14] = v37;
    v38 = swift_task_alloc();
    v0[15] = v38;
    *v38 = v0;
    v38[1] = sub_267BFE75C;
    v39 = v0[9];
    v40 = v0[10];
    OUTLINED_FUNCTION_30_2();

    return sub_267BFE324(v41, v42, v43);
  }
}

void sub_267BFDCA0()
{
  sub_267EF2D48();
  v0 = sub_267EF8FF8();

  v1 = CEMCreateEmojiLocaleData();

  v2 = sub_267EF8FF8();
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x277D84F90];
  v4 = v3 + 16;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = v2;
  CFStringGetLength(v6);
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v5;
  v7[4] = v3;
  aBlock[4] = sub_267C16484;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_267C14628;
  aBlock[3] = &block_descriptor;
  v8 = _Block_copy(aBlock);
  v9 = v6;

  CEMEnumerateEmojiTokensInStringWithLocaleAndBlock();
  _Block_release(v8);
  swift_beginAccess();
  v10 = *(v5 + 16);
  Length = CFStringGetLength(v9);

  if (__OFSUB__(Length, v10))
  {
    __break(1u);
    goto LABEL_10;
  }

  v23.location = v10;
  v23.length = Length - v10;
  v12 = CFStringCreateWithSubstring(0, v9, v23);
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  MutableCopy = CFStringCreateMutableCopy(0, 0, v12);
  CFStringTrimWhitespace(MutableCopy);
  if (!MutableCopy)
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (CFStringGetLength(MutableCopy))
  {
    v15 = sub_267EF9028();
    v17 = v16;
    swift_beginAccess();
    sub_267BFE184();
    v18 = *(*v4 + 16);
    sub_267BFE2C4(v18);
    v19 = *v4;
    *(v19 + 16) = v18 + 1;
    v20 = v19 + 32 * v18;
    *(v20 + 32) = v15;
    *(v20 + 40) = v17;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *v4 = v19;
    swift_endAccess();
  }

  if (v1)
  {
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v21 = *(v3 + 16);
}

uint64_t sub_267BFDF6C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_267BFDFB4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_267BFE19C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void sub_267BFE1F8()
{
  OUTLINED_FUNCTION_26_7();
  if (v5)
  {
    OUTLINED_FUNCTION_2_21();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_18_10();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_24();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_10_14(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229170, &unk_267EFEEC0);
    v9 = OUTLINED_FUNCTION_37_3();
    OUTLINED_FUNCTION_16_7(v9);
    OUTLINED_FUNCTION_13_10(v10);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_42_5();
  if (v1)
  {
    if (v3 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_267BFE2DC(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_267BFE324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_267BFE348, 0, 0);
}

uint64_t sub_267BFE348()
{
  if (qword_280228818 != -1)
  {
LABEL_33:
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[4];
  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);

  v3 = sub_267EF89F8();
  v4 = sub_267EF95D8();
  v5 = OUTLINED_FUNCTION_5_2(v4);
  v6 = v0[4];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&dword_267B93000, v3, v4, "Beginning to create String from given %ld EmojiStringTokens", v7, 0xCu);
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
    v8 = v0[4];
  }

  v9 = v0[4];
  v10 = *(v9 + 16);
  if (v10 == 1 && (*(v9 + 56) & 1) == 0)
  {
    v40 = *(v9 + 32);
    v41 = *(v9 + 40);
    v45 = v0[1];

    return v45(v40, v41);
  }

  else
  {
    v11 = 0;
    v12 = v9 + 56;
    v44 = v10;
    v42 = v12;
    v43 = MEMORY[0x277D84F90];
LABEL_8:
    v13 = (v12 + 32 * v11);
    while (v10 != v11)
    {
      if (v11 >= v10)
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_32;
      }

      v15 = *(v13 - 3);
      v16 = *(v13 - 2);
      v17 = *(v13 - 1);
      v18 = *v13;
      if (*v13)
      {
        v25 = *(v13 - 2);

LABEL_20:
        v26 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = *(v43 + 16);
          OUTLINED_FUNCTION_4_7();
          sub_267BFE1F8();
          v26 = v30;
        }

        v27 = *(v26 + 16);
        if (v27 >= *(v26 + 24) >> 1)
        {
          sub_267BFE1F8();
          v26 = v31;
        }

        *(v26 + 16) = v27 + 1;
        v43 = v26;
        v28 = v26 + 32 * v27;
        *(v28 + 32) = v15;
        *(v28 + 40) = v16;
        *(v28 + 48) = v17;
        *(v28 + 56) = v18;
        v11 = v14;
        v10 = v44;
        v12 = v42;
        goto LABEL_8;
      }

      v0[2] = v15;
      v0[3] = v16;
      v19 = qword_2802287D0;

      if (v19 != -1)
      {
        swift_once();
      }

      v20 = sub_267EF2728();
      __swift_project_value_buffer(v20, qword_280240EC0);
      sub_267BB5034();
      sub_267EF9908();
      if ((v21 & 1) == 0)
      {
        goto LABEL_20;
      }

      v22 = sub_267EF89F8();
      v23 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_267B93000, v22, v23, "#EmojiUtils Text content is not readable - skipping", v24, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      sub_267BFE17C();

      ++v11;
      v13 += 32;
      v10 = v44;
    }

    v32 = v0[6];
    sub_267C148A0(v43);
    v34 = v33;

    v35 = sub_267C14D28(v34);
    v0[7] = v35;

    v36 = swift_task_alloc();
    v0[8] = v36;
    *v36 = v0;
    v36[1] = sub_267C146A0;
    v37 = v0[5];
    v38 = v0[6];

    return sub_267C15008(v35, v37, v38);
  }
}

uint64_t sub_267BFE75C()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (!v0)
  {
    v13 = *(v3 + 112);

    v14 = *(v7 + 8);
    OUTLINED_FUNCTION_290();
    OUTLINED_FUNCTION_30_2();

    __asm { BRAA            X3, X16 }
  }

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267BFE8AC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 568);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 576) = v0;

  if (v0)
  {
    v9 = OUTLINED_FUNCTION_42_14();
    v10(v9);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_1_48();
    v12(v11);
    __swift_destroy_boxed_opaque_existential_0((v3 + 56));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

void sub_267BFE9D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();
  [a3 setString_];
}

id sub_267BFEA28(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_46_2();
  v5 = sub_267EF8FF8();

  v6 = [v4 *a3];

  return v6;
}

uint64_t sub_267BFEA98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267BFEB08(uint64_t a1, uint64_t a2)
{
  sub_267EF9FC8();
  MEMORY[0x26D609CA0](a2);
  return sub_267EFA018();
}

void OUTLINED_FUNCTION_116_3(uint64_t a1@<X8>)
{
  *(v1 + a1) = 0;
  v4 = v1 + *(v2 + 28);
  *v4 = 0;
  *(v4 + 8) = v3;
}

uint64_t OUTLINED_FUNCTION_116_4()
{
  v2 = *(v0 + 200);

  return type metadata accessor for SearchForMessagesCATs();
}

void *OUTLINED_FUNCTION_116_7()
{

  return sub_267BE8B74(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_116_8()
{

  return sub_267EF8348();
}

void sub_267BFEC0C(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v10 = OUTLINED_FUNCTION_4_65();
  OUTLINED_FUNCTION_0_73(v10, v11);
  if (v14)
  {
    __break(1u);
LABEL_12:
    sub_267EF9F28();
    __break(1u);
    return;
  }

  v15 = v12;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD30, &unk_267F0D8E0);
  OUTLINED_FUNCTION_2_67();
  if (sub_267EF9C68())
  {
    v17 = *v4;
    sub_267BA9948();
    OUTLINED_FUNCTION_3_80();
    if (!v19)
    {
      goto LABEL_12;
    }

    v15 = v18;
  }

  v20 = *v5;
  if (v16)
  {
    v21 = v20[7] + 16 * v15;
    *v21 = a1 & 1;
    *(v21 + 8) = a4;
  }

  else
  {
    sub_267BFED2C(v15, a2, a3, a1 & 1, v20, a4);
  }
}

unint64_t sub_267BFED2C(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5, double a6)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v6 = (a5[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a5[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a6;
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_99_2(char a1, char a2, char a3, char a4)
{
  v4[115] = a4;
  v4[114] = a3;
  v4[113] = a2;
  v4[112] = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_99_3()
{
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[12];
}

void OUTLINED_FUNCTION_99_6()
{
  v3 = v0[35];
  v2 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v7 = v0[31];
  v6 = v0[32];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[28];
  v11 = v0[25];
  v12 = v0[24];
}

uint64_t OUTLINED_FUNCTION_99_7()
{

  return CEMEmojiTokenCopyNameWithCount();
}

uint64_t OUTLINED_FUNCTION_99_9()
{

  return sub_267EF9098();
}

uint64_t OUTLINED_FUNCTION_99_10()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_99_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_267BA33E8(v6, v7, va);
}

uint64_t sub_267BFEEA4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 208);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  OUTLINED_FUNCTION_20_16();
  if (v0)
  {
    v9 = *(v3 + 200);

    OUTLINED_FUNCTION_36_4();

    return v10();
  }

  else
  {
    OUTLINED_FUNCTION_26_1();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_267BFEFC8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_46_13();
  if (v6)
  {
    if (v5)
    {
      OUTLINED_FUNCTION_93_4(v1, v2, v3, v4, v5);
      OUTLINED_FUNCTION_114();
    }

    else
    {
      v14 = v0[27];
      v15 = v0[28];
    }

    v16 = v0[25];

    v17 = OUTLINED_FUNCTION_15_23();

    return v18(v17);
  }

  else
  {
    OUTLINED_FUNCTION_93_4(v1, v2, v3, v4, v5);
    OUTLINED_FUNCTION_45_13();
    if (qword_2802286F0 != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    OUTLINED_FUNCTION_116_4();
    OUTLINED_FUNCTION_133();
    v7 = OUTLINED_FUNCTION_56_10();
    OUTLINED_FUNCTION_88_3(v7);
    v0[16] = &type metadata for MessagesFeatureFlagsImpl;
    v0[17] = off_2878D1228;
    OUTLINED_FUNCTION_10(&unk_267F06308);
    v8 = swift_task_alloc();
    v9 = OUTLINED_FUNCTION_48_17(v8);
    *v9 = v10;
    v11 = OUTLINED_FUNCTION_6_33(v9);

    return v12(v11);
  }
}

uint64_t sub_267BFF0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t OUTLINED_FUNCTION_90_5(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_90_6()
{
  v1 = *(v0 + 744);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v2);
  v4 = *(v3 + 8);
  return v2;
}

uint64_t OUTLINED_FUNCTION_90_10()
{
  v2 = *(*(v0 + 272) + 8);
  result = v1;
  v4 = *(v0 + 112);
  return result;
}

void OUTLINED_FUNCTION_90_11()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D60A7B0);
}

uint64_t sub_267BFF244()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 256);
  v7 = *(v5 + 248);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v3 + 264) = v0;

  sub_267B9F98C(v3 + 64, &qword_28022B0F0, &qword_267F0E670);

  __swift_destroy_boxed_opaque_existential_0((v3 + 104));
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267BFF380()
{
  OUTLINED_FUNCTION_12();
  if (*(v0 + 176))
  {
    if (*(v0 + 176) == 1)
    {
      sub_267D5D300(v0 + 144);
    }

    v1 = 0;
    v2 = 0;
  }

  else
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 152);
  }

  v3 = *(v0 + 200);

  v4 = *(v0 + 8);

  return v4(v1, v2);
}

uint64_t sub_267BFF414()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_14();
  v7 = v6;
  OUTLINED_FUNCTION_15_0();
  *v8 = v7;
  v10 = *(v9 + 320);
  v11 = *v1;
  OUTLINED_FUNCTION_5();
  *v12 = v11;

  if (v0)
  {
    v13 = v7[39];
    v14 = v7[37];
    v15 = v7[34];

    OUTLINED_FUNCTION_17();

    return v16();
  }

  else
  {
    v7[41] = v3;
    v7[42] = v5;
    v18 = OUTLINED_FUNCTION_4();

    return MEMORY[0x2822009F8](v18, v19, v20);
  }
}

uint64_t sub_267BFF55C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextComponent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_267BFF5C0()
{
  OUTLINED_FUNCTION_48_0();
  v3 = v2;
  v4 = type metadata accessor for TextComponent();
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_151_1();
  v9 = MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_43_18(v9, v10, v11, v12, v13, v14, v15, v16, v137);
  OUTLINED_FUNCTION_23();
  v145 = v18;
  v146 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_11_37(v21, v138);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A090, &unk_267F08CC0);
  v23 = OUTLINED_FUNCTION_18(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_60();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_141();
  v147 = v4;
  v163 = v4;
  OUTLINED_FUNCTION_22_22();
  v164 = sub_267C00310(v30, v31);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v162);
  OUTLINED_FUNCTION_26_24(boxed_opaque_existential_0);
  if (qword_280228820 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  sub_267EF95D8();
  sub_267EF8998();
  v33 = v164;
  OUTLINED_FUNCTION_139_1();
  v34 = *(*(v33 + 8) + 32);
  v35 = OUTLINED_FUNCTION_54();
  v36(v35);
  sub_267BD997C();
  if (v156)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((OUTLINED_FUNCTION_42_17() & 1) == 0)
    {
      OUTLINED_FUNCTION_64_10();
    }
  }

  else
  {
    sub_267B9F98C(&v154, &qword_280229910, &unk_267EFEB70);
    OUTLINED_FUNCTION_63_10();
  }

  sub_267BD9E24();
  if (v156)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((OUTLINED_FUNCTION_41_14() & 1) == 0)
    {
      OUTLINED_FUNCTION_61_13();
    }
  }

  else
  {
    sub_267B9F98C(&v154, &qword_280229910, &unk_267EFEB70);
    OUTLINED_FUNCTION_62_8();
  }

  OUTLINED_FUNCTION_139_1();
  v37 = OUTLINED_FUNCTION_65_8();
  v39 = v38(v37);
  v40 = OUTLINED_FUNCTION_54_12();
  sub_267C2FB6C(v40, v41, v42, v43);
  if (v156)
  {
    __swift_project_boxed_opaque_existential_0(&v154, v156);
    v44 = OUTLINED_FUNCTION_65_8();
    v152 = v45(v44);
    __swift_destroy_boxed_opaque_existential_0(&v154);
  }

  else
  {
    sub_267B9F98C(&v154, &qword_280229CE0, &qword_267F00410);
    v152 = 0;
  }

  sub_267BD997C();
  v150 = v39;
  if (!v160[3])
  {
    sub_267B9F98C(v160, &qword_280229910, &unk_267EFEB70);
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  if ((OUTLINED_FUNCTION_92_8() & 1) == 0)
  {
LABEL_20:
    v46 = v4;
    goto LABEL_26;
  }

  v1 = v156;
  if (*(v158 + 16) != 1)
  {
    v47 = v159;

    goto LABEL_22;
  }

  v139 = v156;
  v148 = v159;
  if (v157)
  {

LABEL_22:
    v46 = v147;
    goto LABEL_26;
  }

  v1 = sub_267C904B4(v158);

  if (v1 != 1)
  {

    v152 = v1;
  }

  v46 = v4;
LABEL_26:
  v48 = OUTLINED_FUNCTION_74_8();
  sub_267C2FB6C(v48, v49, v50, v51);
  if (v156)
  {
    __swift_project_boxed_opaque_existential_0(&v154, v156);
    v52 = OUTLINED_FUNCTION_65_8();
    v151 = v53(v52);
    __swift_destroy_boxed_opaque_existential_0(&v154);
  }

  else
  {
    sub_267B9F98C(&v154, &qword_280229CE0, &qword_267F00410);
    v151 = 0;
  }

  v54 = v164;
  OUTLINED_FUNCTION_139_1();
  v55 = *(*(v54 + 8) + 40);
  v56 = OUTLINED_FUNCTION_54();
  v57(v56);
  v153 = 1;
  if (v152 && v39)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v58 = v39;
    v59 = v152;
    v60 = sub_267EF9818();

    v153 = v60 ^ 1;
  }

  v61 = 1;
  if (v151 && v39)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v62 = v39;
    v63 = v151;
    v64 = sub_267EF9818();

    v61 = v64 ^ 1;
  }

  v149 = v61;
  v65 = OUTLINED_FUNCTION_54_12();
  sub_267C2FB6C(v65, v66, v67, v68);
  if (!v156)
  {
    sub_267B9F98C(&v154, &qword_280229CE0, &qword_267F00410);
    v80 = OUTLINED_FUNCTION_49_15();
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v46);
    goto LABEL_40;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  v69 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v0, v69 ^ 1u, 1, v46);
  if (__swift_getEnumTagSinglePayload(v0, 1, v46) == 1)
  {
LABEL_40:
    sub_267B9F98C(v0, &qword_28022A090, &unk_267F08CC0);
    goto LABEL_41;
  }

  v70 = *(v0 + 16);
  v71 = *(v0 + 24);

  sub_267C00468(v0);
  v154 = v70;
  v155 = v71;
  sub_267EF26D8();
  sub_267BB5034();
  v72 = sub_267EF9918();
  v74 = v73;
  (*(v145 + 8))(v144, v146);

  sub_267C00618(v72, v74);
  v76 = v75;

  if (v76)
  {
    v77 = sub_267EF8FF8();
    IsSingleEmoji = CEMStringIsSingleEmoji();

    v79 = IsSingleEmoji != 0;
    goto LABEL_42;
  }

LABEL_41:
  v79 = 0;
LABEL_42:
  OUTLINED_FUNCTION_110_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v46);
    sub_267B9F98C(v28, &qword_28022A090, &unk_267F08CC0);
    v95 = 0;
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v46);
  sub_267C00778(v28, v143);
  v86 = v143[3];
  v154 = v143[2];
  v155 = v86;

  OUTLINED_FUNCTION_143_2();
  sub_267BB5034();
  v87 = OUTLINED_FUNCTION_146_2();
  v89 = v88;
  (*(v145 + 8))(v46, v146);

  sub_267BB8F30(v87, v89);
  v91 = v90;

  if (v91)
  {
    v92 = sub_267EF8FF8();
    v93 = CEMStringIsSingleEmoji();

    v94 = v93 != 0;
  }

  else
  {
    v94 = 0;
  }

  v96 = v143[4];
  if (!v96 || !*(v96 + 16))
  {
    goto LABEL_53;
  }

  v97 = *(v96 + 32);
  v98 = *MEMORY[0x277CD44D8];
  v99 = sub_267EF9028();
  v101 = v100;

  sub_267BB40A0(v99, v101, v97);

  if (!v156)
  {
    sub_267B9F98C(&v154, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_128_4();
  if ((OUTLINED_FUNCTION_4_11() & 1) == 0)
  {
LABEL_53:
    LOBYTE(v97) = 0;
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_68_8();
LABEL_54:
  sub_267C00468(v143);
  v95 = v94 | v97;
LABEL_55:
  if (v161)
  {
    v102 = OUTLINED_FUNCTION_37_15();
    v103 = OUTLINED_FUNCTION_54_12();
    sub_267C2FB6C(v103, v104, v105, v106);
    if (!v156)
    {
      __break(1u);
      return;
    }

    __swift_project_boxed_opaque_existential_0(&v154, v156);
    v107 = v102 == swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0(&v154);
    v108 = v107 & (v79 ^ v95 ^ 1);
  }

  else
  {

    v108 = 0;
  }

  v109 = v163;
  v110 = v164;
  OUTLINED_FUNCTION_139_1();
  OUTLINED_FUNCTION_23();
  v112 = v111;
  v114 = *(v113 + 64);
  MEMORY[0x28223BE20](v115);
  v117 = OUTLINED_FUNCTION_3_50(v116, v139);
  v118(v117);
  sub_267C00940(v1, v3, v109, *(v110 + 8));
  v119 = *(v112 + 8);
  v112 += 8;
  v119(v1, v109);
  v120 = v163;
  v121 = v164;
  OUTLINED_FUNCTION_139_1();
  OUTLINED_FUNCTION_23();
  v123 = v122;
  v125 = *(v124 + 64);
  MEMORY[0x28223BE20](v126);
  v128 = OUTLINED_FUNCTION_2_49(v127, v140);
  v129(v128);
  sub_267C00EC4(v112, v3, v120, *(v121 + 8));
  (*(v123 + 8))(v112, v120);
  if (v153 & 1) == 0 && (v108 & 1) != 0 && (v149)
  {
    OUTLINED_FUNCTION_110_7();
    if (swift_dynamicCast())
    {
      sub_267C00468(v142);
    }
  }

  if (v161)
  {
    OUTLINED_FUNCTION_51_12();
  }

  else
  {
    v130 = *(v3 + 104);
  }

  sub_267C00EDC(v162);
  OUTLINED_FUNCTION_80_7();
  v131 = OUTLINED_FUNCTION_5_48();
  OUTLINED_FUNCTION_9_37(v131, v153, v141[0], v141[1], v141[2]);
  OUTLINED_FUNCTION_132_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
  v132 = OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_127_5(v132, xmmword_267EFC020);
  OUTLINED_FUNCTION_1_58();
  sub_267C00310(v133, v134);
  OUTLINED_FUNCTION_96_7();
  v135 = MEMORY[0x277D837D0];
  sub_267EF8F08();
  OUTLINED_FUNCTION_82_7();
  v132[3].n128_u64[1] = v135;
  v136 = sub_267BFBEB4();
  OUTLINED_FUNCTION_102_6(v136);
  sub_267EF8998();

  OUTLINED_FUNCTION_91_9();
  OUTLINED_FUNCTION_93_7();
  OUTLINED_FUNCTION_104_7(v162);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C00310(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_267C00358()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t OUTLINED_FUNCTION_143_0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_267BC9B04(v3 + a3, v4, a1, a2);
}

void OUTLINED_FUNCTION_143_1(uint64_t a1@<X8>)
{
  *(v2 + 800) = v1;
  *(v2 + 808) = a1;
  v4 = *(v3 + 76);
}

uint64_t OUTLINED_FUNCTION_143_2()
{
  v2 = *(v0 + 32);

  return sub_267EF26D8();
}

uint64_t sub_267C003E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_267EF2E38();
    v8 = v5 + *(a4 + 48);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_267C00468(uint64_t a1)
{
  v2 = type metadata accessor for TextComponent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267C004D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_267EF2E38();
    v9 = a1 + *(a3 + 48);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t OUTLINED_FUNCTION_141_2()
{
}

uint64_t OUTLINED_FUNCTION_140_1()
{

  return sub_267C904B4(v0);
}

uint64_t sub_267C00618(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_89_4();
  OUTLINED_FUNCTION_92_2();
  sub_267EF9158();
  OUTLINED_FUNCTION_92_2();
  return sub_267EF9258();
}

uint64_t OUTLINED_FUNCTION_111_1()
{

  return sub_267EF9978();
}

uint64_t OUTLINED_FUNCTION_111_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[18] = a2;
  v2[21] = result;
  v2[22] = 0x746E65746E6F63;
  v2[23] = 0xE700000000000000;
  v4 = *(v3 + 28);
  return result;
}

void OUTLINED_FUNCTION_111_3()
{

  JUMPOUT(0x26D609870);
}

uint64_t OUTLINED_FUNCTION_111_5()
{

  return sub_267EF8FF8();
}

void OUTLINED_FUNCTION_111_6()
{
  v2 = v0[277];
  v3 = v0[258];
  v4 = v0[257];
  v5 = v0[256];
}

uint64_t sub_267C00778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextComponent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_267C007DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *__return_ptr, uint64_t))
{
  v26[3] = a3;
  v26[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  sub_267B9AFEC(v26, v23);
  while (1)
  {
    v9 = v24;
    v10 = v25;
    __swift_project_boxed_opaque_existential_0(v23, v24);
    OUTLINED_FUNCTION_2_22();
    v12 = v11(v9, v10);
    a5(&v18, v12);

    v13 = v19;
    if (!v19)
    {
      sub_267B9FF34(&v18, &qword_280229910, &unk_267EFEB70);
      goto LABEL_7;
    }

    sub_267B9A5E8(&v18, &v20);
    v14 = v21;
    v15 = v22;
    v16 = __swift_project_boxed_opaque_existential_0(&v20, v21);
    if ((sub_267C00958(v23, v16, v14, v15) & 1) == 0)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_0(v23);
    sub_267B9A5E8(&v20, v23);
  }

  __swift_destroy_boxed_opaque_existential_0(&v20);
LABEL_7:
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v26);
  return v13 == 0;
}

uint64_t sub_267C00958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43[3] = a3;
  v43[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v43);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a2, a3);
  sub_267B9AFEC(a1, v41);
  sub_267B9AFEC(v43, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  if (OUTLINED_FUNCTION_4_28())
  {
    if (OUTLINED_FUNCTION_4_28())
    {
      sub_267BE58F4(__src, __dst);
      sub_267BE58F4(v38, v37);
      __swift_project_boxed_opaque_existential_0(__dst, __dst[3]);
      v8 = OUTLINED_FUNCTION_0_23();
      v10 = v9(v8);
      v11 = v37[4];
      __swift_project_boxed_opaque_existential_0(v37, v37[3]);
      v12 = *(v11 + 16);
      v13 = OUTLINED_FUNCTION_5_29();
      v15 = v14(v13);
      v16 = v15;
      if (v10)
      {
        if (v15)
        {
          sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
          v17 = sub_267EF9818();
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        if (!v15)
        {
          v17 = 1;
          goto LABEL_34;
        }

        v17 = 0;
        v10 = v15;
      }

LABEL_34:
      __swift_destroy_boxed_opaque_existential_0(v37);
      v33 = __dst;
LABEL_39:
      __swift_destroy_boxed_opaque_existential_0(v33);
      goto LABEL_40;
    }

    if (swift_dynamicCast())
    {
      memcpy(__dst, __src, 0x71uLL);
      sub_267BE58F4(v38, v37);
      v18 = __dst[9];
      if (*(__dst[9] + 16) == 1)
      {
        __swift_project_boxed_opaque_existential_0(v37, v37[3]);
        v19 = OUTLINED_FUNCTION_0_23();
        v21 = v20(v19);
        v22 = v21;
        if (*(v18 + 16))
        {
          v23 = *(v18 + 32);
          if (v21)
          {
            if (!v23)
            {
LABEL_11:
              sub_267C77240(__dst);

LABEL_37:
              v17 = 0;
              goto LABEL_38;
            }

LABEL_19:
            sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
            v28 = v23;
            v17 = sub_267EF9818();
            sub_267C77240(__dst);

LABEL_38:
            v33 = v37;
            goto LABEL_39;
          }

          goto LABEL_43;
        }

LABEL_35:

        goto LABEL_36;
      }

      goto LABEL_36;
    }

    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  if (swift_dynamicCast())
  {
    memcpy(__dst, __src, 0x71uLL);
    if (OUTLINED_FUNCTION_4_28())
    {
      sub_267BE58F4(v38, v37);
      v24 = __dst[9];
      if (*(__dst[9] + 16) == 1)
      {
        __swift_project_boxed_opaque_existential_0(v37, v37[3]);
        v25 = OUTLINED_FUNCTION_0_23();
        v27 = v26(v25);
        v22 = v27;
        if (*(v24 + 16))
        {
          v23 = *(v24 + 32);
          if (v27)
          {
            if (!v23)
            {
              goto LABEL_11;
            }

            goto LABEL_19;
          }

LABEL_43:
          v35 = v23;
          sub_267C77240(__dst);
          if (!v23)
          {
            v17 = 1;
            goto LABEL_38;
          }

          goto LABEL_37;
        }

        goto LABEL_35;
      }

LABEL_36:
      sub_267C77240(__dst);
      goto LABEL_37;
    }

    if (swift_dynamicCast())
    {
      memcpy(v37, v38, 0x71uLL);
      if (*(v37[9] + 16) == 1 && *(__dst[9] + 16) == 1)
      {
        v29 = *(v37[9] + 32);
        v30 = *(__dst[9] + 32);
        v31 = v29;
        v32 = v30;
        if (v29 == 1)
        {
          sub_267C77240(__dst);
          sub_267C77240(v37);
          if (v30 == 1)
          {
LABEL_25:
            v17 = 1;
LABEL_40:
            __swift_destroy_boxed_opaque_existential_0(v42);
            __swift_destroy_boxed_opaque_existential_0(v41);
            goto LABEL_41;
          }

          goto LABEL_54;
        }

        if (v30 != 1)
        {
          if (v29)
          {
            if (v30)
            {
              sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
              v17 = sub_267EF9818();
              sub_267C77240(__dst);
              sub_267C77240(v37);
              sub_267C77344(v30);
              sub_267C77344(v29);
              goto LABEL_40;
            }

            sub_267C77240(__dst);
            sub_267C77240(v37);
            v36 = v29;
            goto LABEL_55;
          }

          sub_267C77240(__dst);
          sub_267C77240(v37);
          if (!v30)
          {
            goto LABEL_25;
          }

LABEL_54:
          v36 = v30;
LABEL_55:
          sub_267C77344(v36);
          goto LABEL_49;
        }

        sub_267C77344(v29);
      }

      sub_267C77240(__dst);
      sub_267C77240(v37);
LABEL_49:
      v17 = 0;
      goto LABEL_40;
    }

    sub_267C77240(__dst);
  }

  if (qword_280228820 != -1)
  {
    swift_once();
  }

  sub_267EF95E8();
  sub_267EF8998();
  sub_267B9FF34(v41, &qword_280229D00, &unk_267EFF350);
  v17 = 0;
LABEL_41:
  __swift_destroy_boxed_opaque_existential_0(v43);
  return v17 & 1;
}

uint64_t sub_267C00EDC(void *a1)
{
  v3 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v3);
  (*(*(v2 + 8) + 32))(v3);
  sub_267BD9E24();

  if (v35)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if (swift_dynamicCast())
    {
      if (*(&v32 + 1))
      {
        sub_267B9A5E8(&v31, v34);
        v4 = a1[3];
        v5 = a1[4];
        v6 = OUTLINED_FUNCTION_26_0();
        __swift_project_boxed_opaque_existential_0(v6, v7);
        v8 = *(v5 + 16);
        v9 = OUTLINED_FUNCTION_16_1();
        v11 = v10(v9);
        v12 = v35;
        v13 = v36;
        __swift_project_boxed_opaque_existential_0(v34, v35);
        v14 = (*(v13 + 16))(v12, v13);
        v15 = v14;
        if (v11)
        {
          if (v14)
          {
            sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
            OUTLINED_FUNCTION_16_1();
            v16 = sub_267EF9818();

            if ((v16 & 1) == 0)
            {
              goto LABEL_19;
            }

            goto LABEL_14;
          }

          v15 = v11;
        }

        else if (!v14)
        {
LABEL_14:
          v18 = a1[3];
          v19 = a1[4];
          v20 = OUTLINED_FUNCTION_26_0();
          __swift_project_boxed_opaque_existential_0(v20, v21);
          v22 = *(v19 + 24);
          v23 = OUTLINED_FUNCTION_16_1();
          v25 = v24(v23);
          LOBYTE(v18) = v26;
          v27 = v35;
          v28 = v36;
          __swift_project_boxed_opaque_existential_0(v34, v35);
          v29 = (*(v28 + 24))(v27, v28);
          if ((v18 & 1) == 0)
          {
            if ((v30 & 1) != 0 || v25 != v29)
            {
              goto LABEL_19;
            }

LABEL_22:
            __swift_destroy_boxed_opaque_existential_0(v34);
            return 0;
          }

          if (v30)
          {
            goto LABEL_22;
          }

LABEL_19:
          __swift_destroy_boxed_opaque_existential_0(v34);
          return 1;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v33 = 0;
      v31 = 0u;
      v32 = 0u;
    }
  }

  else
  {
    sub_267B9FF34(v34, &qword_280229910, &unk_267EFEB70);
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
  }

  sub_267B9FF34(&v31, &qword_280229CE0, &qword_267F00410);
  return 1;
}

uint64_t sub_267C01144(char a1, char a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11)
{
  type metadata accessor for MessagesMessageComponentDialogContext.Builder();
  inited = swift_initStackObject();
  inited[16] = a1;
  inited[17] = a2;
  inited[18] = a3;
  inited[19] = a4;
  inited[20] = a5;
  inited[21] = a6;
  inited[22] = a7;
  inited[23] = a8;
  inited[24] = a9;
  inited[25] = a10;
  inited[26] = a11;
  type metadata accessor for MessagesMessageComponentDialogContext();
  v18 = swift_allocObject();
  sub_267C013CC(inited);
  return v18;
}

uint64_t OUTLINED_FUNCTION_75_0()
{
  result = v0[73];
  v2 = v0[71];
  v3 = *(v0[72] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_75_4()
{
  result = v0;
  v3 = *(v1 + 8);
  return result;
}

double OUTLINED_FUNCTION_75_5()
{
  result = 0.0;
  *(v0 + 776) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_75_6()
{
  v2 = v1[165];
  v3 = v1[160];
  v4 = v1[159];
  v5 = v1[151];
  v6 = v1[139];
  v7 = v1[87];
  sub_267B9A5E8(v0, (v1 + 42));
  __swift_project_boxed_opaque_existential_0(v1 + 42, v1[45]);

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_75_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return sub_267DB37C4(a1, a2, a3, v17, a16, a17, 1u);
}

uint64_t OUTLINED_FUNCTION_75_8()
{
  *(v0 + 72) = v1;

  return sub_267EF8998();
}

uint64_t OUTLINED_FUNCTION_75_10(uint64_t a1)
{
  *(v1 + 616) = v2;
  *(v1 + 592) = a1;

  return sub_267B9AFEC(v1 + 1496, v1 + 552);
}

uint64_t sub_267C013CC(_BYTE *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1[16];
  *(v1 + 25) = a1[17];
  *(v1 + 26) = a1[18];
  *(v1 + 27) = a1[19];
  *(v1 + 28) = a1[20];
  *(v1 + 29) = a1[21];
  *(v1 + 30) = a1[22];
  *(v1 + 31) = a1[23];
  *(v1 + 32) = a1[24];
  *(v1 + 33) = a1[25];
  v2 = a1[26];

  *(v1 + 34) = v2;
  return v1;
}

void sub_267C0150C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_267C01540();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_267C015BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267C0BBFC();
  *a1 = result;
  return result;
}

uint64_t sub_267C01608@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_267C0163C(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_267C0165C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C0174C()
{
  v1 = sub_267EF6F58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_267C017F4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_267C01840()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C018A4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
    v11 = &a1[*(a3 + 24)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_267C01938(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
    v8 = &v5[*(a4 + 24)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_267C019C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_267C01A00()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_267C01DC8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_267C01E10()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C01E48()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_267EF2D28();
  OUTLINED_FUNCTION_23();
  v9 = v8;
  v10 = (v4 + v6 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = (*(v11 + 64) + v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  OUTLINED_FUNCTION_47();

  return MEMORY[0x2821FE8E8](v14, v15, v16);
}

uint64_t sub_267C01FC0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_267C01FF8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C02030()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_267C020BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_267C02124()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_267C02164()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_94();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_267C021BC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_267C021F4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_267C0222C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_267C02284()
{
  v1 = sub_267EF4228();
  OUTLINED_FUNCTION_58(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = sub_267EF4158();
  OUTLINED_FUNCTION_58(v9);
  v11 = v10;
  v13 = v12;
  v14 = *(v11 + 80);
  v15 = (v8 + v14 + 8) & ~v14;
  v20 = *(v13 + 64);
  v16 = v4 | v14;
  v17 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + v7));
  v18 = *(v0 + v8);

  (*(v11 + 8))(v0 + v15, v9);

  return MEMORY[0x2821FE8E8](v0, v15 + v20, v16 | 7);
}

uint64_t sub_267C023F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    OUTLINED_FUNCTION_32_4();
    v6 = v5 - 1;
    if (v6 < 0)
    {
      v6 = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
    v11 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

void *sub_267C02488(void *result, unsigned int a2, int a3)
{
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
    v3 = OUTLINED_FUNCTION_15_2();

    return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  return result;
}

uint64_t sub_267C02504(uint64_t a1, int a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_40_1(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_44_5();

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }

  else
  {
    v12 = *(a1 + *(a3 + 72));
    OUTLINED_FUNCTION_32_4();
    return (v13 + 1);
  }
}

uint64_t sub_267C025A8()
{
  OUTLINED_FUNCTION_39();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  result = OUTLINED_FUNCTION_40_1(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_15_2();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 72)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_267C02640(uint64_t a1, int a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_40_1(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_44_5();

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }

  else
  {
    v12 = *(a1 + *(a3 + 48));
    OUTLINED_FUNCTION_32_4();
    return (v13 + 1);
  }
}

uint64_t sub_267C026E4()
{
  OUTLINED_FUNCTION_39();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  result = OUTLINED_FUNCTION_40_1(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_15_2();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 48)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_267C028FC()
{
  v1 = sub_267EF4BA8();
  OUTLINED_FUNCTION_58(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_267C029B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C029F4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_267C02A44()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

char *sub_267C02AE0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_29_5(a3, result);
  }

  return result;
}

uint64_t sub_267C02B00()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_267C02B38()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C02B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_267EF2CC8();
    v9 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_267C02C24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_267EF2CC8();
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_267C02CE4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C02D1C()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  v2 = v0[9];

  v3 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_267C02D6C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 88);

  v7 = *(v0 + 96);

  v8 = *(v0 + 120);

  return MEMORY[0x2821FE8E8](v0, 129, 7);
}

uint64_t sub_267C02DF8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C02F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_267EF2BA8();
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_267C02FE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_267EF2BA8();
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_267C03104()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C031C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C031FC()
{
  v1 = (type metadata accessor for ComponentReadingRecord() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v3);
  v7 = *(v0 + v3 + 8);

  v8 = *(v6 + 3);

  v9 = *(v6 + 5);

  v10 = *(v6 + 6);

  v11 = *(v6 + 8);

  v12 = v1[15];
  v13 = sub_267EF2CC8();
  OUTLINED_FUNCTION_22(v13);
  (*(v14 + 8))(&v6[v12]);
  v15 = *(v0 + v4 + 8);

  v16 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v2 | 7);
}

uint64_t sub_267C033D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267EF79B8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_267C03480(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_267EF79B8();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_267C035A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_267C035F4()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_267C0363C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C036D8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_267C03720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A500, &qword_267F00DD0);
  OUTLINED_FUNCTION_22(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_267C03780()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_65_3();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_267C037BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C037F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_267C03834()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_267C0387C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_267C038C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_267C03910()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_267C03958()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_6_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_267C0398C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_267C039DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A710, &qword_267F01668);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_267C03A68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_267C03ABC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_267C03B24()
{
  OUTLINED_FUNCTION_107_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_40_1(v2);
  if (*(v3 + 84) != v1)
  {
    return OUTLINED_FUNCTION_61_3(*(v0 + 112));
  }

  v4 = OUTLINED_FUNCTION_44_5();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_267C03BB8()
{
  OUTLINED_FUNCTION_39();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_40_1(v2);
  if (*(v3 + 84) == v1)
  {
    v4 = OUTLINED_FUNCTION_15_2();

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_181(*(v0 + 112));
  }
}

uint64_t sub_267C03C4C()
{
  OUTLINED_FUNCTION_107_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_40_1(v2);
  if (*(v3 + 84) != v1)
  {
    return OUTLINED_FUNCTION_61_3(*(v0 + 96));
  }

  v4 = OUTLINED_FUNCTION_44_5();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_267C03CE0()
{
  OUTLINED_FUNCTION_39();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_40_1(v2);
  if (*(v3 + 84) == v1)
  {
    v4 = OUTLINED_FUNCTION_15_2();

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_181(*(v0 + 96));
  }
}

uint64_t sub_267C03D74()
{
  OUTLINED_FUNCTION_107_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_40_1(v2);
  if (*(v3 + 84) != v1)
  {
    return OUTLINED_FUNCTION_61_3(*(v0 + 104));
  }

  v4 = OUTLINED_FUNCTION_44_5();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_267C03E08()
{
  OUTLINED_FUNCTION_39();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_40_1(v2);
  if (*(v3 + 84) == v1)
  {
    v4 = OUTLINED_FUNCTION_15_2();

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_181(*(v0 + 104));
  }
}

uint64_t sub_267C03E9C()
{
  OUTLINED_FUNCTION_107_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_40_1(v2);
  if (*(v3 + 84) != v1)
  {
    return OUTLINED_FUNCTION_61_3(*(v0 + 88));
  }

  v4 = OUTLINED_FUNCTION_44_5();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_267C03F30()
{
  OUTLINED_FUNCTION_39();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_40_1(v2);
  if (*(v3 + 84) == v1)
  {
    v4 = OUTLINED_FUNCTION_15_2();

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_181(*(v0 + 88));
  }
}

uint64_t sub_267C04024()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_267C04064()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C040AC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C040E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C0411C()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_5_26();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_267C0414C()
{
  v1 = OUTLINED_FUNCTION_5_26();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_267C0417C()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_5_26();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_267C041BC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_267C042C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_267C04300()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_267C04338()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C04378()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_267C043B8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C043F0()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_267C04438()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_267C04478()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_267C044CC()
{
  v2 = type metadata accessor for TimedSentMessageContext(0);
  OUTLINED_FUNCTION_27_10(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);

  v9 = v1 + v5;
  v10 = sub_267EF2CC8();
  OUTLINED_FUNCTION_22(v10);
  (*(v11 + 8))(v9);
  v12 = *(v9 + v0[8]);

  v13 = *(v9 + v0[11]);

  v14 = *(v1 + v7);

  return MEMORY[0x2821FE8E8](v1, v7 + 8, v4 | 7);
}

uint64_t sub_267C045E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C04620()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C046A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimedSentMessageContext(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267C046F0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for TimedSentMessageContext(0);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_267C0474C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 82, 7);
}

uint64_t sub_267C0479C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_267C047D4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_267C04814()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_267C04854()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C048A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_267C048E4()
{
  v1 = sub_267EF89E8();
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_267C0498C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C049EC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_62_0();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_267C04A28()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_62_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_267C04AF8()
{
  v1 = sub_267EF2D28();
  OUTLINED_FUNCTION_58(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_267C04BB0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_267C04BF0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_267C04C80()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_267C04CCC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_267C04D74()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_267C04DCC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_267C04E1C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_267C04E54()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  OUTLINED_FUNCTION_65_3();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_267C04E98()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_267C04EF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C04F88()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_267C05048()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_267C05088()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_267C050D0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_267C05110()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_94();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_267C05158()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_267C05198()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C05250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v7 = OUTLINED_FUNCTION_40_1(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  else
  {
    OUTLINED_FUNCTION_102_3(*(a3 + 56));
    return (v12 + 1);
  }
}

uint64_t sub_267C052FC()
{
  OUTLINED_FUNCTION_39();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  result = OUTLINED_FUNCTION_40_1(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = result;
    v8 = v1 + *(v2 + 20);

    return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
  }

  else
  {
    *(v1 + *(v2 + 56)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_267C053B4()
{
  OUTLINED_FUNCTION_126_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_40_1(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_128_1();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_102_3(*(v1 + 56));
    return (v8 + 1);
  }
}

uint64_t sub_267C0544C()
{
  OUTLINED_FUNCTION_39();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  result = OUTLINED_FUNCTION_40_1(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_74_5();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 56)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_267C054E4()
{
  OUTLINED_FUNCTION_126_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_40_1(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_128_1();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_102_3(*(v1 + 52));
    return (v8 + 1);
  }
}

uint64_t sub_267C0557C()
{
  OUTLINED_FUNCTION_39();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  result = OUTLINED_FUNCTION_40_1(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_74_5();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 52)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_267C05614()
{
  OUTLINED_FUNCTION_126_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_40_1(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_128_1();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_102_3(*(v1 + 64));
    return OUTLINED_FUNCTION_207(v8);
  }
}

uint64_t sub_267C056AC()
{
  OUTLINED_FUNCTION_39();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  result = OUTLINED_FUNCTION_40_1(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_74_5();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 64)) = v0;
  }

  return result;
}

uint64_t sub_267C0574C()
{
  OUTLINED_FUNCTION_126_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_40_1(v3);
  if (*(v4 + 84) == v1)
  {
    v5 = OUTLINED_FUNCTION_128_1();

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }

  else
  {
    v9 = *(v0 + *(v2 + 28));
    if (v9 >= 2)
    {
      return OUTLINED_FUNCTION_309(v9);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_267C057F4()
{
  OUTLINED_FUNCTION_39();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  result = OUTLINED_FUNCTION_40_1(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_74_5();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 28)) = v0 + 1;
  }

  return result;
}

uint64_t sub_267C058FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267EF43F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267C05944(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_267EF43F8();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_267C05B44()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C05B7C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C05BB4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C05FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267EF5B58();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_267C06084(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_267EF5B58();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_267C06440(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingOfferBehaviorFlowFrameResult();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267C06488(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for ReadingOfferBehaviorFlowFrameResult();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_267C064E4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_267C06574()
{
  OUTLINED_FUNCTION_48_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BAD0, &qword_267F08290);
  OUTLINED_FUNCTION_58(v1);
  v3 = v2;
  v5 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB20, &unk_267F092D0);
  OUTLINED_FUNCTION_30_0(v7);
  v9 = (v6 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v11 = *(v10 + 64);

  v12 = *(v0 + 32);

  v13 = *(v0 + 40);

  (*(v3 + 8))(v0 + v5, v1);
  v14 = *(v0 + v6);

  v15 = sub_267EF82A8();
  if (!__swift_getEnumTagSinglePayload(v0 + v9, 1, v15))
  {
    OUTLINED_FUNCTION_5_0(v15);
    (*(v16 + 8))(v0 + v9, v15);
  }

  v17 = *(v0 + ((v11 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  OUTLINED_FUNCTION_47();

  return MEMORY[0x2821FE8E8](v18, v19, v20);
}

uint64_t sub_267C06724()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_267C0676C(uint64_t a1, uint64_t a2)
{
  v4 = sub_267EF2FC8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267C067B4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_267EF2FC8();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_267C06864()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_267C06930()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_267C06978()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_267C069C0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 66, 7);
}

uint64_t sub_267C06A10()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  OUTLINED_FUNCTION_160_1();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_267C06A5C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 80);

  __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  if (*(v0 + 152))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  }

  OUTLINED_FUNCTION_163_1();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_267C06AC8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 96);

  v6 = *(v0 + 112);

  sub_267DBCBB4(*(v0 + 120), *(v0 + 128));
  OUTLINED_FUNCTION_99_8();

  return MEMORY[0x2821FE8E8](v7, v8, v9);
}

uint64_t sub_267C06B38()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 88);

  v7 = *(v0 + 96);

  v8 = *(v0 + 120);

  OUTLINED_FUNCTION_99_8();

  return MEMORY[0x2821FE8E8](v9, v10, v11);
}

uint64_t sub_267C06BAC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 72);

  __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  OUTLINED_FUNCTION_148_2();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_267C06C7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C030, &qword_267F092C8);
  OUTLINED_FUNCTION_58(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);

  v8 = *(v0 + 32);

  v9 = *(v0 + 40);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_267C06D80()
{
  v1 = sub_267EF2D28();
  OUTLINED_FUNCTION_58(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_267C06E40()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_267C06E88()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_267C06ED0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_267C06F18()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_267C06F50()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_62_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_267C06F94()
{
  v1 = sub_267EF57C8();
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_267C07030(uint64_t a1)
{
  result = sub_267DDFFA0(&qword_28022BE88, type metadata accessor for TextComponent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267C07088()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_267C07128()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_267C07170()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_70();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_267C071A8()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_267C071F0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_267C07238()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_70();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_267C07268()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OUTLINED_FUNCTION_70();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

unint64_t sub_267C072F4(uint64_t a1)
{
  result = sub_267DBCBC8();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267C07358()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_267C07398()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_267C073D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_267C07438()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  OUTLINED_FUNCTION_74_9();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_267C0747C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  OUTLINED_FUNCTION_46_19();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_267C074D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 0xA)
  {
    return EnumTagSinglePayload - 9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267C07528(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 9);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_267C075C0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_267C07610()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C07648()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C076A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t get_enum_tag_for_layout_string_16SiriMessagesFlow9SmsIntent_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_267C0784C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_267C078C4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_267C0790C()
{
  v1 = sub_267EF2E38();
  OUTLINED_FUNCTION_58(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);
  v10 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_267C079E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_267C07A20()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_267C07A7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C810, &qword_267F0B718);
  OUTLINED_FUNCTION_58(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_267C07B40()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_267C07B88()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  OUTLINED_FUNCTION_46_19();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_267C07BDC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 66, 7);
}

uint64_t sub_267C07C2C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_267C07CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v7 = OUTLINED_FUNCTION_40_1(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_61_3(*(a3 + 20));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v7);
}

uint64_t sub_267C07D8C()
{
  OUTLINED_FUNCTION_39();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  result = OUTLINED_FUNCTION_40_1(v4);
  if (*(v6 + 84) == v3)
  {

    return __swift_storeEnumTagSinglePayload(v1, v0, v0, result);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_267C07E88()
{
  v1 = sub_267EF8198();
  OUTLINED_FUNCTION_5_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_267C07F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_267EF2E38();
    v9 = a1 + *(a3 + 48);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_267C07FD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_267EF2E38();
    v8 = v5 + *(a4 + 48);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_267C08050(uint64_t a1)
{
  result = sub_267E55B4C(&qword_28022BE98, type metadata accessor for ImageComponent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267C080A8()
{
  v1 = (type metadata accessor for ImageComponent() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_30_0(v5);
  v7 = *(v6 + 80);
  v8 = (v4 + v7 + 40) & ~v7;
  v10 = *(v9 + 64);
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  v12 = v0 + v3;
  v13 = *(v12 + 8);

  v14 = *(v12 + 24);

  v15 = *(v12 + 32);

  v16 = *(v12 + 40);

  v17 = *(v12 + 48);

  v18 = *(v12 + 64);

  v19 = v1[14];
  v20 = sub_267EF2E38();
  OUTLINED_FUNCTION_22(v20);
  (*(v21 + 8))(v12 + v19);
  __swift_destroy_boxed_opaque_existential_0((v0 + v4));
  v22 = sub_267EF2BA8();
  if (!__swift_getEnumTagSinglePayload(v0 + v8, 1, v22))
  {
    (*(*(v22 - 8) + 8))(v0 + v8, v22);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v10, v2 | v7 | 7);
}

uint64_t sub_267C0828C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C082C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C08544()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA00, &unk_267F0CAA0);
  OUTLINED_FUNCTION_58(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);

  v8 = *(v0 + 32);

  v9 = *(v0 + 40);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_267C087D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C08854()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_267C088C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C08954()
{
  OUTLINED_FUNCTION_5_0(*(v0 + 16));
  v3 = *(v2 + 8);
  v2 += 8;
  v4 = *(v2 + 72);
  v5 = *(v2 + 56);
  v6 = OUTLINED_FUNCTION_25_40();
  v7(v6);

  return MEMORY[0x2821FE8E8](v0, v1 + 8, v4 | 7);
}

uint64_t sub_267C089D8()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_62_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_267C08A0C()
{
  OUTLINED_FUNCTION_5_0(*(v0 + 16));
  v3 = *(v2 + 8);
  v2 += 8;
  v4 = *(v2 + 72);
  v5 = *(v2 + 56);
  v6 = OUTLINED_FUNCTION_25_40();
  v7(v6);
  __swift_destroy_boxed_opaque_existential_0((v0 + v1));

  return MEMORY[0x2821FE8E8](v0, v1 + 40, v4 | 7);
}

uint64_t sub_267C08A94()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_267C08AD4()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  v2 = v0[8];
  swift_unknownObjectRelease();
  v3 = v0[13];

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_267C08B24()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_267C08B84()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_267C08BDC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_267C08C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_267EF2E38();
    v9 = a1 + *(a3 + 48);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_267C08CAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_267EF2E38();
    v8 = v5 + *(a4 + 48);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_267C08D2C(uint64_t a1)
{
  result = sub_267EB0BE8(&qword_28022C7C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267C08DA8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C08DE8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_267C08E30()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_267C08E80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C08F3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;

  return a2;
}

uint64_t sub_267C08F88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB20, &unk_267F092D0);
  OUTLINED_FUNCTION_30_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 57) & ~v3;
  v6 = *(v5 + 64);

  v7 = *(v0 + 32);

  v8 = *(v0 + 40);

  v9 = *(v0 + 48);

  v10 = sub_267EF82A8();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v10))
  {
    (*(*(v10 - 8) + 8))(v0 + v4, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v6, v3 | 7);
}

uint64_t sub_267C09120()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_267C09160()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_267C09230()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_65_3();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_267C0926C()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_6_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_267C092A0()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_62_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_267C092D4()
{
  OUTLINED_FUNCTION_6_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_267C09308()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_267C09364()
{
  v1 = sub_267EF89E8();
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

uint64_t sub_267C09674()
{
  sub_267EF8AD8();
  sub_267EF6308();
  OUTLINED_FUNCTION_14_6();

  if (!v5)
  {
    return 0;
  }

  v0 = sub_267EF62F8();
  v2 = v1;

  if (!v2)
  {
    return 0;
  }

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {

    return 0;
  }

  return v0;
}

uint64_t sub_267C09714()
{
  sub_267EF8AD8();
  sub_267EF5AE8();
  OUTLINED_FUNCTION_14_6();

  if (!v2)
  {
    return 0;
  }

  v0 = sub_267EF5AD8();

  return v0;
}

uint64_t sub_267C097C0(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_10_6();
  a2(v5, a1);
  return sub_267EFA018();
}

uint64_t sub_267C098D4(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_10_6();
  MEMORY[0x26D609CD0](a1 + 2000);
  return sub_267EFA018();
}

uint64_t sub_267C09A38()
{
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_2_11();
  sub_267EF9128();
  return sub_267EFA018();
}

uint64_t sub_267C09AEC(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_10_6();
  a2(a1);
  OUTLINED_FUNCTION_4_9();

  return sub_267EFA018();
}

uint64_t sub_267C09B3C()
{
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_11_3();
  return sub_267EFA018();
}

uint64_t sub_267C09B74()
{
  sub_267EF9FC8();
  sub_267EF9FF8();
  return sub_267EFA018();
}

uint64_t sub_267C09BE4()
{
  sub_267EF9128();
}

uint64_t sub_267C09CB4()
{
  ConversationEventStore.Hint.rawValue.getter();
  OUTLINED_FUNCTION_3_3();
}

uint64_t sub_267C09D44()
{
  sub_267EF9128();
}

uint64_t sub_267C09E4C()
{
  sub_267EF9128();
}

uint64_t sub_267C09F20()
{
  sub_267EF9128();
}

uint64_t sub_267C0A02C()
{
  sub_267EF9128();
}

uint64_t sub_267C0A0C0()
{
  OUTLINED_FUNCTION_12_1();
  sub_267EF9128();
}

uint64_t sub_267C0A168()
{
  OUTLINED_FUNCTION_7_6();
  switch(v0)
  {
    case 4:
      OUTLINED_FUNCTION_7_6();
      break;
    default:
      break;
  }

  sub_267EF9128();
}

uint64_t sub_267C0A234()
{
  sub_267EF9128();
}

uint64_t sub_267C0A318()
{
  OUTLINED_FUNCTION_12_1();
  sub_267EF9128();
}

uint64_t sub_267C0A3AC()
{
  sub_267EF9128();
}

uint64_t sub_267C0A434(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_7_6();
      break;
    default:
      break;
  }

  sub_267EF9128();
}

uint64_t sub_267C0A51C()
{
  sub_267EF9128();
}

uint64_t sub_267C0A5B4(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_1_11();
  }

  else
  {
    OUTLINED_FUNCTION_6_1();
  }

  sub_267EF9128();
}

uint64_t sub_267C0A624(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  OUTLINED_FUNCTION_3_3();
}

uint64_t sub_267C0A668()
{
  sub_267EF9128();
}

uint64_t sub_267C0A6CC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9_5();

  return sub_267EFA018();
}

uint64_t sub_267C0A74C()
{
  OUTLINED_FUNCTION_8();
  if (v0)
  {
    OUTLINED_FUNCTION_1_11();
  }

  else
  {
    OUTLINED_FUNCTION_6_1();
  }

  OUTLINED_FUNCTION_9_5();

  return sub_267EFA018();
}

uint64_t sub_267C0A7C0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9_5();

  return sub_267EFA018();
}

uint64_t sub_267C0A88C()
{
  sub_267EF9FC8();
  sub_267EF9128();

  return sub_267EFA018();
}

uint64_t sub_267C0A958()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_9_5();

  return sub_267EFA018();
}

uint64_t sub_267C0AA50()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_9_5();

  return sub_267EFA018();
}

uint64_t sub_267C0AAFC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9_5();

  return sub_267EFA018();
}

uint64_t sub_267C0AB7C()
{
  sub_267EF9FC8();
  OUTLINED_FUNCTION_2_11();
  sub_267EF9128();
  return sub_267EFA018();
}

uint64_t sub_267C0ABEC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_267EF9FC8();
  a3(v6, a2);
  return sub_267EFA018();
}

uint64_t sub_267C0AC80(uint64_t a1, unsigned __int8 a2)
{
  sub_267EF9FC8();
  MEMORY[0x26D609CD0](a2 + 2000);
  return sub_267EFA018();
}

uint64_t sub_267C0ACC8()
{
  OUTLINED_FUNCTION_8();
  ConversationEventStore.Hint.rawValue.getter();
  OUTLINED_FUNCTION_4_9();

  return sub_267EFA018();
}

uint64_t sub_267C0AD40(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_267EF9FC8();
  a3(a2);
  OUTLINED_FUNCTION_4_9();

  return sub_267EFA018();
}

uint64_t sub_267C0AD94()
{
  sub_267EF9FC8();
  OUTLINED_FUNCTION_11_3();
  return sub_267EFA018();
}

uint64_t sub_267C0ADD0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9_5();

  return sub_267EFA018();
}

uint64_t sub_267C0AE40()
{
  sub_267EF9FC8();
  sub_267EF9FF8();
  return sub_267EFA018();
}

uint64_t sub_267C0AE9C()
{
  v1 = OUTLINED_FUNCTION_0_2();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

void sub_267C0AEC4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_267E76A40();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_267C0AEF8()
{
  sub_267EF9028();
  OUTLINED_FUNCTION_3_3();
}

uint64_t sub_267C0AF48()
{
  v1 = OUTLINED_FUNCTION_13_2();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_267C0AFDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_267C959B0();
}

uint64_t sub_267C0AFF4@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_267C0B020()
{
  v1 = OUTLINED_FUNCTION_0_2();
  result = sub_267C96D28(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_267C0B048(uint64_t a1)
{
  v2 = sub_267C0B5CC(&qword_280228BE8, type metadata accessor for NSTextCheckingKey);
  v3 = sub_267C0B5CC(&qword_280228BF0, type metadata accessor for NSTextCheckingKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_267C0B104@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267C0316C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_267C0B130(uint64_t a1)
{
  v2 = sub_267C0B5CC(&qword_280228BD8, type metadata accessor for INPersonHandleLabel);
  v3 = sub_267C0B5CC(&qword_280228BE0, type metadata accessor for INPersonHandleLabel);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_267C0B1EC(uint64_t a1)
{
  v2 = sub_267C0B5CC(&qword_280228BC8, type metadata accessor for PHAssetExportRequestFileURLKey);
  v3 = sub_267C0B5CC(&qword_280228BD0, type metadata accessor for PHAssetExportRequestFileURLKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_267C0B2A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_267EF8FF8();

  *a2 = v5;
  return result;
}

uint64_t sub_267C0B2F0()
{
  v1 = OUTLINED_FUNCTION_0_2();
  result = sub_267C0316C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_267C0B318(uint64_t a1)
{
  v2 = sub_267C0B5CC(&qword_280228C20, type metadata accessor for NLLanguage);
  v3 = sub_267C0B5CC(&qword_280228C28, type metadata accessor for NLLanguage);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_267C0B410(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267C0B430(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_267C0B5CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267C0B92C()
{
  sub_267EF9028();
  sub_267EF9FC8();
  sub_267EF9128();
  v0 = sub_267EFA018();

  return v0;
}

uint64_t sub_267C0B9A0(uint64_t a1, id *a2)
{
  v3 = sub_267EF9018();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_267C0BA20(uint64_t a1)
{
  OUTLINED_FUNCTION_10_6();
  MEMORY[0x26D609CA0](a1);
  return sub_267EFA018();
}

uint64_t sub_267C0BA60()
{
  v0 = sub_267EF9028();
  v1 = MEMORY[0x26D608F00](v0);

  return v1;
}

uint64_t sub_267C0BA98(uint64_t a1, id *a2)
{
  result = sub_267EF9008();
  *a2 = 0;
  return result;
}

uint64_t sub_267C0BBFC()
{
  sub_267EF9028();
  v0 = sub_267EF8FF8();

  return v0;
}

uint64_t sub_267C0BC60(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFC020;
  v5 = *MEMORY[0x277CEEFC8];
  *(inited + 32) = sub_267EF9028();
  *(inited + 40) = v6;
  sub_267E6E78C();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_267EF86E8();
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

uint64_t sub_267C0BDA0(uint64_t a1, void (*a2)(void))
{
  if (a1 && sub_267BAF0DC(a1))
  {
    sub_267BBD0EC(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x26D609870](0, a1);
    }

    else
    {
      v4 = *(a1 + 32);
    }

    result = sub_267C0C064(v4);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    v7 = *MEMORY[0x277CEEFC8];
    v8 = sub_267EF9028();
    sub_267BB40A0(v8, v9, v6);

    if (*(&v17 + 1))
    {
      sub_267BA7F4C(&v16, v18);
      sub_267BA2E04(v18, &v16);
      v10 = objc_allocWithZone(MEMORY[0x277CEF178]);
      v11 = sub_267C0BF88(&v16);
      a2();

      return __swift_destroy_boxed_opaque_existential_0(v18);
    }
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  sub_267C0BFFC(&v16);
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v12 = sub_267EF8A08();
  __swift_project_value_buffer(v12, qword_280240FB0);
  v13 = sub_267EF89F8();
  v14 = sub_267EF95E8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_267B93000, v13, v14, "#SharedContextService fetchContext() didn't return application context", v15, 2u);
    MEMORY[0x26D60A7B0](v15, -1, -1);
  }

  return (a2)(0);
}

id sub_267C0BF88(uint64_t *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = [v1 initWithSerializedBackingStore_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_267C0BFFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEF0, &qword_267EFCDE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267C0C064(void *a1)
{
  v2 = [a1 serializedContextByKey];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267EF8EF8();

  return v3;
}

uint64_t sub_267C0C0DC()
{
  v1 = 7104878;
  sub_267EF9B68();
  MEMORY[0x26D608E60](0x6E6F697461636F6CLL, 0xED000020656D614ELL);
  if (v0[1])
  {
    v2 = *v0;
    v3 = v0[1];
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x26D608E60](v2, v3);

  MEMORY[0x26D608E60](0x6F697461636F6C20, 0xEE0020797469436ELL);
  if (v0[3])
  {
    v4 = v0[2];
    v5 = v0[3];
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x26D608E60](v4, v5);

  MEMORY[0x26D608E60](0x6F697461636F6C20, 0xEF2065746174536ELL);
  if (v0[5])
  {
    v6 = v0[4];
    v7 = v0[5];
  }

  else
  {
    v7 = 0xE300000000000000;
    v6 = 7104878;
  }

  MEMORY[0x26D608E60](v6, v7);

  MEMORY[0x26D608E60](0xD000000000000015, 0x8000000267F11B80);
  if (v0[7])
  {
    v1 = v0[6];
    v8 = v0[7];
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  MEMORY[0x26D608E60](v1, v8);

  return 0;
}

uint64_t sub_267C0C2B8@<X0>(uint64_t a1@<X8>)
{
  v76 = *MEMORY[0x277D85DE8];
  v3 = sub_267EF2D28();
  v4 = OUTLINED_FUNCTION_58(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v72 - v13;
  v15 = sub_267EF2BA8();
  v16 = OUTLINED_FUNCTION_58(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v22 = v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267BB170C(v1 + 112, v73, &qword_280228F90, &qword_267EFC0A0);
  v23 = v74;
  if (v74)
  {
    v72[0] = v10;
    v10 = v6;
    v6 = v3;
    v3 = v15;
    v15 = v22;
    v22 = v18;
    v18 = a1;
    a1 = v75;
    __swift_project_boxed_opaque_existential_0(v73, v74);
    v24 = (*(a1 + 8))(v23, a1);
    if (v24)
    {
      sub_267C0FEAC(v24);
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_0(v73);
      OUTLINED_FUNCTION_31_3();
      if (v26)
      {
        goto LABEL_8;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v73);
      OUTLINED_FUNCTION_31_3();
    }
  }

  else
  {
    sub_267B9F98C(v73, &qword_280228F90, &qword_267EFC0A0);
  }

LABEL_8:
  sub_267EF2B88();

  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_267B9F98C(v14, &qword_280229E20, &unk_267EFDCC0);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v27 = sub_267EF8A08();
    __swift_project_value_buffer(v27, qword_280240FB0);
    v28 = sub_267EF89F8();
    v29 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_27(v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      OUTLINED_FUNCTION_45();
      _os_log_impl(v31, v32, v33, v34, v30, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    goto LABEL_29;
  }

  (*(v18 + 4))(v22, v14, v15);
  v35 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v36 = sub_267EF2AF8();
  [v35 setPunchOutUri_];

  v37 = v35;
  sub_267EF2D18();
  v38 = sub_267EF2CE8();
  v40 = v39;
  (*(v6 + 1))(v10, v3);
  sub_267E7F030(v38, v40, v37);

  v41 = [v37 dictionary];
  if (!v41)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v50 = sub_267EF8A08();
    __swift_project_value_buffer(v50, qword_280240FB0);
    v51 = sub_267EF89F8();
    v52 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_27(v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      OUTLINED_FUNCTION_45();
      _os_log_impl(v54, v55, v56, v57, v53, 2u);
      OUTLINED_FUNCTION_32_0();
      v58 = v37;
    }

    else
    {
      v58 = v51;
      v51 = v37;
    }

    goto LABEL_28;
  }

  v42 = v41;
  v43 = objc_opt_self();
  v73[0] = 0;
  v44 = [v43 dataWithPropertyList:v42 format:200 options:0 error:v73];
  v45 = v73[0];
  if (!v44)
  {
    v59 = v45;
    v60 = sub_267EF2A78();

    swift_willThrow();
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v61 = sub_267EF8A08();
    __swift_project_value_buffer(v61, qword_280240FB0);
    v51 = sub_267EF89F8();
    v62 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_27(v62))
    {
      v63 = a1;
      v64 = swift_slowAlloc();
      *v64 = 0;
      OUTLINED_FUNCTION_45();
      _os_log_impl(v65, v66, v67, v68, v64, 2u);
      a1 = v63;
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
    }

LABEL_28:

    (*(v18 + 1))(v22, v15);
LABEL_29:
    v49 = 1;
    goto LABEL_30;
  }

  v46 = sub_267EF2BE8();
  v48 = v47;

  sub_267EF2BC8();
  sub_267EF7988();
  sub_267BBE0DC(v46, v48);

  (*(v18 + 1))(v22, v15);
  v49 = 0;
LABEL_30:
  v69 = sub_267EF79B8();
  result = __swift_storeEnumTagSinglePayload(a1, v49, 1, v69);
  v71 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_267C0C914()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 56) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  *(v1 + 64) = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}