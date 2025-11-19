uint64_t sub_267C7779C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 128);
  v3 = *(v1 + 120);
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267C7789C()
{
  v120 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v0[17] = v1;
  if (v2)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v3 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v3, qword_280240FB0);
    v4 = v2;
    v5 = sub_267EF89F8();
    v6 = sub_267EF95E8();

    if (!os_log_type_enabled(v5, v6))
    {

      goto LABEL_22;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v119[0] = v8;
    *v7 = 136315138;
    v0[8] = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D18, &qword_267EFF3E0);
    v10 = sub_267EF9098();
    v12 = sub_267BA33E8(v10, v11, v119);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_267B93000, v5, v6, "#AppleMapsLinkParser There is an error creating a new MKUrlParser %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();

    v13 = v2;
    goto LABEL_6;
  }

  if (!v1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v72 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v72, qword_280240FB0);
    v73 = sub_267EF89F8();
    v74 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v74))
    {
      v75 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v75);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v76, v77, "#AppleMapsLinkParser MKUrlParser is nil");
      OUTLINED_FUNCTION_26();
    }

    v79 = v0[13];
    v78 = v0[14];
    v80 = v0[12];

    (*(v79 + 8))(v78, v80);
    goto LABEL_23;
  }

  [v1 parseIncludingCustomParameters_];
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v14 = sub_267EF8A08();
  v0[18] = __swift_project_value_buffer(v14, qword_280240FB0);
  v15 = v1;
  v16 = sub_267EF89F8();
  v17 = sub_267EF95D8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v119[0] = v19;
    *v18 = 136315138;
    [v15 centerCoordinate];
    v0[6] = v20;
    v0[7] = v21;
    type metadata accessor for CLLocationCoordinate2D(0);
    v22 = sub_267EF9098();
    v24 = sub_267BA33E8(v22, v23, v119);

    *(v18 + 4) = v24;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  sub_267BE28D0(v15, &selRef_addressString);
  if (v30)
  {

    result = sub_267BE28D0(v15, &selRef_addressString);
    if (!v32)
    {
      __break(1u);
      goto LABEL_60;
    }

    v33 = result;
    v34 = v32;

    v35 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v35 = v33 & 0xFFFFFFFFFFFFLL;
    }

    if (v35)
    {
      objc_allocWithZone(MEMORY[0x277CCA948]);
      v36 = sub_267BD346C(16);
      v81 = v36;
      if (!v36)
      {
        v5 = sub_267EF89F8();
        v37 = sub_267EF95E8();
        if (!OUTLINED_FUNCTION_27(v37))
        {

          goto LABEL_7;
        }

        v38 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v38);
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v39, v40, v41, v42, v43, 2u);
        OUTLINED_FUNCTION_29_1();

        v13 = 0;
LABEL_6:

LABEL_7:
LABEL_22:
        v44 = OUTLINED_FUNCTION_15_9();
        v45(v44);
LABEL_23:
        v46 = 0;
        v118 = 0;
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v52 = 1;
LABEL_24:
        v53 = v0[14];
        v54 = v0[11];
        v55 = v0[9];

        *v55 = v46;
        v55[1] = v52;
        v55[2] = v118;
        v55[3] = v47;
        v55[4] = v48;
        v55[5] = v49;
        v55[6] = v50;
        v55[7] = v51;
        OUTLINED_FUNCTION_17();

        return v56();
      }

      result = sub_267BE28D0(v15, &selRef_addressString);
      if (v82)
      {
        v83 = sub_267EF8FF8();

        result = sub_267BE28D0(v15, &selRef_addressString);
        if (v84)
        {
          v85 = MEMORY[0x26D608EC0](result);

          v86 = [v81 matchesInString:v83 options:0 range:{0, v85}];

          sub_267BA9F38(0, &qword_280229D10, 0x277CCACC0);
          v87 = sub_267EF92F8();

          if (sub_267BAF0DC(v87))
          {
            sub_267BBD0EC(0, (v87 & 0xC000000000000001) == 0, v87);
            if ((v87 & 0xC000000000000001) != 0)
            {
              v88 = MEMORY[0x26D609870](0, v87);
            }

            else
            {
              v88 = *(v87 + 32);
            }

            v89 = v88;

            if ([v89 resultType] == 16)
            {
              v90 = sub_267E77C48(v89);
              if (v90)
              {
                v91 = v90;
                v116 = v89;
                v117 = sub_267BE28D0(v15, &selRef_searchQuery);
                v52 = v92;
                v118 = sub_267BC2EE8(*MEMORY[0x277CCA6B0], v91);
                v47 = v93;
                v48 = sub_267BC2EE8(*MEMORY[0x277CCA6E0], v91);
                v49 = v94;

                v95 = [v15 addressString];
                if (v95)
                {
                  v96 = v95;
                  v97 = v81;
                  v50 = sub_267EF9028();
                  v51 = v98;
                }

                else
                {

                  v50 = 0;
                  v51 = 0;
                }

                v114 = OUTLINED_FUNCTION_15_9();
                v115(v114);
                v46 = v117;
                goto LABEL_24;
              }
            }

            v99 = sub_267EF89F8();
            v100 = sub_267EF95D8();
            if (OUTLINED_FUNCTION_27(v100))
            {
              v101 = OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_4_2(v101);
              OUTLINED_FUNCTION_14_2();
              _os_log_impl(v102, v103, v104, v105, v106, 2u);
              OUTLINED_FUNCTION_29_1();
            }

            else
            {
            }
          }

          else
          {

            v99 = sub_267EF89F8();
            v107 = sub_267EF95D8();
            if (OUTLINED_FUNCTION_27(v107))
            {
              v108 = OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_4_2(v108);
              OUTLINED_FUNCTION_14_2();
              _os_log_impl(v109, v110, v111, v112, v113, 2u);
              OUTLINED_FUNCTION_29_1();
            }

            else
            {
            }
          }

          goto LABEL_22;
        }

LABEL_61:
        __break(1u);
        return result;
      }

LABEL_60:
      __break(1u);
      goto LABEL_61;
    }
  }

  v57 = sub_267EF89F8();
  v58 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v58))
  {
    v59 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v59);
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v60, v61, v62, v63, v64, 2u);
    OUTLINED_FUNCTION_29_1();
  }

  v65 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
  v0[19] = v65;
  [v15 centerCoordinate];
  v67 = v66;
  [v15 centerCoordinate];
  v69 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v67 longitude:v68];
  v0[20] = v69;
  v70 = swift_task_alloc();
  v0[21] = v70;
  *(v70 + 16) = v65;
  *(v70 + 24) = v69;
  v71 = swift_task_alloc();
  v0[22] = v71;
  *v71 = v0;
  v71[1] = sub_267C78174;

  return sub_267C78CD4(sub_267C79734, v70);
}

uint64_t sub_267C78174()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 176);
  v3 = *(v1 + 168);
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v7 + 184) = v6;
  *(v7 + 192) = v8;

  v9 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267C78280()
{
  v97 = v0;
  v5 = *(v0 + 184);
  if (*(v0 + 192))
  {
    v6 = *(v0 + 144);
    v7 = v5;
    v8 = sub_267EF89F8();
    v9 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_27(v9))
    {
      v2 = *(v0 + 152);
      v1 = *(v0 + 160);
      v3 = *(v0 + 136);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      OUTLINED_FUNCTION_14_2();
      _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
      sub_267BF9988(v11, &unk_280229E30, &unk_267EFC270);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_29_1();
    }

    else
    {
      v5 = *(v0 + 184);
      v65 = *(v0 + 160);
      v66 = *(v0 + 136);

      sub_267C7973C(v5, 1);
    }

    v68 = *(v0 + 104);
    v67 = *(v0 + 112);
    v69 = *(v0 + 96);
    v95 = 1;
    sub_267C7973C(*(v0 + 184), 1);
    v71 = *(v68 + 8);
    v70 = (v68 + 8);
    v71(v67, v69);
    OUTLINED_FUNCTION_8_13();
    goto LABEL_23;
  }

  if (v5 && sub_267BAF0DC(*(v0 + 184)))
  {
    v18 = *(v0 + 184) & 0xC000000000000001;
    sub_267BBD0EC(0, v18 == 0, v5);
    if (v18)
    {
      v19 = MEMORY[0x26D609870](0, v5);
    }

    else
    {
      v19 = v5[4];
    }

    v20 = v19;
    v21 = [v19 postalAddress];
    if (v21)
    {
      v22 = v21;
      v23 = sub_267BE28D0(*(v0 + 136), &selRef_searchQuery);
      v93 = v20;
      if (!v24)
      {
        v23 = sub_267BE28D0(v20, &selRef_name);
      }

      v25 = v23;
      v26 = v24;
      v27 = *(v0 + 144);

      v28 = v22;
      v29 = sub_267EF89F8();
      v30 = sub_267EF95D8();

      v31 = &selRef_personTypes;
      v32 = &selRef_personTypes;
      v94 = v25;
      if (os_log_type_enabled(v29, v30))
      {
        v33 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        *v33 = 136315650;
        *(v0 + 32) = v25;
        *(v0 + 40) = v26;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
        v34 = sub_267EF9098();
        v36 = sub_267BA33E8(v34, v35, &v96);

        *(v33 + 4) = v36;
        *(v33 + 12) = 2080;
        v37 = [v28 city];
        v38 = sub_267EF9028();
        v39 = v28;
        v41 = v40;

        v42 = sub_267BA33E8(v38, v41, &v96);

        *(v33 + 14) = v42;
        *(v33 + 22) = 2080;
        v43 = [v39 state];
        v44 = sub_267EF9028();
        v46 = v45;

        v47 = v44;
        v31 = &selRef_personTypes;
        v48 = sub_267BA33E8(v47, v46, &v96);
        v28 = v39;

        *(v33 + 24) = v48;
        _os_log_impl(&dword_267B93000, v29, v30, "#AppleMapsLinkParser reverse geocoded place name %s city %s, state %s", v33, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_32_0();
        v32 = &selRef_personTypes;
        OUTLINED_FUNCTION_32_0();
      }

      v49 = *(v0 + 136);
      v50 = [v28 v31[47]];
      v51 = sub_267EF9028();
      v53 = v52;

      v54 = [v28 v32[48]];
      v55 = sub_267EF9028();
      v57 = v56;

      v58 = [v49 addressString];
      v59 = *(v0 + 184);
      v60 = *(v0 + 152);
      v61 = *(v0 + 136);
      v88 = v61;
      v89 = *(v0 + 160);
      v95 = v26;
      v92 = v55;
      if (v58)
      {
        v62 = v58;
        v63 = sub_267EF9028();
        v90 = v64;
        v91 = v63;

        sub_267C7973C(v59, 0);
      }

      else
      {

        sub_267C7973C(v59, 0);
        v90 = 0;
        v91 = 0;
      }

      v81 = OUTLINED_FUNCTION_15_9();
      v82(v81);
      v5 = v94;
      v2 = v53;
      v67 = v51;
      v4 = v57;
      v3 = v92;
      v1 = v90;
      v70 = v91;
      goto LABEL_23;
    }
  }

  v72 = *(v0 + 144);
  v67 = sub_267EF89F8();
  v73 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_5_2(v73))
  {
    v74 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v74);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v75, v76, "#AppleMapsLinkParser error reverse geocoding returned nil addresses");
    OUTLINED_FUNCTION_26();
  }

  v5 = *(v0 + 184);
  v77 = *(v0 + 160);
  v1 = *(v0 + 136);
  v79 = *(v0 + 104);
  v78 = *(v0 + 112);
  v70 = *(v0 + 96);

  sub_267C7973C(v5, 0);
  v80 = *(v79 + 8);
  v2 = (v79 + 8);
  v80(v78, v70);
  OUTLINED_FUNCTION_8_13();
  v95 = 1;
LABEL_23:
  v83 = *(v0 + 112);
  v84 = *(v0 + 88);
  v85 = *(v0 + 72);

  *v85 = v5;
  v85[1] = v95;
  v85[2] = v67;
  v85[3] = v2;
  v85[4] = v3;
  v85[5] = v4;
  v85[6] = v70;
  v85[7] = v1;
  OUTLINED_FUNCTION_17();

  return v86();
}

void sub_267C78884(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D38, &qword_267EFF3F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - v5;
  v7 = objc_opt_self();
  v8 = sub_267EF2AF8();
  (*(v3 + 16))(v6, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v6, v2);
  aBlock[4] = sub_267C79808;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_267C78AB0;
  aBlock[3] = &block_descriptor_19;
  v11 = _Block_copy(aBlock);

  [v7 urlParserForURL:v8 completion:v11];
  _Block_release(v11);
}

uint64_t sub_267C78A54(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D38, &qword_267EFF3F8);
  return sub_267EF93C8();
}

void sub_267C78AB0(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_267C78B3C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v10[4] = sub_267C797D0;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_267C78C30;
  v10[3] = &block_descriptor_5;
  v9 = _Block_copy(v10);

  [a3 reverseGeocodeLocation:a4 completionHandler:v9];
  _Block_release(v9);
}

uint64_t sub_267C78C30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_267BA9F38(0, &qword_280229D30, 0x277CBFC40);
    v4 = sub_267EF92F8();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_267C78CD4(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_267C78CF4, 0, 0);
}

uint64_t sub_267C78CF4()
{
  OUTLINED_FUNCTION_56();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D20, &qword_267EFF3E8);
  *v3 = v0;
  v3[1] = sub_267C78DF8;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000010, 0x8000000267F13E50, sub_267C79748, v1, v4);
}

uint64_t sub_267C78DF8()
{
  OUTLINED_FUNCTION_56();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = v1[7];
  v5 = v1[6];
  v6 = *v0;
  *v3 = *v0;

  v7 = v1[2];
  v8 = *(v2 + 24);
  v9 = v6[1];

  return v9(v7, v8);
}

uint64_t sub_267C78F1C()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v0;
  v2 = sub_267EF43A8();
  v1[3] = v2;
  OUTLINED_FUNCTION_30_0(v2);
  v1[4] = v3;
  v5 = *(v4 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v6 = sub_267EF43C8();
  v1[7] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[8] = v7;
  v9 = *(v8 + 64) + 15;
  v1[9] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267C79028()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[2];
  v2 = v1[8];
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_0(v1 + 5, v2);
  v4 = *(MEMORY[0x277D5BFC0] + 4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_267C79104;
  v6 = v0[9];

  return MEMORY[0x2821BB7C0](v6, 0x6C7070612E6D6F63, 0xEE007370614D2E65, v2, v3);
}

uint64_t sub_267C79104()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 80);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C791E8()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  sub_267EF43B8();
  (*(v6 + 104))(v5, *MEMORY[0x277D5BE08], v7);
  v8 = sub_267C28E20(v4, v5);
  v9 = *(v6 + 8);
  v9(v5, v7);
  v9(v4, v7);
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10(v8 & 1);
}

void *sub_267C79310()
{
  v1 = *(*v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_267C7933C(uint64_t a1)
{
  *(v2 + 80) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 88) = v4;
  *v4 = v2;
  v4[1] = sub_267C793D8;

  return sub_267C773E4();
}

uint64_t sub_267C793D8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = *(v1 + 88);
  v4 = *(v1 + 80);
  v5 = *v0;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[4];
  v4[2] = v2[3];
  v4[3] = v9;
  *v4 = v7;
  v4[1] = v8;
  OUTLINED_FUNCTION_17();

  return v10();
}

uint64_t sub_267C794DC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BA83C4;

  return sub_267C78F1C();
}

uint64_t sub_267C7956C(uint64_t a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D28, &qword_267EFF3F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  a2(sub_267C79758, v10);
}

uint64_t sub_267C796BC(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D28, &qword_267EFF3F0);
  return sub_267EF93C8();
}

void sub_267C7973C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_267C79758()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D28, &qword_267EFF3F0);
  OUTLINED_FUNCTION_18(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_19_7();

  return sub_267C79750(v3, v4);
}

uint64_t sub_267C797D0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_267C79808()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D38, &qword_267EFF3F8);
  OUTLINED_FUNCTION_18(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_19_7();

  return sub_267C78A54(v3, v4);
}

uint64_t sub_267C79888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v110 = a3;
  v111 = a4;
  v112 = a2;
  v108 = a5;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D40, &qword_267EFF448);
  v6 = OUTLINED_FUNCTION_58(v99);
  v98 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v97 = &v95 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299D0, &unk_267F09690);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_3_1(&v95 - v13);
  v102 = sub_267EF51F8();
  v14 = OUTLINED_FUNCTION_58(v102);
  v101 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(v19 - v18);
  v104 = sub_267EF5318();
  v20 = OUTLINED_FUNCTION_58(v104);
  v96 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(v25 - v24);
  v107 = sub_267EF4C68();
  v26 = OUTLINED_FUNCTION_58(v107);
  v106 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_0_0();
  v105 = v31 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D48, qword_267EFF450);
  v33 = OUTLINED_FUNCTION_58(v32);
  v109 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = sub_267EF4C08();
  v38 = OUTLINED_FUNCTION_58(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_0_0();
  v45 = v44 - v43;
  v46 = sub_267EF6718();
  v47 = OUTLINED_FUNCTION_58(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_0_0();
  v54 = v53 - v52;
  (*(v40 + 16))(v45, a1, v37);
  v55 = (*(v40 + 88))(v45, v37);
  if (v55 == *MEMORY[0x277D5C128])
  {
    v56 = OUTLINED_FUNCTION_3_16();
    v57(v56);
LABEL_5:
    (*(v49 + 32))(v54, v45, v46);
    sub_267B9AFEC(v110, v115);
    sub_267B9AFEC(v111, v114);
    sub_267B9AFEC(v112, v113);
    v61 = swift_allocObject();
    sub_267B9A5E8(v115, v61 + 16);
    sub_267B9A5E8(v114, v61 + 56);
    sub_267B9A5E8(v113, v61 + 96);
    sub_267BB7170();
    sub_267EF7058();
    v62 = sub_267EF7068();
    v63 = v116;
    v62(v115, v54);
    if (v63)
    {

      v64 = OUTLINED_FUNCTION_5_19();
      v65(v64);
      return (*(v49 + 8))(v54, v46);
    }

    v67 = OUTLINED_FUNCTION_5_19();
    v68(v67);
    result = (*(v49 + 8))(v54, v46);
    goto LABEL_8;
  }

  if (v55 == *MEMORY[0x277D5C158])
  {
    v58 = OUTLINED_FUNCTION_3_16();
    v59(v58);
    v60 = *(v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D50, &qword_267F0C8C0) + 48));

    goto LABEL_5;
  }

  if (v55 != *MEMORY[0x277D5C160])
  {
    v84 = sub_267EF71B8();
    sub_267C6C8E8();
    OUTLINED_FUNCTION_6_14();
    (*(*(v84 - 8) + 104))(v85, *MEMORY[0x277D61DF8], v84);
    swift_willThrow();
    v82 = *(v40 + 8);
    v83 = v45;
    return v82(v83, v37);
  }

  v69 = OUTLINED_FUNCTION_3_16();
  v70(v69);
  v71 = v106;
  v72 = v105;
  v37 = v107;
  (*(v106 + 32))(v105, v45, v107);
  v73 = v100;
  sub_267EF4C48();
  v74 = v103;
  sub_267EF51A8();
  (*(v101 + 8))(v73, v102);
  v75 = v104;
  if (__swift_getEnumTagSinglePayload(v74, 1, v104) == 1)
  {
    sub_267C7A238(v74);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v76 = sub_267EF8A08();
    __swift_project_value_buffer(v76, qword_280240FB0);
    v77 = sub_267EF89F8();
    v78 = sub_267EF95E8();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_267B93000, v77, v78, "#SendMessageTransformer could not find UserDialogAct from userParse", v79, 2u);
      MEMORY[0x26D60A7B0](v79, -1, -1);
    }

    v80 = sub_267EF71B8();
    sub_267C6C8E8();
    OUTLINED_FUNCTION_6_14();
    *v81 = 0xD000000000000010;
    v81[1] = 0x8000000267F13EF0;
    (*(*(v80 - 8) + 104))(v81, *MEMORY[0x277D61E00], v80);
    swift_willThrow();
    v82 = *(v71 + 8);
    v83 = v72;
    return v82(v83, v37);
  }

  v86 = v96;
  v87 = v95;
  (*(v96 + 32))(v95, v74, v75);
  sub_267B9AFEC(v110, v115);
  sub_267B9AFEC(v111, v114);
  sub_267B9AFEC(v112, v113);
  v88 = swift_allocObject();
  sub_267B9A5E8(v115, v88 + 16);
  sub_267B9A5E8(v114, v88 + 56);
  sub_267B9A5E8(v113, v88 + 96);
  sub_267BB7170();
  sub_267EF7058();
  v89 = sub_267EF7068();
  v90 = v116;
  v89(v115, v87);
  if (!v90)
  {

    v93 = OUTLINED_FUNCTION_4_18();
    v94(v93);
    (*(v86 + 8))(v87, v75);
    result = (*(v71 + 8))(v72, v107);
LABEL_8:
    *v108 = *&v115[0];
    return result;
  }

  v91 = OUTLINED_FUNCTION_4_18();
  v92(v91);
  (*(v86 + 8))(v87, v75);
  return (*(v71 + 8))(v72, v107);
}

uint64_t sub_267C7A238(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299D0, &unk_267F09690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_267C7A2F8()
{
  result = qword_280229D60;
  if (!qword_280229D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229D60);
  }

  return result;
}

unint64_t sub_267C7A35C()
{
  result = qword_280229D68;
  if (!qword_280229D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229D68);
  }

  return result;
}

unint64_t sub_267C7A3C0()
{
  result = qword_280229D70;
  if (!qword_280229D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229D70);
  }

  return result;
}

void sub_267C7A414()
{
  type metadata accessor for FLOWSchemaFLOWPersonType(0);
  v1 = sub_267EF92D8();

  swift_beginAccess();
  objc_setAssociatedObject(v0, &unk_280229D58, v1, 1);
  swift_endAccess();
}

uint64_t sub_267C7A4A0()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_280229D58);
  swift_endAccess();
  if (v1)
  {
    sub_267EF99B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D88, &qword_267EFF528);
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_267C0BFFC(v6);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_267C7A584()
{
  v1 = sub_267C7A658(v0);
  v3 = v2;
  if (v2)
  {
    sub_267C7A6BC();
    sub_267C7A710();
    if (sub_267EF8FA8())
    {
      v4 = sub_267EF9138();
      v5 = sub_267BB8FCC(v4, v1, v3);
      v1 = MEMORY[0x26D608DB0](v5);
    }
  }

  return v1;
}

uint64_t sub_267C7A658(void *a1)
{
  v1 = [a1 launchId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

unint64_t sub_267C7A6BC()
{
  result = qword_280229D78;
  if (!qword_280229D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229D78);
  }

  return result;
}

unint64_t sub_267C7A710()
{
  result = qword_280229D80;
  if (!qword_280229D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229D80);
  }

  return result;
}

uint64_t static MessagesSELFPerformanceLogger.signpost<A>(domainExecutionType:taskType:osLogger:siriKitEventSender:_:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_267EF8A08();
  v17 = OUTLINED_FUNCTION_2_23(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_0();
  v22 = v21 - v20;
  (*(v23 + 16))(v21 - v20, a4);
  sub_267B9AFEC(a5, v36);
  v24 = type metadata accessor for MessagesSELFPerformanceLogger();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();

  MessagesSELFPerformanceLogger.init(domainExecutionType:taskType:osLogger:siriKitEventSender:)(a1, a2, a3, v22, v36);
  v35 = v27;
  v32 = a8;
  v33 = a6;
  v34 = a7;
  v28 = sub_267EF9888();
  sub_267C7AEA4(&v35, sub_267C7AE74, v31, v24, MEMORY[0x277D84A98], v28, MEMORY[0x277D84AC0], v29);
}

{
  v16 = sub_267EF8A08();
  v17 = OUTLINED_FUNCTION_2_23(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_0();
  v22 = v21 - v20;
  (*(v23 + 16))(v21 - v20, a4);
  sub_267B9AFEC(a5, v35);
  v24 = type metadata accessor for MessagesSELFPerformanceLogger();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();

  MessagesSELFPerformanceLogger.init(domainExecutionType:taskType:osLogger:siriKitEventSender:)(a1, a2, a3, v22, v35);
  v34 = a7;
  v35[0] = v27;
  v32 = a8;
  v33 = a6;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
  v29 = sub_267EF9888();
  sub_267C7B180(v35, sub_267C7B4A0, v31, v24, v28, v29, MEMORY[0x277D84950], &v36);
}

uint64_t static MessagesSELFPerformanceLogger.signpost<A>(domainExecutionType:taskType:osLogger:siriKitEventSender:_:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = a7;
  *(v8 + 104) = a8;
  *(v8 + 80) = a5;
  *(v8 + 88) = a6;
  *(v8 + 64) = a3;
  *(v8 + 72) = a4;
  *(v8 + 184) = a2;
  *(v8 + 56) = a1;
  v9 = sub_267EF9888();
  *(v8 + 112) = v9;
  v10 = *(v9 - 8);
  *(v8 + 120) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  v12 = sub_267EF8A08();
  *(v8 + 136) = v12;
  v13 = *(v12 - 8);
  *(v8 + 144) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C7AA28, 0, 0);
}

uint64_t sub_267C7AA28()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 64);
  v6 = *(v0 + 184);
  (*(*(v0 + 144) + 16))(v1, *(v0 + 80), *(v0 + 136));
  sub_267B9AFEC(v3, v0 + 16);
  v7 = type metadata accessor for MessagesSELFPerformanceLogger();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  *(v0 + 160) = swift_allocObject();

  MessagesSELFPerformanceLogger.init(domainExecutionType:taskType:osLogger:siriKitEventSender:)(v6, v5, v4, v1, (v0 + 16));
  v15 = (v2 + *v2);
  v10 = v2[1];
  v11 = swift_task_alloc();
  *(v0 + 168) = v11;
  *v11 = v0;
  v11[1] = sub_267C7ABA4;
  v12 = *(v0 + 128);
  v13 = *(v0 + 104);

  return v15(v12);
}

uint64_t sub_267C7ABA4()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_267C7AD6C;
  }

  else
  {
    v3 = sub_267C7ACB8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_267C7ACB8()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[7];
  sub_267C7B358();

  (*(v4 + 32))(v6, v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_267C7AD6C()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[16];
  sub_267C7B344();
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[22];

  return v5();
}

uint64_t MessagesSELFPerformanceLogger.__allocating_init(domainExecutionType:taskType:osLogger:siriKitEventSender:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  MessagesSELFPerformanceLogger.init(domainExecutionType:taskType:osLogger:siriKitEventSender:)(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t sub_267C7AE74()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_267C7AEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_267C7B124(uint64_t *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  result = a2();
  if (v5)
  {
    sub_267C7B344();
    result = swift_willThrow();
    *a5 = v5;
  }

  return result;
}

uint64_t sub_267C7B180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20]();
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v13, v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t MessagesSELFPerformanceLogger.deinit()
{
  if ((*(v0 + OBJC_IVAR____TtC16SiriMessagesFlow29MessagesSELFPerformanceLogger_failed) & 1) == 0 && (*(v0 + OBJC_IVAR____TtC16SiriMessagesFlow29MessagesSELFPerformanceLogger_ended) & 1) == 0)
  {
    sub_267C7B358();
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 72);

  v2 = OBJC_IVAR____TtC16SiriMessagesFlow29MessagesSELFPerformanceLogger_osLogger;
  v3 = sub_267EF8A08();
  OUTLINED_FUNCTION_0_9(v3);
  (*(v4 + 8))(v0 + v2);
  return v0;
}

uint64_t MessagesSELFPerformanceLogger.__deallocating_deinit()
{
  MessagesSELFPerformanceLogger.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_267C7B368(Class *a1, char a2)
{
  v4 = v2;
  v5 = [objc_allocWithZone(*a1) init];
  if (v5)
  {
    oslog = v5;
    sub_267BBCB48(v5, a2);
  }

  else
  {

    oslog = sub_267EF89F8();
    v6 = sub_267EF95E8();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136315138;
      v9 = *(v4 + 56);
      v10 = sub_267EF9798();
      v12 = sub_267BA33E8(v10, v11, &v20);

      *(v7 + 4) = v12;
      OUTLINED_FUNCTION_4_19(&dword_267B93000, v13, v14, "#MessagesSELFPerformanceLogger Failed to register end event for %s", v15, v16, v17, v18, oslog);
      __swift_destroy_boxed_opaque_existential_0(v8);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }
  }
}

uint64_t sub_267C7B4CC()
{
  result = sub_267EF8A08();
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

void sub_267C7B60C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v65 - v11;
  v13 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_37;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v14 = sub_267BAF0DC(v13);
      v15 = v13 & 0xC000000000000001;
      sub_267BBD0EC(0, (v13 & 0xC000000000000001) == 0, v13);
      if (v14 == 1)
      {
        if (v15)
        {
          v16 = MEMORY[0x26D609870](0, v13);
        }

        else
        {
          v16 = *(v13 + 32);
        }

        v17 = v16;
        goto LABEL_39;
      }

      v74 = v14;
      if (v15)
      {
        v18 = MEMORY[0x26D609870](0, v13);
      }

      else
      {
        v18 = *(v13 + 32);
      }

      v19 = v18;
      v20 = [v18 personHandle];
      v69 = v3;
      if (v20)
      {
        v21 = v20;
        v22 = [v20 type];
      }

      else
      {
        v22 = 0;
      }

      v23 = [v19 personHandle];
      v24 = [v23 label];

      v25 = objc_allocWithZone(MEMORY[0x277CD3E98]);
      v26 = sub_267C7BEC0(0, 0, v22, v24);
      v27 = [v19 nameComponents];
      v68 = a2;
      v73 = v13 & 0xC000000000000001;
      if (v27)
      {
        v28 = v27;
        sub_267EF2A18();

        v29 = sub_267EF2A58();
        v30 = 0;
      }

      else
      {
        v29 = sub_267EF2A58();
        v30 = 1;
      }

      __swift_storeEnumTagSinglePayload(v12, v30, 1, v29);
      v31 = [v19 displayName];
      v32 = sub_267EF9028();
      v34 = v33;

      v67 = v19;
      v35 = [v19 image];
      v36 = objc_allocWithZone(MEMORY[0x277CD3E90]);
      v3 = sub_267C7BD3C(v26, v12, v32, v34, v35, 0, 0, 0, 0);
      v37 = MEMORY[0x277D84F90];
      v38 = v74;
      if (!v74)
      {
LABEL_30:
        sub_267C7BF44(v37, v3);
        v58 = v67;
        a2 = v68;
        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v59 = sub_267EF8A08();
        __swift_project_value_buffer(v59, qword_280240FB0);
        v17 = v3;
        v60 = sub_267EF89F8();
        v61 = sub_267EF95D8();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *v62 = 138412290;
          *(v62 + 4) = v17;
          *v63 = v17;
          v64 = v17;
          _os_log_impl(&dword_267B93000, v60, v61, "#getUpdatedPersonList Ambiguous selection! Returning result: %@", v62, 0xCu);
          sub_267C142D4(v63);
          MEMORY[0x26D60A7B0](v63, -1, -1);
          MEMORY[0x26D60A7B0](v62, -1, -1);
        }

        goto LABEL_39;
      }

      v66 = v3;
      v72 = v10;
      v77 = MEMORY[0x277D84F90];
      sub_267EF9BF8();
      if (v38 < 0)
      {
        __break(1u);
        return;
      }

      v39 = 0;
      v70 = v13 & 0xFFFFFFFFFFFFFF8;
      v71 = v13;
      while (1)
      {
        if (v73)
        {
          v40 = MEMORY[0x26D609870](v39, v13);
          v10 = v72;
          goto LABEL_23;
        }

        v10 = v72;
        if ((v39 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v39 >= *(v70 + 16))
        {
          goto LABEL_36;
        }

        v40 = *(v13 + 8 * v39 + 32);
LABEL_23:
        v41 = [v40 personHandle];
        if (!v41)
        {
          v42 = objc_allocWithZone(MEMORY[0x277CD3E98]);
          v41 = sub_267E7605C(0, 0, 0);
        }

        v43 = [v40 nameComponents];
        v76 = v41;
        if (v43)
        {
          v44 = v43;
          sub_267EF2A18();

          v45 = 0;
        }

        else
        {
          v45 = 1;
        }

        v46 = sub_267EF2A58();
        __swift_storeEnumTagSinglePayload(v10, v45, 1, v46);
        ++v39;
        v47 = [v40 displayName];
        v12 = sub_267EF9028();
        v75 = v48;

        v49 = [v40 image];
        v50 = sub_267BBD380(v40);
        a2 = v51;
        v52 = sub_267DEC22C(v40);
        v54 = v53;
        v55 = objc_allocWithZone(MEMORY[0x277CD3E90]);
        v56 = sub_267C7BD3C(v76, v10, v12, v75, v49, v50, a2, v52, v54);
        v3 = [objc_allocWithZone(MEMORY[0x277CD4008]) initWithPerson:v56 recommendation:2];

        sub_267EF9BD8();
        v57 = *(v77 + 16);
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
        v13 = v71;
        if (v74 == v39)
        {
          v37 = v77;
          v3 = v66;
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      ;
    }

    while (sub_267EF9A68());
  }

  v17 = 0;
LABEL_39:
  *a2 = v17;
}

uint64_t sub_267C7BC54(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  sub_267EF47F8();
  sub_267EF4858();
  v7 = sub_267EF4158();
  (*(*(v7 - 8) + 16))(v6, a2, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  return sub_267EF4818();
}

id sub_267C7BD3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = sub_267EF2A58();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v16) != 1)
  {
    v17 = sub_267EF29E8();
    (*(*(v16 - 8) + 8))(a2, v16);
  }

  if (a4)
  {
    v18 = sub_267EF8FF8();
  }

  else
  {
    v18 = 0;
  }

  if (!a7)
  {
    v19 = 0;
    if (a9)
    {
      goto LABEL_8;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  v19 = sub_267EF8FF8();

  if (!a9)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = sub_267EF8FF8();

LABEL_11:
  v21 = [v10 initWithPersonHandle:a1 nameComponents:v17 displayName:v18 image:a5 contactIdentifier:v19 customIdentifier:v20];

  return v21;
}

id sub_267C7BEC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_267EF8FF8();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithValue:v8 type:a3 label:a4];

  return v9;
}

void sub_267C7BF44(uint64_t a1, void *a2)
{
  sub_267C7BFB8();
  v3 = sub_267EF92D8();

  [a2 setScoredAlternatives_];
}

unint64_t sub_267C7BFB8()
{
  result = qword_280229DB8;
  if (!qword_280229DB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280229DB8);
  }

  return result;
}

_BYTE *sub_267C7BFFC(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MessagesConversationDialogContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_267C7C168(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_267C7C240()
{
  v0 = sub_267EF9D38();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_267C7C28C(char a1)
{
  result = 0x6E65697069636572;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x746E65746E6F63;
      break;
    case 4:
      result = 0x746365666665;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0x4E65636976726573;
      break;
    case 7:
      result = OUTLINED_FUNCTION_0_15();
      break;
    case 8:
      result = 0x656D686361747461;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267C7C3BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267C7C240();
  *a2 = result;
  return result;
}

uint64_t sub_267C7C3EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267C7C28C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_267C7C41C()
{
  result = qword_280229DC0;
  if (!qword_280229DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229DC0);
  }

  return result;
}

uint64_t sub_267C7C47C()
{
  v0 = sub_267EF9D38();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_267C7C4C8(char a1)
{
  result = 0x6E65697069636572;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_0_15();
      break;
    case 2:
      result = 0x6554686372616573;
      break;
    case 3:
      result = 0x7475626972747461;
      break;
    case 4:
      result = 0x656D695465746164;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x696669746E656469;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267C7C600@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267C7C47C();
  *a2 = result;
  return result;
}

uint64_t sub_267C7C630@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267C7C4C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_267C7C660()
{
  result = qword_280229DC8;
  if (!qword_280229DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229DC8);
  }

  return result;
}

uint64_t sub_267C7C6C0()
{
  v0 = sub_267EF9D38();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267C7C714(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6F43646574696465;
  }
}

uint64_t sub_267C7C780@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267C7C6C0();
  *a2 = result;
  return result;
}

uint64_t sub_267C7C7B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267C7C714(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_267C7C7E0()
{
  result = qword_280229DD0;
  if (!qword_280229DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229DD0);
  }

  return result;
}

uint64_t sub_267C7C8D0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_267C7C934@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_267EF7408();
  v4 = OUTLINED_FUNCTION_58(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v10 = OUTLINED_FUNCTION_11_14(v9);
  v11(v10);
  v12 = v6[11];
  v13 = OUTLINED_FUNCTION_19();
  if (v14(v13) == *MEMORY[0x277D1C680])
  {
    v15 = v6[12];
    v16 = OUTLINED_FUNCTION_19();
    v17(v16);
    v18 = sub_267EF8D48();
    OUTLINED_FUNCTION_22(v18);
    (*(v19 + 32))(a1, v1, v18);
    OUTLINED_FUNCTION_9();
    v23 = v18;
  }

  else
  {
    v24 = v6[1];
    v25 = OUTLINED_FUNCTION_19();
    v26(v25);
    v23 = sub_267EF8D48();
    v20 = a1;
    v21 = 1;
    v22 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
}

void sub_267C7CA90()
{
  OUTLINED_FUNCTION_48_0();
  v95 = v1;
  v2 = sub_267EF8D18();
  v3 = OUTLINED_FUNCTION_58(v2);
  v87 = v4;
  v88 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_0();
  v86 = v8 - v7;
  v9 = sub_267EF8D28();
  v10 = OUTLINED_FUNCTION_58(v9);
  v89 = v11;
  v90 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_0();
  v85 = v15 - v14;
  v16 = sub_267EF73F8();
  v17 = OUTLINED_FUNCTION_58(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_26();
  v22 = sub_267EF7408();
  v23 = OUTLINED_FUNCTION_58(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6();
  v93 = v28;
  v30 = MEMORY[0x28223BE20](v29);
  v32 = (&v85 - v31);
  v33 = MEMORY[0x28223BE20](v30);
  v91 = &v85 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v85 - v35;
  v37 = *(v25 + 16);
  v92 = v0;
  v37(&v85 - v35, v0, v22);
  v38 = (*(v25 + 88))(v36, v22);
  v39 = *MEMORY[0x277D1C680];
  v94 = v36;
  if (v38 == v39)
  {
    v37(v32, v36, v22);
    v40 = OUTLINED_FUNCTION_29_6();
    v41(v40);
    v42 = sub_267EF8D48();
    v43 = *(v42 - 8);
    if ((*(v43 + 88))(v32, v42) == *MEMORY[0x277D72A58])
    {
      (*(v43 + 96))(v32, v42);
      v44 = *v32;
      v45 = swift_projectBox();
      v47 = v89;
      v46 = v90;
      v48 = (*(v89 + 88))(v45, v90);
      v49 = v93;
      if (v48 == *MEMORY[0x277D729B0])
      {
        v50 = v85;
        (*(v47 + 16))(v85, v45, v46);
        (*(v47 + 96))(v50, v46);
        v52 = v86;
        v51 = v87;
        v53 = v50;
        v54 = v88;
        (*(v87 + 32))(v86, v53, v88);
        v55 = sub_267EF8D08();
        sub_267EF97D8();

        (*(v51 + 8))(v52, v54);
        sub_267EF6A08();
        OUTLINED_FUNCTION_9();
        __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);

LABEL_15:
        v61 = v94;
        goto LABEL_16;
      }
    }

    else
    {
      (*(v43 + 8))(v32, v42);
      v49 = v93;
    }

LABEL_9:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v71 = sub_267EF8A08();
    __swift_project_value_buffer(v71, qword_280240FB0);
    v37(v49, v92, v22);
    v72 = sub_267EF89F8();
    v73 = sub_267EF95E8();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = OUTLINED_FUNCTION_48();
      v75 = swift_slowAlloc();
      v96 = v75;
      *v74 = 136315138;
      v37(v91, v49, v22);
      v76 = sub_267EF9098();
      v78 = v77;
      v79 = OUTLINED_FUNCTION_30_8();
      v80(v79);
      v81 = sub_267BA33E8(v76, v78, &v96);

      *(v74 + 4) = v81;
      _os_log_impl(&dword_267B93000, v72, v73, "#ClientAction+Utilities unexpected shim parameter for person: %s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v75);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {

      v82 = OUTLINED_FUNCTION_30_8();
      v83(v82);
    }

    v84 = sub_267EF6A08();
    __swift_storeEnumTagSinglePayload(v95, 1, 1, v84);
    goto LABEL_15;
  }

  v49 = v93;
  if (v38 != *MEMORY[0x277D1C668])
  {
    goto LABEL_9;
  }

  v60 = v91;
  v61 = v94;
  v37(v91, v94, v22);
  v62 = OUTLINED_FUNCTION_29_6();
  v63(v62);
  (*(v19 + 32))(v0, v60, v16);
  sub_267C7D104();
  v64 = *(v19 + 8);
  v65 = OUTLINED_FUNCTION_66();
  v66(v65);
  sub_267EF6A08();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
LABEL_16:
  (*(v25 + 8))(v61, v22);
  OUTLINED_FUNCTION_47();
}

void sub_267C7D104()
{
  OUTLINED_FUNCTION_48_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229EB8, &qword_267EFF9A0);
  v1 = OUTLINED_FUNCTION_18(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v41 - v4;
  v6 = sub_267EF6A18();
  v7 = OUTLINED_FUNCTION_58(v6);
  v43 = v8;
  v44 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6();
  v42 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229EC0, &qword_267EFF9A8);
  v16 = OUTLINED_FUNCTION_18(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229EC8, &unk_267EFF9B0);
  v20 = OUTLINED_FUNCTION_18(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v41 - v23;
  v25 = sub_267EF73D8();
  v26 = OUTLINED_FUNCTION_58(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_0_0();
  v33 = v32 - v31;
  sub_267EF69F8();
  sub_267EF7388();
  sub_267EF69B8();
  sub_267EF7378();
  sub_267EF6998();
  sub_267EF73E8();
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    sub_267B9F98C(v24, &qword_280229EC8, &unk_267EFF9B0);
  }

  else
  {
    v34 = (*(v28 + 32))(v33, v24, v25);
    MEMORY[0x26D607070](v34);
    v35 = sub_267EF7398();
    if (__swift_getEnumTagSinglePayload(v5, 1, v35) == 1)
    {
      sub_267B9F98C(v5, &qword_280229EB8, &qword_267EFF9A0);
      (*(v43 + 104))(v14, *MEMORY[0x277D56018], v44);
    }

    else
    {
      v36 = v42;
      sub_267C7F434(v42);
      (*(*(v35 - 8) + 8))(v5, v35);
      (*(v43 + 32))(v14, v36, v44);
    }

    sub_267EF73B8();
    sub_267EF73C8();
    sub_267EF6AD8();
    sub_267EF6AE8();
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
    sub_267EF69A8();
    (*(v28 + 8))(v33, v25);
  }

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C7D4D8()
{
  v1[19] = v0;
  v2 = sub_267EF7408();
  v1[20] = v2;
  OUTLINED_FUNCTION_30_0(v2);
  v1[21] = v3;
  v5 = *(v4 + 64);
  v1[22] = OUTLINED_FUNCTION_50();
  v1[23] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E10, &unk_267F0DF70);
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  v1[24] = OUTLINED_FUNCTION_50();
  v1[25] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E18, &unk_267F0D0C0);
  OUTLINED_FUNCTION_18(v9);
  v11 = *(v10 + 64) + 15;
  v1[26] = swift_task_alloc();
  v12 = sub_267EF8818();
  v1[27] = v12;
  OUTLINED_FUNCTION_30_0(v12);
  v1[28] = v13;
  v15 = *(v14 + 64);
  v1[29] = OUTLINED_FUNCTION_50();
  v1[30] = swift_task_alloc();
  v16 = sub_267EF2BA8();
  v1[31] = v16;
  OUTLINED_FUNCTION_30_0(v16);
  v1[32] = v17;
  v19 = *(v18 + 64);
  v1[33] = OUTLINED_FUNCTION_50();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_18(v20);
  v22 = *(v21 + 64);
  v1[37] = OUTLINED_FUNCTION_50();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E28, &qword_267EFF990);
  OUTLINED_FUNCTION_18(v23);
  v25 = *(v24 + 64) + 15;
  v1[42] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_267C7D754()
{
  v163 = v0;
  v1 = v0[42];
  v2 = v0[19];
  sub_267C7C934(v1);
  v3 = sub_267EF8D48();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v3);
  v5 = v0[42];
  if (EnumTagSinglePayload == 1)
  {
    sub_267B9F98C(v0[42], &qword_280229E28, &qword_267EFF990);
LABEL_14:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v25 = v0[23];
    v26 = v0[20];
    v27 = v0[21];
    v28 = v0[19];
    v29 = sub_267EF8A08();
    __swift_project_value_buffer(v29, qword_280240FB0);
    v30 = *(v27 + 16);
    v30(v25, v28, v26);
    v31 = sub_267EF89F8();
    v32 = sub_267EF95E8();
    v33 = OUTLINED_FUNCTION_10_2(v32);
    v34 = v0[23];
    if (!v33)
    {
      v43 = v0[20];
      v44 = v0[21];

      (*(v44 + 8))(v34, v43);
      goto LABEL_20;
    }

    v36 = v0[21];
    v35 = v0[22];
    v37 = v0[20];
    v38 = OUTLINED_FUNCTION_48();
    v159 = swift_slowAlloc();
    v162[0] = v159;
    *v38 = 136315138;
    v30(v35, v34, v37);
    v39 = sub_267EF9098();
    v41 = v40;
    (*(v36 + 8))(v34, v37);
    v42 = sub_267BA33E8(v39, v41, v162);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_267B93000, v31, v26, "#ClientAction+Utilities unexpected shim parameter for attachment: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v159);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_32_0();
LABEL_18:

LABEL_20:
    v160 = 0;
    goto LABEL_21;
  }

  v6 = v0[42];
  sub_267C7EFB0();
  v8 = v7;
  v0[43] = v7;
  (*(*(v3 - 8) + 8))(v5, v3);
  if (!v8)
  {
    goto LABEL_14;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v9 = sub_267EF8A08();
  v0[44] = __swift_project_value_buffer(v9, qword_280240FB0);
  v10 = v8;
  v11 = sub_267EF89F8();
  v12 = sub_267EF95D8();

  if (os_log_type_enabled(v11, v12))
  {
    v158 = v0;
    v13 = 7104878;
    v14 = swift_slowAlloc();
    v162[0] = swift_slowAlloc();
    *v14 = 136315394;
    v15 = sub_267E761B0(v10);
    if (!v16)
    {
      v15 = 7104878;
    }

    v17 = v10;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0xE300000000000000;
    }

    v19 = sub_267BA33E8(v15, v18, v162);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v157 = v17;
    v20 = [v17 fileURL];
    if (v20)
    {
      v21 = v20;
      v22 = v158;
      v23 = *(v158 + 320);
      sub_267EF2B48();

      v24 = 0;
    }

    else
    {
      v24 = 1;
      v22 = v158;
    }

    v58 = v22[40];
    v57 = v22[41];
    v59 = v22[31];
    __swift_storeEnumTagSinglePayload(v58, v24, 1, v59);
    sub_267BBE1D0(v58, v57, &qword_280229E20, &unk_267EFDCC0);
    v60 = __swift_getEnumTagSinglePayload(v57, 1, v59);
    v61 = v22[41];
    if (v60 == 1)
    {
      sub_267B9F98C(v22[41], &qword_280229E20, &unk_267EFDCC0);
      v62 = 0xE300000000000000;
    }

    else
    {
      v63 = v22[31];
      v64 = v22[32];
      v65 = v22[41];
      v13 = sub_267EF2A98();
      v62 = v66;
      (*(v64 + 8))(v61, v63);
    }

    v67 = sub_267BA33E8(v13, v62, v162);

    *(v14 + 14) = v67;
    _os_log_impl(&dword_267B93000, v11, v12, "#ClientAction+Utilities converting file to attachment: typeIdentifier=%s, fileURL=%s", v14, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();

    v10 = v157;
    v0 = v158;
  }

  else
  {
  }

  v68 = [v10 fileURL];
  v69 = v0[39];
  v70 = v0[31];
  if (!v68)
  {
    __swift_storeEnumTagSinglePayload(v0[39], 1, 1, v0[31]);
    sub_267B9F98C(v69, &qword_280229E20, &unk_267EFDCC0);
    v81 = sub_267EF89F8();
    v82 = sub_267EF95D8();
    if (os_log_type_enabled(v81, v82))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_23_7(&dword_267B93000, v83, v82, "#ClientAction+Utilities data-only INFile, saving to temporary file");
      OUTLINED_FUNCTION_42_0();
    }

    v84 = v0[36];

    sub_267CF242C(v10, v84);
    v98 = v0[36];
    sub_267BA9F38(0, &unk_28022AE20, 0x277CD3C08);
    v99 = [v10 filename];
    v100 = sub_267EF9028();
    v102 = v101;

    v103 = sub_267E761B0(v10);
    v105 = sub_267E0C800(v98, v100, v102, v103, v104);
    v0[18] = &unk_2878ED498;
    if (!swift_dynamicCastObjCProtocolConditional())
    {
      v31 = sub_267EF89F8();
      v133 = sub_267EF95E8();
      if (os_log_type_enabled(v31, v133))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_23_7(&dword_267B93000, v134, v133, "#ClientAction+Utilities INFile is not INEnumerable, this is unexpected");
        OUTLINED_FUNCTION_42_0();
      }

      goto LABEL_18;
    }

    v158 = v0;
    v106 = v105;
    v107 = sub_267EF89F8();
    v108 = sub_267EF95D8();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = OUTLINED_FUNCTION_48();
      v110 = swift_slowAlloc();
      v162[0] = v110;
      *v109 = 136315138;
      v111 = [v106 &off_279C2E6F8];
      v157 = v10;
      if (v111)
      {
        v112 = v111;
        v113 = v158;
        v114 = *(v158 + 296);
        sub_267EF2B48();

        v115 = 0;
      }

      else
      {
        v115 = 1;
        v113 = v158;
      }

      v135 = v113[38];
      v136 = v113[31];
      __swift_storeEnumTagSinglePayload(v113[37], v115, 1, v136);
      v137 = OUTLINED_FUNCTION_61_0();
      sub_267BBE1D0(v137, v138, v139, v140);
      if (__swift_getEnumTagSinglePayload(v135, 1, v136) == 1)
      {
        v141 = 7104878;
        sub_267B9F98C(v113[38], &qword_280229E20, &unk_267EFDCC0);
        v142 = 0xE300000000000000;
      }

      else
      {
        v161 = v110;
        v143 = v113[31];
        v144 = v113[32];
        v141 = sub_267EF2B68();
        v142 = v145;
        v146 = *(v144 + 8);
        v147 = OUTLINED_FUNCTION_66();
        v148(v147);
        v110 = v161;
      }

      v149 = sub_267BA33E8(v141, v142, v162);

      *(v109 + 4) = v149;
      _os_log_impl(&dword_267B93000, v107, v108, "#ClientAction+Utilities issuing sandbox extension to path %s", v109, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v110);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();

      v10 = v157;
    }

    else
    {
    }

    INIssueSandboxExtensionsForFileURLEnumerable();
    v160 = [objc_opt_self() attachmentWithFile_];

    v0 = v158;
LABEL_21:
    OUTLINED_FUNCTION_8_14();
    v45 = v0[33];
    v46 = v0[34];
    OUTLINED_FUNCTION_3_17();

    OUTLINED_FUNCTION_17_8(v47, v48, v49, v50, v51, v52, v53, v54, v151, v152, v153, v154, v155, v156, v157, v158, v160);
    OUTLINED_FUNCTION_93();

    __asm { BRAA            X2, X16 }
  }

  v71 = v68;
  v72 = v0[39];
  sub_267EF2B48();

  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v70);
  sub_267B9F98C(v69, &qword_280229E20, &unk_267EFDCC0);
  v76 = [v10 itemProvider];
  v0[45] = v76;
  if (v76)
  {
    v77 = v76;
    v78 = v0[26];
    v79 = v0[27];
    sub_267E761B0(v10);
    sub_267EF8828();
    if (__swift_getEnumTagSinglePayload(v78, 1, v79) == 1)
    {
      v80 = v0[26];

      sub_267B9F98C(v80, &qword_280229E18, &unk_267F0D0C0);
    }

    else
    {
      v85 = v0[29];
      v86 = v0[27];
      v87 = v0[28];
      (*(v87 + 32))(v0[30], v0[26], v86);
      sub_267EF8798();
      v88 = sub_267EF8808();
      v89 = *(v87 + 8);
      v0[46] = v89;
      v0[47] = (v87 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v89(v85, v86);
      if (v88)
      {
        v90 = sub_267EF89F8();
        v91 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_10_2(v91))
        {
          v92 = OUTLINED_FUNCTION_32();
          *v92 = 0;
          _os_log_impl(&dword_267B93000, v90, v85, "#ClientAction+Utilities type identifier conforming to URL, extracting URL from file", v92, 2u);
          OUTLINED_FUNCTION_32_0();
        }

        v93 = swift_task_alloc();
        v0[48] = v93;
        *(v93 + 16) = v77;
        v94 = swift_task_alloc();
        v0[49] = v94;
        *v94 = v0;
        v94[1] = sub_267C7E560;
        v95 = v0[35];
        OUTLINED_FUNCTION_93();

        __asm { BR              X3 }
      }

      v89(v0[30], v0[27]);
    }
  }

  v116 = sub_267E761B0(v10);
  if (!v117)
  {
LABEL_54:
    v160 = [objc_opt_self() attachmentWithFile_];

    goto LABEL_21;
  }

  if (v116 == 0xD00000000000001BLL && v117 == 0x8000000267F14000)
  {
  }

  else
  {
    v119 = sub_267EF9EA8();

    if ((v119 & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  v120 = v10;
  v121 = sub_267EF89F8();
  v122 = sub_267EF95D8();
  if (os_log_type_enabled(v121, v122))
  {
    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_23_7(&dword_267B93000, v123, v122, "#ClientAction+Utilities loading image representation for live photo bundle");
    OUTLINED_FUNCTION_42_0();
  }

  v125 = v0[28];
  v124 = v0[29];
  v126 = v0[27];
  v127 = v0[25];

  sub_267EF87D8();
  v0[51] = sub_267EF8768();
  v0[52] = v128;
  (*(v125 + 8))(v124, v126);
  v129 = sub_267EF8FF8();
  v0[53] = v129;
  v0[2] = v0;
  v0[7] = v127;
  v0[3] = sub_267C7E7F8;
  v130 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280229EA0, &qword_267EFF998);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_267C7F290;
  v0[13] = &block_descriptor_6;
  v0[14] = v130;
  [v120 loadFileRepresentationWithType:v129 completion:v0 + 10];
  OUTLINED_FUNCTION_93();

  return MEMORY[0x282200938](v131);
}

uint64_t sub_267C7E560()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v9 = *v1;
  *(*v1 + 400) = v0;

  if (!v0)
  {
    v4 = *(v2 + 384);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C7E7F8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 432) = v3;
  if (v3)
  {
    v4 = *(v1 + 416);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C7EB9C()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 384);
  v3 = *(v0 + 352);

  v4 = v1;
  v5 = sub_267EF89F8();
  v6 = sub_267EF95E8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 400);
  v9 = *(v0 + 360);
  v10 = *(v0 + 344);
  if (v7)
  {
    v11 = OUTLINED_FUNCTION_48();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v15, v16, "#ClientAction+Utilities failed to extract URL from file: %@");
    sub_267B9F98C(v12, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();

    v17 = v5;
    v5 = v10;
  }

  else
  {

    v17 = v10;
  }

  v18 = *(v0 + 376);
  (*(v0 + 368))(*(v0 + 240), *(v0 + 216));
  v20 = *(v0 + 328);
  v19 = *(v0 + 336);
  v22 = *(v0 + 312);
  v21 = *(v0 + 320);
  v24 = *(v0 + 296);
  v23 = *(v0 + 304);
  v25 = *(v0 + 280);
  v26 = *(v0 + 288);
  v28 = *(v0 + 264);
  v27 = *(v0 + 272);
  v31 = *(v0 + 240);
  v32 = *(v0 + 232);
  v33 = *(v0 + 208);
  v34 = *(v0 + 200);
  v35 = *(v0 + 192);
  v36 = *(v0 + 184);
  v37 = *(v0 + 176);

  v29 = *(v0 + 8);

  return v29(0);
}

uint64_t sub_267C7EDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  v22 = v20[53];
  v21 = v20[54];
  v23 = v20[44];
  swift_willThrow();

  v24 = v21;
  v25 = sub_267EF89F8();
  v26 = sub_267EF95E8();

  v27 = os_log_type_enabled(v25, v26);
  v28 = v20[54];
  v29 = v20[43];
  if (v27)
  {
    v30 = OUTLINED_FUNCTION_48();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    v32 = v28;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 4) = v33;
    *v31 = v33;
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v34, v35, "#ClientAction+Utilities failed to load image representation for live photo bundle: %@");
    sub_267B9F98C(v31, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  v37 = v20[41];
  v36 = v20[42];
  v39 = v20[39];
  v38 = v20[40];
  v41 = v20[37];
  v40 = v20[38];
  v42 = v20[35];
  v43 = v20[36];
  v45 = v20[33];
  v44 = v20[34];
  OUTLINED_FUNCTION_3_17();

  v46 = v20[1];
  OUTLINED_FUNCTION_46_0();

  return v49(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void sub_267C7EFB0()
{
  OUTLINED_FUNCTION_48_0();
  v0 = sub_267EF8D28();
  v1 = OUTLINED_FUNCTION_58(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_26();
  v6 = sub_267EF8D48();
  v7 = OUTLINED_FUNCTION_58(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_0();
  v14 = (v13 - v12);
  v15 = sub_267EF8CE8();
  v16 = OUTLINED_FUNCTION_58(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_0();
  v21 = OUTLINED_FUNCTION_13_11();
  v22(v21);
  v23 = v9[11];
  v24 = OUTLINED_FUNCTION_16_8();
  if (v25(v24) == *MEMORY[0x277D72A58])
  {
    v26 = v9[12];
    v27 = OUTLINED_FUNCTION_16_8();
    v28(v27);
    v29 = *v14;
    swift_projectBox();
    v30 = OUTLINED_FUNCTION_7_15(v3);
    v31(v30);
    v32 = v3[11];
    v33 = OUTLINED_FUNCTION_66();
    if (v34(v33) == *MEMORY[0x277D72998])
    {
      v35 = v3[12];
      v36 = OUTLINED_FUNCTION_66();
      v37(v36);
      v38 = OUTLINED_FUNCTION_19_8();
      v39(v38);

      sub_267EF8CD8();
      v40 = *(v18 + 8);
      v41 = OUTLINED_FUNCTION_46_2();
      v42(v41);
    }

    else
    {
      v46 = v3[1];
      v47 = OUTLINED_FUNCTION_66();
      v48(v47);
    }
  }

  else
  {
    v43 = v9[1];
    v44 = OUTLINED_FUNCTION_16_8();
    v45(v44);
  }

  OUTLINED_FUNCTION_47();
}

void sub_267C7F228()
{
  sub_267EF2BA8();
  sub_267C7FCD4();
  v0 = sub_267EF9608();
}

uint64_t sub_267C7F290(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E10, &unk_267F0DF70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - v14;
  v16 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v17 = a4;

    return sub_267E98204(v16, v17);
  }

  else
  {
    if (a2)
    {
      sub_267EF2B48();
      v19 = sub_267EF2BA8();
      v20 = 0;
    }

    else
    {
      v19 = sub_267EF2BA8();
      v20 = 1;
    }

    __swift_storeEnumTagSinglePayload(v11, v20, 1, v19);
    sub_267BBE1D0(v11, v15, &qword_280229E20, &unk_267EFDCC0);
    v15[*(v12 + 48)] = a3;
    return sub_267E92A84(v16, v15);
  }
}

uint64_t sub_267C7F434@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_267EF7398();
  v3 = OUTLINED_FUNCTION_58(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_0();
  v9 = OUTLINED_FUNCTION_11_14(v8);
  v10(v9);
  v11 = *(v5 + 88);
  v12 = OUTLINED_FUNCTION_19();
  v14 = v13(v12);
  if (v14 == *MEMORY[0x277D1C658])
  {
    v15 = *MEMORY[0x277D56010];
    v16 = sub_267EF6A18();
    OUTLINED_FUNCTION_22(v16);
    return (*(v17 + 104))(a1, v15);
  }

  else
  {
    v19 = v14;
    v20 = *MEMORY[0x277D1C650];
    v21 = sub_267EF6A18();
    OUTLINED_FUNCTION_22(v21);
    v23 = *(v22 + 104);
    if (v19 == v20)
    {
      return v23(a1, *MEMORY[0x277D56008]);
    }

    else
    {
      v23(a1, *MEMORY[0x277D56018]);
      v24 = *(v5 + 8);
      v25 = OUTLINED_FUNCTION_19();
      return v26(v25);
    }
  }
}

uint64_t sub_267C7F5C4()
{
  v2 = sub_267EF8D28();
  v3 = OUTLINED_FUNCTION_58(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_26();
  v8 = sub_267EF8D48();
  v9 = OUTLINED_FUNCTION_58(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_0();
  v15 = OUTLINED_FUNCTION_12_9(v14);
  v16(v15);
  v17 = v11[11];
  v18 = OUTLINED_FUNCTION_46_2();
  if (v19(v18) == *MEMORY[0x277D72A58])
  {
    v20 = v11[12];
    v21 = OUTLINED_FUNCTION_46_2();
    v22(v21);
    v23 = *v1;
    swift_projectBox();
    v24 = OUTLINED_FUNCTION_7_15(v5);
    v25(v24);
    v26 = v5[11];
    v27 = OUTLINED_FUNCTION_66();
    if (v28(v27) == *MEMORY[0x277D729B8])
    {
      v29 = v5[12];
      v30 = OUTLINED_FUNCTION_66();
      v31(v30);
      v32 = *v0;
      v33 = v0[1];
    }

    else
    {
      v37 = v5[1];
      v38 = OUTLINED_FUNCTION_66();
      v39(v38);
    }
  }

  else
  {
    v34 = v11[1];
    v35 = OUTLINED_FUNCTION_46_2();
    v36(v35);
  }

  return OUTLINED_FUNCTION_61_0();
}

void sub_267C7F7B8()
{
  OUTLINED_FUNCTION_48_0();
  v0 = sub_267EF8D28();
  v1 = OUTLINED_FUNCTION_58(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_26();
  v6 = sub_267EF8D48();
  v7 = OUTLINED_FUNCTION_58(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_0();
  v14 = (v13 - v12);
  v15 = sub_267EF8CB8();
  v16 = OUTLINED_FUNCTION_58(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_0();
  v21 = OUTLINED_FUNCTION_13_11();
  v22(v21);
  v23 = v9[11];
  v24 = OUTLINED_FUNCTION_16_8();
  if (v25(v24) == *MEMORY[0x277D72A58])
  {
    v26 = v9[12];
    v27 = OUTLINED_FUNCTION_16_8();
    v28(v27);
    v29 = *v14;
    swift_projectBox();
    v30 = OUTLINED_FUNCTION_7_15(v3);
    v31(v30);
    v32 = v3[11];
    v33 = OUTLINED_FUNCTION_66();
    if (v34(v33) == *MEMORY[0x277D72970])
    {
      v35 = v3[12];
      v36 = OUTLINED_FUNCTION_66();
      v37(v36);
      v38 = OUTLINED_FUNCTION_19_8();
      v39(v38);

      sub_267EF7C38();
      sub_267EF8CA8();
      sub_267EF7C08();
      v40 = *(v18 + 8);
      v41 = OUTLINED_FUNCTION_46_2();
      v42(v41);
    }

    else
    {
      v46 = v3[1];
      v47 = OUTLINED_FUNCTION_66();
      v48(v47);
    }
  }

  else
  {
    v43 = v9[1];
    v44 = OUTLINED_FUNCTION_16_8();
    v45(v44);
  }

  OUTLINED_FUNCTION_47();
}

id sub_267C7FA44()
{
  v2 = sub_267EF8D28();
  v3 = OUTLINED_FUNCTION_58(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_26();
  v8 = sub_267EF8D48();
  v9 = OUTLINED_FUNCTION_58(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_0();
  v15 = OUTLINED_FUNCTION_12_9(v14);
  v16(v15);
  v17 = v11[11];
  v18 = OUTLINED_FUNCTION_46_2();
  if (v19(v18) == *MEMORY[0x277D72A58])
  {
    v20 = v11[12];
    v21 = OUTLINED_FUNCTION_46_2();
    v22(v21);
    v23 = *v1;
    swift_projectBox();
    v24 = OUTLINED_FUNCTION_7_15(v5);
    v25(v24);
    v26 = v5[11];
    v27 = OUTLINED_FUNCTION_66();
    if (v28(v27) == *MEMORY[0x277D729B8])
    {
      v29 = v5[12];
      v30 = OUTLINED_FUNCTION_66();
      v31(v30);
      v32 = *v0;
      v33 = v0[1];

      sub_267BA9F38(0, &qword_280229ED0, 0x277CD4188);
      OUTLINED_FUNCTION_61_0();
      return sub_267C7FC58();
    }

    v38 = v5[1];
    v39 = OUTLINED_FUNCTION_66();
    v40(v39);
  }

  else
  {
    v35 = v11[1];
    v36 = OUTLINED_FUNCTION_46_2();
    v37(v36);
  }

  return 0;
}

id sub_267C7FC58()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_267EF8FF8();

  v2 = [v0 initWithSpokenPhrase_];

  return v2;
}

unint64_t sub_267C7FCD4()
{
  result = qword_280229EB0;
  if (!qword_280229EB0)
  {
    sub_267EF2BA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229EB0);
  }

  return result;
}

uint64_t sub_267C7FD8C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_267EFC020;
  *(v2 + 32) = 7368801;
  *(v2 + 40) = 0xE300000000000000;
  if (a1)
  {
    v3 = type metadata accessor for MessagesApp(0);
    v4 = a1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v4;
  *(v2 + 72) = v3;

  sub_267EF78D8();
}

uint64_t sub_267C7FEF4()
{
  v0 = sub_267EF9EE8();

  if (v0 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_267C7FF48(char a1)
{
  result = 0x7974697669746361;
  switch(a1)
  {
    case 1:
      result = 0x4373736572646461;
      break;
    case 2:
      result = 0x696A6F6D696E61;
      break;
    case 3:
      result = 0x7261646E656C6163;
      break;
    case 4:
      result = 0x546C617469676964;
      break;
    case 5:
      result = 0x46636972656E6567;
      break;
    case 6:
      result = 0x4D636972656E6567;
      break;
    case 7:
      result = 0x74697277646E6168;
      break;
    case 8:
      result = 0x6567616D69;
      break;
    case 9:
      result = 0x6E6F697461636F6CLL;
      break;
    case 10:
      result = 0x72656B63697473;
      break;
    case 11:
      result = 0x6F65646976;
      break;
    case 12:
      result = 0x615074656C6C6177;
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0x646574616D696E61;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 1819045744;
      break;
    case 17:
      result = 0x52636972656E6567;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267C8019C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267C7FEF4();
  *a2 = result;
  return result;
}

unint64_t sub_267C801CC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_267C7FF48(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_267C80200(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 66))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_267C80240(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CountableComponentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CountableComponentType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267C804BC()
{
  result = qword_280229EF0;
  if (!qword_280229EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229EF0);
  }

  return result;
}

uint64_t sub_267C80510()
{
  OUTLINED_FUNCTION_12();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[13] = v5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v7 = sub_267EF79B8();
  v1[19] = v7;
  v8 = *(v7 - 8);
  v1[20] = v8;
  v9 = *(v8 + 64) + 15;
  v1[21] = swift_task_alloc();
  v10 = sub_267EF2E38();
  v1[22] = v10;
  v11 = *(v10 - 8);
  v1[23] = v11;
  v12 = *(v11 + 64) + 15;
  v1[24] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267C80660()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 8);
  *(v0 + 200) = v2;
  v3 = *(v1 + 48);
  if (v3)
  {
    v5 = *(v0 + 184);
    v4 = *(v0 + 192);
    v6 = *(v0 + 176);
    v7 = *(v0 + 104);
    v8 = v7[5];
    v9 = v7[6];
    __swift_project_boxed_opaque_existential_0(v7 + 2, v8);
    (*(v9 + 8))(v8, v9);
    v10 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    sub_267EF3B68();
    v11 = v7[52];

    v3 = sub_267BC20F4(v4, 0, 0, v11, v3);

    (*(v5 + 8))(v4, v6);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v1 = *(v0 + 136);
  }

  *(v0 + 208) = v3;
  v12 = *(v0 + 168);
  sub_267C7FF48(*v1);
  sub_267EF90F8();

  if (*(v1 + 64))
  {
    v13 = 1;
  }

  else
  {
    v14 = *(v0 + 144);
    INMessageEffectType.description.getter(*(*(v0 + 136) + 56));
    sub_267EF90F8();

    v13 = 0;
  }

  v15 = *(v0 + 136);
  v16 = *(v0 + 104);
  __swift_storeEnumTagSinglePayload(*(v0 + 144), v13, 1, *(v0 + 152));
  sub_267DBAEAC();
  *(v0 + 216) = v17;
  if (*(v16 + 88))
  {
    OUTLINED_FUNCTION_10(&unk_267F08D08);
    v35 = v18;
    v19 = swift_task_alloc();
    *(v0 + 224) = v19;
    *v19 = v0;
    v19[1] = sub_267C8097C;
    v20 = *(v0 + 136);
    v21 = *(v0 + 104);
    v22 = *(v0 + 112);

    return v35(v20, v21, v22);
  }

  else
  {
    v24 = v17;
    v25 = *(v0 + 168);
    v26 = *(v0 + 144);
    v33 = *(v0 + 136);
    v27 = v2;
    v28 = *(v0 + 120);
    v36 = *(v0 + 104);
    v29 = __swift_project_boxed_opaque_existential_0(*(v0 + 128), *(*(v0 + 128) + 24));
    v34 = *v28;
    sub_267BB8364();
    v30 = swift_task_alloc();
    *(v0 + 264) = v30;
    v30[1].i64[0] = v28;
    v30[1].i64[1] = v25;
    v30[2].i64[0] = v27;
    v30[2].i64[1] = v3;
    v30[3].i64[0] = v26;
    v30[3].i64[1] = v24;
    v30[4] = vextq_s8(v36, v36, 8uLL);
    v30[5].i64[0] = v33;
    v31 = *v29;
    v32 = swift_task_alloc();
    *(v0 + 272) = v32;
    *v32 = v0;
    v32[1] = sub_267C80E98;
    OUTLINED_FUNCTION_26_8();

    return sub_267D42B24();
  }
}

uint64_t sub_267C8097C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 224);
  *v2 = *v0;
  *(v1 + 232) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267C80A64()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v13 = *(v0 + 200);
  v3 = *(v0 + 168);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 104);
  v8 = __swift_project_boxed_opaque_existential_0(*(v0 + 128), *(*(v0 + 128) + 24));
  v14 = *v6;
  sub_267BB8364();
  v9 = swift_task_alloc();
  *(v0 + 240) = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v3;
  *(v9 + 32) = v13;
  *(v9 + 48) = v5;
  *(v9 + 56) = v2;
  *(v9 + 64) = v1;
  *(v9 + 72) = v7;
  *(v9 + 80) = v4;
  v10 = *v8;
  v11 = swift_task_alloc();
  *(v0 + 248) = v11;
  *v11 = v0;
  v11[1] = sub_267C80B94;
  OUTLINED_FUNCTION_26_8();

  return sub_267D4530C();
}

uint64_t sub_267C80B94()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[7] = v1;
  v2[8] = v4;
  v2[9] = v0;
  v6 = *(v5 + 248);
  v7 = *(v5 + 240);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v10 + 256) = v0;

  if (v0)
  {
    v11 = sub_267C80DCC;
  }

  else
  {
    v11 = sub_267C80CB4;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_267C80CB4()
{
  v4 = v0[29];

  v5 = v0[8];
  v6 = v0[13];
  v7 = *(v6 + 416);
  if (v7)
  {
    v1 = v0[27];
    if (*(v6 + 426))
    {
      v8 = v0[27];
    }

    else
    {
      v10 = *(v7 + 168);

      sub_267C38238();
    }
  }

  else
  {
    v9 = v0[27];
  }

  OUTLINED_FUNCTION_31_7();
  sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
  (*(v3 + 8))(v7, v1);

  v11 = OUTLINED_FUNCTION_55_1();

  return v12(v11);
}

uint64_t sub_267C80DCC()
{
  v5 = *(v0 + 232);

  v6 = *(v0 + 256);
  OUTLINED_FUNCTION_29_7();

  sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
  (*(v4 + 8))(v1, v2);

  OUTLINED_FUNCTION_17();

  return v7();
}

uint64_t sub_267C80E98()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[10] = v1;
  v2[11] = v4;
  v2[12] = v0;
  v6 = *(v5 + 272);
  v7 = *(v5 + 264);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v10 + 280) = v0;

  if (v0)
  {
    v11 = sub_267C810C8;
  }

  else
  {
    v11 = sub_267C80FB8;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_267C80FB8()
{
  v4 = v0[11];
  v5 = v0[13];
  v6 = *(v5 + 416);
  if (v6)
  {
    v1 = v0[27];
    if (*(v5 + 426))
    {
      v7 = v0[27];
    }

    else
    {
      v9 = *(v6 + 168);

      sub_267C38238();
    }
  }

  else
  {
    v8 = v0[27];
  }

  OUTLINED_FUNCTION_31_7();
  sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
  (*(v3 + 8))(v6, v1);

  v10 = OUTLINED_FUNCTION_55_1();

  return v11(v10);
}

uint64_t sub_267C810C8()
{
  v5 = *(v0 + 280);
  OUTLINED_FUNCTION_29_7();

  sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
  (*(v4 + 8))(v1, v2);

  OUTLINED_FUNCTION_17();

  return v6();
}

uint64_t sub_267C8118C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v15;
  v8[16] = v16;
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  v9 = sub_267EF8248();
  v8[17] = v9;
  v10 = *(v9 - 8);
  v8[18] = v10;
  v11 = *(v10 + 64) + 15;
  v8[19] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C812CC, 0, 0);
}

void sub_267C812CC()
{
  v2 = *(v0 + 192);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  SpokenGenericCountableComponentParameters = type metadata accessor for SearchForMessagesReadSpokenGenericCountableComponentParameters(0);
  *(v0 + 200) = SpokenGenericCountableComponentParameters;
  v6 = SpokenGenericCountableComponentParameters[9];
  sub_267B9F98C(v3 + v6, &unk_28022AE30, &qword_267EFC0B0);
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters();
  v8 = ComponentPatternCommonParameters[5];
  v9 = sub_267EF79B8();
  *(v0 + 208) = v9;
  OUTLINED_FUNCTION_22(v9);
  (*(v10 + 16))(v3 + v6, v4 + v8, v9);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v9);
  OUTLINED_FUNCTION_22_9();
  v14 = sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  v15 = *(v0 + 192);
  v47 = *(v0 + 184);
  OUTLINED_FUNCTION_1_27();
  OUTLINED_FUNCTION_24_5(SpokenGenericCountableComponentParameters[14]);
  *(v0 + 32) = *(v1 + ComponentPatternCommonParameters[7]);
  OUTLINED_FUNCTION_23_0();
  v16 = *(v0 + 184);
  v48 = *(v0 + 176);
  OUTLINED_FUNCTION_1_27();
  OUTLINED_FUNCTION_24_5(SpokenGenericCountableComponentParameters[15]);
  *(v0 + 40) = *(v1 + ComponentPatternCommonParameters[8]);
  OUTLINED_FUNCTION_23_0();
  v17 = *(v0 + 176);
  v49 = *(v0 + 168);
  OUTLINED_FUNCTION_1_27();
  OUTLINED_FUNCTION_24_5(SpokenGenericCountableComponentParameters[17]);
  *(v0 + 48) = *(v1 + ComponentPatternCommonParameters[9]);
  OUTLINED_FUNCTION_23_0();
  v45 = *(v0 + 168);
  v46 = *(v0 + 56);
  OUTLINED_FUNCTION_2_1();
  sub_267BD3DDC(v45, v46 + SpokenGenericCountableComponentParameters[19]);
  OUTLINED_FUNCTION_11_15();
  sub_267B9F98C(v46 + v9, &unk_28022AE30, &qword_267EFC0B0);
  v18 = OUTLINED_FUNCTION_21_6();
  v19(v18);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v9);
  OUTLINED_FUNCTION_20_5();
  v23 = SpokenGenericCountableComponentParameters[16];
  v24 = *(v46 + v23);

  *(v46 + v23) = v14;
  sub_267BE855C(ComponentPatternCommonParameters, v46 + SpokenGenericCountableComponentParameters[10]);
  v25 = SpokenGenericCountableComponentParameters[6];
  v26 = *(v46 + v25);

  *(v46 + v25) = v6;
  v27 = SpokenGenericCountableComponentParameters[18];
  v28 = *(v46 + v27);

  *(v46 + v27) = v45;
  v29 = sub_267EF7998();
  *(v0 + 248) = OUTLINED_FUNCTION_28_13(v29, v30);
  v31 = sub_267BDAF74();
  *(v0 + 264) = v31 & 1;
  if (v31)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v32 = swift_task_alloc();
    *(v0 + 256) = v32;
    *v32 = v0;
    v32[1] = sub_267C8182C;
    OUTLINED_FUNCTION_15_3();

    __asm { BR              X2 }
  }

  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_28_4();
  sub_267EF8348();
  if (v46)
  {
    v35 = *(v0 + 184);
    v36 = *(v0 + 192);
    OUTLINED_FUNCTION_3_18();
    (*(v37 + 8))(v14);
  }

  else
  {
    v38 = OUTLINED_FUNCTION_0_17();
    v39(v38);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_18_3(v40, v41, v42);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15_3();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267C8182C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 256);
  *v2 = *v0;
  *(v1 + 265) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267C81914()
{
  v1 = *(v0 + 265);
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  v20 = *(v0 + 216);
  v8 = *(v0 + 152);
  v7 = *(v0 + 160);
  v9 = *(v0 + 136);
  sub_267EF7C18();
  sub_267EF8238();
  sub_267EF8348();
  if (v20)
  {
    v10 = *(v0 + 184);
    v11 = *(v0 + 192);
    OUTLINED_FUNCTION_3_18();
    (*(v12 + 8))(v1);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_0_17();
    v15(v14);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_18_3(v16, v17, v18);
  }

  OUTLINED_FUNCTION_17();

  return v13();
}

uint64_t sub_267C81AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v15;
  v8[16] = v16;
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  v9 = sub_267EF8248();
  v8[17] = v9;
  v10 = *(v9 - 8);
  v8[18] = v10;
  v11 = *(v10 + 64) + 15;
  v8[19] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C81BF0, 0, 0);
}

void sub_267C81BF0()
{
  v2 = *(v0 + 192);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  GenericCountableComponentParameters = type metadata accessor for SearchForMessagesReadGenericCountableComponentParameters(0);
  *(v0 + 200) = GenericCountableComponentParameters;
  v6 = GenericCountableComponentParameters[9];
  sub_267B9F98C(v3 + v6, &unk_28022AE30, &qword_267EFC0B0);
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters();
  v8 = ComponentPatternCommonParameters[5];
  v9 = sub_267EF79B8();
  *(v0 + 208) = v9;
  OUTLINED_FUNCTION_22(v9);
  (*(v10 + 16))(v3 + v6, v4 + v8, v9);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v9);
  OUTLINED_FUNCTION_22_9();
  v14 = sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  v15 = *(v0 + 192);
  v47 = *(v0 + 184);
  OUTLINED_FUNCTION_1_27();
  OUTLINED_FUNCTION_24_5(GenericCountableComponentParameters[15]);
  *(v0 + 32) = *(v1 + ComponentPatternCommonParameters[7]);
  OUTLINED_FUNCTION_23_0();
  v16 = *(v0 + 184);
  v48 = *(v0 + 176);
  OUTLINED_FUNCTION_1_27();
  OUTLINED_FUNCTION_24_5(GenericCountableComponentParameters[16]);
  *(v0 + 40) = *(v1 + ComponentPatternCommonParameters[8]);
  OUTLINED_FUNCTION_23_0();
  v17 = *(v0 + 176);
  v49 = *(v0 + 168);
  OUTLINED_FUNCTION_1_27();
  OUTLINED_FUNCTION_24_5(GenericCountableComponentParameters[18]);
  *(v0 + 48) = *(v1 + ComponentPatternCommonParameters[9]);
  OUTLINED_FUNCTION_23_0();
  v45 = *(v0 + 168);
  v46 = *(v0 + 56);
  OUTLINED_FUNCTION_2_1();
  sub_267BD3DDC(v45, v46 + GenericCountableComponentParameters[19]);
  OUTLINED_FUNCTION_11_15();
  sub_267B9F98C(v46 + v9, &unk_28022AE30, &qword_267EFC0B0);
  v18 = OUTLINED_FUNCTION_21_6();
  v19(v18);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v9);
  OUTLINED_FUNCTION_20_5();
  v23 = GenericCountableComponentParameters[17];
  v24 = *(v46 + v23);

  *(v46 + v23) = v14;
  sub_267BE855C(ComponentPatternCommonParameters, v46 + GenericCountableComponentParameters[11]);
  v25 = GenericCountableComponentParameters[6];
  v26 = *(v46 + v25);

  *(v46 + v25) = v6;
  v27 = GenericCountableComponentParameters[10];
  v28 = *(v46 + v27);

  *(v46 + v27) = v45;
  v29 = sub_267EF7998();
  *(v0 + 248) = OUTLINED_FUNCTION_28_13(v29, v30);
  v31 = sub_267BDAF74();
  *(v0 + 264) = v31 & 1;
  if (v31)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v32 = swift_task_alloc();
    *(v0 + 256) = v32;
    *v32 = v0;
    v32[1] = sub_267C82150;
    OUTLINED_FUNCTION_15_3();

    __asm { BR              X2 }
  }

  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_28_4();
  sub_267EF8348();
  if (v46)
  {
    v35 = *(v0 + 184);
    v36 = *(v0 + 192);
    OUTLINED_FUNCTION_3_18();
    (*(v37 + 8))(v14);
  }

  else
  {
    v38 = OUTLINED_FUNCTION_0_17();
    v39(v38);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_18_3(v40, v41, v42);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15_3();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267C82150()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 256);
  *v2 = *v0;
  *(v1 + 265) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_267C82238(uint64_t a1)
{
  v2 = v1;
  sub_267BE4994(a1, v19);
  if (!v20)
  {
    sub_267B9F98C(v19, &qword_280229910, &unk_267EFEB70);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  if (swift_dynamicCast())
  {
    memcpy(__dst, __src, 0x42uLL);
    v3 = *v1;
    v4 = __dst[0];
    v5 = sub_267C7FF48(v3);
    v7 = v6;
    if (v5 == sub_267C7FF48(v4) && v7 == v8)
    {
    }

    else
    {
      v10 = sub_267EF9EA8();

      if ((v10 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v11 = *(v2 + 6);
    v12 = __dst[6];
    if (v11)
    {
      if (!__dst[6])
      {
        goto LABEL_23;
      }

      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      v13 = v12;
      v14 = v11;
      v15 = sub_267EF9818();

      if ((v15 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (__dst[6])
    {
LABEL_23:
      sub_267C829D4(__dst);
      return;
    }

    if (v2[64])
    {
      if ((__dst[8] & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if ((__dst[8] & 1) != 0 || *(v2 + 7) != __dst[7])
    {
      goto LABEL_23;
    }

    v16 = *(v2 + 1);
    if (__OFADD__(v16, __dst[1]))
    {
      __break(1u);
    }

    else
    {
      *(v2 + 1) = v16 + __dst[1];
      sub_267BE22E4(__dst[2], v2 + 2);
      sub_267C829D4(__dst);
    }
  }
}

void *sub_267C82420()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t sub_267C82448()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t sub_267C82454()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_267C8248C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_267C824CC()
{
  memcpy((v1 + 16), v0, 0x42uLL);
  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = sub_267C82568;

  return sub_267C0FB00();
}

uint64_t sub_267C82568()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_14();
  v4 = *(v3 + 88);
  v5 = *v0;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_267C82658()
{
  memcpy((v1 + 16), v0, 0x42uLL);
  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = sub_267C8272C;

  return sub_267C80510();
}

uint64_t sub_267C8272C()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 88);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

unint64_t sub_267C82860(uint64_t a1)
{
  result = sub_267C82888();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_267C82888()
{
  result = qword_280229EF8;
  if (!qword_280229EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229EF8);
  }

  return result;
}

unint64_t sub_267C828DC(uint64_t a1)
{
  result = sub_267C82904();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_267C82904()
{
  result = qword_280229F00;
  if (!qword_280229F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229F00);
  }

  return result;
}

unint64_t sub_267C82958(uint64_t a1)
{
  result = sub_267C82980();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_267C82980()
{
  result = qword_280229F08;
  if (!qword_280229F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229F08);
  }

  return result;
}

uint64_t sub_267C82A04()
{
  OUTLINED_FUNCTION_35_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v9 = OUTLINED_FUNCTION_16_2(v1, v2, v3, v4, v5, v6, v7, v8, v18);

  return sub_267C81AB0(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_267C82AB4()
{
  OUTLINED_FUNCTION_35_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v9 = OUTLINED_FUNCTION_16_2(v1, v2, v3, v4, v5, v6, v7, v8, v18);

  return sub_267C8118C(v9, v10, v11, v12, v13, v14, v15, v16);
}

unint64_t sub_267C82B64()
{
  result = qword_280229F10;
  if (!qword_280229F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229F10);
  }

  return result;
}

void sub_267C82BE4()
{
  sub_267C82CB0();
  if (v0 <= 0x3F)
  {
    sub_267C82D18();
    if (v1 <= 0x3F)
    {
      sub_267C82D70();
      if (v2 <= 0x3F)
      {
        sub_267EF2BA8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_267C82CB0()
{
  if (!qword_280229F28)
  {
    sub_267BA9F38(255, &qword_28022BB60, 0x277CD3E90);
    v0 = sub_267EF9888();
    if (!v1)
    {
      atomic_store(v0, &qword_280229F28);
    }
  }
}

void sub_267C82D18()
{
  if (!qword_280229F30)
  {
    type metadata accessor for INMessageEffectType(255);
    v0 = sub_267EF9888();
    if (!v1)
    {
      atomic_store(v0, &qword_280229F30);
    }
  }
}

void sub_267C82D70()
{
  if (!qword_280229F38)
  {
    sub_267BA9F38(255, &qword_28022A350, 0x277CD3DE0);
    sub_267C82DE4();
    v0 = type metadata accessor for OrderedSet();
    if (!v1)
    {
      atomic_store(v0, &qword_280229F38);
    }
  }
}

unint64_t sub_267C82DE4()
{
  result = qword_280229F40;
  if (!qword_280229F40)
  {
    sub_267BA9F38(255, &qword_28022A350, 0x277CD3DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229F40);
  }

  return result;
}

uint64_t sub_267C82E68()
{
  OUTLINED_FUNCTION_12();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v5 = sub_267EF2E38();
  v1[19] = v5;
  v6 = *(v5 - 8);
  v1[20] = v6;
  v7 = *(v6 + 64) + 15;
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C82F28, 0, 0);
}

uint64_t sub_267C82F28()
{
  v1 = *(v0 + 144);
  v2 = *(v1 + 8);
  if (v2)
  {
    v4 = *(v0 + 160);
    v3 = *(v0 + 168);
    v5 = *(v0 + 152);
    v6 = *(v0 + 120);
    v7 = v6[6];
    __swift_project_boxed_opaque_existential_0(v6 + 2, v6[5]);
    v8 = *(v7 + 8);
    v9 = OUTLINED_FUNCTION_12_0();
    v10(v9);
    v11 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    OUTLINED_FUNCTION_12_0();
    sub_267EF3B68();
    v12 = v6[52];

    v2 = sub_267BC20F4(v3, 0, 0, v12, v2);

    (*(v4 + 8))(v3, v5);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    v1 = *(v0 + 144);
  }

  *(v0 + 176) = v2;
  v13 = *(v0 + 128);
  v14 = *(v0 + 120);
  v25 = __swift_project_boxed_opaque_existential_0(*(v0 + 136), *(*(v0 + 136) + 24));
  v15 = v14[6];
  __swift_project_boxed_opaque_existential_0(v14 + 2, v14[5]);
  v16 = *(v15 + 8);
  v17 = OUTLINED_FUNCTION_12_0();
  v18(v17);
  v19 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_12_0();
  sub_267EF3C48();
  v20 = *v13;
  sub_267BB8364();
  v21 = swift_task_alloc();
  *(v0 + 184) = v21;
  v21[2] = v2;
  v21[3] = v1;
  v21[4] = v14;
  v21[5] = v13;
  v22 = *v25;
  v23 = swift_task_alloc();
  *(v0 + 192) = v23;
  *v23 = v0;
  v23[1] = sub_267C83144;

  return sub_267D474E4();
}

uint64_t sub_267C83144()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v2[12] = v1;
  v2[13] = v4;
  v2[14] = v0;
  v5 = v2[24];
  v6 = v2[23];
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[25] = v0;

  if (v0)
  {
    v9 = sub_267C83330;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    v9 = sub_267C83280;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_267C83280()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[15];
  v2 = *(v1 + 416);
  if (v2 && (*(v1 + 426) & 1) == 0)
  {
    v3 = *(v2 + 168);

    sub_267C38238();
  }

  v4 = v0[13];
  v6 = v0[21];
  v5 = v0[22];

  v7 = v0[1];

  return v7(v4);
}

uint64_t sub_267C83330()
{
  OUTLINED_FUNCTION_12();
  v2 = v0[21];
  v1 = v0[22];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  OUTLINED_FUNCTION_17();
  v4 = v0[25];

  return v3();
}

uint64_t sub_267C8339C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = sub_267EF8248();
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v8 = *(v7 + 64) + 15;
  v5[19] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229F58, &unk_267EFFCF0) - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v11 = sub_267EF2E38();
  v5[22] = v11;
  v12 = *(v11 - 8);
  v5[23] = v12;
  v13 = *(v12 + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  SpokenSafetySessionComponentParameters = type metadata accessor for SearchForMessagesReadSpokenSafetySessionComponentParameters(0);
  v5[26] = SpokenSafetySessionComponentParameters;
  v15 = *(*(SpokenSafetySessionComponentParameters - 8) + 64) + 15;
  v5[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C8356C, 0, 0);
}

uint64_t sub_267C8356C()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v36 = *(v0 + 200);
  v40 = *(v0 + 168);
  v41 = *(v0 + 176);
  v4 = *(v0 + 120);
  v42 = *(v0 + 128);
  v5 = *(v0 + 104);
  v43 = *(v0 + 112);
  v44 = *(v0 + 184);
  v6 = *(v0 + 96);
  v7 = v2[16];
  v8 = *(v6 + v7);

  *(v6 + v7) = v5;
  v37 = *(type metadata accessor for SafetySessionComponent() + 36);
  v38 = *(v6 + v2[10]);
  v39 = *(v6 + v2[9]);
  v10 = v4[5];
  v9 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v10);
  (*(v9 + 8))(v10, v9);
  v11 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_15_10();
  sub_267EF3B68();
  v12 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v4[5]);
  v13 = *(v12 + 8);
  v14 = OUTLINED_FUNCTION_15_10();
  v15(v14);
  v16 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_15_10();
  sub_267EF3B68();
  sub_267EF2E28();
  v17 = *(v44 + 8);
  v17(v3, v41);
  v18 = sub_267BB8364();
  sub_267C83C4C((v43 + v37), v39, v38, v36, v40, v18 & 1, v1);
  sub_267B9FF34(v40, &qword_280229F58, &unk_267EFFCF0);
  v17(v36, v41);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_20_6(v2[13]);
  OUTLINED_FUNCTION_20_6(v2[7]);
  OUTLINED_FUNCTION_20_6(v2[17]);
  OUTLINED_FUNCTION_20_6(v2[20]);
  OUTLINED_FUNCTION_20_6(v2[12]);
  OUTLINED_FUNCTION_20_6(v2[18]);
  v19 = v42 + *(type metadata accessor for ReadComponentPatternCommonParameters() + 20);
  *(v0 + 224) = sub_267EF7998();
  *(v0 + 232) = v20;
  *(v0 + 240) = v4[12];
  *(v0 + 248) = sub_267DB3C90();
  v21 = sub_267BDAF74();
  *(v0 + 264) = v21 & 1;
  if (v21)
  {
    v22 = swift_task_alloc();
    *(v0 + 256) = v22;
    *v22 = v0;
    v22[1] = sub_267C839B8;

    return sub_267C8F96C(sub_267BDA6DC, 0);
  }

  else
  {
    v25 = *(v0 + 240);
    v24 = *(v0 + 248);
    v27 = *(v0 + 224);
    v26 = *(v0 + 232);
    v29 = *(v0 + 152);
    v28 = *(v0 + 160);
    v30 = *(v0 + 136);
    sub_267EF7C18();
    sub_267EF8238();
    sub_267EF8348();
    v31 = *(v0 + 216);
    v32 = OUTLINED_FUNCTION_10_16();
    v33(v32);
    sub_267C856C4(v31);
    v34 = sub_267EF79B8();
    OUTLINED_FUNCTION_19_9(v34);

    OUTLINED_FUNCTION_17();

    return v35();
  }
}

uint64_t sub_267C839B8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = *(v1 + 256);
  v6 = *v0;
  *(v2 + 265) = v4;

  return MEMORY[0x2822009F8](sub_267C83AB0, 0, 0);
}

uint64_t sub_267C83AB0()
{
  v1 = *(v0 + 265);
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  v8 = *(v0 + 152);
  v7 = *(v0 + 160);
  v9 = *(v0 + 136);
  sub_267EF7C18();
  sub_267EF8238();
  sub_267EF8348();
  v10 = *(v0 + 216);
  v11 = OUTLINED_FUNCTION_10_16();
  v12(v11);
  sub_267C856C4(v10);
  v13 = sub_267EF79B8();
  OUTLINED_FUNCTION_19_9(v13);

  OUTLINED_FUNCTION_17();

  return v14();
}

uint64_t sub_267C83C4C@<X0>(uint64_t *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v183 = a5;
  v181 = a4;
  v191 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_6();
  v193 = v13;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v14);
  v178 = &v175 - v15;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v16);
  v184 = &v175 - v17;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v18);
  v190 = &v175 - v19;
  v20 = sub_267EF2CC8();
  v21 = OUTLINED_FUNCTION_58(v20);
  v186 = v22;
  v187 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6();
  v182 = v25;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v26);
  v185 = &v175 - v27;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  v28 = *(*(v176 - 8) + 64);
  MEMORY[0x28223BE20](v176);
  OUTLINED_FUNCTION_6();
  v180 = v29;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v30);
  v175 = &v175 - v31;
  v32 = sub_267EF2BA8();
  v33 = OUTLINED_FUNCTION_58(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v175 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(a7, 1, 1, v38);
  SpokenSafetySessionComponentParameters = type metadata accessor for SearchForMessagesReadSpokenSafetySessionComponentParameters(0);
  OUTLINED_FUNCTION_1_28(SpokenSafetySessionComponentParameters[5]);
  OUTLINED_FUNCTION_1_28(SpokenSafetySessionComponentParameters[6]);
  v189 = SpokenSafetySessionComponentParameters[7];
  OUTLINED_FUNCTION_1_28(v189);
  v40 = SpokenSafetySessionComponentParameters[12];
  __swift_storeEnumTagSinglePayload(v40 + a7, 1, 1, v38);
  v192 = SpokenSafetySessionComponentParameters[13];
  OUTLINED_FUNCTION_1_28(v192);
  OUTLINED_FUNCTION_1_28(SpokenSafetySessionComponentParameters[14]);
  OUTLINED_FUNCTION_1_28(SpokenSafetySessionComponentParameters[15]);
  v177 = SpokenSafetySessionComponentParameters[17];
  OUTLINED_FUNCTION_1_28(v177);
  v179 = SpokenSafetySessionComponentParameters[18];
  OUTLINED_FUNCTION_1_28(v179);
  OUTLINED_FUNCTION_1_28(SpokenSafetySessionComponentParameters[19]);
  v188 = SpokenSafetySessionComponentParameters[20];
  OUTLINED_FUNCTION_1_28(v188);
  OUTLINED_FUNCTION_1_28(SpokenSafetySessionComponentParameters[21]);
  *(a7 + SpokenSafetySessionComponentParameters[8]) = 0;
  *(a7 + SpokenSafetySessionComponentParameters[9]) = a2;
  *(a7 + SpokenSafetySessionComponentParameters[10]) = a3;
  *(a7 + SpokenSafetySessionComponentParameters[11]) = 0;
  *(a7 + SpokenSafetySessionComponentParameters[16]) = 0;
  *(a7 + SpokenSafetySessionComponentParameters[22]) = a6;
  v41 = objc_opt_self();
  v42 = v194 + *(type metadata accessor for SafetySessionComponent() + 36);
  v43 = sub_267EF2AF8();
  v44 = [v41 messageTypeFromURL_];

  if (v44 == 3)
  {
    v194 = v40;
    sub_267BA9F38(0, &qword_280229F60, 0x277D4AB10);
    v94 = OUTLINED_FUNCTION_6_15();
    v95(v94);
    result = sub_267D60CBC(v37);
    if (result)
    {
      v96 = result;
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v97 = sub_267EF8A08();
      __swift_project_value_buffer(v97, qword_280240FB0);
      v98 = v96;
      v99 = sub_267EF89F8();
      v100 = sub_267EF95D8();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = OUTLINED_FUNCTION_48();
        v191 = OUTLINED_FUNCTION_52();
        v195[0] = v191;
        *v101 = 136315138;
        v102 = v98;
        v103 = [v102 description];
        v104 = sub_267EF9028();
        v106 = v105;

        v107 = sub_267BA33E8(v104, v106, v195);

        *(v101 + 4) = v107;
        OUTLINED_FUNCTION_22_1(&dword_267B93000, v108, v109, "#SafetySessionComponent: Received a SMKeyReleaseMessage %s");
        __swift_destroy_boxed_opaque_existential_0(v191);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      v89 = v192;
      v90 = v193;
      v110 = v190;
      v111 = v194;
      [v98 sessionType];
      sub_267DFEB18();
      OUTLINED_FUNCTION_21_7();

      v112 = OUTLINED_FUNCTION_3_19();
      __swift_storeEnumTagSinglePayload(v112, v113, v114, v38);
      OUTLINED_FUNCTION_24_6(v188);
      [v98 destinationType];
      sub_267DFEBBC();
      OUTLINED_FUNCTION_21_7();

      v115 = OUTLINED_FUNCTION_3_19();
      __swift_storeEnumTagSinglePayload(v115, v116, v117, v38);
      OUTLINED_FUNCTION_24_6(v189);
      sub_267DFEC50([v98 triggerType]);
      OUTLINED_FUNCTION_21_7();

      v118 = OUTLINED_FUNCTION_3_19();
      __swift_storeEnumTagSinglePayload(v118, v119, v120, v38);
      sub_267BD3DDC(v110, v111 + a7);
      goto LABEL_39;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v44 == 2)
  {
    sub_267BA9F38(0, &qword_280229F68, 0x277D4AB98);
    v73 = OUTLINED_FUNCTION_6_15();
    v74(v73);
    result = sub_267D60CBC(v37);
    if (result)
    {
      v75 = result;
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v76 = sub_267EF8A08();
      __swift_project_value_buffer(v76, qword_280240FB0);
      v77 = v75;
      v78 = sub_267EF89F8();
      v79 = sub_267EF95D8();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = OUTLINED_FUNCTION_48();
        v194 = OUTLINED_FUNCTION_52();
        v195[0] = v194;
        *v80 = 136315138;
        v81 = v77;
        v82 = [v81 description];
        v83 = sub_267EF9028();
        v85 = v84;

        v86 = sub_267BA33E8(v83, v85, v195);

        *(v80 + 4) = v86;
        OUTLINED_FUNCTION_22_1(&dword_267B93000, v87, v88, "#SafetySessionComponent: Received a SMSessionEndMessage %s");
        __swift_destroy_boxed_opaque_existential_0(v194);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      v89 = v192;
      v90 = v193;
      [v77 sessionType];
      sub_267DFEB18();
      OUTLINED_FUNCTION_21_7();

      v91 = OUTLINED_FUNCTION_3_19();
      __swift_storeEnumTagSinglePayload(v91, v92, v93, v38);
      OUTLINED_FUNCTION_24_6(v188);
      [v77 sessionEndReason];
      v126 = v178;
      sub_267EF90F8();

      OUTLINED_FUNCTION_5_20(v126);
      sub_267BD3DDC(v126, a7 + v177);
      [v77 destinationType];
      sub_267DFEBBC();
      OUTLINED_FUNCTION_21_7();

      v127 = OUTLINED_FUNCTION_3_19();
      __swift_storeEnumTagSinglePayload(v127, v128, v129, v38);
      OUTLINED_FUNCTION_24_6(v189);
      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (v44 != 1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v121 = sub_267EF8A08();
    __swift_project_value_buffer(v121, qword_280240FB0);
    v122 = sub_267EF89F8();
    v123 = sub_267EF95E8();
    v124 = os_log_type_enabled(v122, v123);
    v89 = v192;
    v90 = v193;
    if (v124)
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&dword_267B93000, v122, v123, "#SafetySessionComponent: Unsupported check-in message type", v125, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    goto LABEL_39;
  }

  sub_267BA9F38(0, &qword_280229F70, 0x277D4ABE8);
  v45 = OUTLINED_FUNCTION_6_15();
  v46(v45);
  result = sub_267D60CBC(v37);
  if (result)
  {
    v48 = result;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v49 = sub_267EF8A08();
    v50 = __swift_project_value_buffer(v49, qword_280240FB0);
    v51 = v48;
    v194 = v50;
    v52 = sub_267EF89F8();
    v53 = sub_267EF95D8();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = OUTLINED_FUNCTION_48();
      v191 = OUTLINED_FUNCTION_52();
      v195[0] = v191;
      *v54 = 136315138;
      v55 = v51;
      v56 = [v55 description];
      v57 = sub_267EF9028();
      v59 = v58;

      v60 = sub_267BA33E8(v57, v59, v195);

      *(v54 + 4) = v60;
      OUTLINED_FUNCTION_23_8(&dword_267B93000, v61, v62, "#SafetySessionComponent: Received a SMSessionStartMessage %s");
      __swift_destroy_boxed_opaque_existential_0(v191);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v63 = v187;
    v64 = v51;
    v65 = sub_267EF89F8();
    v66 = sub_267EF95D8();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = OUTLINED_FUNCTION_48();
      v68 = OUTLINED_FUNCTION_52();
      v195[0] = v68;
      *v67 = 136315138;
      v69 = [v64 coarseEstimatedEndTime];
      if (v69)
      {
        v70 = v69;
        v71 = v175;
        sub_267EF2C98();

        v72 = 0;
      }

      else
      {
        v72 = 1;
        v71 = v175;
      }

      __swift_storeEnumTagSinglePayload(v71, v72, 1, v63);
      v130 = sub_267EF9098();
      v132 = sub_267BA33E8(v130, v131, v195);

      *(v67 + 4) = v132;
      _os_log_impl(&dword_267B93000, v65, v66, "#SafetySessionComponent: session coarse end time is %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
    }

    v133 = v64;
    v134 = sub_267EF89F8();
    v135 = sub_267EF95D8();

    if (os_log_type_enabled(v134, v135))
    {
      v136 = OUTLINED_FUNCTION_48();
      v191 = OUTLINED_FUNCTION_52();
      v195[0] = v191;
      *v136 = 136315138;
      v137 = [v133 estimatedEndTime];
      v194 = v133;
      v138 = v185;
      sub_267EF2C98();

      sub_267C85504(&qword_28022BDE0, MEMORY[0x277CC9578]);
      v139 = v187;
      v140 = sub_267EF9E58();
      v142 = v141;
      v143 = v138;
      v133 = v194;
      (*(v186 + 8))(v143, v139);
      v144 = sub_267BA33E8(v140, v142, v195);

      *(v136 + 4) = v144;
      OUTLINED_FUNCTION_23_8(&dword_267B93000, v145, v146, "#SafetySessionComponent: session end time is %s");
      __swift_destroy_boxed_opaque_existential_0(v191);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v148 = v189;
    v147 = v190;
    v149 = v188;
    [v133 sessionType];
    sub_267DFEB18();
    sub_267EF90F8();

    v150 = OUTLINED_FUNCTION_3_19();
    __swift_storeEnumTagSinglePayload(v150, v151, v152, v38);
    sub_267BD3DDC(v147, a7 + v149);
    [v133 destinationType];
    sub_267DFEBBC();
    sub_267EF90F8();

    v153 = OUTLINED_FUNCTION_3_19();
    __swift_storeEnumTagSinglePayload(v153, v154, v155, v38);
    sub_267BD3DDC(v147, a7 + v148);
    v194 = sub_267EF2D48();
    v157 = v156;
    v158 = [v133 coarseEstimatedEndTime];
    if (v158)
    {
      v159 = v158;
      v160 = v133;
      v161 = v185;
      sub_267EF2C98();

      v162 = v186;
      v163 = v187;
      v164 = *(v186 + 32);
      v165 = v180;
      v166 = v161;
      v133 = v160;
      v164(v180, v166, v187);
      v167 = OUTLINED_FUNCTION_3_19();
      __swift_storeEnumTagSinglePayload(v167, v168, v169, v163);
      v170 = v182;
      v164(v182, v165, v163);
      v90 = v193;
    }

    else
    {
      v171 = v180;
      v163 = v187;
      __swift_storeEnumTagSinglePayload(v180, 1, 1, v187);
      v172 = [v133 estimatedEndTime];
      v170 = v182;
      sub_267EF2C98();

      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v171, 1, v163);
      v90 = v193;
      v162 = v186;
      if (EnumTagSinglePayload != 1)
      {
        sub_267B9FF34(v171, &qword_28022BD90, &unk_267EFCDD0);
      }
    }

    sub_267C84B60(v194, v157, v183, v170);

    (*(v162 + 8))(v170, v163);
    v174 = v184;
    sub_267EF90F8();

    OUTLINED_FUNCTION_5_20(v174);
    sub_267BD3DDC(v174, a7 + v179);
    v89 = v192;
LABEL_39:
    sub_267EF90F8();

    OUTLINED_FUNCTION_5_20(v90);
    return sub_267BD3DDC(v90, a7 + v89);
  }

LABEL_42:
  __break(1u);
  return result;
}

void sub_267C84B60(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a4;
  v66 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229F58, &unk_267EFFCF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_6();
  v64 = v8;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v9);
  v11 = &v60 - v10;
  v12 = sub_267EF2EF8();
  v13 = OUTLINED_FUNCTION_58(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6();
  v61 = v18;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v19);
  v62 = &v60 - v20;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v21);
  v23 = &v60 - v22;
  v24 = sub_267EF2E38();
  v25 = OUTLINED_FUNCTION_58(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  v31 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];

  v63 = a1;
  sub_267EF2D38();
  v33 = sub_267EF2D98();
  (*(v27 + 8))(v31, v24);
  v34 = v12;
  [v32 setLocale_];

  sub_267C85660(0x61206D6D3A68, 0xE600000000000000, v32);
  sub_267C85720(v66, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_267B9FF34(v11, &qword_280229F58, &unk_267EFFCF0);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v35 = sub_267EF8A08();
    __swift_project_value_buffer(v35, qword_280240FB0);
    v36 = v32;
    v37 = sub_267EF89F8();
    v38 = sub_267EF95D8();
    if (!os_log_type_enabled(v37, v38))
    {

      goto LABEL_14;
    }

    v39 = OUTLINED_FUNCTION_48();
    v40 = OUTLINED_FUNCTION_52();
    v67 = v40;
    *v39 = 136315138;
    v41 = [v36 timeZone];

    if (v41)
    {
      v42 = v61;
      sub_267EF2ED8();

      v43 = v62;
      (*(v15 + 32))(v62, v42, v34);
      sub_267C85504(&qword_280229F78, MEMORY[0x277CC9A70]);
      v44 = sub_267EF9E58();
      v46 = v45;
      (*(v15 + 8))(v43, v34);
      v47 = sub_267BA33E8(v44, v46, &v67);

      *(v39 + 4) = v47;
      _os_log_impl(&dword_267B93000, v37, v38, "#SafetySessionComponent: No time zone available, using %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
LABEL_14:

      v56 = sub_267EF2C48();
      v57 = [v36 stringFromDate_];

      sub_267EF9028();
      return;
    }

    __break(1u);
  }

  else
  {
    (*(v15 + 32))(v23, v11, v12);
    v48 = v23;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v49 = sub_267EF8A08();
    __swift_project_value_buffer(v49, qword_280240FB0);

    v50 = sub_267EF89F8();
    v51 = sub_267EF95D8();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = OUTLINED_FUNCTION_48();
      v53 = OUTLINED_FUNCTION_52();
      v67 = v53;
      *v52 = 136315138;
      *(v52 + 4) = sub_267BA33E8(v63, a2, &v67);
      _os_log_impl(&dword_267B93000, v50, v51, "#SafetySessionComponent: Locale is %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v54 = v64;
    sub_267EF2EB8();
    sub_267EF2EA8();

    if (__swift_getEnumTagSinglePayload(v54, 1, v34) == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = sub_267EF2EC8();
      (*(v15 + 8))(v54, v34);
    }

    [v32 setTimeZone_];

    v58 = sub_267EF2C48();
    v59 = [v32 stringFromDate_];

    sub_267EF9028();
    (*(v15 + 8))(v48, v34);
  }
}

void *sub_267C851C8()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t sub_267C851F0()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_267C851FC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_267C85234()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_267C85274()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267C85300;

  return sub_267C82E4C();
}

uint64_t sub_267C85300()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;

  v8 = *(v6 + 8);
  if (v0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 & 1;
  }

  return v8(v9);
}

uint64_t sub_267C853F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BD5D40;

  return sub_267C82E68();
}

uint64_t sub_267C854AC(uint64_t a1)
{
  result = sub_267C85504(&qword_280229F48, type metadata accessor for SafetySessionComponent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267C85504(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267C8554C(uint64_t a1)
{
  result = sub_267C85504(&qword_280229F50, type metadata accessor for SafetySessionComponent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267C855A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_267BAEBEC;

  return sub_267C8339C(a1, v4, v5, v7, v6);
}

void sub_267C85660(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();

  [a3 setDateFormat_];
}

uint64_t sub_267C856C4(uint64_t a1)
{
  SpokenSafetySessionComponentParameters = type metadata accessor for SearchForMessagesReadSpokenSafetySessionComponentParameters(0);
  (*(*(SpokenSafetySessionComponentParameters - 8) + 8))(a1, SpokenSafetySessionComponentParameters);
  return a1;
}

uint64_t sub_267C85720(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229F58, &unk_267EFFCF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267C85790()
{
  if (qword_280228718 != -1)
  {
    swift_once();
  }

  v1 = sub_267C8EC60([v0 type], qword_280229F80);
  if (v1 && (v2 = v1, v3 = [v0 label], v4 = sub_267C8ECAC(v3, v2), v3, , v4 != 41))
  {
    sub_267D6C2F0(v4);
    return v8;
  }

  else
  {
    v5 = [v0 label];
    if (v5)
    {
      v6 = v5;
      v7 = sub_267EF9028();
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_267C858A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229F88, &qword_267EFFD20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFCC90;
  *(inited + 32) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229F90, &qword_267EFFD28);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_267EFCDC0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 30;
  v2 = *MEMORY[0x277CD3870];
  *(v1 + 48) = *MEMORY[0x277CD3870];
  *(v1 + 56) = 32;
  v3 = *MEMORY[0x277CD3890];
  *(v1 + 64) = *MEMORY[0x277CD3890];
  *(v1 + 72) = 33;
  v4 = *MEMORY[0x277CD38A8];
  *(v1 + 80) = *MEMORY[0x277CD38A8];
  *(v1 + 88) = 31;
  v5 = *MEMORY[0x277CD38A0];
  *(v1 + 96) = *MEMORY[0x277CD38A0];
  *(v1 + 104) = 40;
  v26 = v2;
  v27 = v3;
  v29 = v4;
  v28 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229F98, &qword_267EFFD30);
  sub_267C85BB0();
  *(inited + 40) = sub_267EF8F28();
  *(inited + 48) = 2;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_267EFFD10;
  *(v6 + 32) = 0;
  *(v6 + 40) = 10;
  *(v6 + 48) = v2;
  v7 = MEMORY[0x277CD3878];
  *(v6 + 56) = 0;
  v8 = *v7;
  *(v6 + 64) = *v7;
  v9 = MEMORY[0x277CD38B8];
  *(v6 + 72) = 5;
  v10 = *v9;
  *(v6 + 80) = *v9;
  v11 = MEMORY[0x277CD3880];
  *(v6 + 88) = 3;
  v12 = *v11;
  *(v6 + 104) = 4;
  v13 = MEMORY[0x277CD3888];
  *(v6 + 96) = v12;
  v14 = *v13;
  *(v6 + 112) = *v13;
  *(v6 + 120) = 2;
  *(v6 + 128) = v3;
  *(v6 + 136) = 9;
  v15 = *MEMORY[0x277CD3898];
  *(v6 + 144) = *MEMORY[0x277CD3898];
  *(v6 + 152) = 8;
  *(v6 + 160) = v4;
  *(v6 + 168) = 1;
  *(v6 + 176) = v5;
  *(v6 + 184) = 11;
  v16 = v26;
  v17 = v8;
  v18 = v10;
  v19 = v12;
  v20 = v14;
  v21 = v27;
  v22 = v15;
  v23 = v29;
  v24 = v28;
  *(inited + 56) = sub_267EF8F28();
  type metadata accessor for INPersonHandleType(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229FA8, &qword_267EFFD38);
  sub_267C85C64(&qword_280229FB0, type metadata accessor for INPersonHandleType);
  result = sub_267EF8F28();
  qword_280229F80 = result;
  return result;
}

unint64_t sub_267C85BB0()
{
  result = qword_280229FA0;
  if (!qword_280229FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280229F98, &qword_267EFFD30);
    sub_267C85C64(&qword_280228BD8, type metadata accessor for INPersonHandleLabel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229FA0);
  }

  return result;
}

uint64_t sub_267C85C64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267C85CCC()
{
  v1 = *(v0 + 16);
  sub_267EF4018();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_267C85D2C(void (*a1)(char *))
{
  v2 = sub_267EF4028();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267EF4018();
  a1(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_267C85E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_267C85EDC;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_267C85EDC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_267C85FF0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BCE5E4;

  return sub_267C85CAC(a1);
}

void sub_267C86088(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - v12;
  sub_267DE0D58(&v27 - v12);
  v14 = sub_267EF2CC8();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  v15 = sub_267E2D6E4(a2);
  if (v15)
  {
    v16 = v15;
    v28 = v13;
    v29 = a1;
    v30 = a3;
    v31 = a4;
    v32 = a5;
    v17 = MEMORY[0x277D84F90];
    v34 = MEMORY[0x277D84F90];
    v18 = sub_267BAF0DC(v15);
    v19 = 0;
    while (1)
    {
      if (v18 == v19)
      {

        a4 = v31;
        a5 = v32;
        a1 = v29;
        a3 = v30;
        v13 = v28;
        goto LABEL_17;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x26D609870](v19, v16);
      }

      else
      {
        if (v19 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v20 = *(v16 + 8 * v19 + 32);
      }

      v21 = v20;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      [v20 copy];
      sub_267EF99B8();
      swift_unknownObjectRelease();

      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      if ((swift_dynamicCast() & 1) != 0 && v33)
      {
        MEMORY[0x26D608F90]();
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        sub_267EF9368();
        v17 = v34;
        ++v19;
      }

      else
      {
        ++v19;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
    v17 = 0;
LABEL_17:
    sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
    v22 = sub_267BDB698(2, 0, v13, v17);
    v23 = *(a1 + 128);
    v24 = v22;
    sub_267EF7C18();
    if (v25)
    {
      v26 = sub_267EF8FF8();
    }

    else
    {
      v26 = 0;
    }

    [v24 _setLaunchId_];

    sub_267BC42D8(a3, v24, a4, a5);
  }
}

id sub_267C86350(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267EF9078();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 intentResponse];
  if (!v11 || (sub_267BE9BBC(v11), !v12))
  {
    v34[0] = a2;
    v34[1] = a3;

    MEMORY[0x26D608E60](0x65736E6F70736552, 0xE800000000000000);
  }

  v13 = [a1 intentResponse];
  if (v13)
  {
    v14 = sub_267C86DA4(v13);
    if (v15 >> 60 != 15)
    {
      v25 = v14;
      v26 = v15;
      v27 = sub_267EF8FF8();

      v28 = sub_267EF2BB8();
      v24 = INIntentResponseCreate();

      v29 = v25;
      v30 = v26;
LABEL_15:
      sub_267BBE0C8(v29, v30);
      return v24;
    }
  }

  sub_267C86D40(a1);
  if (v16)
  {
    sub_267EF9068();
    v17 = sub_267EF9038();
    v19 = v18;

    (*(v7 + 8))(v10, v6);
    if (v19 >> 60 != 15)
    {
      v31 = sub_267EF8FF8();

      v32 = sub_267EF2BB8();
      v24 = INIntentResponseCreate();

      v29 = v17;
      v30 = v19;
      goto LABEL_15;
    }
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v20 = sub_267EF8A08();
  __swift_project_value_buffer(v20, qword_280240FB0);
  v21 = sub_267EF89F8();
  v22 = sub_267EF95E8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_267B93000, v21, v22, "handleIntentCompleted contains no valid jsonEncodedIntentResponse", v23, 2u);
    MEMORY[0x26D60A7B0](v23, -1, -1);
  }

  return 0;
}

uint64_t sub_267C86680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_267C866A4, 0, 0);
}

uint64_t sub_267C866A4()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_267EFC020;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;

  sub_267EF7C18();
  v6 = sub_267DE86F4();
  v0[9] = v6;
  sub_267BA9F38(0, &qword_28022BB80, 0x277D473D0);
  v7 = v6;
  v8 = sub_267EF9768();
  v0[10] = v8;
  v9 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);
  v10 = *(MEMORY[0x277D5BFB8] + 4);
  v11 = swift_task_alloc();
  v0[11] = v11;
  sub_267BA9F38(0, &qword_280229FB8, 0x277D473D8);
  *v11 = v0;
  v11[1] = sub_267C86848;

  return MEMORY[0x2821BB6A0](v8);
}

uint64_t sub_267C86848(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v7 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v5 = sub_267C86C68;
  }

  else
  {
    v5 = sub_267C8695C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_267C8695C()
{
  v1 = *(v0 + 96);
  v2 = [*(v0 + 72) typeName];
  v3 = sub_267EF9028();
  v5 = v4;

  v6 = sub_267C86350(v1, v3, v5);

  if (!v6)
  {
    goto LABEL_16;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {

LABEL_16:
    v18 = *(v0 + 96);
    v20 = *(v0 + 72);
    v19 = *(v0 + 80);
    sub_267C266B0();
    swift_allocError();
    *v21 = 0xD000000000000049;
    v21[1] = 0x8000000267F14170;
    swift_willThrow();
LABEL_18:

    v25 = *(v0 + 8);

    v25();
    return;
  }

  v8 = v7;
  if ([v7 code] != 3)
  {
    v18 = *(v0 + 96);
    v20 = *(v0 + 72);
    v19 = *(v0 + 80);
    sub_267EF9B68();
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    MEMORY[0x26D608E60](0xD000000000000022, 0x8000000267F141C0);
    *(v0 + 32) = [v8 code];
    type metadata accessor for INSearchForMessagesIntentResponseCode(0);
    sub_267EF9C58();
    v22 = *(v0 + 16);
    v23 = *(v0 + 24);
    sub_267C266B0();
    swift_allocError();
    *v24 = v22;
    v24[1] = v23;
    swift_willThrow();

    goto LABEL_18;
  }

  v9 = *(v0 + 48);
  v10 = sub_267C86CD0(v8);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v12 = sub_267BAF0DC(v11);
  for (i = 0; v12 != i; ++i)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x26D609870](i, v11);
    }

    else
    {
      if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v14 = *(v11 + 8 * i + 32);
    }

    v15 = v14;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    v17 = *(v0 + 40);
    v16 = *(v0 + 48);

    sub_267D6039C(v17, v9);
  }

  v26 = *(v0 + 96);
  v27 = *(v0 + 80);

  v28 = *(v0 + 8);

  v28(v11);
}

uint64_t sub_267C86C68()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 104);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_267C86CD0(void *a1)
{
  v1 = [a1 messages];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
  v3 = sub_267EF92F8();

  return v3;
}

uint64_t sub_267C86D40(void *a1)
{
  v1 = [a1 jsonEncodedIntentResponse];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

uint64_t sub_267C86DA4(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267EF2BE8();

  return v3;
}

uint64_t sub_267C86E14(void *a1, char a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_267C1C124(a1, a2 & 1, *(v2 + 16));
}

uint64_t sub_267C86E24()
{
  v1 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_siteName;
  v2 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_title);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_linkMediaType);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_songTitle);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_songArtist);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_albumName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_albumArtist);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_musicVideoName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_musicVideoArtist);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_artistName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_playlistName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_playlistCurator);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_radioName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_radioCurator);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_softwareName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_bookName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_bookAuthor);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_audioBookName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_audioBookAuthor);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastArtist);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastEpisodeName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastEpisodePodcastName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvEpisodeEpisodeName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvEpisodeSeasonName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvSeasonName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_movieName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvShowName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_movieBundleName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_appleTvTitle);
  return v0;
}

uint64_t sub_267C86FD0()
{
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_siteName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_title);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_linkMediaType);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_songTitle);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_songArtist);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_albumName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_albumArtist);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_musicVideoName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_musicVideoArtist);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_artistName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_playlistName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_playlistCurator);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_radioName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_radioCurator);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_softwareName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_bookName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_bookAuthor);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_audioBookName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_audioBookAuthor);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastArtist);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastEpisodeName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastEpisodePodcastName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvEpisodeEpisodeName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvEpisodeSeasonName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvSeasonName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_movieName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvShowName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_movieBundleName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_appleTvTitle);
  return v0;
}

uint64_t sub_267C871FC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_siteName);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_title);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_linkMediaType);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_songTitle);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_songArtist);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_albumName);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_albumArtist);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_musicVideoName);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_musicVideoArtist);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_artistName);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_playlistName);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_playlistCurator);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_radioName);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_radioCurator);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_softwareName);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_bookName);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_bookAuthor);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_audioBookName);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_audioBookAuthor);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastName);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastArtist);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastEpisodeName);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastEpisodePodcastName);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvEpisodeEpisodeName);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvEpisodeSeasonName);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvSeasonName);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_movieName);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvShowName);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_movieBundleName);
  v7 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_appleTvTitle;
  OUTLINED_FUNCTION_83();
  sub_267C12290(a1 + v7, v6);

  sub_267C12220(v6, v1 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_appleTvTitle);
  return v1;
}

uint64_t sub_267C87668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v38 = type metadata accessor for MessagesLinkMetadata.Builder(0);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  v41 = swift_allocObject();
  sub_267C86E24();
  v42 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_siteName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a1, v41 + v42);
  swift_endAccess();
  v43 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_title;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a2, v41 + v43);
  swift_endAccess();
  v44 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_linkMediaType;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a3, v41 + v44);
  swift_endAccess();
  v45 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_songTitle;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a4, v41 + v45);
  swift_endAccess();
  v46 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_songArtist;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a5, v41 + v46);
  swift_endAccess();
  v47 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_albumName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a6, v41 + v47);
  swift_endAccess();
  v48 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_albumArtist;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a7, v41 + v48);
  swift_endAccess();
  v49 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_musicVideoName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a8, v41 + v49);
  swift_endAccess();
  v50 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_musicVideoArtist;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a9, v41 + v50);
  swift_endAccess();
  v51 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_artistName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a10, v41 + v51);
  swift_endAccess();
  v52 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_playlistName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a11, v41 + v52);
  swift_endAccess();
  v53 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_playlistCurator;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a12, v41 + v53);
  swift_endAccess();
  v54 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_radioName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a13, v41 + v54);
  swift_endAccess();
  v55 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_radioCurator;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a14, v41 + v55);
  swift_endAccess();
  v56 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_softwareName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a15, v41 + v56);
  swift_endAccess();
  v57 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_bookName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a16, v41 + v57);
  swift_endAccess();
  v58 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_bookAuthor;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a17, v41 + v58);
  swift_endAccess();
  v59 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_audioBookName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a18, v41 + v59);
  swift_endAccess();
  v60 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_audioBookAuthor;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a19, v41 + v60);
  swift_endAccess();
  v61 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a20, v41 + v61);
  swift_endAccess();
  v62 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastArtist;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a21, v41 + v62);
  swift_endAccess();
  v63 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastEpisodeName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a22, v41 + v63);
  swift_endAccess();
  v64 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastEpisodePodcastName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a23, v41 + v64);
  swift_endAccess();
  v65 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvEpisodeEpisodeName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a24, v41 + v65);
  swift_endAccess();
  v66 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvEpisodeSeasonName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a25, v41 + v66);
  swift_endAccess();
  v67 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvSeasonName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a26, v41 + v67);
  swift_endAccess();
  v68 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_movieName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a27, v41 + v68);
  swift_endAccess();
  v69 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvShowName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a28, v41 + v69);
  swift_endAccess();
  v70 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_movieBundleName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a29, v41 + v70);
  swift_endAccess();
  v71 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_appleTvTitle;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a30, v41 + v71);
  swift_endAccess();
  v72 = type metadata accessor for MessagesLinkMetadata(0);
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  v75 = swift_allocObject();
  sub_267C871FC(v41);
  sub_267BBD6F0(a30);
  sub_267BBD6F0(a29);
  sub_267BBD6F0(a28);
  sub_267BBD6F0(a27);
  sub_267BBD6F0(a26);
  sub_267BBD6F0(a25);
  sub_267BBD6F0(a24);
  sub_267BBD6F0(a23);
  sub_267BBD6F0(a22);
  sub_267BBD6F0(a21);
  sub_267BBD6F0(a20);
  sub_267BBD6F0(a19);
  sub_267BBD6F0(a18);
  sub_267BBD6F0(a17);
  sub_267BBD6F0(a16);
  sub_267BBD6F0(a15);
  sub_267BBD6F0(a14);
  sub_267BBD6F0(a13);
  sub_267BBD6F0(a12);
  sub_267BBD6F0(a11);
  sub_267BBD6F0(a10);
  sub_267BBD6F0(a9);
  sub_267BBD6F0(a8);
  sub_267BBD6F0(a7);
  sub_267BBD6F0(a6);
  sub_267BBD6F0(a5);
  sub_267BBD6F0(a4);
  sub_267BBD6F0(a3);
  sub_267BBD6F0(a2);
  sub_267BBD6F0(a1);
  return v75;
}

uint64_t sub_267C87C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v226 = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64);
  MEMORY[0x28223BE20](0x656D614E65746973);
  OUTLINED_FUNCTION_6();
  v219 = v8;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_77_0();
  v218 = v10;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_77_0();
  v217 = v12;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_77_0();
  v216 = v14;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_77_0();
  v215 = v16;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_77_0();
  v214 = v18;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_77_0();
  v213 = v20;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_77_0();
  v212 = v22;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_77_0();
  v211 = v24;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_77_0();
  v210 = v26;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_77_0();
  v209 = v28;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_77_0();
  v208 = v30;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_77_0();
  v207 = v32;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_77_0();
  v220 = v39;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_77_0();
  v221 = v41;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_77_0();
  v222 = v43;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_77_0();
  v223 = v45;
  OUTLINED_FUNCTION_115();
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &v206[-v48];
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_26_5();
  v51 = MEMORY[0x28223BE20](v50);
  v53 = &v206[-v52];
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v206[-v55];
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_50_0();
  v59 = MEMORY[0x28223BE20](v58);
  v61 = &v206[-v60];
  v62 = MEMORY[0x28223BE20](v59);
  v64 = &v206[-v63];
  v224 = a1;
  v225 = a2;
  v65 = a1 == v62 && a2 == 0xE800000000000000;
  if (v65 || (OUTLINED_FUNCTION_36_8() & 1) != 0)
  {
    v66 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_siteName);
    sub_267C12290(v66, v64);
    sub_267EF79B8();
    OUTLINED_FUNCTION_8_7(v64);
    if (!v65)
    {
      goto LABEL_244;
    }

    v67 = v64;
    goto LABEL_9;
  }

  v70 = v224 == 0x656C746974 && v225 == 0xE500000000000000;
  if (v70 || (OUTLINED_FUNCTION_36_8() & 1) != 0)
  {
    v71 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_title);
    sub_267C12290(v71, v61);
    sub_267EF79B8();
    OUTLINED_FUNCTION_8_7(v61);
    if (!v65)
    {
      goto LABEL_244;
    }

    v67 = v61;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_30_9();
  v74 = v65 && v73 == v72;
  if (!v74 && (OUTLINED_FUNCTION_36_8() & 1) == 0)
  {
    OUTLINED_FUNCTION_30_9();
    v80 = v65 && v79 == 0xE900000000000065;
    if (v80 || (OUTLINED_FUNCTION_33_3() & 1) != 0)
    {
      v81 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_songTitle);
      sub_267C12290(v81, v3);
      sub_267EF79B8();
      OUTLINED_FUNCTION_8_7(v3);
      if (!v65)
      {
        goto LABEL_244;
      }

      v67 = v3;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_30_9();
    v84 = v65 && v83 == v82;
    if (v84 || (OUTLINED_FUNCTION_36_8() & 1) != 0)
    {
      v85 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_songArtist);
      sub_267C12290(v85, v56);
      v86 = sub_267EF79B8();
      OUTLINED_FUNCTION_9_15(v86);
      if (!v65)
      {
        goto LABEL_244;
      }

      v67 = v56;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_30_9();
    v88 = v65 && v87 == 0xE900000000000065;
    if (v88 || (OUTLINED_FUNCTION_33_3() & 1) != 0)
    {
      v89 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_albumName);
      sub_267C12290(v89, v53);
      sub_267EF79B8();
      OUTLINED_FUNCTION_8_7(v53);
      if (!v65)
      {
        goto LABEL_244;
      }

      v67 = v53;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_47_5();
    OUTLINED_FUNCTION_30_9();
    v92 = v65 && v91 == v90;
    if (v92 || (OUTLINED_FUNCTION_36_8() & 1) != 0)
    {
      v93 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_albumArtist);
      sub_267C12290(v93, v4);
      sub_267EF79B8();
      OUTLINED_FUNCTION_8_7(v4);
      if (!v65)
      {
        goto LABEL_244;
      }

      v67 = v4;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_43_8();
    OUTLINED_FUNCTION_30_9();
    v96 = v65 && v95 == v94;
    if (v96 || (OUTLINED_FUNCTION_36_8() & 1) != 0)
    {
      v97 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_musicVideoName);
      sub_267C12290(v97, v49);
      sub_267EF79B8();
      OUTLINED_FUNCTION_8_7(v49);
      if (!v65)
      {
        goto LABEL_244;
      }

      v67 = v49;
      goto LABEL_9;
    }

    v98 = v224 == 0xD000000000000010 && 0x8000000267F0FFB0 == v225;
    if (v98 || (OUTLINED_FUNCTION_36_8() & 1) != 0)
    {
      v99 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_musicVideoArtist);
      sub_267C12290(v99, v223);
      v100 = sub_267EF79B8();
      OUTLINED_FUNCTION_9_15(v100);
      if (!v65)
      {
        goto LABEL_244;
      }

      v67 = v223;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_30_9();
    v102 = v65 && v101 == 0xEA0000000000656DLL;
    if (v102 || (OUTLINED_FUNCTION_36_8() & 1) != 0)
    {
      v103 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_artistName);
      sub_267C12290(v103, v222);
      v104 = sub_267EF79B8();
      OUTLINED_FUNCTION_9_15(v104);
      if (!v65)
      {
        goto LABEL_244;
      }

      v67 = v222;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_49_5();
    v106 = v65 && v105 == 0xEC000000656D614ELL;
    if (v106 || (OUTLINED_FUNCTION_36_8() & 1) != 0)
    {
      v107 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_playlistName);
      sub_267C12290(v107, v221);
      v108 = sub_267EF79B8();
      OUTLINED_FUNCTION_9_15(v108);
      if (!v65)
      {
        goto LABEL_244;
      }

      v67 = v221;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_49_5();
    v111 = v65 && v110 == v109;
    if (v111 || (OUTLINED_FUNCTION_36_8() & 1) != 0)
    {
      v112 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_playlistCurator);
      sub_267C12290(v112, v220);
      v113 = sub_267EF79B8();
      OUTLINED_FUNCTION_9_15(v113);
      if (!v65)
      {
        goto LABEL_244;
      }

      v67 = v220;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_30_9();
    v115 = v65 && v114 == 0xE900000000000065;
    if (v115 || (OUTLINED_FUNCTION_33_3() & 1) != 0)
    {
      v116 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_radioName);
      OUTLINED_FUNCTION_48_6(v116, &v227);
      v117 = sub_267EF79B8();
      OUTLINED_FUNCTION_9_15(v117);
      if (!v65)
      {
        OUTLINED_FUNCTION_38_7();
        OUTLINED_FUNCTION_18_0();
        v78 = *(v119 + 32);
        v120 = &v227;
LABEL_141:
        v142 = *(v120 - 32);
        return v78();
      }

      v118 = &v227;
    }

    else
    {
      OUTLINED_FUNCTION_45_7();
      OUTLINED_FUNCTION_30_9();
      v123 = v65 && v122 == v121;
      if (v123 || (OUTLINED_FUNCTION_36_8() & 1) != 0)
      {
        v124 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_radioCurator);
        OUTLINED_FUNCTION_48_6(v124, &v228);
        v125 = sub_267EF79B8();
        OUTLINED_FUNCTION_9_15(v125);
        if (!v65)
        {
          OUTLINED_FUNCTION_38_7();
          OUTLINED_FUNCTION_18_0();
          v78 = *(v126 + 32);
          v120 = &v228;
          goto LABEL_141;
        }

        v118 = &v228;
      }

      else
      {
        OUTLINED_FUNCTION_30_9();
        v128 = v65 && v127 == 0xEC000000656D614ELL;
        if (v128 || (OUTLINED_FUNCTION_36_8() & 1) != 0)
        {
          v129 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_softwareName);
          OUTLINED_FUNCTION_48_6(v129, &v229);
          v130 = sub_267EF79B8();
          OUTLINED_FUNCTION_9_15(v130);
          if (!v65)
          {
            OUTLINED_FUNCTION_38_7();
            OUTLINED_FUNCTION_18_0();
            v78 = *(v131 + 32);
            v120 = &v229;
            goto LABEL_141;
          }

          v118 = &v229;
        }

        else
        {
          v132 = v224 == 0x656D614E6B6F6F62 && v225 == 0xE800000000000000;
          if (v132 || (OUTLINED_FUNCTION_36_8() & 1) != 0)
          {
            v133 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_bookName);
            OUTLINED_FUNCTION_48_6(v133, &v230);
            v134 = sub_267EF79B8();
            OUTLINED_FUNCTION_9_15(v134);
            if (!v65)
            {
              OUTLINED_FUNCTION_38_7();
              OUTLINED_FUNCTION_18_0();
              v78 = *(v135 + 32);
              v120 = &v230;
              goto LABEL_141;
            }

            v118 = &v230;
          }

          else
          {
            OUTLINED_FUNCTION_30_9();
            v138 = v65 && v137 == v136;
            if (!v138 && (OUTLINED_FUNCTION_36_8() & 1) == 0)
            {
              OUTLINED_FUNCTION_49_5();
              v145 = v65 && v144 == v143;
              if (v145 || (OUTLINED_FUNCTION_36_8() & 1) != 0)
              {
                v146 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_audioBookName);
                sub_267C12290(v146, v207);
                v147 = sub_267EF79B8();
                OUTLINED_FUNCTION_9_15(v147);
                if (!v65)
                {
                  goto LABEL_244;
                }

                v67 = v207;
              }

              else
              {
                OUTLINED_FUNCTION_49_5();
                v150 = v65 && v149 == v148;
                if (v150 || (OUTLINED_FUNCTION_36_8() & 1) != 0)
                {
                  v151 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_audioBookAuthor);
                  sub_267C12290(v151, v208);
                  v152 = sub_267EF79B8();
                  OUTLINED_FUNCTION_9_15(v152);
                  if (!v65)
                  {
                    goto LABEL_244;
                  }

                  v67 = v208;
                }

                else
                {
                  OUTLINED_FUNCTION_44_8();
                  OUTLINED_FUNCTION_30_9();
                  v155 = v65 && v154 == v153;
                  if (v155 || (OUTLINED_FUNCTION_36_8() & 1) != 0)
                  {
                    v156 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastName);
                    sub_267C12290(v156, v209);
                    v157 = sub_267EF79B8();
                    OUTLINED_FUNCTION_9_15(v157);
                    if (!v65)
                    {
                      goto LABEL_244;
                    }

                    v67 = v209;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_40_5();
                    OUTLINED_FUNCTION_30_9();
                    v160 = v65 && v159 == v158;
                    if (v160 || (OUTLINED_FUNCTION_36_8() & 1) != 0)
                    {
                      v161 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastArtist);
                      sub_267C12290(v161, v210);
                      v162 = sub_267EF79B8();
                      OUTLINED_FUNCTION_9_15(v162);
                      if (!v65)
                      {
                        goto LABEL_244;
                      }

                      v67 = v210;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_30_9();
                      v165 = v65 && v163 == v164;
                      if (v165 || (OUTLINED_FUNCTION_36_8() & 1) != 0)
                      {
                        v166 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastEpisodeName);
                        sub_267C12290(v166, v211);
                        v167 = sub_267EF79B8();
                        OUTLINED_FUNCTION_9_15(v167);
                        if (!v65)
                        {
                          goto LABEL_244;
                        }

                        v67 = v211;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_30_9();
                        v170 = v65 && v168 == v169;
                        if (v170 || (OUTLINED_FUNCTION_36_8() & 1) != 0)
                        {
                          v171 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastEpisodePodcastName);
                          sub_267C12290(v171, v212);
                          v172 = sub_267EF79B8();
                          OUTLINED_FUNCTION_9_15(v172);
                          if (!v65)
                          {
                            goto LABEL_244;
                          }

                          v67 = v212;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_30_9();
                          v175 = v65 && v173 == v174;
                          if (v175 || (OUTLINED_FUNCTION_36_8() & 1) != 0)
                          {
                            v176 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvEpisodeEpisodeName);
                            sub_267C12290(v176, v213);
                            v177 = sub_267EF79B8();
                            OUTLINED_FUNCTION_9_15(v177);
                            if (!v65)
                            {
                              goto LABEL_244;
                            }

                            v67 = v213;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_30_9();
                            v180 = v65 && v178 == v179;
                            if (v180 || (OUTLINED_FUNCTION_36_8() & 1) != 0)
                            {
                              v181 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvEpisodeSeasonName);
                              sub_267C12290(v181, v214);
                              v182 = sub_267EF79B8();
                              OUTLINED_FUNCTION_9_15(v182);
                              if (!v65)
                              {
                                goto LABEL_244;
                              }

                              v67 = v214;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_30_9();
                              v184 = v65 && v183 == 0xEC000000656D614ELL;
                              if (v184 || (OUTLINED_FUNCTION_36_8() & 1) != 0)
                              {
                                v185 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvSeasonName);
                                sub_267C12290(v185, v215);
                                v186 = sub_267EF79B8();
                                OUTLINED_FUNCTION_9_15(v186);
                                if (!v65)
                                {
                                  goto LABEL_244;
                                }

                                v67 = v215;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_30_9();
                                v188 = v65 && v187 == 0xE900000000000065;
                                if (v188 || (OUTLINED_FUNCTION_33_3() & 1) != 0)
                                {
                                  v189 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_movieName);
                                  sub_267C12290(v189, v216);
                                  v190 = sub_267EF79B8();
                                  OUTLINED_FUNCTION_9_15(v190);
                                  if (!v65)
                                  {
                                    goto LABEL_244;
                                  }

                                  v67 = v216;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_30_9();
                                  v192 = v65 && v191 == 0xEA0000000000656DLL;
                                  if (v192 || (OUTLINED_FUNCTION_36_8() & 1) != 0)
                                  {
                                    v193 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvShowName);
                                    sub_267C12290(v193, v217);
                                    v194 = sub_267EF79B8();
                                    OUTLINED_FUNCTION_9_15(v194);
                                    if (!v65)
                                    {
                                      goto LABEL_244;
                                    }

                                    v67 = v217;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_42_6();
                                    OUTLINED_FUNCTION_30_9();
                                    v197 = v65 && v196 == v195;
                                    if (v197 || (OUTLINED_FUNCTION_36_8() & 1) != 0)
                                    {
                                      v198 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_movieBundleName);
                                      sub_267C12290(v198, v218);
                                      v199 = sub_267EF79B8();
                                      OUTLINED_FUNCTION_9_15(v199);
                                      if (!v65)
                                      {
                                        goto LABEL_244;
                                      }

                                      v67 = v218;
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_46_6();
                                      OUTLINED_FUNCTION_30_9();
                                      if (!v65 || v201 != v200)
                                      {
                                        result = OUTLINED_FUNCTION_36_8();
                                        if ((result & 1) == 0)
                                        {
                                          goto LABEL_10;
                                        }
                                      }

                                      v203 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_appleTvTitle);
                                      sub_267C12290(v203, v219);
                                      v204 = sub_267EF79B8();
                                      OUTLINED_FUNCTION_9_15(v204);
                                      if (!v65)
                                      {
LABEL_244:
                                        OUTLINED_FUNCTION_38_7();
                                        OUTLINED_FUNCTION_18_0();
                                        v78 = *(v205 + 32);
                                        return v78();
                                      }

                                      v67 = v219;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

LABEL_9:
              result = sub_267BBD6F0(v67);
LABEL_10:
              v69 = v226;
              *v226 = 0u;
              *(v69 + 1) = 0u;
              return result;
            }

            v139 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_bookAuthor);
            OUTLINED_FUNCTION_48_6(v139, &v231);
            v140 = sub_267EF79B8();
            OUTLINED_FUNCTION_9_15(v140);
            if (!v65)
            {
              OUTLINED_FUNCTION_38_7();
              OUTLINED_FUNCTION_18_0();
              v78 = *(v141 + 32);
              v120 = &v231;
              goto LABEL_141;
            }

            v118 = &v231;
          }
        }
      }
    }

    v67 = *(v118 - 32);
    goto LABEL_9;
  }

  v75 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_linkMediaType);
  sub_267C12290(v75, 0x656D614E65746973);
  v76 = sub_267EF79B8();
  if (__swift_getEnumTagSinglePayload(0x656D614E65746973, 1, v76) == 1)
  {
    v67 = 0x656D614E65746973;
    goto LABEL_9;
  }

  v77 = v226;
  v226[3] = v76;
  __swift_allocate_boxed_opaque_existential_0(v77);
  v78 = *(*(v76 - 8) + 32);
  return v78();
}

uint64_t sub_267C88E74()
{
  v0 = sub_267EF9EE8();

  if (v0 >= 0x1E)
  {
    return 30;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_267C88ECC(char a1)
{
  result = 0x656D614E65746973;
  switch(a1)
  {
    case 1:
      return 0x656C746974;
    case 2:
      return OUTLINED_FUNCTION_41_6();
    case 3:
      return 0x6C746954676E6F73;
    case 4:
      return 0x69747241676E6F73;
    case 5:
      v4 = 0x4E6D75626C61;
      goto LABEL_32;
    case 6:
      return OUTLINED_FUNCTION_47_5();
    case 7:
      return OUTLINED_FUNCTION_43_8();
    case 8:
      return 0xD000000000000010;
    case 9:
      v3 = 0x747369747261;
      goto LABEL_10;
    case 10:
      return 0x7473696C79616C70;
    case 11:
      return 0x7473696C79616C70;
    case 12:
      v4 = 0x4E6F69646172;
      goto LABEL_32;
    case 13:
      return OUTLINED_FUNCTION_45_7();
    case 14:
      return 0x6572617774666F73;
    case 15:
      return 0x656D614E6B6F6F62;
    case 16:
      return 0x687475416B6F6F62;
    case 17:
    case 18:
      return 0x6F6F426F69647561;
    case 19:
      return OUTLINED_FUNCTION_44_8();
    case 20:
      return OUTLINED_FUNCTION_40_5();
    case 21:
      return 0xD000000000000012;
    case 22:
      return 0xD000000000000019;
    case 23:
      return 0xD000000000000014;
    case 24:
      return 0xD000000000000013;
    case 25:
      return 0x6E6F736165537674;
    case 26:
      v4 = 0x4E6569766F6DLL;
LABEL_32:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6D61000000000000;
      break;
    case 27:
      v3 = 0x776F68537674;
LABEL_10:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
      break;
    case 28:
      result = OUTLINED_FUNCTION_42_6();
      break;
    case 29:
      result = OUTLINED_FUNCTION_46_6();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267C89218@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267C88E74();
  *a2 = result;
  return result;
}

uint64_t sub_267C89248@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267C88ECC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_267C8927C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267C88EC8();
  *a1 = result;
  return result;
}

uint64_t sub_267C892B0(uint64_t a1)
{
  v2 = sub_267C8B378();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267C892EC(uint64_t a1)
{
  v2 = sub_267C8B378();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267C89328()
{
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_siteName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_title);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_linkMediaType);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_songTitle);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_songArtist);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_albumName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_albumArtist);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_musicVideoName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_musicVideoArtist);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_artistName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_playlistName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_playlistCurator);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_radioName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_radioCurator);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_softwareName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_bookName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_bookAuthor);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_audioBookName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_audioBookAuthor);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastArtist);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastEpisodeName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastEpisodePodcastName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvEpisodeEpisodeName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvEpisodeSeasonName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvSeasonName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_movieName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvShowName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_movieBundleName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_appleTvTitle);
  return v0;
}

uint64_t sub_267C89540(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

void sub_267C895C4()
{
  sub_267C11A54();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_267C89694(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A010, &qword_267EFFEF0);
  v4 = OUTLINED_FUNCTION_58(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v15[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267C8B378();
  sub_267EFA088();
  v15[15] = 0;
  sub_267EF79B8();
  OUTLINED_FUNCTION_32_6();
  sub_267C8B330(v12, v13);
  sub_267EF9DF8();
  if (!v1)
  {
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
  }

  return (*(v6 + 8))(v10, v3);
}

uint64_t sub_267C89AC0(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_267C89BFC(a1);
  return v5;
}

void sub_267C89B38()
{
  sub_267C11A54();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_267C89BFC(uint64_t *a1)
{
  v5 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_6();
  v131 = v9;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77_0();
  v130 = v11;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77_0();
  v129 = v13;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77_0();
  v128 = v15;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_77_0();
  v132 = v27;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_77_0();
  v133 = v29;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_77_0();
  v134 = v31;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_77_0();
  v135 = v33;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_77_0();
  v136 = v35;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_77_0();
  v137 = v37;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_77_0();
  v138 = v39;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_77_0();
  v139 = v41;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_77_0();
  v140 = v43;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_77_0();
  v141 = v45;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_77_0();
  v142 = v47;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_50_0();
  v52 = MEMORY[0x28223BE20](v51);
  v54 = v114 - v53;
  MEMORY[0x28223BE20](v52);
  v143 = v114 - v55;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A000, &qword_267EFFEE8);
  v56 = OUTLINED_FUNCTION_58(v144);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v56);
  v62 = v114 - v61;
  v147 = a1;
  v148 = v5;
  *(v5 + 16) = 0;
  v63 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267C8B378();
  v145 = v62;
  v64 = v146;
  sub_267EFA078();
  if (v64)
  {
    v70 = v148;

    v71 = v147;
    goto LABEL_4;
  }

  v117 = v1;
  v116 = v3;
  v115 = v4;
  v146 = v58;
  v65 = sub_267EF79B8();
  v149 = 0;
  OUTLINED_FUNCTION_32_6();
  v68 = sub_267C8B330(v66, v67);
  v69 = v143;
  sub_267EF9D88();
  v75 = v148;
  sub_267C12220(v69, v148 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_siteName);
  OUTLINED_FUNCTION_27_6(1);
  v114[1] = v65;
  v114[2] = v68;
  sub_267EF9D88();
  sub_267C12220(v54, v75 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_title);
  OUTLINED_FUNCTION_27_6(2);
  OUTLINED_FUNCTION_19_10();
  v114[0] = 0;
  sub_267EF9D88();
  OUTLINED_FUNCTION_55_4(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_linkMediaType);
  OUTLINED_FUNCTION_27_6(3);
  v76 = v116;
  OUTLINED_FUNCTION_19_10();
  sub_267EF9D88();
  sub_267C12220(v76, v75 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_songTitle);
  OUTLINED_FUNCTION_27_6(4);
  v77 = v115;
  OUTLINED_FUNCTION_19_10();
  sub_267EF9D88();
  sub_267C12220(v77, v75 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_songArtist);
  OUTLINED_FUNCTION_27_6(5);
  v78 = v145;
  sub_267EF9D88();
  OUTLINED_FUNCTION_55_4(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_albumName);
  OUTLINED_FUNCTION_27_6(6);
  OUTLINED_FUNCTION_34_6();
  v80 = *(v79 - 256);
  sub_267EF9D88();
  OUTLINED_FUNCTION_55_4(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_albumArtist);
  OUTLINED_FUNCTION_27_6(7);
  OUTLINED_FUNCTION_34_6();
  v82 = *(v81 - 256);
  sub_267EF9D88();
  OUTLINED_FUNCTION_55_4(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_musicVideoName);
  OUTLINED_FUNCTION_27_6(8);
  v83 = v139;
  OUTLINED_FUNCTION_34_6();
  v85 = *(v84 - 256);
  sub_267EF9D88();
  v143 = 0;
  OUTLINED_FUNCTION_31_1(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_musicVideoArtist);
  sub_267C12220(v83, v86);
  OUTLINED_FUNCTION_27_6(9);
  v87 = v143;
  sub_267EF9D88();
  v143 = v87;
  if (!v87)
  {
    OUTLINED_FUNCTION_31_1(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_artistName);
    sub_267C12220(v138, v90);
    OUTLINED_FUNCTION_27_6(10);
    OUTLINED_FUNCTION_14_15();
    v143 = 0;
    OUTLINED_FUNCTION_31_1(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_playlistName);
    sub_267C12220(v137, v91);
    OUTLINED_FUNCTION_27_6(11);
    OUTLINED_FUNCTION_14_15();
    v143 = 0;
    OUTLINED_FUNCTION_31_1(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_playlistCurator);
    sub_267C12220(v136, v94);
    OUTLINED_FUNCTION_27_6(12);
    OUTLINED_FUNCTION_14_15();
    v143 = 0;
    OUTLINED_FUNCTION_31_1(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_radioName);
    sub_267C12220(v135, v95);
    OUTLINED_FUNCTION_27_6(13);
    OUTLINED_FUNCTION_14_15();
    v143 = 0;
    OUTLINED_FUNCTION_31_1(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_radioCurator);
    sub_267C12220(v134, v96);
    OUTLINED_FUNCTION_27_6(14);
    OUTLINED_FUNCTION_14_15();
    v143 = 0;
    OUTLINED_FUNCTION_31_1(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_softwareName);
    sub_267C12220(v133, v97);
    OUTLINED_FUNCTION_27_6(15);
    OUTLINED_FUNCTION_14_15();
    v143 = 0;
    OUTLINED_FUNCTION_31_1(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_bookName);
    sub_267C12220(v132, v98);
    OUTLINED_FUNCTION_27_6(16);
    OUTLINED_FUNCTION_14_15();
    v143 = 0;
    OUTLINED_FUNCTION_31_1(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_bookAuthor);
    sub_267C12220(v118, v99);
    OUTLINED_FUNCTION_27_6(17);
    OUTLINED_FUNCTION_14_15();
    v143 = 0;
    OUTLINED_FUNCTION_31_1(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_audioBookName);
    sub_267C12220(v119, v100);
    OUTLINED_FUNCTION_27_6(18);
    OUTLINED_FUNCTION_14_15();
    v143 = 0;
    OUTLINED_FUNCTION_31_1(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_audioBookAuthor);
    sub_267C12220(v120, v101);
    OUTLINED_FUNCTION_27_6(19);
    OUTLINED_FUNCTION_14_15();
    v143 = 0;
    OUTLINED_FUNCTION_31_1(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastName);
    sub_267C12220(v121, v102);
    OUTLINED_FUNCTION_27_6(20);
    OUTLINED_FUNCTION_14_15();
    v143 = 0;
    OUTLINED_FUNCTION_31_1(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastArtist);
    sub_267C12220(v122, v103);
    OUTLINED_FUNCTION_27_6(21);
    OUTLINED_FUNCTION_14_15();
    v143 = 0;
    OUTLINED_FUNCTION_31_1(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastEpisodeName);
    sub_267C12220(v123, v104);
    OUTLINED_FUNCTION_27_6(22);
    OUTLINED_FUNCTION_14_15();
    v143 = 0;
    OUTLINED_FUNCTION_31_1(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastEpisodePodcastName);
    sub_267C12220(v124, v105);
    OUTLINED_FUNCTION_27_6(23);
    OUTLINED_FUNCTION_14_15();
    v143 = 0;
    OUTLINED_FUNCTION_31_1(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvEpisodeEpisodeName);
    sub_267C12220(v125, v106);
    OUTLINED_FUNCTION_27_6(24);
    OUTLINED_FUNCTION_14_15();
    v143 = 0;
    OUTLINED_FUNCTION_31_1(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvEpisodeSeasonName);
    sub_267C12220(v126, v107);
    OUTLINED_FUNCTION_27_6(25);
    OUTLINED_FUNCTION_14_15();
    v143 = 0;
    OUTLINED_FUNCTION_31_1(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvSeasonName);
    sub_267C12220(v127, v108);
    OUTLINED_FUNCTION_27_6(26);
    OUTLINED_FUNCTION_14_15();
    v143 = 0;
    OUTLINED_FUNCTION_31_1(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_movieName);
    sub_267C12220(v128, v109);
    OUTLINED_FUNCTION_27_6(27);
    OUTLINED_FUNCTION_14_15();
    v143 = 0;
    OUTLINED_FUNCTION_31_1(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvShowName);
    sub_267C12220(v129, v110);
    OUTLINED_FUNCTION_27_6(28);
    OUTLINED_FUNCTION_14_15();
    v143 = 0;
    OUTLINED_FUNCTION_31_1(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_movieBundleName);
    sub_267C12220(v130, v111);
    OUTLINED_FUNCTION_27_6(29);
    OUTLINED_FUNCTION_14_15();
    v143 = 0;
    v112 = OUTLINED_FUNCTION_20_7();
    v113(v112);
    v70 = v148;
    sub_267C12220(v131, v148 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_appleTvTitle);
    __swift_destroy_boxed_opaque_existential_0(v147);
    return v70;
  }

  v88 = OUTLINED_FUNCTION_20_7();
  v89(v88);
  LODWORD(v126) = 0;
  LODWORD(v127) = 0;
  LODWORD(v128) = 0;
  LODWORD(v129) = 0;
  LODWORD(v130) = 0;
  LODWORD(v131) = 0;
  OUTLINED_FUNCTION_3_20();
  OUTLINED_FUNCTION_8_15();
  v92 = v114[0];
  v93 = v148;

  sub_267BBD6F0(v93 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_siteName);
  if (v92)
  {
    v71 = v147;
    if (v75)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_267BBD6F0(v93 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_title);
    v71 = v147;
    if (v75)
    {
LABEL_11:
      sub_267BBD6F0(v148 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_linkMediaType);
      if ((&unk_280240000 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_39;
    }
  }

  if (!&unk_280240000)
  {
LABEL_12:
    v70 = v148;
    if (v78)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  v70 = v148;
  sub_267BBD6F0(v148 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_songTitle);
  if (v78)
  {
LABEL_13:
    sub_267BBD6F0(v70 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_songArtist);
    if ((&unk_280240000 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  if (!&unk_280240000)
  {
LABEL_14:
    if (v85)
    {
      goto LABEL_15;
    }

LABEL_42:
    if (!v83)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_41:
  sub_267BBD6F0(v70 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_albumName);
  if ((v85 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_15:
  sub_267BBD6F0(v70 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_albumArtist);
  if ((v83 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_43:
  sub_267BBD6F0(v70 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_musicVideoName);
LABEL_16:
  sub_267BBD6F0(v70 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_musicVideoArtist);
  if (v126)
  {
    sub_267BBD6F0(v70 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_artistName);
    if (v127)
    {
LABEL_18:
      sub_267BBD6F0(v70 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_playlistName);
      if ((v128 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_46;
    }
  }

  else if (v127)
  {
    goto LABEL_18;
  }

  if (!v128)
  {
LABEL_19:
    if (v129)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  sub_267BBD6F0(v70 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_playlistCurator);
  if (v129)
  {
LABEL_20:
    sub_267BBD6F0(v70 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_radioName);
    if ((v130 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  if (!v130)
  {
LABEL_21:
    if (v131)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  sub_267BBD6F0(v70 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_radioCurator);
  if (v131)
  {
LABEL_22:
    sub_267BBD6F0(v70 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_softwareName);
    if ((v132 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  if (!v132)
  {
LABEL_23:
    if (v133)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  sub_267BBD6F0(v70 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_bookName);
  if (v133)
  {
LABEL_24:
    sub_267BBD6F0(v70 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_bookAuthor);
    if ((v134 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

LABEL_51:
  if (!v134)
  {
LABEL_25:
    if (v135)
    {
      goto LABEL_26;
    }

    goto LABEL_53;
  }

LABEL_52:
  sub_267BBD6F0(v70 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_audioBookName);
  if (v135)
  {
LABEL_26:
    sub_267BBD6F0(v70 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_audioBookAuthor);
    if ((v136 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_54;
  }

LABEL_53:
  if (!v136)
  {
LABEL_27:
    if (v137)
    {
      goto LABEL_28;
    }

    goto LABEL_55;
  }

LABEL_54:
  sub_267BBD6F0(v70 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastName);
  if (v137)
  {
LABEL_28:
    sub_267BBD6F0(v70 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastArtist);
    if ((v138 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_56;
  }

LABEL_55:
  if (!v138)
  {
LABEL_29:
    if (v139)
    {
      goto LABEL_30;
    }

    goto LABEL_57;
  }

LABEL_56:
  sub_267BBD6F0(v70 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastEpisodeName);
  if (v139)
  {
LABEL_30:
    sub_267BBD6F0(v70 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastEpisodePodcastName);
    if ((v140 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_58;
  }

LABEL_57:
  if (!v140)
  {
LABEL_31:
    if (v141)
    {
      goto LABEL_32;
    }

    goto LABEL_59;
  }

LABEL_58:
  sub_267BBD6F0(v70 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvEpisodeEpisodeName);
  if (v141)
  {
LABEL_32:
    sub_267BBD6F0(v70 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvEpisodeSeasonName);
    if ((v142 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_60;
  }

LABEL_59:
  if (!v142)
  {
LABEL_33:
    if (v144)
    {
      goto LABEL_34;
    }

    goto LABEL_61;
  }

LABEL_60:
  sub_267BBD6F0(v70 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvSeasonName);
  if (v144)
  {
LABEL_34:
    sub_267BBD6F0(v70 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_movieName);
    if ((v145 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

LABEL_61:
  if (!v145)
  {
LABEL_35:
    if (v146)
    {
      goto LABEL_63;
    }

    goto LABEL_4;
  }

LABEL_62:
  sub_267BBD6F0(v70 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvShowName);
  if (v146)
  {
LABEL_63:
    sub_267BBD6F0(v70 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_movieBundleName);
  }

LABEL_4:
  type metadata accessor for MessagesLinkMetadata(0);
  v72 = *(*v70 + 48);
  v73 = *(*v70 + 52);
  swift_deallocPartialClassInstance();
  __swift_destroy_boxed_opaque_existential_0(v71);
  return v70;
}

uint64_t sub_267C8B250@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_267C89AC0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_267C8B330(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267C8B378()
{
  result = qword_28022A008;
  if (!qword_28022A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A008);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessagesLinkMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE3)
  {
    if (a2 + 29 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 29) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 30;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v5 = v6 - 30;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MessagesLinkMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE2)
  {
    v6 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
          *result = a2 + 29;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267C8B534()
{
  result = qword_28022A018;
  if (!qword_28022A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A018);
  }

  return result;
}

unint64_t sub_267C8B58C()
{
  result = qword_28022A020;
  if (!qword_28022A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A020);
  }

  return result;
}

unint64_t sub_267C8B5E4()
{
  result = qword_28022A028;
  if (!qword_28022A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A028);
  }

  return result;
}

uint64_t sub_267C8B638@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SearchForMessagesAppResolutionAndPreRCHCheckFlow.State(0);
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC16SiriMessagesFlow48SearchForMessagesAppResolutionAndPreRCHCheckFlow_state;
  swift_beginAccess();
  OUTLINED_FUNCTION_2_25();
  sub_267C8D7F4(v1 + v9, v8, v10);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v11 = sub_267EF2FC8();
    OUTLINED_FUNCTION_22(v11);
    return (*(v12 + 32))(a1, v8);
  }

  else
  {
    sub_267C4BE60();
    v14 = swift_allocError();
    *v15 = 0;
    v15[1] = 0;
    *a1 = v14;
    *(a1 + 8) = 0;
    v16 = *MEMORY[0x277D5B408];
    v17 = sub_267EF2FC8();
    OUTLINED_FUNCTION_22(v17);
    (*(v18 + 104))(a1, v16);
    OUTLINED_FUNCTION_0_19();
    return sub_267C8D74C(v8, v19);
  }
}

uint64_t sub_267C8B7A0()
{
  OUTLINED_FUNCTION_12();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_267EF2FC8();
  v1[7] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[8] = v4;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v7 = type metadata accessor for SearchForMessagesAppResolutionAndPreRCHCheckFlow.State(0);
  v1[12] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267C8B8A0()
{
  v64 = v0;
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[6];
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow48SearchForMessagesAppResolutionAndPreRCHCheckFlow_state;
  swift_beginAccess();
  OUTLINED_FUNCTION_2_25();
  sub_267C8D7F4(v3 + v4, v1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    (*(v0[8] + 32))(v0[11], v0[14], v0[7]);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v15 = v0[10];
    v16 = v0[11];
    v17 = v0[7];
    v18 = v0[8];
    v19 = sub_267EF8A08();
    __swift_project_value_buffer(v19, qword_280240FB0);
    v20 = *(v18 + 16);
    v20(v15, v16, v17);
    v21 = sub_267EF89F8();
    v22 = sub_267EF95D8();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[10];
    if (v23)
    {
      v62 = v22;
      v25 = v0[8];
      v26 = v0[9];
      v27 = v0[7];
      v28 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v63 = v61;
      *v28 = 136315138;
      v20(v26, v24, v27);
      v29 = sub_267EF9098();
      v31 = v30;
      v32 = *(v25 + 8);
      v32(v24, v27);
      v33 = sub_267BA33E8(v29, v31, &v63);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_267B93000, v21, v62, "SearchAppResolutionFlow# flow execution completed with result: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
      v49 = v0[7];
      v50 = v0[8];

      v32 = *(v50 + 8);
      v32(v24, v49);
    }

    v51 = v0[11];
    v52 = v0[7];
    v53 = v0[5];
    sub_267EF4018();
    v32(v51, v52);
LABEL_19:
    v55 = v0[13];
    v54 = v0[14];
    v57 = v0[10];
    v56 = v0[11];
    v58 = v0[9];

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_64_3();

    __asm { BRAA            X1, X16 }
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v34 = v0[6];
      v35 = sub_267EF8A08();
      __swift_project_value_buffer(v35, qword_280240FB0);

      v36 = sub_267EF89F8();
      v37 = sub_267EF95E8();

      if (os_log_type_enabled(v36, v37))
      {
        v39 = v0[12];
        v38 = v0[13];
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v63 = v41;
        *v40 = 136315138;
        OUTLINED_FUNCTION_2_25();
        sub_267C8D7F4(v3 + v4, v38, v42);
        v43 = sub_267EF9098();
        v45 = sub_267BA33E8(v43, v44, &v63);

        *(v40 + 4) = v45;
        _os_log_impl(&dword_267B93000, v36, v37, "SearchAppResolutionFlow# execute() called while in an unexpected state: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      v46 = v0[14];
      v47 = v0[5];
      sub_267EF4018();
      OUTLINED_FUNCTION_0_19();
      sub_267C8D74C(v46, v48);
    }

    else
    {
      v7 = v0[5];
      v8 = v0[6];
      v9 = *v0[14];
      sub_267C8BF10();
    }

    goto LABEL_19;
  }

  v0[15] = *v0[14];
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_267C8BD3C;
  v11 = v0[5];
  v12 = v0[6];
  OUTLINED_FUNCTION_64_3();

  return sub_267C8C6B0();
}

uint64_t sub_267C8BD3C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C8BE20()
{
  v1 = v0[15];

  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];

  OUTLINED_FUNCTION_17();

  return v7();
}

uint64_t sub_267C8BF10()
{
  v1 = v0;
  v2 = type metadata accessor for SearchForMessagesAppResolutionAndPreRCHCheckFlow.State(0);
  v3 = OUTLINED_FUNCTION_22(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v8 = sub_267EF8A08();
  __swift_project_value_buffer(v8, qword_280240FB0);
  v9 = sub_267EF89F8();
  v10 = sub_267EF95C8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_267B93000, v9, v10, "SearchAppResolutionFlow# pushing app resolution flow", v11, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  swift_storeEnumTagMultiPayload();
  v12 = OBJC_IVAR____TtC16SiriMessagesFlow48SearchForMessagesAppResolutionAndPreRCHCheckFlow_state;
  swift_beginAccess();
  sub_267C8D6E0(v7, v1 + v12);
  swift_endAccess();

  sub_267EF3FD8();
}

uint64_t sub_267C8C0AC(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchForMessagesAppResolutionAndPreRCHCheckFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_267EF2FC8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v49 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = (&v49 - v17);
  v55 = *(v9 + 16);
  v56 = a1;
  v55(&v49 - v17, a1, v8);
  if ((*(v9 + 88))(v18, v8) == *MEMORY[0x277D5B410])
  {
    (*(v9 + 96))(v18, v8);
    v19 = *v18;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v20 = sub_267EF8A08();
    __swift_project_value_buffer(v20, qword_280240FB0);

    v21 = sub_267EF89F8();
    v22 = sub_267EF95C8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v57 = v19;
      v58[0] = v24;
      *v23 = 136446210;
      sub_267EF7C38();
      v25 = v7;
      sub_267C8D7AC(&qword_28022A060, MEMORY[0x277D55380]);
      v26 = sub_267EF9E58();
      v28 = sub_267BA33E8(v26, v27, v58);

      *(v23 + 4) = v28;
      v7 = v25;
      _os_log_impl(&dword_267B93000, v21, v22, "SearchAppResolutionFlow# app resolution flow resolved app: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x26D60A7B0](v24, -1, -1);
      MEMORY[0x26D60A7B0](v23, -1, -1);
    }

    *v7 = v19;
    swift_storeEnumTagMultiPayload();
    v29 = OBJC_IVAR____TtC16SiriMessagesFlow48SearchForMessagesAppResolutionAndPreRCHCheckFlow_state;
    swift_beginAccess();
    sub_267C8D6E0(v7, a2 + v29);
    return swift_endAccess();
  }

  else
  {
    v52 = v4;
    v53 = v7;
    v54 = a2;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v31 = sub_267EF8A08();
    __swift_project_value_buffer(v31, qword_280240FB0);
    v32 = sub_267EF89F8();
    v33 = sub_267EF95C8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_267B93000, v32, v33, "SearchAppResolutionFlow# app resolution flow didn't resolve app", v34, 2u);
      MEMORY[0x26D60A7B0](v34, -1, -1);
    }

    v35 = v55;
    v55(v16, v56, v8);
    v36 = sub_267EF89F8();
    v37 = sub_267EF95D8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v50 = v38;
      v51 = swift_slowAlloc();
      v58[0] = v51;
      *v38 = 136315138;
      v35(v13, v16, v8);
      v49 = sub_267EF9098();
      v40 = v39;
      v41 = *(v9 + 8);
      v41(v16, v8);
      v42 = sub_267BA33E8(v49, v40, v58);

      v43 = v50;
      *(v50 + 1) = v42;
      _os_log_impl(&dword_267B93000, v36, v37, "SearchAppResolutionFlow# app resolution flow didn't resolve app: %s", v43, 0xCu);
      v44 = v51;
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x26D60A7B0](v44, -1, -1);
      MEMORY[0x26D60A7B0](v43, -1, -1);

      v45 = v55;
    }

    else
    {

      v41 = *(v9 + 8);
      v45 = v35;
      v41(v16, v8);
    }

    v46 = v53;
    v45(v53, v56, v8);
    swift_storeEnumTagMultiPayload();
    v47 = OBJC_IVAR____TtC16SiriMessagesFlow48SearchForMessagesAppResolutionAndPreRCHCheckFlow_state;
    v48 = v54;
    swift_beginAccess();
    sub_267C8D6E0(v46, v48 + v47);
    swift_endAccess();
    return (v41)(v18, v8);
  }
}

uint64_t sub_267C8C6B0()
{
  OUTLINED_FUNCTION_12();
  v1[10] = v2;
  v1[11] = v0;
  v1[9] = v3;
  v4 = sub_267EF43F8();
  v1[12] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[13] = v5;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();
  v8 = type metadata accessor for SearchForMessagesAppResolutionAndPreRCHCheckFlow.State(0);
  v1[15] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v10 = *(*(type metadata accessor for AuthenticationRequiredResponse() - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267C8C7C8()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[11];
  __swift_project_boxed_opaque_existential_0(v1 + 8, v1[11]);
  v2 = v1[7];
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_267C8C870;
  v4 = v0[10];

  return sub_267E3C970(v2, v4);
}

uint64_t sub_267C8C870()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = *(v1 + 152);
  v9 = *v0;
  *(v2 + 168) = v4;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C8C960()
{
  if (*(v0 + 168) == 1)
  {
    v1 = *(v0 + 144);
    sub_267EF43E8();
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v5 = *(v0 + 96);
  __swift_storeEnumTagSinglePayload(v4, v2, 1, v5);
  sub_267C8D7F4(v4, v3, type metadata accessor for AuthenticationRequiredResponse);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) != 1)
  {
    (*(*(v0 + 104) + 32))(*(v0 + 112), *(v0 + 136), *(v0 + 96));
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v23 = sub_267EF8A08();
    __swift_project_value_buffer(v23, qword_280240FB0);
    v24 = sub_267EF89F8();
    v25 = sub_267EF95C8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_267B93000, v24, v25, "SearchAppResolutionFlow# Authentication is required - pushing unlock flow", v26, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v28 = *(v0 + 120);
    v27 = *(v0 + 128);
    v30 = *(v0 + 104);
    v29 = *(v0 + 112);
    v31 = *(v0 + 88);
    v49 = *(v0 + 96);
    v50 = *(v0 + 144);
    v32 = *(v0 + 80);
    v48 = *(v0 + 72);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229218, &unk_267EFCBA0);
    v33 = sub_267EF3488();
    OUTLINED_FUNCTION_30_0(v33);
    v35 = *(v34 + 72);
    v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    *(swift_allocObject() + 16) = xmmword_267EFC020;
    sub_267EF3478();
    v38 = sub_267EF2F28();

    swift_storeEnumTagMultiPayload();
    v39 = OBJC_IVAR____TtC16SiriMessagesFlow48SearchForMessagesAppResolutionAndPreRCHCheckFlow_state;
    swift_beginAccess();
    sub_267C8D6E0(v27, v31 + v39);
    swift_endAccess();
    *(v0 + 64) = v38;
    v40 = swift_allocObject();
    *(v40 + 16) = v31;
    *(v40 + 24) = v32;
    sub_267EF3428();

    sub_267EF3FC8();

    (*(v30 + 8))(v29, v49);
    OUTLINED_FUNCTION_5_22();
    sub_267C8D74C(v50, v41);

    v43 = *(v0 + 136);
    v42 = *(v0 + 144);
    v44 = *(v0 + 128);
    v45 = *(v0 + 112);

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_64_3();

    __asm { BRAA            X1, X16 }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v6 = sub_267EF8A08();
  __swift_project_value_buffer(v6, qword_280240FB0);
  v7 = sub_267EF89F8();
  v8 = sub_267EF95C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_267B93000, v7, v8, "SearchAppResolutionFlow# Authentication is not required", v9, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v11 = *(v0 + 120);
  v10 = *(v0 + 128);
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);

  *v10 = v12;
  v14 = *MEMORY[0x277D5B410];
  v15 = sub_267EF2FC8();
  OUTLINED_FUNCTION_22(v15);
  (*(v16 + 104))(v10, v14);
  swift_storeEnumTagMultiPayload();
  v17 = OBJC_IVAR____TtC16SiriMessagesFlow48SearchForMessagesAppResolutionAndPreRCHCheckFlow_state;
  swift_beginAccess();

  sub_267C8D6E0(v10, v13 + v17);
  swift_endAccess();
  v18 = swift_task_alloc();
  *(v0 + 160) = v18;
  *v18 = v0;
  v18[1] = sub_267C8CE60;
  v19 = *(v0 + 88);
  v20 = *(v0 + 72);
  OUTLINED_FUNCTION_64_3();

  return sub_267C8B7A0();
}

uint64_t sub_267C8CE60()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 160);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C8CF44()
{
  v1 = v0[18];
  OUTLINED_FUNCTION_5_22();
  sub_267C8D74C(v2, v3);
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  v7 = v0[14];

  OUTLINED_FUNCTION_17();

  return v8();
}

uint64_t sub_267C8CFD4(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SearchForMessagesAppResolutionAndPreRCHCheckFlow.State(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v10 = sub_267EF8A08();
    __swift_project_value_buffer(v10, qword_280240FB0);
    v11 = sub_267EF89F8();
    v12 = sub_267EF95E8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_267B93000, v11, v12, "SearchAppResolutionFlow# error while trying to authenticate the device", v13, 2u);
      MEMORY[0x26D60A7B0](v13, -1, -1);
    }

    sub_267C4BE60();
    v14 = swift_allocError();
    *v15 = xmmword_267F00050;
    *v9 = v14;
    v9[8] = 0;
    v16 = *MEMORY[0x277D5B408];
    v17 = sub_267EF2FC8();
    (*(*(v17 - 8) + 104))(v9, v16, v17);
    swift_storeEnumTagMultiPayload();
    v18 = OBJC_IVAR____TtC16SiriMessagesFlow48SearchForMessagesAppResolutionAndPreRCHCheckFlow_state;
    swift_beginAccess();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v19 = sub_267EF8A08();
    __swift_project_value_buffer(v19, qword_280240FB0);
    v20 = sub_267EF89F8();
    v21 = sub_267EF95C8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_267B93000, v20, v21, "SearchAppResolutionFlow# Authentication successful!", v22, 2u);
      MEMORY[0x26D60A7B0](v22, -1, -1);
    }

    *v9 = a3;
    v23 = *MEMORY[0x277D5B410];
    v24 = sub_267EF2FC8();
    (*(*(v24 - 8) + 104))(v9, v23, v24);
    swift_storeEnumTagMultiPayload();
    v18 = OBJC_IVAR____TtC16SiriMessagesFlow48SearchForMessagesAppResolutionAndPreRCHCheckFlow_state;
    swift_beginAccess();
  }

  sub_267C8D6E0(v9, a2 + v18);
  return swift_endAccess();
}

uint64_t sub_267C8D310()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));
  OUTLINED_FUNCTION_0_19();
  return sub_267C8D74C(v0 + v1, v2);
}

uint64_t sub_267C8D350()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));
  OUTLINED_FUNCTION_0_19();
  sub_267C8D74C(v0 + v1, v2);
  return v0;
}

uint64_t sub_267C8D39C()
{
  sub_267C8D350();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_267C8D41C()
{
  result = type metadata accessor for SearchForMessagesAppResolutionAndPreRCHCheckFlow.State(319);
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

void sub_267C8D4E8()
{
  sub_267C8D570();
  if (v0 <= 0x3F)
  {
    sub_267EF7C38();
    if (v1 <= 0x3F)
    {
      sub_267EF2FC8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_267C8D570()
{
  if (!qword_28022A050)
  {
    sub_267EF2FC8();
    v0 = sub_267EF3538();
    if (!v1)
    {
      atomic_store(v0, &qword_28022A050);
    }
  }
}

uint64_t sub_267C8D5D8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BAEBEC;

  return sub_267C8B7A0();
}

uint64_t sub_267C8D6E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchForMessagesAppResolutionAndPreRCHCheckFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267C8D74C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_22(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_267C8D7AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267C8D7F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_22(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

id sub_267C8D854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v121 = a4;
  v123 = a3;
  v6 = sub_267EF8818();
  v7 = OUTLINED_FUNCTION_58(v6);
  v118 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_0();
  v116 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_18(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_17(v17, v110);
  v18 = sub_267EF2BA8();
  v19 = OUTLINED_FUNCTION_58(v18);
  v117 = v20;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v19);
  v114 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v115 = &v110 - v25;
  v26 = sub_267EF8AE8();
  v27 = OUTLINED_FUNCTION_58(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0_0();
  v34 = v33 - v32;
  sub_267EF8AD8();
  v122 = sub_267EF6778();

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v35 = sub_267EF8A08();
  v36 = __swift_project_value_buffer(v35, qword_280240FB0);
  v37 = *(v29 + 16);
  v120 = a1;
  v37(v34, a1, v26);
  v124 = v36;
  v38 = sub_267EF89F8();
  v39 = sub_267EF95D8();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_48();
    v111 = a2;
    v41 = v40;
    v42 = OUTLINED_FUNCTION_52();
    v125 = v42;
    *v41 = 136315138;
    sub_267EF8AD8();
    v43 = sub_267EF66B8();
    v112 = v18;
    v113 = v6;
    v44 = v43;
    v46 = v45;

    (*(v29 + 8))(v34, v26);
    v47 = v44;
    v6 = v113;
    v48 = sub_267BA33E8(v47, v46, &v125);
    v18 = v112;

    *(v41 + 4) = v48;
    _os_log_impl(&dword_267B93000, v38, v39, "#SiriGeneratedResponseProvider: transformRREntityToAttachment %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    OUTLINED_FUNCTION_32_0();
    a2 = v111;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v29 + 8))(v34, v26);
  }

  v49 = v123;
  v50 = *(v122 + 16);

  v51 = v124;
  if (!v50)
  {
    v65 = v124;
    v66 = sub_267EF89F8();
    v67 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_36(v67))
    {
      v68 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v68);
      v69 = "#SiriGeneratedResponseProvider: no uso entities containing identifiers";
LABEL_36:
      _os_log_impl(&dword_267B93000, v66, v65, v69, v26, 2u);
      OUTLINED_FUNCTION_32_0();
    }

LABEL_37:

    return 0;
  }

  v52 = v121;
  v53 = v49 == 0xD000000000000016 && 0x8000000267F14380 == v121;
  if (!v53 && (sub_267EF9EA8() & 1) == 0)
  {
    v70 = v49 == 0x555F6E6F6D6D6F63 && v52 == 0xEA00000000006972;
    if (!v70 && (sub_267EF9EA8() & 1) == 0)
    {
      v65 = v51;
      v66 = sub_267EF89F8();
      v97 = sub_267EF95D8();
      if (!OUTLINED_FUNCTION_36(v97))
      {
        goto LABEL_37;
      }

      v98 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v98);
      v69 = "#SiriGeneratedResponseProvider: No formatted strings or attachments found";
      goto LABEL_36;
    }

    sub_267C09714();
    if (v71)
    {

      v72 = sub_267EF89F8();
      v73 = sub_267EF95D8();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = OUTLINED_FUNCTION_48();
        v75 = OUTLINED_FUNCTION_52();
        v125 = v75;
        *(v74 + 4) = OUTLINED_FUNCTION_13_14(4.8149e-34);
        OUTLINED_FUNCTION_20();
        _os_log_impl(v76, v77, v78, v79, v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v75);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      v81 = v119;
      sub_267EF2B88();
      if (__swift_getEnumTagSinglePayload(v81, 1, v18) != 1)
      {

        v99 = v117;
        v100 = v115;
        (*(v117 + 32))(v115, v81, v18);
        v124 = sub_267BA9F38(0, &unk_28022AE20, 0x277CD3C08);
        v101 = v114;
        (*(v99 + 16))(v114, v100, v18);
        v102 = sub_267EF2AE8();
        v104 = v103;
        v105 = v116;
        sub_267EF87D8();
        v106 = sub_267EF8768();
        v108 = v107;
        (*(v118 + 8))(v105, v6);
        v109 = sub_267E0C800(v101, v102, v104, v106, v108);
        v61 = [objc_opt_self() attachmentWithFile_];

        (*(v99 + 8))(v100, v18);
        return v61;
      }

      sub_267B9FF34(v81, &qword_280229E20, &unk_267EFDCC0);

      v82 = sub_267EF89F8();
      v83 = sub_267EF95E8();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = OUTLINED_FUNCTION_48();
        v85 = OUTLINED_FUNCTION_52();
        v125 = v85;
        v86 = OUTLINED_FUNCTION_13_14(4.8149e-34);

        *(v84 + 4) = v86;
        OUTLINED_FUNCTION_20();
        _os_log_impl(v87, v88, v89, v90, v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v85);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      else
      {
      }

      return 0;
    }

    v65 = v51;
    v66 = sub_267EF89F8();
    v95 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v95))
    {
      v96 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v96);
      v69 = "#SiriGeneratedResponseProvider: no common_Uri entity found";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v54 = sub_267C09674();
  if (!v55)
  {
LABEL_34:
    v65 = v51;
    v66 = sub_267EF89F8();
    v92 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v92))
    {
      v93 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v93);
      v69 = "#SiriGeneratedResponseProvider: no common_FormattedString entity found";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v26 = v54;
  v56 = v55;
  v57 = HIBYTE(v55) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v57 = v54 & 0xFFFFFFFFFFFFLL;
  }

  if (!v57)
  {

    goto LABEL_34;
  }

  v58 = sub_267EF89F8();
  v59 = sub_267EF95D8();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = OUTLINED_FUNCTION_32();
    *v60 = 0;
    _os_log_impl(&dword_267B93000, v58, v59, "#SiriGeneratedResponseProvider: got string entity", v60, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v61 = [objc_allocWithZone(MEMORY[0x277CD4070]) init];
  if (v61)
  {
    v62 = sub_267C8E518(v26, v56, a2);
    v64 = v63;

    sub_267D13FBC(v62, v64);
  }

  else
  {
  }

  return v61;
}